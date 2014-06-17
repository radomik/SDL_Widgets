	.file	"coList1D.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coList1D.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coList1D.asm
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

	.data
	.align 8
	.type	vtable, @object
	.size	vtable, 8
vtable:
	.quad	coList1D_vdestroy
	.section	.rodata
.LC0:
	.string	"coList1D"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	56
# name:
	.quad	.LC0
	.globl	coList1D_class
	.align 8
	.type	coList1D_class, @object
	.size	coList1D_class, 8
coList1D_class:
	.quad	type
	.text
	.type	coList1D_defaultInit, @function
coList1D_defaultInit:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp59, this
	mov	QWORD PTR [rax+8], 0	# this_1(D)->current,
	mov	rax, QWORD PTR [rbp-8]	# tmp60, this
	mov	QWORD PTR [rax+16], 0	# this_1(D)->enumer,
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax+24], 0	# this_1(D)->first,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	QWORD PTR [rax+32], 0	# this_1(D)->last,
	mov	rax, QWORD PTR [rbp-8]	# tmp63, this
	mov	QWORD PTR [rax+40], 0	# this_1(D)->count,
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	BYTE PTR [rax+48], 0	# this_1(D)->free_data_on_destroy,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coList1D_defaultInit, .-coList1D_defaultInit
	.globl	coList1D_vdestroy
	.type	coList1D_vdestroy, @function
coList1D_vdestroy:
.LFB3:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp59, this
	mov	rdi, rax	#, tmp59
	call	coList1D_clear	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coList1D_vdestroy, .-coList1D_vdestroy
	.globl	coList1D_copy
	.type	coList1D_copy, @function
coList1D_copy:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# src, src
	mov	eax, 0	# D.3402,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coList1D_copy, .-coList1D_copy
	.globl	coList1D_new
	.type	coList1D_new, @function
coList1D_new:
.LFB5:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 8	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	rdi, rax	#, tmp62
	call	coList1D_defaultInit	#
	mov	rax, QWORD PTR [rbp-8]	# D.3400, this
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coList1D_new, .-coList1D_new
	.globl	coList1D_copy2
	.type	coList1D_copy2, @function
coList1D_copy2:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# src, src
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	rax, QWORD PTR [rbp-8]	# D.3398, this
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	coList1D_copy2, .-coList1D_copy2
	.section	.rodata
.LC1:
	.string	"coList1D.c"
	.text
	.globl	coList1D_addLast
	.type	coList1D_addLast, @function
coList1D_addLast:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# data, data
	mov	eax, edx	# tmp66, change_current
	mov	BYTE PTR [rbp-36], al	# change_current, tmp66
	mov	edx, 64	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 16	#,
	call	coMalloc	#
	mov	QWORD PTR [rbp-8], rax	# new_item, tmp67
	cmp	QWORD PTR [rbp-8], 0	# new_item,
	jne	.L10	#,
	mov	eax, 0	# D.3386,
	jmp	.L11	#
.L10:
	mov	rax, QWORD PTR [rbp-8]	# tmp68, new_item
	mov	rdx, QWORD PTR [rbp-32]	# tmp69, data
	mov	QWORD PTR [rax], rdx	# new_item_2->data, tmp69
	mov	rax, QWORD PTR [rbp-8]	# tmp70, new_item
	mov	QWORD PTR [rax+8], 0	# new_item_2->next,
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	mov	rax, QWORD PTR [rax+32]	# D.3387, this_5(D)->last
	test	rax, rax	# D.3387
	je	.L12	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+32]	# D.3390, this_5(D)->last
	mov	rdx, QWORD PTR [rbp-8]	# tmp73, new_item
	mov	QWORD PTR [rax+8], rdx	# D.3390_7->next, tmp73
	mov	rax, QWORD PTR [rbp-24]	# tmp74, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp75, new_item
	mov	QWORD PTR [rax+32], rdx	# this_5(D)->last, tmp75
	jmp	.L13	#
