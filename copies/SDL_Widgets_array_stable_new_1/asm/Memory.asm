	.file	"Memory.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I /usr/include/SDL
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src/audio
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src/common
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src/graphics
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src/graphics/gtools
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src/widgets
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src/widgets/container
# -D _GNU_SOURCE=1 -D _REENTRANT Memory.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Memory.asm
# -O1 -Wall -fverbose-asm
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
	.string	"MM_Info: NULL info.\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"MM_Info[%3lu]: ptr[%p], call[%20s@%5d], create[%25s], size[%8lu], next[%p]\n"
	.text
	.type	MM_Info_print, @function
MM_Info_print:
.LFB93:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 64
	mov	rbx, rdi	# info, info
	mov	rbp, rsi	# ind, ind
	test	rdi, rdi	# info
	jne	.L2	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 20	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
.L2:
	mov	rax, QWORD PTR [rbx+40]	# info_1(D)->next, info_1(D)->next
	mov	QWORD PTR [rsp+24], rax	#, info_1(D)->next
	mov	rax, QWORD PTR [rbx+24]	# info_1(D)->full_size, info_1(D)->full_size
	mov	QWORD PTR [rsp+16], rax	#, info_1(D)->full_size
	mov	rax, QWORD PTR [rbx+16]	# info_1(D)->create_function_name, info_1(D)->create_function_name
	mov	QWORD PTR [rsp+8], rax	#, info_1(D)->create_function_name
	mov	eax, DWORD PTR [rbx+32]	# info_1(D)->call_file_line, info_1(D)->call_file_line
	mov	DWORD PTR [rsp], eax	#, info_1(D)->call_file_line
	mov	r9, QWORD PTR [rbx+8]	#, info_1(D)->call_file
	mov	r8, QWORD PTR [rbx]	#, info_1(D)->ptr
	mov	rcx, rbp	#, ind
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	MM_Info_print, .-MM_Info_print
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"mm_del_info: Attempt to delete unallocated pointer %p from function %s, [%s@%d]\n"
	.text
	.type	mm_del_info, @function
mm_del_info:
.LFB100:
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
	sub	rsp, 16	#,
	.cfi_def_cfa_offset 64
	mov	rbp, rdi	# ptr, ptr
	mov	r12, rsi	# fname, fname
	mov	r13, rdx	# _file, _file
	mov	r14d, ecx	# _line, _line
	mov	rbx, QWORD PTR first_mm[rip]	# actual, first_mm
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	test	rbx, rbx	# actual
	je	.L5	#,
	cmp	QWORD PTR [rbx], rbp	# actual_4->ptr, ptr
	jne	.L15	#,
	.p2align 4,,5
	jmp	.L13	#
.L14:
	mov	rbx, rdi	# actual, actual
.L15:
	mov	rdi, QWORD PTR [rbx+40]	# actual, actual_47->next
	test	rdi, rdi	# actual
	je	.L5	#,
	cmp	QWORD PTR [rdi], rbp	# actual_10->ptr, ptr
	jne	.L14	#,
	test	rbx, rbx	# actual
	je	.L6	#,
	mov	rdx, QWORD PTR [rdi+40]	# first_mm.3, actual_45->next
	mov	QWORD PTR [rbx+40], rdx	# actual_12->next, first_mm.3
	jmp	.L9	#
.L13:
	mov	rdi, rbx	# actual, actual
	mov	ebx, 0	# prev,
.L6:
	mov	rdx, QWORD PTR [rdi+40]	# actual_52->next, actual_52->next
	mov	QWORD PTR first_mm[rip], rdx	# first_mm, actual_52->next
.L9:
	cmp	QWORD PTR [rdi+40], 0	# actual_53->next,
	jne	.L10	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, prev
.L10:
	sub	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rdx, QWORD PTR [rdi+24]	# actual_53->full_size, actual_53->full_size
	sub	QWORD PTR size_alloc[rip], rdx	# size_alloc, actual_53->full_size
	call	free	#
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	mov	eax, 1	# D.8430,
	jmp	.L17	#
.L5:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	mov	DWORD PTR [rsp], r14d	#, _line
	mov	r9, r13	#, _file
	mov	r8, r12	#, fname
	mov	rcx, rbp	#, ptr
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8430,
.L17:
	add	rsp, 16	#,
	.cfi_def_cfa_offset 48
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
.LFE100:
	.size	mm_del_info, .-mm_del_info
	.section	.rodata.str1.1
.LC3:
	.string	"no error"
.LC4:
	.string	"failed to create mutex"
.LC5:
	.string	"detected memory leaks"
.LC6:
	.string	"unknown"
	.text
	.globl	Memory_getError
	.type	Memory_getError, @function
Memory_getError:
.LFB94:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC4	# D.8708,
	cmp	edi, 1	# err,
	je	.L22	#,
	mov	eax, OFFSET FLAT:.LC5	# D.8708,
	cmp	edi, 2	# err,
	je	.L22	#,
	test	edi, edi	# err
	mov	eax, OFFSET FLAT:.LC6	# tmp64,
	mov	edx, OFFSET FLAT:.LC3	# tmp63,
	cmove	rax, rdx	# tmp63,, D.8708
.L22:
	rep
	ret
	.cfi_endproc
.LFE94:
	.size	Memory_getError, .-Memory_getError
	.globl	Memory_init
	.type	Memory_init, @function
Memory_init:
.LFB95:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	SDL_CreateMutex	#
	mov	QWORD PTR mutex[rip], rax	# mutex, mutex.62
	test	rax, rax	# mutex.62
	sete	al	#, tmp64
	movzx	eax, al	# tmp64, tmp64
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Memory_init, .-Memory_init
	.section	.rodata.str1.1
.LC7:
	.string	"@@@ Allocated %lu bytes "
.LC9:
	.string	"(%3.2f KB) "
.LC11:
	.string	"(%3.2f MB) "
.LC12:
	.string	"in %lu memory areas.\n"
	.text
	.globl	Memory_printUsage
	.type	Memory_printUsage, @function
Memory_printUsage:
.LFB96:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	mov	rcx, QWORD PTR size_alloc[rip]	#, size_alloc
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR size_alloc[rip]	# size_alloc.59, size_alloc
	cmp	rax, 1023	# size_alloc.59,
	jbe	.L28	#,
	cmp	rax, 1048575	# size_alloc.59,
	ja	.L29	#,
	test	rax, rax	# size_alloc.59
	js	.L30	#,
	cvtsi2ss	xmm0, rax	# tmp74, size_alloc.59
	jmp	.L31	#
.L30:
	mov	rdx, rax	# tmp76, size_alloc.59
	shr	rdx	# tmp76
	and	eax, 1	# tmp77,
	or	rdx, rax	# tmp76, tmp77
	cvtsi2ss	xmm0, rdx	# tmp75, tmp76
	addss	xmm0, xmm0	# tmp74, tmp75
.L31:
	mulss	xmm0, DWORD PTR .LC8[rip]	# tmp78,
	unpcklps	xmm0, xmm0	# tmp78, tmp78
	cvtps2pd	xmm0, xmm0	# tmp80, tmp78
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 1	#,
	call	__fprintf_chk	#
	jmp	.L28	#
