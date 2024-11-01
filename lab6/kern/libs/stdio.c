//#include <console.h>
#include <defs.h>
#include <stdio.h>
#include <string.h>

/* HIGH level console I/O */

static int printk_offset = 0;
#define KERNEL_PRINTK_BUFF_BASE (0xffffffff80700000UL)
#define PRINTK_SIZE 0x100000UL
/* *
 * cputch - writes a single character @c to stdout, and it will
 * increace the value of counter pointed by @cnt.
 * */
static void cputch(int c, int *cnt) {
//    cons_putc(c);
#if 0
	if(printk_offset > (PRINTK_SIZE - 1024)){
		printk_offset = 0;
		memset((void *)KERNEL_PRINTK_BUFF_BASE, 0, PRINTK_SIZE);
	}

	*((char *)(KERNEL_PRINTK_BUFF_BASE) + printk_offset) = c;
	printk_offset++;
#else
	*((unsigned char *)0xfff08801000003f8) = c;
#endif
    (*cnt)++;
}

/* *
 * vcprintf - format a string and writes it to stdout
 *
 * The return value is the number of characters which would be
 * written to stdout.
 *
 * Call this function if you are already dealing with a va_list.
 * Or you probably want cprintf() instead.
 * */
int vcprintf(const char *fmt, va_list ap) {
    int cnt = 0;
    vprintfmt((void *)cputch, &cnt, fmt, ap);
    return cnt;
}

/* *
 * cprintf - formats a string and writes it to stdout
 *
 * The return value is the number of characters which would be
 * written to stdout.
 * */
int cprintf(const char *fmt, ...) {
    va_list ap;
    int cnt;
    va_start(ap, fmt);
    cnt = vcprintf(fmt, ap);
    va_end(ap);
    return cnt;
}

/* cputchar - writes a single character to stdout */
void cputchar(int c) { 
	//cons_putc(c);
}

/* *
 * cputs- writes the string pointed by @str to stdout and
 * appends a newline character.
 * */
int cputs(const char *str) {
    int cnt = 0;
    char c;
    while ((c = *str++) != '\0') {
        cputch(c, &cnt);
    }
    cputch('\n', &cnt);
    return cnt;
}

/* getchar - reads a single non-zero character from stdin */
int getchar(void) {
#if 0
    int c;
    while ((c = cons_getc()) == 0) /* do nothing */;
    return c;
#endif 
	return 0;
}