.L12:
	mov	rax, QWORD PTR [rbp-24]	# tmp76, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp77, new_item
	mov	QWORD PTR [rax+24], rdx	# this_5(D)->first, tmp77
	mov	rax, QWORD PTR [rbp-24]	# tmp78, this
	mov	rdx, QWORD PTR [rax+24]	# D.3392, this_5(D)->first
	mov	rax, QWORD PTR [rbp-24]	# tmp79, this
	mov	QWORD PTR [rax+32], rdx	# this_5(D)->last, D.3392
.L13:
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	rax, QWORD PTR [rax+40]	# D.3393, this_5(D)->count
	lea	rdx, [rax+1]	# D.3394,
	mov	rax, QWORD PTR [rbp-24]	# tmp81, this
	mov	QWORD PTR [rax+40], rdx	# this_5(D)->count, D.3394
	cmp	BYTE PTR [rbp-36], 0	# change_current,
	je	.L14	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp82, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp83, new_item
	mov	QWORD PTR [rax+8], rdx	# this_5(D)->current, tmp83
.L14:
	mov	rax, QWORD PTR [rbp-32]	# D.3386, data
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	coList1D_addLast, .-coList1D_addLast
	.globl	coList1D_addFirst
	.type	coList1D_addFirst, @function
coList1D_addFirst:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# data, data
	mov	eax, edx	# tmp66, change_current
	mov	BYTE PTR [rbp-36], al	# change_current, tmp66
	mov	edx, 81	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 16	#,
	call	coMalloc	#
	mov	QWORD PTR [rbp-8], rax	# new_item, tmp67
	cmp	QWORD PTR [rbp-8], 0	# new_item,
	jne	.L16	#,
	mov	eax, 0	# D.3372,
	jmp	.L17	#
.L16:
	mov	rax, QWORD PTR [rbp-8]	# tmp68, new_item
	mov	rdx, QWORD PTR [rbp-32]	# tmp69, data
	mov	QWORD PTR [rax], rdx	# new_item_2->data, tmp69
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rax, QWORD PTR [rax+24]	# D.3373, this_5(D)->first
	test	rax, rax	# D.3373
	je	.L18	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	mov	rdx, QWORD PTR [rax+24]	# D.3376, this_5(D)->first
	mov	rax, QWORD PTR [rbp-8]	# tmp72, new_item
	mov	QWORD PTR [rax+8], rdx	# new_item_2->next, D.3376
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp74, new_item
	mov	QWORD PTR [rax+24], rdx	# this_5(D)->first, tmp74
	jmp	.L19	#
.L18:
	mov	rax, QWORD PTR [rbp-8]	# tmp75, new_item
	mov	QWORD PTR [rax+8], 0	# new_item_2->next,
	mov	rax, QWORD PTR [rbp-24]	# tmp76, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp77, new_item
	mov	QWORD PTR [rax+24], rdx	# this_5(D)->first, tmp77
	mov	rax, QWORD PTR [rbp-24]	# tmp78, this
	mov	rdx, QWORD PTR [rax+24]	# D.3378, this_5(D)->first
	mov	rax, QWORD PTR [rbp-24]	# tmp79, this
	mov	QWORD PTR [rax+32], rdx	# this_5(D)->last, D.3378
.L19:
	cmp	BYTE PTR [rbp-36], 0	# change_current,
	je	.L20	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp81, new_item
	mov	QWORD PTR [rax+8], rdx	# this_5(D)->current, tmp81
.L20:
	mov	rax, QWORD PTR [rbp-24]	# tmp82, this
	mov	rax, QWORD PTR [rax+40]	# D.3381, this_5(D)->count
	lea	rdx, [rax+1]	# D.3382,
	mov	rax, QWORD PTR [rbp-24]	# tmp83, this
	mov	QWORD PTR [rax+40], rdx	# this_5(D)->count, D.3382
	mov	rax, QWORD PTR [rbp-32]	# D.3372, data
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	coList1D_addFirst, .-coList1D_addFirst
	.type	coList1D_removeByItem, @function