.L29:
	test	rax, rax	# size_alloc.59
	js	.L32	#,
	cvtsi2ss	xmm0, rax	# tmp81, size_alloc.59
	.p2align 4,,3
	jmp	.L33	#
.L32:
	mov	rdx, rax	# tmp83, size_alloc.59
	shr	rdx	# tmp83
	and	eax, 1	# tmp84,
	or	rdx, rax	# tmp83, tmp84
	cvtsi2ss	xmm0, rdx	# tmp82, tmp83
	addss	xmm0, xmm0	# tmp81, tmp82
.L33:
	mulss	xmm0, DWORD PTR .LC10[rip]	# tmp85,
	unpcklps	xmm0, xmm0	# tmp85, tmp85
	cvtps2pd	xmm0, xmm0	# tmp87, tmp85
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 1	#,
	call	__fprintf_chk	#
.L28:
	mov	rcx, QWORD PTR cnt_alloc[rip]	#, cnt_alloc
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Memory_printUsage, .-Memory_printUsage
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Memory_printAll: Memory content:\n"
	.text
	.globl	Memory_printAll
	.type	Memory_printAll, @function
Memory_printAll:
.LFB97:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 33	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC13	#,
	call	fwrite	#
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	mov	rbx, QWORD PTR first_mm[rip]	# info, first_mm
	test	rbx, rbx	# info
	je	.L36	#,
	mov	esi, 0	# i,
.L37:
	lea	rbp, [rsi+1]	# i,
	mov	rdi, rbx	#, info
	call	MM_Info_print	#
	mov	rbx, QWORD PTR [rbx+40]	# info, info_23->next
	mov	rsi, rbp	# i, i
	test	rbx, rbx	# info
	jne	.L37	#,
.L36:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	Memory_printAll, .-Memory_printAll
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"\n##########\nMemory_end: Memory leaks detected, still have %lu allocated memory areas of total size %lu bytes ::\n"
	.align 8
.LC15:
	.string	"\nMemory_end: Memory leaks detected, still have %lu allocated memory areas of total size %lu bytes\n##########\n\n"
	.align 8
.LC16:
	.string	"Memory_end: Memory is clean :)\n"
	.text
	.globl	Memory_end
	.type	Memory_end, @function
Memory_end:
.LFB98:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, QWORD PTR first_mm[rip]	# info, first_mm
	test	rbx, rbx	# info
	je	.L41	#,
	mov	r8, QWORD PTR size_alloc[rip]	#, size_alloc
	mov	rcx, QWORD PTR cnt_alloc[rip]	#, cnt_alloc
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	# i,
.L42:
	mov	rbp, QWORD PTR [rbx+40]	# t, info_44->next
	lea	r12, [rsi+1]	# i,
	mov	rdi, rbx	#, info
	call	MM_Info_print	#
	mov	rdi, rbx	#, info
	call	free	#
	mov	rbx, rbp	# info, t
	mov	rsi, r12	# i, i
	test	rbp, rbp	# t
	jne	.L42	#,
	mov	r8, QWORD PTR size_alloc[rip]	#, size_alloc
	mov	rcx, QWORD PTR cnt_alloc[rip]	#, cnt_alloc
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_DestroyMutex	#
	mov	eax, 2	# D.8674,
	jmp	.L43	#
.L41:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 31	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC16	#,
	call	fwrite	#
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_DestroyMutex	#
	mov	eax, 0	# D.8674,
.L43:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Memory_end, .-Memory_end
	.globl	MM_seek_ptr
	.type	MM_seek_ptr, @function
MM_seek_ptr:
.LFB101:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# ptr, ptr
	test	rdi, rdi	# ptr
	je	.L51	#,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	mov	rbx, QWORD PTR first_mm[rip]	# temp, first_mm
	test	rbx, rbx	# temp
	je	.L48	#,
	cmp	QWORD PTR [rbx], rbp	# temp_5->ptr, ptr
	jne	.L52	#,
	jmp	.L48	#
.L50:
	cmp	QWORD PTR [rbx], rbp	# temp_7->ptr, ptr
	.p2align 4,,5
	je	.L48	#,
.L52:
	mov	rbx, QWORD PTR [rbx+40]	# temp, temp_17->next
	test	rbx, rbx	# temp
	jne	.L50	#,
.L48:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	jmp	.L47	#
.L51:
	mov	ebx, 0	# temp,
.L47:
	mov	rax, rbx	#, temp
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	MM_seek_ptr, .-MM_seek_ptr
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wmalloc: Failed to allocate memory of size %lu (malloc returned NULL), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC18:
	.string	"wmalloc"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"%s: Failed to allocate MM_Info struct (malloc failed)\n"
	.section	.rodata.str1.1
.LC20:
	.string	"malloc"
	.text
	.globl	wmalloc
	.type	wmalloc, @function
wmalloc:
.LFB102:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rbx	#,
	mov	QWORD PTR [rsp-32], rbp	#,
	mov	QWORD PTR [rsp-24], r12	#,
	mov	QWORD PTR [rsp-16], r13	#,
	mov	QWORD PTR [rsp-8], r14	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	mov	r12, rdi	# __size, __size
	mov	r14, rsi	# _file_, _file_
	mov	r13d, edx	# _line_, _line_
	call	malloc	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L55	#,
	mov	r9d, r13d	#, _line_
	mov	r8, r14	#, _file_
	mov	rcx, r12	#, __size
	mov	edx, OFFSET FLAT:.LC17	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L56	#
.L55:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L57	#,
	mov	ecx, OFFSET FLAT:.LC18	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L56	#
.L57:
	mov	QWORD PTR [rax], rbp	# info_8->ptr, ptr
	mov	QWORD PTR [rax+8], r14	# info_8->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC20	# info_8->create_function_name,
	mov	QWORD PTR [rax+24], r12	# info_8->full_size, __size
	mov	DWORD PTR [rax+32], r13d	# info_8->call_file_line, _line_
	mov	QWORD PTR [rax+40], 0	# info_8->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_8->full_size, info_8->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_8->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L58	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L59	#
.L58:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_38->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L59:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L56:
	mov	rax, rbp	#, ptr
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	wmalloc, .-wmalloc
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wcalloc: Failed to allocate memory __nmemb=%lu, __size=%lu (calloc returned NULL), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC22:
	.string	"wcalloc"
.LC23:
	.string	"calloc"
	.text
	.globl	wcalloc
	.type	wcalloc, @function
wcalloc:
.LFB103:
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
	mov	r12, rdi	# __nmemb, __nmemb
	mov	r13, rsi	# __size, __size
	mov	r15, rdx	# _file_, _file_
	mov	r14d, ecx	# _line_, _line_
	call	calloc	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L62	#,
	mov	DWORD PTR [rsp], r14d	#, _line_
	mov	r9, r15	#, _file_
	mov	r8, r13	#, __size
	mov	rcx, r12	#, __nmemb
	mov	edx, OFFSET FLAT:.LC21	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L63	#
.L62:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L64	#,
	mov	ecx, OFFSET FLAT:.LC22	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L63	#
.L64:
	mov	QWORD PTR [rax], rbp	# info_9->ptr, ptr
	mov	QWORD PTR [rax+8], r15	# info_9->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC23	# info_9->create_function_name,
	imul	r12, r13	# tmp80, __size
	mov	QWORD PTR [rax+24], r12	# info_9->full_size, tmp80
	mov	DWORD PTR [rax+32], r14d	# info_9->call_file_line, _line_
	mov	QWORD PTR [rax+40], 0	# info_9->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_9->full_size, info_9->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_9->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L65	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L66	#
