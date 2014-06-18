	.file	"main.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I ../CObject_1/include main.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -masm=intel
# -auxbase-strip main.asm -O1 -Wall -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fdebug-types-section -fdefer-pop
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fforward-propagate -ffunction-cse
# -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
# -fif-conversion -fif-conversion2 -finline -finline-atomics
# -finline-functions-called-once -fipa-profile -fipa-pure-const
# -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
# -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
# -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
# -funwind-tables -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mcx16 -mfancy-math-387 -mfp-ret-in-387 -mglibc
# -mieee-fp -mmmx -mno-sse4 -mpush-args -mred-zone -msahf -msse -msse2
# -msse3 -mssse3 -mtls-direct-seg-refs

	.text
	.globl	Shape_vgetArea
	.type	Shape_vgetArea, @function
Shape_vgetArea:
.LFB65:
	.cfi_startproc
	mov	eax, 0	#,
	ret
	.cfi_endproc
.LFE65:
	.size	Shape_vgetArea, .-Shape_vgetArea
	.globl	Square_vgetArea
	.type	Square_vgetArea, @function
Square_vgetArea:
.LFB70:
	.cfi_startproc
	mov	eax, DWORD PTR [rdi+16]	# D.3759, MEM[(struct Square *)vthis_1(D)].side
	imul	esi, eax	# tmp66, D.3759
	imul	eax, esi	# tmp65, tmp66
	ret
	.cfi_endproc
.LFE70:
	.size	Square_vgetArea, .-Square_vgetArea
	.globl	Circle_vgetArea
	.type	Circle_vgetArea, @function
Circle_vgetArea:
.LFB75:
	.cfi_startproc
	cvtsi2sd	xmm0, DWORD PTR [rdi+16]	# D.3748, MEM[(struct Circle *)vthis_4(D)].radius
	cvtsi2sd	xmm1, esi	# tmp70, count_shape
	mulsd	xmm1, QWORD PTR .LC0[rip]	# tmp71,
	mulsd	xmm1, xmm0	# tmp73, D.3748
	mulsd	xmm0, xmm1	# tmp74, tmp73
	cvttsd2si	eax, xmm0	# tmp69, tmp74
	ret
	.cfi_endproc
.LFE75:
	.size	Circle_vgetArea, .-Circle_vgetArea
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%s(this: %s @ %p)\n"
	.text
	.globl	Shape_vdestroy
	.type	Shape_vdestroy, @function
Shape_vdestroy:
.LFB64:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	call	classname	#
	mov	r8, rbx	#, vthis
	mov	rcx, rax	#, D.3770
	mov	edx, OFFSET FLAT:__FUNCTION__.3531	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	DWORD PTR [rbx+8], 0	# MEM[(struct Shape *)vthis_1(D)].color,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.size	Shape_vdestroy, .-Shape_vdestroy
	.globl	Circle_vdestroy
	.type	Circle_vdestroy, @function
Circle_vdestroy:
.LFB74:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	call	classname	#
	mov	r8, rbx	#, vthis
	mov	rcx, rax	#, D.3752
	mov	edx, OFFSET FLAT:__FUNCTION__.3607	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rdi, rbx	#, vthis
	call	Shape_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE74:
	.size	Circle_vdestroy, .-Circle_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"%s(this: %s @ %p, color = 0x%08X)\n"
	.text
	.globl	Shape_newColor
	.type	Shape_newColor, @function
Shape_newColor:
.LFB60:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# color, color
	mov	QWORD PTR [rdi], OFFSET FLAT:Shape_type	# MEM[(struct coObject *)this_1(D)].class,
	call	classname	#
	mov	r9d, ebp	#, color
	mov	r8, rbx	#, this
	mov	rcx, rax	#, D.3776
	mov	edx, OFFSET FLAT:__FUNCTION__.3516	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	DWORD PTR [rbx+8], ebp	# this_1(D)->color, color
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	Shape_newColor, .-Shape_newColor
	.globl	Shape_new
	.type	Shape_new, @function
Shape_new:
.LFB61:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	QWORD PTR [rdi], OFFSET FLAT:Shape_type	# MEM[(struct coObject *)this_1(D)].class,
	call	classname	#
	mov	r8, rbx	#, this
	mov	rcx, rax	#, D.3773
	mov	edx, OFFSET FLAT:__FUNCTION__.3520	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	DWORD PTR [rbx+8], 0	# this_1(D)->color,
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	Shape_new, .-Shape_new
	.globl	Shape_setColor
	.type	Shape_setColor, @function
