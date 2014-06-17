	.file	"coMemory.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coMemory.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coMemory.asm
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

	.local	first_mm
	.comm	first_mm,8,8
	.local	last_mm
	.comm	last_mm,8,8
	.local	mutex
	.comm	mutex,40,32
	.local	size_alloc
	.comm	size_alloc,8,8
	.local	cnt_alloc
	.comm	cnt_alloc,8,8
	.local	inited
	.comm	inited,1,1
	.section	.rodata
	.align 8
.LC0:
	.string	"%24s: Attempt to use memory management without first call to coMemoryInit()\n"
	.data
	.align 8
	.type	notinitstr, @object
	.size	notinitstr, 8
notinitstr:
	.quad	.LC0
	.text
	.globl	coMemoryInit
	.type	coMemoryInit, @function
coMemoryInit:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexInit	#
	test	eax, eax	# D.4344
	je	.L2	#,
	mov	eax, 48	# D.4347,
	jmp	.L3	#
.L2:
	mov	BYTE PTR inited[rip], 1	# inited,
	mov	eax, 0	# D.4347,
.L3:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coMemoryInit, .-coMemoryInit
	.section	.rodata
	.align 8
.LC1:
	.string	"coMemoryPrintInfo: Passed NULL info\n"
	.align 8
.LC2:
	.string	"coMemoryInfo[%3lu]: ptr[%p], call[%20s@%5d], create[%25s], size[%8lu], next[%p]\n"
	.text
	.globl	coMemoryPrintInfo
	.type	coMemoryPrintInfo, @function
coMemoryPrintInfo:
.LFB3:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-8], rdi	# info, info
	mov	QWORD PTR [rbp-16], rsi	# idx, idx
	cmp	QWORD PTR [rbp-8], 0	# info,
	jne	.L5	#,
	mov	rax, QWORD PTR stderr[rip]	# stderr.74, stderr
	mov	rcx, rax	#, stderr.74
	mov	edx, 36	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	jmp	.L4	#
.L5:
	mov	rax, QWORD PTR [rbp-8]	# tmp67, info
	mov	r8, QWORD PTR [rax+40]	# D.4337, info_1(D)->next
	mov	rax, QWORD PTR [rbp-8]	# tmp68, info
	mov	rdi, QWORD PTR [rax+24]	# D.4338, info_1(D)->alloc_size
	mov	rax, QWORD PTR [rbp-8]	# tmp69, info
	mov	rsi, QWORD PTR [rax+16]	# D.4339, info_1(D)->alloc_fun_nam
	mov	rax, QWORD PTR [rbp-8]	# tmp70, info
	mov	r9d, DWORD PTR [rax+32]	# D.4340, info_1(D)->alloc_file_line
	mov	rax, QWORD PTR [rbp-8]	# tmp71, info
	mov	r10, QWORD PTR [rax+8]	# D.4341, info_1(D)->alloc_file_nam
	mov	rax, QWORD PTR [rbp-8]	# tmp72, info
	mov	rcx, QWORD PTR [rax]	# D.4342, info_1(D)->alloc_ptr
	mov	rax, QWORD PTR stderr[rip]	# stderr.75, stderr
	mov	rdx, QWORD PTR [rbp-16]	# tmp73, idx
	mov	QWORD PTR [rsp+16], r8	#, D.4337
	mov	QWORD PTR [rsp+8], rdi	#, D.4338
	mov	QWORD PTR [rsp], rsi	#, D.4339
	mov	r8, r10	#, D.4341
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, stderr.75
	mov	eax, 0	#,
	call	fprintf	#
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coMemoryPrintInfo, .-coMemoryPrintInfo
	.section	.rodata
	.align 8
.LC3:
	.string	"\n##########\nmemory_end: Memory leaks detected, still have %lu allocated memory areas of total size %lu bytes ::\n"
	.align 8
.LC4:
	.string	"\ncoMemoryEnd: Memory leaks detected, still have %lu allocated memory areas of total size %lu bytes\n##########\n\n"
	.align 8
.LC5:
	.string	"coMemoryEnd: Memory is clean :)\n"
	.text
	.globl	coMemoryEnd
	.type	coMemoryEnd, @function
coMemoryEnd:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	rax, QWORD PTR first_mm[rip]	# first_mm.65, first_mm
	test	rax, rax	# first_mm.65
	je	.L8	#,
	mov	rax, QWORD PTR first_mm[rip]	# tmp70, first_mm
	mov	QWORD PTR [rbp-8], rax	# info, tmp70
	mov	QWORD PTR [rbp-16], 0	# i,
	mov	rcx, QWORD PTR size_alloc[rip]	# size_alloc.66, size_alloc
	mov	rdx, QWORD PTR cnt_alloc[rip]	# cnt_alloc.67, cnt_alloc
	mov	rax, QWORD PTR stderr[rip]	# stderr.68, stderr
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, stderr.68
	mov	eax, 0	#,
	call	fprintf	#
	jmp	.L9	#
.L10:
	mov	rax, QWORD PTR [rbp-8]	# tmp71, info
	mov	rax, QWORD PTR [rax+40]	# tmp72, info_1->next
	mov	QWORD PTR [rbp-24], rax	# t, tmp72
	mov	rdx, QWORD PTR [rbp-16]	# i.69, i
	add	QWORD PTR [rbp-16], 1	# i,
	mov	rax, QWORD PTR [rbp-8]	# tmp73, info
	mov	rsi, rdx	#, i.69
	mov	rdi, rax	#, tmp73
	call	coMemoryPrintInfo	#
	mov	rax, QWORD PTR [rbp-8]	# tmp74, info
	mov	rdi, rax	#, tmp74
	call	free	#
	mov	rax, QWORD PTR [rbp-24]	# tmp75, t
	mov	QWORD PTR [rbp-8], rax	# info, tmp75
.L9:
	cmp	QWORD PTR [rbp-8], 0	# info,
	jne	.L10	#,
	mov	rcx, QWORD PTR size_alloc[rip]	# size_alloc.70, size_alloc
	mov	rdx, QWORD PTR cnt_alloc[rip]	# cnt_alloc.71, cnt_alloc
	mov	rax, QWORD PTR stderr[rip]	# stderr.72, stderr
	mov	esi, OFFSET FLAT:.LC4	#,
	mov	rdi, rax	#, stderr.72
	mov	eax, 0	#,
	call	fprintf	#
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexClear	#
	mov	BYTE PTR inited[rip], 0	# inited,
	mov	eax, 49	# D.4330,
	jmp	.L11	#
.L8:
	mov	rax, QWORD PTR stderr[rip]	# stderr.73, stderr
	mov	rcx, rax	#, stderr.73
	mov	edx, 32	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC5	#,
	call	fwrite	#
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexClear	#
	mov	BYTE PTR inited[rip], 0	# inited,
	mov	eax, 0	# D.4330,
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coMemoryEnd, .-coMemoryEnd
	.section	.rodata
