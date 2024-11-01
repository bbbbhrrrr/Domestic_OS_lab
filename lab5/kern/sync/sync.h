#ifndef __KERN_SYNC_SYNC_H__
#define __KERN_SYNC_SYNC_H__

#include <defs.h>
#include <intr.h>
#include <sw.h>

static inline int __intr_save(void) {
    int flags = swpipl(IPL_MAX);

    barrier();
    return flags;

}

static inline void __intr_restore(int flag) {
    barrier();
    setipl(IPL_MIN);
}

#define local_intr_save(x) \
    do {                   \
        x = __intr_save(); \
    } while (0)
#define local_intr_restore(x) __intr_restore(x);

#endif /* !__KERN_SYNC_SYNC_H__ */
