	.file	"coUtils.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I include src/coUtils.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip asm/coUtils.asm -O1 -Wall -fverbose-asm
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
	.globl	coFileExist
	.type	coFileExist, @function
coFileExist:
.LFB77:
	.cfi_startproc
	mov	eax, 0	# D.4729,
	test	rdi, rdi	# path
	je	.L6	#,
	sub	rsp, 152	#,
	.cfi_def_cfa_offset 160
	mov	rdx, rsp	#,
	mov	rsi, rdi	#, path
	mov	edi, 1	#,
	call	__xstat	#
	test	eax, eax	# D.4757
	sete	al	#, D.4729
	add	rsp, 152	#,
	.cfi_def_cfa_offset 8
.L6:
	rep
	ret
	.cfi_endproc
.LFE77:
	.size	coFileExist, .-coFileExist
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s#%d,%s()[this=%p]: "
	.text
	.globl	__coError
	.type	__coError, @function
__coError:
.LFB78:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 224	#,
	.cfi_def_cfa_offset 240
	mov	QWORD PTR [rsp+88], r9	#,
	test	al, al	#
	je	.L8	#,
	movaps	XMMWORD PTR [rsp+96], xmm0	#,
	movaps	XMMWORD PTR [rsp+112], xmm1	#,
	movaps	XMMWORD PTR [rsp+128], xmm2	#,
	movaps	XMMWORD PTR [rsp+144], xmm3	#,
	movaps	XMMWORD PTR [rsp+160], xmm4	#,
	movaps	XMMWORD PTR [rsp+176], xmm5	#,
	movaps	XMMWORD PTR [rsp+192], xmm6	#,
	movaps	XMMWORD PTR [rsp+208], xmm7	#,
.L8:
	mov	rbx, r8	# format, format
	mov	QWORD PTR [rsp], rsi	#, this
	mov	r9, rdi	#, fname
	mov	r8d, ecx	#, line
	mov	rcx, rdx	#, file
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	fflush	#
	mov	DWORD PTR [rsp+24], 40	# MEM[(struct [1] *)&va].gp_offset,
	mov	DWORD PTR [rsp+28], 48	# MEM[(struct [1] *)&va].fp_offset,
	lea	rax, [rsp+240]	#,
	mov	QWORD PTR [rsp+32], rax	# MEM[(struct [1] *)&va].overflow_arg_area,
	lea	rax, [rsp+48]	#,
	mov	QWORD PTR [rsp+40], rax	# MEM[(struct [1] *)&va].reg_save_area,
	lea	rcx, [rsp+24]	#,
	mov	rdx, rbx	#, format
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__vfprintf_chk	#
	add	rsp, 224	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	__coError, .-__coError
	.section	.rodata.str1.1
.LC1:
	.string	"%s: "
	.text
	.globl	__coError2
	.type	__coError2, @function
__coError2:
.LFB79:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 208	#,
	.cfi_def_cfa_offset 224
	mov	QWORD PTR [rsp+64], r8	#,
	mov	QWORD PTR [rsp+72], r9	#,
	test	al, al	#
	je	.L11	#,
	movaps	XMMWORD PTR [rsp+80], xmm0	#,
	movaps	XMMWORD PTR [rsp+96], xmm1	#,
	movaps	XMMWORD PTR [rsp+112], xmm2	#,
	movaps	XMMWORD PTR [rsp+128], xmm3	#,
	movaps	XMMWORD PTR [rsp+144], xmm4	#,
	movaps	XMMWORD PTR [rsp+160], xmm5	#,
	movaps	XMMWORD PTR [rsp+176], xmm6	#,
	movaps	XMMWORD PTR [rsp+192], xmm7	#,
