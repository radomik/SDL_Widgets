	.file	"coUtils.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coUtils.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coUtils.asm
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

	.section	.rodata
.LC0:
	.string	"true"
	.data
	.align 8
	.type	_CO_TRUE_STR, @object
	.size	_CO_TRUE_STR, 8
_CO_TRUE_STR:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"false"
	.data
	.align 8
	.type	_CO_FALSE_STR, @object
	.size	_CO_FALSE_STR, 8
_CO_FALSE_STR:
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"(null)"
	.data
	.align 8
	.type	_CO_NULL_STR, @object
	.size	_CO_NULL_STR, 8
_CO_NULL_STR:
	.quad	.LC2
	.section	.rodata
.LC3:
	.string	"vertical"
	.data
	.align 8
	.type	_CO_VERTICAL_STR, @object
	.size	_CO_VERTICAL_STR, 8
_CO_VERTICAL_STR:
	.quad	.LC3
	.section	.rodata
.LC4:
	.string	"horizontal"
	.data
	.align 8
	.type	_CO_HORIZONTAL_STR, @object
	.size	_CO_HORIZONTAL_STR, 8
_CO_HORIZONTAL_STR:
	.quad	.LC4
	.text
	.globl	coUtils_getTrueStr
	.type	coUtils_getTrueStr, @function
coUtils_getTrueStr:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR _CO_TRUE_STR[rip]	# D.4008, _CO_TRUE_STR
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coUtils_getTrueStr, .-coUtils_getTrueStr
	.globl	coUtils_getFalseStr
	.type	coUtils_getFalseStr, @function
coUtils_getFalseStr:
.LFB3:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR _CO_FALSE_STR[rip]	# D.4006, _CO_FALSE_STR
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coUtils_getFalseStr, .-coUtils_getFalseStr
	.globl	coUtils_getNullStr
	.type	coUtils_getNullStr, @function
coUtils_getNullStr:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR _CO_NULL_STR[rip]	# D.4004, _CO_NULL_STR
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coUtils_getNullStr, .-coUtils_getNullStr
	.globl	coUtils_getVerticalStr
	.type	coUtils_getVerticalStr, @function
coUtils_getVerticalStr:
.LFB5:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR _CO_VERTICAL_STR[rip]	# D.4002, _CO_VERTICAL_STR
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coUtils_getVerticalStr, .-coUtils_getVerticalStr
	.globl	coUtils_getHorizontalStr
	.type	coUtils_getHorizontalStr, @function
coUtils_getHorizontalStr:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR _CO_HORIZONTAL_STR[rip]	# D.4000, _CO_HORIZONTAL_STR
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	coUtils_getHorizontalStr, .-coUtils_getHorizontalStr
	.globl	coFileExist
	.type	coFileExist, @function
coFileExist:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 160	#,
	mov	QWORD PTR [rbp-152], rdi	# path, path
	cmp	QWORD PTR [rbp-152], 0	# path,
	je	.L12	#,
	lea	rdx, [rbp-144]	# tmp62,
	mov	rax, QWORD PTR [rbp-152]	# tmp63, path
	mov	rsi, rdx	#, tmp62
	mov	rdi, rax	#, tmp63
	call	stat	#
	test	eax, eax	# D.3995
	jne	.L12	#,
	mov	eax, 1	# D.3997,
	jmp	.L14	#
.L12:
	mov	eax, 0	# D.3997,
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	coFileExist, .-coFileExist
	.globl	coSleep
	.type	coSleep, @function
coSleep:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR [rbp-4], edi	# milis, milis
	mov	eax, DWORD PTR [rbp-4]	# tmp60, milis
	imul	eax, eax, 1000	# D.3992, tmp60,
	mov	edi, eax	#, D.3992
	call	usleep	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	coSleep, .-coSleep
	.section	.rodata
.LC5:
	.string	"%s#%d,%s()[this=%p]: "
	.text
	.globl	__coError
	.type	__coError, @function