.LC6:
	.string	"coMemoryPrintUsage()"
.LC7:
	.string	"@@@ Allocated %lu bytes "
.LC9:
	.string	"(%3.2f KB) "
.LC11:
	.string	"(%3.2f MB) "
.LC12:
	.string	"in %lu memory areas.\n"
	.text
	.globl	coMemoryPrintUsage
	.type	coMemoryPrintUsage, @function
coMemoryPrintUsage:
.LFB5:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	movzx	eax, BYTE PTR inited[rip]	# inited.52, inited
	test	al, al	# inited.52
	jne	.L13	#,
	mov	rcx, QWORD PTR notinitstr[rip]	# notinitstr.53, notinitstr
	mov	rax, QWORD PTR stderr[rip]	# stderr.54, stderr
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	rsi, rcx	#, notinitstr.53
	mov	rdi, rax	#, stderr.54
	mov	eax, 0	#,
	call	fprintf	#
	jmp	.L12	#
.L13:
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexLock	#
	mov	rdx, QWORD PTR size_alloc[rip]	# size_alloc.55, size_alloc
	mov	rax, QWORD PTR stderr[rip]	# stderr.56, stderr
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	rdi, rax	#, stderr.56
	mov	eax, 0	#,
	call	fprintf	#
	mov	rax, QWORD PTR size_alloc[rip]	# size_alloc.57, size_alloc
	cmp	rax, 1023	# size_alloc.57,
	jbe	.L15	#,
	mov	rax, QWORD PTR size_alloc[rip]	# size_alloc.58, size_alloc
	cmp	rax, 1048575	# size_alloc.58,
	ja	.L16	#,
	mov	rax, QWORD PTR size_alloc[rip]	# size_alloc.59, size_alloc
	test	rax, rax	# size_alloc.59
	js	.L17	#,
	cvtsi2ss	xmm0, rax	# D.4307, size_alloc.59
	jmp	.L18	#
.L17:
	mov	rdx, rax	# tmp79, size_alloc.59
	shr	rdx	# tmp79
	and	eax, 1	# tmp80,
	or	rdx, rax	# tmp79, tmp80
	cvtsi2ss	xmm0, rdx	# tmp78, tmp79
	addss	xmm0, xmm0	# D.4307, tmp78
.L18:
	movss	xmm1, DWORD PTR .LC8[rip]	# tmp81,
	divss	xmm0, xmm1	# D.4308, tmp81
	unpcklps	xmm0, xmm0	# D.4308, D.4308
	cvtps2pd	xmm0, xmm0	# D.4309, D.4308
	mov	rax, QWORD PTR stderr[rip]	# stderr.60, stderr
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	rdi, rax	#, stderr.60
	mov	eax, 1	#,
	call	fprintf	#
	jmp	.L15	#
.L16:
	mov	rax, QWORD PTR size_alloc[rip]	# size_alloc.61, size_alloc
	test	rax, rax	# size_alloc.61
	js	.L19	#,
	cvtsi2ss	xmm0, rax	# D.4313, size_alloc.61
	jmp	.L20	#
.L19:
	mov	rdx, rax	# tmp83, size_alloc.61
	shr	rdx	# tmp83
	and	eax, 1	# tmp84,
	or	rdx, rax	# tmp83, tmp84
	cvtsi2ss	xmm0, rdx	# tmp82, tmp83
	addss	xmm0, xmm0	# D.4313, tmp82
.L20:
	movss	xmm1, DWORD PTR .LC10[rip]	# tmp85,
	divss	xmm0, xmm1	# D.4314, tmp85
	unpcklps	xmm0, xmm0	# D.4314, D.4314
	cvtps2pd	xmm0, xmm0	# D.4315, D.4314
	mov	rax, QWORD PTR stderr[rip]	# stderr.62, stderr
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	rdi, rax	#, stderr.62
	mov	eax, 1	#,
	call	fprintf	#
.L15:
	mov	rdx, QWORD PTR cnt_alloc[rip]	# cnt_alloc.63, cnt_alloc
	mov	rax, QWORD PTR stderr[rip]	# stderr.64, stderr
	mov	esi, OFFSET FLAT:.LC12	#,
	mov	rdi, rax	#, stderr.64
	mov	eax, 0	#,
	call	fprintf	#
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
.L12:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coMemoryPrintUsage, .-coMemoryPrintUsage
	.section	.rodata
.LC13:
	.string	"coMemoryPrintAll()"
	.align 8
.LC14:
	.string	"coMemoryPrintAll: Memory content:\n"
	.text
	.globl	coMemoryPrintAll
	.type	coMemoryPrintAll, @function
coMemoryPrintAll:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	movzx	eax, BYTE PTR inited[rip]	# inited.47, inited
	test	al, al	# inited.47
	jne	.L22	#,
	mov	rcx, QWORD PTR notinitstr[rip]	# notinitstr.48, notinitstr
	mov	rax, QWORD PTR stderr[rip]	# stderr.49, stderr
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	rsi, rcx	#, notinitstr.48
	mov	rdi, rax	#, stderr.49
	mov	eax, 0	#,
	call	fprintf	#
	jmp	.L21	#
.L22:
	mov	rax, QWORD PTR stderr[rip]	# stderr.50, stderr
	mov	rcx, rax	#, stderr.50
	mov	edx, 34	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC14	#,
	call	fwrite	#
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexLock	#
	mov	rax, QWORD PTR first_mm[rip]	# tmp64, first_mm
	mov	QWORD PTR [rbp-8], rax	# info, tmp64
	mov	QWORD PTR [rbp-16], 0	# i,
	jmp	.L24	#
.L25:
	mov	rdx, QWORD PTR [rbp-16]	# i.51, i
	add	QWORD PTR [rbp-16], 1	# i,
	mov	rax, QWORD PTR [rbp-8]	# tmp65, info
	mov	rsi, rdx	#, i.51
	mov	rdi, rax	#, tmp65
	call	coMemoryPrintInfo	#
	mov	rax, QWORD PTR [rbp-8]	# tmp66, info
	mov	rax, QWORD PTR [rax+40]	# tmp67, info_1->next
	mov	QWORD PTR [rbp-8], rax	# info, tmp67
.L24:
	cmp	QWORD PTR [rbp-8], 0	# info,
	jne	.L25	#,
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	coMemoryPrintAll, .-coMemoryPrintAll
	.section	.rodata
	.align 8
.LC15:
	.string	"%s: Failed to allocate MM_Info struct (malloc failed)\n"
	.data
	.align 8
	.type	malloc_info_failed_str, @object
	.size	malloc_info_failed_str, 8
malloc_info_failed_str:
	.quad	.LC15
	.section	.rodata
.LC16:
	.string	"coMemoryAddInfo()"
	.text
	.globl	coMemoryAddInfo
	.type	coMemoryAddInfo, @function
