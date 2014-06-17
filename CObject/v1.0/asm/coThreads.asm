	.file	"coThreads.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coThreads.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coThreads.asm
# -Wall -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcommon -fdebug-types-section
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
# -fident -finline-atomics -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-debug-strings -fmove-loop-invariants -fpeephole
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fstrict-volatile-bitfields -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-pta -ftree-reassoc -ftree-scev-cprop
# -ftree-slp-vectorize -ftree-vect-loop-version -funit-at-a-time
# -funwind-tables -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mglibc -mieee-fp
# -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
	.globl	coMutexInit
	.type	coMutexInit, @function
coMutexInit:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# mutex, mutex
	cmp	QWORD PTR [rbp-8], 0	# mutex,
	je	.L2	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, mutex
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp62
	call	pthread_mutex_init	#
	jmp	.L3	#
.L2:
	mov	eax, -1	# iftmp.5,
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coMutexInit, .-coMutexInit
	.globl	coMutexLock
	.type	coMutexLock, @function
coMutexLock:
.LFB3:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# mutex, mutex
	cmp	QWORD PTR [rbp-8], 0	# mutex,
	je	.L6	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, mutex
	mov	rdi, rax	#, tmp62
	call	pthread_mutex_lock	#
	jmp	.L7	#
.L6:
	mov	eax, -1	# iftmp.4,
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coMutexLock, .-coMutexLock
	.globl	coMutexUnlock
	.type	coMutexUnlock, @function
coMutexUnlock:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# mutex, mutex
	cmp	QWORD PTR [rbp-8], 0	# mutex,
	je	.L10	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, mutex
	mov	rdi, rax	#, tmp62
	call	pthread_mutex_unlock	#
	jmp	.L11	#
.L10:
	mov	eax, -1	# iftmp.3,
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coMutexUnlock, .-coMutexUnlock
	.globl	coMutexClear
	.type	coMutexClear, @function
coMutexClear:
.LFB5:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# mutex, mutex
	cmp	QWORD PTR [rbp-8], 0	# mutex,
	je	.L14	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, mutex
	mov	rdi, rax	#, tmp62
	call	pthread_mutex_destroy	#
	jmp	.L15	#
.L14:
	mov	eax, -1	# iftmp.2,
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coMutexClear, .-coMutexClear
	.globl	coThreadInit
	.type	coThreadInit, @function
coThreadInit:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# thread, thread
	mov	QWORD PTR [rbp-16], rsi	# fun, fun
	mov	QWORD PTR [rbp-24], rdx	# param, param
	cmp	QWORD PTR [rbp-8], 0	# thread,
	je	.L18	#,
	mov	rcx, QWORD PTR [rbp-24]	# tmp62, param
	mov	rdx, QWORD PTR [rbp-16]	# tmp63, fun
	mov	rax, QWORD PTR [rbp-8]	# tmp64, thread
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp64
	call	pthread_create	#
	jmp	.L19	#
.L18:
	mov	eax, -1	# iftmp.1,
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	coThreadInit, .-coThreadInit
	.globl	coThreadWait
	.type	coThreadWait, @function
coThreadWait:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# thread, thread
	cmp	QWORD PTR [rbp-8], 0	# thread,
	je	.L22	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp63, thread
	mov	rax, QWORD PTR [rax]	# D.3499, *thread_2(D)
	mov	esi, 0	#,
	mov	rdi, rax	#, D.3499
	call	pthread_join	#
	jmp	.L23	#
.L22:
	mov	eax, -1	# iftmp.0,
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	coThreadWait, .-coThreadWait
	.globl	coThreadClear
	.type	coThreadClear, @function
coThreadClear:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# thread, thread
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	coThreadClear, .-coThreadClear
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