__coError:
.LFB9:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 256	#,
	mov	QWORD PTR [rbp-216], rdi	# fname, fname
	mov	QWORD PTR [rbp-224], rsi	# this, this
	mov	QWORD PTR [rbp-232], rdx	# file, file
	mov	DWORD PTR [rbp-236], ecx	# line, line
	mov	QWORD PTR [rbp-136], r9	#,
	test	al, al	#
	je	.L17	#,
	movaps	XMMWORD PTR [rbp-128], xmm0	#,
	movaps	XMMWORD PTR [rbp-112], xmm1	#,
	movaps	XMMWORD PTR [rbp-96], xmm2	#,
	movaps	XMMWORD PTR [rbp-80], xmm3	#,
	movaps	XMMWORD PTR [rbp-64], xmm4	#,
	movaps	XMMWORD PTR [rbp-48], xmm5	#,
	movaps	XMMWORD PTR [rbp-32], xmm6	#,
	movaps	XMMWORD PTR [rbp-16], xmm7	#,
.L17:
	mov	QWORD PTR [rbp-248], r8	# format, format
	mov	rax, QWORD PTR stderr[rip]	# stderr.7, stderr
	mov	rdi, QWORD PTR [rbp-224]	# tmp62, this
	mov	rsi, QWORD PTR [rbp-216]	# tmp63, fname
	mov	ecx, DWORD PTR [rbp-236]	# tmp64, line
	mov	rdx, QWORD PTR [rbp-232]	# tmp65, file
	mov	r9, rdi	#, tmp62
	mov	r8, rsi	#, tmp63
	mov	esi, OFFSET FLAT:.LC5	#,
	mov	rdi, rax	#, stderr.7
	mov	eax, 0	#,
	call	fprintf	#
	mov	rax, QWORD PTR stderr[rip]	# stderr.8, stderr
	mov	rdi, rax	#, stderr.8
	call	fflush	#
	mov	DWORD PTR [rbp-200], 40	# MEM[(struct [1] *)&va].gp_offset,
	mov	DWORD PTR [rbp-196], 48	# MEM[(struct [1] *)&va].fp_offset,
	lea	rax, [rbp+16]	#,
	mov	QWORD PTR [rbp-192], rax	# MEM[(struct [1] *)&va].overflow_arg_area,
	lea	rax, [rbp-176]	#,
	mov	QWORD PTR [rbp-184], rax	# MEM[(struct [1] *)&va].reg_save_area,
	mov	rax, QWORD PTR stderr[rip]	# stderr.9, stderr
	lea	rdx, [rbp-200]	# tmp67,
	mov	rcx, QWORD PTR [rbp-248]	# tmp68, format
	mov	rsi, rcx	#, tmp68
	mov	rdi, rax	#, stderr.9
	call	vfprintf	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	__coError, .-__coError
	.section	.rodata
.LC6:
	.string	"%s: "
	.text
	.globl	__coError2
	.type	__coError2, @function
__coError2:
.LFB10:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 240	#,
	mov	QWORD PTR [rbp-216], rdi	# fname, fname
	mov	QWORD PTR [rbp-224], rsi	# file, file
	mov	DWORD PTR [rbp-228], edx	# line, line
	mov	QWORD PTR [rbp-144], r8	#,
	mov	QWORD PTR [rbp-136], r9	#,
	test	al, al	#
	je	.L19	#,
	movaps	XMMWORD PTR [rbp-128], xmm0	#,
	movaps	XMMWORD PTR [rbp-112], xmm1	#,
	movaps	XMMWORD PTR [rbp-96], xmm2	#,
	movaps	XMMWORD PTR [rbp-80], xmm3	#,
	movaps	XMMWORD PTR [rbp-64], xmm4	#,
	movaps	XMMWORD PTR [rbp-48], xmm5	#,
	movaps	XMMWORD PTR [rbp-32], xmm6	#,
	movaps	XMMWORD PTR [rbp-16], xmm7	#,
.L19:
	mov	QWORD PTR [rbp-240], rcx	# format, format
	mov	rax, QWORD PTR stderr[rip]	# stderr.4, stderr
	mov	rdx, QWORD PTR [rbp-216]	# tmp62, fname
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, stderr.4
	mov	eax, 0	#,
	call	fprintf	#
	mov	rax, QWORD PTR stderr[rip]	# stderr.5, stderr
	mov	rdi, rax	#, stderr.5
	call	fflush	#
	mov	DWORD PTR [rbp-200], 32	# MEM[(struct [1] *)&va].gp_offset,
	mov	DWORD PTR [rbp-196], 48	# MEM[(struct [1] *)&va].fp_offset,
	lea	rax, [rbp+16]	#,
	mov	QWORD PTR [rbp-192], rax	# MEM[(struct [1] *)&va].overflow_arg_area,
	lea	rax, [rbp-176]	#,
	mov	QWORD PTR [rbp-184], rax	# MEM[(struct [1] *)&va].reg_save_area,
	mov	rax, QWORD PTR stderr[rip]	# stderr.6, stderr
	lea	rdx, [rbp-200]	# tmp64,
	mov	rcx, QWORD PTR [rbp-240]	# tmp65, format
	mov	rsi, rcx	#, tmp65
	mov	rdi, rax	#, stderr.6
	call	vfprintf	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	__coError2, .-__coError2
	.globl	coRandUnique
	.type	coRandUnique, @function