Shape_setColor:
.LFB62:
	.cfi_startproc
	mov	DWORD PTR [rdi+8], esi	# this_1(D)->color, color
	ret
	.cfi_endproc
.LFE62:
	.size	Shape_setColor, .-Shape_setColor
	.globl	Shape_getColor
	.type	Shape_getColor, @function
Shape_getColor:
.LFB63:
	.cfi_startproc
	mov	eax, DWORD PTR [rdi+8]	# this_1(D)->color, this_1(D)->color
	ret
	.cfi_endproc
.LFE63:
	.size	Shape_getColor, .-Shape_getColor
	.section	.rodata.str1.1
.LC3:
	.string	"%s(this: %s @ %p, side: %d)\n"
	.text
	.globl	Square_new
	.type	Square_new, @function
Square_new:
.LFB66:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# side, side
	call	Shape_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:Square_type	# MEM[(struct coObject *)this_1(D)].class,
	mov	rdi, rbx	#, this
	call	classname	#
	mov	r9d, ebp	#, side
	mov	r8, rbx	#, this
	mov	rcx, rax	#, D.3765
	mov	edx, OFFSET FLAT:__FUNCTION__.3558	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	DWORD PTR [rbx+16], ebp	# this_1(D)->side, side
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:
	.size	Square_new, .-Square_new
	.globl	Square_setSide
	.type	Square_setSide, @function
Square_setSide:
.LFB67:
	.cfi_startproc
	mov	DWORD PTR [rdi+16], esi	# this_1(D)->side, side
	ret
	.cfi_endproc
.LFE67:
	.size	Square_setSide, .-Square_setSide
	.globl	Square_getSide
	.type	Square_getSide, @function
Square_getSide:
.LFB68:
	.cfi_startproc
	mov	eax, DWORD PTR [rdi+16]	# this_1(D)->side, this_1(D)->side
	ret
	.cfi_endproc
.LFE68:
	.size	Square_getSide, .-Square_getSide
	.globl	Square_vdestroy
	.type	Square_vdestroy, @function
Square_vdestroy:
.LFB69:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	call	classname	#
	mov	r8, rbx	#, vthis
	mov	rcx, rax	#, D.3762
	mov	edx, OFFSET FLAT:__FUNCTION__.3569	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rdi, rbx	#, vthis
	call	Shape_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	Square_vdestroy, .-Square_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"%s(this: %s @ %p, radius: %d)\n"
	.text
	.globl	Circle_new
	.type	Circle_new, @function
Circle_new:
.LFB71:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# radius, radius
	call	Shape_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:Circle_type	# MEM[(struct coObject *)this_1(D)].class,
	mov	rdi, rbx	#, this
	call	classname	#
	mov	r9d, ebp	#, radius
	mov	r8, rbx	#, this
	mov	rcx, rax	#, D.3755
	mov	edx, OFFSET FLAT:__FUNCTION__.3596	#,
	mov	esi, OFFSET FLAT:.LC4	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	DWORD PTR [rbx+16], ebp	# this_1(D)->radius, radius
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	Circle_new, .-Circle_new
	.globl	Circle_setRadius
	.type	Circle_setRadius, @function
Circle_setRadius:
.LFB72:
	.cfi_startproc
	mov	DWORD PTR [rdi+16], esi	# this_1(D)->radius, radius
	ret
	.cfi_endproc
.LFE72:
	.size	Circle_setRadius, .-Circle_setRadius
	.globl	Circle_getRadius
	.type	Circle_getRadius, @function
Circle_getRadius:
.LFB73:
	.cfi_startproc
	mov	eax, DWORD PTR [rdi+16]	# this_1(D)->radius, this_1(D)->radius
	ret
	.cfi_endproc
.LFE73:
	.size	Circle_getRadius, .-Circle_getRadius
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	">>>>>>> static_objects_example:"
	.align 8
.LC6:
	.string	"\tCreated %8s @ %p [ .color = 0x%08X, .radius = %d ]\n"
	.align 8
.LC7:
	.string	"\tCreated %8s @ %p [ .color = 0x%08X, .a = %d ]\n"
	.align 8
.LC8:
	.string	"\tCreated %8s @ %p [ .color = 0x%08X ]\n"
	.align 8
