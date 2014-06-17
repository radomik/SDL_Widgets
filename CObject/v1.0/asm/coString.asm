	.file	"coString.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coString.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coString.asm
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
	.quad	coString_vdestroy
	.section	.rodata
.LC0:
	.string	"coString"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	32
# name:
	.quad	.LC0
	.globl	coString_class
	.align 8
	.type	coString_class, @object
	.size	coString_class, 8
coString_class:
	.quad	type
	.globl	CO_STRING_NPOS
	.section	.rodata
	.align 8
	.type	CO_STRING_NPOS, @object
	.size	CO_STRING_NPOS, 8
CO_STRING_NPOS:
	.quad	-1
	.text
	.type	coString_initDefault, @function
coString_initDefault:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp60, this
	mov	QWORD PTR [rax+8], 0	# this_1(D)->buffer,
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax+24], 0	# this_1(D)->len,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	rdx, QWORD PTR [rax+24]	# D.3354, this_1(D)->len
	mov	rax, QWORD PTR [rbp-8]	# tmp63, this
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->size, D.3354
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coString_initDefault, .-coString_initDefault
	.section	.rodata
.LC1:
	.string	"coString.c"
	.text
	.type	coString_initLen, @function
coString_initLen:
.LFB3:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# len, len
	cmp	QWORD PTR [rbp-32], 0	# len,
	je	.L2	#,
	mov	rax, QWORD PTR [rbp-32]	# tmp65, len
	add	rax, 1	# tmp64,
	mov	QWORD PTR [rbp-8], rax	# new_size, tmp64
	mov	rax, QWORD PTR [rbp-24]	# tmp66, this
	mov	rax, QWORD PTR [rax+16]	# D.3393, this_3(D)->size
	cmp	rax, QWORD PTR [rbp-8]	# D.3393, new_size
	jae	.L4	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp67, this
	mov	rax, QWORD PTR [rax+8]	# D.3396, this_3(D)->buffer
	mov	rsi, QWORD PTR [rbp-8]	# tmp68, new_size
	mov	ecx, 30	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3396
	call	coRealloc	#
	mov	rdx, QWORD PTR [rbp-24]	# tmp69, this
	mov	QWORD PTR [rdx+8], rax	# this_3(D)->buffer, D.3397
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp71, new_size
	mov	QWORD PTR [rax+16], rdx	# this_3(D)->size, tmp71
.L4:
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+8]	# D.3398, this_3(D)->buffer
	test	rax, rax	# D.3398
	je	.L5	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+8]	# D.3401, this_3(D)->buffer
	mov	BYTE PTR [rax], 0	# *D.3401_8,
.L5:
	mov	rax, QWORD PTR [rbp-24]	# tmp74, this
	mov	QWORD PTR [rax+24], 0	# this_3(D)->len,
.L2:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coString_initLen, .-coString_initLen
	.type	coString_initCopy, @function
coString_initCopy:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# src, src
	mov	rax, QWORD PTR [rbp-16]	# tmp68, src
	mov	rdx, QWORD PTR [rax+16]	# D.3355, src_1(D)->size
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	QWORD PTR [rax+16], rdx	# this_3(D)->size, D.3355
	mov	rax, QWORD PTR [rbp-16]	# tmp70, src
	mov	rdx, QWORD PTR [rax+24]	# D.3356, src_1(D)->len
	mov	rax, QWORD PTR [rbp-8]	# tmp71, this
	mov	QWORD PTR [rax+24], rdx	# this_3(D)->len, D.3356
	mov	rax, QWORD PTR [rbp-16]	# tmp72, src
	mov	rax, QWORD PTR [rax+8]	# D.3357, src_1(D)->buffer
	test	rax, rax	# D.3357
	je	.L6	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp73, this
	mov	rax, QWORD PTR [rax+16]	# D.3360, this_3(D)->size
	mov	edx, 46	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3360
	call	coMalloc	#
	mov	rdx, QWORD PTR [rbp-8]	# tmp74, this
	mov	QWORD PTR [rdx+8], rax	# this_3(D)->buffer, D.3361
	mov	rax, QWORD PTR [rbp-8]	# tmp75, this
	mov	rax, QWORD PTR [rax+8]	# D.3362, this_3(D)->buffer
	test	rax, rax	# D.3362
	je	.L6	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp76, this
	mov	rdx, QWORD PTR [rax+16]	# D.3365, this_3(D)->size
	mov	rax, QWORD PTR [rbp-16]	# tmp77, src
	mov	rcx, QWORD PTR [rax+8]	# D.3366, src_1(D)->buffer
	mov	rax, QWORD PTR [rbp-8]	# tmp78, this
	mov	rax, QWORD PTR [rax+8]	# D.3367, this_3(D)->buffer
	mov	rsi, rcx	#, D.3366
	mov	rdi, rax	#, D.3367
	call	strncpy	#
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coString_initCopy, .-coString_initCopy
	.section	.rodata
	.align 8
