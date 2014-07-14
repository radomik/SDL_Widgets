	.file	"GToolsSplotFilter.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I /usr/include/SDL
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/src/audio
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/src/common
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/src/graphics
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/src/graphics/gtools
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/src/widgets
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/src/widgets/container
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
# -D _GNU_SOURCE=1 -D _REENTRANT GToolsSplotFilter.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/GToolsSplotFilter.asm
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

	.text
	.globl	GToolsSplotFilter_new
	.type	GToolsSplotFilter_new, @function
GToolsSplotFilter_new:
.LFB103:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L2	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8998	#,
	call	Static_nullThis2	#
	jmp	.L3	#
.L2:
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	rdx, QWORD PTR predef_filter[rip+8]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+12], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	rdx, QWORD PTR predef_filter[rip+16]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+20], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	rdx, QWORD PTR predef_filter[rip+24]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+28], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	rdx, QWORD PTR predef_filter[rip+32]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+36], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	edx, DWORD PTR predef_filter[rip+40]	# predef_filter[0].weight, predef_filter[0].weight
	mov	DWORD PTR [rbx+44], edx	# this_2(D)->weight, predef_filter[0].weight
	mov	WORD PTR [rbx+8], -1	# this_2(D)->predef_filter_ind,
	mov	DWORD PTR [rbx+48], 0x41100000	# this_2(D)->divider,
	mov	BYTE PTR [rbx+56], 0	# this_2(D)->has_widget_changing_divider,
	mov	DWORD PTR [rbx+52], 0	# this_2(D)->divider_usage,
.L3:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	GToolsSplotFilter_new, .-GToolsSplotFilter_new
	.globl	GToolsSplotFilter_resetFilter
	.type	GToolsSplotFilter_resetFilter, @function
GToolsSplotFilter_resetFilter:
.LFB104:
	.cfi_startproc
	mov	WORD PTR [rdi+8], -1	# gtsf_1(D)->predef_filter_ind,
	ret
	.cfi_endproc
.LFE104:
	.size	GToolsSplotFilter_resetFilter, .-GToolsSplotFilter_resetFilter
	.globl	GToolsSplotFilter_getFilterInd
	.type	GToolsSplotFilter_getFilterInd, @function
GToolsSplotFilter_getFilterInd:
.LFB105:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+8]	# gtsf_1(D)->predef_filter_ind, gtsf_1(D)->predef_filter_ind
	ret
	.cfi_endproc
.LFE105:
	.size	GToolsSplotFilter_getFilterInd, .-GToolsSplotFilter_getFilterInd
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	""
	.text
	.globl	GToolsSplotFilter_getFilterName
	.type	GToolsSplotFilter_getFilterName, @function
GToolsSplotFilter_getFilterName:
.LFB106:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+8]	# D.9520, gtsf_2(D)->predef_filter_ind
	cmp	ax, -1	# D.9520,
	je	.L9	#,
	movzx	eax, ax	# D.9520, D.9520
	lea	rax, [rax+rax*2]	# tmp69,
	sal	rax, 4	# tmp70,
	mov	rax, QWORD PTR predef_filter[rax]	# D.9518, predef_filter[D.9523_5].name
	ret
.L9:
	mov	eax, OFFSET FLAT:.LC1	# D.9518,
	ret
	.cfi_endproc
.LFE106:
	.size	GToolsSplotFilter_getFilterName, .-GToolsSplotFilter_getFilterName
	.globl	GToolsSplotFilter_increaseFilterInd
	.type	GToolsSplotFilter_increaseFilterInd, @function
GToolsSplotFilter_increaseFilterInd:
.LFB107:
	.cfi_startproc
	movzx	edx, WORD PTR [rdi+8]	# D.9504, gtsf_2(D)->predef_filter_ind
	cmp	dx, -1	# D.9504,
	jne	.L11	#,
	mov	WORD PTR [rdi+8], 0	# gtsf_2(D)->predef_filter_ind,
	jmp	.L12	#
.L11:
	mov	eax, 0	# D.9512,
	cmp	dx, 13	# D.9504,
	ja	.L13	#,
	add	edx, 1	# tmp71,
	mov	WORD PTR [rdi+8], dx	# gtsf_2(D)->predef_filter_ind, tmp71
.L12:
	movzx	edx, WORD PTR [rdi+8]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rcx, [rdx+rdx*2]	# tmp77,
	sal	rcx, 4	# tmp78,
	lea	rdx, predef_filter[rcx+8]	# tmp80,
	add	rcx, OFFSET FLAT:predef_filter	# tmp79,
	mov	rcx, QWORD PTR [rcx+8]	# predef_filter[D.9513_9].weight, predef_filter[D.9513_9].weight
	mov	QWORD PTR [rdi+12], rcx	# gtsf_2(D)->weight, predef_filter[D.9513_9].weight
	mov	rcx, QWORD PTR [rdx+8]	# predef_filter[D.9513_9].weight, predef_filter[D.9513_9].weight
	mov	QWORD PTR [rdi+20], rcx	# gtsf_2(D)->weight, predef_filter[D.9513_9].weight
	mov	rcx, QWORD PTR [rdx+16]	# predef_filter[D.9513_9].weight, predef_filter[D.9513_9].weight
	mov	QWORD PTR [rdi+28], rcx	# gtsf_2(D)->weight, predef_filter[D.9513_9].weight
	mov	rcx, QWORD PTR [rdx+24]	# predef_filter[D.9513_9].weight, predef_filter[D.9513_9].weight
	mov	QWORD PTR [rdi+36], rcx	# gtsf_2(D)->weight, predef_filter[D.9513_9].weight
	mov	edx, DWORD PTR [rdx+32]	# predef_filter[D.9513_9].weight, predef_filter[D.9513_9].weight
	mov	DWORD PTR [rdi+44], edx	# gtsf_2(D)->weight, predef_filter[D.9513_9].weight
	movzx	eax, WORD PTR [rdi+8]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rax, [rax+rax*2]	# tmp91,
	sal	rax, 4	# tmp92,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	# predef_filter[D.9513_13].divider, predef_filter[D.9513_13].divider
	movss	DWORD PTR [rdi+48], xmm0	# gtsf_2(D)->divider, predef_filter[D.9513_13].divider
	mov	eax, 1	# D.9512,
.L13:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	GToolsSplotFilter_increaseFilterInd, .-GToolsSplotFilter_increaseFilterInd
	.globl	GToolsSplotFilter_decreaseFilterInd
	.type	GToolsSplotFilter_decreaseFilterInd, @function