coList1D_removeByItem:
.LFB9:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# prev, prev
	mov	QWORD PTR [rbp-24], rdx	# actual, actual
	mov	rax, QWORD PTR [rbp-8]	# tmp66, this
	mov	rax, QWORD PTR [rax+8]	# D.3343, this_1(D)->current
	cmp	rax, QWORD PTR [rbp-24]	# D.3343, actual
	jne	.L22	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp67, actual
	mov	rdx, QWORD PTR [rax+8]	# D.3346, actual_3(D)->next
	mov	rax, QWORD PTR [rbp-8]	# tmp68, this
	mov	QWORD PTR [rax+8], rdx	# this_1(D)->current, D.3346
.L22:
	cmp	QWORD PTR [rbp-16], 0	# prev,
	je	.L23	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp69, actual
	mov	rdx, QWORD PTR [rax+8]	# D.3349, actual_3(D)->next
	mov	rax, QWORD PTR [rbp-16]	# tmp70, prev
	mov	QWORD PTR [rax+8], rdx	# prev_5(D)->next, D.3349
	jmp	.L24	#
.L23:
	mov	rax, QWORD PTR [rbp-24]	# tmp71, actual
	mov	rdx, QWORD PTR [rax+8]	# D.3351, actual_3(D)->next
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	QWORD PTR [rax+24], rdx	# this_1(D)->first, D.3351
.L24:
	mov	rax, QWORD PTR [rbp-24]	# tmp73, actual
	mov	rax, QWORD PTR [rax+8]	# D.3352, actual_3(D)->next
	test	rax, rax	# D.3352
	jne	.L25	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp74, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp75, prev
	mov	QWORD PTR [rax+32], rdx	# this_1(D)->last, tmp75
.L25:
	mov	rax, QWORD PTR [rbp-8]	# tmp76, this
	mov	rax, QWORD PTR [rax+40]	# D.3355, this_1(D)->count
	lea	rdx, [rax-1]	# D.3356,
	mov	rax, QWORD PTR [rbp-8]	# tmp77, this
	mov	QWORD PTR [rax+40], rdx	# this_1(D)->count, D.3356
	mov	rax, QWORD PTR [rbp-24]	# tmp78, actual
	mov	edx, 108	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, tmp78
	call	coFree	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	coList1D_removeByItem, .-coList1D_removeByItem
	.globl	coList1D_removeByData
	.type	coList1D_removeByData, @function
coList1D_removeByData:
.LFB10:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# data, data
	mov	rax, QWORD PTR [rbp-24]	# tmp63, this
	mov	rdi, rax	#, tmp63
	call	coList1D_isEmpty	#
	test	al, al	# D.3362
	je	.L27	#,
	mov	eax, 0	# D.3365,
	jmp	.L28	#
.L27:
	mov	rax, QWORD PTR [rbp-24]	# tmp64, this
	mov	rax, QWORD PTR [rax+24]	# tmp65, this_4(D)->first
	mov	QWORD PTR [rbp-8], rax	# actual, tmp65
	mov	QWORD PTR [rbp-16], 0	# prev,
	jmp	.L29	#
.L31:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, actual
	mov	rax, QWORD PTR [rax]	# D.3366, actual_1->data
	cmp	rax, QWORD PTR [rbp-32]	# D.3366, data
	jne	.L30	#,
	mov	rdx, QWORD PTR [rbp-8]	# tmp67, actual
	mov	rcx, QWORD PTR [rbp-16]	# tmp68, prev
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rsi, rcx	#, tmp68
	mov	rdi, rax	#, tmp69
	call	coList1D_removeByItem	#
	mov	rax, QWORD PTR [rbp-32]	# D.3365, data
	jmp	.L28	#
.L30:
	mov	rax, QWORD PTR [rbp-8]	# tmp70, actual
	mov	QWORD PTR [rbp-16], rax	# prev, tmp70
	mov	rax, QWORD PTR [rbp-8]	# tmp71, actual
	mov	rax, QWORD PTR [rax+8]	# tmp72, actual_1->next
	mov	QWORD PTR [rbp-8], rax	# actual, tmp72
