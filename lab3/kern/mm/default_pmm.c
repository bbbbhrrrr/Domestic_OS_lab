#include <pmm.h>
#include <list.h>
#include <string.h>
#include <default_pmm.h>
#include <stdio.h>

/* In the first fit algorithm, the allocator keeps a list of free blocks (known as the free list) and,
   on receiving a request for memory, scans along the list for the first block that is large enough to
   satisfy the request. If the chosen block is significantly larger than that requested, then it is 
   usually split, and the remainder added to the list as another free block.
 * Details of FFMA
 * (1) Prepare: In order to implement the First-Fit Mem Alloc (FFMA), we should manage the free mem block use some list.
 *              The struct free_area_t is used for the management of free mem blocks. At first you should
 *              be familiar to the struct list in list.h. struct list is a simple doubly linked list implementation.
 *              You should know howto USE: list_init, list_add(list_add_after), list_add_before, list_del, list_next, list_prev
 *              Another tricky method is to transform a general list struct to a special struct (such as struct page):
 *              you can find some MACRO: le2page (in memlayout.h), (in future labs: le2vma (in vmm.h), le2proc (in proc.h),etc.)
 * (2) default_init: you can reuse the  demo default_init fun to init the free_list and set nr_free to 0.
 *              free_list is used to record the free mem blocks. nr_free is the total number for free mem blocks.
 * (3) default_init_memmap:  CALL GRAPH: kern_init --> pmm_init-->page_init-->init_memmap--> pmm_manager->init_memmap
 *              This fun is used to init a free block (with parameter: addr_base, page_number).
 *              First you should init each page (in memlayout.h) in this free block, include:
 *                  p->flags should be set bit PG_property (means this page is valid. In pmm_init fun (in pmm.c),
 *                  the bit PG_reserved is setted in p->flags)
 *                  if this page  is free and is not the first page of free block, p->property should be set to 0.
 *                  if this page  is free and is the first page of free block, p->property should be set to total num of block.
 *                  p->ref should be 0, because now p is free and no reference.
 *                  We can use p->page_link to link this page to free_list, (such as: list_add_before(&free_list, &(p->page_link)); )
 *              Finally, we should sum the number of free mem block: nr_free+=n
 * (4) default_alloc_pages: search find a first free block (block size >=n) in free list and reszie the free block, return the addr
 *              of malloced block.
 *              (4.1) So you should search freelist like this:
 *                       list_entry_t le = &free_list;
 *                       while((le=list_next(le)) != &free_list) {
 *                       ....
 *                 (4.1.1) In while loop, get the struct page and check the p->property (record the num of free block) >=n?
 *                       struct Page *p = le2page(le, page_link);
 *                       if(p->property >= n){ ...
 *                 (4.1.2) If we find this p, then it' means we find a free block(block size >=n), and the first n pages can be malloced.
 *                     Some flag bits of this page should be setted: PG_reserved =1, PG_property =0
 *                     unlink the pages from free_list
 *                     (4.1.2.1) If (p->property >n), we should re-caluclate number of the the rest of this free block,
 *                           (such as: le2page(le,page_link))->property = p->property - n;)
 *                 (4.1.3)  re-caluclate nr_free (number of the the rest of all free block)
 *                 (4.1.4)  return p
 *               (4.2) If we can not find a free block (block size >=n), then return NULL
 * (5) default_free_pages: relink the pages into  free list, maybe merge small free blocks into big free blocks.
 *               (5.1) according the base addr of withdrawed blocks, search free list, find the correct position
 *                     (from low to high addr), and insert the pages. (may use list_next, le2page, list_add_before)
 *               (5.2) reset the fields of pages, such as p->ref, p->flags (PageProperty)
 *               (5.3) try to merge low addr or high addr blocks. Notice: should change some pages's p->property correctly.
 */
free_area_t free_area;

#define free_list (free_area.free_list)
#define nr_free (free_area.nr_free)

static void
default_init(void) {
    list_init(&free_list);
    nr_free = 0;
}

//lab3 page manager

