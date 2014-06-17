	.file	"Callback.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Callback.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Callback.asm
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
	.string	"Callback.c"
	.text
	.type	Callback_vdestroy, @function
Callback_vdestroy:
.LFB93:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# vthis, vthis
	cmp	QWORD PTR [rdi+16], 0	# MEM[(struct Callback *)vthis_2(D)].cb,
	je	.L2	#,
	cmp	DWORD PTR [rdi+24], 0	# MEM[(struct Callback *)vthis_2(D)].cb_size,
	je	.L3	#,
	mov	ebx, 0	# i,
.L5:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*2]	# tmp77,
	sal	rax, 3	# tmp78,
	add	rax, QWORD PTR [rbp+16]	# tmp79, MEM[(struct Callback *)vthis_2(D)].cb
	mov	rdi, QWORD PTR [rax+8]	# D.8565, D.8564_10->cparam
	test	rdi, rdi	# D.8565
	je	.L4	#,
	mov	edx, 42	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
.L4:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+24], ebx	# MEM[(struct Callback *)vthis_2(D)].cb_size, i
	ja	.L5	#,
.L3:
	mov	rdi, QWORD PTR [rbp+16]	# MEM[(struct Callback *)vthis_2(D)].cb, MEM[(struct Callback *)vthis_2(D)].cb
	mov	edx, 44	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbp+16], 0	# MEM[(struct Callback *)vthis_2(D)].cb,
.L2:
	mov	DWORD PTR [rbp+24], 0	# MEM[(struct Callback *)vthis_2(D)].cb_size,
	mov	rdi, rbp	#, vthis
	call	Object_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Callback_vdestroy, .-Callback_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Callback_new: Passed NULL this pointer. click_handler=%p, size=%u\n"
	.section	.rodata.str1.1
.LC2:
	.string	"Callback"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Callback_new: Passed NULL click_handler(%p) array or size(%u) is equal zero\n"
	.align 8
.LC4:
	.string	"Callback_new: Failed to allocate this.cb array."
	.text
	.globl	Callback_new
	.type	Callback_new, @function
Callback_new:
.LFB94:
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
	mov	rbx, rdi	# this, this
	mov	r12, rsi	# click_handler, click_handler
	mov	ebp, edx	# size, size
	test	rdi, rdi	# this
	jne	.L9	#,
	mov	r8d, edx	#, size
	mov	rcx, rsi	#, click_handler
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L10	#
.L9:
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, OFFSET FLAT:Callback_vdestroy	#,
	call	Object_init_type	#
	mov	QWORD PTR [rbx+16], 0	# this_3(D)->cb,
	mov	DWORD PTR [rbx+24], 0	# this_3(D)->cb_size,
	test	ebp, ebp	# size
	je	.L15	#,
	test	r12, r12	# click_handler
	jne	.L11	#,
.L15:
	mov	r8d, ebp	#, size
	mov	rcx, r12	#, click_handler
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L10	#
.L11:
	mov	edi, ebp	# size, size
	mov	ecx, 79	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 24	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+16], rax	# this_3(D)->cb, D.8544
	test	rax, rax	# D.8544
	jne	.L13	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 47	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	jmp	.L10	#
.L13:
	mov	DWORD PTR [rbx+24], ebp	# this_3(D)->cb_size, size
	test	ebp, ebp	# size
	je	.L10	#,
	mov	r10d, 0	# ivtmp.22,
	mov	r9d, 0	# ivtmp.20,
.L14:
	mov	rdx, QWORD PTR [r12+r9*8]	# D.8553, MEM[base: click_handler_5(D), index: ivtmp.20_52, step: 8, offset: 0B]
	mov	rax, QWORD PTR [rbx+16]	# this_3(D)->cb, this_3(D)->cb
	mov	QWORD PTR [rax+r10], rdx	# D.8550_23->click_handler, D.8553
	add	r9, 1	# ivtmp.20,
	add	r10, 24	# ivtmp.22,
	cmp	ebp, r9d	# size, ivtmp.20
	ja	.L14	#,