coMemoryAddInfo:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR [rbp-24], rdi	# mem_fun_nam, mem_fun_nam
	mov	QWORD PTR [rbp-32], rsi	# alloc_fun_nam, alloc_fun_nam
	mov	QWORD PTR [rbp-40], rdx	# alloc_ptr, alloc_ptr
	mov	QWORD PTR [rbp-48], rcx	# alloc_file_nam, alloc_file_nam
	mov	DWORD PTR [rbp-52], r8d	# alloc_file_line, alloc_file_line
	mov	QWORD PTR [rbp-64], r9	# alloc_size, alloc_size
	movzx	eax, BYTE PTR inited[rip]	# inited.35, inited
	test	al, al	# inited.35
	jne	.L27	#,
	mov	rcx, QWORD PTR notinitstr[rip]	# notinitstr.36, notinitstr
	mov	rax, QWORD PTR stderr[rip]	# stderr.37, stderr
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	rsi, rcx	#, notinitstr.36
	mov	rdi, rax	#, stderr.37
	mov	eax, 0	#,
	call	fprintf	#
	mov	eax, 53	# D.4268,
	jmp	.L28	#
.L27:
	mov	edi, 48	#,
	call	malloc	#
	mov	QWORD PTR [rbp-8], rax	# info, tmp74
	cmp	QWORD PTR [rbp-8], 0	# info,
	jne	.L29	#,
	mov	rcx, QWORD PTR malloc_info_failed_str[rip]	# malloc_info_failed_str.38, malloc_info_failed_str
	mov	rax, QWORD PTR stderr[rip]	# stderr.39, stderr
	mov	rdx, QWORD PTR [rbp-24]	# tmp75, mem_fun_nam
	mov	rsi, rcx	#, malloc_info_failed_str.38
	mov	rdi, rax	#, stderr.39
	mov	eax, 0	#,
	call	fprintf	#
	mov	eax, 50	# D.4268,
	jmp	.L28	#
.L29:
	mov	rax, QWORD PTR [rbp-8]	# tmp76, info
	mov	rdx, QWORD PTR [rbp-40]	# tmp77, alloc_ptr
	mov	QWORD PTR [rax], rdx	# info_6->alloc_ptr, tmp77
	mov	rax, QWORD PTR [rbp-8]	# tmp78, info
	mov	rdx, QWORD PTR [rbp-48]	# tmp79, alloc_file_nam
	mov	QWORD PTR [rax+8], rdx	# info_6->alloc_file_nam, tmp79
	mov	rax, QWORD PTR [rbp-8]	# tmp80, info
	mov	rdx, QWORD PTR [rbp-32]	# tmp81, alloc_fun_nam
	mov	QWORD PTR [rax+16], rdx	# info_6->alloc_fun_nam, tmp81
	mov	rax, QWORD PTR [rbp-8]	# tmp82, info
	mov	rdx, QWORD PTR [rbp-64]	# tmp83, alloc_size
	mov	QWORD PTR [rax+24], rdx	# info_6->alloc_size, tmp83
	mov	rax, QWORD PTR [rbp-8]	# tmp84, info
	mov	edx, DWORD PTR [rbp-52]	# tmp85, alloc_file_line
	mov	DWORD PTR [rax+32], edx	# info_6->alloc_file_line, tmp85
	mov	rax, QWORD PTR [rbp-8]	# tmp86, info
	mov	QWORD PTR [rax+40], 0	# info_6->next,
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexLock	#
	mov	rax, QWORD PTR cnt_alloc[rip]	# cnt_alloc.40, cnt_alloc
	add	rax, 1	# cnt_alloc.41,
	mov	QWORD PTR cnt_alloc[rip], rax	# cnt_alloc, cnt_alloc.41
	mov	rax, QWORD PTR [rbp-8]	# tmp87, info
	mov	rdx, QWORD PTR [rax+24]	# D.4275, info_6->alloc_size
	mov	rax, QWORD PTR size_alloc[rip]	# size_alloc.42, size_alloc
	add	rax, rdx	# size_alloc.43, D.4275
	mov	QWORD PTR size_alloc[rip], rax	# size_alloc, size_alloc.43
	mov	rax, QWORD PTR first_mm[rip]	# first_mm.44, first_mm
	test	rax, rax	# first_mm.44
	jne	.L30	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp88, info
	mov	QWORD PTR last_mm[rip], rax	# last_mm, tmp88
	mov	rax, QWORD PTR last_mm[rip]	# last_mm.45, last_mm
	mov	QWORD PTR first_mm[rip], rax	# first_mm, last_mm.45
	jmp	.L31	#
.L30:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm.46, last_mm
	mov	rdx, QWORD PTR [rbp-8]	# tmp89, info
	mov	QWORD PTR [rax+40], rdx	# last_mm.46_23->next, tmp89
	mov	rax, QWORD PTR [rbp-8]	# tmp90, info
	mov	QWORD PTR last_mm[rip], rax	# last_mm, tmp90
.L31:
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
	mov	eax, 0	# D.4268,
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	coMemoryAddInfo, .-coMemoryAddInfo
	.section	.rodata
.LC17:
	.string	"coMemorySeekInfo()"
	.text
	.globl	coMemorySeekInfo
	.type	coMemorySeekInfo, @function
coMemorySeekInfo:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# alloc_ptr, alloc_ptr
	cmp	QWORD PTR [rbp-24], 0	# alloc_ptr,
	je	.L33	#,
	movzx	eax, BYTE PTR inited[rip]	# inited.32, inited
	test	al, al	# inited.32
	jne	.L34	#,
	mov	rcx, QWORD PTR notinitstr[rip]	# notinitstr.33, notinitstr
	mov	rax, QWORD PTR stderr[rip]	# stderr.34, stderr
	mov	edx, OFFSET FLAT:.LC17	#,
	mov	rsi, rcx	#, notinitstr.33
	mov	rdi, rax	#, stderr.34
	mov	eax, 0	#,
	call	fprintf	#
	mov	eax, 0	# D.4258,
	jmp	.L35	#
.L34:
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexLock	#
	mov	rax, QWORD PTR first_mm[rip]	# tmp65, first_mm
	mov	QWORD PTR [rbp-8], rax	# temp, tmp65
	jmp	.L36	#
.L39:
	mov	rax, QWORD PTR [rbp-8]	# tmp66, temp
	mov	rax, QWORD PTR [rax]	# D.4259, temp_1->alloc_ptr
	cmp	rax, QWORD PTR [rbp-24]	# D.4259, alloc_ptr
	je	.L40	#,
.L37:
	mov	rax, QWORD PTR [rbp-8]	# tmp67, temp
	mov	rax, QWORD PTR [rax+40]	# tmp68, temp_1->next
	mov	QWORD PTR [rbp-8], rax	# temp, tmp68
.L36:
	cmp	QWORD PTR [rbp-8], 0	# temp,
	jne	.L39	#,
	jmp	.L38	#
.L40:
	nop