GToolsSplotFilter_decreaseFilterInd:
.LFB108:
	.cfi_startproc
	movzx	edx, WORD PTR [rdi+8]	# D.9490, gtsf_2(D)->predef_filter_ind
	cmp	dx, -1	# D.9490,
	jne	.L16	#,
	mov	WORD PTR [rdi+8], 14	# gtsf_2(D)->predef_filter_ind,
	jmp	.L17	#
.L16:
	mov	eax, 0	# D.9498,
	test	dx, dx	# D.9490
	je	.L18	#,
	sub	edx, 1	# tmp71,
	mov	WORD PTR [rdi+8], dx	# gtsf_2(D)->predef_filter_ind, tmp71
.L17:
	movzx	edx, WORD PTR [rdi+8]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rcx, [rdx+rdx*2]	# tmp77,
	sal	rcx, 4	# tmp78,
	lea	rdx, predef_filter[rcx+8]	# tmp80,
	add	rcx, OFFSET FLAT:predef_filter	# tmp79,
	mov	rcx, QWORD PTR [rcx+8]	# predef_filter[D.9499_9].weight, predef_filter[D.9499_9].weight
	mov	QWORD PTR [rdi+12], rcx	# gtsf_2(D)->weight, predef_filter[D.9499_9].weight
	mov	rcx, QWORD PTR [rdx+8]	# predef_filter[D.9499_9].weight, predef_filter[D.9499_9].weight
	mov	QWORD PTR [rdi+20], rcx	# gtsf_2(D)->weight, predef_filter[D.9499_9].weight
	mov	rcx, QWORD PTR [rdx+16]	# predef_filter[D.9499_9].weight, predef_filter[D.9499_9].weight
	mov	QWORD PTR [rdi+28], rcx	# gtsf_2(D)->weight, predef_filter[D.9499_9].weight
	mov	rcx, QWORD PTR [rdx+24]	# predef_filter[D.9499_9].weight, predef_filter[D.9499_9].weight
	mov	QWORD PTR [rdi+36], rcx	# gtsf_2(D)->weight, predef_filter[D.9499_9].weight
	mov	edx, DWORD PTR [rdx+32]	# predef_filter[D.9499_9].weight, predef_filter[D.9499_9].weight
	mov	DWORD PTR [rdi+44], edx	# gtsf_2(D)->weight, predef_filter[D.9499_9].weight
	movzx	eax, WORD PTR [rdi+8]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rax, [rax+rax*2]	# tmp91,
	sal	rax, 4	# tmp92,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	# predef_filter[D.9499_13].divider, predef_filter[D.9499_13].divider
	movss	DWORD PTR [rdi+48], xmm0	# gtsf_2(D)->divider, predef_filter[D.9499_13].divider
	mov	eax, 1	# D.9498,
.L18:
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	GToolsSplotFilter_decreaseFilterInd, .-GToolsSplotFilter_decreaseFilterInd
	.globl	GToolsSplotFilter_increaseWeightAt
	.type	GToolsSplotFilter_increaseWeightAt, @function
GToolsSplotFilter_increaseWeightAt:
.LFB109:
	.cfi_startproc
	mov	eax, 0	# D.9484,
	cmp	sil, 8	# w,
	ja	.L21	#,
	movzx	esi, sil	# D.9480, w
	movsx	rax, esi	# D.9480, D.9480
	movss	xmm0, DWORD PTR [rdi+12+rax*4]	# D.9481, gtsf_4(D)->weight
	ucomiss	xmm0, DWORD PTR .LC2[rip]	# D.9481,
	jp	.L26	#,
	mov	eax, 0	# D.9484,
	je	.L21	#,
.L26:
	cmp	WORD PTR [rdi+8], -1	# gtsf_4(D)->predef_filter_ind,
	je	.L23	#,
	mov	WORD PTR [rdi+8], -1	# gtsf_4(D)->predef_filter_ind,
.L23:
	movsx	rsi, esi	# D.9480, D.9480
	addss	xmm0, DWORD PTR .LC3[rip]	# tmp70,
	movss	DWORD PTR [rdi+12+rsi*4], xmm0	# gtsf_4(D)->weight, tmp70
	mov	eax, 1	# D.9484,
.L21:
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	GToolsSplotFilter_increaseWeightAt, .-GToolsSplotFilter_increaseWeightAt
	.globl	GToolsSplotFilter_decreaseWeightAt
	.type	GToolsSplotFilter_decreaseWeightAt, @function
GToolsSplotFilter_decreaseWeightAt:
.LFB110:
	.cfi_startproc
	mov	eax, 0	# D.9472,
	cmp	sil, 8	# w,
	ja	.L28	#,
	movzx	esi, sil	# D.9468, w
	movsx	rax, esi	# D.9468, D.9468
	movss	xmm0, DWORD PTR [rdi+12+rax*4]	# D.9469, gtsf_4(D)->weight
	ucomiss	xmm0, DWORD PTR .LC4[rip]	# D.9469,
	jp	.L33	#,
	mov	eax, 0	# D.9472,
	je	.L28	#,
.L33:
	cmp	WORD PTR [rdi+8], -1	# gtsf_4(D)->predef_filter_ind,
	je	.L30	#,
	mov	WORD PTR [rdi+8], -1	# gtsf_4(D)->predef_filter_ind,
.L30:
	movsx	rsi, esi	# D.9468, D.9468
	subss	xmm0, DWORD PTR .LC3[rip]	# tmp70,
	movss	DWORD PTR [rdi+12+rsi*4], xmm0	# gtsf_4(D)->weight, tmp70
	mov	eax, 1	# D.9472,
.L28:
	rep
	ret
	.cfi_endproc
.LFE110:
	.size	GToolsSplotFilter_decreaseWeightAt, .-GToolsSplotFilter_decreaseWeightAt
	.globl	GToolsSplotFilter_increaseDivider
	.type	GToolsSplotFilter_increaseDivider, @function
GToolsSplotFilter_increaseDivider:
.LFB111:
	.cfi_startproc
	movss	xmm0, DWORD PTR [rdi+48]	# D.9453, gtsf_2(D)->divider
	ucomiss	xmm0, DWORD PTR .LC2[rip]	# D.9453,
	jp	.L40	#,
	mov	eax, 0	# D.9456,
	je	.L35	#,
.L40:
	cmp	WORD PTR [rdi+8], -1	# gtsf_2(D)->predef_filter_ind,
	je	.L37	#,
	mov	WORD PTR [rdi+8], -1	# gtsf_2(D)->predef_filter_ind,