.LC2:
	.string	"coString_setTextLen[this=%p]: Failed to allocate new buffer of size %lu for text %s.\n"
	.text
	.type	coString_setTextLen, @function
coString_setTextLen:
.LFB5:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# text, text
	mov	QWORD PTR [rbp-40], rdx	# text_len, text_len
	mov	rax, QWORD PTR [rbp-24]	# tmp65, this
	mov	rax, QWORD PTR [rax+16]	# D.3376, this_1(D)->size
	cmp	rax, QWORD PTR [rbp-40]	# D.3376, text_len
	ja	.L9	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp66, text_len
	mov	QWORD PTR [rbp-8], rax	# new_len, tmp66
	add	QWORD PTR [rbp-40], 1	# text_len,
	mov	rax, QWORD PTR [rbp-40]	# tmp67, text_len
	mov	edx, 55	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, tmp67
	call	coMalloc	#
	mov	QWORD PTR [rbp-16], rax	# new_buf, tmp68
	cmp	QWORD PTR [rbp-16], 0	# new_buf,
	je	.L10	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rax, QWORD PTR [rax+8]	# D.3381, this_1(D)->buffer
	test	rax, rax	# D.3381
	je	.L11	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rax, QWORD PTR [rax+8]	# D.3384, this_1(D)->buffer
	mov	edx, 58	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3384
	call	coFree	#
.L11:
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp72, new_buf
	mov	QWORD PTR [rax+8], rdx	# this_1(D)->buffer, tmp72
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rdx, QWORD PTR [rbp-40]	# tmp74, text_len
	mov	QWORD PTR [rax+16], rdx	# this_1(D)->size, tmp74
	mov	rax, QWORD PTR [rbp-24]	# tmp75, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp76, new_len
	mov	QWORD PTR [rax+24], rdx	# this_1(D)->len, tmp76
	jmp	.L12	#
.L10:
	mov	rax, QWORD PTR stderr[rip]	# stderr.4, stderr
	mov	rsi, QWORD PTR [rbp-32]	# tmp77, text
	mov	rcx, QWORD PTR [rbp-40]	# tmp78, text_len
	mov	rdx, QWORD PTR [rbp-24]	# tmp79, this
	mov	r8, rsi	#, tmp77
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, stderr.4
	mov	eax, 0	#,
	call	fprintf	#
	jmp	.L8	#
.L9:
	mov	rax, QWORD PTR [rbp-24]	# tmp80, this
	mov	rdx, QWORD PTR [rbp-40]	# tmp81, text_len
	mov	QWORD PTR [rax+24], rdx	# this_1(D)->len, tmp81
.L12:
	mov	rax, QWORD PTR [rbp-24]	# tmp82, this
	mov	rdx, QWORD PTR [rax+16]	# D.3388, this_1(D)->size
	mov	rax, QWORD PTR [rbp-24]	# tmp83, this
	mov	rax, QWORD PTR [rax+8]	# D.3389, this_1(D)->buffer
	mov	rcx, QWORD PTR [rbp-32]	# tmp84, text
	mov	rsi, rcx	#, tmp84
	mov	rdi, rax	#, D.3389
	call	strncpy	#
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coString_setTextLen, .-coString_setTextLen
	.globl	coString_new
	.type	coString_new, @function
coString_new:
.LFB6:
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
	call	coString_initDefault	#
	mov	rax, QWORD PTR [rbp-8]	# D.3374, this
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	coString_new, .-coString_new
	.globl	coString_newText
	.type	coString_newText, @function
coString_newText:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# text, text
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	rdi, rax	#, tmp62
	call	coString_initDefault	#
	cmp	QWORD PTR [rbp-16], 0	# text,
	je	.L17	#,
	mov	rdx, QWORD PTR [rbp-16]	# tmp63, text
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	rsi, rdx	#, tmp63
	mov	rdi, rax	#, tmp64
	call	coString_setText	#
.L17:
	mov	rax, QWORD PTR [rbp-8]	# D.3372, this
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	coString_newText, .-coString_newText
	.globl	coString_newLen
	.type	coString_newLen, @function
coString_newLen:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# len, len
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	rdi, rax	#, tmp62
	call	coString_initDefault	#
	mov	rdx, QWORD PTR [rbp-16]	# tmp63, len
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	rsi, rdx	#, tmp63
	mov	rdi, rax	#, tmp64
	call	coString_initLen	#
	mov	rax, QWORD PTR [rbp-8]	# D.3368, this
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	coString_newLen, .-coString_newLen
	.globl	coString_copy
	.type	coString_copy, @function
coString_copy:
.LFB9:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# src, src
	mov	rax, QWORD PTR [rbp-8]	# tmp61, this
	mov	QWORD PTR [rax], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	rdi, rax	#, tmp62
	call	coString_initDefault	#
	mov	rdx, QWORD PTR [rbp-16]	# tmp63, src
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	rsi, rdx	#, tmp63
	mov	rdi, rax	#, tmp64
	call	coString_initCopy	#
	mov	rax, QWORD PTR [rbp-8]	# D.3352, this
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	coString_copy, .-coString_copy
	.globl	coString_vdestroy
	.type	coString_vdestroy, @function