.L29:
	cmp	QWORD PTR [rbp-8], 0	# actual,
	jne	.L31	#,
	mov	eax, 0	# D.3365,
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	coList1D_removeByData, .-coList1D_removeByData
	.globl	coList1D_removeByIndex
	.type	coList1D_removeByIndex, @function
coList1D_removeByIndex:
.LFB11:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-40], rdi	# this, this
	mov	QWORD PTR [rbp-48], rsi	# index, index
	mov	rax, QWORD PTR [rbp-40]	# tmp62, this
	mov	rax, QWORD PTR [rax+40]	# D.3357, this_5(D)->count
	cmp	rax, QWORD PTR [rbp-48]	# D.3357, index
	ja	.L33	#,
	mov	eax, 0	# D.3360,
	jmp	.L34	#
.L33:
	mov	QWORD PTR [rbp-8], 0	# prev,
	mov	rax, QWORD PTR [rbp-40]	# tmp63, this
	mov	rax, QWORD PTR [rax+24]	# tmp64, this_5(D)->first
	mov	QWORD PTR [rbp-16], rax	# actual, tmp64
	mov	QWORD PTR [rbp-24], 0	# i,
	jmp	.L35	#
.L36:
	mov	rax, QWORD PTR [rbp-16]	# tmp65, actual
	mov	QWORD PTR [rbp-8], rax	# prev, tmp65
	mov	rax, QWORD PTR [rbp-16]	# tmp66, actual
	mov	rax, QWORD PTR [rax+8]	# tmp67, actual_2->next
	mov	QWORD PTR [rbp-16], rax	# actual, tmp67
	add	QWORD PTR [rbp-24], 1	# i,
.L35:
	mov	rax, QWORD PTR [rbp-24]	# tmp68, i
	cmp	rax, QWORD PTR [rbp-48]	# tmp68, index
	jb	.L36	#,
	mov	rax, QWORD PTR [rbp-16]	# tmp69, actual
	mov	rax, QWORD PTR [rax]	# tmp70, actual_2->data
	mov	QWORD PTR [rbp-32], rax	# data, tmp70
	mov	rdx, QWORD PTR [rbp-16]	# tmp71, actual
	mov	rcx, QWORD PTR [rbp-8]	# tmp72, prev
	mov	rax, QWORD PTR [rbp-40]	# tmp73, this
	mov	rsi, rcx	#, tmp72
	mov	rdi, rax	#, tmp73
	call	coList1D_removeByItem	#
	mov	rax, QWORD PTR [rbp-32]	# D.3360, data
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	coList1D_removeByIndex, .-coList1D_removeByIndex
	.globl	coList1D_removeByCurrent
	.type	coList1D_removeByCurrent, @function
coList1D_removeByCurrent:
.LFB12:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rax, QWORD PTR [rax+8]	# D.3327, this_3(D)->current
	test	rax, rax	# D.3327
	je	.L38	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rdi, rax	#, tmp70
	call	coList1D_isEmpty	#
	test	al, al	# D.3329
	je	.L39	#,
.L38:
	mov	eax, 0	# D.3330,
	jmp	.L40	#
.L39:
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	mov	rax, QWORD PTR [rax+24]	# tmp72, this_3(D)->first
	mov	QWORD PTR [rbp-8], rax	# prev, tmp72
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+8]	# D.3331, this_3(D)->current
	mov	rax, QWORD PTR [rax]	# tmp74, D.3331_7->data
	mov	QWORD PTR [rbp-16], rax	# data, tmp74
	jmp	.L41	#
.L43:
	mov	rax, QWORD PTR [rbp-8]	# tmp75, prev
	mov	rax, QWORD PTR [rax+8]	# tmp76, prev_1->next
	mov	QWORD PTR [rbp-8], rax	# prev, tmp76
.L41:
	cmp	QWORD PTR [rbp-8], 0	# prev,
	je	.L42	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp77, prev
	mov	rax, QWORD PTR [rax+8]	# D.3333, prev_1->next
	test	rax, rax	# D.3333
	je	.L42	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp78, prev
	mov	rdx, QWORD PTR [rax+8]	# D.3335, prev_1->next
	mov	rax, QWORD PTR [rbp-24]	# tmp79, this
	mov	rax, QWORD PTR [rax+8]	# D.3336, this_3(D)->current
	cmp	rdx, rax	# D.3335, D.3336
	jne	.L43	#,