.L37:
	addss	xmm0, DWORD PTR .LC3[rip]	# D.9460,
	movss	xmm1, DWORD PTR .LC5[rip]	# tmp70,
	andps	xmm1, xmm0	# tmp69, D.9460
	unpcklps	xmm1, xmm1	# tmp69, tmp69
	cvtps2pd	xmm1, xmm1	# tmp71, tmp69
	movsd	xmm2, QWORD PTR .LC6[rip]	# tmp72,
	ucomisd	xmm2, xmm1	# tmp72, tmp71
	ja	.L38	#,
	movss	DWORD PTR [rdi+48], xmm0	# gtsf_2(D)->divider, D.9460
	mov	eax, 1	# D.9456,
	ret
.L38:
	addss	xmm0, DWORD PTR .LC3[rip]	# tmp73,
	movss	DWORD PTR [rdi+48], xmm0	# gtsf_2(D)->divider, tmp73
	mov	eax, 1	# D.9456,
.L35:
	rep
	ret
	.cfi_endproc
.LFE111:
	.size	GToolsSplotFilter_increaseDivider, .-GToolsSplotFilter_increaseDivider
	.globl	GToolsSplotFilter_decreaseDivider
	.type	GToolsSplotFilter_decreaseDivider, @function
GToolsSplotFilter_decreaseDivider:
.LFB112:
	.cfi_startproc
	movss	xmm0, DWORD PTR [rdi+48]	# D.9440, gtsf_2(D)->divider
	ucomiss	xmm0, DWORD PTR .LC4[rip]	# D.9440,
	jp	.L47	#,
	mov	eax, 0	# D.9443,
	je	.L42	#,
.L47:
	cmp	WORD PTR [rdi+8], -1	# gtsf_2(D)->predef_filter_ind,
	je	.L44	#,
	mov	WORD PTR [rdi+8], -1	# gtsf_2(D)->predef_filter_ind,
.L44:
	subss	xmm0, DWORD PTR .LC3[rip]	# D.9447,
	movss	xmm1, DWORD PTR .LC5[rip]	# tmp70,
	andps	xmm1, xmm0	# tmp69, D.9447
	unpcklps	xmm1, xmm1	# tmp69, tmp69
	cvtps2pd	xmm1, xmm1	# tmp71, tmp69
	movsd	xmm2, QWORD PTR .LC6[rip]	# tmp72,
	ucomisd	xmm2, xmm1	# tmp72, tmp71
	ja	.L45	#,
	movss	DWORD PTR [rdi+48], xmm0	# gtsf_2(D)->divider, D.9447
	mov	eax, 1	# D.9443,
	ret
.L45:
	subss	xmm0, DWORD PTR .LC3[rip]	# tmp73,
	movss	DWORD PTR [rdi+48], xmm0	# gtsf_2(D)->divider, tmp73
	mov	eax, 1	# D.9443,
.L42:
	rep
	ret
	.cfi_endproc
.LFE112:
	.size	GToolsSplotFilter_decreaseDivider, .-GToolsSplotFilter_decreaseDivider
	.globl	GToolsSplotFilter_getWeightAt
	.type	GToolsSplotFilter_getWeightAt, @function
GToolsSplotFilter_getWeightAt:
.LFB113:
	.cfi_startproc
	xorps	xmm0, xmm0	# D.9433
	cmp	sil, 8	# w,
	ja	.L49	#,
	movzx	esi, sil	# w, w
	movss	xmm0, DWORD PTR [rdi+12+rsi*4]	# D.9433, gtsf_4(D)->weight
.L49:
	rep
	ret
	.cfi_endproc
.LFE113:
	.size	GToolsSplotFilter_getWeightAt, .-GToolsSplotFilter_getWeightAt
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"Dzielnik okre\305\233lony przez filtr"
	.section	.rodata.str1.1
.LC9:
	.string	"Dzielnik u\305\274ytkownika"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"Dzielnik b\304\231d\304\205cy sum\304\205 wag filtru"
	.text
	.globl	GToolsSplotFilter_getDividerUsageDesc
	.type	GToolsSplotFilter_getDividerUsageDesc, @function
GToolsSplotFilter_getDividerUsageDesc:
.LFB114:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+52]	# gtsf_2(D)->divider_usage, gtsf_2(D)->divider_usage
	mov	eax, OFFSET FLAT:.LC9	# D.9431,
	cmp	edx, 1	# gtsf_2(D)->divider_usage,
	je	.L54	#,
	mov	eax, OFFSET FLAT:.LC8	# D.9431,
	cmp	edx, 1	# gtsf_2(D)->divider_usage,
	jb	.L54	#,
	cmp	edx, 2	# gtsf_2(D)->divider_usage,
	mov	eax, OFFSET FLAT:.LC1	# tmp66,
	mov	edx, OFFSET FLAT:.LC10	# tmp65,
	cmove	rax, rdx	# tmp65,, D.9431
.L54:
	rep
	ret
	.cfi_endproc
.LFE114:
	.size	GToolsSplotFilter_getDividerUsageDesc, .-GToolsSplotFilter_getDividerUsageDesc
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"GToolsSplotFilter_applyFilter() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC13:
	.string	"GToolsSplotFilter_applyFilter() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC14:
	.string	"GToolsSplotFilter_applyFilter() > Input image [w=%hu, h=%hu] to small (below 3x3 pixels)\n"
	.align 8
.LC15:
	.string	"GToolsSplotFilter_applyFilter: Ignoring .divider_usage==CUSTOM_DIVIDER settings while .has_widget_changing_divider==false\n"
	.align 8
.LC16:
	.string	"GToolsSplotFilter_applyFilter: [%s] Dividier: %f\n"
	.text
	.globl	GToolsSplotFilter_applyFilter
	.type	GToolsSplotFilter_applyFilter, @function