static void
default_init_memmap(struct Page *base, size_t n) {
    assert(n > 0); // 确保 n 大于 0

    struct Page *p = base;
    for (; p != base + n; p++) {
        assert(PageReserved(p)); // 确保页被保留
        p->flags = p->property = 0; // 清除页标志和属性
        set_page_ref(p, 0); // 设置页引用计数为 0
    }

    base->property = n; // 设置头页的属性为 n
    SetPageProperty(base); // 设置页属性
    nr_free += n; // 更新空闲页数

    // 如果空闲链表为空，直接插入
    if (list_empty(&free_list)) {
        list_add(&free_list, &(base->page_link)); // 插入到空闲链表
    } else {
        // 遍历空闲链表，找到插入位置
        list_entry_t *le = &free_list;
        while ((le = list_next(le)) != &free_list) {
            struct Page *page = le2page(le, page_link);
            if (base < page) {
                list_add_before(le, &(base->page_link)); // 插入到找到的位置之前
                break;
            } else if (list_next(le) == &free_list) {
                list_add(le, &(base->page_link)); // 插入到链表末尾
            }
        }
    }
}
//BFMA
static struct Page *
default_alloc_pages(size_t n) {
    assert(n > 0); // 确保 n 大于 0
    if (n > nr_free) {
        return NULL; // 如果请求的页数大于空闲页数，返回 NULL
    }

    struct Page *best_page = NULL;
    list_entry_t *le = &free_list;

    // 遍历空闲链表，寻找最接近所请求大小的块
    while ((le = list_next(le)) != &free_list) {
        struct Page *p = le2page(le, page_link);
        if (p->property >= n) {
            if (best_page == NULL || p->property < best_page->property) {
                best_page = p; // 更新最适合的块
            }
        }
    }

    if (best_page != NULL) {
        list_entry_t* prev = list_prev(&(best_page->page_link));
        list_del(&(best_page->page_link)); // 从空闲链表中删除最适合的块
        if (best_page->property > n) {
            struct Page *p = best_page + n;
            p->property = best_page->property - n;
            SetPageProperty(p); // 设置剩余块的属性
            list_add(prev, &(p->page_link)); // 将剩余块插入空闲链表
        }
        nr_free -= n; // 更新空闲页数
        ClearPageProperty(best_page); // 清除已分配块的属性
    }
    return best_page; // 返回最适合的块
}


// // FFMA
// static struct Page *
// default_alloc_pages(size_t n) {
//     assert(n > 0); // 确保 n 大于 0
//     if (n > nr_free) {
//         return NULL; // 如果请求的页数大于空闲页数，返回 NULL
//     }
//     struct Page *page = NULL;
//     list_entry_t *le = &free_list;

//     // 遍历空闲链表，寻找第一个满足请求大小的块
//     while ((le = list_next(le)) != &free_list) {
//         struct Page *p = le2page(le, page_link);
//         if (p->property >= n) {
//             page = p; // 找到满足条件的块
//             break;
//         }
//     }

//     if (page != NULL) {
//         list_entry_t* prev = list_prev(&(page->page_link));
//         list_del(&(page->page_link)); // 从空闲链表中删除找到的块
//         if (page->property > n) {
//             struct Page *p = page + n;
//             p->property = page->property - n;
//             SetPageProperty(p); // 设置剩余块的属性
//             list_add(prev, &(p->page_link)); // 将剩余块插入空闲链表
//         }
//         nr_free -= n; // 更新空闲页数
//         ClearPageProperty(page); // 清除已分配块的属性
//     }
//     return page; // 返回找到的块
// }


static void
default_free_pages(struct Page *base, size_t n) {
    assert(n > 0); // 确保 n 大于 0

    // 初始化要释放的页的属性
    struct Page *p = base;
    for (; p != base + n; p++) {
        assert(!PageReserved(p) && !PageProperty(p)); // 确保页未被保留且无属性
        p->flags = 0; // 清除页标志
        set_page_ref(p, 0); // 设置页引用计数为 0
    }

    // 设置头页的属性
    base->property = n; // 设置连续空闲页的数量
    SetPageProperty(base); // 设置页属性
    nr_free += n; // 更新空闲页数

    // 如果空闲链表为空，直接插入
    if (list_empty(&free_list)) {
        list_add(&free_list, &(base->page_link)); // 插入到空闲链表
    } else {
        // 遍历空闲链表，找到插入位置
        list_entry_t* le = &free_list;
        while ((le = list_next(le)) != &free_list) {
            struct Page* page = le2page(le, page_link);
            if (base < page) {
                list_add_before(le, &(base->page_link)); // 插入到找到的位置之前
                break;
            } else if (list_next(le) == &free_list) {
                list_add(le, &(base->page_link)); // 插入到链表末尾
                break;
            }
        }
    }

    // 合并前一个空闲块
    list_entry_t* le = list_prev(&(base->page_link));
    if (le != &free_list) {
        p = le2page(le, page_link);
        if (p + p->property == base) { // 检查是否可以合并
            p->property += base->property; // 合并
            ClearPageProperty(base); // 清除合并页的属性
            list_del(&(base->page_link)); // 从链表中删除合并页
            base = p; // 更新基地址
        }
    }

    // 合并后一个空闲块
    le = list_next(&(base->page_link));
    if (le != &free_list) {
        p = le2page(le, page_link);
        if (base + base->property == p) { // 检查是否可以合并
            base->property += p->property; // 合并
            ClearPageProperty(p); // 清除合并页的属性
            list_del(&(p->page_link)); // 从链表中删除合并页
        }
    }
}
    
static size_t
default_nr_free_pages(void) {
    return nr_free;
}