.L11:
	mov	rbx, rcx	# format, format
	mov	rcx, rdi	#, fname
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	fflush	#
	mov	DWORD PTR [rsp+8], 32	# MEM[(struct [1] *)&va].gp_offset,
	mov	DWORD PTR [rsp+12], 48	# MEM[(struct [1] *)&va].fp_offset,
	lea	rax, [rsp+224]	#,
	mov	QWORD PTR [rsp+16], rax	# MEM[(struct [1] *)&va].overflow_arg_area,
	lea	rax, [rsp+32]	#,
	mov	QWORD PTR [rsp+24], rax	# MEM[(struct [1] *)&va].reg_save_area,
	lea	rcx, [rsp+8]	#,
	mov	rdx, rbx	#, format
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__vfprintf_chk	#
	add	rsp, 208	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:
	.size	__coError2, .-__coError2
	.globl	coRandUnique
	.type	coRandUnique, @function
coRandUnique:
.LFB80:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, edi	# max, max
.L14:
	call	rand	#
	mov	edx, eax	# tmp64, D.4715
	sar	edx, 31	# tmp64,
	idiv	ebx	# max
	mov	eax, edx	# r, tmp64
	cmp	edx, DWORD PTR r2.4470[rip]	# tmp64, r2
	je	.L14	#,
	mov	DWORD PTR r2.4470[rip], edx	# r2, r
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE80:
	.size	coRandUnique, .-coRandUnique
	.section	.rodata.str1.1
.LC2:
	.string	"rb"
	.text
	.globl	coLoadFileIntoArray
	.type	coLoadFileIntoArray, @function
coLoadFileIntoArray:
.LFB81:
	.cfi_startproc
	mov	QWORD PTR [rsp-32], rbx	#,
	mov	QWORD PTR [rsp-24], rbp	#,
	mov	QWORD PTR [rsp-16], r12	#,
	mov	QWORD PTR [rsp-8], r13	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	mov	rbx, rdi	# path, path
	mov	rbp, rsi	# e, e
	test	rdi, rdi	# path
	je	.L18	#,
	call	coFileExist	#
	test	al, al	# D.4669
	jne	.L19	#,
.L18:
	test	rbp, rbp	# e
	.p2align 4,,3
	je	.L30	#,
	mov	DWORD PTR [rbp+0], 6	# *e_5(D),
	mov	ebx, 0	# buf,
	jmp	.L20	#
.L19:
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rbx	#, path
	call	fopen	#
	mov	r12, rax	# file,
	test	rax, rax	# file
	jne	.L21	#,
	test	rbp, rbp	# e
	je	.L31	#,
	mov	DWORD PTR [rbp+0], 7	# *e_5(D),
	mov	ebx, 0	# buf,
	jmp	.L20	#
.L21:
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, file
	call	fseek	#
	test	eax, eax	# D.4677
	je	.L22	#,
	test	rbp, rbp	# e
	je	.L23	#,
	mov	DWORD PTR [rbp+0], 8	# *e_5(D),
.L23:
	mov	rdi, r12	#, file
	call	fclose	#
	mov	ebx, 0	# buf,
	jmp	.L20	#
.L22:
	mov	rdi, r12	#, file
	call	ftell	#
	mov	r13, rax	# len,
	test	rax, rax	# len
	jg	.L24	#,
	test	rbp, rbp	# e
	je	.L25	#,
	mov	DWORD PTR [rbp+0], 9	# *e_5(D),
.L25:
	mov	rdi, r12	#, file
	call	fclose	#
	mov	ebx, 0	# buf,
	jmp	.L20	#
.L24:
	mov	rdi, rax	#, len
	call	malloc	#
	mov	rbx, rax	# buf,
	test	rax, rax	# buf
	jne	.L26	#,
	test	rbp, rbp	# e
	je	.L27	#,
	mov	DWORD PTR [rbp+0], 5	# *e_5(D),
.L27:
	mov	rdi, r12	#, file
	call	fclose	#
	jmp	.L20	#
.L26:
	mov	rcx, r12	#, file
	mov	edx, 1	#,
	mov	rsi, r13	#, len
	mov	rdi, rax	#, buf
	call	fread	#
	cmp	rax, 1	# D.4789,
	je	.L28	#,
	test	rbp, rbp	# e
	je	.L29	#,
	mov	DWORD PTR [rbp+0], 10	# *e_5(D),