.L65:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_40->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L66:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L63:
	mov	rax, rbp	#, ptr
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
.LFE103:
	.size	wcalloc, .-wcalloc
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wrealloc: Failed to reallocate memory __ptr=%p, __size=%lu (realloc returned NULL), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC25:
	.string	"wrealloc"
.LC26:
	.string	"realloc"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wrealloc: Failed to find old info for __ptr=%p of NEW size %lu, file: %s, line: %d\n"
	.text
	.globl	wrealloc
	.type	wrealloc, @function
wrealloc:
.LFB104:
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
	mov	rbp, rdi	# __ptr, __ptr
	mov	r13, rsi	# __size, __size
	mov	r15, rdx	# _file_, _file_
	mov	r14d, ecx	# _line_, _line_
	call	realloc	#
	mov	r12, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L69	#,
	mov	DWORD PTR [rsp], r14d	#, _line_
	mov	r9, r15	#, _file_
	mov	r8, r13	#, __size
	mov	rcx, rbp	#, __ptr
	mov	edx, OFFSET FLAT:.LC24	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L80	#
.L69:
	test	r13, r13	# __size
	setne	al	#, D.8615
	je	.L71	#,
	test	rbp, rbp	# __ptr
	.p2align 4,,2
	jne	.L71	#,
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L72	#,
	mov	ecx, OFFSET FLAT:.LC25	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L80	#
.L72:
	mov	QWORD PTR [rax], r12	# info_12->ptr, ptr
	mov	QWORD PTR [rax+8], r15	# info_12->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC26	# info_12->create_function_name,
	mov	QWORD PTR [rax+24], r13	# info_12->full_size, __size
	mov	DWORD PTR [rax+32], r14d	# info_12->call_file_line, _line_
	mov	QWORD PTR [rax+40], 0	# info_12->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_12->full_size, info_12->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_12->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L73	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L74	#
.L73:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_69->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L74:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	jmp	.L80	#
.L71:
	test	rbp, rbp	# __ptr
	je	.L80	#,
	test	al, al	# D.8615
	.p2align 4,,6
	je	.L75	#,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	mov	rbx, QWORD PTR first_mm[rip]	# info, first_mm
	test	rbx, rbx	# info
	je	.L76	#,
	cmp	rbp, QWORD PTR [rbx]	# __ptr, info_72->ptr
	jne	.L81	#,
	jmp	.L77	#
.L79:
	cmp	rbp, QWORD PTR [rbx]	# __ptr, info_75->ptr
	.p2align 4,,5
	je	.L77	#,
.L81:
	mov	rbx, QWORD PTR [rbx+40]	# info, info_91->next
	test	rbx, rbx	# info
	jne	.L79	#,
	jmp	.L76	#
.L75:
	mov	ecx, r14d	#, _line_
	mov	rdx, r15	#, _file_
	mov	esi, OFFSET FLAT:.LC25	#,
	mov	rdi, rbp	#, __ptr
	call	mm_del_info	#
	mov	rdi, r12	#, ptr
	call	free	#
	mov	r12d, 0	# ptr,
	jmp	.L80	#
.L76:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	mov	DWORD PTR [rsp], r14d	#, _line_
	mov	r9, r15	#, _file_
	mov	r8, r13	#, __size
	mov	rcx, rbp	#, __ptr
	mov	edx, OFFSET FLAT:.LC27	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L80	#
.L77:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	mov	rax, QWORD PTR size_alloc[rip]	# size_alloc, size_alloc
	sub	rax, QWORD PTR [rbx+24]	# size_alloc.41, info_93->full_size
	mov	QWORD PTR [rbx], r12	# info_93->ptr, ptr
	mov	QWORD PTR [rbx+8], r15	# info_93->call_file, _file_
	mov	QWORD PTR [rbx+16], OFFSET FLAT:.LC26	# info_93->create_function_name,
	mov	QWORD PTR [rbx+24], r13	# info_93->full_size, __size
	mov	DWORD PTR [rbx+32], r14d	# info_93->call_file_line, _line_
	add	r13, rax	# tmp102, size_alloc.41
	mov	QWORD PTR size_alloc[rip], r13	# size_alloc, tmp102
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L80:
	mov	rax, r12	#, ptr
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
.LFE104:
	.size	wrealloc, .-wrealloc
	.section	.rodata.str1.1
.LC28:
	.string	"wfree"
	.text
	.globl	wfree
	.type	wfree, @function
wfree:
.LFB105:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# __ptr, __ptr
	test	rdi, rdi	# __ptr
	je	.L83	#,
	mov	ecx, edx	#, _line_
	mov	rdx, rsi	#, _file_
	mov	esi, OFFSET FLAT:.LC28	#,
	call	mm_del_info	#
	test	eax, eax	# D.8606
	je	.L83	#,
	mov	rdi, rbx	#, __ptr
	call	free	#
.L83:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE105:
	.size	wfree, .-wfree
	.globl	SDL_SURFACE_APPROX_SIZE
	.type	SDL_SURFACE_APPROX_SIZE, @function
SDL_SURFACE_APPROX_SIZE:
.LFB106:
	.cfi_startproc
	test	rdi, rdi	# ptr
	je	.L90	#,
	mov	rdx, QWORD PTR [rdi+8]	# fmt, ptr_3(D)->format
	movzx	eax, WORD PTR [rdi+24]	# ptr_3(D)->pitch, ptr_3(D)->pitch
	imul	eax, DWORD PTR [rdi+20]	# tmp74, ptr_3(D)->h
	cdqe
	test	rdx, rdx	# fmt
	jne	.L88	#,
	add	rax, 88	# size,
	ret
.L88:
	mov	rdx, QWORD PTR [rdx]	# pal, fmt_4->palette
	test	rdx, rdx	# pal
	jne	.L89	#,
	add	rax, 136	# size,
	ret
.L89:
	add	rax, 152	# size,
	cmp	QWORD PTR [rdx+8], 0	# pal_12->colors,
	je	.L87	#,
	movsx	rdx, DWORD PTR [rdx]	# pal_12->ncolors, pal_12->ncolors
	lea	rax, [rax+rdx*4]	# size,
	ret
.L90:
	mov	eax, 0	# size,
.L87:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	SDL_SURFACE_APPROX_SIZE, .-SDL_SURFACE_APPROX_SIZE
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"wSDL_ConvertSurface: Failed to allocate memory src=%p, fmt=%p, flags=0x%08X (SDL_ConvertSurface failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC30:
	.string	"wSDL_ConvertSurface"
.LC31:
	.string	"SDL_ConvertSurface"
	.text
	.globl	wSDL_ConvertSurface
	.type	wSDL_ConvertSurface, @function
