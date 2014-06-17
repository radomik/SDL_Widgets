	.file	"GToolsSplotFilter.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GToolsSplotFilter.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/GToolsSplotFilter.asm
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

	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"GToolsSplotFilter_new: Passed NULL this pointer.\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"GToolsSplotFilter"
	.text
	.globl	GToolsSplotFilter_new
	.type	GToolsSplotFilter_new, @function
GToolsSplotFilter_new:
.LFB93:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L2	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 49	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	jmp	.L3	#
.L2:
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 0	#,
	call	Object_init_type	#
	mov	rdx, QWORD PTR predef_filter[rip+8]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+20], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	rdx, QWORD PTR predef_filter[rip+16]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+28], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	rdx, QWORD PTR predef_filter[rip+24]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+36], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	rdx, QWORD PTR predef_filter[rip+32]	# predef_filter[0].weight, predef_filter[0].weight
	mov	QWORD PTR [rbx+44], rdx	# this_2(D)->weight, predef_filter[0].weight
	mov	edx, DWORD PTR predef_filter[rip+40]	# predef_filter[0].weight, predef_filter[0].weight
	mov	DWORD PTR [rbx+52], edx	# this_2(D)->weight, predef_filter[0].weight
	mov	WORD PTR [rbx+16], -1	# this_2(D)->predef_filter_ind,
	mov	DWORD PTR [rbx+56], 0x41100000	# this_2(D)->divider,
	mov	BYTE PTR [rbx+64], 0	# this_2(D)->has_widget_changing_divider,
	mov	DWORD PTR [rbx+60], 0	# this_2(D)->divider_usage,
.L3:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	GToolsSplotFilter_new, .-GToolsSplotFilter_new
	.globl	GToolsSplotFilter_resetFilter
	.type	GToolsSplotFilter_resetFilter, @function
GToolsSplotFilter_resetFilter:
.LFB94:
	.cfi_startproc
	mov	WORD PTR [rdi+16], -1	# gtsf_1(D)->predef_filter_ind,
	ret
	.cfi_endproc
.LFE94:
	.size	GToolsSplotFilter_resetFilter, .-GToolsSplotFilter_resetFilter
	.globl	GToolsSplotFilter_getFilterInd
	.type	GToolsSplotFilter_getFilterInd, @function
GToolsSplotFilter_getFilterInd:
.LFB95:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+16]	# gtsf_1(D)->predef_filter_ind, gtsf_1(D)->predef_filter_ind
	ret
	.cfi_endproc
.LFE95:
	.size	GToolsSplotFilter_getFilterInd, .-GToolsSplotFilter_getFilterInd
	.section	.rodata.str1.1
.LC3:
	.string	""
	.text
	.globl	GToolsSplotFilter_getFilterName
	.type	GToolsSplotFilter_getFilterName, @function
GToolsSplotFilter_getFilterName:
.LFB96:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+16]	# D.8889, gtsf_2(D)->predef_filter_ind
	cmp	ax, -1	# D.8889,
	je	.L9	#,
	movzx	eax, ax	# D.8889, D.8889
	lea	rax, [rax+rax*2]	# tmp69,
	sal	rax, 4	# tmp70,
	mov	rax, QWORD PTR predef_filter[rax]	# D.8887, predef_filter[D.8892_5].name
	ret
.L9:
	mov	eax, OFFSET FLAT:.LC3	# D.8887,
	ret
	.cfi_endproc
.LFE96:
	.size	GToolsSplotFilter_getFilterName, .-GToolsSplotFilter_getFilterName
	.globl	GToolsSplotFilter_increaseFilterInd
	.type	GToolsSplotFilter_increaseFilterInd, @function
GToolsSplotFilter_increaseFilterInd:
.LFB97:
	.cfi_startproc
	movzx	edx, WORD PTR [rdi+16]	# D.8873, gtsf_2(D)->predef_filter_ind
	cmp	dx, -1	# D.8873,
	jne	.L11	#,
	mov	WORD PTR [rdi+16], 0	# gtsf_2(D)->predef_filter_ind,
	jmp	.L12	#
.L11:
	mov	eax, 0	# D.8881,
	cmp	dx, 13	# D.8873,
	ja	.L13	#,
	add	edx, 1	# tmp71,
	mov	WORD PTR [rdi+16], dx	# gtsf_2(D)->predef_filter_ind, tmp71
.L12:
	movzx	edx, WORD PTR [rdi+16]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rcx, [rdx+rdx*2]	# tmp77,
	sal	rcx, 4	# tmp78,
	lea	rdx, predef_filter[rcx+8]	# tmp80,
	add	rcx, OFFSET FLAT:predef_filter	# tmp79,
	mov	rcx, QWORD PTR [rcx+8]	# predef_filter[D.8882_9].weight, predef_filter[D.8882_9].weight
	mov	QWORD PTR [rdi+20], rcx	# gtsf_2(D)->weight, predef_filter[D.8882_9].weight
	mov	rcx, QWORD PTR [rdx+8]	# predef_filter[D.8882_9].weight, predef_filter[D.8882_9].weight
	mov	QWORD PTR [rdi+28], rcx	# gtsf_2(D)->weight, predef_filter[D.8882_9].weight
	mov	rcx, QWORD PTR [rdx+16]	# predef_filter[D.8882_9].weight, predef_filter[D.8882_9].weight
	mov	QWORD PTR [rdi+36], rcx	# gtsf_2(D)->weight, predef_filter[D.8882_9].weight
	mov	rcx, QWORD PTR [rdx+24]	# predef_filter[D.8882_9].weight, predef_filter[D.8882_9].weight
	mov	QWORD PTR [rdi+44], rcx	# gtsf_2(D)->weight, predef_filter[D.8882_9].weight
	mov	edx, DWORD PTR [rdx+32]	# predef_filter[D.8882_9].weight, predef_filter[D.8882_9].weight
	mov	DWORD PTR [rdi+52], edx	# gtsf_2(D)->weight, predef_filter[D.8882_9].weight
	movzx	eax, WORD PTR [rdi+16]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rax, [rax+rax*2]	# tmp91,
	sal	rax, 4	# tmp92,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	# predef_filter[D.8882_13].divider, predef_filter[D.8882_13].divider
	movss	DWORD PTR [rdi+56], xmm0	# gtsf_2(D)->divider, predef_filter[D.8882_13].divider
	mov	eax, 1	# D.8881,