coString_vdestroy:
.LFB10:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	rax, QWORD PTR [rax+8]	# D.3347, MEM[(struct coString *)this_1(D)].buffer
	test	rax, rax	# D.3347
	je	.L23	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp63, this
	mov	rax, QWORD PTR [rax+8]	# D.3350, MEM[(struct coString *)this_1(D)].buffer
	mov	edx, 128	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3350
	call	coFree	#
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	QWORD PTR [rax+8], 0	# MEM[(struct coString *)this_1(D)].buffer,
	mov	rax, QWORD PTR [rbp-8]	# tmp65, this
	mov	QWORD PTR [rax+24], 0	# MEM[(struct coString *)this_1(D)].len,
	mov	rax, QWORD PTR [rbp-8]	# tmp66, this
	mov	rdx, QWORD PTR [rax+24]	# D.3351, MEM[(struct coString *)this_1(D)].len
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	QWORD PTR [rax+16], rdx	# MEM[(struct coString *)this_1(D)].size, D.3351
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	coString_vdestroy, .-coString_vdestroy
	.section	.rodata
.LC3:
	.string	""
.LC4:
	.string	"(null string)"
	.text
	.globl	coString_getText
	.type	coString_getText, @function
coString_getText:
.LFB11:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	cmp	QWORD PTR [rbp-8], 0	# this,
	je	.L26	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	rax, QWORD PTR [rax+8]	# D.3341, this_3(D)->buffer
	test	rax, rax	# D.3341
	je	.L27	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp65, this
	mov	rax, QWORD PTR [rax+8]	# iftmp.3, this_3(D)->buffer
	jmp	.L28	#
.L27:
	mov	eax, OFFSET FLAT:.LC3	# iftmp.3,
.L28:
	jmp	.L29	#
.L26:
	mov	eax, OFFSET FLAT:.LC4	# iftmp.2,
.L29:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	coString_getText, .-coString_getText
	.globl	coString_getLen
	.type	coString_getLen, @function
coString_getLen:
.LFB12:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	cmp	QWORD PTR [rbp-8], 0	# this,
	je	.L32	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, this
	mov	rax, QWORD PTR [rax+24]	# iftmp.1, this_2(D)->len
	jmp	.L33	#
.L32:
	mov	eax, 0	# iftmp.1,
.L33:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	coString_getLen, .-coString_getLen
	.globl	coString_setText
	.type	coString_setText, @function
coString_setText:
.LFB13:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# text, text
	cmp	QWORD PTR [rbp-32], 0	# text,
	je	.L35	#,
	mov	rax, QWORD PTR [rbp-32]	# tmp59, text
	mov	rdi, rax	#, tmp59
	call	strlen	#
	mov	QWORD PTR [rbp-8], rax	# text_len, tmp60
	mov	rdx, QWORD PTR [rbp-8]	# tmp61, text_len
	mov	rcx, QWORD PTR [rbp-32]	# tmp62, text
	mov	rax, QWORD PTR [rbp-24]	# tmp63, this
	mov	rsi, rcx	#, tmp62
	mov	rdi, rax	#, tmp63
	call	coString_setTextLen	#
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	coString_setText, .-coString_setText
	.globl	coString_setString
	.type	coString_setString, @function
coString_setString:
.LFB14:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# src, src
	cmp	QWORD PTR [rbp-16], 0	# src,
	je	.L37	#,
	mov	rax, QWORD PTR [rbp-16]	# tmp62, src
	mov	rax, QWORD PTR [rax+8]	# D.3322, src_1(D)->buffer
	test	rax, rax	# D.3322
	je	.L39	#,
	mov	rax, QWORD PTR [rbp-16]	# tmp63, src
	mov	rdx, QWORD PTR [rax+24]	# D.3325, src_1(D)->len
	mov	rax, QWORD PTR [rbp-16]	# tmp64, src
	mov	rcx, QWORD PTR [rax+8]	# D.3326, src_1(D)->buffer
	mov	rax, QWORD PTR [rbp-8]	# tmp65, this
	mov	rsi, rcx	#, D.3326
	mov	rdi, rax	#, tmp65
	call	coString_setTextLen	#
	jmp	.L37	#
.L39:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, this
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, tmp66
	call	coString_setTextLen	#
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	coString_setString, .-coString_setString
	.globl	coString_vprintf
	.type	coString_vprintf, @function
coString_vprintf:
.LFB15:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR [rbp-56], rdi	# this, this
	mov	QWORD PTR [rbp-64], rsi	# _offset, _offset
	mov	QWORD PTR [rbp-72], rdx	# format, format
	mov	QWORD PTR [rbp-80], rcx	# ap, ap
	mov	rax, QWORD PTR [rbp-56]	# tmp71, this
	mov	rax, QWORD PTR [rax+24]	# D.3294, this_6(D)->len
	cmp	rax, QWORD PTR [rbp-64]	# D.3294, _offset
	jae	.L41	#,
	mov	eax, 0	# D.3297,
	jmp	.L48	#