wSDL_ConvertSurface:
.LFB107:
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
	mov	rbx, rdi	# src, src
	mov	r13, rsi	# fmt, fmt
	mov	r15d, edx	# flags, flags
	mov	r14, rcx	# _file_, _file_
	mov	r12d, r8d	# _line_, _line_
	call	SDL_ConvertSurface	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L92	#,
	call	SDL_GetError	#
	mov	DWORD PTR [rsp+16], r12d	#, _line_
	mov	QWORD PTR [rsp+8], r14	#, _file_
	mov	QWORD PTR [rsp], rax	#, D.8576
	mov	r9d, r15d	#, flags
	mov	r8, r13	#, fmt
	mov	rcx, rbx	#, src
	mov	edx, OFFSET FLAT:.LC29	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L93	#
.L92:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L94	#,
	mov	ecx, OFFSET FLAT:.LC30	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L93	#
.L94:
	mov	QWORD PTR [rax], rbp	# info_11->ptr, ptr
	mov	QWORD PTR [rax+8], r14	# info_11->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC31	# info_11->create_function_name,
	mov	rdx, QWORD PTR [rbp+8]	# fmt, ptr_5->format
	movzx	eax, WORD PTR [rbp+24]	# ptr_5->pitch, ptr_5->pitch
	imul	eax, DWORD PTR [rbp+20]	# tmp93, ptr_5->h
	cdqe
	test	rdx, rdx	# fmt
	jne	.L95	#,
	add	rax, 88	# size,
	jmp	.L96	#
.L95:
	mov	rdx, QWORD PTR [rdx]	# pal, fmt_36->palette
	test	rdx, rdx	# pal
	jne	.L97	#,
	add	rax, 136	# size,
	jmp	.L96	#
.L97:
	add	rax, 152	# size,
	cmp	QWORD PTR [rdx+8], 0	# pal_43->colors,
	je	.L96	#,
	movsx	rdx, DWORD PTR [rdx]	# pal_43->ncolors, pal_43->ncolors
	lea	rax, [rax+rdx*4]	# size,
.L96:
	mov	QWORD PTR [rbx+24], rax	# info_11->full_size, size
	mov	DWORD PTR [rbx+32], r12d	# info_11->call_file_line, _line_
	mov	QWORD PTR [rbx+40], 0	# info_11->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_11->full_size, info_11->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_11->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L98	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L99	#
.L98:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_59->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L99:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L93:
	mov	rax, rbp	#, ptr
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
.LFE107:
	.size	wSDL_ConvertSurface, .-wSDL_ConvertSurface
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"wSDL_CreateRGBSurface: Failed to allocate memory flags=0x%08X, width=%d, height=%d, depth=%d, Rmask=0x%08X, Gmask=0x%08X, Bmask=0x%08X, Amask=0x%08X (SDL_CreateRGBSurface failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC33:
	.string	"wSDL_CreateRGBSurface"
.LC34:
	.string	"SDL_CreateRGBSurface"
	.text
	.globl	wSDL_CreateRGBSurface
	.type	wSDL_CreateRGBSurface, @function
wSDL_CreateRGBSurface:
.LFB108:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 136	#,
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	DWORD PTR [rsp+76], edi	# %sfp, flags
	mov	ebp, esi	# width, width
	mov	r12d, edx	# height, height
	mov	r13d, ecx	# depth, depth
	mov	r14d, r8d	# Rmask, Rmask
	mov	r15d, r9d	# Gmask, Gmask
	mov	eax, DWORD PTR [rsp+152]	#, Amask
	mov	DWORD PTR [rsp+8], eax	#,
	mov	edx, DWORD PTR [rsp+144]	#, Bmask
	mov	DWORD PTR [rsp], edx	#,
	mov	edx, r12d	#, height
	call	SDL_CreateRGBSurface	#
	mov	rbx, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L102	#,
	call	SDL_GetError	#
	mov	edx, DWORD PTR [rsp+168]	#, _line_
	mov	DWORD PTR [rsp+56], edx	#,
	mov	rdx, QWORD PTR [rsp+160]	#, _file_
	mov	QWORD PTR [rsp+48], rdx	#,
	mov	QWORD PTR [rsp+40], rax	#, D.8565
	mov	eax, DWORD PTR [rsp+152]	#, Amask
	mov	DWORD PTR [rsp+32], eax	#,
	mov	edx, DWORD PTR [rsp+144]	#, Bmask
	mov	DWORD PTR [rsp+24], edx	#,
	mov	DWORD PTR [rsp+16], r15d	#, Gmask
	mov	DWORD PTR [rsp+8], r14d	#, Rmask
	mov	DWORD PTR [rsp], r13d	#, depth
	mov	r9d, r12d	#, height
	mov	r8d, ebp	#, width
	mov	ecx, DWORD PTR [rsp+76]	#, %sfp
	mov	edx, OFFSET FLAT:.LC32	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L103	#
.L102:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbp, rax	# info,
	test	rax, rax	# info
	jne	.L104	#,
	mov	ecx, OFFSET FLAT:.LC33	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L103	#
.L104:
	mov	QWORD PTR [rax], rbx	# info_16->ptr, ptr
	mov	rax, QWORD PTR [rsp+160]	#, _file_
	mov	QWORD PTR [rbp+8], rax	# info_16->call_file,
	mov	QWORD PTR [rbp+16], OFFSET FLAT:.LC34	# info_16->create_function_name,
	mov	rdx, QWORD PTR [rbx+8]	# fmt, ptr_10->format
	movzx	eax, WORD PTR [rbx+24]	# ptr_10->pitch, ptr_10->pitch
	imul	eax, DWORD PTR [rbx+20]	# tmp98, ptr_10->h
	cdqe
	test	rdx, rdx	# fmt
	jne	.L105	#,
	add	rax, 88	# size,
	jmp	.L106	#
.L105:
	mov	rdx, QWORD PTR [rdx]	# pal, fmt_41->palette
	test	rdx, rdx	# pal
	jne	.L107	#,
	add	rax, 136	# size,
	jmp	.L106	#
.L107:
	add	rax, 152	# size,
	cmp	QWORD PTR [rdx+8], 0	# pal_48->colors,
	je	.L106	#,
	movsx	rdx, DWORD PTR [rdx]	# pal_48->ncolors, pal_48->ncolors
	lea	rax, [rax+rdx*4]	# size,
.L106:
	mov	QWORD PTR [rbp+24], rax	# info_16->full_size, size
	mov	edx, DWORD PTR [rsp+168]	#, _line_
	mov	DWORD PTR [rbp+32], edx	# info_16->call_file_line,
	mov	QWORD PTR [rbp+40], 0	# info_16->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbp+24]	# info_16->full_size, info_16->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_16->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L108	#,
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbp	# first_mm, info
	jmp	.L109	#
.L108:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbp	# last_mm.16_64->next, info
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
.L109:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L103:
	mov	rax, rbx	#, ptr
	mov	rbx, QWORD PTR [rsp+88]	#,
	mov	rbp, QWORD PTR [rsp+96]	#,
	mov	r12, QWORD PTR [rsp+104]	#,
	mov	r13, QWORD PTR [rsp+112]	#,
	mov	r14, QWORD PTR [rsp+120]	#,
	mov	r15, QWORD PTR [rsp+128]	#,
	add	rsp, 136	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	wSDL_CreateRGBSurface, .-wSDL_CreateRGBSurface
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"wSDL_CreateRGBSurfaceFrom: Failed to allocate memory pixels=%p, width=%d, height=%d, depth=%d, pitch=%d, Rmask=0x%08X, Gmask=0x%08X, Bmask=0x%08X, Amask=0x%08X (SDL_CreateRGBSurfaceFrom failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC36:
	.string	"wSDL_CreateRGBSurfaceFrom"
