	.file	"coList2D.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coList2D.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coList2D.asm
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
	.quad	coList2D_vdestroy
	.section	.rodata
.LC0:
	.string	"coList2D"
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
	.globl	coList2D_class
	.align 8
	.type	coList2D_class, @object
	.size	coList2D_class, 8
coList2D_class:
	.quad	type
	.text
	.type	coList2D_defaultInit, @function
coList2D_defaultInit:
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
	.size	coList2D_defaultInit, .-coList2D_defaultInit
	.globl	coList2D_vdestroy
	.type	coList2D_vdestroy, @function
coList2D_vdestroy:
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
	call	coList2D_clear	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coList2D_vdestroy, .-coList2D_vdestroy
	.globl	coList2D_copy
	.type	coList2D_copy, @function
coList2D_copy:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# src, src
	mov	eax, 0	# D.3404,
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coList2D_copy, .-coList2D_copy
	.globl	coList2D_new
	.type	coList2D_new, @function
coList2D_new:
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
	call	coList2D_defaultInit	#
	mov	rax, QWORD PTR [rbp-8]	# D.3402, this
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coList2D_new, .-coList2D_new
	.globl	coList2D_copy2
	.type	coList2D_copy2, @function
coList2D_copy2:
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
	mov	rax, QWORD PTR [rbp-8]	# D.3400, this
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	coList2D_copy2, .-coList2D_copy2
	.section	.rodata
.LC1:
	.string	"coList2D.c"
	.text
	.globl	coList2D_addLast
	.type	coList2D_addLast, @function
coList2D_addLast:
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
	mov	eax, edx	# tmp67, change_current
	mov	BYTE PTR [rbp-36], al	# change_current, tmp67
	mov	edx, 64	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 24	#,
	call	coMalloc	#
	mov	QWORD PTR [rbp-8], rax	# new_item, tmp68
	cmp	QWORD PTR [rbp-8], 0	# new_item,
	jne	.L10	#,
	mov	eax, 0	# D.3387,
	jmp	.L11	#
.L10:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, new_item
	mov	rdx, QWORD PTR [rbp-32]	# tmp70, data
	mov	QWORD PTR [rax], rdx	# new_item_2->data, tmp70
	mov	rax, QWORD PTR [rbp-8]	# tmp71, new_item
	mov	QWORD PTR [rax+16], 0	# new_item_2->next,
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+32]	# D.3388, this_5(D)->last
	test	rax, rax	# D.3388
	je	.L12	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+32]	# D.3391, this_5(D)->last
	mov	rdx, QWORD PTR [rbp-8]	# tmp74, new_item
	mov	QWORD PTR [rax+16], rdx	# D.3391_7->next, tmp74
	mov	rax, QWORD PTR [rbp-24]	# tmp75, this
	mov	rdx, QWORD PTR [rax+32]	# D.3392, this_5(D)->last
	mov	rax, QWORD PTR [rbp-8]	# tmp76, new_item
	mov	QWORD PTR [rax+8], rdx	# new_item_2->prev, D.3392
	mov	rax, QWORD PTR [rbp-24]	# tmp77, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp78, new_item
	mov	QWORD PTR [rax+32], rdx	# this_5(D)->last, tmp78
	jmp	.L13	#
.L12:
	mov	rax, QWORD PTR [rbp-8]	# tmp79, new_item
	mov	QWORD PTR [rax+8], 0	# new_item_2->prev,
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp81, new_item
	mov	QWORD PTR [rax+24], rdx	# this_5(D)->first, tmp81
	mov	rax, QWORD PTR [rbp-24]	# tmp82, this
	mov	rdx, QWORD PTR [rax+24]	# D.3394, this_5(D)->first
	mov	rax, QWORD PTR [rbp-24]	# tmp83, this
	mov	QWORD PTR [rax+32], rdx	# this_5(D)->last, D.3394