.L13:
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	GToolsSplotFilter_increaseFilterInd, .-GToolsSplotFilter_increaseFilterInd
	.globl	GToolsSplotFilter_decreaseFilterInd
	.type	GToolsSplotFilter_decreaseFilterInd, @function
GToolsSplotFilter_decreaseFilterInd:
.LFB98:
	.cfi_startproc
	movzx	edx, WORD PTR [rdi+16]	# D.8859, gtsf_2(D)->predef_filter_ind
	cmp	dx, -1	# D.8859,
	jne	.L16	#,
	mov	WORD PTR [rdi+16], 14	# gtsf_2(D)->predef_filter_ind,
	jmp	.L17	#
.L16:
	mov	eax, 0	# D.8867,
	test	dx, dx	# D.8859
	je	.L18	#,
	sub	edx, 1	# tmp71,
	mov	WORD PTR [rdi+16], dx	# gtsf_2(D)->predef_filter_ind, tmp71
.L17:
	movzx	edx, WORD PTR [rdi+16]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rcx, [rdx+rdx*2]	# tmp77,
	sal	rcx, 4	# tmp78,
	lea	rdx, predef_filter[rcx+8]	# tmp80,
	add	rcx, OFFSET FLAT:predef_filter	# tmp79,
	mov	rcx, QWORD PTR [rcx+8]	# predef_filter[D.8868_9].weight, predef_filter[D.8868_9].weight
	mov	QWORD PTR [rdi+20], rcx	# gtsf_2(D)->weight, predef_filter[D.8868_9].weight
	mov	rcx, QWORD PTR [rdx+8]	# predef_filter[D.8868_9].weight, predef_filter[D.8868_9].weight
	mov	QWORD PTR [rdi+28], rcx	# gtsf_2(D)->weight, predef_filter[D.8868_9].weight
	mov	rcx, QWORD PTR [rdx+16]	# predef_filter[D.8868_9].weight, predef_filter[D.8868_9].weight
	mov	QWORD PTR [rdi+36], rcx	# gtsf_2(D)->weight, predef_filter[D.8868_9].weight
	mov	rcx, QWORD PTR [rdx+24]	# predef_filter[D.8868_9].weight, predef_filter[D.8868_9].weight
	mov	QWORD PTR [rdi+44], rcx	# gtsf_2(D)->weight, predef_filter[D.8868_9].weight
	mov	edx, DWORD PTR [rdx+32]	# predef_filter[D.8868_9].weight, predef_filter[D.8868_9].weight
	mov	DWORD PTR [rdi+52], edx	# gtsf_2(D)->weight, predef_filter[D.8868_9].weight
	movzx	eax, WORD PTR [rdi+16]	# gtsf_2(D)->predef_filter_ind, gtsf_2(D)->predef_filter_ind
	lea	rax, [rax+rax*2]	# tmp91,
	sal	rax, 4	# tmp92,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	# predef_filter[D.8868_13].divider, predef_filter[D.8868_13].divider
	movss	DWORD PTR [rdi+56], xmm0	# gtsf_2(D)->divider, predef_filter[D.8868_13].divider
	mov	eax, 1	# D.8867,
.L18:
	rep
	ret
	.cfi_endproc
.LFE98:
	.size	GToolsSplotFilter_decreaseFilterInd, .-GToolsSplotFilter_decreaseFilterInd
	.globl	GToolsSplotFilter_increaseWeightAt
	.type	GToolsSplotFilter_increaseWeightAt, @function
GToolsSplotFilter_increaseWeightAt:
.LFB99:
	.cfi_startproc
	mov	eax, 0	# D.8853,
	cmp	sil, 8	# w,
	ja	.L21	#,
	movzx	esi, sil	# D.8849, w
	movsx	rax, esi	# D.8849, D.8849
	movss	xmm0, DWORD PTR [rdi+20+rax*4]	# D.8850, gtsf_4(D)->weight
	ucomiss	xmm0, DWORD PTR .LC4[rip]	# D.8850,
	jp	.L26	#,
	mov	eax, 0	# D.8853,
	je	.L21	#,
.L26:
	cmp	WORD PTR [rdi+16], -1	# gtsf_4(D)->predef_filter_ind,
	je	.L23	#,
	mov	WORD PTR [rdi+16], -1	# gtsf_4(D)->predef_filter_ind,
.L23:
	movsx	rsi, esi	# D.8849, D.8849
	addss	xmm0, DWORD PTR .LC5[rip]	# tmp72,
	movss	DWORD PTR [rdi+20+rsi*4], xmm0	# gtsf_4(D)->weight, tmp72
	mov	eax, 1	# D.8853,
.L21:
	rep
	ret
	.cfi_endproc
.LFE99:
	.size	GToolsSplotFilter_increaseWeightAt, .-GToolsSplotFilter_increaseWeightAt
	.globl	GToolsSplotFilter_decreaseWeightAt
	.type	GToolsSplotFilter_decreaseWeightAt, @function