.L38:
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
	mov	rax, QWORD PTR [rbp-8]	# D.4258, temp
	jmp	.L35	#
.L33:
	mov	eax, 0	# D.4258,
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	coMemorySeekInfo, .-coMemorySeekInfo
	.section	.rodata
.LC18:
	.string	"coMemoryReplaceInfo()"
	.text
	.globl	coMemoryReplaceInfo
	.type	coMemoryReplaceInfo, @function
coMemoryReplaceInfo:
.LFB9:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-8], rdi	# old_info, old_info
	mov	QWORD PTR [rbp-16], rsi	# mem_fun_nam, mem_fun_nam
	mov	QWORD PTR [rbp-24], rdx	# alloc_fun_nam, alloc_fun_nam
	mov	QWORD PTR [rbp-32], rcx	# alloc_ptr, alloc_ptr
	mov	QWORD PTR [rbp-40], r8	# alloc_file_nam, alloc_file_nam
	mov	DWORD PTR [rbp-44], r9d	# alloc_file_line, alloc_file_line
	cmp	QWORD PTR [rbp-8], 0	# old_info,
	jne	.L42	#,
	mov	eax, 51	# D.4239,
	jmp	.L43	#
.L42:
	movzx	eax, BYTE PTR inited[rip]	# inited.25, inited
	test	al, al	# inited.25
	jne	.L44	#,
	mov	rcx, QWORD PTR notinitstr[rip]	# notinitstr.26, notinitstr
	mov	rax, QWORD PTR stderr[rip]	# stderr.27, stderr
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	rsi, rcx	#, notinitstr.26
	mov	rdi, rax	#, stderr.27
	mov	eax, 0	#,
	call	fprintf	#
	mov	eax, 53	# D.4239,
	jmp	.L43	#
.L44:
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexLock	#
	mov	rdx, QWORD PTR size_alloc[rip]	# size_alloc.28, size_alloc
	mov	rax, QWORD PTR [rbp-8]	# tmp69, old_info
	mov	rax, QWORD PTR [rax+24]	# D.4246, old_info_2(D)->alloc_size
	mov	rcx, rdx	#, size_alloc.28
	sub	rcx, rax	#, D.4246
	mov	rax, rcx	# size_alloc.29,
	mov	QWORD PTR size_alloc[rip], rax	# size_alloc, size_alloc.29
	mov	rax, QWORD PTR [rbp-8]	# tmp70, old_info
	mov	rdx, QWORD PTR [rbp-32]	# tmp71, alloc_ptr
	mov	QWORD PTR [rax], rdx	# old_info_2(D)->alloc_ptr, tmp71
	mov	rax, QWORD PTR [rbp-8]	# tmp72, old_info
	mov	rdx, QWORD PTR [rbp-40]	# tmp73, alloc_file_nam
	mov	QWORD PTR [rax+8], rdx	# old_info_2(D)->alloc_file_nam, tmp73
	mov	rax, QWORD PTR [rbp-8]	# tmp74, old_info
	mov	rdx, QWORD PTR [rbp-24]	# tmp75, alloc_fun_nam
	mov	QWORD PTR [rax+16], rdx	# old_info_2(D)->alloc_fun_nam, tmp75
	mov	rax, QWORD PTR [rbp-8]	# tmp76, old_info
	mov	rdx, QWORD PTR [rbp+16]	# tmp77, alloc_size
	mov	QWORD PTR [rax+24], rdx	# old_info_2(D)->alloc_size, tmp77
	mov	rax, QWORD PTR [rbp-8]	# tmp78, old_info
	mov	edx, DWORD PTR [rbp-44]	# tmp79, alloc_file_line
	mov	DWORD PTR [rax+32], edx	# old_info_2(D)->alloc_file_line, tmp79
	mov	rdx, QWORD PTR size_alloc[rip]	# size_alloc.30, size_alloc
	mov	rax, QWORD PTR [rbp+16]	# tmp80, alloc_size
	add	rax, rdx	# size_alloc.31, size_alloc.30
	mov	QWORD PTR size_alloc[rip], rax	# size_alloc, size_alloc.31
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
	mov	eax, 0	# D.4239,
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	coMemoryReplaceInfo, .-coMemoryReplaceInfo
	.section	.rodata
	.align 8
.LC19:
	.string	"coMemoryDelInfo: Attempt to delete unallocated pointer %p from function %s, [%s@%u]\n"
	.data
	.align 8
	.type	del_unallocated, @object
	.size	del_unallocated, 8
del_unallocated:
	.quad	.LC19
	.section	.rodata
.LC20:
	.string	"coMemoryDelInfo()"
	.text
	.globl	coMemoryDelInfo
	.type	coMemoryDelInfo, @function
coMemoryDelInfo:
.LFB10:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# ptr, ptr
	mov	QWORD PTR [rbp-32], rsi	# fname, fname
	mov	QWORD PTR [rbp-40], rdx	# _file, _file
	mov	DWORD PTR [rbp-44], ecx	# _line, _line
	mov	rax, QWORD PTR first_mm[rip]	# tmp75, first_mm
	mov	QWORD PTR [rbp-8], rax	# actual, tmp75
	mov	QWORD PTR [rbp-16], 0	# prev,
	movzx	eax, BYTE PTR inited[rip]	# inited.15, inited
	test	al, al	# inited.15
	jne	.L46	#,
	mov	rcx, QWORD PTR notinitstr[rip]	# notinitstr.16, notinitstr
	mov	rax, QWORD PTR stderr[rip]	# stderr.17, stderr
	mov	edx, OFFSET FLAT:.LC20	#,
	mov	rsi, rcx	#, notinitstr.16
	mov	rdi, rax	#, stderr.17
	mov	eax, 0	#,
	call	fprintf	#
	mov	eax, 53	# D.4216,
	jmp	.L47	#
.L46:
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexLock	#
	jmp	.L48	#
.L50:
	mov	rax, QWORD PTR [rbp-8]	# tmp76, actual
	mov	QWORD PTR [rbp-16], rax	# prev, tmp76
	mov	rax, QWORD PTR [rbp-8]	# tmp77, actual
	mov	rax, QWORD PTR [rax+40]	# tmp78, actual_1->next
	mov	QWORD PTR [rbp-8], rax	# actual, tmp78
.L48:
	cmp	QWORD PTR [rbp-8], 0	# actual,
	je	.L49	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp79, actual
	mov	rax, QWORD PTR [rax]	# D.4218, actual_1->alloc_ptr
	cmp	rax, QWORD PTR [rbp-24]	# D.4218, ptr
	jne	.L50	#,
