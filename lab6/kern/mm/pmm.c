#include <default_pmm.h>
#include <defs.h>
#include <error.h>
#include <memlayout.h>
#include <mmu.h>
#include <pmm.h>
#include <stdio.h>
#include <string.h>
#include <sync.h>
#include <vmm.h>
#include <sw.h>

// virtual address of physical page array
struct Page *pages;
// amount of physical memory (in pages)
size_t npage = 0;
// The kernel image is mapped at VA=KERNBASE and PA=info.base
uint_t va_pa_offset;
// memory starts at 0x0 in SW 
const size_t nbase = DRAM_BASE / PGSIZE;

// virtual address of boot-time page directory
pde_t *boot_pgdir = NULL;
// physical address of boot-time page directory
uintptr_t boot_cr3;

// physical memory management
const struct pmm_manager *pmm_manager;


static void check_alloc_page(void);
static void check_pgdir(void);
static void check_boot_pgdir(void);

// init_pmm_manager - initialize a pmm_manager instance
static void init_pmm_manager(void) {
    pmm_manager = &default_pmm_manager;
    cprintf("memory management: %s\n", pmm_manager->name);
    pmm_manager->init();
}

// init_memmap - call pmm->init_memmap to build Page struct for free memory
static void init_memmap(struct Page *base, size_t n) {
    pmm_manager->init_memmap(base, n);
}

// alloc_pages - call pmm->alloc_pages to allocate a continuous n*PAGESIZE
// memory
struct Page *alloc_pages(size_t n) {
    struct Page *page = NULL;
    bool intr_flag;

	local_intr_save(intr_flag);
	{ page = pmm_manager->alloc_pages(n); }
	local_intr_restore(intr_flag);

    return page;
}

// free_pages - call pmm->free_pages to free a continuous n*PAGESIZE memory
void free_pages(struct Page *base, size_t n) {
    bool intr_flag;

    local_intr_save(intr_flag);
    { pmm_manager->free_pages(base, n); }
    local_intr_restore(intr_flag);
}

// nr_free_pages - call pmm->nr_free_pages to get the size (nr*PAGESIZE)
// of current free memory
size_t nr_free_pages(void) {
    size_t ret;
    bool intr_flag;
    local_intr_save(intr_flag);
    { ret = pmm_manager->nr_free_pages(); }
    local_intr_restore(intr_flag);
    return ret;
}

/* page_init - initialize the physical memory management */
static void page_init(void) {

    va_pa_offset = PHYSICAL_MEMORY_OFFSET;
    uint64_t mem_begin = KERNEL_BEGIN_PADDR;
    uint64_t mem_size = PHYSICAL_MEMORY_END - KERNEL_BEGIN_PADDR;
    uint64_t mem_end = PHYSICAL_MEMORY_END; //硬编码取代 sbi_query_memory()接口
    cprintf("membegin %llx memend %llx mem_size %llx\n",mem_begin, mem_end, mem_size);
    cprintf("physcial memory map:\n");
    cprintf("  memory: 0x%08lx, [0x%08lx, 0x%08lx].\n", mem_size, mem_begin,
            mem_end - 1);
    uint64_t maxpa = mem_end;

    if (maxpa > KERNTOP) {
        maxpa = KERNTOP;
    }

    extern char end[];

    npage = maxpa / PGSIZE;
    // BBL has put the initial page table at the first available page after the
    // kernel
    // so stay away from it by adding extra offset to end
    pages = (struct Page *)ROUNDUP((void *)end, PGSIZE);
	pages = KADDR(PADDR(pages));
    for (size_t i = 0; i < npage - nbase; i++) {
        SetPageReserved(pages + i);
    }

    uintptr_t freemem = PADDR((uintptr_t)pages + sizeof(struct Page) * (npage - nbase));
    mem_begin = ROUNDUP(freemem, PGSIZE);
    mem_end = ROUNDDOWN(mem_end-1, PGSIZE);
    if (freemem < mem_end) {
        init_memmap(pa2page(mem_begin), (mem_end - mem_begin) / PGSIZE);
    }

}


static void enable_paging(void) {
	lcr3(boot_cr3);	
}