GToolsSplotFilter_decreaseWeightAt:
.LFB100:
	.cfi_startproc
	mov	eax, 0	# D.8841,
	cmp	sil, 8	# w,
	ja	.L28	#,
	movzx	esi, sil	# D.8837, w
	movsx	rax, esi	# D.8837, D.8837
	movss	xmm0, DWORD PTR [rdi+20+rax*4]	# D.8838, gtsf_4(D)->weight
	ucomiss	xmm0, DWORD PTR .LC6[rip]	# D.8838,
	jp	.L33	#,
	mov	eax, 0	# D.8841,
	je	.L28	#,
.L33:
	cmp	WORD PTR [rdi+16], -1	# gtsf_4(D)->predef_filter_ind,
	je	.L30	#,
	mov	WORD PTR [rdi+16], -1	# gtsf_4(D)->predef_filter_ind,
.L30:
	movsx	rsi, esi	# D.8837, D.8837
	subss	xmm0, DWORD PTR .LC5[rip]	# tmp72,
	movss	DWORD PTR [rdi+20+rsi*4], xmm0	# gtsf_4(D)->weight, tmp72
	mov	eax, 1	# D.8841,
.L28:
	rep
	ret
	.cfi_endproc
.LFE100:
	.size	GToolsSplotFilter_decreaseWeightAt, .-GToolsSplotFilter_decreaseWeightAt
	.globl	GToolsSplotFilter_increaseDivider
	.type	GToolsSplotFilter_increaseDivider, @function
GToolsSplotFilter_increaseDivider:
.LFB101:
	.cfi_startproc
	movss	xmm0, DWORD PTR [rdi+56]	# D.8822, gtsf_2(D)->divider
	ucomiss	xmm0, DWORD PTR .LC4[rip]	# D.8822,
	jp	.L40	#,
	mov	eax, 0	# D.8825,
	je	.L35	#,
.L40:
	cmp	WORD PTR [rdi+16], -1	# gtsf_2(D)->predef_filter_ind,
	je	.L37	#,
	mov	WORD PTR [rdi+16], -1	# gtsf_2(D)->predef_filter_ind,
.L37:
	addss	xmm0, DWORD PTR .LC5[rip]	# D.8829,
	movss	xmm1, DWORD PTR .LC7[rip]	# tmp70,
	andps	xmm1, xmm0	# tmp69, D.8829
	unpcklps	xmm1, xmm1	# tmp69, tmp69
	cvtps2pd	xmm1, xmm1	# tmp71, tmp69
	movsd	xmm2, QWORD PTR .LC8[rip]	# tmp72,
	ucomisd	xmm2, xmm1	# tmp72, tmp71
	ja	.L38	#,
	movss	DWORD PTR [rdi+56], xmm0	# gtsf_2(D)->divider, D.8829
	mov	eax, 1	# D.8825,
	ret
.L38:
	addss	xmm0, DWORD PTR .LC5[rip]	# tmp73,
	movss	DWORD PTR [rdi+56], xmm0	# gtsf_2(D)->divider, tmp73
	mov	eax, 1	# D.8825,
.L35:
	rep
	ret
	.cfi_endproc
.LFE101:
	.size	GToolsSplotFilter_increaseDivider, .-GToolsSplotFilter_increaseDivider
	.globl	GToolsSplotFilter_decreaseDivider
	.type	GToolsSplotFilter_decreaseDivider, @function
GToolsSplotFilter_decreaseDivider:
.LFB102:
	.cfi_startproc
	movss	xmm0, DWORD PTR [rdi+56]	# D.8809, gtsf_2(D)->divider
	ucomiss	xmm0, DWORD PTR .LC6[rip]	# D.8809,
	jp	.L47	#,
	mov	eax, 0	# D.8812,
	je	.L42	#,
.L47:
	cmp	WORD PTR [rdi+16], -1	# gtsf_2(D)->predef_filter_ind,
	je	.L44	#,
	mov	WORD PTR [rdi+16], -1	# gtsf_2(D)->predef_filter_ind,
.L44:
	subss	xmm0, DWORD PTR .LC5[rip]	# D.8816,
	movss	xmm1, DWORD PTR .LC7[rip]	# tmp70,
	andps	xmm1, xmm0	# tmp69, D.8816
	unpcklps	xmm1, xmm1	# tmp69, tmp69
	cvtps2pd	xmm1, xmm1	# tmp71, tmp69
	movsd	xmm2, QWORD PTR .LC8[rip]	# tmp72,
	ucomisd	xmm2, xmm1	# tmp72, tmp71
	ja	.L45	#,
	movss	DWORD PTR [rdi+56], xmm0	# gtsf_2(D)->divider, D.8816
	mov	eax, 1	# D.8812,
	ret
.L45:
	subss	xmm0, DWORD PTR .LC5[rip]	# tmp73,
	movss	DWORD PTR [rdi+56], xmm0	# gtsf_2(D)->divider, tmp73
	mov	eax, 1	# D.8812,
.L42:
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	GToolsSplotFilter_decreaseDivider, .-GToolsSplotFilter_decreaseDivider
	.globl	GToolsSplotFilter_getWeightAt
	.type	GToolsSplotFilter_getWeightAt, @function
GToolsSplotFilter_getWeightAt:
.LFB103:
	.cfi_startproc
	xorps	xmm0, xmm0	# D.8806
	cmp	sil, 8	# w,
	ja	.L49	#,
	movzx	esi, sil	# w, w
	movss	xmm0, DWORD PTR [rdi+20+rsi*4]	# D.8806, gtsf_4(D)->weight