.L10:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Callback_new, .-Callback_new
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Callback_addParameter: Check parameters: this(%p), this->cb(%p), click_handler(%p), parameter(%p)cannot be NULL, this->cb_size(%u) cannot be 0\n"
	.align 8
.LC6:
	.string	"Callback_addParameter(this=%p): Cannot find callback function of pointer %p\n"
	.align 8
.LC7:
	.string	"Callback_addParameter(this=%p): Fatal error occured while creating/growing callback[i].cparam array. Method Static_growArray exited with error %s\n"
	.align 8
.LC8:
	.string	"Callback_addParameter(this=%p): WARNING: replacing parameter %p with parameter %pat position %hu in click_handler[i=%u]=%p\n"
	.text
	.globl	Callback_addParameter
	.type	Callback_addParameter, @function
Callback_addParameter:
.LFB95:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 120	#,
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbp, rdi	# this, this
	mov	r9, rsi	# click_handler, click_handler
	mov	r12, rdx	# parameter, parameter
	test	rdi, rdi	# this
	je	.L33	#,
	mov	r13, r8	# startPos, startPos
	mov	r8, QWORD PTR [rdi+16]	# iftmp.1, this_6(D)->cb
	test	r8, r8	# iftmp.1
	je	.L20	#,
	mov	edx, DWORD PTR [rdi+24]	# D.8480, this_6(D)->cb_size
	test	edx, edx	# D.8480
	je	.L20	#,
	test	r12, r12	# parameter
	je	.L20	#,
	test	rsi, rsi	# click_handler
	jne	.L21	#,
.L20:
	mov	eax, DWORD PTR [rbp+24]	# iftmp.0, this_6(D)->cb_size
	.p2align 4,,2
	jmp	.L19	#
.L33:
	mov	eax, 0	# iftmp.0,
	mov	r8d, 0	# iftmp.1,
.L19:
	mov	DWORD PTR [rsp+8], eax	#, iftmp.0
	mov	QWORD PTR [rsp], r12	#, parameter
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8494,
	jmp	.L35	#
.L21:
	mov	r14d, ecx	# position, position
	test	r13, r13	# startPos
	je	.L24	#,
	mov	ebx, DWORD PTR [r13+0]	# i, *startPos_14(D)
	cmp	edx, ebx	# D.8480, i
	jbe	.L24	#,
.L32:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*2]	# tmp119,
	cmp	QWORD PTR [r8+rax*8], r9	# D.8503_130->click_handler, click_handler
	jne	.L36	#,
	jmp	.L25	#
.L27:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*2]	# tmp125,
	cmp	QWORD PTR [r8+rax*8], r9	# D.8503_24->click_handler, click_handler
	je	.L25	#,
.L36:
	add	ebx, 1	# i,
	cmp	edx, ebx	# D.8480, i
	ja	.L27	#,
.L25:
	cmp	ebx, edx	# i, D.8480
	jne	.L28	#,
	mov	r8, r9	#, click_handler
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 20	# D.8494,
	jmp	.L35	#
.L28:
	mov	eax, ebx	# i, i
	lea	r15, [rax+rax*2]	# tmp131,
	sal	r15, 3	# tmp132,
	lea	rax, [r8+r15]	# D.8503,
	mov	r8d, DWORD PTR [rax+16]	# D.8508, D.8503_33->cparam_size
	cmp	r8d, r14d	# D.8508, position
	ja	.L29	#,
	lea	rdx, [rax+16]	# tmp133,
	mov	rsi, QWORD PTR [rax+8]	# D.8503_33->cparam, D.8503_33->cparam
	mov	QWORD PTR [rsp+8], 8	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 8	#,
	mov	ecx, r14d	#, position
	lea	rdi, [rsp+60]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L30	#,
	mov	edi, DWORD PTR [rsp+60]	#, e
	call	perr_getName	#
	mov	r8, rax	# D.8516,
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+60]	# D.8494, e
	jmp	.L35	#
