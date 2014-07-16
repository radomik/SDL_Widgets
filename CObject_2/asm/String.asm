	.file	"String.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I include src/String.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip asm/String.asm -O1 -Wall -fverbose-asm
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.text
	.globl	String_vtoString
	.type	String_vtoString, @function
String_vtoString:
.LFB67:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+8]	# D.3950, MEM[(const struct String *)vthis_1(D)].m_buffer
	test	rax, rax	# D.3950
	mov	edx, OFFSET FLAT:.LC0	# tmp63,
	cmove	rax, rdx	# D.3950,, D.3950, tmp63
	ret
	.cfi_endproc
.LFE67:
	.size	String_vtoString, .-String_vtoString
	.type	String_setTextLen, @function
String_setTextLen:
.LFB60:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# text, text
	cmp	QWORD PTR [rdi+16], rdx	# this_1(D)->m_size, len
	ja	.L4	#,
	mov	QWORD PTR [rdi+24], rdx	# this_1(D)->m_len, len
	lea	r12, [rdx+1]	# len,
	mov	rdi, QWORD PTR [rdi+8]	# this_1(D)->m_buffer, this_1(D)->m_buffer
	mov	rsi, r12	#, len
	call	realloc	#
	mov	QWORD PTR [rbx+8], rax	# this_1(D)->m_buffer, D.3825
	mov	QWORD PTR [rbx+16], r12	# this_1(D)->m_size, len
	jmp	.L5	#
.L4:
	mov	QWORD PTR [rdi+24], rdx	# this_1(D)->m_len, len
.L5:
	mov	rdx, QWORD PTR [rbx+16]	# this_1(D)->m_size, this_1(D)->m_size
	mov	rdi, QWORD PTR [rbx+8]	# this_1(D)->m_buffer, this_1(D)->m_buffer
	mov	rsi, rbp	#, text
	call	strncpy	#
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	String_setTextLen, .-String_setTextLen
	.type	String_findLastOfLength, @function
String_findLastOfLength:
.LFB62:
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
	mov	rbp, rsi	# text, text
	mov	rbx, -1	# i,
	test	rsi, rsi	# text
	je	.L8	#,
	mov	r12, rdx	# text_len, text_len
	test	rdx, rdx	# text_len
	jne	.L9	#,
	cmp	QWORD PTR [rdi+24], 1	# this_6(D)->m_len,
	sbb	rbx, rbx	# i
	not	rbx	# i
	jmp	.L8	#
.L9:
	mov	rax, QWORD PTR [rdi+24]	# D.3701, this_6(D)->m_len
	mov	rbx, -1	# i,
	test	rax, rax	# D.3701
	je	.L8	#,
	cmp	rdx, rax	# text_len, D.3701
	ja	.L8	#,
	mov	rbx, rax	# i, D.3701
	sub	rbx, rdx	# i, text_len
	mov	r13, QWORD PTR [rdi+8]	# D.3708, this_6(D)->m_buffer
.L10:
	lea	rdi, [r13+0+rbx]	# tmp73,
	mov	rdx, r12	#, text_len
	mov	rsi, rbp	#, text
	call	strncmp	#
	test	eax, eax	# tmp74
	je	.L8	#,
	test	rbx, rbx	# i
	je	.L15	#,
	sub	rbx, 1	# i,
	.p2align 4,,2
	jmp	.L10	#
.L15:
	mov	rbx, -1	# i,
.L8:
	mov	rax, rbx	#, i
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.size	String_findLastOfLength, .-String_findLastOfLength
	.globl	String_vdestroy
	.type	String_vdestroy, @function
String_vdestroy:
.LFB68:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+8]	# D.3850, MEM[(struct String *)vthis_1(D)].m_buffer
	test	rdi, rdi	# D.3850
	je	.L18	#,
	call	free	#
	mov	QWORD PTR [rbx+8], 0	# MEM[(struct String *)vthis_1(D)].m_buffer,