.L49:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	GToolsSplotFilter_getWeightAt, .-GToolsSplotFilter_getWeightAt
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"Dzielnik okre\305\233lony przez filtr"
	.section	.rodata.str1.1
.LC11:
	.string	"Dzielnik u\305\274ytkownika"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"Dzielnik b\304\231d\304\205cy sum\304\205 wag filtru"
	.text
	.globl	GToolsSplotFilter_getDividerUsageDesc
	.type	GToolsSplotFilter_getDividerUsageDesc, @function
GToolsSplotFilter_getDividerUsageDesc:
.LFB104:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+60]	# gtsf_2(D)->divider_usage, gtsf_2(D)->divider_usage
	mov	eax, OFFSET FLAT:.LC11	# D.8802,
	cmp	edx, 1	# gtsf_2(D)->divider_usage,
	je	.L54	#,
	mov	eax, OFFSET FLAT:.LC10	# D.8802,
	cmp	edx, 1	# gtsf_2(D)->divider_usage,
	jb	.L54	#,
	cmp	edx, 2	# gtsf_2(D)->divider_usage,
	mov	eax, OFFSET FLAT:.LC3	# tmp66,
	mov	edx, OFFSET FLAT:.LC12	# tmp65,
	cmove	rax, rdx	# tmp65,, D.8802
.L54:
	rep
	ret
	.cfi_endproc
.LFE104:
	.size	GToolsSplotFilter_getDividerUsageDesc, .-GToolsSplotFilter_getDividerUsageDesc
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"GToolsSplotFilter_applyFilter() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC15:
	.string	"GToolsSplotFilter_applyFilter() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC16:
	.string	"GToolsSplotFilter_applyFilter() > Input image [w=%hu, h=%hu] to small (below 3x3 pixels)\n"
	.align 8
.LC17:
	.string	"GToolsSplotFilter_applyFilter: Ignoring .divider_usage==CUSTOM_DIVIDER settings while .has_widget_changing_divider==false\n"
	.align 8
.LC18:
	.string	"GToolsSplotFilter_applyFilter: [%s] Dividier: %f\n"
	.text
	.globl	GToolsSplotFilter_applyFilter
	.type	GToolsSplotFilter_applyFilter, @function
GToolsSplotFilter_applyFilter:
.LFB105:
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
	mov	rax, QWORD PTR [rsi+8]	# D.8469, imgsrc_50(D)->format
	test	rax, rax	# D.8469
	je	.L58	#,
	mov	rdx, QWORD PTR [rdx+8]	# D.8471, imgdst_52(D)->format
	test	rdx, rdx	# D.8471
	je	.L58	#,
	movzx	esi, WORD PTR [rsi+24]	# D.8473, imgsrc_50(D)->pitch
	cmp	si, WORD PTR [rbx+24]	# D.8473, imgdst_52(D)->pitch
	jne	.L58	#,
	mov	rcx, QWORD PTR [rbx+16]	#,
	cmp	QWORD PTR [rbp+16], rcx	#,
	jne	.L58	#,
	movzx	r14d, BYTE PTR [rax+9]	# D.8483, D.8469_55->BytesPerPixel
	cmp	r14b, BYTE PTR [rdx+9]	# D.8483, D.8471_56->BytesPerPixel
	jne	.L58	#,
	mov	r12, rdi	# gtsf, gtsf
	mov	edi, DWORD PTR [rdx+32]	#, D.8471_56->Amask
	cmp	DWORD PTR [rax+32], edi	# D.8469_55->Amask,
	jne	.L58	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.8471_56->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.8469_55->Rmask,
	jne	.L58	#,
	mov	rdi, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rdi	#,
	jne	.L58	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.8471_56->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.8469_55->Ashift,
	jne	.L58	#,
	movzx	edi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], di	#,
	jne	.L58	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.8471_56->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.8469_55->Bshift,
	jne	.L58	#,
	mov	r15, QWORD PTR [rbp+32]	# off_src, imgsrc_50(D)->pixels
	test	r15, r15	# off_src
	je	.L58	#,
	mov	rdx, QWORD PTR [rbx+32]	# D.8510, imgdst_52(D)->pixels
	test	rdx, rdx	# D.8510
	jne	.L59	#,
.L58:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 85	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC14	#,
	call	fwrite	#
	mov	eax, -56	# D.8512,
	jmp	.L130	#
.L59:
	lea	eax, [r14-3]	# tmp352,
	cmp	al, 1	# tmp352,
	jbe	.L61	#,
	movzx	ecx, r14b	# D.8483, D.8483
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.8512,
	jmp	.L130	#
.L61:
	mov	ecx, DWORD PTR [rbp+16]	# D.8519, imgsrc_50(D)->w
	cmp	ecx, 2	# D.8519,
	jle	.L62	#,
	mov	eax, DWORD PTR [rbp+20]	# D.8521, imgsrc_50(D)->h
	cmp	eax, 2	# D.8521,
	jg	.L63	#,
.L62:
	mov	r8d, DWORD PTR [rbp+20]	#, imgsrc_50(D)->h
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8512,
	jmp	.L130	#