GToolsSplotFilter_applyFilter:
.LFB115:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 216	#,
	.cfi_def_cfa_offset 224
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdx	# imgdst, imgdst
	test	rdx, rdx	# imgdst
	je	.L58	#,
	mov	rbp, rsi	# imgsrc, imgsrc
	test	rsi, rsi	# imgsrc
	je	.L58	#,
	mov	rax, QWORD PTR [rsi+8]	# D.9099, imgsrc_50(D)->format
	test	rax, rax	# D.9099
	je	.L58	#,
	mov	rdx, QWORD PTR [rdx+8]	# D.9101, imgdst_52(D)->format
	test	rdx, rdx	# D.9101
	je	.L58	#,
	movzx	esi, WORD PTR [rsi+24]	# D.9103, imgsrc_50(D)->pitch
	cmp	si, WORD PTR [rbx+24]	# D.9103, imgdst_52(D)->pitch
	jne	.L58	#,
	mov	rcx, QWORD PTR [rbx+16]	#,
	cmp	QWORD PTR [rbp+16], rcx	#,
	jne	.L58	#,
	movzx	r14d, BYTE PTR [rax+9]	# D.9113, D.9099_55->BytesPerPixel
	cmp	r14b, BYTE PTR [rdx+9]	# D.9113, D.9101_56->BytesPerPixel
	jne	.L58	#,
	mov	r12, rdi	# gtsf, gtsf
	mov	edi, DWORD PTR [rdx+32]	#, D.9101_56->Amask
	cmp	DWORD PTR [rax+32], edi	# D.9099_55->Amask,
	jne	.L58	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.9101_56->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.9099_55->Rmask,
	jne	.L58	#,
	mov	rdi, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rdi	#,
	jne	.L58	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9101_56->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9099_55->Ashift,
	jne	.L58	#,
	movzx	edi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], di	#,
	jne	.L58	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9101_56->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9099_55->Bshift,
	jne	.L58	#,
	mov	r15, QWORD PTR [rbp+32]	# off_src, imgsrc_50(D)->pixels
	test	r15, r15	# off_src
	je	.L58	#,
	mov	rdx, QWORD PTR [rbx+32]	# D.9140, imgdst_52(D)->pixels
	test	rdx, rdx	# D.9140
	jne	.L59	#,
.L58:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 85	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC12	#,
	call	fwrite	#
	mov	eax, -56	# D.9142,
	jmp	.L130	#
.L59:
	lea	eax, [r14-3]	# tmp351,
	cmp	al, 1	# tmp351,
	jbe	.L61	#,
	movzx	ecx, r14b	# D.9113, D.9113
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9142,
	jmp	.L130	#
.L61:
	mov	ecx, DWORD PTR [rbp+16]	# D.9149, imgsrc_50(D)->w
	cmp	ecx, 2	# D.9149,
	jle	.L62	#,
	mov	eax, DWORD PTR [rbp+20]	# D.9151, imgsrc_50(D)->h
	cmp	eax, 2	# D.9151,
	jg	.L63	#,
.L62:
	mov	r8d, DWORD PTR [rbp+20]	#, imgsrc_50(D)->h
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.9142,
	jmp	.L130	#
.L63:
	movzx	edi, si	#, D.9103
	mov	DWORD PTR [rsp+28], edi	# %sfp,
	movzx	esi, si	#, D.9103
	mov	QWORD PTR [rsp+16], rsi	# %sfp,
	movzx	esi, r14b	#, D.9113
	mov	QWORD PTR [rsp+8], rsi	# %sfp,
	add	rsi, QWORD PTR [rsp+16]	# tmp354, %sfp
	lea	r13, [rdx+rsi]	# off_dst,
	sub	eax, 3	# tmp355,
	imul	eax, edi	# tmp357,
	add	rax, r15	#, off_src
	mov	QWORD PTR [rsp+64], rax	# %sfp,
	lea	edi, [r14+r14]	#,
	mov	BYTE PTR [rsp], dil	# %sfp,
	mov	eax, DWORD PTR [rsp+28]	#, %sfp
	add	eax, eax	#
	mov	DWORD PTR [rsp+76], eax	# %sfp,
	movzx	esi, r14b	# D.9113, D.9113
	mov	edx, ecx	# tmp359, D.9149
	imul	edx, esi	# tmp359, D.9113
	movzx	eax, dil	# Bpp2,
	sub	edx, eax	# tmp359, Bpp2
	mov	DWORD PTR [rsp+120], edx	# %sfp, tmp359
	mov	eax, DWORD PTR [rsp+28]	#, %sfp
	mov	edx, 0	# tmp363,
	div	esi	# D.9113
	mov	esi, eax	# tmp362,
	mov	eax, 0	# iftmp.1,
	mov	edx, esi	# tmp515,
	sub	edx, ecx	# tmp515, D.9149
	cmp	esi, ecx	# tmp362, D.9149
	cmova	eax, edx	# tmp515,, iftmp.1
	imul	eax, r14d	# iftmp.1, D.9113
	mov	BYTE PTR [rsp+32], al	# %sfp, iftmp.1
	cmp	BYTE PTR [r12+56], 0	# gtsf_142(D)->has_widget_changing_divider,
	jne	.L65	#,
	mov	eax, DWORD PTR [r12+52]	# gtsf_142(D)->divider_usage, gtsf_142(D)->divider_usage
	cmp	eax, 1	# gtsf_142(D)->divider_usage,
	je	.L68	#,
	cmp	eax, 1	# gtsf_142(D)->divider_usage,
	jb	.L67	#,
	cmp	eax, 2	# gtsf_142(D)->divider_usage,
	jne	.L132	#,
	.p2align 4,,5
	jmp	.L69	#
.L68:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 122	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC15	#,
	call	fwrite	#
.L67:
	movzx	eax, WORD PTR [r12+8]	# D.9174, gtsf_142(D)->predef_filter_ind
	cmp	ax, -1	# D.9174,
	je	.L69	#,
	movzx	eax, ax	# D.9174, D.9174
	imul	rax, rax, 48	# tmp369, D.9174,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	#, predef_filter[D.9178_152].divider
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
	jmp	.L66	#
.L65:
	mov	eax, DWORD PTR [r12+52]	# gtsf_142(D)->divider_usage, gtsf_142(D)->divider_usage
	cmp	eax, 1	# gtsf_142(D)->divider_usage,
	je	.L72	#,
	cmp	eax, 1	# gtsf_142(D)->divider_usage,
	jb	.L71	#,
	cmp	eax, 2	# gtsf_142(D)->divider_usage,
	jne	.L133	#,
	.p2align 4,,5
	jmp	.L69	#
.L72:
	movss	xmm1, DWORD PTR [r12+48]	#, gtsf_142(D)->divider
	movss	DWORD PTR [rsp+24], xmm1	# %sfp,
	jmp	.L66	#
.L71:
	movzx	eax, WORD PTR [r12+8]	# D.9174, gtsf_142(D)->predef_filter_ind
	cmp	ax, -1	# D.9174,
	je	.L69	#,
	movzx	eax, ax	# D.9174, D.9174
	imul	rax, rax, 48	# tmp375, D.9174,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	#, predef_filter[D.9178_160].divider
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
	jmp	.L66	#