.L49:
	cmp	QWORD PTR [rbp-8], 0	# actual,
	jne	.L51	#,
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
	mov	rsi, QWORD PTR del_unallocated[rip]	# del_unallocated.18, del_unallocated
	mov	rax, QWORD PTR stderr[rip]	# stderr.19, stderr
	mov	r8d, DWORD PTR [rbp-44]	# tmp80, _line
	mov	rdi, QWORD PTR [rbp-40]	# tmp81, _file
	mov	rcx, QWORD PTR [rbp-32]	# tmp82, fname
	mov	rdx, QWORD PTR [rbp-24]	# tmp83, ptr
	mov	r9d, r8d	#, tmp80
	mov	r8, rdi	#, tmp81
	mov	rdi, rax	#, stderr.19
	mov	eax, 0	#,
	call	fprintf	#
	mov	eax, 52	# D.4216,
	jmp	.L47	#
.L51:
	cmp	QWORD PTR [rbp-16], 0	# prev,
	je	.L52	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp84, actual
	mov	rdx, QWORD PTR [rax+40]	# D.4225, actual_1->next
	mov	rax, QWORD PTR [rbp-16]	# tmp85, prev
	mov	QWORD PTR [rax+40], rdx	# prev_2->next, D.4225
	jmp	.L53	#
.L52:
	mov	rax, QWORD PTR [rbp-8]	# tmp86, actual
	mov	rax, QWORD PTR [rax+40]	# first_mm.20, actual_1->next
	mov	QWORD PTR first_mm[rip], rax	# first_mm, first_mm.20
.L53:
	mov	rax, QWORD PTR [rbp-8]	# tmp87, actual
	mov	rax, QWORD PTR [rax+40]	# D.4228, actual_1->next
	test	rax, rax	# D.4228
	jne	.L54	#,
	mov	rax, QWORD PTR [rbp-16]	# tmp88, prev
	mov	QWORD PTR last_mm[rip], rax	# last_mm, tmp88
.L54:
	mov	rax, QWORD PTR cnt_alloc[rip]	# cnt_alloc.21, cnt_alloc
	sub	rax, 1	# cnt_alloc.22,
	mov	QWORD PTR cnt_alloc[rip], rax	# cnt_alloc, cnt_alloc.22
	mov	rdx, QWORD PTR size_alloc[rip]	# size_alloc.23, size_alloc
	mov	rax, QWORD PTR [rbp-8]	# tmp89, actual
	mov	rax, QWORD PTR [rax+24]	# D.4234, actual_1->alloc_size
	mov	rcx, rdx	#, size_alloc.23
	sub	rcx, rax	#, D.4234
	mov	rax, rcx	# size_alloc.24,
	mov	QWORD PTR size_alloc[rip], rax	# size_alloc, size_alloc.24
	mov	rax, QWORD PTR [rbp-8]	# tmp90, actual
	mov	rdi, rax	#, tmp90
	call	free	#
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
	mov	eax, 0	# D.4216,
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	coMemoryDelInfo, .-coMemoryDelInfo
	.section	.rodata
	.align 8
.LC21:
	.string	"coMalloc: Failed to allocate memory of size %lu (malloc returned NULL), file: %s, line: %u\n"
.LC22:
	.string	"malloc"
.LC23:
	.string	"coMalloc"
	.align 8
.LC24:
	.string	"coMalloc(): Failed to add info about: size: %lu, file: %s, line: %uNewly allocated pointer: %p. Error: %s\n"
	.text
	.globl	coMalloc
	.type	coMalloc, @function
coMalloc:
.LFB11:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR [rbp-24], rdi	# __size, __size
	mov	QWORD PTR [rbp-32], rsi	# _file_, _file_
	mov	DWORD PTR [rbp-36], edx	# _line_, _line_
	mov	rax, QWORD PTR [rbp-24]	# tmp64, __size
	mov	rdi, rax	#, tmp64
	call	malloc	#
	mov	QWORD PTR [rbp-8], rax	# ptr, tmp65
	mov	DWORD PTR [rbp-12], 0	# err,
	cmp	QWORD PTR [rbp-8], 0	# ptr,
	jne	.L56	#,
	mov	rax, QWORD PTR stderr[rip]	# stderr.13, stderr
	mov	esi, DWORD PTR [rbp-36]	# tmp66, _line_
	mov	rcx, QWORD PTR [rbp-32]	# tmp67, _file_
	mov	rdx, QWORD PTR [rbp-24]	# tmp68, __size
	mov	r8d, esi	#, tmp66
	mov	esi, OFFSET FLAT:.LC21	#,
	mov	rdi, rax	#, stderr.13
	mov	eax, 0	#,
	call	fprintf	#
	mov	rax, QWORD PTR [rbp-8]	# D.4205, ptr
	jmp	.L57	#
.L56:
	mov	rsi, QWORD PTR [rbp-24]	# tmp69, __size
	mov	ecx, DWORD PTR [rbp-36]	# tmp70, _line_
	mov	rdx, QWORD PTR [rbp-32]	# tmp71, _file_
	mov	rax, QWORD PTR [rbp-8]	# tmp72, ptr
	mov	r9, rsi	#, tmp69
	mov	r8d, ecx	#, tmp70
	mov	rcx, rdx	#, tmp71
	mov	rdx, rax	#, tmp72
	mov	esi, OFFSET FLAT:.LC22	#,
	mov	edi, OFFSET FLAT:.LC23	#,
	call	coMemoryAddInfo	#
	mov	DWORD PTR [rbp-12], eax	# err, tmp73
	cmp	DWORD PTR [rbp-12], 0	# err,
	je	.L58	#,
	mov	eax, DWORD PTR [rbp-12]	# tmp74, err
	mov	edi, eax	#, tmp74
	call	coGetStringError	#
	mov	rdi, QWORD PTR stderr[rip]	# stderr.14, stderr
	mov	r8, QWORD PTR [rbp-8]	# tmp75, ptr
	mov	esi, DWORD PTR [rbp-36]	# tmp76, _line_
	mov	rcx, QWORD PTR [rbp-32]	# tmp77, _file_
	mov	rdx, QWORD PTR [rbp-24]	# tmp78, __size
	mov	QWORD PTR [rsp], rax	#, D.4208
	mov	r9, r8	#, tmp75
	mov	r8d, esi	#, tmp76
	mov	esi, OFFSET FLAT:.LC24	#,
	mov	eax, 0	#,
	call	fprintf	#
.L58:
	mov	rax, QWORD PTR [rbp-8]	# D.4205, ptr
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	coMalloc, .-coMalloc
	.section	.rodata
	.align 8
.LC25:
	.string	"coCalloc: Failed to allocate memory __nmemb=%lu, __size=%lu (calloc returned NULL), file: %s, line: %u\n"
.LC26:
	.string	"calloc"
.LC27:
	.string	"coCalloc"
	.align 8
.LC28:
	.string	"coCalloc(): Failed to add info about: __nmemb=%lu, __size=%lu, file: %s, line: %uNewly allocated pointer: %p. Error: %s\n"
	.text
	.globl	coCalloc
	.type	coCalloc, @function