.L41:
	lea	rax, [rbp-48]	# tmp72,
	mov	rdx, QWORD PTR [rbp-80]	# tmp73, ap
	mov	rcx, QWORD PTR [rdx]	# tmp74,
	mov	QWORD PTR [rax], rcx	#, tmp74
	mov	rcx, QWORD PTR [rdx+8]	# tmp75,
	mov	QWORD PTR [rax+8], rcx	#, tmp75
	mov	rdx, QWORD PTR [rdx+16]	# tmp76,
	mov	QWORD PTR [rax+16], rdx	#, tmp76
	mov	rax, QWORD PTR [rbp-56]	# tmp77, this
	mov	rax, QWORD PTR [rax+8]	# D.3298, this_6(D)->buffer
	test	rax, rax	# D.3298
	je	.L43	#,
	mov	rax, QWORD PTR [rbp-56]	# tmp78, this
	mov	rdx, QWORD PTR [rax+8]	# D.3301, this_6(D)->buffer
	mov	rax, QWORD PTR [rbp-64]	# tmp80, _offset
	add	rax, rdx	# tmp79, D.3301
	mov	QWORD PTR [rbp-16], rax	# str, tmp79
	mov	rax, QWORD PTR [rbp-56]	# tmp81, this
	mov	rax, QWORD PTR [rax+16]	# D.3302, this_6(D)->size
	sub	rax, QWORD PTR [rbp-64]	# tmp82, _offset
	mov	QWORD PTR [rbp-8], rax	# size, tmp82
	jmp	.L44	#
.L43:
	mov	rax, QWORD PTR [rbp-56]	# tmp83, this
	mov	rax, QWORD PTR [rax+8]	# tmp84, this_6(D)->buffer
	mov	QWORD PTR [rbp-16], rax	# str, tmp84
	mov	QWORD PTR [rbp-8], 0	# size,
.L44:
	mov	rcx, QWORD PTR [rbp-80]	# tmp85, ap
	mov	rdx, QWORD PTR [rbp-72]	# tmp86, format
	mov	rsi, QWORD PTR [rbp-8]	# tmp87, size
	mov	rax, QWORD PTR [rbp-16]	# tmp88, str
	mov	rdi, rax	#, tmp88
	call	vsnprintf	#
	mov	DWORD PTR [rbp-20], eax	# ret_val, tmp89
	cmp	DWORD PTR [rbp-20], 0	# ret_val,
	jle	.L45	#,
	mov	eax, DWORD PTR [rbp-20]	# tmp90, ret_val
	movsx	rdx, eax	# D.3307, tmp90
	mov	rax, QWORD PTR [rbp-64]	# tmp92, _offset
	add	rax, rdx	# tmp91, D.3307
	mov	QWORD PTR [rbp-8], rax	# size, tmp91
	mov	rax, QWORD PTR [rbp-56]	# tmp93, this
	mov	rax, QWORD PTR [rax+16]	# D.3308, this_6(D)->size
	cmp	QWORD PTR [rbp-8], rax	# size, D.3308
	jb	.L45	#,
	add	QWORD PTR [rbp-8], 1	# size,
	mov	rax, QWORD PTR [rbp-56]	# tmp94, this
	mov	rax, QWORD PTR [rax+8]	# D.3310, this_6(D)->buffer
	mov	rsi, QWORD PTR [rbp-8]	# tmp95, size
	mov	ecx, 197	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3310
	call	coRealloc	#
	mov	QWORD PTR [rbp-16], rax	# str, tmp96
	cmp	QWORD PTR [rbp-16], 0	# str,
	je	.L47	#,
	mov	rax, QWORD PTR [rbp-56]	# tmp97, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp98, size
	mov	QWORD PTR [rax+16], rdx	# this_6(D)->size, tmp98
	mov	rax, QWORD PTR [rbp-56]	# tmp99, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp100, str
	mov	QWORD PTR [rax+8], rdx	# this_6(D)->buffer, tmp100
	mov	rax, QWORD PTR [rbp-8]	# tmp101, size
	lea	rdx, [rax-1]	# D.3313,
	mov	rax, QWORD PTR [rbp-56]	# tmp102, this
	mov	QWORD PTR [rax+24], rdx	# this_6(D)->len, D.3313
	mov	rax, QWORD PTR [rbp-64]	# tmp103, _offset
	sub	QWORD PTR [rbp-8], rax	# size, tmp103
	mov	rax, QWORD PTR [rbp-64]	# tmp104, _offset
	add	QWORD PTR [rbp-16], rax	# str, tmp104
	lea	rcx, [rbp-48]	# tmp105,
	mov	rdx, QWORD PTR [rbp-72]	# tmp106, format
	mov	rsi, QWORD PTR [rbp-8]	# tmp107, size
	mov	rax, QWORD PTR [rbp-16]	# tmp108, str
	mov	rdi, rax	#, tmp108
	call	vsnprintf	#
	mov	DWORD PTR [rbp-20], eax	# ret_val, tmp109
	jmp	.L47	#