.L73:
	addss	xmm0, DWORD PTR [r12+12+rax]	# sum_w, MEM[base: gtsf_142(D), index: ivtmp.88_31, offset: 12B]
	add	rax, 4	# ivtmp.88,
	cmp	rax, 36	# ivtmp.88,
	jne	.L73	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp, sum_w
	jmp	.L66	#
.L132:
	movss	xmm1, DWORD PTR .LC11[rip]	#,
	movss	DWORD PTR [rsp+24], xmm1	# %sfp,
	jmp	.L66	#
.L133:
	movss	xmm0, DWORD PTR .LC11[rip]	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
.L66:
	movss	xmm0, DWORD PTR .LC5[rip]	# tmp378,
	movss	xmm1, DWORD PTR [rsp+24]	#, %sfp
	andps	xmm0, xmm1	# tmp377,
	cvtss2sd	xmm0, xmm0	# tmp379, tmp377
	movsd	xmm1, QWORD PTR .LC6[rip]	# tmp380,
	ucomisd	xmm1, xmm0	# tmp380, tmp379
	jbe	.L74	#,
	movss	xmm0, DWORD PTR .LC11[rip]	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
.L74:
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_getDividerUsageDesc	#
	cvtss2sd	xmm0, DWORD PTR [rsp+24]	# tmp381, %sfp
	mov	rcx, rax	#, D.9196
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 1	#,
	call	__fprintf_chk	#
	cmp	DWORD PTR [rbx+40], 0	# imgdst_52(D)->offset,
	jne	.L75	#,
	test	DWORD PTR [rbx], 16389	# imgdst_52(D)->flags,
	je	.L76	#,
.L75:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L76:
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	sal	rax, 2	#,
	mov	QWORD PTR [rsp+88], rax	# %sfp,
	mov	DWORD PTR [rsp+72], 0	# %sfp,
	movzx	edx, BYTE PTR [rsp]	#, %sfp
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	movzx	ecx, BYTE PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rsp+56], rcx	# %sfp,
	mov	eax, r14d	# D.9113, D.9113
	mov	r14, r15	# off_src, off_src
	mov	QWORD PTR [rsp+32], r12	# %sfp, gtsf
	mov	r12, rbp	# imgsrc, imgsrc
	mov	QWORD PTR [rsp+112], rbx	# %sfp, imgdst
	mov	r15d, eax	# D.9113, D.9113
	jmp	.L77	#
.L113:
	mov	eax, DWORD PTR [rsp+120]	# wb, %sfp
	add	rax, r14	#, off_src
	mov	QWORD PTR [rsp+80], rax	# %sfp,
	mov	ebx, 1	# first,
	mov	esi, DWORD PTR [rsp+76]	#, %sfp
	mov	QWORD PTR [rsp+104], rsi	# %sfp,
	jmp	.L78	#
.L112:
	mov	ecx, 16	#,
	mov	rdx, QWORD PTR [rsp+88]	#, %sfp
	mov	esi, 0	#,
	lea	rdi, [rsp+128]	#,
	call	__memset_chk	#
	mov	QWORD PTR [rsp], r14	# %sfp, off_src
	mov	BYTE PTR [rsp+48], 0	# %sfp,
	mov	rdi, QWORD PTR [rsp+104]	#, %sfp
	add	rdi, r14	#, off_src
	mov	QWORD PTR [rsp+96], rdi	# %sfp,
	mov	BYTE PTR [rsp+127], bl	# %sfp, first
	mov	ebx, 0	# w,
	jmp	.L79	#
.L90:
	cmp	r15b, 3	# D.9113,
	jne	.L80	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+8]	#, %sfp
	mov	rsi, rbp	#, d_src_off
	lea	rdi, [rsp+144]	#,
	call	__memcpy_chk	#
	movzx	eax, bl	# w, w
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	movss	xmm0, DWORD PTR [rdi+12+rax*4]	# D.9190, MEM[(const float *)gtsf_142(D)].weight
	movzx	eax, BYTE PTR [rsp+145]	# color, color
	cvtsi2ss	xmm1, eax	# tmp389, color
	mulss	xmm1, xmm0	# tmp390, D.9190
	cvttss2si	edx, xmm1	# D.9218, tmp390
	movzx	eax, BYTE PTR [rsp+146]	# color, color
	cvtsi2ss	xmm1, eax	# tmp392, color
	mulss	xmm1, xmm0	# tmp393, D.9190
	cvttss2si	eax, xmm1	# D.9223, tmp393
	movzx	ecx, BYTE PTR [rsp+144]	# color, color
	cvtsi2ss	xmm1, ecx	# tmp395, color
	mulss	xmm0, xmm1	# tmp396, tmp395
	cvttss2si	ecx, xmm0	# tmp397, tmp396
	add	DWORD PTR [rsp+128], ecx	# SUM_col, tmp397
	add	DWORD PTR [rsp+132], edx	# SUM_col, D.9218
	add	DWORD PTR [rsp+136], eax	# SUM_col, D.9223
	jmp	.L81	#
.L80:
	cmp	r15b, 4	# D.9113,
	jne	.L82	#,
	mov	edx, DWORD PTR [rbp+0]	# col, MEM[base: d_src_off_10, offset: 0B]
	cmp	bl, 4	# w,
	jne	.L83	#,
	mov	rax, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	mov	eax, DWORD PTR [rax+32]	#, D.9099_229->Amask
	and	eax, edx	#, col
	mov	DWORD PTR [rsp+72], eax	# %sfp,
.L83:
	mov	rax, QWORD PTR [r12+8]	# D.9099, imgsrc_50(D)->format
	movzx	ecx, bl	# w, w
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	movss	xmm0, DWORD PTR [rdi+12+rcx*4]	# D.9190, MEM[(const float *)gtsf_142(D)].weight
	mov	esi, edx	# tmp400, col
	and	esi, DWORD PTR [rax+24]	# tmp400, D.9099_232->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.9099_232->Gshift, D.9099_232->Gshift
	shr	esi, cl	# tmp400, D.9099_232->Gshift
	mov	ecx, esi	# tmp404, tmp402
	cvtsi2ss	xmm1, rcx	# tmp403, tmp404
	mulss	xmm1, xmm0	# tmp408, D.9190
	cvttss2si	edi, xmm1	# D.9252, tmp408
	mov	esi, edx	# tmp409, col
	and	esi, DWORD PTR [rax+28]	# tmp409, D.9099_232->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.9099_232->Bshift, D.9099_232->Bshift
	shr	esi, cl	# tmp409, D.9099_232->Bshift
	mov	ecx, esi	# tmp413, tmp411
	cvtsi2ss	xmm1, rcx	# tmp412, tmp413
	mulss	xmm1, xmm0	# tmp417, D.9190
	cvttss2si	esi, xmm1	# D.9259, tmp417
	and	edx, DWORD PTR [rax+20]	# tmp418, D.9099_232->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.9099_232->Rshift, D.9099_232->Rshift
	mov	eax, edx	# tmp420, tmp418
	shr	eax, cl	# tmp420, D.9099_232->Rshift
	mov	eax, eax	# tmp422, tmp420
	cvtsi2ss	xmm1, rax	# tmp421, tmp422
	mulss	xmm0, xmm1	# tmp426, tmp421
	cvttss2si	eax, xmm0	# tmp427, tmp426
	add	DWORD PTR [rsp+128], eax	# SUM_col, tmp427
	add	DWORD PTR [rsp+132], edi	# SUM_col, D.9252
	add	DWORD PTR [rsp+136], esi	# SUM_col, D.9259
	jmp	.L81	#