.L13:
	mov	rax, QWORD PTR [rbp-24]	# tmp84, this
	mov	rax, QWORD PTR [rax+40]	# D.3395, this_5(D)->count
	lea	rdx, [rax+1]	# D.3396,
	mov	rax, QWORD PTR [rbp-24]	# tmp85, this
	mov	QWORD PTR [rax+40], rdx	# this_5(D)->count, D.3396
	cmp	BYTE PTR [rbp-36], 0	# change_current,
	je	.L14	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp86, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp87, new_item
	mov	QWORD PTR [rax+8], rdx	# this_5(D)->current, tmp87
.L14:
	mov	rax, QWORD PTR [rbp-32]	# D.3387, data
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	coList2D_addLast, .-coList2D_addLast
	.globl	coList2D_addFirst
	.type	coList2D_addFirst, @function
coList2D_addFirst:
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
	mov	eax, edx	# tmp67, change_current
	mov	BYTE PTR [rbp-36], al	# change_current, tmp67
	mov	edx, 83	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 24	#,
	call	coMalloc	#
	mov	QWORD PTR [rbp-8], rax	# new_item, tmp68
	cmp	QWORD PTR [rbp-8], 0	# new_item,
	jne	.L16	#,
	mov	eax, 0	# D.3372,
	jmp	.L17	#
.L16:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, new_item
	mov	rdx, QWORD PTR [rbp-32]	# tmp70, data
	mov	QWORD PTR [rax], rdx	# new_item_2->data, tmp70
	mov	rax, QWORD PTR [rbp-8]	# tmp71, new_item
	mov	QWORD PTR [rax+8], 0	# new_item_2->prev,
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# D.3373, this_5(D)->first
	test	rax, rax	# D.3373
	je	.L18	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+24]	# D.3376, this_5(D)->first
	mov	rdx, QWORD PTR [rbp-8]	# tmp74, new_item
	mov	QWORD PTR [rax+8], rdx	# D.3376_7->prev, tmp74
	mov	rax, QWORD PTR [rbp-24]	# tmp75, this
	mov	rdx, QWORD PTR [rax+24]	# D.3377, this_5(D)->first
	mov	rax, QWORD PTR [rbp-8]	# tmp76, new_item
	mov	QWORD PTR [rax+16], rdx	# new_item_2->next, D.3377
	mov	rax, QWORD PTR [rbp-24]	# tmp77, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp78, new_item
	mov	QWORD PTR [rax+24], rdx	# this_5(D)->first, tmp78
	jmp	.L19	#
.L18:
	mov	rax, QWORD PTR [rbp-8]	# tmp79, new_item
	mov	QWORD PTR [rax+16], 0	# new_item_2->next,
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp81, new_item
	mov	QWORD PTR [rax+24], rdx	# this_5(D)->first, tmp81
	mov	rax, QWORD PTR [rbp-24]	# tmp82, this
	mov	rdx, QWORD PTR [rax+24]	# D.3379, this_5(D)->first
	mov	rax, QWORD PTR [rbp-24]	# tmp83, this
	mov	QWORD PTR [rax+32], rdx	# this_5(D)->last, D.3379
.L19:
	cmp	BYTE PTR [rbp-36], 0	# change_current,
	je	.L20	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp84, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp85, new_item
	mov	QWORD PTR [rax+8], rdx	# this_5(D)->current, tmp85
.L20:
	mov	rax, QWORD PTR [rbp-24]	# tmp86, this
	mov	rax, QWORD PTR [rax+40]	# D.3382, this_5(D)->count
	lea	rdx, [rax+1]	# D.3383,
	mov	rax, QWORD PTR [rbp-24]	# tmp87, this
	mov	QWORD PTR [rax+40], rdx	# this_5(D)->count, D.3383
	mov	rax, QWORD PTR [rbp-32]	# D.3372, data
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	coList2D_addFirst, .-coList2D_addFirst
	.type	coList2D_removeByItem, @function