.LC9:
	.string	"\tshp1: %8s @ %p\n\tshp1.getArea(1) = %d\n\tshp1.getArea(2) = %d\n"
	.align 8
.LC10:
	.string	"\tshp2: %8s @ %p\n\tshp2.getArea(1) = %d\n\tshp2.getArea(3) = %d\n"
	.align 8
.LC11:
	.string	"\tshp3: %8s @ %p\n\tshp3.getArea(1) = %d\n\tshp3.getArea(4) = %d\n"
	.text
	.globl	static_objects_example
	.type	static_objects_example, @function
static_objects_example:
.LFB76:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 112
	mov	edi, OFFSET FLAT:.LC5	#,
	call	puts	#
	mov	esi, 1193046	#,
	mov	rdi, rsp	#,
	call	Shape_newColor	#
	mov	esi, 5	#,
	lea	rdi, [rsp+48]	#,
	call	Circle_new	#
	mov	esi, 4	#,
	lea	rdi, [rsp+16]	#,
	call	Square_new	#
	mov	esi, 11250603	#,
	lea	rdi, [rsp+48]	#,
	call	Shape_setColor	#
	mov	DWORD PTR [rsp+24], 15724527	# MEM[(struct Shape *)&square].color,
	mov	ebp, DWORD PTR [rsp+64]	# D.3712, circle.radius
	lea	rdi, [rsp+48]	#,
	call	Shape_getColor	#
	mov	ebx, eax	# D.3713,
	lea	rdi, [rsp+48]	#,
	call	classname	#
	mov	r9d, ebp	#, D.3712
	mov	r8d, ebx	#, D.3713
	lea	rcx, [rsp+48]	#,
	mov	rdx, rax	#, D.3714
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	ebp, DWORD PTR [rsp+32]	# D.3715, square.side
	lea	rdi, [rsp+16]	#,
	call	Shape_getColor	#
	mov	ebx, eax	# D.3716,
	lea	rdi, [rsp+16]	#,
	call	classname	#
	mov	r9d, ebp	#, D.3715
	mov	r8d, ebx	#, D.3716
	lea	rcx, [rsp+16]	#,
	mov	rdx, rax	#, D.3717
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rdi, rsp	#,
	call	Shape_getColor	#
	mov	ebx, eax	# D.3718,
	mov	rdi, rsp	#,
	call	classname	#
	mov	r8d, ebx	#, D.3718
	mov	rcx, rsp	#,
	mov	rdx, rax	#, D.3719
	mov	esi, OFFSET FLAT:.LC8	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rax, QWORD PTR [rsp+48]	# MEM[(struct coObject *)&circle].class, MEM[(struct coObject *)&circle].class
	mov	rax, QWORD PTR [rax]	# D.3720_13->vtable, D.3720_13->vtable
	mov	esi, 2	#,
	lea	rdi, [rsp+48]	#,
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3721_14 + 8B]
	mov	ebp, eax	# D.3725,
	mov	rax, QWORD PTR [rsp+48]	# MEM[(struct coObject *)&circle].class, MEM[(struct coObject *)&circle].class
	mov	rax, QWORD PTR [rax]	# D.3720_19->vtable, D.3720_19->vtable
	mov	esi, 1	#,
	lea	rdi, [rsp+48]	#,
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3721_20 + 8B]
	mov	ebx, eax	# D.3726,
	lea	rdi, [rsp+48]	#,
	call	classname	#
	mov	r9d, ebp	#, D.3725
	mov	r8d, ebx	#, D.3726
	lea	rcx, [rsp+48]	#,
	mov	rdx, rax	#, D.3727
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rax, QWORD PTR [rsp+16]	# MEM[(struct coObject *)&square].class, MEM[(struct coObject *)&square].class
	mov	rax, QWORD PTR [rax]	# D.3728_26->vtable, D.3728_26->vtable
	mov	esi, 3	#,
	lea	rdi, [rsp+16]	#,
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3729_27 + 8B]
	mov	ebp, eax	# D.3733,
	mov	rax, QWORD PTR [rsp+16]	# MEM[(struct coObject *)&square].class, MEM[(struct coObject *)&square].class
	mov	rax, QWORD PTR [rax]	# D.3728_32->vtable, D.3728_32->vtable
	mov	esi, 1	#,
	lea	rdi, [rsp+16]	#,
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3729_33 + 8B]
	mov	ebx, eax	# D.3734,
	lea	rdi, [rsp+16]	#,
	call	classname	#
	mov	r9d, ebp	#, D.3733
	mov	r8d, ebx	#, D.3734
	lea	rcx, [rsp+16]	#,
	mov	rdx, rax	#, D.3735
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rax, QWORD PTR [rsp]	# MEM[(struct coObject *)&shape].class, MEM[(struct coObject *)&shape].class
	mov	rax, QWORD PTR [rax]	# D.3736_39->vtable, D.3736_39->vtable
	mov	esi, 4	#,
	mov	rdi, rsp	#,
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3737_40 + 8B]
	mov	ebp, eax	# D.3741,
	mov	rax, QWORD PTR [rsp]	# MEM[(struct coObject *)&shape].class, MEM[(struct coObject *)&shape].class
	mov	rax, QWORD PTR [rax]	# D.3736_45->vtable, D.3736_45->vtable
	mov	esi, 1	#,
	mov	rdi, rsp	#,
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3737_46 + 8B]
	mov	ebx, eax	# D.3742,
	mov	rdi, rsp	#,
	call	classname	#
	mov	r9d, ebp	#, D.3741
	mov	r8d, ebx	#, D.3742
	mov	rcx, rsp	#,
	mov	rdx, rax	#, D.3743
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	lea	rdi, [rsp+48]	#,
	call	delete	#
	lea	rdi, [rsp+16]	#,
	call	delete	#
	mov	rdi, rsp	#,
	call	delete	#
	add	rsp, 88	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.size	static_objects_example, .-static_objects_example
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	">>>>>>> dynamic_objects_example:"
	.align 8