coRandUnique:
.LFB11:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	DWORD PTR [rbp-20], edi	# max, max
	nop
.L21:
	call	rand	#
	mov	edx, eax	# tmp64, D.3982
	sar	edx, 31	# tmp64,
	idiv	DWORD PTR [rbp-20]	# max
	mov	ebx, edx	# r, tmp64
	mov	eax, DWORD PTR r2.3765[rip]	# r2.3, r2
	cmp	ebx, eax	# r, r2.3
	je	.L21	#,
	mov	DWORD PTR r2.3765[rip], ebx	# r2, r
	mov	eax, ebx	# D.3984, r
	add	rsp, 24	#,
	pop	rbx	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	coRandUnique, .-coRandUnique
	.section	.rodata
.LC7:
	.string	"rb"
.LC8:
	.string	"coUtils.c"
	.text
	.globl	coLoadFileIntoArray
	.type	coLoadFileIntoArray, @function
coLoadFileIntoArray:
.LFB12:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-40], rdi	# path, path
	mov	QWORD PTR [rbp-48], rsi	# e, e
	cmp	QWORD PTR [rbp-40], 0	# path,
	je	.L24	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp66, path
	mov	rdi, rax	#, tmp66
	call	coFileExist	#
	test	al, al	# D.3953
	jne	.L25	#,
.L24:
	cmp	QWORD PTR [rbp-48], 0	# e,
	je	.L26	#,
	mov	rax, QWORD PTR [rbp-48]	# tmp67, e
	mov	DWORD PTR [rax], 6	# *e_5(D),
.L26:
	mov	eax, 0	# D.3956,
	jmp	.L27	#
.L25:
	mov	rax, QWORD PTR [rbp-40]	# tmp68, path
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	rdi, rax	#, tmp68
	call	fopen	#
	mov	QWORD PTR [rbp-8], rax	# file, tmp69
	cmp	QWORD PTR [rbp-8], 0	# file,
	jne	.L28	#,
	cmp	QWORD PTR [rbp-48], 0	# e,
	je	.L29	#,
	mov	rax, QWORD PTR [rbp-48]	# tmp70, e
	mov	DWORD PTR [rax], 7	# *e_5(D),
.L29:
	mov	eax, 0	# D.3956,
	jmp	.L27	#
.L28:
	mov	rax, QWORD PTR [rbp-8]	# tmp71, file
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp71
	call	fseek	#
	test	eax, eax	# D.3961
	je	.L30	#,
	cmp	QWORD PTR [rbp-48], 0	# e,
	je	.L31	#,
	mov	rax, QWORD PTR [rbp-48]	# tmp72, e
	mov	DWORD PTR [rax], 8	# *e_5(D),
.L31:
	mov	rax, QWORD PTR [rbp-8]	# tmp73, file
	mov	rdi, rax	#, tmp73
	call	fclose	#
	mov	eax, 0	# D.3956,
	jmp	.L27	#
.L30:
	mov	rax, QWORD PTR [rbp-8]	# tmp74, file
	mov	rdi, rax	#, tmp74
	call	ftell	#
	mov	QWORD PTR [rbp-16], rax	# len, tmp75
	cmp	QWORD PTR [rbp-16], 0	# len,
	jg	.L32	#,
	cmp	QWORD PTR [rbp-48], 0	# e,
	je	.L33	#,
	mov	rax, QWORD PTR [rbp-48]	# tmp76, e
	mov	DWORD PTR [rax], 9	# *e_5(D),
.L33:
	mov	rax, QWORD PTR [rbp-8]	# tmp77, file
	mov	rdi, rax	#, tmp77
	call	fclose	#
	mov	eax, 0	# D.3956,
	jmp	.L27	#