coList2D_removeByItem:
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
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	rax, QWORD PTR [rax+8]	# D.3341, this_1(D)->current
	cmp	rax, QWORD PTR [rbp-24]	# D.3341, actual
	jne	.L22	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp68, actual
	mov	rdx, QWORD PTR [rax+16]	# D.3344, actual_3(D)->next
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	QWORD PTR [rax+8], rdx	# this_1(D)->current, D.3344
.L22:
	cmp	QWORD PTR [rbp-16], 0	# prev,
	je	.L23	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, actual
	mov	rdx, QWORD PTR [rax+16]	# D.3347, actual_3(D)->next
	mov	rax, QWORD PTR [rbp-16]	# tmp71, prev
	mov	QWORD PTR [rax+16], rdx	# prev_5(D)->next, D.3347
	jmp	.L24	#
.L23:
	mov	rax, QWORD PTR [rbp-24]	# tmp72, actual
	mov	rdx, QWORD PTR [rax+16]	# D.3349, actual_3(D)->next
	mov	rax, QWORD PTR [rbp-8]	# tmp73, this
	mov	QWORD PTR [rax+24], rdx	# this_1(D)->first, D.3349
.L24:
	mov	rax, QWORD PTR [rbp-24]	# tmp74, actual
	mov	rax, QWORD PTR [rax+16]	# D.3350, actual_3(D)->next
	test	rax, rax	# D.3350
	je	.L25	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp75, actual
	mov	rax, QWORD PTR [rax+16]	# D.3353, actual_3(D)->next
	mov	rdx, QWORD PTR [rbp-16]	# tmp76, prev
	mov	QWORD PTR [rax+8], rdx	# D.3353_9->prev, tmp76
	jmp	.L26	#
.L25:
	mov	rax, QWORD PTR [rbp-8]	# tmp77, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp78, prev
	mov	QWORD PTR [rax+32], rdx	# this_1(D)->last, tmp78
.L26:
	mov	rax, QWORD PTR [rbp-8]	# tmp79, this
	mov	rax, QWORD PTR [rax+40]	# D.3355, this_1(D)->count
	lea	rdx, [rax-1]	# D.3356,
	mov	rax, QWORD PTR [rbp-8]	# tmp80, this
	mov	QWORD PTR [rax+40], rdx	# this_1(D)->count, D.3356
	mov	rax, QWORD PTR [rbp-24]	# tmp81, actual
	mov	edx, 113	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, tmp81
	call	coFree	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	coList2D_removeByItem, .-coList2D_removeByItem
	.globl	coList2D_removeByData
	.type	coList2D_removeByData, @function
coList2D_removeByData:
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
	call	coList2D_isEmpty	#
	test	al, al	# D.3362
	je	.L28	#,
	mov	eax, 0	# D.3365,
	jmp	.L29	#
.L28:
	mov	rax, QWORD PTR [rbp-24]	# tmp64, this
	mov	rax, QWORD PTR [rax+24]	# tmp65, this_4(D)->first
	mov	QWORD PTR [rbp-8], rax	# actual, tmp65
	mov	QWORD PTR [rbp-16], 0	# prev,
	jmp	.L30	#
.L32:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, actual
	mov	rax, QWORD PTR [rax]	# D.3366, actual_1->data
	cmp	rax, QWORD PTR [rbp-32]	# D.3366, data
	jne	.L31	#,
	mov	rdx, QWORD PTR [rbp-8]	# tmp67, actual
	mov	rcx, QWORD PTR [rbp-16]	# tmp68, prev
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rsi, rcx	#, tmp68
	mov	rdi, rax	#, tmp69
	call	coList2D_removeByItem	#
	mov	rax, QWORD PTR [rbp-32]	# D.3365, data
	jmp	.L29	#