.LC37:
	.string	"SDL_CreateRGBSurfaceFrom"
	.text
	.globl	wSDL_CreateRGBSurfaceFrom
	.type	wSDL_CreateRGBSurfaceFrom, @function
wSDL_CreateRGBSurfaceFrom:
.LFB109:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 152	#,
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	QWORD PTR [rsp+88], rdi	# %sfp, pixels
	mov	ebp, esi	# width, width
	mov	r12d, edx	# height, height
	mov	r13d, ecx	# depth, depth
	mov	r14d, r8d	# pitch, pitch
	mov	r15d, r9d	# Rmask, Rmask
	mov	eax, DWORD PTR [rsp+176]	#, Amask
	mov	DWORD PTR [rsp+16], eax	#,
	mov	edx, DWORD PTR [rsp+168]	#, Bmask
	mov	DWORD PTR [rsp+8], edx	#,
	mov	eax, DWORD PTR [rsp+160]	#, Gmask
	mov	DWORD PTR [rsp], eax	#,
	mov	edx, r12d	#, height
	call	SDL_CreateRGBSurfaceFrom	#
	mov	rbx, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L112	#,
	call	SDL_GetError	#
	mov	edx, DWORD PTR [rsp+192]	#, _line_
	mov	DWORD PTR [rsp+64], edx	#,
	mov	rdx, QWORD PTR [rsp+184]	#, _file_
	mov	QWORD PTR [rsp+56], rdx	#,
	mov	QWORD PTR [rsp+48], rax	#, D.8554
	mov	eax, DWORD PTR [rsp+176]	#, Amask
	mov	DWORD PTR [rsp+40], eax	#,
	mov	edx, DWORD PTR [rsp+168]	#, Bmask
	mov	DWORD PTR [rsp+32], edx	#,
	mov	eax, DWORD PTR [rsp+160]	#, Gmask
	mov	DWORD PTR [rsp+24], eax	#,
	mov	DWORD PTR [rsp+16], r15d	#, Rmask
	mov	DWORD PTR [rsp+8], r14d	#, pitch
	mov	DWORD PTR [rsp], r13d	#, depth
	mov	r9d, r12d	#, height
	mov	r8d, ebp	#, width
	mov	rcx, QWORD PTR [rsp+88]	#, %sfp
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L113	#
.L112:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbp, rax	# info,
	test	rax, rax	# info
	jne	.L114	#,
	mov	ecx, OFFSET FLAT:.LC36	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L113	#
.L114:
	mov	QWORD PTR [rax], rbx	# info_17->ptr, ptr
	mov	rdx, QWORD PTR [rsp+184]	#, _file_
	mov	QWORD PTR [rax+8], rdx	# info_17->call_file,
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC37	# info_17->create_function_name,
	mov	rdx, QWORD PTR [rbx+8]	# fmt, ptr_11->format
	movzx	eax, WORD PTR [rbx+24]	# ptr_11->pitch, ptr_11->pitch
	imul	eax, DWORD PTR [rbx+20]	# tmp99, ptr_11->h
	cdqe
	test	rdx, rdx	# fmt
	jne	.L115	#,
	add	rax, 88	# size,
	jmp	.L116	#
.L115:
	mov	rdx, QWORD PTR [rdx]	# pal, fmt_42->palette
	test	rdx, rdx	# pal
	jne	.L117	#,
	add	rax, 136	# size,
	jmp	.L116	#
.L117:
	add	rax, 152	# size,
	cmp	QWORD PTR [rdx+8], 0	# pal_49->colors,
	je	.L116	#,
	movsx	rdx, DWORD PTR [rdx]	# pal_49->ncolors, pal_49->ncolors
	lea	rax, [rax+rdx*4]	# size,
.L116:
	mov	QWORD PTR [rbp+24], rax	# info_17->full_size, size
	mov	eax, DWORD PTR [rsp+192]	#, _line_
	mov	DWORD PTR [rbp+32], eax	# info_17->call_file_line,
	mov	QWORD PTR [rbp+40], 0	# info_17->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbp+24]	# info_17->full_size, info_17->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_17->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L118	#,
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbp	# first_mm, info
	jmp	.L119	#
.L118:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbp	# last_mm.16_65->next, info
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
.L119:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L113:
	mov	rax, rbx	#, ptr
	mov	rbx, QWORD PTR [rsp+104]	#,
	mov	rbp, QWORD PTR [rsp+112]	#,
	mov	r12, QWORD PTR [rsp+120]	#,
	mov	r13, QWORD PTR [rsp+128]	#,
	mov	r14, QWORD PTR [rsp+136]	#,
	mov	r15, QWORD PTR [rsp+144]	#,
	add	rsp, 152	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	wSDL_CreateRGBSurfaceFrom, .-wSDL_CreateRGBSurfaceFrom
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"wSDL_SetVideoMode: Failed to allocate memory width=%d, height=%d, bpp=%d, flags=0x%08X (SDL_SetVideoMode failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC39:
	.string	"wSDL_SetVideoMode"
.LC40:
	.string	"SDL_SetVideoMode"
	.text
	.globl	wSDL_SetVideoMode
	.type	wSDL_SetVideoMode, @function
wSDL_SetVideoMode:
.LFB110:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	DWORD PTR [rsp+44], edi	# %sfp, width
	mov	ebp, esi	# height, height
	mov	r12d, edx	# bpp, bpp
	mov	r13d, ecx	# flags, flags
	mov	r15, r8	# _file_, _file_
	mov	r14d, r9d	# _line_, _line_
	call	SDL_SetVideoMode	#
	mov	rbx, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L122	#,
	call	SDL_GetError	#
	mov	DWORD PTR [rsp+24], r14d	#, _line_
	mov	QWORD PTR [rsp+16], r15	#, _file_
	mov	QWORD PTR [rsp+8], rax	#, D.8543
	mov	DWORD PTR [rsp], r13d	#, flags
	mov	r9d, r12d	#, bpp
	mov	r8d, ebp	#, height
	mov	ecx, DWORD PTR [rsp+44]	#, %sfp
	mov	edx, OFFSET FLAT:.LC38	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L123	#
.L122:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbp, rax	# info,
	test	rax, rax	# info
	jne	.L124	#,
	mov	ecx, OFFSET FLAT:.LC39	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L123	#
.L124:
	mov	QWORD PTR [rax], rbx	# info_12->ptr, ptr
	mov	QWORD PTR [rax+8], r15	# info_12->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC40	# info_12->create_function_name,
	mov	rdx, QWORD PTR [rbx+8]	# fmt, ptr_6->format
	movzx	eax, WORD PTR [rbx+24]	# ptr_6->pitch, ptr_6->pitch
	imul	eax, DWORD PTR [rbx+20]	# tmp94, ptr_6->h
	cdqe
	test	rdx, rdx	# fmt
	jne	.L125	#,
	add	rax, 88	# size,
	jmp	.L126	#
.L125:
	mov	rdx, QWORD PTR [rdx]	# pal, fmt_37->palette
	test	rdx, rdx	# pal
	jne	.L127	#,
	add	rax, 136	# size,
	jmp	.L126	#