coCalloc:
.LFB12:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR [rbp-24], rdi	# __nmemb, __nmemb
	mov	QWORD PTR [rbp-32], rsi	# __size, __size
	mov	QWORD PTR [rbp-40], rdx	# _file_, _file_
	mov	DWORD PTR [rbp-44], ecx	# _line_, _line_
	mov	rdx, QWORD PTR [rbp-32]	# tmp65, __size
	mov	rax, QWORD PTR [rbp-24]	# tmp66, __nmemb
	mov	rsi, rdx	#, tmp65
	mov	rdi, rax	#, tmp66
	call	calloc	#
	mov	QWORD PTR [rbp-8], rax	# ptr, tmp67
	mov	DWORD PTR [rbp-12], 0	# err,
	cmp	QWORD PTR [rbp-8], 0	# ptr,
	jne	.L60	#,
	mov	rax, QWORD PTR stderr[rip]	# stderr.11, stderr
	mov	edi, DWORD PTR [rbp-44]	# tmp68, _line_
	mov	rsi, QWORD PTR [rbp-40]	# tmp69, _file_
	mov	rcx, QWORD PTR [rbp-32]	# tmp70, __size
	mov	rdx, QWORD PTR [rbp-24]	# tmp71, __nmemb
	mov	r9d, edi	#, tmp68
	mov	r8, rsi	#, tmp69
	mov	esi, OFFSET FLAT:.LC25	#,
	mov	rdi, rax	#, stderr.11
	mov	eax, 0	#,
	call	fprintf	#
	mov	rax, QWORD PTR [rbp-8]	# D.4195, ptr
	jmp	.L61	#
.L60:
	mov	rax, QWORD PTR [rbp-24]	# tmp72, __nmemb
	mov	rsi, rax	# D.4196, tmp72
	imul	rsi, QWORD PTR [rbp-32]	# D.4196, __size
	mov	ecx, DWORD PTR [rbp-44]	# tmp73, _line_
	mov	rdx, QWORD PTR [rbp-40]	# tmp74, _file_
	mov	rax, QWORD PTR [rbp-8]	# tmp75, ptr
	mov	r9, rsi	#, D.4196
	mov	r8d, ecx	#, tmp73
	mov	rcx, rdx	#, tmp74
	mov	rdx, rax	#, tmp75
	mov	esi, OFFSET FLAT:.LC26	#,
	mov	edi, OFFSET FLAT:.LC27	#,
	call	coMemoryAddInfo	#
	mov	DWORD PTR [rbp-12], eax	# err, tmp76
	cmp	DWORD PTR [rbp-12], 0	# err,
	je	.L62	#,
	mov	eax, DWORD PTR [rbp-12]	# tmp77, err
	mov	edi, eax	#, tmp77
	call	coGetStringError	#
	mov	rdi, QWORD PTR stderr[rip]	# stderr.12, stderr
	mov	r8d, DWORD PTR [rbp-44]	# tmp78, _line_
	mov	rsi, QWORD PTR [rbp-40]	# tmp79, _file_
	mov	rcx, QWORD PTR [rbp-32]	# tmp80, __size
	mov	rdx, QWORD PTR [rbp-24]	# tmp81, __nmemb
	mov	QWORD PTR [rsp+8], rax	#, D.4199
	mov	rax, QWORD PTR [rbp-8]	# tmp82, ptr
	mov	QWORD PTR [rsp], rax	#, tmp82
	mov	r9d, r8d	#, tmp78
	mov	r8, rsi	#, tmp79
	mov	esi, OFFSET FLAT:.LC28	#,
	mov	eax, 0	#,
	call	fprintf	#
.L62:
	mov	rax, QWORD PTR [rbp-8]	# D.4195, ptr
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	coCalloc, .-coCalloc
	.section	.rodata
	.align 8
.LC29:
	.string	"coRealloc: Failed to reallocate memory __ptr=%p, __size=%lu (realloc returned NULL), file: %s, line: %u\n"
.LC30:
	.string	"realloc"
.LC31:
	.string	"coRealloc"
	.align 8
.LC32:
	.string	"coRealloc(): Failed to add info about: old_ptr=%p, __size=%lu, file: %s, line: %uNewly allocated pointer: %p. Error: %s\n"
	.align 8
.LC33:
	.string	"coRealloc: Failed to find old info for __ptr=%p of NEW size %lu, NEW ptr: %p, file: %s, line: %u. Error: %s\n"
	.align 8
.LC34:
	.string	"coRealloc: Failed to delete info of old __ptr=%p of NEW size %lu, NEW ptr %p, file: %s, line: %u. Error: %s\n"
	.text
	.globl	coRealloc
	.type	coRealloc, @function
coRealloc:
.LFB13:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR [rbp-40], rdi	# __ptr, __ptr
	mov	QWORD PTR [rbp-48], rsi	# __size, __size
	mov	QWORD PTR [rbp-56], rdx	# _file_, _file_
	mov	DWORD PTR [rbp-60], ecx	# _line_, _line_
	mov	rdx, QWORD PTR [rbp-48]	# tmp73, __size
	mov	rax, QWORD PTR [rbp-40]	# tmp74, __ptr
	mov	rsi, rdx	#, tmp73
	mov	rdi, rax	#, tmp74
	call	realloc	#
	mov	QWORD PTR [rbp-8], rax	# ptr, tmp75
	mov	DWORD PTR [rbp-12], 0	# err,
	cmp	QWORD PTR [rbp-8], 0	# ptr,
	jne	.L64	#,
	cmp	QWORD PTR [rbp-48], 0	# __size,
	je	.L64	#,
	mov	rax, QWORD PTR stderr[rip]	# stderr.3, stderr
	mov	edi, DWORD PTR [rbp-60]	# tmp76, _line_
	mov	rsi, QWORD PTR [rbp-56]	# tmp77, _file_
	mov	rcx, QWORD PTR [rbp-48]	# tmp78, __size
	mov	rdx, QWORD PTR [rbp-40]	# tmp79, __ptr
	mov	r9d, edi	#, tmp76
	mov	r8, rsi	#, tmp77
	mov	esi, OFFSET FLAT:.LC29	#,
	mov	rdi, rax	#, stderr.3
	mov	eax, 0	#,
	call	fprintf	#
	mov	rax, QWORD PTR [rbp-8]	# D.4160, ptr
	jmp	.L65	#