.L82:
	cmp	r15b, 1	# D.9113,
	jne	.L81	#,
	movzx	eax, BYTE PTR [rbp+0]	# D.9263, MEM[base: d_src_off_10, offset: 0B]
	mov	BYTE PTR [rsp+144], al	# color, D.9263
	movzx	eax, al	# D.9263, D.9263
	cvtsi2ss	xmm0, eax	# tmp429, D.9263
	movzx	edx, bl	# w, w
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	mulss	xmm0, DWORD PTR [rdi+12+rdx*4]	# tmp431, MEM[(const float *)gtsf_142(D)].weight
	cvttss2si	eax, xmm0	# tmp432, tmp431
	add	DWORD PTR [rsp+128], eax	# SUM_col, tmp432
.L81:
	add	ebx, 1	# w,
	add	rbp, QWORD PTR [rsp+8]	# d_src_off, %sfp
	jmp	.L91	#
.L121:
	mov	rbp, QWORD PTR [rsp]	# d_src_off, %sfp
	mov	rax, rbp	#, d_src_off
	add	rax, QWORD PTR [rsp+40]	#, %sfp
	mov	QWORD PTR [rsp+48], rax	# %sfp,
.L91:
	cmp	rbp, QWORD PTR [rsp+48]	# d_src_off, %sfp
	jbe	.L90	#,
	mov	rdx, QWORD PTR [rsp+16]	#, %sfp
	add	QWORD PTR [rsp], rdx	# %sfp,
.L79:
	mov	rcx, QWORD PTR [rsp+96]	#, %sfp
	cmp	QWORD PTR [rsp], rcx	# %sfp,
	jbe	.L121	#,
	movzx	ebx, BYTE PTR [rsp+127]	# first, %sfp
	mov	edi, DWORD PTR [rsp+72]	# a, %sfp
	cmp	r15b, 3	# D.9113,
	jne	.L92	#,
	cvtsi2ss	xmm0, DWORD PTR [rsp+128]	# tmp437, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp438, %sfp
	cvttss2si	eax, xmm0	# D.9272, tmp438
	mov	DWORD PTR [rsp+128], eax	# SUM_col, D.9272
	cvtsi2ss	xmm0, DWORD PTR [rsp+132]	# tmp439, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp440, %sfp
	cvttss2si	edx, xmm0	# tmp441, tmp440
	mov	DWORD PTR [rsp+132], edx	# SUM_col, tmp441
	cvtsi2ss	xmm0, DWORD PTR [rsp+136]	# tmp442, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp443, %sfp
	cvttss2si	edx, xmm0	# tmp444, tmp443
	mov	DWORD PTR [rsp+136], edx	# SUM_col, tmp444
	test	bl, bl	# first
	je	.L93	#,
	cmp	eax, 255	# D.9272,
	jg	.L94	#,
	test	eax, eax	# D.9272
	js	.L95	#,
	mov	edx, eax	# iftmp.6, D.9272
	mov	BYTE PTR [r13-3], al	# MEM[(u8 *)off_dst_4 + -3B], D.9272
	mov	BYTE PTR [r13+0], al	# *off_dst_4, D.9272
	mov	BYTE PTR [r13-2], al	# MEM[(u8 *)off_dst_4 + -2B], D.9272
	mov	BYTE PTR [r13+1], al	# MEM[(u8 *)off_dst_4 + 1B], D.9272
.L115:
	mov	BYTE PTR [r13-1], dl	# MEM[(u8 *)off_dst_4 + -1B], iftmp.6
	mov	BYTE PTR [r13+2], dl	# MEM[(u8 *)off_dst_4 + 2B], iftmp.6
	add	r13, 3	# off_dst,
	mov	ebx, 0	# first,
	jmp	.L96	#
.L93:
	cmp	eax, 255	# D.9272,
	jg	.L97	#,
	test	eax, eax	# D.9272
	js	.L98	#,
	mov	edx, eax	# iftmp.12, D.9272
	mov	BYTE PTR [r13+0], al	# *off_dst_4, D.9272
	mov	BYTE PTR [r13+1], al	# MEM[(u8 *)off_dst_4 + 1B], D.9272
.L116:
	mov	BYTE PTR [r13+2], dl	# MEM[(u8 *)off_dst_4 + 2B], iftmp.12
	add	r13, 3	# off_dst,
	jmp	.L96	#
.L92:
	cmp	r15b, 4	# D.9113,
	jne	.L99	#,
	cvtsi2ss	xmm0, DWORD PTR [rsp+128]	# tmp445, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp446, %sfp
	cvttss2si	esi, xmm0	# D.9272, tmp446
	mov	DWORD PTR [rsp+128], esi	# SUM_col, D.9272
	cvtsi2ss	xmm0, DWORD PTR [rsp+132]	# tmp447, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp448, %sfp
	cvttss2si	edx, xmm0	# D.9275, tmp448
	mov	DWORD PTR [rsp+132], edx	# SUM_col, D.9275
	cvtsi2ss	xmm0, DWORD PTR [rsp+136]	# tmp449, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp450, %sfp
	cvttss2si	eax, xmm0	# D.9278, tmp450
	mov	DWORD PTR [rsp+136], eax	# SUM_col, D.9278
	cmp	esi, 255	# D.9272,
	jle	.L100	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+14]	# D.9099_382->Rshift, D.9099_382->Rshift
	mov	esi, 255	# tmp453,
	sal	esi, cl	# r, D.9099_382->Rshift
	jmp	.L101	#
.L100:
	test	esi, esi	# D.9272
	js	.L122	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+14]	# D.9099_390->Rshift, D.9099_390->Rshift
	sal	esi, cl	# r, D.9099_390->Rshift
	jmp	.L101	#
