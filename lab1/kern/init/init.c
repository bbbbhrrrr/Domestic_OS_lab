#include <defs.h>
#include <kdebug.h>
#include <kmonitor.h>
#include <sw.h>
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

	//lab1:非法指令异常处理
	cprintf("Start lab1:\n");
	// *((int*)0x2000) = 1;
	
    asm volatile(".long 0x7a000000"); //illegal code
    asm volatile(".long 0x43ff075f"); //nop

	cprintf("Lab1 ok !\n");

    /* do nothing */
    while (1)
        ;
}