.L32:
	mov	rax, QWORD PTR [rbp-16]	# len.1, len
	mov	edx, 112	#,
	mov	esi, OFFSET FLAT:.LC8	#,
	mov	rdi, rax	#, len.1
	call	coMalloc	#
	mov	QWORD PTR [rbp-24], rax	# buf, tmp78
	cmp	QWORD PTR [rbp-24], 0	# buf,
	jne	.L34	#,
	cmp	QWORD PTR [rbp-48], 0	# e,
	je	.L35	#,
	mov	rax, QWORD PTR [rbp-48]	# tmp79, e
	mov	DWORD PTR [rax], 5	# *e_5(D),
.L35:
	mov	rax, QWORD PTR [rbp-8]	# tmp80, file
	mov	rdi, rax	#, tmp80
	call	fclose	#
	mov	eax, 0	# D.3956,
	jmp	.L27	#
.L34:
	mov	rsi, QWORD PTR [rbp-16]	# len.2, len
	mov	rdx, QWORD PTR [rbp-8]	# tmp81, file
	mov	rax, QWORD PTR [rbp-24]	# tmp82, buf
	mov	rcx, rdx	#, tmp81
	mov	edx, 1	#,
	mov	rdi, rax	#, tmp82
	call	fread	#
	cmp	rax, 1	# D.3976,
	je	.L36	#,
	cmp	QWORD PTR [rbp-48], 0	# e,
	je	.L37	#,
	mov	rax, QWORD PTR [rbp-48]	# tmp83, e
	mov	DWORD PTR [rax], 10	# *e_5(D),
.L37:
	mov	rax, QWORD PTR [rbp-8]	# tmp84, file
	mov	rdi, rax	#, tmp84
	call	fclose	#
	mov	rax, QWORD PTR [rbp-24]	# tmp85, buf
	mov	edx, 122	#,
	mov	esi, OFFSET FLAT:.LC8	#,
	mov	rdi, rax	#, tmp85
	call	coFree	#
	mov	eax, 0	# D.3956,
	jmp	.L27	#
.L36:
	mov	rax, QWORD PTR [rbp-8]	# tmp86, file
	mov	rdi, rax	#, tmp86
	call	fclose	#
	mov	rax, QWORD PTR [rbp-24]	# D.3956, buf
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	coLoadFileIntoArray, .-coLoadFileIntoArray
	.globl	coGrowArray
	.type	coGrowArray, @function
coGrowArray:
.LFB13:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR [rbp-40], rdi	# e, e
	mov	QWORD PTR [rbp-48], rsi	# array, array
	mov	QWORD PTR [rbp-56], rdx	# ext_size, ext_size
	mov	DWORD PTR [rbp-60], ecx	# new_pos, new_pos
	mov	DWORD PTR [rbp-64], r8d	# curr_count, curr_count
	mov	DWORD PTR [rbp-68], r9d	# def_size, def_size
	mov	eax, DWORD PTR [rbp+32]	# tmp79, flag
	mov	BYTE PTR [rbp-72], al	# flag, tmp79
	cmp	QWORD PTR [rbp-56], 0	# ext_size,
	je	.L39	#,
	mov	rax, QWORD PTR [rbp-56]	# tmp80, ext_size
	mov	eax, DWORD PTR [rax]	# D.3887, *ext_size_3(D)
	cmp	eax, DWORD PTR [rbp-60]	# D.3887, new_pos
	ja	.L39	#,
	cmp	DWORD PTR [rbp-68], 0	# def_size,
	je	.L39	#,
	cmp	QWORD PTR [rbp+24], 0	# item_size,
	jne	.L40	#,
.L39:
	cmp	QWORD PTR [rbp-40], 0	# e,
	je	.L41	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp81, e
	mov	DWORD PTR [rax], 18	# *e_11(D),
.L41:
	mov	eax, 0	# D.3892,
	jmp	.L42	#
.L40:
	mov	rax, QWORD PTR [rbp-56]	# tmp82, ext_size
	mov	eax, DWORD PTR [rax]	# tmp83, *ext_size_3(D)
	mov	DWORD PTR [rbp-4], eax	# new_size, tmp83
	mov	rax, QWORD PTR [rbp-56]	# tmp84, ext_size
	mov	eax, DWORD PTR [rax]	# tmp85, *ext_size_3(D)
	mov	DWORD PTR [rbp-8], eax	# prev_size, tmp85
	jmp	.L43	#