.L122:
	mov	esi, 0	# r,
.L101:
	cmp	edx, 255	# D.9275,
	jle	.L102	#,
	mov	rdx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rdx+15]	# D.9099_398->Gshift, D.9099_398->Gshift
	mov	edx, 255	# tmp458,
	sal	edx, cl	# g, D.9099_398->Gshift
	jmp	.L103	#
.L102:
	test	edx, edx	# D.9275
	js	.L123	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+15]	# D.9099_406->Gshift, D.9099_406->Gshift
	sal	edx, cl	# g, D.9099_406->Gshift
	jmp	.L103	#
.L123:
	mov	edx, 0	# g,
.L103:
	cmp	eax, 255	# D.9278,
	jle	.L104	#,
	mov	rax, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rax+16]	# D.9099_414->Bshift, D.9099_414->Bshift
	mov	eax, 255	# tmp463,
	sal	eax, cl	# b, D.9099_414->Bshift
	jmp	.L105	#
.L104:
	test	eax, eax	# D.9278
	js	.L124	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+16]	# D.9099_422->Bshift, D.9099_422->Bshift
	sal	eax, cl	# b, D.9099_422->Bshift
	jmp	.L105	#
.L124:
	mov	eax, 0	# b,
.L105:
	or	esi, edi	# tmp466, a
	or	edx, esi	# tmp467, tmp466
	or	eax, edx	# col, tmp467
	test	bl, bl	# first
	je	.L106	#,
	mov	DWORD PTR [r13-16], eax	# MEM[(u32 *)off_dst_4 + -16B], col
	mov	DWORD PTR [r13+0], eax	# MEM[(u32 *)off_dst_4], col
	jmp	.L107	#
.L106:
	mov	DWORD PTR [r13+0], eax	# MEM[(u32 *)off_dst_4], col
.L107:
	add	r13, 4	# off_dst,
	mov	ebx, 0	# first,
	jmp	.L96	#
.L99:
	cmp	r15b, 1	# D.9113,
	jne	.L96	#,
	cvtsi2ss	xmm0, DWORD PTR [rsp+128]	# tmp468, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp469, %sfp
	cvttss2si	eax, xmm0	# D.9272, tmp469
	mov	DWORD PTR [rsp+128], eax	# SUM_col, D.9272
	test	bl, bl	# first
	je	.L108	#,
	mov	edx, -1	# iftmp.20,
	cmp	eax, 255	# D.9272,
	jg	.L109	#,
	test	eax, eax	# D.9272
	mov	edx, 0	# tmp497,
	cmovns	edx, eax	# D.9272,, iftmp.20
.L109:
	mov	BYTE PTR [r13-1], dl	# MEM[(u8 *)off_dst_4 + -1B], iftmp.20
	mov	BYTE PTR [r13+0], dl	# *off_dst_4, iftmp.20
	jmp	.L110	#
.L108:
	mov	edx, -1	# iftmp.22,
	cmp	eax, 255	# D.9272,
	jg	.L111	#,
	test	eax, eax	# D.9272
	mov	edx, 0	# tmp498,
	cmovns	edx, eax	# D.9272,, iftmp.22
.L111:
	mov	BYTE PTR [r13+0], dl	# *off_dst_4, iftmp.22
.L110:
	add	r13, 1	# off_dst,
	mov	ebx, 0	# first,
.L96:
	add	r14, QWORD PTR [rsp+8]	# off_src, %sfp
.L78:
	cmp	r14, QWORD PTR [rsp+80]	# off_src, %sfp
	jb	.L112	#,
	mov	rsi, r13	# tmp470, off_dst
	sub	rsi, QWORD PTR [rsp+8]	# tmp470, %sfp
	mov	rdx, QWORD PTR [rsp+8]	#, %sfp
	mov	rdi, r13	#, off_dst
	call	memcpy	#
	mov	rax, QWORD PTR [rsp+40]	# off_src, %sfp
	add	rax, r14	# off_src, off_src
	add	r13, QWORD PTR [rsp+56]	# off_dst, %sfp
	add	r13, QWORD PTR [rsp+40]	# off_dst, %sfp
	mov	r14, QWORD PTR [rsp+56]	# off_src, %sfp
	add	r14, rax	# off_src, off_src
.L77:
	cmp	r14, QWORD PTR [rsp+64]	# off_src, %sfp
	jbe	.L113	#,
	mov	rbx, QWORD PTR [rsp+112]	# imgdst, %sfp
	mov	rdi, QWORD PTR [rbx+32]	# D.9140, imgdst_52(D)->pixels
	mov	ebp, DWORD PTR [rbx+20]	# tmp476, imgdst_52(D)->h
	sub	ebp, 1	# tmp476,
	imul	ebp, DWORD PTR [rsp+28]	# tmp479, %sfp
	add	rbp, rdi	# off_dst, D.9140
	mov	rsi, QWORD PTR [rsp+16]	# tmp480, %sfp
	add	rsi, rdi	# tmp480, D.9140
	mov	rdx, QWORD PTR [rsp+16]	#, %sfp
	call	memcpy	#
	mov	rsi, rbp	# tmp486, off_dst
	sub	rsi, QWORD PTR [rsp+16]	# tmp486, %sfp
	mov	rdx, QWORD PTR [rsp+16]	#, %sfp
	mov	rdi, rbp	#, off_dst
	call	memcpy	#
	cmp	DWORD PTR [rbx+40], 0	# imgdst_52(D)->offset,
	jne	.L114	#,
	mov	eax, 0	# D.9142,
	test	DWORD PTR [rbx], 16389	# imgdst_52(D)->flags,
	je	.L130	#,
.L114:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9142,
	jmp	.L130	#
.L69:
	mov	eax, 0	# ivtmp.88,
	movss	xmm0, DWORD PTR .LC11[rip]	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
	jmp	.L73	#
.L94:
	mov	BYTE PTR [r13-3], -1	# MEM[(u8 *)off_dst_4 + -3B],
	mov	BYTE PTR [r13+0], -1	# *off_dst_4,
	mov	BYTE PTR [r13-2], -1	# MEM[(u8 *)off_dst_4 + -2B],
	mov	BYTE PTR [r13+1], -1	# MEM[(u8 *)off_dst_4 + 1B],
	mov	edx, -1	# iftmp.6,
	jmp	.L115	#
