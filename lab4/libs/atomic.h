#ifndef __LIBS_ATOMIC_H__
#define __LIBS_ATOMIC_H__

/* Atomic operations that C can't guarantee us. Useful for resource counting
 * etc.. */

static inline void set_bit(int nr, volatile void *addr)
    __attribute__((always_inline));
static inline void clear_bit(int nr, volatile void *addr)
    __attribute__((always_inline));
static inline void change_bit(int nr, volatile void *addr)
    __attribute__((always_inline));
static inline bool test_bit(int nr, volatile void *addr)
    __attribute__((always_inline));
static inline bool test_and_set_bit(int nr, volatile void *addr)
    __attribute__((always_inline));
static inline bool test_and_clear_bit(int nr, volatile void *addr)
    __attribute__((always_inline));


/* *
 * set_bit - Atomically set a bit in memory
 * @nr:     the bit to set
 * @addr:   the address to start counting from
 *
 * Note that @nr may be almost arbitrarily large; this function is not
 * restricted to acting on a single-word quantity.
 * */
static inline void set_bit(int nr, volatile void *addr) {
	unsigned long temp1, temp2, base;
	int *m = ((int *) addr) + (nr >> 5);

	__asm__ __volatile__(
#ifdef CONFIG_LOCK_MEMB
	"	memb\n"
#endif
	"	ldi	%3, %5\n"
	"1:	lldw	%0, 0(%3)\n"
	"	ldi	%1, 1\n"
	"	wr_f	%1\n"
	"	bis	%0, %4, %0\n"
#ifdef CONFIG_LOCK_FIXUP
	"	memb\n"
#endif
	"	lstw	%0, 0(%3)\n"
	"	rd_f	%1\n"
	"	beq	%1, 2f\n"
	".subsection 2\n"
	"2:	br	1b\n"
	".previous"
	: "=&r" (temp1), "=&r" (temp2), "=m" (*m), "=&r" (base)
	: "Ir" (1UL << (nr & 31)), "m" (*m));
}

/* *
 * clear_bit - Atomically clears a bit in memory
 * @nr:     the bit to clear
 * @addr:   the address to start counting from
 * */
static inline void clear_bit(int nr, volatile void *addr) {
	unsigned long temp1, temp2, base;
	int *m = ((int *) addr) + (nr >> 5);

	__asm__ __volatile__(
#ifdef CONFIG_LOCK_MEMB
	"	memb\n"
#endif
	"	ldi	%3, %5\n"
	"1:	lldw	%0, 0(%3)\n"
	"	ldi	%1, 1\n"
	"	wr_f	%1\n"
	"	bic	%0, %4, %0\n"
#ifdef CONFIG_LOCK_FIXUP
	"	memb\n"
#endif
	"	lstw	%0, 0(%3)\n"
	"	rd_f	%1\n"
	"	beq	%1, 2f\n"
	".subsection 2\n"
	"2:	br	1b\n"
	".previous"
	: "=&r" (temp1), "=&r" (temp2), "=m" (*m), "=&r" (base)
	: "Ir" (1UL << (nr & 31)), "m" (*m));
}

/* *
 * change_bit - Atomically toggle a bit in memory
 * @nr:     the bit to change
 * @addr:   the address to start counting from
 * */
static inline void change_bit(int nr, volatile void *addr) {
	unsigned long temp1, temp2, base;
	int *m = ((int *) addr) + (nr >> 5);

	__asm__ __volatile__(
#ifdef CONFIG_LOCK_MEMB
	"	memb\n"
#endif
	"	ldi	%3, %5\n"
	"1:	lldw	%0, 0(%3)\n"
	"	ldi	%1, 1\n"
	"	wr_f	%1\n"
	"	xor	%0, %4, %0\n"
#ifdef CONFIG_LOCK_FIXUP
	"	memb\n"
#endif
	"	lstw	%0, 0(%3)\n"
	"	rd_f	%1\n"
	"	beq	%1, 2f\n"
	".subsection 2\n"
	"2:	br	1b\n"
	".previous"
	: "=&r" (temp1), "=&r" (temp2), "=m" (*m), "=&r" (base)
	: "Ir" (1UL << (nr & 31)), "m" (*m));
}

/* *
 * test_bit - Determine whether a bit is set
 * @nr:     the bit to test
 * @addr:   the address to count from
 * */
static inline bool test_bit(int nr, volatile void *addr) {
	return (1UL & (((const int *) addr)[nr >> 5] >> (nr & 31))) != 0UL;
}

/* *
 * test_and_set_bit - Atomically set a bit and return its old value
 * @nr:     the bit to set
 * @addr:   the address to count from
 * */
static inline bool test_and_set_bit(int nr, volatile void *addr) {
	unsigned long oldbit;
	unsigned long temp1, temp2, base;
	int *m = ((int *) addr) + (nr >> 5);

	__asm__ __volatile__(
#ifdef CONFIG_LOCK_MEMB
	"	memb\n"
#endif
	"	ldi	%4, %6\n"
	"1:	lldw	%0, 0(%4)\n"
	"	and	%0, %5, %3\n"
	"	seleq	%3, 1, $31, %1\n"
	"	wr_f	%1\n"
	"	bis	%0, %5, %0\n"
#ifdef CONFIG_LOCK_FIXUP
	"	memb\n"
#endif
	"	lstw	%0, 0(%4)\n"
	"	rd_f	%0\n"
	"	bne	%3, 2f\n"		// %3 is not zero, no need to set, return
	"	beq	%0, 3f\n"		// failed to set, try again.
	"2:\n"
	".subsection 2\n"
	"3:	br 1b\n"
	".previous"
	: "=&r" (temp1), "=&r" (temp2), "=m" (*m), "=&r" (oldbit), "=&r" (base)
	: "Ir" (1UL << (nr & 31)), "m" (*m) : "memory");

	return oldbit != 0;
}

/* *
 * test_and_clear_bit - Atomically clear a bit and return its old value
 * @nr:     the bit to clear
 * @addr:   the address to count from
 * */
static inline bool test_and_clear_bit(int nr, volatile void *addr) {
	unsigned long oldbit;
	unsigned long temp1, temp2, base;
	int *m = ((int *) addr) + (nr >> 5);

	__asm__ __volatile__(
#ifdef CONFIG_LOCK_MEMB
	"	memb\n"
#endif
	"	ldi	%4, %6\n"
	"1:	lldw	%0, 0(%4)\n"
	"	and	%0, %5, %3\n"
	"	selne	%3, 1, $31, %1\n"	//Note: here is SELNE!!!
	"	wr_f	%1\n"
	"	bic	%0, %5, %0\n"
#ifdef CONFIG_LOCK_FIXUP
	"	memb\n"
#endif
	"	lstw	%0, 0(%4)\n"
	"	rd_f	%0\n"
	"	beq	%3, 2f\n"		// %3 is zero, no need to set, return
	"	beq	%0, 3f\n"		// failed to set, try again.
	"2:\n"
	".subsection 2\n"
	"3:	br 1b\n"
	".previous"
	: "=&r" (temp1), "=&r" (temp2), "=m" (*m), "=&r" (oldbit), "=&r" (base)
	: "Ir" (1UL << (nr & 31)), "m" (*m) : "memory");

	return oldbit != 0;
}

#endif /* !__LIBS_ATOMIC_H__ */