.L49:
	cmp	DWORD PTR [rbp-4], 0	# new_size,
	jne	.L44	#,
	mov	eax, DWORD PTR [rbp-68]	# tmp86, def_size
	cmp	eax, DWORD PTR [rbp+16]	# tmp86, max_size
	jbe	.L45	#,
	cmp	QWORD PTR [rbp-40], 0	# e,
	je	.L46	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp87, e
	mov	DWORD PTR [rax], 19	# *e_11(D),
.L46:
	mov	eax, 0	# D.3892,
	jmp	.L42	#
.L45:
	mov	eax, DWORD PTR [rbp-68]	# tmp88, def_size
	mov	DWORD PTR [rbp-4], eax	# new_size, tmp88
	jmp	.L43	#
.L44:
	mov	eax, DWORD PTR [rbp-4]	# tmp89, new_size
	mov	DWORD PTR [rbp-12], eax	# i, tmp89
	sal	DWORD PTR [rbp-4]	# new_size
	mov	eax, DWORD PTR [rbp-12]	# tmp90, i
	cmp	eax, DWORD PTR [rbp-4]	# tmp90, new_size
	jae	.L47	#,
	mov	eax, DWORD PTR [rbp-4]	# tmp91, new_size
	cmp	eax, DWORD PTR [rbp-8]	# tmp91, prev_size
	jbe	.L47	#,
	mov	eax, DWORD PTR [rbp-4]	# tmp92, new_size
	cmp	eax, DWORD PTR [rbp+16]	# tmp92, max_size
	jbe	.L43	#,
.L47:
	cmp	QWORD PTR [rbp-40], 0	# e,
	je	.L48	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp93, e
	mov	DWORD PTR [rax], 20	# *e_11(D),
.L48:
	mov	eax, 0	# D.3892,
	jmp	.L42	#
.L43:
	mov	eax, DWORD PTR [rbp-4]	# tmp94, new_size
	cmp	eax, DWORD PTR [rbp-60]	# tmp94, new_pos
	jbe	.L49	#,
	cmp	BYTE PTR [rbp-72], 0	# flag,
	je	.L50	#,
	cmp	BYTE PTR [rbp-72], 4	# flag,
	je	.L50	#,
	movzx	eax, BYTE PTR [rbp-72]	# D.3911, flag
	and	eax, 1	# D.3912,
	test	eax, eax	# D.3912
	je	.L51	#,
.L50:
	mov	eax, DWORD PTR [rbp-4]	# D.3913, new_size
	mov	rsi, rax	# D.3914, D.3913
	imul	rsi, QWORD PTR [rbp+24]	# D.3914, item_size
	mov	rax, QWORD PTR [rbp-48]	# tmp95, array
	mov	ecx, 218	#,
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	rdi, rax	#, tmp95
	call	coRealloc	#
	mov	QWORD PTR [rbp-24], rax	# _array, tmp96
	cmp	QWORD PTR [rbp-24], 0	# _array,
	jne	.L52	#,
	cmp	QWORD PTR [rbp-40], 0	# e,
	je	.L53	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp97, e
	mov	DWORD PTR [rax], 22	# *e_11(D),
.L53:
	mov	eax, 0	# D.3892,
	jmp	.L42	#
.L52:
	movzx	eax, BYTE PTR [rbp-72]	# D.3919, flag
	and	eax, 4	# D.3920,
	test	eax, eax	# D.3920
	je	.L55	#,
	mov	eax, DWORD PTR [rbp-64]	# tmp98, curr_count
	mov	edx, DWORD PTR [rbp-4]	# tmp99, new_size
	mov	ecx, edx	#, tmp99
	sub	ecx, eax	#, tmp98
	mov	eax, ecx	# D.3923,
	mov	eax, eax	# D.3924, D.3923
	imul	rax, QWORD PTR [rbp+24]	# D.3925, item_size
	mov	edx, DWORD PTR [rbp-64]	# D.3926, curr_count
	mov	rcx, rdx	# D.3927, D.3926
	imul	rcx, QWORD PTR [rbp+24]	# D.3927, item_size
	mov	rdx, QWORD PTR [rbp-24]	# tmp100, _array
	add	rcx, rdx	# D.3928, tmp100
	mov	rdx, rax	#, D.3925
	mov	esi, 0	#,
	mov	rdi, rcx	#, D.3928
	call	memset	#
	jmp	.L55	#