.L31:
	mov	rax, QWORD PTR [rbp-8]	# tmp70, actual
	mov	QWORD PTR [rbp-16], rax	# prev, tmp70
	mov	rax, QWORD PTR [rbp-8]	# tmp71, actual
	mov	rax, QWORD PTR [rax+16]	# tmp72, actual_1->next
	mov	QWORD PTR [rbp-8], rax	# actual, tmp72
.L30:
	cmp	QWORD PTR [rbp-8], 0	# actual,
	jne	.L32	#,
	mov	eax, 0	# D.3365,
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	coList2D_removeByData, .-coList2D_removeByData
	.globl	coList2D_removeByIndex
	.type	coList2D_removeByIndex, @function
coList2D_removeByIndex:
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
	ja	.L34	#,
	mov	eax, 0	# D.3360,
	jmp	.L35	#
.L34:
	mov	QWORD PTR [rbp-8], 0	# prev,
	mov	rax, QWORD PTR [rbp-40]	# tmp63, this
	mov	rax, QWORD PTR [rax+24]	# tmp64, this_5(D)->first
	mov	QWORD PTR [rbp-16], rax	# actual, tmp64
	mov	QWORD PTR [rbp-24], 0	# i,
	jmp	.L36	#
.L37:
	mov	rax, QWORD PTR [rbp-16]	# tmp65, actual
	mov	QWORD PTR [rbp-8], rax	# prev, tmp65
	mov	rax, QWORD PTR [rbp-16]	# tmp66, actual
	mov	rax, QWORD PTR [rax+16]	# tmp67, actual_2->next
	mov	QWORD PTR [rbp-16], rax	# actual, tmp67
	add	QWORD PTR [rbp-24], 1	# i,
.L36:
	mov	rax, QWORD PTR [rbp-24]	# tmp68, i
	cmp	rax, QWORD PTR [rbp-48]	# tmp68, index
	jb	.L37	#,
	mov	rax, QWORD PTR [rbp-16]	# tmp69, actual
	mov	rax, QWORD PTR [rax]	# tmp70, actual_2->data
	mov	QWORD PTR [rbp-32], rax	# data, tmp70
	mov	rdx, QWORD PTR [rbp-16]	# tmp71, actual
	mov	rcx, QWORD PTR [rbp-8]	# tmp72, prev
	mov	rax, QWORD PTR [rbp-40]	# tmp73, this
	mov	rsi, rcx	#, tmp72
	mov	rdi, rax	#, tmp73
	call	coList2D_removeByItem	#
	mov	rax, QWORD PTR [rbp-32]	# D.3360, data
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	coList2D_removeByIndex, .-coList2D_removeByIndex
	.globl	coList2D_removeByCurrent
	.type	coList2D_removeByCurrent, @function
coList2D_removeByCurrent:
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
	mov	rax, QWORD PTR [rax+8]	# D.3325, this_3(D)->current
	test	rax, rax	# D.3325
	je	.L39	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rdi, rax	#, tmp70
	call	coList2D_isEmpty	#
	test	al, al	# D.3327
	je	.L40	#,
.L39:
	mov	eax, 0	# D.3328,
	jmp	.L41	#
.L40:
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	mov	rax, QWORD PTR [rax+24]	# tmp72, this_3(D)->first
	mov	QWORD PTR [rbp-8], rax	# prev, tmp72
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+8]	# D.3329, this_3(D)->current
	mov	rax, QWORD PTR [rax]	# tmp74, D.3329_7->data
	mov	QWORD PTR [rbp-16], rax	# data, tmp74
	jmp	.L42	#
.L44:
	mov	rax, QWORD PTR [rbp-8]	# tmp75, prev
	mov	rax, QWORD PTR [rax+16]	# tmp76, prev_1->next
	mov	QWORD PTR [rbp-8], rax	# prev, tmp76