.L64:
	cmp	QWORD PTR [rbp-40], 0	# __ptr,
	jne	.L66	#,
	cmp	QWORD PTR [rbp-48], 0	# __size,
	je	.L66	#,
	mov	rsi, QWORD PTR [rbp-48]	# tmp80, __size
	mov	ecx, DWORD PTR [rbp-60]	# tmp81, _line_
	mov	rdx, QWORD PTR [rbp-56]	# tmp82, _file_
	mov	rax, QWORD PTR [rbp-8]	# tmp83, ptr
	mov	r9, rsi	#, tmp80
	mov	r8d, ecx	#, tmp81
	mov	rcx, rdx	#, tmp82
	mov	rdx, rax	#, tmp83
	mov	esi, OFFSET FLAT:.LC30	#,
	mov	edi, OFFSET FLAT:.LC31	#,
	call	coMemoryAddInfo	#
	mov	DWORD PTR [rbp-12], eax	# err, tmp84
	cmp	DWORD PTR [rbp-12], 0	# err,
	je	.L68	#,
	mov	eax, DWORD PTR [rbp-12]	# tmp85, err
	mov	edi, eax	#, tmp85
	call	coGetStringError	#
	mov	rdi, QWORD PTR stderr[rip]	# stderr.4, stderr
	mov	r8d, DWORD PTR [rbp-60]	# tmp86, _line_
	mov	rsi, QWORD PTR [rbp-56]	# tmp87, _file_
	mov	rcx, QWORD PTR [rbp-48]	# tmp88, __size
	mov	rdx, QWORD PTR [rbp-40]	# tmp89, __ptr
	mov	QWORD PTR [rsp+8], rax	#, D.4167
	mov	rax, QWORD PTR [rbp-8]	# tmp90, ptr
	mov	QWORD PTR [rsp], rax	#, tmp90
	mov	r9d, r8d	#, tmp86
	mov	r8, rsi	#, tmp87
	mov	esi, OFFSET FLAT:.LC32	#,
	mov	eax, 0	#,
	call	fprintf	#
	jmp	.L68	#
.L66:
	cmp	QWORD PTR [rbp-40], 0	# __ptr,
	je	.L68	#,
	cmp	QWORD PTR [rbp-48], 0	# __size,
	je	.L69	#,
	mov	rax, QWORD PTR [rbp-40]	# tmp91, __ptr
	mov	rdi, rax	#, tmp91
	call	coMemorySeekInfo	#
	mov	QWORD PTR [rbp-24], rax	# info, tmp92
	cmp	QWORD PTR [rbp-24], 0	# info,
	je	.L70	#,
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexLock	#
	mov	rdx, QWORD PTR size_alloc[rip]	# size_alloc.5, size_alloc
	mov	rax, QWORD PTR [rbp-24]	# tmp93, info
	mov	rax, QWORD PTR [rax+24]	# D.4176, info_13->alloc_size
	mov	rcx, rdx	#, size_alloc.5
	sub	rcx, rax	#, D.4176
	mov	rax, rcx	# size_alloc.6,
	mov	QWORD PTR size_alloc[rip], rax	# size_alloc, size_alloc.6
	mov	rax, QWORD PTR [rbp-24]	# tmp94, info
	mov	rdx, QWORD PTR [rbp-8]	# tmp95, ptr
	mov	QWORD PTR [rax], rdx	# info_13->alloc_ptr, tmp95
	mov	rax, QWORD PTR [rbp-24]	# tmp96, info
	mov	rdx, QWORD PTR [rbp-56]	# tmp97, _file_
	mov	QWORD PTR [rax+8], rdx	# info_13->alloc_file_nam, tmp97
	mov	rax, QWORD PTR [rbp-24]	# tmp98, info
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC30	# info_13->alloc_fun_nam,
	mov	rax, QWORD PTR [rbp-24]	# tmp99, info
	mov	rdx, QWORD PTR [rbp-48]	# tmp100, __size
	mov	QWORD PTR [rax+24], rdx	# info_13->alloc_size, tmp100
	mov	rax, QWORD PTR [rbp-24]	# tmp101, info
	mov	edx, DWORD PTR [rbp-60]	# tmp102, _line_
	mov	DWORD PTR [rax+32], edx	# info_13->alloc_file_line, tmp102
	mov	rdx, QWORD PTR size_alloc[rip]	# size_alloc.7, size_alloc
	mov	rax, QWORD PTR [rbp-48]	# tmp103, __size
	add	rax, rdx	# size_alloc.8, size_alloc.7
	mov	QWORD PTR size_alloc[rip], rax	# size_alloc, size_alloc.8
	mov	edi, OFFSET FLAT:mutex	#,
	call	coMutexUnlock	#
	jmp	.L68	#
.L70:
	mov	eax, DWORD PTR [rbp-12]	# tmp104, err
	mov	edi, eax	#, tmp104
	call	coGetStringError	#
	mov	rdi, QWORD PTR stderr[rip]	# stderr.9, stderr
	mov	r8, QWORD PTR [rbp-56]	# tmp105, _file_
	mov	rsi, QWORD PTR [rbp-8]	# tmp106, ptr
	mov	rcx, QWORD PTR [rbp-48]	# tmp107, __size
	mov	rdx, QWORD PTR [rbp-40]	# tmp108, __ptr
	mov	QWORD PTR [rsp+8], rax	#, D.4181
	mov	eax, DWORD PTR [rbp-60]	# tmp109, _line_
	mov	DWORD PTR [rsp], eax	#, tmp109
	mov	r9, r8	#, tmp105
	mov	r8, rsi	#, tmp106
	mov	esi, OFFSET FLAT:.LC33	#,
	mov	eax, 0	#,
	call	fprintf	#
	jmp	.L68	#
.L69:
	mov	ecx, DWORD PTR [rbp-60]	# tmp110, _line_
	mov	rdx, QWORD PTR [rbp-56]	# tmp111, _file_
	mov	rax, QWORD PTR [rbp-40]	# tmp112, __ptr
	mov	esi, OFFSET FLAT:.LC31	#,
	mov	rdi, rax	#, tmp112
	call	coMemoryDelInfo	#
	mov	DWORD PTR [rbp-12], eax	# err, tmp113
	cmp	DWORD PTR [rbp-12], 0	# err,
	jne	.L71	#,
	cmp	QWORD PTR [rbp-8], 0	# ptr,
	je	.L72	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp114, ptr
	mov	rdi, rax	#, tmp114
	call	free	#
	jmp	.L72	#
.L71:
	mov	eax, DWORD PTR [rbp-12]	# tmp115, err
	mov	edi, eax	#, tmp115
	call	coGetStringError	#
	mov	rdi, QWORD PTR stderr[rip]	# stderr.10, stderr
	mov	r8, QWORD PTR [rbp-56]	# tmp116, _file_
	mov	rsi, QWORD PTR [rbp-8]	# tmp117, ptr
	mov	rcx, QWORD PTR [rbp-48]	# tmp118, __size
	mov	rdx, QWORD PTR [rbp-40]	# tmp119, __ptr
	mov	QWORD PTR [rsp+8], rax	#, D.4189
	mov	eax, DWORD PTR [rbp-60]	# tmp120, _line_
	mov	DWORD PTR [rsp], eax	#, tmp120
	mov	r9, r8	#, tmp116
	mov	r8, rsi	#, tmp117
	mov	esi, OFFSET FLAT:.LC34	#,
	mov	eax, 0	#,
	call	fprintf	#
.L72:
	mov	eax, 0	# D.4160,
	jmp	.L65	#