.L45:
	cmp	DWORD PTR [rbp-20], 0	# ret_val,
	js	.L47	#,
	mov	eax, DWORD PTR [rbp-20]	# tmp110, ret_val
	movsx	rdx, eax	# D.3316, tmp110
	mov	rax, QWORD PTR [rbp-64]	# tmp111, _offset
	add	rdx, rax	# D.3317, tmp111
	mov	rax, QWORD PTR [rbp-56]	# tmp112, this
	mov	QWORD PTR [rax+24], rdx	# this_6(D)->len, D.3317
.L47:
	mov	eax, DWORD PTR [rbp-20]	# D.3297, ret_val
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	coString_vprintf, .-coString_vprintf
	.globl	coString_printf
	.type	coString_printf, @function
coString_printf:
.LFB16:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 240	#,
	mov	QWORD PTR [rbp-216], rdi	# this, this
	mov	QWORD PTR [rbp-224], rsi	# _offset, _offset
	mov	QWORD PTR [rbp-152], rcx	#,
	mov	QWORD PTR [rbp-144], r8	#,
	mov	QWORD PTR [rbp-136], r9	#,
	test	al, al	#
	je	.L50	#,
	movaps	XMMWORD PTR [rbp-128], xmm0	#,
	movaps	XMMWORD PTR [rbp-112], xmm1	#,
	movaps	XMMWORD PTR [rbp-96], xmm2	#,
	movaps	XMMWORD PTR [rbp-80], xmm3	#,
	movaps	XMMWORD PTR [rbp-64], xmm4	#,
	movaps	XMMWORD PTR [rbp-48], xmm5	#,
	movaps	XMMWORD PTR [rbp-32], xmm6	#,
	movaps	XMMWORD PTR [rbp-16], xmm7	#,
.L50:
	mov	QWORD PTR [rbp-232], rdx	# format, format
	mov	rax, QWORD PTR [rbp-216]	# tmp62, this
	mov	rax, QWORD PTR [rax+24]	# D.3288, this_2(D)->len
	cmp	rax, QWORD PTR [rbp-224]	# D.3288, _offset
	jae	.L51	#,
	mov	eax, 0	# D.3291,
	jmp	.L53	#
.L51:
	mov	DWORD PTR [rbp-208], 24	# MEM[(struct [1] *)&ap].gp_offset,
	mov	DWORD PTR [rbp-204], 48	# MEM[(struct [1] *)&ap].fp_offset,
	lea	rax, [rbp+16]	#,
	mov	QWORD PTR [rbp-200], rax	# MEM[(struct [1] *)&ap].overflow_arg_area,
	lea	rax, [rbp-176]	#,
	mov	QWORD PTR [rbp-192], rax	# MEM[(struct [1] *)&ap].reg_save_area,
	lea	rcx, [rbp-208]	# tmp64,
	mov	rdx, QWORD PTR [rbp-232]	# tmp65, format
	mov	rsi, QWORD PTR [rbp-224]	# tmp66, _offset
	mov	rax, QWORD PTR [rbp-216]	# tmp67, this
	mov	rdi, rax	#, tmp67
	call	coString_vprintf	#
	mov	DWORD PTR [rbp-180], eax	# ret_val, tmp68
	mov	eax, DWORD PTR [rbp-180]	# D.3291, ret_val
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	coString_printf, .-coString_printf
	.section	.rodata
.LC5:
	.string	"realloc failed.\n"
.LC6:
	.string	"coString_append"
	.text
	.globl	coString_append
	.type	coString_append, @function
coString_append:
.LFB17:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 40	#,
	.cfi_offset 3, -24
	mov	QWORD PTR [rbp-40], rdi	# this, this
	mov	QWORD PTR [rbp-48], rsi	# text, text
	cmp	QWORD PTR [rbp-40], 0	# this,
	je	.L55	#,
	cmp	QWORD PTR [rbp-48], 0	# text,
	je	.L55	#,
	mov	rax, QWORD PTR [rbp-48]	# tmp70, text
	movzx	eax, BYTE PTR [rax]	# D.3272, *text_3(D)
	test	al, al	# D.3272
	jne	.L56	#,
.L55:
	mov	rax, QWORD PTR [rbp-40]	# D.3273, this
	jmp	.L57	#