.L42:
	cmp	QWORD PTR [rbp-8], 0	# prev,
	je	.L44	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp80, prev
	mov	rax, QWORD PTR [rax+8]	# D.3340, prev_1->next
	test	rax, rax	# D.3340
	jne	.L45	#,
.L44:
	mov	eax, 0	# D.3330,
	jmp	.L40	#
.L45:
	mov	rax, QWORD PTR [rbp-24]	# tmp81, this
	mov	rdx, QWORD PTR [rax+8]	# D.3341, this_3(D)->current
	mov	rcx, QWORD PTR [rbp-8]	# tmp82, prev
	mov	rax, QWORD PTR [rbp-24]	# tmp83, this
	mov	rsi, rcx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	coList1D_removeByItem	#
	mov	rax, QWORD PTR [rbp-16]	# D.3330, data
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	coList1D_removeByCurrent, .-coList1D_removeByCurrent
	.globl	coList1D_seekCurrentToData
	.type	coList1D_seekCurrentToData, @function
coList1D_seekCurrentToData:
.LFB13:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# data, data
	mov	rax, QWORD PTR [rbp-24]	# tmp63, this
	mov	rdi, rax	#, tmp63
	call	coList1D_isEmpty	#
	test	al, al	# D.3317
	je	.L47	#,
	mov	eax, 0	# D.3320,
	jmp	.L48	#
.L47:
	mov	rax, QWORD PTR [rbp-24]	# tmp64, this
	mov	rax, QWORD PTR [rax+24]	# tmp65, this_3(D)->first
	mov	QWORD PTR [rbp-8], rax	# temp, tmp65
	jmp	.L49	#
.L51:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, temp
	mov	rax, QWORD PTR [rax]	# D.3321, temp_1->data
	cmp	rax, QWORD PTR [rbp-32]	# D.3321, data
	jne	.L50	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp67, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp68, temp
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, tmp68
	mov	rax, QWORD PTR [rbp-32]	# D.3320, data
	jmp	.L48	#
.L50:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, temp
	mov	rax, QWORD PTR [rax+8]	# tmp70, temp_1->next
	mov	QWORD PTR [rbp-8], rax	# temp, tmp70
.L49:
	cmp	QWORD PTR [rbp-8], 0	# temp,
	jne	.L51	#,
	mov	eax, 0	# D.3320,
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	coList1D_seekCurrentToData, .-coList1D_seekCurrentToData
	.globl	coList1D_seekCurrentToIndex
	.type	coList1D_seekCurrentToIndex, @function
coList1D_seekCurrentToIndex:
.LFB14:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# index, index
	mov	rax, QWORD PTR [rbp-24]	# tmp62, this
	mov	rax, QWORD PTR [rax+40]	# D.3312, this_4(D)->count
	cmp	rax, QWORD PTR [rbp-32]	# D.3312, index
	ja	.L53	#,
	mov	eax, 0	# D.3315,
	jmp	.L54	#
.L53:
	mov	rax, QWORD PTR [rbp-24]	# tmp63, this
	mov	rax, QWORD PTR [rax+24]	# tmp64, this_4(D)->first
	mov	QWORD PTR [rbp-8], rax	# temp, tmp64
	mov	QWORD PTR [rbp-16], 0	# i,
	jmp	.L55	#
.L56:
	mov	rax, QWORD PTR [rbp-8]	# tmp65, temp
	mov	rax, QWORD PTR [rax+8]	# tmp66, temp_1->next
	mov	QWORD PTR [rbp-8], rax	# temp, tmp66
	add	QWORD PTR [rbp-16], 1	# i,