.L29:
	mov	rdi, r12	#, file
	call	fclose	#
	mov	rdi, rbx	#, buf
	call	free	#
	mov	ebx, 0	# buf,
	jmp	.L20	#
.L28:
	mov	rdi, r12	#, file
	call	fclose	#
	jmp	.L20	#
.L30:
	mov	ebx, 0	# buf,
	jmp	.L20	#
.L31:
	mov	ebx, 0	# buf,
.L20:
	mov	rax, rbx	#, buf
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	coLoadFileIntoArray, .-coLoadFileIntoArray
	.globl	coGrowArray
	.type	coGrowArray, @function
coGrowArray:
.LFB82:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	r12, rdi	# e, e
	mov	rbp, rdx	# ext_size, ext_size
	mov	DWORD PTR [rsp+12], r8d	# %sfp, curr_count
	mov	edx, DWORD PTR [rsp+80]	# max_size, max_size
	movzx	r14d, BYTE PTR [rsp+96]	# flag, flag
	test	rbp, rbp	# ext_size
	je	.L34	#,
	mov	r15, rsi	# array, array
	mov	esi, DWORD PTR [rbp+0]	# new_size, *ext_size_3(D)
	cmp	esi, ecx	# new_size, new_pos
	ja	.L34	#,
	cmp	QWORD PTR [rsp+88], 0	# item_size,
	je	.L34	#,
	test	r9d, r9d	# def_size
	jne	.L47	#,
.L34:
	test	r12, r12	# e
	je	.L48	#,
	mov	DWORD PTR [r12], 15	# *e_14(D),
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L47:
	mov	ebx, esi	# new_size, new_size
.L35:
	test	ebx, ebx	# new_size
	jne	.L38	#,
	cmp	r9d, edx	# def_size, max_size
	jbe	.L49	#,
	test	r12, r12	# e
	je	.L50	#,
	mov	DWORD PTR [r12], 16	# *e_14(D),
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L38:
	lea	eax, [rbx+rbx]	# new_size,
	cmp	esi, eax	# new_size, new_size
	jae	.L40	#,
	cmp	ebx, eax	# new_size, new_size
	jae	.L40	#,
	cmp	edx, eax	# max_size, new_size
	.p2align 4,,2
	jae	.L51	#,
.L40:
	test	r12, r12	# e
	.p2align 4,,4
	je	.L52	#,
	mov	DWORD PTR [r12], 17	# *e_14(D),
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L49:
	mov	ebx, r9d	# new_size, def_size
	jmp	.L39	#
.L51:
	mov	ebx, eax	# new_size, new_size
.L39:
	cmp	ecx, ebx	# new_pos, new_size
	jae	.L35	#,
	test	r14b, -5	# flag,
	je	.L41	#,
	test	r14b, 1	# flag,
	je	.L42	#,
.L41:
	mov	esi, ebx	# new_size, new_size
	imul	rsi, QWORD PTR [rsp+88]	# tmp109, item_size
	mov	rdi, r15	#, array
	call	realloc	#
	mov	r13, rax	# _array,
	test	rax, rax	# _array
	jne	.L43	#,
	test	r12, r12	# e
	je	.L37	#,
	mov	DWORD PTR [r12], 19	# *e_14(D),
	jmp	.L37	#
.L43:
	test	r14b, 4	# flag,
	je	.L44	#,
	mov	edx, ebx	#, new_size
	sub	edx, DWORD PTR [rsp+12]	# tmp112, %sfp
	imul	rdx, QWORD PTR [rsp+88]	# tmp113, item_size
	mov	edi, DWORD PTR [rsp+12]	# curr_count, %sfp
	imul	rdi, QWORD PTR [rsp+88]	# tmp115, item_size
	add	rdi, rax	# tmp116, _array
	mov	esi, 0	#,
	call	memset	#
	jmp	.L44	#