.L18:
	mov	QWORD PTR [rbx+16], 0	# MEM[(struct String *)vthis_1(D)].m_size,
	mov	QWORD PTR [rbx+24], 0	# MEM[(struct String *)vthis_1(D)].m_len,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	String_vdestroy, .-String_vdestroy
	.globl	String_new
	.type	String_new, @function
String_new:
.LFB63:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	QWORD PTR [rbx+8], 0	# this_1(D)->m_buffer,
	mov	QWORD PTR [rbx+16], 0	# this_1(D)->m_size,
	mov	QWORD PTR [rbx+24], 0	# this_1(D)->m_len,
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	String_new, .-String_new
	.globl	String_newText
	.type	String_newText, @function
String_newText:
.LFB64:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# this, this
	mov	r12, rsi	# text, text
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	test	r12, r12	# text
	jne	.L23	#,
	mov	QWORD PTR [rbx+8], 0	# this_1(D)->m_buffer,
	mov	QWORD PTR [rbx+16], 0	# this_1(D)->m_size,
	mov	QWORD PTR [rbx+24], 0	# this_1(D)->m_len,
	jmp	.L24	#
.L23:
	mov	rdi, r12	# text, text
	mov	eax, 0	# tmp70,
	mov	rcx, -1	# tmp69,
	repnz scasb
	mov	rbp, rcx	# tmp67, tmp66
	not	rbp	# tmp67
	lea	rax, [rbp-1]	# D.3880,
	mov	QWORD PTR [rbx+24], rax	# this_1(D)->m_len, D.3880
	mov	QWORD PTR [rbx+16], rbp	# this_1(D)->m_size, tmp67
	mov	rdi, rbp	#, tmp67
	call	malloc	#
	mov	QWORD PTR [rbx+8], rax	# this_1(D)->m_buffer, tmp71
	mov	rdx, rbp	#, tmp67
	mov	rsi, r12	#, text
	mov	rdi, rax	#, tmp71
	call	strncpy	#
.L24:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.size	String_newText, .-String_newText
	.globl	String_newLen
	.type	String_newLen, @function
String_newLen:
.LFB65:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# length, length
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	test	rbp, rbp	# length
	jne	.L27	#,
	mov	QWORD PTR [rbx+8], 0	# this_1(D)->m_buffer,
	mov	QWORD PTR [rbx+16], 0	# this_1(D)->m_size,
	mov	QWORD PTR [rbx+24], 0	# this_1(D)->m_len,
	jmp	.L28	#
.L27:
	mov	QWORD PTR [rbx+24], rbp	# this_1(D)->m_len, length
	lea	rdi, [rbp+1]	# D.3871,
	mov	QWORD PTR [rbx+16], rdi	# this_1(D)->m_size, D.3871
	call	malloc	#
	mov	QWORD PTR [rbx+8], rax	# this_1(D)->m_buffer, tmp64
	mov	BYTE PTR [rax], 0	# MEM[(char *)D.3873_5],
.L28:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE65:
	.size	String_newLen, .-String_newLen
	.globl	String_copy
	.type	String_copy, @function
String_copy:
.LFB66:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# src, src
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	test	rbp, rbp	# src
	je	.L31	#,
	cmp	QWORD PTR [rbp+8], 0	# src_2(D)->m_buffer,
	jne	.L32	#,
.L31:
	mov	QWORD PTR [rbx+8], 0	# this_1(D)->m_buffer,
	mov	QWORD PTR [rbx+16], 0	# this_1(D)->m_size,
	mov	QWORD PTR [rbx+24], 0	# this_1(D)->m_len,
	jmp	.L33	#
.L32:
	mov	rax, QWORD PTR [rbp+24]	# D.3861, src_2(D)->m_len
	mov	QWORD PTR [rbx+24], rax	# this_1(D)->m_len, D.3861
	mov	r12, QWORD PTR [rbp+24]	# D.3862, src_2(D)->m_len
	add	r12, 1	# D.3862,
	mov	QWORD PTR [rbx+16], r12	# this_1(D)->m_size, D.3862
	mov	rdi, r12	#, D.3862
	call	malloc	#
	mov	QWORD PTR [rbx+8], rax	# this_1(D)->m_buffer, tmp69
	mov	rsi, QWORD PTR [rbp+8]	# src_2(D)->m_buffer, src_2(D)->m_buffer
	mov	rdx, r12	#, D.3862
	mov	rdi, rax	#, tmp69
	call	strncpy	#