static void
basic_check(void) {
    struct Page *p0, *p1, *p2;
    p0 = p1 = p2 = NULL;
    assert((p0 = alloc_page()) != NULL);
    assert((p1 = alloc_page()) != NULL);
    assert((p2 = alloc_page()) != NULL);

    assert(p0 != p1 && p0 != p2 && p1 != p2);
    assert(page_ref(p0) == 0 && page_ref(p1) == 0 && page_ref(p2) == 0);

    assert(page2pa(p0) < npage * PGSIZE);
    assert(page2pa(p1) < npage * PGSIZE);
    assert(page2pa(p2) < npage * PGSIZE);

    list_entry_t free_list_store = free_list;
    list_init(&free_list);
    assert(list_empty(&free_list));

    unsigned int nr_free_store = nr_free;
    nr_free = 0;

    assert(alloc_page() == NULL);

    free_page(p0);
    free_page(p1);
    free_page(p2);
    assert(nr_free == 3);

    assert((p0 = alloc_page()) != NULL);
    assert((p1 = alloc_page()) != NULL);
    assert((p2 = alloc_page()) != NULL);

    assert(alloc_page() == NULL);

    free_page(p0);
    assert(!list_empty(&free_list));

    struct Page *p;
    assert((p = alloc_page()) == p0);
    assert(alloc_page() == NULL);

    assert(nr_free == 0);
    free_list = free_list_store;
    nr_free = nr_free_store;

    free_page(p);
    free_page(p1);
    free_page(p2);
}

// lab3: below code is used to check the first fit allocation algorithm  
// NOTICE: You SHOULD NOT CHANGE basic_check, default_check functions!
static void
default_check(void) {
    int count = 0, total = 0;
    list_entry_t *le = &free_list;
    while ((le = list_next(le)) != &free_list) {
        struct Page *p = le2page(le, page_link);
        assert(PageProperty(p));
        count ++, total += p->property;
    }
    assert(total == nr_free_pages());

    basic_check();

    struct Page *p0 = alloc_pages(5), *p1, *p2;
    assert(p0 != NULL);
    assert(!PageProperty(p0));

    list_entry_t free_list_store = free_list;
    list_init(&free_list);
    assert(list_empty(&free_list));
    assert(alloc_page() == NULL);

    unsigned int nr_free_store = nr_free;
    nr_free = 0;

    free_pages(p0 + 2, 3);
    assert(alloc_pages(4) == NULL);
    assert(PageProperty(p0 + 2) && p0[2].property == 3);
    assert((p1 = alloc_pages(3)) != NULL);
    assert(alloc_page() == NULL);
    assert(p0 + 2 == p1);

    p2 = p0 + 1;
    free_page(p0);
    free_pages(p1, 3);
    assert(PageProperty(p0) && p0->property == 1);
    assert(PageProperty(p1) && p1->property == 3);

    assert((p0 = alloc_page()) == p2 - 1);
    free_page(p0);
    assert((p0 = alloc_pages(2)) == p2 + 1);

    free_pages(p0, 2);
    free_page(p2);

    assert((p0 = alloc_pages(5)) != NULL);
    assert(alloc_page() == NULL);

    assert(nr_free == 0);
    nr_free = nr_free_store;

    free_list = free_list_store;
    free_pages(p0, 5);

    le = &free_list;
    while ((le = list_next(le)) != &free_list) {
        struct Page *p = le2page(le, page_link);
        count --, total -= p->property;
    }
    assert(count == 0);
    assert(total == 0);
	cprintf("Default_check success\n");
}


// lab3: below code is used to check the best fit allocation algorithm 
// NOTICE: You SHOULD NOT CHANGE basic_check, default_check functions!
static void
best_fit_check(void)
{
    int score = 0, sumscore = 6;
    int count = 0, total = 0;
    list_entry_t *le = &free_list;
    while ((le = list_next(le)) != &free_list)
    {
        struct Page *p = le2page(le, page_link);
        assert(PageProperty(p));
        count++, total += p->property;
    }
    assert(total == nr_free_pages());

    basic_check();

    struct Page *p0 = alloc_pages(5), *p1, *p2;
    assert(p0 != NULL);
    assert(!PageProperty(p0));

    list_entry_t free_list_store = free_list;
    list_init(&free_list);
    assert(list_empty(&free_list));
    assert(alloc_page() == NULL);

    unsigned int nr_free_store = nr_free;
    nr_free = 0;

    // * - - * -
    free_pages(p0 + 1, 2);
    free_pages(p0 + 4, 1);
    assert(alloc_pages(4) == NULL);
    assert(PageProperty(p0 + 1) && p0[1].property == 2);
    // * - - * *
    assert((p1 = alloc_pages(1)) != NULL);
    assert(alloc_pages(2) != NULL); // best fit feature
    assert(p0 + 4 == p1);

    p2 = p0 + 1;
    free_pages(p0, 5);
    assert((p0 = alloc_pages(5)) != NULL);
    assert(alloc_page() == NULL);

    assert(nr_free == 0);
    nr_free = nr_free_store;

    free_list = free_list_store;
    free_pages(p0, 5);

    le = &free_list;
    while ((le = list_next(le)) != &free_list)
    {
        struct Page *p = le2page(le, page_link);
        count--, total -= p->property;
    }
    assert(count == 0);
    assert(total == 0);
	cprintf("Best_fit_check success\n");
}

const struct pmm_manager default_pmm_manager = {
    .name = "default_pmm_manager",
    .init = default_init,
    .init_memmap = default_init_memmap,
    .alloc_pages = default_alloc_pages,
    .free_pages = default_free_pages,
    .nr_free_pages = default_nr_free_pages,
    .check = best_fit_check,
};