.L42:
	cmp	QWORD PTR [rbp-8], 0	# prev,
	je	.L43	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp77, prev
	mov	rax, QWORD PTR [rax+16]	# D.3331, prev_1->next
	test	rax, rax	# D.3331
	je	.L43	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp78, prev
	mov	rdx, QWORD PTR [rax+16]	# D.3333, prev_1->next
	mov	rax, QWORD PTR [rbp-24]	# tmp79, this
	mov	rax, QWORD PTR [rax+8]	# D.3334, this_3(D)->current
	cmp	rdx, rax	# D.3333, D.3334
	jne	.L44	#,
.L43:
	cmp	QWORD PTR [rbp-8], 0	# prev,
	je	.L45	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp80, prev
	mov	rax, QWORD PTR [rax+16]	# D.3338, prev_1->next
	test	rax, rax	# D.3338
	jne	.L46	#,
.L45:
	mov	eax, 0	# D.3328,
	jmp	.L41	#
.L46:
	mov	rax, QWORD PTR [rbp-24]	# tmp81, this
	mov	rdx, QWORD PTR [rax+8]	# D.3339, this_3(D)->current
	mov	rcx, QWORD PTR [rbp-8]	# tmp82, prev
	mov	rax, QWORD PTR [rbp-24]	# tmp83, this
	mov	rsi, rcx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	coList2D_removeByItem	#
	mov	rax, QWORD PTR [rbp-16]	# D.3328, data
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	coList2D_removeByCurrent, .-coList2D_removeByCurrent
	.globl	coList2D_seekCurrentToData
	.type	coList2D_seekCurrentToData, @function
coList2D_seekCurrentToData:
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
	call	coList2D_isEmpty	#
	test	al, al	# D.3315
	je	.L48	#,
	mov	eax, 0	# D.3318,
	jmp	.L49	#
.L48:
	mov	rax, QWORD PTR [rbp-24]	# tmp64, this
	mov	rax, QWORD PTR [rax+24]	# tmp65, this_3(D)->first
	mov	QWORD PTR [rbp-8], rax	# temp, tmp65
	jmp	.L50	#
.L52:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, temp
	mov	rax, QWORD PTR [rax]	# D.3319, temp_1->data
	cmp	rax, QWORD PTR [rbp-32]	# D.3319, data
	jne	.L51	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp67, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp68, temp
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, tmp68
	mov	rax, QWORD PTR [rbp-32]	# D.3318, data
	jmp	.L49	#
.L51:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, temp
	mov	rax, QWORD PTR [rax+16]	# tmp70, temp_1->next
	mov	QWORD PTR [rbp-8], rax	# temp, tmp70
.L50:
	cmp	QWORD PTR [rbp-8], 0	# temp,
	jne	.L52	#,
	mov	eax, 0	# D.3318,
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	coList2D_seekCurrentToData, .-coList2D_seekCurrentToData
	.globl	coList2D_seekCurrentToIndex
	.type	coList2D_seekCurrentToIndex, @function
coList2D_seekCurrentToIndex:
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
	mov	rax, QWORD PTR [rax+40]	# D.3310, this_4(D)->count
	cmp	rax, QWORD PTR [rbp-32]	# D.3310, index
	ja	.L54	#,
	mov	eax, 0	# D.3313,
	jmp	.L55	#
.L54:
	mov	rax, QWORD PTR [rbp-24]	# tmp63, this
	mov	rax, QWORD PTR [rax+24]	# tmp64, this_4(D)->first
	mov	QWORD PTR [rbp-8], rax	# temp, tmp64
	mov	QWORD PTR [rbp-16], 0	# i,
	jmp	.L56	#
.L57:
	mov	rax, QWORD PTR [rbp-8]	# tmp65, temp
	mov	rax, QWORD PTR [rax+16]	# tmp66, temp_1->next
	mov	QWORD PTR [rbp-8], rax	# temp, tmp66
	add	QWORD PTR [rbp-16], 1	# i,
