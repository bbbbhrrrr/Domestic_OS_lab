#define __ASSEMBLY__
#include <sw.h>
    .text
	.set noat
    .macro SAVE_ALL
    ldi $sp, -30*REGBYTES($sp)
    # save  registers
    STORE $0, 0*REGBYTES($sp)
    STORE $1, 1*REGBYTES($sp)
    STORE $2, 2*REGBYTES($sp)
    STORE $3, 3*REGBYTES($sp)
    STORE $4, 4*REGBYTES($sp)
    STORE $5, 5*REGBYTES($sp)
    STORE $6, 6*REGBYTES($sp)
    STORE $7, 7*REGBYTES($sp)
    STORE $8, 8*REGBYTES($sp)
    STORE $9, 9*REGBYTES($sp)
    STORE $10, 10*REGBYTES($sp)
    STORE $11, 11*REGBYTES($sp)
    STORE $12, 12*REGBYTES($sp)
    STORE $13, 13*REGBYTES($sp)
    STORE $14, 14*REGBYTES($sp)
    STORE $15, 15*REGBYTES($sp)
    STORE $16, 16*REGBYTES($sp)
    STORE $17, 17*REGBYTES($sp)
    STORE $18, 18*REGBYTES($sp)
    STORE $19, 19*REGBYTES($sp)
    STORE $20, 20*REGBYTES($sp)
    STORE $21, 21*REGBYTES($sp)
    STORE $22, 22*REGBYTES($sp)
    STORE $23, 23*REGBYTES($sp)
    STORE $24, 24*REGBYTES($sp)
    STORE $25, 25*REGBYTES($sp)
    STORE $26, 26*REGBYTES($sp)
    STORE $27, 27*REGBYTES($sp)
    STORE $28, 28*REGBYTES($sp)
    .endm

    .macro RESTORE_ALL
    # restore registers
    LOAD $0, 0*REGBYTES($sp)
    LOAD $1, 1*REGBYTES($sp)
    LOAD $2, 2*REGBYTES($sp)
    LOAD $3, 3*REGBYTES($sp)
    LOAD $4, 4*REGBYTES($sp)
    LOAD $5, 5*REGBYTES($sp)
    LOAD $6, 6*REGBYTES($sp)
    LOAD $7, 7*REGBYTES($sp)
    LOAD $8, 8*REGBYTES($sp)
    LOAD $19, 19*REGBYTES($sp)
    LOAD $20, 20*REGBYTES($sp)
    LOAD $21, 21*REGBYTES($sp)
    LOAD $22, 22*REGBYTES($sp)
    LOAD $23, 23*REGBYTES($sp)
    LOAD $24, 24*REGBYTES($sp)
    LOAD $25, 25*REGBYTES($sp)
    LOAD $26, 26*REGBYTES($sp)
    LOAD $27, 27*REGBYTES($sp)
    LOAD $28, 28*REGBYTES($sp)
    # restore $sp last
	ldi $sp, 30*REGBYTES($sp) 
    .endm

    .globl entInt 
.align(4)
entInt:
    SAVE_ALL
	ldi $16,0($31) 
    STORE $16, 29*REGBYTES($sp)
	ldi $26, __trapret
	mov $sp, $16
    call $31, trap


    .globl entMM 
.align(4)
entMM:
    SAVE_ALL
	ldi $16,2($31) 
    STORE $16, 29*REGBYTES($sp)
	ldi $26, __trapret
	mov $sp, $16
    call $31, trap

    .globl entIF 
.align(4)
entIF:
    SAVE_ALL
	ldi $16,3($31) 
    STORE $16, 29*REGBYTES($sp)
	ldi $26, __trapret
	mov $sp, $16
    call $31, trap
 
    .globl __trapret
__trapret:
    RESTORE_ALL
    # return from supervisor call
	sys_call HMC_rti