.L63:
	movzx	edi, si	#, D.8473
	mov	DWORD PTR [rsp+28], edi	# %sfp,
	movzx	esi, si	#, D.8473
	mov	QWORD PTR [rsp+16], rsi	# %sfp,
	movzx	esi, r14b	#, D.8483
	mov	QWORD PTR [rsp+8], rsi	# %sfp,
	add	rsi, QWORD PTR [rsp+16]	# tmp355, %sfp
	lea	r13, [rdx+rsi]	# off_dst,
	sub	eax, 3	# tmp356,
	imul	eax, edi	# tmp358,
	add	rax, r15	#, off_src
	mov	QWORD PTR [rsp+64], rax	# %sfp,
	lea	edi, [r14+r14]	#,
	mov	BYTE PTR [rsp], dil	# %sfp,
	mov	eax, DWORD PTR [rsp+28]	#, %sfp
	add	eax, eax	#
	mov	DWORD PTR [rsp+76], eax	# %sfp,
	movzx	esi, r14b	# D.8483, D.8483
	mov	edx, ecx	# tmp360, D.8519
	imul	edx, esi	# tmp360, D.8483
	movzx	eax, dil	# Bpp2,
	sub	edx, eax	# tmp360, Bpp2
	mov	DWORD PTR [rsp+120], edx	# %sfp, tmp360
	mov	eax, DWORD PTR [rsp+28]	# tmp363, %sfp
	mov	edx, 0	# tmp364,
	div	esi	# D.8483
	mov	edx, eax	# tmp498,
	sub	edx, ecx	# tmp498, D.8519
	cmp	eax, ecx	# tmp363, D.8519
	mov	eax, 0	# tmp499,
	cmova	eax, edx	# tmp498,, sp
	imul	eax, r14d	# sp, D.8483
	mov	BYTE PTR [rsp+32], al	# %sfp, sp
	cmp	BYTE PTR [r12+64], 0	# gtsf_143(D)->has_widget_changing_divider,
	jne	.L65	#,
	mov	eax, DWORD PTR [r12+60]	# gtsf_143(D)->divider_usage, gtsf_143(D)->divider_usage
	cmp	eax, 1	# gtsf_143(D)->divider_usage,
	je	.L68	#,
	cmp	eax, 1	# gtsf_143(D)->divider_usage,
	jb	.L67	#,
	cmp	eax, 2	# gtsf_143(D)->divider_usage,
	jne	.L132	#,
	.p2align 4,,5
	jmp	.L69	#
.L68:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 122	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC17	#,
	call	fwrite	#
.L67:
	movzx	eax, WORD PTR [r12+16]	# D.8545, gtsf_143(D)->predef_filter_ind
	cmp	ax, -1	# D.8545,
	je	.L69	#,
	movzx	eax, ax	# D.8545, D.8545
	imul	rax, rax, 48	# tmp369, D.8545,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	#, predef_filter[D.8549_153].divider
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
	jmp	.L66	#
.L65:
	mov	eax, DWORD PTR [r12+60]	# gtsf_143(D)->divider_usage, gtsf_143(D)->divider_usage
	cmp	eax, 1	# gtsf_143(D)->divider_usage,
	je	.L72	#,
	cmp	eax, 1	# gtsf_143(D)->divider_usage,
	jb	.L71	#,
	cmp	eax, 2	# gtsf_143(D)->divider_usage,
	jne	.L133	#,
	.p2align 4,,5
	jmp	.L69	#
.L72:
	movss	xmm1, DWORD PTR [r12+56]	#, gtsf_143(D)->divider
	movss	DWORD PTR [rsp+24], xmm1	# %sfp,
	jmp	.L66	#
.L71:
	movzx	eax, WORD PTR [r12+16]	# D.8545, gtsf_143(D)->predef_filter_ind
	cmp	ax, -1	# D.8545,
	je	.L69	#,
	movzx	eax, ax	# D.8545, D.8545
	imul	rax, rax, 48	# tmp375, D.8545,
	movss	xmm0, DWORD PTR predef_filter[rax+44]	#, predef_filter[D.8549_161].divider
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
	jmp	.L66	#
.L73:
	addss	xmm0, DWORD PTR [r12+20+rax]	# sum_w, MEM[base: gtsf_143(D), index: ivtmp.89_31, offset: 20B]
	add	rax, 4	# ivtmp.89,
	cmp	rax, 36	# ivtmp.89,
	jne	.L73	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp, sum_w
	jmp	.L66	#
.L132:
	movss	xmm1, DWORD PTR .LC13[rip]	#,
	movss	DWORD PTR [rsp+24], xmm1	# %sfp,
	jmp	.L66	#
.L133:
	movss	xmm0, DWORD PTR .LC13[rip]	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
.L66:
	movss	xmm0, DWORD PTR .LC7[rip]	# tmp378,
	movss	xmm1, DWORD PTR [rsp+24]	#, %sfp
	andps	xmm0, xmm1	# tmp377,
	cvtss2sd	xmm0, xmm0	# tmp379, tmp377
	movsd	xmm1, QWORD PTR .LC8[rip]	# tmp380,
	ucomisd	xmm1, xmm0	# tmp380, tmp379
	jbe	.L74	#,
	movss	xmm0, DWORD PTR .LC13[rip]	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