.L42:
	test	r14b, 2	# flag,
	je	.L45	#,
	mov	edi, ebx	# new_size, new_size
	mov	rsi, QWORD PTR [rsp+88]	#, item_size
	call	calloc	#
	mov	r13, rax	# _array,
	test	rax, rax	# _array
	jne	.L46	#,
	test	r12, r12	# e
	je	.L37	#,
	mov	DWORD PTR [r12], 18	# *e_14(D),
	jmp	.L37	#
.L46:
	cmp	DWORD PTR [rsp+12], 0	# %sfp,
	je	.L53	#,
	test	r15, r15	# array
	je	.L53	#,
	mov	edx, DWORD PTR [rsp+12]	# curr_count, %sfp
	imul	rdx, QWORD PTR [rsp+88]	# tmp129, item_size
	mov	rsi, r15	#, array
	mov	rdi, rax	#, _array
	call	memcpy	#
	mov	rdi, r15	#, array
	call	free	#
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L45:
	test	r12, r12	# e
	je	.L54	#,
	mov	DWORD PTR [r12], 20	# *e_14(D),
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L44:
	mov	DWORD PTR [rbp+0], ebx	# *ext_size_3(D), new_size
	test	r12, r12	# e
	je	.L37	#,
	mov	DWORD PTR [r12], 0	# *e_14(D),
	jmp	.L37	#
.L48:
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L50:
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L52:
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L53:
	mov	r13d, 0	# _array,
	jmp	.L37	#
.L54:
	mov	r13d, 0	# _array,
.L37:
	mov	rax, r13	#, _array
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	mov	r14, QWORD PTR [rsp+56]	#,
	mov	r15, QWORD PTR [rsp+64]	#,
	add	rsp, 72	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	coGrowArray, .-coGrowArray
	.globl	coResizeArray
	.type	coResizeArray, @function
coResizeArray:
.LFB83:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# e, e
	mov	rbp, rdx	# ext_size, ext_size
	movzx	edx, BYTE PTR [rsp+80]	# flag, flag
	test	r9d, r9d	# def_size
	je	.L58	#,
	test	rbp, rbp	# ext_size
	je	.L58	#,
	cmp	QWORD PTR [rsp+72], 0	# item_size,
	jne	.L59	#,
.L58:
	test	rbx, rbx	# e
	je	.L64	#,
	mov	DWORD PTR [rbx], 15	# *e_10(D),
	mov	eax, 0	# array,
	jmp	.L60	#
.L59:
	mov	rax, rsi	# array, array
	mov	r12d, ecx	# new_size, new_size
	mov	ecx, DWORD PTR [rbp+0]	# D.4563, *ext_size_2(D)
	cmp	ecx, r12d	# D.4563, new_size
	jne	.L61	#,
	test	rdi, rdi	# e
	je	.L60	#,
	mov	DWORD PTR [rdi], 0	# *e_10(D),
	jmp	.L60	#
.L61:
	cmp	ecx, r12d	# D.4563, new_size
	jae	.L62	#,
	lea	ecx, [r12-1]	# tmp87,
	movzx	edx, dl	# flag, flag
	mov	DWORD PTR [rsp+16], edx	#, flag
	mov	rdx, QWORD PTR [rsp+72]	#, item_size
	mov	QWORD PTR [rsp+8], rdx	#,
	mov	edx, DWORD PTR [rsp+64]	# max_size, max_size
	mov	DWORD PTR [rsp], edx	#, max_size
	mov	rdx, rbp	#, ext_size
	call	coGrowArray	#
	jmp	.L60	#
.L62:
	mov	esi, r12d	# new_size, new_size
	imul	rsi, QWORD PTR [rsp+72]	# tmp90, item_size
	mov	rdi, rax	#, array
	call	realloc	#
	test	rax, rax	# new_array
	jne	.L63	#,
	test	r12d, r12d	# new_size
	je	.L63	#,
	test	rbx, rbx	# e
	.p2align 4,,2
	je	.L60	#,
	mov	DWORD PTR [rbx], 19	# *e_10(D),
	jmp	.L60	#