.L95:
	mov	BYTE PTR [r13-3], 0	# MEM[(u8 *)off_dst_4 + -3B],
	mov	BYTE PTR [r13+0], 0	# *off_dst_4,
	mov	BYTE PTR [r13-2], 0	# MEM[(u8 *)off_dst_4 + -2B],
	mov	BYTE PTR [r13+1], 0	# MEM[(u8 *)off_dst_4 + 1B],
	mov	edx, 0	# iftmp.6,
	jmp	.L115	#
.L98:
	mov	BYTE PTR [r13+0], 0	# *off_dst_4,
	mov	BYTE PTR [r13+1], 0	# MEM[(u8 *)off_dst_4 + 1B],
	mov	edx, 0	# iftmp.12,
	jmp	.L116	#
.L97:
	mov	BYTE PTR [r13+0], -1	# *off_dst_4,
	mov	BYTE PTR [r13+1], -1	# MEM[(u8 *)off_dst_4 + 1B],
	mov	edx, -1	# iftmp.12,
	jmp	.L116	#
.L130:
	mov	rbx, QWORD PTR [rsp+168]	#,
	mov	rbp, QWORD PTR [rsp+176]	#,
	mov	r12, QWORD PTR [rsp+184]	#,
	mov	r13, QWORD PTR [rsp+192]	#,
	mov	r14, QWORD PTR [rsp+200]	#,
	mov	r15, QWORD PTR [rsp+208]	#,
	add	rsp, 216	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	GToolsSplotFilter_applyFilter, .-GToolsSplotFilter_applyFilter
	.globl	GToolsSplotFilter_class
	.data
	.align 8
	.type	GToolsSplotFilter_class, @object
	.size	GToolsSplotFilter_class, 8
GToolsSplotFilter_class:
	.quad	type
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8998, @object
	.size	__FUNCTION__.8998, 22
__FUNCTION__.8998:
	.string	"GToolsSplotFilter_new"
	.section	.rodata.str1.1
.LC17:
	.string	"GToolsSplotFilter"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	64
# name:
	.quad	.LC17
# vtable:
	.quad	vtable
	.section	.rodata.str1.1
.LC18:
	.string	"rozmycie"
.LC19:
	.string	"rozmycie gaussowskie"
.LC20:
	.string	"filtr dolnoprzepustowy"
.LC21:
	.string	"g\303\263rnoprzepustowy 1"
.LC22:
	.string	"g\303\263rnoprzepustowy 2"
.LC23:
	.string	"g\303\263rnoprzepustowy 3"
.LC24:
	.string	"Maska Prewitt'a 1"
.LC25:
	.string	"Maska Prewitt'a 2"
.LC26:
	.string	"Maska Sobele'a 1"
.LC27:
	.string	"Maska Sobele'a 2"
.LC28:
	.string	"Operator Laplace'a 1"
.LC29:
	.string	"Operator Laplace'a 2"
.LC30:
	.string	"R.Gauss + op. Laplace'a"
.LC31:
	.string	"Maska Kuby"
.LC32:
	.string	"Maska Sylwka"
	.section	.rodata
	.align 32
	.type	predef_filter, @object
	.size	predef_filter, 720
predef_filter:
# name:
	.quad	.LC18
# weight:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
# divider:
	.long	1091567616
# name:
	.quad	.LC19
# weight:
	.long	1065353216
	.long	1073741824
	.long	1065353216
	.long	1073741824
	.long	1082130432
	.long	1073741824
	.long	1065353216
	.long	1073741824
	.long	1065353216
# divider:
	.long	1098907648
# name:
	.quad	.LC20
# weight:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
# divider:
	.long	1094713344
# name:
	.quad	.LC21
# weight:
	.long	0
	.long	3212836864
	.long	3212836864
	.long	3212836864
	.long	1084227584
	.long	3212836864
	.long	0
	.long	3212836864
	.long	0
# divider:
	.long	1065353216
# name:
	.quad	.LC22
# weight:
	.long	3212836864
	.long	3212836864
	.long	3212836864
	.long	3212836864
	.long	1091567616
	.long	3212836864
	.long	3212836864
	.long	3212836864
	.long	3212836864
# divider:
	.long	1065353216
# name:
	.quad	.LC23
# weight:
	.long	1065353216
	.long	3221225472
	.long	1065353216
	.long	3221225472
	.long	1084227584
	.long	3221225472
	.long	1065353216
	.long	3221225472
	.long	1065353216
# divider:
	.long	1065353216
# name:
	.quad	.LC24
# weight:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	3212836864
	.long	3212836864
	.long	3212836864
# divider:
	.long	1065353216
# name:
	.quad	.LC25
# weight:
	.long	1065353216
	.long	0
	.long	3212836864
	.long	1065353216
	.long	0
	.long	3212836864
	.long	1065353216
	.long	0
	.long	3212836864
# divider:
	.long	1065353216
# name:
	.quad	.LC26
# weight:
	.long	1065353216
	.long	1073741824
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	3212836864
	.long	3221225472
	.long	3212836864
# divider:
	.long	1065353216
# name:
	.quad	.LC27
# weight:
	.long	1065353216
	.long	0
	.long	3212836864
	.long	1073741824
	.long	0
	.long	3221225472
	.long	1065353216
	.long	0
	.long	3212836864
# divider:
	.long	1065353216
# name:
	.quad	.LC28
# weight:
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.long	3229614080
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
# divider:
	.long	1065353216
# name:
	.quad	.LC29
# weight:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	3238002688
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
# divider:
	.long	1065353216
# name:
	.quad	.LC30
# weight:
	.long	1073741824
	.long	3212836864
	.long	1073741824
	.long	3212836864
	.long	3229614080
	.long	3212836864
	.long	1073741824
	.long	3212836864
	.long	1073741824
# divider:
	.long	1077936128
# name:
	.quad	.LC31
# weight:
	.long	3221225472
	.long	3212836864
	.long	3221225472
	.long	3212836864
	.long	1094713344
	.long	3212836864
	.long	3221225472
	.long	3212836864
	.long	3221225472
# divider:
	.long	1065353216
# name:
	.quad	.LC32
# weight:
	.long	3212836864
	.long	3221225472
	.long	3212836864
	.long	3221225472
	.long	1094713344
	.long	3212836864
	.long	3212836864
	.long	3221225472
	.long	3212836864
# divider:
	.long	1065353216
	.data
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
	.quad	coObject_coIObject_vdestroy
# toString:
	.quad	coObject_coIObject_vtoString
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1120403456
	.align 4
.LC3:
	.long	1036831949
	.align 4
.LC4:
	.long	3267887104
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
	.long	3539053052
	.long	1062232653
	.section	.rodata.cst4
	.align 4
.LC11:
	.long	1065353216
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