.L68:
	mov	rax, QWORD PTR [rbp-8]	# D.4160, ptr
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	coRealloc, .-coRealloc
	.section	.rodata
.LC35:
	.string	"coFree"
	.align 8
.LC36:
	.string	"coFree: Failed to delete info of ptr: %p, file: %s, line: %u.Error: %s\n"
	.text
	.globl	coFree
	.type	coFree, @function
coFree:
.LFB14:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR [rbp-24], rdi	# __ptr, __ptr
	mov	QWORD PTR [rbp-32], rsi	# _file_, _file_
	mov	DWORD PTR [rbp-36], edx	# _line_, _line_
	cmp	QWORD PTR [rbp-24], 0	# __ptr,
	je	.L77	#,
.L74:
	mov	DWORD PTR [rbp-4], 0	# err,
	mov	ecx, DWORD PTR [rbp-36]	# tmp61, _line_
	mov	rdx, QWORD PTR [rbp-32]	# tmp62, _file_
	mov	rax, QWORD PTR [rbp-24]	# tmp63, __ptr
	mov	esi, OFFSET FLAT:.LC35	#,
	mov	rdi, rax	#, tmp63
	call	coMemoryDelInfo	#
	mov	DWORD PTR [rbp-4], eax	# err, tmp64
	cmp	DWORD PTR [rbp-4], 0	# err,
	jne	.L76	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp65, __ptr
	mov	rdi, rax	#, tmp65
	call	free	#
	jmp	.L73	#
.L76:
	mov	eax, DWORD PTR [rbp-4]	# tmp66, err
	mov	edi, eax	#, tmp66
	call	coGetStringError	#
	mov	rsi, rax	# D.4150,
	mov	rax, QWORD PTR stderr[rip]	# stderr.2, stderr
	mov	edi, DWORD PTR [rbp-36]	# tmp67, _line_
	mov	rcx, QWORD PTR [rbp-32]	# tmp68, _file_
	mov	rdx, QWORD PTR [rbp-24]	# tmp69, __ptr
	mov	r9, rsi	#, D.4150
	mov	r8d, edi	#, tmp67
	mov	esi, OFFSET FLAT:.LC36	#,
	mov	rdi, rax	#, stderr.2
	mov	eax, 0	#,
	call	fprintf	#
	cmp	DWORD PTR [rbp-4], 53	# err,
	jne	.L73	#,
	mov	rax, QWORD PTR [rbp-24]	# tmp70, __ptr
	mov	rdi, rax	#, tmp70
	call	free	#
	jmp	.L73	#
.L77:
	nop
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	coFree, .-coFree
	.section	.rodata
	.align 8
.LC37:
	.string	"coGetcwd: Failed to get current working directory buf=%p, size=%lu (getcwd returned NULL), file: %s, line: %u\n"
.LC38:
	.string	"getcwd"
.LC39:
	.string	"coGetcwd"
	.align 8
.LC40:
	.string	"coGetcwd: add info about allocated area buf=%p, NEW buf=%p, size=%lu, file: %s, line: %u. Error: %s\n"
	.text
	.globl	_coGetcwd
	.type	_coGetcwd, @function
_coGetcwd:
.LFB15:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR [rbp-24], rdi	# buf, buf
	mov	QWORD PTR [rbp-32], rsi	# size, size
	mov	QWORD PTR [rbp-40], rdx	# _file_, _file_
	mov	DWORD PTR [rbp-44], ecx	# _line_, _line_
	mov	rdx, QWORD PTR [rbp-32]	# tmp66, size
	mov	rax, QWORD PTR [rbp-24]	# tmp67, buf
	mov	rsi, rdx	#, tmp66
	mov	rdi, rax	#, tmp67
	call	getcwd	#
	mov	QWORD PTR [rbp-8], rax	# ptr, tmp68
	cmp	QWORD PTR [rbp-8], 0	# ptr,
	jne	.L79	#,
	mov	rax, QWORD PTR stderr[rip]	# stderr.0, stderr
	mov	edi, DWORD PTR [rbp-44]	# tmp69, _line_
	mov	rsi, QWORD PTR [rbp-40]	# tmp70, _file_
	mov	rcx, QWORD PTR [rbp-32]	# tmp71, size
	mov	rdx, QWORD PTR [rbp-24]	# tmp72, buf
	mov	r9d, edi	#, tmp69
	mov	r8, rsi	#, tmp70
	mov	esi, OFFSET FLAT:.LC37	#,
	mov	rdi, rax	#, stderr.0
	mov	eax, 0	#,
	call	fprintf	#
	mov	rax, QWORD PTR [rbp-8]	# D.4135, ptr
	jmp	.L80	#
.L79:
	cmp	QWORD PTR [rbp-24], 0	# buf,
	jne	.L81	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp73, ptr
	mov	rdi, rax	#, tmp73
	call	strlen	#
	lea	rsi, [rax+1]	# D.4139,
	mov	ecx, DWORD PTR [rbp-44]	# tmp74, _line_
	mov	rdx, QWORD PTR [rbp-40]	# tmp75, _file_
	mov	rax, QWORD PTR [rbp-8]	# tmp76, ptr
	mov	r9, rsi	#, D.4139
	mov	r8d, ecx	#, tmp74
	mov	rcx, rdx	#, tmp75
	mov	rdx, rax	#, tmp76
	mov	esi, OFFSET FLAT:.LC38	#,
	mov	edi, OFFSET FLAT:.LC39	#,
	call	coMemoryAddInfo	#
	mov	DWORD PTR [rbp-12], eax	# err, tmp77
	cmp	DWORD PTR [rbp-12], 0	# err,
	je	.L81	#,
	mov	eax, DWORD PTR [rbp-12]	# tmp78, err
	mov	edi, eax	#, tmp78
	call	coGetStringError	#
	mov	rdi, QWORD PTR stderr[rip]	# stderr.1, stderr
	mov	r8, QWORD PTR [rbp-40]	# tmp79, _file_
	mov	rsi, QWORD PTR [rbp-32]	# tmp80, size
	mov	rcx, QWORD PTR [rbp-8]	# tmp81, ptr
	mov	rdx, QWORD PTR [rbp-24]	# tmp82, buf
	mov	QWORD PTR [rsp+8], rax	#, D.4142
	mov	eax, DWORD PTR [rbp-44]	# tmp83, _line_
	mov	DWORD PTR [rsp], eax	#, tmp83
	mov	r9, r8	#, tmp79
	mov	r8, rsi	#, tmp80
	mov	esi, OFFSET FLAT:.LC40	#,
	mov	eax, 0	#,
	call	fprintf	#
.L81:
	mov	rax, QWORD PTR [rbp-8]	# D.4135, ptr
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_coGetcwd, .-_coGetcwd
	.section	.rodata
	.align 4
.LC8:
	.long	1149239296
	.align 4
.LC10:
	.long	1233125376
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