// boot_alloc_page - allocate one page using pmm->alloc_pages(1)
// return value: the kernel virtual address of this allocated page
// note: this function is used to get the memory for PDT(Page Directory
// Table)&PT(Page Table)
static void *boot_alloc_page(void) {
    struct Page *p = alloc_page();
    if (p == NULL) {
        panic("boot_alloc_page failed.\n");
    }
    return page2kva(p);
}

// pmm_init - setup a pmm to manage physical memory, build PDT&PT to setup
// paging mechanism
//         - check the correctness of pmm & paging mechanism, print PDT&PT
void pmm_init(void) {
    // We need to alloc/free the physical memory (granularity is 4KB or other
    // size).
    // So a framework of physical memory manager (struct pmm_manager)is defined
    // in pmm.h
    // First we should init a physical memory manager(pmm) based on the
    // framework.
    // Then pmm can alloc/free the physical memory.
    // Now the first_fit/best_fit/worst_fit/buddy_system pmm are available.
    init_pmm_manager();

    // detect physical memory space, reserve already used memory,
    // then use pmm->init_memmap to create free page list
    page_init();

    // use pmm->check to verify the correctness of the alloc/free function in a
    // pmm
    check_alloc_page();
    // create boot_pgdir, an initial page directory(Page Directory Table, PDT)
    extern char boot_page_table[];
    boot_pgdir = (pte_t*)boot_page_table;
    boot_cr3 = PADDR(boot_pgdir);

	cprintf("nr_free_pages = %d\n",nr_free_pages());
    check_pgdir();
    static_assert(KERNBASE % PTSIZE == 0 && KERNTOP % PTSIZE == 0);

    enable_paging();

    // now the basic virtual memory map(see memalyout.h) is established.
    // check the correctness of the basic virtual memory map.
    check_boot_pgdir();
}

// get_pte - get pte and return the kernel virtual address of this pte for la
//        - if the PT contians this pte didn't exist, alloc a page for PT
// parameter:
//  pgdir:  the kernel virtual base address of PDT
//  la:     the linear address need to map
//  create: a logical value to decide if alloc a page for PT
// return vaule: the kernel virtual address of this pte
pte_t *get_pte(pde_t *pgdir, uintptr_t la, bool create) {
     /*
     * If you need to visit a physical address, please use KADDR()
     * please read pmm.h for useful macros
     *
     * Maybe you want help comment, BELOW comments can help you finish the code
     *
     * Some Useful MACROs and DEFINEs, you can use them in below implementation.
     * MACROs or Functions:
     *   PDX(la) = the index of page directory entry of VIRTUAL ADDRESS la.
     *   KADDR(pa) : takes a physical address and returns the corresponding
     * kernel virtual address.
     *   set_page_ref(page,1) : means the page be referenced by one time
     *   page2pa(page): get the physical address of memory which this (struct
     * Page *) page  manages
     *   struct Page * alloc_page() : allocation a page
     *   memset(void *s, char c, size_t n) : sets the first n bytes of the
     * memory area pointed by s
     *                                       to the specified value c.
     * DEFINEs:
     *   PTE_P           0x001                   // page table/directory entry
     * flags bit : Present
     *   PTE_W           0xc00                   // page table/directory entry
     * flags bit : Writeable
     *   PTE_U           0x8800                   // page table/directory entry
     * flags bit : User can access
     */
	pde_t *pdep2 = &pgdir[PDX2(la)];
    if (!(*pdep2 & PTE_V)) {
        struct Page *page;
        if (!create || (page = alloc_page()) == NULL) {
            return NULL;
        }
        page_ref_inc(page);
        uintptr_t pa = page2pa(page);
        memset(KADDR(pa), 0, PGSIZE);
        *pdep2 = pte_create(page2ppn(page), PTE_U | PTE_V);
    }
    pde_t *pdep1 = &((pde_t *)KADDR(PDE_ADDR(*pdep2)))[PDX1(la)];
    if (!(*pdep1 & PTE_V)) {
    	struct Page *page;
    	if (!create || (page = alloc_page()) == NULL) {
    		return NULL;
    	}
        page_ref_inc(page);
    	uintptr_t pa = page2pa(page);
    	memset(KADDR(pa), 0, PGSIZE);
    	*pdep1 = pte_create(page2ppn(page), PTE_U | PTE_V);
    }
    pde_t *pdep0 = &((pde_t *)KADDR(PDE_ADDR(*pdep1)))[PDX0(la)];
    if (!(*pdep0 & PTE_V)) {
    	struct Page *page;
    	if (!create || (page = alloc_page()) == NULL) {
    		return NULL;
    	}
     //   page_ref_inc(page);
    	uintptr_t pa = page2pa(page);
    	memset(KADDR(pa), 0, PGSIZE);
    	*pdep0 = pte_create(page2ppn(page), PTE_U | PTE_V);
    }
    return &((pte_t *)KADDR(PDE_ADDR(*pdep0)))[PTX(la)];
}

