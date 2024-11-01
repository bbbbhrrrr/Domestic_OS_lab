#include <clock.h>
#include <defs.h>
#include <intr.h>
#include <kdebug.h>
#include <kmonitor.h>
#include <sw.h>
#include <pmm.h>
#include <vmm.h>
#include <stdio.h>
#include <string.h>
#include <trap.h>

int kern_init(void) __attribute__((noreturn));

int kern_init(void) {
    extern char edata[], end[];
    memset(edata, 0, end - edata);

    const char *message = "os is loading ...\n";
    cprintf("%s\n\n", message);

    print_kerninfo();

	trap_init();

	pmm_init();  // init physical memory management

	vmm_init();                 // init virtual memory management

	cprintf(" lab4 ok\n");
    /* do nothing */
    while (1)
        ;
}

