// See LICENSE for license details.

#ifndef __LIBS_SW_H__
#define __LIBS_SW_H__

#define HMC_wrptbr      0x0C
#define HMC_swpctx      0x30
#define HMC_tbi         0x33
#define HMC_wrent       0x34
#define HMC_swpipl      0x35
#define HMC_wrkgp       0x37
#define HMC_wrtimer		0x3B
#define HMC_rti         0x3F

#define LOG_REGBYTES 3
#define STORE stl
#define LOAD ldl

#define REGBYTES (1 << LOG_REGBYTES)

#ifndef __ASSEMBLY__

#define __CALL_HMC_W1(NAME, TYPE0)              \
static inline void NAME(TYPE0 arg0)             \
{                               \
    register TYPE0 __r16 __asm__("$16") = arg0;     \
    __asm__ __volatile__(                   \
        "sys_call %1 # "#NAME               \
        : "=r"(__r16)                   \
        : "i"(HMC_ ## NAME), "0"(__r16)         \
        : "$1", "$22", "$23", "$24", "$25");        \
}

#define __CALL_HMC_RW1(NAME, RTYPE, TYPE0)          \
static inline RTYPE NAME(TYPE0 arg0)                \
{                               \
    register RTYPE __r0 __asm__("$0");          \
    register TYPE0 __r16 __asm__("$16") = arg0;     \
    __asm__ __volatile__(                   \
        "sys_call %2 # "#NAME               \
        : "=r"(__r16), "=r"(__r0)           \
        : "i"(HMC_ ## NAME), "0"(__r16)         \
        : "$1", "$22", "$23", "$24", "$25");        \
    return __r0;                        \
}

#define __CALL_HMC_W2(NAME, TYPE0, TYPE1)           \
static inline void NAME(TYPE0 arg0, TYPE1 arg1)         \
{                               \
    register TYPE0 __r16 __asm__("$16") = arg0;     \
    register TYPE1 __r17 __asm__("$17") = arg1;     \
    __asm__ __volatile__(                   \
        "sys_call %2 # "#NAME               \
        : "=r"(__r16), "=r"(__r17)          \
        : "i"(HMC_ ## NAME), "0"(__r16), "1"(__r17) \
        : "$1", "$22", "$23", "$24", "$25");    \
}


__CALL_HMC_W2(wrent, void*, unsigned long);
__CALL_HMC_W1(wrkgp, unsigned long);
__CALL_HMC_W1(wrtimer, unsigned long);
__CALL_HMC_RW1(swpipl, unsigned long, unsigned long);
__CALL_HMC_W1(wrptbr, unsigned long);

#define __tbi(nr, arg, arg1...)                 \
({                              \
    register unsigned long __r16 __asm__("$16") = (nr); \
    register unsigned long __r17 __asm__("$17"); arg;   \
    __asm__ __volatile__(                   \
        "sys_call %3 #__tbi"                \
        : "=r" (__r16), "=r" (__r17)            \
        : "0" (__r16), "i" (HMC_tbi), ##arg1        \
        : "$0", "$1", "$22", "$23", "$24", "$25");  \
})
#define tbia()      __tbi(-2, /* no second argument */)

#define do_div(n, base)                              \
    ({                                               \
        int __res;                                   \
        __res = ((unsigned long)n) % (unsigned)base; \
        n = ((unsigned long)n) / (unsigned)base;     \
        __res;                                       \
    })

#define barrier() __asm__ __volatile__ (""::: "memory")

static inline void lcr3(unsigned long cr3) {
	wrptbr(cr3);
}

#define IPL_MIN     0
#define IPL_MAX     7

#define getipl()        (rdps() & 7)
#define setipl(ipl)     ((void) swpipl(ipl))

static inline void local_irq_disable(void)
{
    setipl(IPL_MAX);
    barrier();
}

static inline void local_irq_enable(void)
{
    barrier();
    setipl(IPL_MIN);
}

extern void entIF(void);
extern void entInt(void);

#define DRAM_BASE          0x0
#define __START_KERNEL_map  0xffffffff80000000
#endif

#endif