.L33:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:
	.size	String_copy, .-String_copy
	.globl	String_cstr
	.type	String_cstr, @function
String_cstr:
.LFB69:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+8]	# D.3843, this_2(D)->m_buffer
	test	rax, rax	# D.3843
	mov	edx, OFFSET FLAT:.LC0	# tmp63,
	cmove	rax, rdx	# D.3843,, D.3843, tmp63
	ret
	.cfi_endproc
.LFE69:
	.size	String_cstr, .-String_cstr
	.globl	String_length
	.type	String_length, @function
String_length:
.LFB70:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+24]	# this_1(D)->m_len, this_1(D)->m_len
	ret
	.cfi_endproc
.LFE70:
	.size	String_length, .-String_length
	.globl	String_size
	.type	String_size, @function
String_size:
.LFB71:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+24]	# this_1(D)->m_len, this_1(D)->m_len
	ret
	.cfi_endproc
.LFE71:
	.size	String_size, .-String_size
	.globl	String_capacity
	.type	String_capacity, @function
String_capacity:
.LFB72:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+16]	# this_1(D)->m_size, this_1(D)->m_size
	ret
	.cfi_endproc
.LFE72:
	.size	String_capacity, .-String_capacity
	.globl	String_empty
	.type	String_empty, @function
String_empty:
.LFB73:
	.cfi_startproc
	cmp	QWORD PTR [rdi+24], 0	# this_1(D)->m_len,
	sete	al	#, tmp65
	ret
	.cfi_endproc
.LFE73:
	.size	String_empty, .-String_empty
	.globl	String_setText
	.type	String_setText, @function
String_setText:
.LFB74:
	.cfi_startproc
	mov	r8, rdi	# this, this
	test	rsi, rsi	# str
	je	.L42	#,
	cmp	BYTE PTR [rsi], 0	# *str_1(D),
	je	.L42	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rdi, rsi	# str, str
	mov	eax, 0	# tmp70,
	mov	rcx, -1	# tmp69,
	repnz scasb
	not	rcx	# tmp67
	lea	rdx, [rcx-1]	# D.3832,
	mov	rdi, r8	#, this
	call	String_setTextLen	#
	jmp	.L41	#
.L42:
	.cfi_def_cfa_offset 8
	cmp	QWORD PTR [r8+24], 0	# this_4(D)->m_len,
	je	.L46	#,
	mov	QWORD PTR [r8+24], 0	# this_4(D)->m_len,
	mov	rax, QWORD PTR [r8+8]	# D.3976, this_4(D)->m_buffer
	mov	BYTE PTR [rax], 0	# *D.3976_10,
	ret
.L41:
	.cfi_def_cfa_offset 16
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L46:
	rep
	ret
	.cfi_endproc
.LFE74:
	.size	String_setText, .-String_setText
	.globl	String_set
	.type	String_set, @function
String_set:
.LFB75:
	.cfi_startproc
	mov	rdx, QWORD PTR [rsi+24]	# D.3968, str_1(D)->m_len
	test	rdx, rdx	# D.3968
	jne	.L48	#,
	cmp	QWORD PTR [rdi+24], 0	# this_3(D)->m_len,
	je	.L52	#,
	mov	QWORD PTR [rdi+24], 0	# this_3(D)->m_len,
	mov	rax, QWORD PTR [rdi+8]	# D.3971, this_3(D)->m_buffer
	mov	BYTE PTR [rax], 0	# *D.3971_14,
	ret
.L48:
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rsi, QWORD PTR [rsi+8]	# str_1(D)->m_buffer, str_1(D)->m_buffer
	call	String_setTextLen	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L52:
	rep
	ret
	.cfi_endproc