.L51:
	movzx	eax, BYTE PTR [rbp-72]	# D.3929, flag
	and	eax, 2	# D.3930,
	test	eax, eax	# D.3930
	je	.L56	#,
	mov	eax, DWORD PTR [rbp-4]	# D.3933, new_size
	mov	rsi, QWORD PTR [rbp+24]	# tmp101, item_size
	mov	ecx, 230	#,
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	rdi, rax	#, D.3933
	call	coCalloc	#
	mov	QWORD PTR [rbp-24], rax	# _array, tmp102
	cmp	QWORD PTR [rbp-24], 0	# _array,
	jne	.L57	#,
	cmp	QWORD PTR [rbp-40], 0	# e,
	je	.L58	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp103, e
	mov	DWORD PTR [rax], 21	# *e_11(D),
.L58:
	mov	eax, 0	# D.3892,
	jmp	.L42	#
.L57:
	cmp	DWORD PTR [rbp-64], 0	# curr_count,
	je	.L59	#,
	cmp	QWORD PTR [rbp-48], 0	# array,
	je	.L59	#,
	mov	eax, DWORD PTR [rbp-64]	# D.3942, curr_count
	mov	rdx, rax	# D.3943, D.3942
	imul	rdx, QWORD PTR [rbp+24]	# D.3943, item_size
	mov	rcx, QWORD PTR [rbp-48]	# tmp104, array
	mov	rax, QWORD PTR [rbp-24]	# tmp105, _array
	mov	rsi, rcx	#, tmp104
	mov	rdi, rax	#, tmp105
	call	memcpy	#
	mov	rax, QWORD PTR [rbp-48]	# tmp106, array
	mov	edx, 239	#,
	mov	esi, OFFSET FLAT:.LC8	#,
	mov	rdi, rax	#, tmp106
	call	coFree	#
	jmp	.L59	#
.L56:
	cmp	QWORD PTR [rbp-40], 0	# e,
	je	.L59	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp107, e
	mov	DWORD PTR [rax], 23	# *e_11(D),
.L59:
	mov	eax, 0	# D.3892,
	jmp	.L42	#
.L55:
	mov	rax, QWORD PTR [rbp-56]	# tmp108, ext_size
	mov	edx, DWORD PTR [rbp-4]	# tmp109, new_size
	mov	DWORD PTR [rax], edx	# *ext_size_3(D), tmp109
	cmp	QWORD PTR [rbp-40], 0	# e,
	je	.L60	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp110, e
	mov	DWORD PTR [rax], 0	# *e_11(D),
.L60:
	mov	rax, QWORD PTR [rbp-24]	# D.3892, _array
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	coGrowArray, .-coGrowArray
	.globl	coResizeArray
	.type	coResizeArray, @function
coResizeArray:
.LFB14:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 96	#,
	mov	QWORD PTR [rbp-24], rdi	# e, e
	mov	QWORD PTR [rbp-32], rsi	# array, array
	mov	QWORD PTR [rbp-40], rdx	# ext_size, ext_size
	mov	DWORD PTR [rbp-44], ecx	# new_size, new_size
	mov	DWORD PTR [rbp-48], r8d	# curr_count, curr_count
	mov	DWORD PTR [rbp-52], r9d	# def_size, def_size
	mov	eax, DWORD PTR [rbp+32]	# tmp67, flag
	mov	BYTE PTR [rbp-56], al	# flag, tmp67
	cmp	QWORD PTR [rbp-40], 0	# ext_size,
	je	.L62	#,
	cmp	DWORD PTR [rbp-52], 0	# def_size,
	je	.L62	#,
	cmp	QWORD PTR [rbp+24], 0	# item_size,
	jne	.L63	#,
.L62:
	cmp	QWORD PTR [rbp-24], 0	# e,
	je	.L64	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp68, e
	mov	DWORD PTR [rax], 18	# *e_7(D),
.L64:
	mov	eax, 0	# D.3864,
	jmp	.L65	#
.L63:
	mov	rax, QWORD PTR [rbp-40]	# tmp69, ext_size
	mov	eax, DWORD PTR [rax]	# D.3865, *ext_size_2(D)
	cmp	eax, DWORD PTR [rbp-44]	# D.3865, new_size
	jne	.L66	#,
	cmp	QWORD PTR [rbp-24], 0	# e,
	je	.L67	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, e
	mov	DWORD PTR [rax], 0	# *e_7(D),
