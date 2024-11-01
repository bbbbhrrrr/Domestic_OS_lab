#ifndef __KERN_MM_MMU_H__
#define __KERN_MM_MMU_H__

#ifndef __ASSEMBLER__
#include <defs.h>
#include <sw.h>

#endif /* !__ASSEMBLER__ */

// A linear address 'la' has a five-part structure as follows:
//
// +-------10-------+-------10-------+------10--------+------10--------+---------13----------+
// | Page Directory | Page Directory | Page Directory |   Page Table   | Offset within Page  |
// |     Index 1    |    Index 2     |    Index 3     |                |                     |
// +----------------+----------------+----------------+---------------------+
//  \-- PDX2(la) --/ \-- PDX1(la) --/ \-- PDX0(la) --/ \--- PTX(la) --/ \---- PGOFF(la) ----/
//  \-----------------------------PPN(la)-----------------------------/
//
// The PDX2, PDX1, PDX0, PTX, PGOFF, and PPN macros decompose linear addresses as shown.
// To construct a linear address la from PDX(la), PTX(la), and PGOFF(la),
// use PGADDR(PDX(la), PTX(la), PGOFF(la)).

// SW uses 53-bit virtual address to access 47-bit physical address!
// SW virtual address:
// +---10----+---10----+---10---+---10---+--13--+
// |  VPN[3] |  VPN[2] | VPN[1] | VPN[0] | PGOFF |
// +---------+----+---+--------+-------+
//
//

// page directory index
#define PDX2(la) ((((uintptr_t)(la)) >> PDX2SHIFT) & 0x3FF)
#define PDX1(la) ((((uintptr_t)(la)) >> PDX1SHIFT) & 0x3FF)
#define PDX0(la) ((((uintptr_t)(la)) >> PDX0SHIFT) & 0x3FF)

// page table index
#define PTX(la) ((((uintptr_t)(la)) >> PTXSHIFT) & 0x3FF)

// page number field of address
#define PPN(la) (((uintptr_t)(la)) >> PTXSHIFT)

// offset in page
#define PGOFF(la) (((uintptr_t)(la)) & 0x1FFF)

// construct linear address from indexes and offset
//#define PGADDR(d1, d0, t, o) ((uintptr_t)((d1) << PDX1SHIFT | (d0) << PDX0SHIFT | (t) << PTXSHIFT | (o)))

// address in page table or page directory entry
#define PTE_ADDR(pte)   (((uintptr_t)(pte) & ~0xFFFFFFF) >> (PTE_PPN_SHIFT - PTXSHIFT))
#define PDE_ADDR(pde)   PTE_ADDR(pde)

/* page directory and page table constants */
#define NPDEENTRY       1024                    // page directory entries per page directory
#define NPTEENTRY       1024                    // page table entries per page table

#define PGSIZE          8192                    // bytes mapped by a page
#define PGSHIFT         13                      // log2(PGSIZE)
#define PTSIZE          (PGSIZE * NPTEENTRY)    // bytes mapped by a page directory entry
#define PTSHIFT         23                      // log2(PTSIZE)

#define PTXSHIFT        13                      // offset of PTX in a linear address
#define PDX0SHIFT       23                      // offset of PDX0 in a linear address
#define PDX1SHIFT       33                      // offset of PDX0 in a linear address
#define PDX2SHIFT       43                      // offset of PDX0 in a linear address
#define PTE_PPN_SHIFT   28                      // offset of PPN in a physical address

// page table entry (PTE) fields
#define PTE_V     0x001 // Valid
#define PTE_R     0xc000 // Read
#define PTE_W     0xc00 // Write
#define PTE_U     0x8800 // User

#endif /* !__KERN_MM_MMU_H__ */