.L56:
	mov	rax, QWORD PTR [rbp-40]	# tmp71, this
	mov	rbx, QWORD PTR [rax+24]	# D.3274, this_2(D)->len
	mov	rax, QWORD PTR [rbp-48]	# tmp72, text
	mov	rdi, rax	#, tmp72
	call	strlen	#
	add	rax, rbx	# tmp73, D.3274
	mov	QWORD PTR [rbp-24], rax	# new_len, tmp73
	mov	rax, QWORD PTR [rbp-40]	# tmp74, this
	mov	rax, QWORD PTR [rax+16]	# D.3276, this_2(D)->size
	cmp	rax, QWORD PTR [rbp-24]	# D.3276, new_len
	ja	.L58	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp75, new_len
	lea	rsi, [rax+1]	# D.3279,
	mov	rax, QWORD PTR [rbp-40]	# tmp76, this
	mov	rax, QWORD PTR [rax+8]	# D.3280, this_2(D)->buffer
	mov	ecx, 242	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	rdi, rax	#, D.3280
	call	coRealloc	#
	mov	QWORD PTR [rbp-32], rax	# buffer, tmp77
	cmp	QWORD PTR [rbp-32], 0	# buffer,
	jne	.L59	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp78, this
	mov	r8d, OFFSET FLAT:.LC5	#,
	mov	ecx, 244	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	rsi, rax	#, tmp78
	mov	edi, OFFSET FLAT:.LC6	#,
	mov	eax, 0	#,
	call	__coError	#
	mov	rax, QWORD PTR [rbp-40]	# D.3273, this
	jmp	.L57	#
.L59:
	mov	rax, QWORD PTR [rbp-24]	# tmp79, new_len
	lea	rdx, [rax+1]	# D.3283,
	mov	rax, QWORD PTR [rbp-40]	# tmp80, this
	mov	QWORD PTR [rax+16], rdx	# this_2(D)->size, D.3283
	mov	rax, QWORD PTR [rbp-40]	# tmp81, this
	mov	rdx, QWORD PTR [rbp-32]	# tmp82, buffer
	mov	QWORD PTR [rax+8], rdx	# this_2(D)->buffer, tmp82
	mov	rax, QWORD PTR [rbp-40]	# tmp83, this
	mov	rax, QWORD PTR [rax+8]	# D.3284, this_2(D)->buffer
	mov	rdx, QWORD PTR [rbp-48]	# tmp84, text
	mov	rsi, rdx	#, tmp84
	mov	rdi, rax	#, D.3284
	call	strcat	#
	mov	rax, QWORD PTR [rbp-40]	# tmp85, this
	mov	rdx, QWORD PTR [rbp-24]	# tmp86, new_len
	mov	QWORD PTR [rax+24], rdx	# this_2(D)->len, tmp86
	jmp	.L60	#
.L58:
	mov	rax, QWORD PTR [rbp-40]	# tmp87, this
	mov	rax, QWORD PTR [rax+8]	# D.3286, this_2(D)->buffer
	mov	rdx, QWORD PTR [rbp-48]	# tmp88, text
	mov	rsi, rdx	#, tmp88
	mov	rdi, rax	#, D.3286
	call	strcat	#
	mov	rax, QWORD PTR [rbp-40]	# tmp89, this
	mov	rdx, QWORD PTR [rbp-24]	# tmp90, new_len
	mov	QWORD PTR [rax+24], rdx	# this_2(D)->len, tmp90
.L60:
	mov	rax, QWORD PTR [rbp-40]	# D.3273, this
.L57:
	add	rsp, 40	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	coString_append, .-coString_append
	.globl	coString_cutLast
	.type	coString_cutLast, @function
coString_cutLast:
.LFB18:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	eax, esi	# tmp68, ch
	mov	BYTE PTR [rbp-28], al	# ch, tmp68
	mov	rax, QWORD PTR [rbp-24]	# tmp69, this
	mov	rax, QWORD PTR [rax+24]	# D.3253, this_3(D)->len
	test	rax, rax	# D.3253
	jne	.L62	#,
	mov	eax, 0	# D.3256,
	jmp	.L63	#
.L62:
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rax, QWORD PTR [rax+24]	# D.3257, this_3(D)->len
	sub	rax, 1	# tmp71,
	mov	QWORD PTR [rbp-8], rax	# i, tmp71
.L66:
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rdx, QWORD PTR [rax+8]	# D.3258, this_3(D)->buffer
	mov	rax, QWORD PTR [rbp-8]	# tmp73, i
	add	rax, rdx	# D.3259, D.3258
	movzx	eax, BYTE PTR [rax]	# D.3260, *D.3259_9
	cmp	al, BYTE PTR [rbp-28]	# D.3260, ch
	jne	.L64	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp74, this
	mov	rdx, QWORD PTR [rax+8]	# D.3263, this_3(D)->buffer
	mov	rax, QWORD PTR [rbp-8]	# tmp75, i
	add	rax, rdx	# D.3264, D.3263
	mov	BYTE PTR [rax], 0	# *D.3264_13,
	mov	rax, QWORD PTR [rbp-24]	# tmp76, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp77, i
	mov	QWORD PTR [rax+24], rdx	# this_3(D)->len, tmp77
	mov	rax, QWORD PTR [rbp-8]	# D.3256, i
	jmp	.L63	#