.L127:
	add	rax, 152	# size,
	cmp	QWORD PTR [rdx+8], 0	# pal_44->colors,
	je	.L126	#,
	movsx	rdx, DWORD PTR [rdx]	# pal_44->ncolors, pal_44->ncolors
	lea	rax, [rax+rdx*4]	# size,
.L126:
	mov	QWORD PTR [rbp+24], rax	# info_12->full_size, size
	mov	DWORD PTR [rbp+32], r14d	# info_12->call_file_line, _line_
	mov	QWORD PTR [rbp+40], 0	# info_12->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbp+24]	# info_12->full_size, info_12->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_12->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L128	#,
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbp	# first_mm, info
	jmp	.L129	#
.L128:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbp	# last_mm.16_60->next, info
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
.L129:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L123:
	mov	rax, rbx	#, ptr
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	wSDL_SetVideoMode, .-wSDL_SetVideoMode
	.section	.rodata.str1.1
.LC41:
	.string	"wSDL_FreeSurface"
	.text
	.globl	wSDL_FreeSurface
	.type	wSDL_FreeSurface, @function
wSDL_FreeSurface:
.LFB111:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# surface, surface
	test	rdi, rdi	# surface
	je	.L131	#,
	mov	ecx, edx	#, _line_
	mov	rdx, rsi	#, _file_
	mov	esi, OFFSET FLAT:.LC41	#,
	call	mm_del_info	#
	test	eax, eax	# D.8537
	je	.L131	#,
	mov	rdi, rbx	#, surface
	call	SDL_FreeSurface	#
.L131:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE111:
	.size	wSDL_FreeSurface, .-wSDL_FreeSurface
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"wTTF_RenderUTF8_Solid: Failed to allocate memory font=%p, text=%p, fg.r=0x%02X, fg.g=0x%02X, fg.b=0x%02X  (TTF_RenderUTF8_Solid failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC43:
	.string	"wTTF_RenderUTF8_Solid"
.LC44:
	.string	"TTF_RenderUTF8_Solid"
	.text
	.globl	wTTF_RenderUTF8_Solid
	.type	wTTF_RenderUTF8_Solid, @function
wTTF_RenderUTF8_Solid:
.LFB112:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	r13, rdi	# font, font
	mov	r15, rsi	# text, text
	mov	ebx, edx	# fg, fg
	mov	r14, rcx	# _file_, _file_
	mov	r12d, r8d	# _line_, _line_
	call	TTF_RenderUTF8_Solid	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L135	#,
	call	SDL_GetError	#
	mov	DWORD PTR [rsp+32], r12d	#, _line_
	mov	QWORD PTR [rsp+24], r14	#, _file_
	mov	QWORD PTR [rsp+16], rax	#, D.8520
	mov	eax, ebx	#, fg
	shr	eax, 16	#,
	movzx	eax, al	# tmp102, tmp101
	mov	DWORD PTR [rsp+8], eax	#, tmp102
	movzx	eax, bh	# tmp104, fg
	mov	DWORD PTR [rsp], eax	#, tmp104
	movzx	r9d, bl	#, fg
	mov	r8, r15	#, text
	mov	rcx, r13	#, font
	mov	edx, OFFSET FLAT:.LC42	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L136	#
.L135:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L137	#,
	mov	ecx, OFFSET FLAT:.LC43	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L136	#
.L137:
	mov	QWORD PTR [rax], rbp	# info_16->ptr, ptr
	mov	QWORD PTR [rax+8], r14	# info_16->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC44	# info_16->create_function_name,
	mov	rdx, QWORD PTR [rbp+8]	# fmt, ptr_4->format
	movzx	eax, WORD PTR [rbp+24]	# ptr_4->pitch, ptr_4->pitch
	imul	eax, DWORD PTR [rbp+20]	# tmp107, ptr_4->h
	cdqe
	test	rdx, rdx	# fmt
	jne	.L138	#,
	add	rax, 88	# size,
	jmp	.L139	#
.L138:
	mov	rdx, QWORD PTR [rdx]	# pal, fmt_41->palette
	test	rdx, rdx	# pal
	jne	.L140	#,
	add	rax, 136	# size,
	jmp	.L139	#
.L140:
	add	rax, 152	# size,
	cmp	QWORD PTR [rdx+8], 0	# pal_48->colors,
	je	.L139	#,
	movsx	rdx, DWORD PTR [rdx]	# pal_48->ncolors, pal_48->ncolors
	lea	rax, [rax+rdx*4]	# size,
.L139:
	mov	QWORD PTR [rbx+24], rax	# info_16->full_size, size
	mov	DWORD PTR [rbx+32], r12d	# info_16->call_file_line, _line_
	mov	QWORD PTR [rbx+40], 0	# info_16->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_16->full_size, info_16->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_16->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L141	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L142	#
.L141:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_64->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L142:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L136:
	mov	rax, rbp	#, ptr
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	wTTF_RenderUTF8_Solid, .-wTTF_RenderUTF8_Solid
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"wzoomSurface: Failed to allocate memory src=%p, zoomx=%f, zoomy=%f, smooth=%d (zoomSurface failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC46:
	.string	"wzoomSurface"
.LC47:
	.string	"zoomSurface"
	.text
	.globl	wzoomSurface
	.type	wzoomSurface, @function
wzoomSurface:
.LFB113:
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
	mov	QWORD PTR [rsp+24], rdi	# %sfp, src
	movd	rbp, xmm0	# zoomx, zoomx
	movd	r12, xmm1	# zoomy, zoomy
	mov	r13d, esi	# smooth, smooth
	mov	r15, rdx	# _file_, _file_
	mov	r14d, ecx	# _line_, _line_
	call	zoomSurface	#
	mov	rbx, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L145	#,
	call	SDL_GetError	#
	mov	r9, rax	# D.8509,
	mov	DWORD PTR [rsp+8], r14d	#, _line_
	mov	QWORD PTR [rsp], r15	#, _file_
	mov	r8d, r13d	#, smooth
	movd	xmm1, r12	#, zoomy
	movd	xmm0, rbp	#, zoomx
	mov	rcx, QWORD PTR [rsp+24]	#, %sfp
	mov	edx, OFFSET FLAT:.LC45	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 2	#,
	call	__fprintf_chk	#
	jmp	.L146	#
.L145:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbp, rax	# info,
	test	rax, rax	# info
	jne	.L147	#,
	mov	ecx, OFFSET FLAT:.LC46	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L146	#
.L147:
	mov	QWORD PTR [rax], rbx	# info_12->ptr, ptr
	mov	QWORD PTR [rax+8], r15	# info_12->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC47	# info_12->create_function_name,
	mov	rdx, QWORD PTR [rbx+8]	# fmt, ptr_6->format
	movzx	eax, WORD PTR [rbx+24]	# ptr_6->pitch, ptr_6->pitch
	imul	eax, DWORD PTR [rbx+20]	# tmp94, ptr_6->h
	cdqe
	test	rdx, rdx	# fmt
	jne	.L148	#,
	add	rax, 88	# size,
	jmp	.L149	#
.L148:
	mov	rdx, QWORD PTR [rdx]	# pal, fmt_37->palette
	test	rdx, rdx	# pal
	jne	.L150	#,
	add	rax, 136	# size,
	jmp	.L149	#