// get_page - get related Page struct for linear address la using PDT pgdir
struct Page *get_page(pde_t *pgdir, uintptr_t la, pte_t **ptep_store) {
    pte_t *ptep = get_pte(pgdir, la, 0);
    if (ptep_store != NULL) {
        *ptep_store = ptep;
    }
    if (ptep != NULL && *ptep & PTE_V) {
        return pte2page(*ptep);
    }
    return NULL;
}


// page_remove_pte - free an Page sturct which is related linear address la
//                - and clean(invalidate) pte which is related linear address la
// note: PT is changed, so the TLB need to be invalidate
static inline void page_remove_pte(pde_t *pgdir, uintptr_t la, pte_t *ptep) {
    /*  
     *
     * Please check if ptep is valid, and tlb must be manually updated if
     * mapping is updated
     *
     * Maybe you want help comment, BELOW comments can help you finish the code
     *
     * Some Useful MACROs and DEFINEs, you can use them in below implementation.
     * MACROs or Functions:
     *   struct Page *page pte2page(*ptep): get the according page from the
     * value of a ptep
     *   free_page : free a page
     *   page_ref_dec(page) : decrease page->ref. NOTICE: ff page->ref == 0 ,
     * then this page should be free.
     *   tlb_invalidate(pde_t *pgdir, uintptr_t la) : Invalidate a TLB entry,
     * but only if the page tables being
     *                        edited are the ones currently in use by the
     * processor.
     * DEFINEs:
     *   PTE_P           0x001                   // page table/directory entry
     * flags bit : Present
     */
    if (*ptep & PTE_V) {  //(1) check if this page table entry is
        struct Page *page =
            pte2page(*ptep);  //(2) find corresponding page to pte
        page_ref_dec(page);   //(3) decrease page reference
        if (page_ref(page) ==
            0) {  //(4) and free this page when page reference reachs 0
            free_page(page);
        }
        *ptep = 0;                  //(5) clear second page table entry
        tlb_invalidate(pgdir, la);  //(6) flush tlb
    }
}


void page_remove_ptx(pde_t *pgdir, uintptr_t la) {
    pte_t *pte = &((pte_t *)KADDR(PDE_ADDR(*pgdir)))[PTX(la)];
    if (!(*pte & PTE_V)){ 
		return;
	}

	page_remove_pte(NULL, la, pte);

	//todo
    struct Page *pt_page = pte2page(*pgdir);
    page_ref_dec(pt_page);                    // 减少引用计数

    tlb_invalidate(pgdir, la);
}

void page_remove_pdx0(pde_t *pgdir, uintptr_t la) {
	pde_t *pdep0 = &((pde_t *)KADDR(PDE_ADDR(*pgdir)))[PDX0(la)];
    if (!(*pdep0 & PTE_V)){ 
		return;
	}

	page_remove_ptx(pdep0, la);

	//lab6 todo
    struct Page* pdep_page_pre = pte2page(*pgdir); // 二级页表页面
    struct Page* pdep_page = pte2page(*pdep0);  // 获取下一级页目录页
    if (page_ref(pdep_page) == 0) {             // 若页目录页不再使用，则释放
        free_page(pdep_page);
        page_ref_dec(pdep_page_pre);  // 减少这一级页目录引用计数
    }
    tlb_invalidate(pgdir, la);                  // 刷新 TLB
}

void page_remove_pdx1(pde_t *pgdir, uintptr_t la) {
	pde_t *pdep1 = &((pde_t *)KADDR(PDE_ADDR(*pgdir)))[PDX1(la)];
    if (!(*pdep1 & PTE_V)){ 
		return;
	}

    page_remove_pdx0(pdep1, la);

	//lab6 todo 
    struct Page* pdep_page_pre = pte2page(*pgdir); // 二级页表页面
    struct Page* pdep_page = pte2page(*pdep1);  // 获取下一级页目录页
    if (page_ref(pdep_page) == 0) {             // 若页目录页不再使用，则释放
        free_page(pdep_page);
        page_ref_dec(pdep_page_pre);  // 减少这一级页目录引用计数
    }
    tlb_invalidate(pgdir, la);                  // 刷新 TLB
}