.L74:
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_getDividerUsageDesc	#
	cvtss2sd	xmm0, DWORD PTR [rsp+24]	# tmp381, %sfp
	mov	rcx, rax	#, D.8567
	mov	edx, OFFSET FLAT:.LC18	#,
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
	mov	eax, r14d	# D.8483, D.8483
	mov	r14, r15	# off_src, off_src
	mov	QWORD PTR [rsp+32], r12	# %sfp, gtsf
	mov	r12, rbp	# imgsrc, imgsrc
	mov	QWORD PTR [rsp+112], rbx	# %sfp, imgdst
	mov	r15d, eax	# D.8483, D.8483
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
	cmp	r15b, 3	# D.8483,
	jne	.L80	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+8]	#, %sfp
	mov	rsi, rbp	#, d_src_off
	lea	rdi, [rsp+144]	#,
	call	__memcpy_chk	#
	movzx	eax, bl	# w, w
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	movss	xmm0, DWORD PTR [rdi+20+rax*4]	# D.8561, MEM[(float *)gtsf_143(D)].weight
	movzx	eax, BYTE PTR [rsp+145]	# color, color
	cvtsi2ss	xmm1, eax	# tmp390, color
	mulss	xmm1, xmm0	# tmp391, D.8561
	cvttss2si	edx, xmm1	# D.8589, tmp391
	movzx	eax, BYTE PTR [rsp+146]	# color, color
	cvtsi2ss	xmm1, eax	# tmp393, color
	mulss	xmm1, xmm0	# tmp394, D.8561
	cvttss2si	eax, xmm1	# D.8594, tmp394
	movzx	ecx, BYTE PTR [rsp+144]	# color, color
	cvtsi2ss	xmm1, ecx	# tmp396, color
	mulss	xmm0, xmm1	# tmp397, tmp396
	cvttss2si	ecx, xmm0	# tmp398, tmp397
	add	DWORD PTR [rsp+128], ecx	# SUM_col, tmp398
	add	DWORD PTR [rsp+132], edx	# SUM_col, D.8589
	add	DWORD PTR [rsp+136], eax	# SUM_col, D.8594
	jmp	.L81	#
.L80:
	cmp	r15b, 4	# D.8483,
	jne	.L82	#,
	mov	edx, DWORD PTR [rbp+0]	# col, MEM[base: d_src_off_10, offset: 0B]
	cmp	bl, 4	# w,
	jne	.L83	#,
	mov	rax, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	mov	eax, DWORD PTR [rax+32]	#, D.8469_230->Amask
	and	eax, edx	#, col
	mov	DWORD PTR [rsp+72], eax	# %sfp,
.L83:
	mov	rax, QWORD PTR [r12+8]	# D.8469, imgsrc_50(D)->format
	movzx	ecx, bl	# w, w
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	movss	xmm0, DWORD PTR [rdi+20+rcx*4]	# D.8561, MEM[(float *)gtsf_143(D)].weight
	mov	esi, edx	# tmp402, col
	and	esi, DWORD PTR [rax+24]	# tmp402, D.8469_233->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.8469_233->Gshift, D.8469_233->Gshift
	shr	esi, cl	# tmp402, D.8469_233->Gshift
	mov	ecx, esi	# tmp406, tmp404
	cvtsi2ss	xmm1, rcx	# tmp405, tmp406
	mulss	xmm1, xmm0	# tmp410, D.8561
	cvttss2si	edi, xmm1	# D.8623, tmp410
	mov	esi, edx	# tmp411, col
	and	esi, DWORD PTR [rax+28]	# tmp411, D.8469_233->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.8469_233->Bshift, D.8469_233->Bshift
	shr	esi, cl	# tmp411, D.8469_233->Bshift
	mov	ecx, esi	# tmp415, tmp413
	cvtsi2ss	xmm1, rcx	# tmp414, tmp415
	mulss	xmm1, xmm0	# tmp419, D.8561
	cvttss2si	esi, xmm1	# D.8630, tmp419
	and	edx, DWORD PTR [rax+20]	# tmp420, D.8469_233->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.8469_233->Rshift, D.8469_233->Rshift
	mov	eax, edx	# tmp422, tmp420
	shr	eax, cl	# tmp422, D.8469_233->Rshift
	mov	eax, eax	# tmp424, tmp422
	cvtsi2ss	xmm1, rax	# tmp423, tmp424
	mulss	xmm0, xmm1	# tmp428, tmp423
	cvttss2si	eax, xmm0	# tmp429, tmp428
	add	DWORD PTR [rsp+128], eax	# SUM_col, tmp429
	add	DWORD PTR [rsp+132], edi	# SUM_col, D.8623
	add	DWORD PTR [rsp+136], esi	# SUM_col, D.8630
	jmp	.L81	#