.L67:
	mov	rax, QWORD PTR [rbp-32]	# D.3864, array
	jmp	.L65	#
.L66:
	mov	rax, QWORD PTR [rbp-40]	# tmp71, ext_size
	mov	eax, DWORD PTR [rax]	# D.3870, *ext_size_2(D)
	cmp	eax, DWORD PTR [rbp-44]	# D.3870, new_size
	jae	.L68	#,
	movzx	ecx, BYTE PTR [rbp-56]	# D.3873, flag
	mov	eax, DWORD PTR [rbp-44]	# tmp72, new_size
	lea	edi, [rax-1]	# D.3874,
	mov	r9d, DWORD PTR [rbp-52]	# tmp73, def_size
	mov	r8d, DWORD PTR [rbp-48]	# tmp74, curr_count
	mov	rdx, QWORD PTR [rbp-40]	# tmp75, ext_size
	mov	rsi, QWORD PTR [rbp-32]	# tmp76, array
	mov	rax, QWORD PTR [rbp-24]	# tmp77, e
	mov	DWORD PTR [rsp+16], ecx	#, D.3873
	mov	rcx, QWORD PTR [rbp+24]	# tmp78, item_size
	mov	QWORD PTR [rsp+8], rcx	#, tmp78
	mov	ecx, DWORD PTR [rbp+16]	# tmp79, max_size
	mov	DWORD PTR [rsp], ecx	#, tmp79
	mov	ecx, edi	#, D.3874
	mov	rdi, rax	#, tmp77
	call	coGrowArray	#
	mov	QWORD PTR [rbp-8], rax	# new_array, tmp80
	mov	rax, QWORD PTR [rbp-8]	# D.3864, new_array
	jmp	.L65	#
.L68:
	mov	eax, DWORD PTR [rbp-44]	# D.3875, new_size
	mov	rsi, rax	# D.3876, D.3875
	imul	rsi, QWORD PTR [rbp+24]	# D.3876, item_size
	mov	rax, QWORD PTR [rbp-32]	# tmp81, array
	mov	ecx, 283	#,
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	rdi, rax	#, tmp81
	call	coRealloc	#
	mov	QWORD PTR [rbp-16], rax	# new_array, tmp82
	cmp	QWORD PTR [rbp-16], 0	# new_array,
	jne	.L69	#,
	cmp	DWORD PTR [rbp-44], 0	# new_size,
	je	.L69	#,
	cmp	QWORD PTR [rbp-24], 0	# e,
	je	.L70	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp83, e
	mov	DWORD PTR [rax], 22	# *e_7(D),
.L70:
	mov	rax, QWORD PTR [rbp-16]	# D.3864, new_array
	jmp	.L65	#
.L69:
	mov	rax, QWORD PTR [rbp-40]	# tmp84, ext_size
	mov	edx, DWORD PTR [rbp-44]	# tmp85, new_size
	mov	DWORD PTR [rax], edx	# *ext_size_2(D), tmp85
	mov	rax, QWORD PTR [rbp-16]	# D.3864, new_array
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	coResizeArray, .-coResizeArray
	.globl	coFill4fv
	.type	coFill4fv, @function
coFill4fv:
.LFB15:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# tab, tab
	movss	DWORD PTR [rbp-12], xmm0	# v0, v0
	movss	DWORD PTR [rbp-16], xmm1	# v1, v1
	movss	DWORD PTR [rbp-20], xmm2	# v2, v2
	movss	DWORD PTR [rbp-24], xmm3	# v3, v3
	cmp	QWORD PTR [rbp-8], 0	# tab,
	je	.L71	#,
	mov	rdx, QWORD PTR [rbp-8]	# tmp62, tab
	mov	eax, DWORD PTR [rbp-12]	# tmp63, v0
	mov	DWORD PTR [rdx], eax	# *tab_1(D), tmp63
	mov	rax, QWORD PTR [rbp-8]	# tmp64, tab
	lea	rdx, [rax+4]	# D.3855,
	mov	eax, DWORD PTR [rbp-16]	# tmp65, v1
	mov	DWORD PTR [rdx], eax	# *D.3855_3, tmp65
	mov	rax, QWORD PTR [rbp-8]	# tmp66, tab
	lea	rdx, [rax+8]	# D.3856,
	mov	eax, DWORD PTR [rbp-20]	# tmp67, v2
	mov	DWORD PTR [rdx], eax	# *D.3856_5, tmp67
	mov	rax, QWORD PTR [rbp-8]	# tmp68, tab
	lea	rdx, [rax+12]	# D.3857,
	mov	eax, DWORD PTR [rbp-24]	# tmp69, v3
	mov	DWORD PTR [rdx], eax	# *D.3857_7, tmp69