.LFE75:
	.size	String_set, .-String_set
	.globl	String_clear
	.type	String_clear, @function
String_clear:
.LFB76:
	.cfi_startproc
	cmp	QWORD PTR [rdi+24], 0	# this_1(D)->m_len,
	je	.L53	#,
	mov	QWORD PTR [rdi+24], 0	# this_1(D)->m_len,
	mov	rax, QWORD PTR [rdi+8]	# D.3814, this_1(D)->m_buffer
	mov	BYTE PTR [rax], 0	# *D.3814_3,
.L53:
	rep
	ret
	.cfi_endproc
.LFE76:
	.size	String_clear, .-String_clear
	.globl	String_wipe
	.type	String_wipe, @function
String_wipe:
.LFB77:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	rdx, QWORD PTR [rdi+16]	# D.3795, this_1(D)->m_size
	test	rdx, rdx	# D.3795
	je	.L55	#,
	mov	rdi, QWORD PTR [rdi+8]	# this_1(D)->m_buffer, this_1(D)->m_buffer
	mov	esi, 0	#,
	call	memset	#
	mov	QWORD PTR [rbx+24], 0	# this_1(D)->m_len,
.L55:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE77:
	.size	String_wipe, .-String_wipe
	.globl	String_vprintf
	.type	String_vprintf, @function
String_vprintf:
.LFB78:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# this, this
	mov	r12, rsi	# _offset, _offset
	mov	ebp, 0	# ret_val,
	cmp	QWORD PTR [rdi+24], rsi	# this_5(D)->m_len, _offset
	jb	.L59	#,
	mov	r13, rdx	# format, format
	mov	rax, QWORD PTR [rcx]	# tmp80,* ap
	mov	QWORD PTR [rsp+8], rax	#, tmp80
	mov	rax, QWORD PTR [rcx+8]	# tmp81,
	mov	QWORD PTR [rsp+16], rax	#, tmp81
	mov	rax, QWORD PTR [rcx+16]	# tmp82,
	mov	QWORD PTR [rsp+24], rax	#, tmp82
	mov	rdi, QWORD PTR [rdi+8]	# str, this_5(D)->m_buffer
	test	rdi, rdi	# str
	je	.L65	#,
	add	rdi, rsi	# str, _offset
	mov	rsi, QWORD PTR [rbx+16]	# size, this_5(D)->m_size
	sub	rsi, r12	# size, _offset
	jmp	.L60	#
.L65:
	mov	esi, 0	# size,
.L60:
	mov	r9, rcx	#, ap
	mov	r8, r13	#, format
	mov	rcx, -1	#,
	mov	edx, 1	#,
	call	__vsnprintf_chk	#
	mov	ebp, eax	# ret_val,
	test	eax, eax	# ret_val
	jle	.L61	#,
	movsx	r14, eax	# ret_val, ret_val
	add	r14, r12	# size, _offset
	cmp	r14, QWORD PTR [rbx+16]	# size, this_5(D)->m_size
	jb	.L62	#,
	lea	r15, [r14+1]	# size,
	mov	rdi, QWORD PTR [rbx+8]	# this_5(D)->m_buffer, this_5(D)->m_buffer
	mov	rsi, r15	#, size
	call	realloc	#
	test	rax, rax	# str
	je	.L59	#,
	mov	QWORD PTR [rbx+16], r15	# this_5(D)->m_size, size
	mov	QWORD PTR [rbx+8], rax	# this_5(D)->m_buffer, str
	mov	QWORD PTR [rbx+24], r14	# this_5(D)->m_len, size
	mov	rsi, r15	# tmp87, size
	sub	rsi, r12	# tmp87, _offset
	lea	rdi, [rax+r12]	# tmp88,
	lea	r9, [rsp+8]	#,
	mov	r8, r13	#, format
	mov	rcx, -1	#,
	mov	edx, 1	#,
	call	__vsnprintf_chk	#
	mov	ebp, eax	# ret_val,
	jmp	.L59	#
.L61:
	test	eax, eax	# ret_val
	js	.L59	#,