.L63:
	mov	DWORD PTR [rbp+0], r12d	# *ext_size_2(D), new_size
	jmp	.L60	#
.L64:
	mov	eax, 0	# array,
.L60:
	mov	rbx, QWORD PTR [rsp+32]	#,
	mov	rbp, QWORD PTR [rsp+40]	#,
	mov	r12, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:
	.size	coResizeArray, .-coResizeArray
	.globl	coFill4fv
	.type	coFill4fv, @function
coFill4fv:
.LFB84:
	.cfi_startproc
	test	rdi, rdi	# tab
	je	.L67	#,
	movss	DWORD PTR [rdi], xmm0	# *tab_1(D), v0
	movss	DWORD PTR [rdi+4], xmm1	# MEM[(float *)tab_1(D) + 4B], v1
	movss	DWORD PTR [rdi+8], xmm2	# MEM[(float *)tab_1(D) + 8B], v2
	movss	DWORD PTR [rdi+12], xmm3	# MEM[(float *)tab_1(D) + 12B], v3
.L67:
	rep
	ret
	.cfi_endproc
.LFE84:
	.size	coFill4fv, .-coFill4fv
	.globl	coFill3fv
	.type	coFill3fv, @function
coFill3fv:
.LFB85:
	.cfi_startproc
	test	rdi, rdi	# tab
	je	.L69	#,
	movss	DWORD PTR [rdi], xmm0	# *tab_1(D), v0
	movss	DWORD PTR [rdi+4], xmm1	# MEM[(float *)tab_1(D) + 4B], v1
	movss	DWORD PTR [rdi+8], xmm2	# MEM[(float *)tab_1(D) + 8B], v2
.L69:
	rep
	ret
	.cfi_endproc
.LFE85:
	.size	coFill3fv, .-coFill3fv
	.globl	coRgbaToArray
	.type	coRgbaToArray, @function
coRgbaToArray:
.LFB86:
	.cfi_startproc
	test	rsi, rsi	# v
	je	.L71	#,
	mov	eax, edi	# tmp70, rgba
	shr	eax, 24	# tmp70,
	mov	BYTE PTR [rsi], al	# *v_1(D), tmp70
	mov	eax, edi	# tmp72, rgba
	shr	eax, 16	# tmp72,
	mov	BYTE PTR [rsi+1], al	# MEM[(u8 *)v_1(D) + 1B], tmp72
	mov	rdx, rdi	#,
	movzx	eax, dh	# tmp74,
	mov	BYTE PTR [rsi+2], al	# MEM[(u8 *)v_1(D) + 2B], tmp74
	mov	BYTE PTR [rsi+3], dil	# MEM[(u8 *)v_1(D) + 3B], rgba
.L71:
	rep
	ret
	.cfi_endproc
.LFE86:
	.size	coRgbaToArray, .-coRgbaToArray
	.globl	CO_NULL_STR
	.section	.rodata.str1.1
.LC3:
	.string	"(null)"
	.data
	.align 8
	.type	CO_NULL_STR, @object
	.size	CO_NULL_STR, 8
CO_NULL_STR:
	.quad	.LC3
	.globl	CO_FALSE_STR
	.section	.rodata.str1.1
.LC4:
	.string	"false"
	.data
	.align 8
	.type	CO_FALSE_STR, @object
	.size	CO_FALSE_STR, 8
CO_FALSE_STR:
	.quad	.LC4
	.globl	CO_TRUE_STR
	.section	.rodata.str1.1
.LC5:
	.string	"true"
	.data
	.align 8
	.type	CO_TRUE_STR, @object
	.size	CO_TRUE_STR, 8
CO_TRUE_STR:
	.quad	.LC5
	.align 4
	.type	r2.4470, @object
	.size	r2.4470, 4
r2.4470:
	.long	2147483647
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