.L56:
	mov	rax, QWORD PTR [rbp-16]	# tmp67, i
	cmp	rax, QWORD PTR [rbp-32]	# tmp67, index
	jb	.L57	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp68, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp69, temp
	mov	QWORD PTR [rax+8], rdx	# this_4(D)->current, tmp69
	mov	rax, QWORD PTR [rbp-8]	# tmp70, temp
	mov	rax, QWORD PTR [rax]	# D.3313, temp_1->data
.L55:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	coList2D_seekCurrentToIndex, .-coList2D_seekCurrentToIndex
	.globl	coList2D_seekCurrentToFirst
	.type	coList2D_seekCurrentToFirst, @function
coList2D_seekCurrentToFirst:
.LFB15:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	rdx, QWORD PTR [rax+8]	# D.3297, this_3(D)->current
	mov	rax, QWORD PTR [rbp-8]	# tmp68, this
	mov	rax, QWORD PTR [rax+24]	# D.3298, this_3(D)->first
	cmp	rdx, rax	# D.3297, D.3298
	jne	.L59	#,
	mov	eax, 0	# D.3301,
	jmp	.L60	#
.L59:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	rdx, QWORD PTR [rax+24]	# D.3302, this_3(D)->first
	mov	rax, QWORD PTR [rbp-8]	# tmp70, this
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, D.3302
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	rax, QWORD PTR [rax+24]	# D.3304, this_3(D)->first
	test	rax, rax	# D.3304
	je	.L61	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# D.3307, this_3(D)->first
	mov	rax, QWORD PTR [rax]	# iftmp.2, D.3307_9->data
	jmp	.L62	#
.L61:
	mov	eax, 0	# iftmp.2,
.L62:
.L60:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	coList2D_seekCurrentToFirst, .-coList2D_seekCurrentToFirst
	.globl	coList2D_seekCurrentToLast
	.type	coList2D_seekCurrentToLast, @function
coList2D_seekCurrentToLast:
.LFB16:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	rdx, QWORD PTR [rax+8]	# D.3284, this_3(D)->current
	mov	rax, QWORD PTR [rbp-8]	# tmp68, this
	mov	rax, QWORD PTR [rax+32]	# D.3285, this_3(D)->last
	cmp	rdx, rax	# D.3284, D.3285
	jne	.L64	#,
	mov	eax, 0	# D.3288,
	jmp	.L65	#
.L64:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	rdx, QWORD PTR [rax+32]	# D.3289, this_3(D)->last
	mov	rax, QWORD PTR [rbp-8]	# tmp70, this
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, D.3289
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	rax, QWORD PTR [rax+32]	# D.3291, this_3(D)->last
	test	rax, rax	# D.3291
	je	.L66	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	rax, QWORD PTR [rax+32]	# D.3294, this_3(D)->last
	mov	rax, QWORD PTR [rax]	# iftmp.1, D.3294_9->data
	jmp	.L67	#
.L66:
	mov	eax, 0	# iftmp.1,
.L67:
.L65:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	coList2D_seekCurrentToLast, .-coList2D_seekCurrentToLast
	.globl	coList2D_seekCurrentToPrevious
	.type	coList2D_seekCurrentToPrevious, @function
coList2D_seekCurrentToPrevious:
.LFB17:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp70, this
	mov	rdi, rax	#, tmp70
	call	coList2D_isEmpty	#
	test	al, al	# D.3267
	jne	.L69	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	rdx, QWORD PTR [rax+8]	# D.3269, this_3(D)->current
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# D.3270, this_3(D)->first
	cmp	rdx, rax	# D.3269, D.3270
	jne	.L70	#,
.L69:
	mov	eax, 0	# D.3271,
	jmp	.L71	#