.L62:
	movsx	rax, ebp	# ret_val, ret_val
	add	r12, rax	# tmp90, ret_val
	mov	QWORD PTR [rbx+24], r12	# this_5(D)->m_len, tmp90
.L59:
	mov	eax, ebp	#, ret_val
	mov	rbx, QWORD PTR [rsp+40]	#,
	mov	rbp, QWORD PTR [rsp+48]	#,
	mov	r12, QWORD PTR [rsp+56]	#,
	mov	r13, QWORD PTR [rsp+64]	#,
	mov	r14, QWORD PTR [rsp+72]	#,
	mov	r15, QWORD PTR [rsp+80]	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	String_vprintf, .-String_vprintf
	.globl	String_printf
	.type	String_printf, @function
String_printf:
.LFB79:
	.cfi_startproc
	sub	rsp, 216	#,
	.cfi_def_cfa_offset 224
	mov	QWORD PTR [rsp+56], rcx	#,
	mov	QWORD PTR [rsp+64], r8	#,
	mov	QWORD PTR [rsp+72], r9	#,
	test	al, al	#
	je	.L68	#,
	movaps	XMMWORD PTR [rsp+80], xmm0	#,
	movaps	XMMWORD PTR [rsp+96], xmm1	#,
	movaps	XMMWORD PTR [rsp+112], xmm2	#,
	movaps	XMMWORD PTR [rsp+128], xmm3	#,
	movaps	XMMWORD PTR [rsp+144], xmm4	#,
	movaps	XMMWORD PTR [rsp+160], xmm5	#,
	movaps	XMMWORD PTR [rsp+176], xmm6	#,
	movaps	XMMWORD PTR [rsp+192], xmm7	#,
.L68:
	mov	eax, 0	# ret_val,
	cmp	QWORD PTR [rdi+24], rsi	# this_2(D)->m_len, _offset
	jb	.L69	#,
	mov	DWORD PTR [rsp+8], 24	# MEM[(struct [1] *)&ap].gp_offset,
	mov	DWORD PTR [rsp+12], 48	# MEM[(struct [1] *)&ap].fp_offset,
	lea	rax, [rsp+224]	#,
	mov	QWORD PTR [rsp+16], rax	# MEM[(struct [1] *)&ap].overflow_arg_area,
	lea	rax, [rsp+32]	#,
	mov	QWORD PTR [rsp+24], rax	# MEM[(struct [1] *)&ap].reg_save_area,
	lea	rcx, [rsp+8]	#,
	call	String_vprintf	#
.L69:
	add	rsp, 216	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:
	.size	String_printf, .-String_printf
	.globl	String_appendText
	.type	String_appendText, @function
String_appendText:
.LFB80:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# str, str
	test	rsi, rsi	# str
	je	.L73	#,
	cmp	BYTE PTR [rsi], 0	# *str_1(D),
	je	.L73	#,
	mov	rdi, rsi	# str, str
	mov	eax, 0	# tmp76,
	mov	rcx, -1	# tmp75,
	repnz scasb
	not	rcx	# tmp73
	mov	rax, QWORD PTR [rbx+24]	# this_4(D)->m_len, this_4(D)->m_len
	lea	rsi, [rcx-1+rax]	# D.4086,
	mov	QWORD PTR [rbx+24], rsi	# this_4(D)->m_len, D.4086
	cmp	rsi, QWORD PTR [rbx+16]	# D.4086, this_4(D)->m_size
	jb	.L74	#,
	add	rsi, 1	# D.4084,
	mov	QWORD PTR [rbx+16], rsi	# this_4(D)->m_size, D.4084
	mov	rdi, QWORD PTR [rbx+8]	# this_4(D)->m_buffer, this_4(D)->m_buffer
	call	realloc	#
	mov	QWORD PTR [rbx+8], rax	# this_4(D)->m_buffer, D.4082
.L74:
	mov	rdi, QWORD PTR [rbx+8]	# this_4(D)->m_buffer, this_4(D)->m_buffer
	mov	rsi, rbp	#, str
	call	strcat	#