.L71:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	coFill4fv, .-coFill4fv
	.globl	coFill3fv
	.type	coFill3fv, @function
coFill3fv:
.LFB16:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# tab, tab
	movss	DWORD PTR [rbp-12], xmm0	# v0, v0
	movss	DWORD PTR [rbp-16], xmm1	# v1, v1
	movss	DWORD PTR [rbp-20], xmm2	# v2, v2
	cmp	QWORD PTR [rbp-8], 0	# tab,
	je	.L73	#,
	mov	rdx, QWORD PTR [rbp-8]	# tmp61, tab
	mov	eax, DWORD PTR [rbp-12]	# tmp62, v0
	mov	DWORD PTR [rdx], eax	# *tab_1(D), tmp62
	mov	rax, QWORD PTR [rbp-8]	# tmp63, tab
	lea	rdx, [rax+4]	# D.3851,
	mov	eax, DWORD PTR [rbp-16]	# tmp64, v1
	mov	DWORD PTR [rdx], eax	# *D.3851_3, tmp64
	mov	rax, QWORD PTR [rbp-8]	# tmp65, tab
	lea	rdx, [rax+8]	# D.3852,
	mov	eax, DWORD PTR [rbp-20]	# tmp66, v2
	mov	DWORD PTR [rdx], eax	# *D.3852_5, tmp66
.L73:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	coFill3fv, .-coFill3fv
	.globl	coRgbaToArray
	.type	coRgbaToArray, @function
coRgbaToArray:
.LFB17:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi	# rgba, rgba
	mov	QWORD PTR [rbp-16], rsi	# v, v
	cmp	QWORD PTR [rbp-16], 0	# v,
	je	.L75	#,
	mov	eax, DWORD PTR [rbp-4]	# tmp71, rgba
	shr	eax, 24	# D.3837,
	mov	edx, eax	# D.3838, D.3837
	mov	rax, QWORD PTR [rbp-16]	# tmp72, v
	mov	BYTE PTR [rax], dl	# *v_1(D), D.3838
	mov	rax, QWORD PTR [rbp-16]	# tmp73, v
	lea	rdx, [rax+1]	# D.3839,
	mov	eax, DWORD PTR [rbp-4]	# tmp74, rgba
	and	eax, 16711680	# D.3840,
	shr	eax, 16	# D.3841,
	mov	BYTE PTR [rdx], al	# *D.3839_5, D.3842
	mov	rax, QWORD PTR [rbp-16]	# tmp75, v
	lea	rdx, [rax+2]	# D.3843,
	mov	eax, DWORD PTR [rbp-4]	# tmp76, rgba
	and	eax, 65280	# D.3844,
	shr	eax, 8	# D.3845,
	mov	BYTE PTR [rdx], al	# *D.3843_9, D.3846
	mov	rax, QWORD PTR [rbp-16]	# tmp77, v
	lea	rdx, [rax+3]	# D.3847,
	mov	eax, DWORD PTR [rbp-4]	# tmp78, rgba
	mov	BYTE PTR [rdx], al	# *D.3847_13, D.3848
.L75:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	coRgbaToArray, .-coRgbaToArray
	.globl	coCopyCstr
	.type	coCopyCstr, @function
coCopyCstr:
.LFB18:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR [rbp-8], rdi	# cstr, cstr
	cmp	QWORD PTR [rbp-8], 0	# cstr,
	je	.L78	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, cstr
	mov	rdi, rax	#, tmp62
	call	strdup	#
	jmp	.L79	#
.L78:
	mov	eax, 0	# iftmp.0,
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	coCopyCstr, .-coCopyCstr
	.data
	.align 4
	.type	r2.3765, @object
	.size	r2.3765, 4
r2.3765:
	.long	2147483647
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