.L70:
	mov	rax, QWORD PTR [rbp-8]	# tmp73, this
	mov	rax, QWORD PTR [rax+8]	# D.3272, this_3(D)->current
	test	rax, rax	# D.3272
	je	.L72	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp74, this
	mov	rax, QWORD PTR [rax+8]	# D.3275, this_3(D)->current
	mov	rdx, QWORD PTR [rax+8]	# D.3276, D.3275_8->prev
	mov	rax, QWORD PTR [rbp-8]	# tmp75, this
	mov	QWORD PTR [rax+8], rdx	# this_3(D)->current, D.3276
.L72:
	mov	rax, QWORD PTR [rbp-8]	# tmp76, this
	mov	rax, QWORD PTR [rax+8]	# D.3278, this_3(D)->current
	test	rax, rax	# D.3278
	je	.L73	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp77, this
	mov	rax, QWORD PTR [rax+8]	# D.3281, this_3(D)->current
	mov	rax, QWORD PTR [rax]	# iftmp.0, D.3281_11->data
	jmp	.L74	#
.L73:
	mov	eax, 0	# iftmp.0,
.L74:
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	coList2D_seekCurrentToPrevious, .-coList2D_seekCurrentToPrevious
	.globl	coList2D_seekCurrentToNext
	.type	coList2D_seekCurrentToNext, @function
coList2D_seekCurrentToNext:
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
	call	coList2D_isEmpty	#
	test	al, al	# D.3256
	jne	.L76	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp68, this
	mov	rdx, QWORD PTR [rax+8]	# D.3258, this_2(D)->current
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	rax, QWORD PTR [rax+32]	# D.3259, this_2(D)->last
	cmp	rdx, rax	# D.3258, D.3259
	jne	.L77	#,
.L76:
	mov	eax, 0	# D.3260,
	jmp	.L78	#
.L77:
	mov	rax, QWORD PTR [rbp-8]	# tmp70, this
	mov	rax, QWORD PTR [rax+8]	# D.3261, this_2(D)->current
	mov	rdx, QWORD PTR [rax+16]	# D.3262, D.3261_6->next
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	QWORD PTR [rax+8], rdx	# this_2(D)->current, D.3262
	mov	rax, QWORD PTR [rbp-8]	# tmp72, this
	mov	rax, QWORD PTR [rax+8]	# D.3263, this_2(D)->current
	mov	rax, QWORD PTR [rax]	# D.3260, D.3263_8->data
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	coList2D_seekCurrentToNext, .-coList2D_seekCurrentToNext
	.globl	coList2D_replaceCurrent
	.type	coList2D_replaceCurrent, @function
coList2D_replaceCurrent:
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
	mov	rax, QWORD PTR [rax+8]	# D.3248, this_2(D)->current
	test	rax, rax	# D.3248
	je	.L80	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp65, this
	mov	rdi, rax	#, tmp65
	call	coList2D_isEmpty	#
	test	al, al	# D.3250
	je	.L81	#,
.L80:
	mov	eax, 0	# D.3251,
	jmp	.L82	#
.L81:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, this
	mov	rax, QWORD PTR [rax+8]	# D.3252, this_2(D)->current
	mov	rdx, QWORD PTR [rbp-16]	# tmp67, data
	mov	QWORD PTR [rax], rdx	# D.3252_5->data, tmp67
	mov	rax, QWORD PTR [rbp-16]	# D.3251, data
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	coList2D_replaceCurrent, .-coList2D_replaceCurrent
	.globl	coList2D_getCount
	.type	coList2D_getCount, @function
coList2D_getCount:
.LFB20:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	rax, QWORD PTR [rax+40]	# D.3244, this_1(D)->count
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	coList2D_getCount, .-coList2D_getCount
	.globl	coList2D_isEmpty
	.type	coList2D_isEmpty, @function
coList2D_isEmpty:
.LFB21:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp63, this
	mov	rax, QWORD PTR [rax+40]	# D.3241, this_1(D)->count
	test	rax, rax	# D.3241
	sete	al	#, D.3242
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	coList2D_isEmpty, .-coList2D_isEmpty
	.globl	coList2D_clear
	.type	coList2D_clear, @function