.L55:
	mov	rax, QWORD PTR [rbp-16]	# tmp67, i
	cmp	rax, QWORD PTR [rbp-32]	# tmp67, index
	jb	.L56	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp68, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp69, temp
	mov	QWORD PTR [rax+8], rdx	# this_4(D)->current, tmp69
	mov	rax, QWORD PTR [rbp-8]	# tmp70, temp
	mov	rax, QWORD PTR [rax]	# D.3315, temp_1->data
.L54:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	coList1D_seekCurrentToIndex, .-coList1D_seekCurrentToIndex
	.globl	coList1D_seekCurrentToFirst
	.type	coList1D_seekCurrentToFirst, @function
coList1D_seekCurrentToFirst:
.LFB15:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	rdx, QWORD PTR [rax+8]	# D.3299, this_3(D)->current
	mov	rax, QWORD PTR [rbp-8]	# tmp68, this
	mov	rax, QWORD PTR [rax+24]	# D.3300, this_3(D)->first
	cmp	rdx, rax	# D.3299, D.3300
	jne	.L58	#,
	mov	eax, 0	# D.3303,
	jmp	.L59	#
.L58:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	rdx, QWORD PTR [rax+24]	# D.3304, this_3(D)->first
	mov	rax, QWORD PTR [rbp-8]	# tmp70, this
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, D.3304
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	rax, QWORD PTR [rax+24]	# D.3306, this_3(D)->first
	test	rax, rax	# D.3306
	je	.L60	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# D.3309, this_3(D)->first
	mov	rax, QWORD PTR [rax]	# iftmp.1, D.3309_9->data
	jmp	.L61	#
.L60:
	mov	eax, 0	# iftmp.1,
.L61:
.L59:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	coList1D_seekCurrentToFirst, .-coList1D_seekCurrentToFirst
	.globl	coList1D_seekCurrentToLast
	.type	coList1D_seekCurrentToLast, @function
coList1D_seekCurrentToLast:
.LFB16:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	rdx, QWORD PTR [rax+8]	# D.3286, this_3(D)->current
	mov	rax, QWORD PTR [rbp-8]	# tmp68, this
	mov	rax, QWORD PTR [rax+32]	# D.3287, this_3(D)->last
	cmp	rdx, rax	# D.3286, D.3287
	jne	.L63	#,
	mov	eax, 0	# D.3290,
	jmp	.L64	#
.L63:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	rdx, QWORD PTR [rax+32]	# D.3291, this_3(D)->last
	mov	rax, QWORD PTR [rbp-8]	# tmp70, this
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, D.3291
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	rax, QWORD PTR [rax+32]	# D.3293, this_3(D)->last
	test	rax, rax	# D.3293
	je	.L65	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	rax, QWORD PTR [rax+32]	# D.3296, this_3(D)->last
	mov	rax, QWORD PTR [rax]	# iftmp.0, D.3296_9->data
	jmp	.L66	#
.L65:
	mov	eax, 0	# iftmp.0,
.L66:
.L64:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	coList1D_seekCurrentToLast, .-coList1D_seekCurrentToLast
	.globl	coList1D_seekCurrentToPrevious
	.type	coList1D_seekCurrentToPrevious, @function
coList1D_seekCurrentToPrevious:
.LFB17:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rdi, rax	#, tmp69
	call	coList1D_isEmpty	#
	test	al, al	# D.3270
	jne	.L68	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rdx, QWORD PTR [rax+8]	# D.3272, this_3(D)->current
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	mov	rax, QWORD PTR [rax+24]	# D.3273, this_3(D)->first
	cmp	rdx, rax	# D.3272, D.3273
	jne	.L69	#,
.L68:
	mov	eax, 0	# D.3274,
	jmp	.L70	#
.L69:
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# tmp73, this_3(D)->first
	mov	QWORD PTR [rbp-8], rax	# prev, tmp73
	jmp	.L71	#
.L73:
	mov	rax, QWORD PTR [rbp-8]	# tmp74, prev
	mov	rax, QWORD PTR [rax+8]	# tmp75, prev_1->next
	mov	QWORD PTR [rbp-8], rax	# prev, tmp75