.L82:
	cmp	r15b, 1	# D.8483,
	jne	.L81	#,
	movzx	eax, BYTE PTR [rbp+0]	# D.8634, MEM[base: d_src_off_10, offset: 0B]
	mov	BYTE PTR [rsp+144], al	# color, D.8634
	movzx	eax, al	# D.8634, D.8634
	cvtsi2ss	xmm0, eax	# tmp431, D.8634
	movzx	edx, bl	# w, w
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	mulss	xmm0, DWORD PTR [rdi+20+rdx*4]	# tmp434, MEM[(float *)gtsf_143(D)].weight
	cvttss2si	eax, xmm0	# tmp435, tmp434
	add	DWORD PTR [rsp+128], eax	# SUM_col, tmp435
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
	cmp	r15b, 3	# D.8483,
	jne	.L92	#,
	cvtsi2ss	xmm0, DWORD PTR [rsp+128]	# tmp440, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp441, %sfp
	cvttss2si	eax, xmm0	# D.8643, tmp441
	mov	DWORD PTR [rsp+128], eax	# SUM_col, D.8643
	cvtsi2ss	xmm0, DWORD PTR [rsp+132]	# tmp442, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp443, %sfp
	cvttss2si	edx, xmm0	# tmp444, tmp443
	mov	DWORD PTR [rsp+132], edx	# SUM_col, tmp444
	cvtsi2ss	xmm0, DWORD PTR [rsp+136]	# tmp445, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp446, %sfp
	cvttss2si	edx, xmm0	# tmp447, tmp446
	mov	DWORD PTR [rsp+136], edx	# SUM_col, tmp447
	test	bl, bl	# first
	je	.L93	#,
	cmp	eax, 255	# D.8643,
	jg	.L94	#,
	test	eax, eax	# D.8643
	js	.L95	#,
	mov	edx, eax	# iftmp.6, D.8643
	mov	BYTE PTR [r13-3], al	# MEM[(uchar *)off_dst_4 + -3B], D.8643
	mov	BYTE PTR [r13+0], al	# *off_dst_4, D.8643
	mov	BYTE PTR [r13-2], al	# MEM[(uchar *)off_dst_4 + -2B], D.8643
	mov	BYTE PTR [r13+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8643
.L115:
	mov	BYTE PTR [r13-1], dl	# MEM[(uchar *)off_dst_4 + -1B], iftmp.6
	mov	BYTE PTR [r13+2], dl	# MEM[(uchar *)off_dst_4 + 2B], iftmp.6
	add	r13, 3	# off_dst,
	mov	ebx, 0	# first,
	jmp	.L96	#
.L93:
	cmp	eax, 255	# D.8643,
	jg	.L97	#,
	test	eax, eax	# D.8643
	js	.L98	#,
	mov	edx, eax	# iftmp.12, D.8643
	mov	BYTE PTR [r13+0], al	# *off_dst_4, D.8643
	mov	BYTE PTR [r13+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8643
.L116:
	mov	BYTE PTR [r13+2], dl	# MEM[(uchar *)off_dst_4 + 2B], iftmp.12
	add	r13, 3	# off_dst,
	jmp	.L96	#
.L92:
	cmp	r15b, 4	# D.8483,
	jne	.L99	#,
	cvtsi2ss	xmm0, DWORD PTR [rsp+128]	# tmp448, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp449, %sfp
	cvttss2si	esi, xmm0	# D.8643, tmp449
	mov	DWORD PTR [rsp+128], esi	# SUM_col, D.8643
	cvtsi2ss	xmm0, DWORD PTR [rsp+132]	# tmp450, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp451, %sfp
	cvttss2si	edx, xmm0	# D.8646, tmp451
	mov	DWORD PTR [rsp+132], edx	# SUM_col, D.8646
	cvtsi2ss	xmm0, DWORD PTR [rsp+136]	# tmp452, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp453, %sfp
	cvttss2si	eax, xmm0	# D.8649, tmp453
	mov	DWORD PTR [rsp+136], eax	# SUM_col, D.8649
	cmp	esi, 255	# D.8643,
	jle	.L100	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+14]	# D.8469_383->Rshift, D.8469_383->Rshift
	mov	esi, 255	# tmp456,
	sal	esi, cl	# r, D.8469_383->Rshift
	jmp	.L101	#
.L100:
	test	esi, esi	# D.8643
	js	.L122	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+14]	# D.8469_391->Rshift, D.8469_391->Rshift
	sal	esi, cl	# r, D.8469_391->Rshift
	jmp	.L101	#
.L122:
	mov	esi, 0	# r,
.L101:
	cmp	edx, 255	# D.8646,
	jle	.L102	#,
	mov	rdx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rdx+15]	# D.8469_399->Gshift, D.8469_399->Gshift
	mov	edx, 255	# tmp461,
	sal	edx, cl	# g, D.8469_399->Gshift
	jmp	.L103	#
.L102:
	test	edx, edx	# D.8646
	js	.L123	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+15]	# D.8469_407->Gshift, D.8469_407->Gshift
	sal	edx, cl	# g, D.8469_407->Gshift
	jmp	.L103	#
.L123:
	mov	edx, 0	# g,
.L103:
	cmp	eax, 255	# D.8649,
	jle	.L104	#,
	mov	rax, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rax+16]	# D.8469_415->Bshift, D.8469_415->Bshift
	mov	eax, 255	# tmp466,
	sal	eax, cl	# b, D.8469_415->Bshift
	jmp	.L105	#
.L104:
	test	eax, eax	# D.8649
	js	.L124	#,
	mov	rcx, QWORD PTR [r12+8]	# imgsrc_50(D)->format, imgsrc_50(D)->format
	movzx	ecx, BYTE PTR [rcx+16]	# D.8469_423->Bshift, D.8469_423->Bshift
	sal	eax, cl	# b, D.8469_423->Bshift
	jmp	.L105	#
.L124:
	mov	eax, 0	# b,
.L105:
	or	esi, edi	# tmp469, a
	or	edx, esi	# tmp470, tmp469
	or	eax, edx	# col, tmp470
	test	bl, bl	# first
	je	.L106	#,
	mov	DWORD PTR [r13-16], eax	# MEM[(unsigned int *)off_dst_4 + -16B], col
	mov	DWORD PTR [r13+0], eax	# MEM[(unsigned int *)off_dst_4], col
	jmp	.L107	#
.L106:
	mov	DWORD PTR [r13+0], eax	# MEM[(unsigned int *)off_dst_4], col
.L107:
	add	r13, 4	# off_dst,
	mov	ebx, 0	# first,
	jmp	.L96	#
.L99:
	cmp	r15b, 1	# D.8483,
	jne	.L96	#,
	cvtsi2ss	xmm0, DWORD PTR [rsp+128]	# tmp471, SUM_col
	divss	xmm0, DWORD PTR [rsp+24]	# tmp472, %sfp
	cvttss2si	eax, xmm0	# D.8643, tmp472
	mov	DWORD PTR [rsp+128], eax	# SUM_col, D.8643
	test	bl, bl	# first
	je	.L108	#,
	mov	edx, -1	# iftmp.20,
	cmp	eax, 255	# D.8643,
	jg	.L109	#,
	test	eax, eax	# D.8643
	mov	edx, 0	# tmp502,
	cmovns	edx, eax	# D.8643,, iftmp.20
