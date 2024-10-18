#include <clock.h>
#include <defs.h>
#include <stdio.h>
#include <sw.h>

volatile size_t ticks;

static inline uint64_t get_cycles(void) {
	return 0;
}


// Hardcode timebase
static uint64_t timebase = 100000;

/* *
 * clock_init - initialize clock to interrupt 100 times per second,
 * and then enable IRQ_TIMER.
 * */
void clock_init(void) {
    clock_set_next_event();

    // initialize time counter 'ticks' to zero
    ticks = 0;

    cprintf("++ setup timer interrupts\n");
}

void clock_set_next_event(void) { 
    wrtimer(timebase);
}