.L64:
	cmp	QWORD PTR [rbp-8], 0	# i,
	jne	.L65	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp78, this
	mov	rax, QWORD PTR [rax+24]	# D.3256, this_3(D)->len
	jmp	.L63	#
.L65:
	sub	QWORD PTR [rbp-8], 1	# i,
	jmp	.L66	#
.L63:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	coString_cutLast, .-coString_cutLast
	.globl	coString_cutAtIndex
	.type	coString_cutAtIndex, @function
coString_cutAtIndex:
.LFB19:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# this, this
	mov	QWORD PTR [rbp-16], rsi	# index, index
	mov	rax, QWORD PTR [rbp-8]	# tmp64, this
	mov	rax, QWORD PTR [rax+24]	# D.3246, this_1(D)->len
	cmp	rax, QWORD PTR [rbp-16]	# D.3246, index
	jbe	.L68	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp65, this
	mov	rdx, QWORD PTR [rax+8]	# D.3249, this_1(D)->buffer
	mov	rax, QWORD PTR [rbp-16]	# tmp66, index
	add	rax, rdx	# D.3250, D.3249
	mov	BYTE PTR [rax], 0	# *D.3250_5,
	mov	rax, QWORD PTR [rbp-8]	# tmp67, this
	mov	rdx, QWORD PTR [rbp-16]	# tmp68, index
	mov	QWORD PTR [rax+24], rdx	# this_1(D)->len, tmp68
.L68:
	mov	rax, QWORD PTR [rbp-8]	# tmp69, this
	mov	rax, QWORD PTR [rax+24]	# D.3251, this_1(D)->len
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	coString_cutAtIndex, .-coString_cutAtIndex
	.globl	coString_findLastOf
	.type	coString_findLastOf, @function
coString_findLastOf:
.LFB20:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# text, text
	cmp	QWORD PTR [rbp-24], 0	# this,
	je	.L71	#,
	cmp	QWORD PTR [rbp-32], 0	# text,
	jne	.L72	#,
.L71:
	mov	rax, QWORD PTR CO_STRING_NPOS[rip]	# D.3225, CO_STRING_NPOS
	jmp	.L73	#
.L72:
	mov	rax, QWORD PTR [rbp-32]	# tmp68, text
	mov	rdi, rax	#, tmp68
	call	strlen	#
	mov	QWORD PTR [rbp-16], rax	# text_len, tmp69
	cmp	QWORD PTR [rbp-16], 0	# text_len,
	jne	.L74	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, this
	mov	rax, QWORD PTR [rax+24]	# D.3228, this_3(D)->len
	test	rax, rax	# D.3228
	jne	.L75	#,
	mov	eax, 0	# D.3225,
	jmp	.L73	#
.L75:
	mov	rax, QWORD PTR CO_STRING_NPOS[rip]	# D.3225, CO_STRING_NPOS
	jmp	.L73	#
.L74:
	mov	rax, QWORD PTR [rbp-24]	# tmp71, this
	mov	rax, QWORD PTR [rax+24]	# D.3231, this_3(D)->len
	test	rax, rax	# D.3231
	jne	.L76	#,
	mov	rax, QWORD PTR CO_STRING_NPOS[rip]	# D.3225, CO_STRING_NPOS
	jmp	.L73	#
.L76:
	mov	rax, QWORD PTR [rbp-24]	# tmp72, this
	mov	rax, QWORD PTR [rax+24]	# D.3234, this_3(D)->len
	cmp	rax, QWORD PTR [rbp-16]	# D.3234, text_len
	jae	.L77	#,
	mov	rax, QWORD PTR CO_STRING_NPOS[rip]	# D.3225, CO_STRING_NPOS
	jmp	.L73	#
.L77:
	mov	rax, QWORD PTR [rbp-24]	# tmp73, this
	mov	rax, QWORD PTR [rax+24]	# D.3237, this_3(D)->len
	sub	rax, QWORD PTR [rbp-16]	# tmp74, text_len
	mov	QWORD PTR [rbp-8], rax	# i, tmp74
.L80:
	mov	rax, QWORD PTR [rbp-24]	# tmp75, this
	mov	rdx, QWORD PTR [rax+8]	# D.3238, this_3(D)->buffer
	mov	rax, QWORD PTR [rbp-8]	# tmp76, i
	lea	rcx, [rdx+rax]	# D.3239,
	mov	rdx, QWORD PTR [rbp-16]	# tmp77, text_len
	mov	rax, QWORD PTR [rbp-32]	# tmp78, text
	mov	rsi, rax	#, tmp78
	mov	rdi, rcx	#, D.3239
	call	strncmp	#
	test	eax, eax	# D.3240
	jne	.L78	#,
	mov	rax, QWORD PTR [rbp-8]	# D.3225, i
	jmp	.L73	#
.L78:
	cmp	QWORD PTR [rbp-8], 0	# i,
	jne	.L79	#,
	mov	rax, QWORD PTR CO_STRING_NPOS[rip]	# D.3225, CO_STRING_NPOS
	jmp	.L73	#