.L150:
	add	rax, 152	# size,
	cmp	QWORD PTR [rdx+8], 0	# pal_44->colors,
	je	.L149	#,
	movsx	rdx, DWORD PTR [rdx]	# pal_44->ncolors, pal_44->ncolors
	lea	rax, [rax+rdx*4]	# size,
.L149:
	mov	QWORD PTR [rbp+24], rax	# info_12->full_size, size
	mov	DWORD PTR [rbp+32], r14d	# info_12->call_file_line, _line_
	mov	QWORD PTR [rbp+40], 0	# info_12->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbp+24]	# info_12->full_size, info_12->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_12->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L151	#,
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbp	# first_mm, info
	jmp	.L152	#
.L151:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbp	# last_mm.16_60->next, info
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
.L152:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L146:
	mov	rax, rbx	#, ptr
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
.LFE113:
	.size	wzoomSurface, .-wzoomSurface
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"wIMG_Load: Failed to allocate memory file=%s (IMG_Load failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC49:
	.string	"wIMG_Load"
.LC50:
	.string	"IMG_Load"
	.text
	.globl	wIMG_Load
	.type	wIMG_Load, @function
wIMG_Load:
.LFB114:
	.cfi_startproc
	mov	QWORD PTR [rsp-32], rbx	#,
	mov	QWORD PTR [rsp-24], rbp	#,
	mov	QWORD PTR [rsp-16], r12	#,
	mov	QWORD PTR [rsp-8], r13	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	mov	rbx, rdi	# file, file
	mov	r13, rsi	# _file_, _file_
	mov	r12d, edx	# _line_, _line_
	call	IMG_Load	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L155	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8498,
	mov	DWORD PTR [rsp], r12d	#, _line_
	mov	r9, r13	#, _file_
	mov	rcx, rbx	#, file
	mov	edx, OFFSET FLAT:.LC48	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L156	#
.L155:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L157	#,
	mov	ecx, OFFSET FLAT:.LC49	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L156	#
.L157:
	mov	QWORD PTR [rax], rbp	# info_9->ptr, ptr
	mov	QWORD PTR [rax+8], r13	# info_9->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC50	# info_9->create_function_name,
	mov	rcx, QWORD PTR [rbp+8]	# fmt, ptr_3->format
	movzx	eax, WORD PTR [rbp+24]	# ptr_3->pitch, ptr_3->pitch
	imul	eax, DWORD PTR [rbp+20]	# tmp91, ptr_3->h
	cdqe
	test	rcx, rcx	# fmt
	jne	.L158	#,
	add	rax, 88	# size,
	jmp	.L159	#
.L158:
	mov	rcx, QWORD PTR [rcx]	# pal, fmt_34->palette
	test	rcx, rcx	# pal
	jne	.L160	#,
	add	rax, 136	# size,
	jmp	.L159	#
.L160:
	add	rax, 152	# size,
	cmp	QWORD PTR [rcx+8], 0	# pal_41->colors,
	je	.L159	#,
	movsx	rdx, DWORD PTR [rcx]	# pal_41->ncolors, pal_41->ncolors
	lea	rax, [rax+rdx*4]	# size,
.L159:
	mov	QWORD PTR [rbx+24], rax	# info_9->full_size, size
	mov	DWORD PTR [rbx+32], r12d	# info_9->call_file_line, _line_
	mov	QWORD PTR [rbx+40], 0	# info_9->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_9->full_size, info_9->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_9->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L161	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L162	#
.L161:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_57->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L162:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L156:
	mov	rax, rbp	#, ptr
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	wIMG_Load, .-wIMG_Load
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"wTTF_OpenFont: Failed to allocate memory file=%s, ptsize=%d (TTF_OpenFont failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC52:
	.string	"wTTF_OpenFont"
.LC53:
	.string	"TTF_OpenFont"
	.text
	.globl	wTTF_OpenFont
	.type	wTTF_OpenFont, @function
wTTF_OpenFont:
.LFB115:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rbx	#,
	mov	QWORD PTR [rsp-32], rbp	#,
	mov	QWORD PTR [rsp-24], r12	#,
	mov	QWORD PTR [rsp-16], r13	#,
	mov	QWORD PTR [rsp-8], r14	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	mov	rbx, rdi	# file, file
	mov	r12d, esi	# ptsize, ptsize
	mov	r14, rdx	# _file_, _file_
	mov	r13d, ecx	# _line_, _line_
	call	TTF_OpenFont	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L165	#,
	call	SDL_GetError	#
	mov	r9, rax	# D.8488,
	mov	DWORD PTR [rsp+8], r13d	#, _line_
	mov	QWORD PTR [rsp], r14	#, _file_
	mov	r8d, r12d	#, ptsize
	mov	rcx, rbx	#, file
	mov	edx, OFFSET FLAT:.LC51	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L166	#
.L165:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L167	#,
	mov	ecx, OFFSET FLAT:.LC52	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L166	#
.L167:
	mov	QWORD PTR [rax], rbp	# info_10->ptr, ptr
	mov	QWORD PTR [rax+8], r14	# info_10->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC53	# info_10->create_function_name,
	mov	QWORD PTR [rax+24], 0	# info_10->full_size,
	mov	DWORD PTR [rax+32], r13d	# info_10->call_file_line, _line_
	mov	QWORD PTR [rax+40], 0	# info_10->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_10->full_size, info_10->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_10->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L168	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L169	#
.L168:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_41->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L169:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L166:
	mov	rax, rbp	#, ptr
	mov	rbx, QWORD PTR [rsp+16]	#,
	mov	rbp, QWORD PTR [rsp+24]	#,
	mov	r12, QWORD PTR [rsp+32]	#,
	mov	r13, QWORD PTR [rsp+40]	#,
	mov	r14, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	wTTF_OpenFont, .-wTTF_OpenFont
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"wTTF_OpenFontIndex: Failed to allocate memory file=%s, ptsize=%d, index=%ld (TTF_OpenFontIndex failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC55:
	.string	"wTTF_OpenFontIndex"
.LC56:
	.string	"TTF_OpenFontIndex"
	.text
	.globl	wTTF_OpenFontIndex
	.type	wTTF_OpenFontIndex, @function
wTTF_OpenFontIndex:
.LFB116:
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
	mov	rbx, rdi	# file, file
	mov	r12d, esi	# ptsize, ptsize
	mov	r15, rdx	# index, index
	mov	r14, rcx	# _file_, _file_
	mov	r13d, r8d	# _line_, _line_
	call	TTF_OpenFontIndex	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L172	#,
	call	SDL_GetError	#
	mov	DWORD PTR [rsp+16], r13d	#, _line_
	mov	QWORD PTR [rsp+8], r14	#, _file_
	mov	QWORD PTR [rsp], rax	#, D.8478
	mov	r9, r15	#, index
	mov	r8d, r12d	#, ptsize
	mov	rcx, rbx	#, file
	mov	edx, OFFSET FLAT:.LC54	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L173	#
.L172:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L174	#,
	mov	ecx, OFFSET FLAT:.LC55	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L173	#