.LC13:
	.string	"\tCreated %8s @ %p [ .color = 0x%08X ]\n\n"
	.text
	.globl	dynamic_objects_example
	.type	dynamic_objects_example, @function
dynamic_objects_example:
.LFB77:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	edi, OFFSET FLAT:.LC12	#,
	call	puts	#
	mov	rax, QWORD PTR Circle_class[rip]	# Circle_class, Circle_class
	mov	rdi, QWORD PTR [rax+8]	# Circle_class.0_1->size, Circle_class.0_1->size
	call	malloc	#
	mov	esi, 5	#,
	mov	rdi, rax	#, tmp117
	call	Circle_new	#
	mov	rbp, rax	# circle,
	mov	rax, QWORD PTR Square_class[rip]	# Square_class, Square_class
	mov	rdi, QWORD PTR [rax+8]	# Square_class.1_5->size, Square_class.1_5->size
	call	malloc	#
	mov	esi, 4	#,
	mov	rdi, rax	#, tmp120
	call	Square_new	#
	mov	rbx, rax	# square,
	mov	rax, QWORD PTR Shape_class[rip]	# Shape_class, Shape_class
	mov	rdi, QWORD PTR [rax+8]	# Shape_class.2_9->size, Shape_class.2_9->size
	call	malloc	#
	mov	esi, 1193046	#,
	mov	rdi, rax	#, tmp123
	call	Shape_newColor	#
	mov	r12, rax	# shape,
	mov	esi, 11250603	#,
	mov	rdi, rbp	#, circle
	call	Shape_setColor	#
	mov	DWORD PTR [rbx+8], 15724527	# MEM[(struct Shape *)square_8].color,
	mov	r14d, DWORD PTR [rbp+16]	# D.3676, circle_4->radius
	mov	rdi, rbp	#, circle
	call	Shape_getColor	#
	mov	r13d, eax	# D.3677,
	mov	rdi, rbp	#, circle
	call	classname	#
	mov	r9d, r14d	#, D.3676
	mov	r8d, r13d	#, D.3677
	mov	rcx, rbp	#, circle
	mov	rdx, rax	#, D.3678
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	r14d, DWORD PTR [rbx+16]	# D.3679, square_8->side
	mov	rdi, rbx	#, square
	call	Shape_getColor	#
	mov	r13d, eax	# D.3680,
	mov	rdi, rbx	#, square
	call	classname	#
	mov	r9d, r14d	#, D.3679
	mov	r8d, r13d	#, D.3680
	mov	rcx, rbx	#, square
	mov	rdx, rax	#, D.3681
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rdi, r12	#, shape
	call	Shape_getColor	#
	mov	r13d, eax	# D.3682,
	mov	rdi, r12	#, shape
	call	classname	#
	mov	r8d, r13d	#, D.3682
	mov	rcx, r12	#, shape
	mov	rdx, rax	#, D.3683
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)circle_4].class, MEM[(struct coObject *)circle_4].class
	mov	rax, QWORD PTR [rax]	# D.3684_24->vtable, D.3684_24->vtable
	mov	esi, 2	#,
	mov	rdi, rbp	#, circle
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3685_25 + 8B]
	mov	r14d, eax	# D.3689,
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)circle_4].class, MEM[(struct coObject *)circle_4].class
	mov	rax, QWORD PTR [rax]	# D.3684_30->vtable, D.3684_30->vtable
	mov	esi, 1	#,
	mov	rdi, rbp	#, circle
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3685_31 + 8B]
	mov	r13d, eax	# D.3690,
	mov	rdi, rbp	#, circle
	call	classname	#
	mov	r9d, r14d	#, D.3689
	mov	r8d, r13d	#, D.3690
	mov	rcx, rbp	#, circle
	mov	rdx, rax	#, D.3691
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)square_8].class, MEM[(struct coObject *)square_8].class
	mov	rax, QWORD PTR [rax]	# D.3692_37->vtable, D.3692_37->vtable
	mov	esi, 3	#,
	mov	rdi, rbx	#, square
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3693_38 + 8B]
	mov	r14d, eax	# D.3697,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)square_8].class, MEM[(struct coObject *)square_8].class
	mov	rax, QWORD PTR [rax]	# D.3692_43->vtable, D.3692_43->vtable
	mov	esi, 1	#,
	mov	rdi, rbx	#, square
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3693_44 + 8B]
	mov	r13d, eax	# D.3698,
	mov	rdi, rbx	#, square
	call	classname	#
	mov	r9d, r14d	#, D.3697
	mov	r8d, r13d	#, D.3698
	mov	rcx, rbx	#, square
	mov	rdx, rax	#, D.3699
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)shape_12].class, MEM[(struct coObject *)shape_12].class
	mov	rax, QWORD PTR [rax]	# D.3700_50->vtable, D.3700_50->vtable
	mov	esi, 4	#,
	mov	rdi, r12	#, shape
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3701_51 + 8B]
	mov	r14d, eax	# D.3705,
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)shape_12].class, MEM[(struct coObject *)shape_12].class
	mov	rax, QWORD PTR [rax]	# D.3700_56->vtable, D.3700_56->vtable
	mov	esi, 1	#,
	mov	rdi, r12	#, shape
	call	[QWORD PTR [rax+8]]	# MEM[(const void * *)D.3701_57 + 8B]
	mov	r13d, eax	# D.3706,
	mov	rdi, r12	#, shape
	call	classname	#
	mov	r9d, r14d	#, D.3705
	mov	r8d, r13d	#, D.3706
	mov	rcx, r12	#, shape
	mov	rdx, rax	#, D.3707
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	rdi, rbp	#, circle
	call	delete	#
	mov	rdi, rax	#, D.3708
	call	free	#
	mov	rdi, rbx	#, square
	call	delete	#
	mov	rdi, rax	#, D.3709
	call	free	#
	mov	rdi, r12	#, shape
	call	delete	#
	mov	rdi, rax	#, D.3710
	call	free	#
	pop	rbx	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE77:
	.size	dynamic_objects_example, .-dynamic_objects_example
	.section	.rodata.str1.1