.L79:
	sub	QWORD PTR [rbp-8], 1	# i,
	jmp	.L80	#
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	coString_findLastOf, .-coString_findLastOf
	.globl	coString_substr
	.type	coString_substr, @function
coString_substr:
.LFB21:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# this, this
	mov	QWORD PTR [rbp-32], rsi	# src, src
	mov	QWORD PTR [rbp-40], rdx	# pos, pos
	mov	QWORD PTR [rbp-48], rcx	# len, len
	mov	rax, QWORD PTR [rbp-32]	# tmp74, src
	mov	rax, QWORD PTR [rax+24]	# D.3195, src_3(D)->len
	cmp	rax, QWORD PTR [rbp-40]	# D.3195, pos
	jne	.L82	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp75, this
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp75
	call	coString_cutAtIndex	#
	mov	eax, 0	# D.3198,
	jmp	.L83	#
.L82:
	mov	rax, QWORD PTR [rbp-32]	# tmp76, src
	mov	rax, QWORD PTR [rax+24]	# D.3199, src_3(D)->len
	cmp	rax, QWORD PTR [rbp-40]	# D.3199, pos
	jae	.L84	#,
	mov	eax, 1	# D.3198,
	jmp	.L83	#
.L84:
	mov	rax, QWORD PTR CO_STRING_NPOS[rip]	# CO_STRING_NPOS.0, CO_STRING_NPOS
	cmp	QWORD PTR [rbp-48], rax	# len, CO_STRING_NPOS.0
	jne	.L85	#,
	mov	rax, QWORD PTR [rbp-32]	# tmp77, src
	mov	rax, QWORD PTR [rax+24]	# D.3205, src_3(D)->len
	sub	rax, QWORD PTR [rbp-40]	# tmp78, pos
	mov	QWORD PTR [rbp-8], rax	# new_len, tmp78
	jmp	.L86	#
.L85:
	mov	rax, QWORD PTR [rbp-48]	# tmp79, len
	mov	rdx, QWORD PTR [rbp-40]	# tmp81, pos
	add	rax, rdx	# tmp80, tmp81
	mov	QWORD PTR [rbp-16], rax	# d, tmp80
	mov	rax, QWORD PTR [rbp-32]	# tmp82, src
	mov	rax, QWORD PTR [rax+24]	# D.3207, src_3(D)->len
	cmp	rax, QWORD PTR [rbp-16]	# D.3207, d
	jae	.L87	#,
	mov	rax, QWORD PTR [rbp-32]	# tmp83, src
	mov	rax, QWORD PTR [rax+24]	# D.3210, src_3(D)->len
	mov	rdx, rax	# D.3211, D.3210
	sub	rdx, QWORD PTR [rbp-16]	# D.3211, d
	mov	rax, QWORD PTR [rbp-48]	# tmp85, len
	add	rax, rdx	# tmp84, D.3211
	mov	QWORD PTR [rbp-8], rax	# new_len, tmp84
	jmp	.L86	#
.L87:
	mov	rax, QWORD PTR [rbp-48]	# tmp86, len
	mov	QWORD PTR [rbp-8], rax	# new_len, tmp86
.L86:
	mov	rdx, QWORD PTR [rbp-8]	# tmp87, new_len
	mov	rax, QWORD PTR [rbp-24]	# tmp88, this
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp88
	call	coString_initLen	#
	mov	rax, QWORD PTR [rbp-24]	# tmp89, this
	mov	rax, QWORD PTR [rax+8]	# D.3213, this_6(D)->buffer
	test	rax, rax	# D.3213
	je	.L88	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp90, this
	mov	rdx, QWORD PTR [rbp-8]	# tmp91, new_len
	mov	QWORD PTR [rax+24], rdx	# this_6(D)->len, tmp91
	mov	rax, QWORD PTR [rbp-32]	# tmp92, src
	mov	rdx, QWORD PTR [rax+8]	# D.3216, src_3(D)->buffer
	mov	rax, QWORD PTR [rbp-40]	# tmp93, pos
	lea	rcx, [rdx+rax]	# D.3217,
	mov	rax, QWORD PTR [rbp-24]	# tmp94, this
	mov	rax, QWORD PTR [rax+8]	# D.3218, this_6(D)->buffer
	mov	rdx, QWORD PTR [rbp-8]	# tmp95, new_len
	mov	rsi, rcx	#, D.3217
	mov	rdi, rax	#, D.3218
	call	strncpy	#
	mov	rax, QWORD PTR [rbp-24]	# tmp96, this
	mov	rdx, QWORD PTR [rax+8]	# D.3219, this_6(D)->buffer
	mov	rax, QWORD PTR [rbp-8]	# tmp97, new_len
	add	rax, rdx	# D.3220, D.3219
	mov	BYTE PTR [rax], 0	# *D.3220_25,
.L88:
	mov	eax, 0	# D.3198,
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	coString_substr, .-coString_substr
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