.L30:
	mov	rdx, QWORD PTR [rbp+16]	# this_6(D)->cb, this_6(D)->cb
	mov	QWORD PTR [rdx+8+r15], rax	# D.8503_59->cparam, new_array
.L29:
	mov	rax, QWORD PTR [rbp+16]	# D.8503, this_6(D)->cb
	add	rax, r15	# D.8503, tmp132
	mov	edx, r14d	#, position
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# D.8503_63->cparam, D.8503_63->cparam
	mov	rcx, QWORD PTR [rsp+40]	#, %sfp
	mov	r8, QWORD PTR [rdx+rcx*8]	# D.8520, *D.8519_67
	test	r8, r8	# D.8520
	je	.L31	#,
	mov	rax, QWORD PTR [rax]	# D.8503_63->click_handler, D.8503_63->click_handler
	mov	QWORD PTR [rsp+16], rax	#, D.8503_63->click_handler
	mov	DWORD PTR [rsp+8], ebx	#, i
	mov	DWORD PTR [rsp], r14d	#, position
	mov	r9, r12	#, parameter
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L31:
	mov	rax, QWORD PTR [rbp+16]	# this_6(D)->cb, this_6(D)->cb
	mov	rax, QWORD PTR [rax+8+r15]	# D.8503_87->cparam, D.8503_87->cparam
	mov	rdx, QWORD PTR [rsp+40]	#, %sfp
	mov	QWORD PTR [rax+rdx*8], r12	# *D.8519_91, parameter
	test	r13, r13	# startPos
	je	.L34	#,
	mov	DWORD PTR [r13+0], ebx	# *startPos_14(D), i
	mov	eax, 0	# D.8494,
	jmp	.L35	#
.L34:
	mov	eax, 0	# D.8494,
	jmp	.L35	#
.L24:
	mov	ebx, 0	# i,
	jmp	.L32	#
.L35:
	mov	rbx, QWORD PTR [rsp+72]	#,
	mov	rbp, QWORD PTR [rsp+80]	#,
	mov	r12, QWORD PTR [rsp+88]	#,
	mov	r13, QWORD PTR [rsp+96]	#,
	mov	r14, QWORD PTR [rsp+104]	#,
	mov	r15, QWORD PTR [rsp+112]	#,
	add	rsp, 120	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Callback_addParameter, .-Callback_addParameter
	.globl	Callback_getCParam
	.type	Callback_getCParam, @function
Callback_getCParam:
.LFB96:
	.cfi_startproc
	mov	r8d, DWORD PTR [rdi+24]	# D.8473, this_4(D)->cb_size
	test	r8d, r8d	# D.8473
	je	.L44	#,
	mov	rcx, QWORD PTR [rdi+16]	# D.8465, this_4(D)->cb
	cmp	QWORD PTR [rcx], rsi	# D.8465_32->click_handler, click_handler
	jne	.L47	#,
	jmp	.L40	#
.L43:
	mov	rcx, rax	# D.8465, ivtmp.34
	add	rax, 24	# ivtmp.34,
	cmp	QWORD PTR [rax-24], rsi	# MEM[base: D.8651_43, offset: -24B], click_handler
	jne	.L42	#,
.L40:
	mov	rax, QWORD PTR [rcx+8]	# D.8469, D.8465_38->cparam
	test	rax, rax	# D.8469
	je	.L45	#,
	mov	QWORD PTR [rdx], rax	# *cparam_23(D), D.8469
	mov	eax, 1	# D.8472,
	ret
.L47:
	lea	rax, [rcx+24]	# ivtmp.34,
	sub	r8d, 1	# tmp81,
	lea	rcx, [r8+r8*2]	# tmp84,
	lea	rdi, [rax+rcx*8]	# D.8650,
.L42:
	cmp	rax, rdi	# ivtmp.34, D.8650
	jne	.L43	#,
	mov	eax, 0	# D.8472,
	ret
.L44:
	mov	eax, 0	# D.8472,
	ret
.L45:
	mov	eax, 0	# D.8472,
	ret
	.cfi_endproc
.LFE96:
	.size	Callback_getCParam, .-Callback_getCParam
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