.L174:
	mov	QWORD PTR [rax], rbp	# info_11->ptr, ptr
	mov	QWORD PTR [rax+8], r14	# info_11->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC56	# info_11->create_function_name,
	mov	QWORD PTR [rax+24], 0	# info_11->full_size,
	mov	DWORD PTR [rax+32], r13d	# info_11->call_file_line, _line_
	mov	QWORD PTR [rax+40], 0	# info_11->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_11->full_size, info_11->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_11->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L175	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L176	#
.L175:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_42->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L176:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L173:
	mov	rax, rbp	#, ptr
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
.LFE116:
	.size	wTTF_OpenFontIndex, .-wTTF_OpenFontIndex
	.section	.rodata.str1.8
	.align 8
.LC57:
	.string	"wTTF_OpenFontRW: Failed to allocate memory src=%p, freesrc=%d, ptsize=%d (TTF_OpenFontRW failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC58:
	.string	"wTTF_OpenFontRW"
.LC59:
	.string	"TTF_OpenFontRW"
	.text
	.globl	wTTF_OpenFontRW
	.type	wTTF_OpenFontRW, @function
wTTF_OpenFontRW:
.LFB117:
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
	mov	rbx, rdi	# src, src
	mov	r12d, esi	# freesrc, freesrc
	mov	r15d, edx	# ptsize, ptsize
	mov	r14, rcx	# _file_, _file_
	mov	r13d, r8d	# _line_, _line_
	call	TTF_OpenFontRW	#
	mov	rbp, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L179	#,
	call	SDL_GetError	#
	mov	DWORD PTR [rsp+16], r13d	#, _line_
	mov	QWORD PTR [rsp+8], r14	#, _file_
	mov	QWORD PTR [rsp], rax	#, D.8468
	mov	r9d, r15d	#, ptsize
	mov	r8d, r12d	#, freesrc
	mov	rcx, rbx	#, src
	mov	edx, OFFSET FLAT:.LC57	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L180	#
.L179:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbx, rax	# info,
	test	rax, rax	# info
	jne	.L181	#,
	mov	ecx, OFFSET FLAT:.LC58	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L180	#
.L181:
	mov	QWORD PTR [rax], rbp	# info_11->ptr, ptr
	mov	QWORD PTR [rax+8], r14	# info_11->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC59	# info_11->create_function_name,
	mov	QWORD PTR [rax+24], 0	# info_11->full_size,
	mov	DWORD PTR [rax+32], r13d	# info_11->call_file_line, _line_
	mov	QWORD PTR [rax+40], 0	# info_11->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbx+24]	# info_11->full_size, info_11->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_11->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L182	#,
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbx	# first_mm, info
	jmp	.L183	#
.L182:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbx	# last_mm.16_42->next, info
	mov	QWORD PTR last_mm[rip], rbx	# last_mm, info
.L183:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L180:
	mov	rax, rbp	#, ptr
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
.LFE117:
	.size	wTTF_OpenFontRW, .-wTTF_OpenFontRW
	.section	.rodata.str1.8
	.align 8
.LC60:
	.string	"wTTF_OpenFontIndexRW: Failed to allocate memory src=%p, freesrc=%d, ptsize=%d, index=%ld (TTF_OpenFontIndexRW failed with error %s), file: %s, line: %d\n"
	.section	.rodata.str1.1
.LC61:
	.string	"wTTF_OpenFontIndexRW"
.LC62:
	.string	"TTF_OpenFontIndexRW"
	.text
	.globl	wTTF_OpenFontIndexRW
	.type	wTTF_OpenFontIndexRW, @function
wTTF_OpenFontIndexRW:
.LFB118:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	QWORD PTR [rsp+40], rdi	# %sfp, src
	mov	ebp, esi	# freesrc, freesrc
	mov	r12d, edx	# ptsize, ptsize
	mov	r13, rcx	# index, index
	mov	r15, r8	# _file_, _file_
	mov	r14d, r9d	# _line_, _line_
	call	TTF_OpenFontIndexRW	#
	mov	rbx, rax	# ptr,
	test	rax, rax	# ptr
	jne	.L186	#,
	call	SDL_GetError	#
	mov	DWORD PTR [rsp+24], r14d	#, _line_
	mov	QWORD PTR [rsp+16], r15	#, _file_
	mov	QWORD PTR [rsp+8], rax	#, D.8447
	mov	QWORD PTR [rsp], r13	#, index
	mov	r9d, r12d	#, ptsize
	mov	r8d, ebp	#, freesrc
	mov	rcx, QWORD PTR [rsp+40]	#, %sfp
	mov	edx, OFFSET FLAT:.LC60	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L187	#
.L186:
	mov	edi, 48	#,
	call	malloc	#
	mov	rbp, rax	# info,
	test	rax, rax	# info
	jne	.L188	#,
	mov	ecx, OFFSET FLAT:.LC61	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L187	#
.L188:
	mov	QWORD PTR [rax], rbx	# info_12->ptr, ptr
	mov	QWORD PTR [rax+8], r15	# info_12->call_file, _file_
	mov	QWORD PTR [rax+16], OFFSET FLAT:.LC62	# info_12->create_function_name,
	mov	QWORD PTR [rax+24], 0	# info_12->full_size,
	mov	DWORD PTR [rax+32], r14d	# info_12->call_file_line, _line_
	mov	QWORD PTR [rax+40], 0	# info_12->next,
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexP	#
	add	QWORD PTR cnt_alloc[rip], 1	# cnt_alloc,
	mov	rax, QWORD PTR [rbp+24]	# info_12->full_size, info_12->full_size
	add	QWORD PTR size_alloc[rip], rax	# size_alloc, info_12->full_size
	cmp	QWORD PTR first_mm[rip], 0	# first_mm,
	jne	.L189	#,
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
	mov	QWORD PTR first_mm[rip], rbp	# first_mm, info
	jmp	.L190	#
.L189:
	mov	rax, QWORD PTR last_mm[rip]	# last_mm, last_mm
	mov	QWORD PTR [rax+40], rbp	# last_mm.16_43->next, info
	mov	QWORD PTR last_mm[rip], rbp	# last_mm, info
.L190:
	mov	rdi, QWORD PTR mutex[rip]	#, mutex
	call	SDL_mutexV	#
.L187:
	mov	rax, rbx	#, ptr
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	wTTF_OpenFontIndexRW, .-wTTF_OpenFontIndexRW
	.section	.rodata.str1.1
.LC63:
	.string	"wTTF_CloseFont"
	.text
	.globl	wTTF_CloseFont
	.type	wTTF_CloseFont, @function
wTTF_CloseFont:
.LFB119:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# font, font
	test	rdi, rdi	# font
	je	.L192	#,
	mov	ecx, edx	#, _line_
	mov	rdx, rsi	#, _file_
	mov	esi, OFFSET FLAT:.LC63	#,
	call	mm_del_info	#
	test	eax, eax	# D.8419
	je	.L192	#,
	mov	rdi, rbx	#, font
	call	TTF_CloseFont	#
.L192:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE119:
	.size	wTTF_CloseFont, .-wTTF_CloseFont
	.local	mutex
	.comm	mutex,8,8
	.local	size_alloc
	.comm	size_alloc,8,8
	.local	cnt_alloc
	.comm	cnt_alloc,8,8
	.local	first_mm
	.comm	first_mm,8,8
	.local	last_mm
	.comm	last_mm,8,8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC8:
	.long	981467136
	.align 4
.LC10:
	.long	897581056
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
