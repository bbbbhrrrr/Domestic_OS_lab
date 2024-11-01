#include <mmu.h>
#include <memlayout.h>

    .section .text,"ax",%progbits
    .globl kern_entry
kern_entry:
    br  $27, 1f
1:  ldgp $29, 0($27)

    ldi $sp, bootstacktop
    call $26, kern_init

.section .data
    # .align 2^14
    .align PGSHIFT+1
    .global bootstack
bootstack:
    .space KSTACKSIZE
    .global bootstacktop
bootstacktop:

.section .data
    # 由于我们要把这个页表放到一个页里面，因此必须 13 位对齐
    .align PGSHIFT
    .global boot_page_table
# 分配 8KiB 内存给预设的4级页表
boot_page_table:
    .zero 8 * 1024 