coList2D_clear:
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
	call	coList2D_isEmpty	#
	test	al, al	# D.3227
	jne	.L87	#,
	jmp	.L89	#
.L91:
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rax, QWORD PTR [rax+24]	# D.3230, this_1(D)->first
	mov	rax, QWORD PTR [rax+16]	# tmp70, D.3230_4->next
	mov	QWORD PTR [rbp-8], rax	# temp, tmp70
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	movzx	eax, BYTE PTR [rax+48]	# D.3231, this_1(D)->free_data_on_destroy
	test	al, al	# D.3231
	je	.L90	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# D.3234, this_1(D)->first
	mov	rax, QWORD PTR [rax]	# D.3235, D.3234_7->data
	mov	edx, 213	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3235
	call	coFree	#
.L90:
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+24]	# D.3236, this_1(D)->first
	mov	edx, 214	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3236
	call	coFree	#
	mov	rax, QWORD PTR [rbp-24]	# tmp74, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp75, temp
	mov	QWORD PTR [rax+24], rdx	# this_1(D)->first, tmp75
.L89:
	mov	rax, QWORD PTR [rbp-24]	# tmp76, this
	mov	rax, QWORD PTR [rax+24]	# D.3237, this_1(D)->first
	test	rax, rax	# D.3237
	jne	.L91	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp77, this
	mov	QWORD PTR [rax+32], 0	# this_1(D)->last,
	mov	rax, QWORD PTR [rbp-24]	# tmp78, this
	mov	rdx, QWORD PTR [rax+32]	# D.3238, this_1(D)->last
	mov	rax, QWORD PTR [rbp-24]	# tmp79, this
	mov	QWORD PTR [rax+8], rdx	# this_1(D)->current, D.3238
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	rdx, QWORD PTR [rax+8]	# D.3239, this_1(D)->current
	mov	rax, QWORD PTR [rbp-24]	# tmp81, this
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->enumer, D.3239
	mov	rax, QWORD PTR [rbp-24]	# tmp82, this
	mov	QWORD PTR [rax+40], 0	# this_1(D)->count,
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	coList2D_clear, .-coList2D_clear
	.globl	coList2D_enumerate
	.type	coList2D_enumerate, @function
coList2D_enumerate:
.LFB23:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp60, this
	mov	rdx, QWORD PTR [rax+24]	# D.3226, this_1(D)->first
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->enumer, D.3226
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	coList2D_enumerate, .-coList2D_enumerate
	.globl	coList2D_hasNext
	.type	coList2D_hasNext, @function
coList2D_hasNext:
.LFB24:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp63, this
	mov	rax, QWORD PTR [rax+16]	# D.3223, this_1(D)->enumer
	test	rax, rax	# D.3223
	setne	al	#, D.3224
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	coList2D_hasNext, .-coList2D_hasNext
	.globl	coList2D_next
	.type	coList2D_next, @function
coList2D_next:
.LFB25:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	rax, QWORD PTR [rbp-24]	# tmp64, this
	mov	rax, QWORD PTR [rax+16]	# D.3217, this_1(D)->enumer
	mov	rax, QWORD PTR [rax]	# tmp65, D.3217_2->data
	mov	QWORD PTR [rbp-8], rax	# data, tmp65
	mov	rax, QWORD PTR [rbp-24]	# tmp66, this
	mov	rax, QWORD PTR [rax+16]	# D.3218, this_1(D)->enumer
	mov	rdx, QWORD PTR [rax+16]	# D.3219, D.3218_4->next
	mov	rax, QWORD PTR [rbp-24]	# tmp67, this
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->enumer, D.3219
	mov	rax, QWORD PTR [rbp-8]	# D.3220, data
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	coList2D_next, .-coList2D_next
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