.LC14:
	.string	"\nNULL test"
.LC15:
	.string	"\tdelete(NULL): %p\n"
.LC16:
	.string	"\tclassof(NULL): %p\n"
.LC17:
	.string	"\tvtableof(NULL): %p\n"
.LC18:
	.string	"\tvptrof(NULL, 0): %p\n"
.LC19:
	.string	"\tclassname(NULL): %s\n"
.LC20:
	.string	"\n test coError"
.LC21:
	.string	"CO_ERR_NO_ERROR: %d [%s]\n"
.LC22:
	.string	"CO_ERR_INTRO_FAILED: %d [%s]\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"CO_ERR_INDEX_OUT_OF_RANGE: %d [%s]\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB78:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, 0	#,
	call	static_objects_example	#
	mov	eax, 0	#,
	call	dynamic_objects_example	#
	mov	edi, OFFSET FLAT:.LC14	#,
	call	puts	#
	mov	edi, 0	#,
	call	delete	#
	mov	rdx, rax	#, D.3655
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	edi, 0	#,
	call	classof	#
	mov	rdx, rax	#, D.3656
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	edi, 0	#,
	call	vtableof	#
	mov	rdx, rax	#, D.3657
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	esi, 0	#,
	mov	edi, 0	#,
	call	vptrof	#
	mov	rdx, rax	#, D.3658
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	edi, 0	#,
	call	classname	#
	mov	rdx, rax	#, D.3659
	mov	esi, OFFSET FLAT:.LC19	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	edi, OFFSET FLAT:.LC20	#,
	call	puts	#
	mov	edi, 0	#,
	call	coGetStringError	#
	mov	rcx, rax	#, D.3660
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC21	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	edi, 1	#,
	call	coGetStringError	#
	mov	rcx, rax	#, D.3661
	mov	edx, 1	#,
	mov	esi, OFFSET FLAT:.LC22	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	edi, 23	#,
	call	coGetStringError	#
	mov	rcx, rax	#, D.3662
	mov	edx, 23	#,
	mov	esi, OFFSET FLAT:.LC23	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	eax, 0	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	main, .-main
	.globl	Circle_class
	.data
	.align 8
	.type	Circle_class, @object
	.size	Circle_class, 8