void page_remove_pdx2(pde_t *pgdir, uintptr_t la) {
	pde_t *pdep2 = &pgdir[PDX2(la)];
    if (!(*pdep2 & PTE_V)){ 
		return;
	}

    page_remove_pdx1(pdep2, la);

	//lab6 todo 
    struct Page* pdep_page_pre = pte2page(*pgdir); // 一级页表页面
    struct Page* pdep_page = pte2page(*pdep2);  // 获取下一级页目录页
    if (page_ref(pdep_page) == 0) {             // 若页目录页不再使用，则释放
        free_page(pdep_page);
    }
    if (page_ref(pdep_page_pre) == 0) {        // 若页目录页不再使用，则释放
        boot_pgdir[0] = 0;  // 清除页目录项
    }
    tlb_invalidate(pgdir, la);                  // 刷新 TLB
}


// page_remove - free an Page which is related linear address la and has an
// validated pte
void page_remove(pde_t *pgdir, uintptr_t la) {
	page_remove_pdx2(pgdir,la);
}

// page_insert - build the map of phy addr of an Page with the linear addr la
// paramemters:
//  pgdir: the kernel virtual base address of PDT
//  page:  the Page which need to map
//  la:    the linear address need to map
//  perm:  the permission of this Page which is setted in related pte
// return value: always 0
// note: PT is changed, so the TLB need to be invalidate
int page_insert(pde_t *pgdir, struct Page *page, uintptr_t la, uint32_t perm) {
    pte_t *ptep = get_pte(pgdir, la, 1);
    if (ptep == NULL) {
        return -E_NO_MEM;
    }
    page_ref_inc(page);
    if (*ptep & PTE_V) {
        struct Page *p = pte2page(*ptep);
        if (p == page) {
            page_ref_dec(page);
        } else {
            page_remove_pte(pgdir, la, ptep);
        }
    }
	else{
		page_ref_inc(kva2page(ptep));
	}


    *ptep = pte_create(page2ppn(page), PTE_V | perm);
    tlb_invalidate(pgdir, la);
    return 0;
}

// invalidate a TLB entry, but only if the page tables being
// edited are the ones currently in use by the processor.
void tlb_invalidate(pde_t *pgdir, uintptr_t la) { flush_tlb(); }

// pgdir_alloc_page - call alloc_page & page_insert functions to
//                  - allocate a page size memory & setup an addr map
//                  - pa<->la with linear address la and the PDT pgdir
struct Page *pgdir_alloc_page(pde_t *pgdir, uintptr_t la, uint32_t perm) {
    struct Page *page = alloc_page();
    if (page != NULL) {
        if (page_insert(pgdir, page, la, perm) != 0) {
            free_page(page);
            return NULL;
        }
    }

    return page;
}

static void check_alloc_page(void) {
    pmm_manager->check();
    cprintf("check_alloc_page() succeeded!\n");
}