.L109:
	mov	BYTE PTR [r13-1], dl	# MEM[(uchar *)off_dst_4 + -1B], iftmp.20
	mov	BYTE PTR [r13+0], dl	# *off_dst_4, iftmp.20
	jmp	.L110	#
.L108:
	mov	edx, -1	# iftmp.22,
	cmp	eax, 255	# D.8643,
	jg	.L111	#,
	test	eax, eax	# D.8643
	mov	edx, 0	# tmp503,
	cmovns	edx, eax	# D.8643,, iftmp.22
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
	mov	rsi, r13	# tmp473, off_dst
	sub	rsi, QWORD PTR [rsp+8]	# tmp473, %sfp
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
	mov	rdi, QWORD PTR [rbx+32]	# D.8510, imgdst_52(D)->pixels
	mov	ebp, DWORD PTR [rbx+20]	# tmp479, imgdst_52(D)->h
	sub	ebp, 1	# tmp479,
	imul	ebp, DWORD PTR [rsp+28]	# tmp482, %sfp
	add	rbp, rdi	# d_src_off, D.8510
	mov	rsi, QWORD PTR [rsp+16]	# tmp483, %sfp
	add	rsi, rdi	# tmp483, D.8510
	mov	rdx, QWORD PTR [rsp+16]	#, %sfp
	call	memcpy	#
	mov	rsi, rbp	# tmp489, d_src_off
	sub	rsi, QWORD PTR [rsp+16]	# tmp489, %sfp
	mov	rdx, QWORD PTR [rsp+16]	#, %sfp
	mov	rdi, rbp	#, d_src_off
	call	memcpy	#
	cmp	DWORD PTR [rbx+40], 0	# imgdst_52(D)->offset,
	jne	.L114	#,
	mov	eax, 0	# D.8512,
	test	DWORD PTR [rbx], 16389	# imgdst_52(D)->flags,
	je	.L130	#,
.L114:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.8512,
	jmp	.L130	#
.L69:
	mov	eax, 0	# ivtmp.89,
	movss	xmm0, DWORD PTR .LC13[rip]	#,
	movss	DWORD PTR [rsp+24], xmm0	# %sfp,
	jmp	.L73	#
.L94:
	mov	BYTE PTR [r13-3], -1	# MEM[(uchar *)off_dst_4 + -3B],
	mov	BYTE PTR [r13+0], -1	# *off_dst_4,
	mov	BYTE PTR [r13-2], -1	# MEM[(uchar *)off_dst_4 + -2B],
	mov	BYTE PTR [r13+1], -1	# MEM[(uchar *)off_dst_4 + 1B],
	mov	edx, -1	# iftmp.6,
	jmp	.L115	#
.L95:
	mov	BYTE PTR [r13-3], 0	# MEM[(uchar *)off_dst_4 + -3B],
	mov	BYTE PTR [r13+0], 0	# *off_dst_4,
	mov	BYTE PTR [r13-2], 0	# MEM[(uchar *)off_dst_4 + -2B],
	mov	BYTE PTR [r13+1], 0	# MEM[(uchar *)off_dst_4 + 1B],
	mov	edx, 0	# iftmp.6,
	jmp	.L115	#
.L98:
	mov	BYTE PTR [r13+0], 0	# *off_dst_4,
	mov	BYTE PTR [r13+1], 0	# MEM[(uchar *)off_dst_4 + 1B],
	mov	edx, 0	# iftmp.12,
	jmp	.L116	#
.L97:
	mov	BYTE PTR [r13+0], -1	# *off_dst_4,
	mov	BYTE PTR [r13+1], -1	# MEM[(uchar *)off_dst_4 + 1B],
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
.LFE105:
	.size	GToolsSplotFilter_applyFilter, .-GToolsSplotFilter_applyFilter
	.section	.rodata.str1.1
.LC19:
	.string	"rozmycie"
.LC20:
	.string	"rozmycie gaussowskie"
.LC21:
	.string	"filtr dolnoprzepustowy"
.LC22:
	.string	"g\303\263rnoprzepustowy 1"
.LC23:
	.string	"g\303\263rnoprzepustowy 2"
.LC24:
	.string	"g\303\263rnoprzepustowy 3"
.LC25:
	.string	"Maska Prewitt'a 1"
.LC26:
	.string	"Maska Prewitt'a 2"
.LC27:
	.string	"Maska Sobele'a 1"
.LC28:
	.string	"Maska Sobele'a 2"
.LC29:
	.string	"Operator Laplace'a 1"
.LC30:
	.string	"Operator Laplace'a 2"
.LC31:
	.string	"R.Gauss + op. Laplace'a"
.LC32:
	.string	"Maska Kuby"
.LC33:
	.string	"Maska Sylwka"
	.section	.rodata
	.align 32
	.type	predef_filter, @object
	.size	predef_filter, 720
predef_filter:
# name:
	.quad	.LC19
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
	.quad	.LC20
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
	.quad	.LC21
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
	.quad	.LC22
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
	.quad	.LC23
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
	.quad	.LC24
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
	.quad	.LC25
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
	.quad	.LC26
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
	.quad	.LC27
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
	.quad	.LC28
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
	.quad	.LC29
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
	.quad	.LC30
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
	.quad	.LC31
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
	.quad	.LC32
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
	.quad	.LC33
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	1120403456
	.align 4
.LC5:
	.long	1036831949
	.align 4
.LC6:
	.long	3267887104
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC7:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	3539053052
	.long	1062232653
	.section	.rodata.cst4
	.align 4
.LC13:
	.long	1065353216
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