.L73:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE80:
	.size	String_appendText, .-String_appendText
	.globl	String_append
	.type	String_append, @function
String_append:
.LFB81:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rax, QWORD PTR [rsi+24]	# D.4012, str_1(D)->m_len
	test	rax, rax	# D.4012
	je	.L77	#,
	mov	rbp, QWORD PTR [rsi+8]	# D.3742, str_1(D)->m_buffer
	add	rax, QWORD PTR [rdi+24]	# D.4097, this_5(D)->m_len
	mov	QWORD PTR [rdi+24], rax	# this_5(D)->m_len, D.4097
	cmp	rax, QWORD PTR [rdi+16]	# D.4097, this_5(D)->m_size
	jb	.L78	#,
	lea	rsi, [rax+1]	# D.4095,
	mov	QWORD PTR [rdi+16], rsi	# this_5(D)->m_size, D.4095
	mov	rdi, QWORD PTR [rdi+8]	# this_5(D)->m_buffer, this_5(D)->m_buffer
	call	realloc	#
	mov	QWORD PTR [rbx+8], rax	# this_5(D)->m_buffer, D.4093
.L78:
	mov	rdi, QWORD PTR [rbx+8]	# this_5(D)->m_buffer, this_5(D)->m_buffer
	mov	rsi, rbp	#, D.3742
	call	strcat	#
.L77:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	String_append, .-String_append
	.globl	String_cutLast
	.type	String_cutLast, @function
String_cutLast:
.LFB82:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+24]	# i, this_3(D)->m_len
	test	rax, rax	# i
	je	.L81	#,
	lea	rdx, [rax-1]	# i,
	mov	rcx, QWORD PTR [rdi+8]	# D.3730, this_3(D)->m_buffer
	lea	r8, [rcx+rdx]	# D.3731,
	cmp	BYTE PTR [r8], sil	# *D.3731_23, ch
	je	.L82	#,
	test	rdx, rdx	# i
	jne	.L85	#,
	rep
	ret
.L82:
	mov	BYTE PTR [r8], 0	# *D.3731_27,
	mov	QWORD PTR [rdi+24], rdx	# this_3(D)->m_len, i
	mov	rax, rdx	# i, i
	ret
.L86:
	test	rdx, rdx	# i
	je	.L81	#,
.L85:
	sub	rdx, 1	# i,
	lea	r8, [rcx+rdx]	# D.3731,
	cmp	BYTE PTR [rcx+rdx], sil	# MEM[base: D.3730_22, index: i_16, offset: 0B], ch
	jne	.L86	#,
	jmp	.L82	#
.L81:
	rep
	ret
	.cfi_endproc
.LFE82:
	.size	String_cutLast, .-String_cutLast
	.globl	String_cutAtIndex
	.type	String_cutAtIndex, @function
String_cutAtIndex:
.LFB83:
	.cfi_startproc
	cmp	QWORD PTR [rdi+24], rsi	# this_1(D)->m_len, index
	jbe	.L88	#,
	mov	rax, QWORD PTR [rdi+8]	# this_1(D)->m_buffer, this_1(D)->m_buffer
	mov	BYTE PTR [rax+rsi], 0	# *D.3723_5,
	mov	QWORD PTR [rdi+24], rsi	# this_1(D)->m_len, index
.L88:
	mov	rax, QWORD PTR [rdi+24]	# this_1(D)->m_len, this_1(D)->m_len
	ret
	.cfi_endproc
.LFE83:
	.size	String_cutAtIndex, .-String_cutAtIndex
	.globl	String_findLastOfText
	.type	String_findLastOfText, @function
String_findLastOfText:
.LFB84:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	r9, rdi	# this, this
	mov	rdi, rsi	# text, text
	mov	eax, 0	# tmp69,
	mov	rcx, -1	# tmp68,
	repnz scasb
	not	rcx	# tmp66
	lea	rdx, [rcx-1]	# D.3717,
	mov	rdi, r9	#, this
	call	String_findLastOfLength	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	String_findLastOfText, .-String_findLastOfText
	.globl	String_findLastOf
	.type	String_findLastOf, @function