static void check_pgdir(void) {
    // assert(npage <= KMEMSIZE / PGSIZE);
	size_t nr_free_pages_store = nr_free_pages();
    assert(npage <= KERNTOP / PGSIZE);
    assert(boot_pgdir != NULL && (uint32_t)PGOFF(boot_pgdir) == 0);
    assert(get_page(boot_pgdir, 0x0, NULL) == NULL);

    struct Page *p1, *p2;
    p1 = alloc_page();
    assert(page_insert(boot_pgdir, p1, 0x0, 0) == 0);
    pte_t *ptep;
    assert((ptep = get_pte(boot_pgdir, 0x0, 0)) != NULL);
    assert(pte2page(*ptep) == p1);
    assert(page_ref(p1) == 1);

    ptep = (pte_t *)KADDR(PDE_ADDR(boot_pgdir[0]));
    ptep = (pte_t *)KADDR(PDE_ADDR(ptep[0]));
    ptep = (pte_t *)KADDR(PDE_ADDR(ptep[0])) + 1;

    assert(get_pte(boot_pgdir, PGSIZE, 0) == ptep);

    p2 = alloc_page();
    assert(page_insert(boot_pgdir, p2, PGSIZE, PTE_U | PTE_W) == 0);
    assert((ptep = get_pte(boot_pgdir, PGSIZE, 0)) != NULL);
    assert(*ptep & PTE_U);
    assert(*ptep & PTE_W);
    assert(boot_pgdir[0] & PTE_U);
    assert(page_ref(p2) == 1);

    assert(page_insert(boot_pgdir, p1, PGSIZE, 0) == 0);
    assert(page_ref(p1) == 2);
    assert(page_ref(p2) == 0);
    assert((ptep = get_pte(boot_pgdir, PGSIZE, 0)) != NULL);
    assert(pte2page(*ptep) == p1);
    assert((*ptep & PTE_U) == 0);

	cprintf(" page_remove 0 \n");
    page_remove(boot_pgdir, 0x0);
    assert(page_ref(p1) == 1);
    assert(page_ref(p2) == 0);

	cprintf(" page_remove PGSIZE \n");
    page_remove(boot_pgdir, PGSIZE);
    assert(page_ref(p1) == 0);
    assert(page_ref(p2) == 0);

    //assert(page_ref(pde2page(boot_pgdir[0])) == 1);
    assert(page_ref(pde2page(boot_pgdir[0])) == 0);

#if 0
	//free pgdir
    pte_t *ptep2 = (pte_t *)KADDR(PDE_ADDR(boot_pgdir[0]));
    pte_t *ptep1 = (pte_t *)KADDR(PDE_ADDR(ptep2[0]));
    pte_t *ptep0 = (pte_t *)KADDR(PDE_ADDR(ptep1[0]));

	free_page(kva2page((void *)ptep0));
	free_page(kva2page((void *)ptep1));
	free_page(kva2page((void *)ptep2));

    boot_pgdir[0] = 0;
#endif

	assert(nr_free_pages_store == nr_free_pages());
    cprintf("check_pgdir() succeeded!\n");
}

static void check_boot_pgdir(void) {
    pte_t *ptep;
    int i;
    assert(boot_pgdir[0] == 0);

	size_t nr_free_pages_store = nr_free_pages();

    struct Page *p;
    p = alloc_page();
    assert(page_insert(boot_pgdir, p, 0x100, PTE_W | PTE_R) == 0);
    assert(page_ref(p) == 1);
    assert(page_insert(boot_pgdir, p, 0x100 + PGSIZE, PTE_W | PTE_R) == 0);
    assert(page_ref(p) == 2);

    const char *str = "ucore: Hello world!!";
    strcpy((void *)0x100, str);
    assert(strcmp((void *)0x100, (void *)(0x100 + PGSIZE)) == 0);

    *(char *)(page2kva(p) + 0x100) = '\0';
    assert(strlen((const char *)0x100) == 0);

    page_remove(boot_pgdir, 0x100);
    page_remove(boot_pgdir, 0x100 + PGSIZE);

#if 0
	//free pgdir
    pte_t *ptep2 = (pte_t *)KADDR(PDE_ADDR(boot_pgdir[0]));
    pte_t *ptep1 = (pte_t *)KADDR(PDE_ADDR(ptep2[0]));
    pte_t *ptep0 = (pte_t *)KADDR(PDE_ADDR(ptep1[0]));

	free_page(kva2page((void *)ptep0));
	free_page(kva2page((void *)ptep1));
	free_page(kva2page((void *)ptep2));
    boot_pgdir[0] = 0;
#endif

	assert(nr_free_pages_store == nr_free_pages());
    cprintf("check_boot_pgdir() succeeded!\n");
}

void *kmalloc(size_t n) {
    void *ptr = NULL;
    struct Page *base = NULL;
    assert(n > 0 && n < 1024 * 0124);
    int num_pages = (n + PGSIZE - 1) / PGSIZE;
    base = alloc_pages(num_pages);
    assert(base != NULL);
    ptr = page2kva(base);
    return ptr;
}

void kfree(void *ptr, size_t n) {
    assert(n > 0 && n < 1024 * 0124);
    assert(ptr != NULL);
    struct Page *base = NULL;
    int num_pages = (n + PGSIZE - 1) / PGSIZE;
    base = kva2page(ptr);
    free_pages(base, num_pages);
}