Circle_class:
	.quad	Circle_type
	.globl	Square_class
	.align 8
	.type	Square_class, @object
	.size	Square_class, 8
Square_class:
	.quad	Square_type
	.globl	Shape_class
	.align 8
	.type	Shape_class, @object
	.size	Shape_class, 8
Shape_class:
	.quad	Shape_type
	.section	.rodata.str1.1
.LC24:
	.string	"Shape"
	.data
	.align 16
	.type	Shape_type, @object
	.size	Shape_type, 24
Shape_type:
# vtable:
	.quad	Shape_vtable
# size:
	.quad	16
# name:
	.quad	.LC24
	.section	.rodata
	.type	__FUNCTION__.3516, @object
	.size	__FUNCTION__.3516, 15
__FUNCTION__.3516:
	.string	"Shape_newColor"
	.type	__FUNCTION__.3520, @object
	.size	__FUNCTION__.3520, 10
__FUNCTION__.3520:
	.string	"Shape_new"
	.section	.rodata.str1.1
.LC25:
	.string	"Square"
	.data
	.align 16
	.type	Square_type, @object
	.size	Square_type, 24
Square_type:
# vtable:
	.quad	Square_vtable
# size:
	.quad	24
# name:
	.quad	.LC25
	.section	.rodata
	.type	__FUNCTION__.3531, @object
	.size	__FUNCTION__.3531, 15
__FUNCTION__.3531:
	.string	"Shape_vdestroy"
	.type	__FUNCTION__.3558, @object
	.size	__FUNCTION__.3558, 11
__FUNCTION__.3558:
	.string	"Square_new"
	.section	.rodata.str1.1
.LC26:
	.string	"Circle"
	.data
	.align 16
	.type	Circle_type, @object
	.size	Circle_type, 24
Circle_type:
# vtable:
	.quad	Circle_vtable
# size:
	.quad	24
# name:
	.quad	.LC26
	.section	.rodata
	.align 16
	.type	__FUNCTION__.3569, @object
	.size	__FUNCTION__.3569, 16
__FUNCTION__.3569:
	.string	"Square_vdestroy"
	.type	__FUNCTION__.3596, @object
	.size	__FUNCTION__.3596, 11
__FUNCTION__.3596:
	.string	"Circle_new"
	.align 16
	.type	__FUNCTION__.3607, @object
	.size	__FUNCTION__.3607, 16
__FUNCTION__.3607:
	.string	"Circle_vdestroy"
	.data
	.align 16
	.type	Shape_vtable, @object
	.size	Shape_vtable, 16
Shape_vtable:
	.quad	Shape_vdestroy
	.quad	Shape_vgetArea
	.align 16
	.type	Square_vtable, @object
	.size	Square_vtable, 16
Square_vtable:
	.quad	Shape_vdestroy
	.quad	Square_vgetArea
	.align 16
	.type	Circle_vtable, @object
	.size	Circle_vtable, 16
Circle_vtable:
	.quad	Circle_vdestroy
	.quad	Circle_vgetArea
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1413754136
	.long	1074340347
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