.L71:
	cmp	QWORD PTR [rbp-8], 0	# prev,
	je	.L72	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp76, prev
	mov	rax, QWORD PTR [rax+8]	# D.3276, prev_1->next
	test	rax, rax	# D.3276
	je	.L72	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp77, prev
	mov	rdx, QWORD PTR [rax+8]	# D.3278, prev_1->next
	mov	rax, QWORD PTR [rbp-24]	# tmp78, this
	mov	rax, QWORD PTR [rax+8]	# D.3279, this_3(D)->current
	cmp	rdx, rax	# D.3278, D.3279
	jne	.L73	#,
.L72:
	cmp	QWORD PTR [rbp-8], 0	# prev,
	je	.L74	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp79, prev
	mov	rax, QWORD PTR [rax+8]	# D.3283, prev_1->next
	test	rax, rax	# D.3283
	jne	.L75	#,
.L74:
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	QWORD PTR [rax+8], 0	# this_3(D)->current,
	mov	eax, 0	# D.3274,
	jmp	.L70	#
.L75:
	mov	rax, QWORD PTR [rbp-24]	# tmp81, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp82, prev
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, tmp82
	mov	rax, QWORD PTR [rbp-24]	# tmp83, this
	mov	rax, QWORD PTR [rax+8]	# D.3284, this_3(D)->current
	mov	rax, QWORD PTR [rax]	# D.3274, D.3284_13->data
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	coList1D_seekCurrentToPrevious, .-coList1D_seekCurrentToPrevious
	.globl	coList1D_seekCurrentToNext
	.type	coList1D_seekCurrentToNext, @function
coList1D_seekCurrentToNext:
.LFB18:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	rdi, rax	#, tmp67
	call	coList1D_isEmpty	#
	test	al, al	# D.3259
	jne	.L77	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp68, this
	mov	rdx, QWORD PTR [rax+8]	# D.3261, this_2(D)->current
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	rax, QWORD PTR [rax+32]	# D.3262, this_2(D)->last
	cmp	rdx, rax	# D.3261, D.3262
	jne	.L78	#,
.L77:
	mov	eax, 0	# D.3263,
	jmp	.L79	#
.L78:
	mov	rax, QWORD PTR [rbp-8]	# tmp70, this
	mov	rax, QWORD PTR [rax+8]	# D.3264, this_2(D)->current
	mov	rdx, QWORD PTR [rax+8]	# D.3265, D.3264_6->next
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	QWORD PTR [rax+8], rdx	# this_2(D)->current, D.3265
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	rax, QWORD PTR [rax+8]	# D.3266, this_2(D)->current
	mov	rax, QWORD PTR [rax]	# D.3263, D.3266_8->data
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	coList1D_seekCurrentToNext, .-coList1D_seekCurrentToNext
	.globl	coList1D_replaceCurrent
	.type	coList1D_replaceCurrent, @function
coList1D_replaceCurrent:
.LFB19:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# data, data
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	rax, QWORD PTR [rax+8]	# D.3251, this_2(D)->current
	test	rax, rax	# D.3251
	je	.L81	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp65, this
	mov	rdi, rax	#, tmp65
	call	coList1D_isEmpty	#
	test	al, al	# D.3253
	je	.L82	#,
.L81:
	mov	eax, 0	# D.3254,
	jmp	.L83	#
.L82:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, this
	mov	rax, QWORD PTR [rax+8]	# D.3255, this_2(D)->current
	mov	rdx, QWORD PTR [rbp-16]	# tmp67, data
	mov	QWORD PTR [rax], rdx	# D.3255_5->data, tmp67
	mov	rax, QWORD PTR [rbp-16]	# D.3254, data
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	coList1D_replaceCurrent, .-coList1D_replaceCurrent
	.globl	coList1D_getCount
	.type	coList1D_getCount, @function
coList1D_getCount:
.LFB20:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	rax, QWORD PTR [rax+40]	# D.3247, this_1(D)->count
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	coList1D_getCount, .-coList1D_getCount
	.globl	coList1D_isEmpty
	.type	coList1D_isEmpty, @function