String_findLastOf:
.LFB85:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rdx, QWORD PTR [rsi+24]	# string_1(D)->m_len, string_1(D)->m_len
	mov	rsi, QWORD PTR [rsi+8]	# string_1(D)->m_buffer, string_1(D)->m_buffer
	call	String_findLastOfLength	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE85:
	.size	String_findLastOf, .-String_findLastOf
	.globl	String_substr
	.type	String_substr, @function
String_substr:
.LFB86:
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
	mov	rbx, rdi	# this, this
	mov	r13, rsi	# src, src
	mov	rbp, rdx	# pos, pos
	mov	rdi, QWORD PTR [rsi+24]	# D.3664, src_3(D)->m_len
	cmp	rdi, rdx	# D.3664, pos
	jne	.L94	#,
	mov	eax, 1	# D.3667,
	cmp	QWORD PTR [rbx+24], 0	# this_6(D)->m_len,
	je	.L95	#,
	mov	QWORD PTR [rbx+24], 0	# this_6(D)->m_len,
	mov	rax, QWORD PTR [rbx+8]	# D.4025, this_6(D)->m_buffer
	mov	BYTE PTR [rax], 0	# *D.4025_43,
	mov	eax, 1	# D.3667,
	jmp	.L95	#
.L94:
	mov	eax, 0	# D.3667,
	cmp	rdi, rdx	# D.3664, pos
	jb	.L95	#,
	mov	r12, rdi	# new_len, D.3664
	sub	r12, rdx	# new_len, pos
	cmp	rcx, -1	# len,
	je	.L97	#,
.L96:
	lea	rax, [rcx+rdx]	# d,
	mov	r12, rcx	# new_len, len
	cmp	rdi, rax	# D.3664, d
	jae	.L97	#,
	lea	r12, [rcx+rdi]	# tmp80,
	sub	r12, rax	# new_len, d
.L97:
	cmp	r12, QWORD PTR [rbx+16]	# new_len, this_6(D)->m_size
	jb	.L98	#,
	lea	rsi, [r12+1]	# D.3680,
	mov	QWORD PTR [rbx+16], rsi	# this_6(D)->m_size, D.3680
	mov	rdi, QWORD PTR [rbx+8]	# this_6(D)->m_buffer, this_6(D)->m_buffer
	call	realloc	#
	mov	QWORD PTR [rbx+8], rax	# this_6(D)->m_buffer, D.3682
	test	rax, rax	# D.3682
	je	.L102	#,
.L98:
	mov	QWORD PTR [rbx+24], r12	# this_6(D)->m_len, new_len
	mov	rsi, QWORD PTR [r13+8]	# tmp82, src_3(D)->m_buffer
	add	rsi, rbp	# tmp82, pos
	mov	rdi, QWORD PTR [rbx+8]	# this_6(D)->m_buffer, this_6(D)->m_buffer
	mov	rdx, r12	#, new_len
	call	strncpy	#
	mov	rax, QWORD PTR [rbx+8]	# this_6(D)->m_buffer, this_6(D)->m_buffer
	mov	BYTE PTR [rax+r12], 0	# *D.3687_30,
	mov	eax, 1	# D.3667,
	jmp	.L95	#
.L102:
	mov	eax, 0	# D.3667,
.L95:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE86:
	.size	String_substr, .-String_substr
	.globl	String_class
	.data
	.align 8
	.type	String_class, @object
	.size	String_class, 8
String_class:
	.quad	type
	.section	.rodata.str1.1
.LC1:
	.string	"String"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	32
# name:
	.quad	.LC1
# vtable:
	.quad	vtable
	.align 8
	.type	vtable, @object
	.size	vtable, 8
vtable:
	.quad	override_coIObject
	.section	.rodata
	.align 16
	.type	override_coIObject, @object
	.size	override_coIObject, 16
override_coIObject:
# destroy:
	.quad	String_vdestroy
# toString:
	.quad	String_vtoString
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
