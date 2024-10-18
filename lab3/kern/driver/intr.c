#include <intr.h>
#include <sw.h>

/* intr_enable - enable irq interrupt */
void intr_enable(void) {
	local_irq_enable();
}

/* intr_disable - disable irq interrupt */
void intr_disable(void) { 
	local_irq_disable();
}