coList1D_isEmpty:
.LFB21:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp63, this
	mov	rax, QWORD PTR [rax+40]	# D.3244, this_1(D)->count
	test	rax, rax	# D.3244
	sete	al	#, D.3245
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	coList1D_isEmpty, .-coList1D_isEmpty
	.globl	coList1D_clear
	.type	coList1D_clear, @function
coList1D_clear:
.LFB22:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR [rbp-24]	# tmp68, this
	mov	rdi, rax	#, tmp68
	call	coList1D_isEmpty	#
	test	al, al	# D.3230
	jne	.L88	#,
	jmp	.L90	#
.L92:
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rax, QWORD PTR [rax+24]	# D.3233, this_1(D)->first
	mov	rax, QWORD PTR [rax+8]	# tmp70, D.3233_4->next
	mov	QWORD PTR [rbp-8], rax	# temp, tmp70
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	movzx	eax, BYTE PTR [rax+48]	# D.3234, this_1(D)->free_data_on_destroy
	test	al, al	# D.3234
	je	.L91	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# D.3237, this_1(D)->first
	mov	rax, QWORD PTR [rax]	# D.3238, D.3237_7->data
	mov	edx, 213	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3238
	call	coFree	#
.L91:
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+24]	# D.3239, this_1(D)->first
	mov	edx, 214	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3239
	call	coFree	#
	mov	rax, QWORD PTR [rbp-24]	# tmp74, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp75, temp
	mov	QWORD PTR [rax+24], rdx	# this_1(D)->first, tmp75
.L90:
	mov	rax, QWORD PTR [rbp-24]	# tmp76, this
	mov	rax, QWORD PTR [rax+24]	# D.3240, this_1(D)->first
	test	rax, rax	# D.3240
	jne	.L92	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp77, this
	mov	QWORD PTR [rax+32], 0	# this_1(D)->last,
	mov	rax, QWORD PTR [rbp-24]	# tmp78, this
	mov	rdx, QWORD PTR [rax+32]	# D.3241, this_1(D)->last
	mov	rax, QWORD PTR [rbp-24]	# tmp79, this
	mov	QWORD PTR [rax+8], rdx	# this_1(D)->current, D.3241
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	rdx, QWORD PTR [rax+8]	# D.3242, this_1(D)->current
	mov	rax, QWORD PTR [rbp-24]	# tmp81, this
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->enumer, D.3242
	mov	rax, QWORD PTR [rbp-24]	# tmp82, this
	mov	QWORD PTR [rax+40], 0	# this_1(D)->count,
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	coList1D_clear, .-coList1D_clear
	.globl	coList1D_enumerate
	.type	coList1D_enumerate, @function
coList1D_enumerate:
.LFB23:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp60, this
	mov	rdx, QWORD PTR [rax+24]	# D.3229, this_1(D)->first
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->enumer, D.3229
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	coList1D_enumerate, .-coList1D_enumerate
	.globl	coList1D_hasNext
	.type	coList1D_hasNext, @function
coList1D_hasNext:
.LFB24:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp63, this
	mov	rax, QWORD PTR [rax+16]	# D.3226, this_1(D)->enumer
	test	rax, rax	# D.3226
	setne	al	#, D.3227
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	coList1D_hasNext, .-coList1D_hasNext
	.globl	coList1D_next
	.type	coList1D_next, @function
coList1D_next:
.LFB25:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR [rbp-24]	# tmp64, this
	mov	rax, QWORD PTR [rax+16]	# D.3220, this_1(D)->enumer
	mov	rax, QWORD PTR [rax]	# tmp65, D.3220_2->data
	mov	QWORD PTR [rbp-8], rax	# data, tmp65
	mov	rax, QWORD PTR [rbp-24]	# tmp66, this
	mov	rax, QWORD PTR [rax+16]	# D.3221, this_1(D)->enumer
	mov	rdx, QWORD PTR [rax+8]	# D.3222, D.3221_4->next
	mov	rax, QWORD PTR [rbp-24]	# tmp67, this
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->enumer, D.3222
	mov	rax, QWORD PTR [rbp-8]	# D.3223, data
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	coList1D_next, .-coList1D_next
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
