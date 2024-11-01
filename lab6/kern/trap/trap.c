#include <assert.h>
#include <clock.h>
#include <defs.h>
#include <kdebug.h>
#include <memlayout.h>
#include <mmu.h>
#include <sw.h>
#include <stdio.h>
#include <trap.h>
#include <vmm.h>

#define TICK_NUM 1000

static void print_ticks() {
    cprintf("%d ticks\n", TICK_NUM);
#ifdef DEBUG_GRADE
    cprintf("End of Test.\n");
    panic("EOT: kernel seems ok.");
#endif
}

extern void entIF(void);
extern void entInt(void);
extern void entMM(void);

/**
 * @brief      Load trap entry in SW
 */
void trap_init(void) {
    /* Tell HMcode what global pointer we want in the kernel. */
    register unsigned long gptr __asm__("$29");
	wrkgp(gptr);

    wrent(entInt, 0);

//    wrent(entArith, 1);
    wrent(entMM, 2);
    wrent(entIF, 3);
//    wrent(entUna, 4);
//    wrent(entSys, 5);
}

/* trap_in_kernel - test if trap happened in kernel */
bool trap_in_kernel(struct trapframe *tf) {
    return (tf->gpr.ps & 8) == 0;
}

void print_trapframe(struct trapframe *tf) {
  //  cprintf("trapframe at %p\n", tf);
    print_regs(&tf->gpr);
    cprintf("  cause    0x%016lx\n", tf->gpr.cause);
}

void print_regs(struct pushregs *gpr) {
    cprintf("  r0       0x%016lx\n", gpr->r0);
    cprintf("  r1       0x%016lx\n", gpr->r1);
    cprintf("  r2       0x%016lx\n", gpr->r2);
    cprintf("  r3       0x%016lx\n", gpr->r3);
    cprintf("  r4       0x%016lx\n", gpr->r4);
    cprintf("  r5       0x%016lx\n", gpr->r5);
    cprintf("  r6       0x%016lx\n", gpr->r6);
    cprintf("  r7       0x%016lx\n", gpr->r7);
    cprintf("  r8       0x%016lx\n", gpr->r8);
    cprintf("  r9       0x%016lx\n", gpr->r9);
    cprintf("  r10      0x%016lx\n", gpr->r10);
    cprintf("  r11      0x%016lx\n", gpr->r11);
    cprintf("  r12      0x%016lx\n", gpr->r12);
    cprintf("  r13      0x%016lx\n", gpr->r13);
    cprintf("  r14      0x%016lx\n", gpr->r14);
    cprintf("  r15      0x%016lx\n", gpr->r15);
    cprintf("  r16      0x%016lx\n", gpr->r16);
    cprintf("  r17      0x%016lx\n", gpr->r17);
    cprintf("  r18      0x%016lx\n", gpr->r18);
    cprintf("  r19      0x%016lx\n", gpr->r19);
    cprintf("  r20      0x%016lx\n", gpr->r20);
    cprintf("  r21      0x%016lx\n", gpr->r21);
    cprintf("  r22      0x%016lx\n", gpr->r22);
    cprintf("  r23      0x%016lx\n", gpr->r23);
    cprintf("  r24      0x%016lx\n", gpr->r24);
    cprintf("  r25      0x%016lx\n", gpr->r25);
    cprintf("  r26      0x%016lx\n", gpr->r26);
    cprintf("  r27      0x%016lx\n", gpr->r27);
    cprintf("  r28      0x%016lx\n", gpr->r28);
    cprintf("  gp       0x%016lx\n", gpr->gp);
    cprintf("  pc       0x%016lx\n", gpr->pc);
    cprintf("  ps       0x%016lx\n", gpr->ps);
}

void do_entIF(struct trapframe *tf) {
	switch (tf->gpr.a0) {
		case 0: /* breakpoint */
			cprintf("breakpoint pc = %#lx\n",tf->gpr.pc);
			break;
		case 4: /*  opDEC */ 
			cprintf("opDEC  pc = %#lx\n",tf->gpr.pc);
			*(int *)(tf->gpr.pc) = 0x43ff075f;
			break;
		default:
			print_trapframe(tf);
			break;
	}
//	panic("illegal code");
}

static inline void print_pgfault(struct trapframe *tf) {
    cprintf("page fault at 0x%08x: %c/%c, pc:%#lx\n", tf->gpr.a0,
            trap_in_kernel(tf) ? 'K' : 'U',
	tf->gpr.a2 == 1 ? 'W' : 'R',tf->gpr.pc);
}

static int pgfault_handler(struct trapframe *tf) {
    extern struct mm_struct *check_mm_struct;
  //  print_pgfault(tf);
    if (check_mm_struct != NULL) {
        return do_pgfault(check_mm_struct, tf->gpr.a1, tf->gpr.a0);
    }
    panic("unhandled page fault.\n");
}

void interrupt_handler(struct trapframe *tf) {
    intptr_t type = tf->gpr.a0;
    switch (type) {
        case 9:
            //cprintf("Supervisor timer interrupt\n");
            clock_set_next_event();
            if (++ticks % TICK_NUM == 0) {
                print_ticks();
            }
            break;
        default:
            print_trapframe(tf);
            break;
    }
}

void exception_handler(struct trapframe *tf) {
    switch (tf->gpr.cause) {
		case 2:
			pgfault_handler(tf);
            break;
        case 3:
			do_entIF(tf);
            break;
        default:
            print_trapframe(tf);
            break;
    }
}

/* trap_dispatch - dispatch based on what type of trap occurred */
static inline void trap_dispatch(struct trapframe *tf) {
//	cprintf(" trap_dispatch \n");
    if ((intptr_t)tf->gpr.cause == 0) {
        // interrupts
        interrupt_handler(tf);
    } else {
        // exceptions
        exception_handler(tf);
    }
}

/* *
 * trap - handles or dispatches an exception/interrupt. if and when trap()
 * returns,
 * the code in kern/trap/trapentry.S restores the old CPU state saved in the
 * trapframe and then uses the iret instruction to return from the exception.
 * */
void trap(struct trapframe *tf) { trap_dispatch(tf); }
