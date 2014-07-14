	.file	"GraphicsCallbacks.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GraphicsCallbacks.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/GraphicsCallbacks.asm
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
	.globl	button_imgsrc_open
	.type	button_imgsrc_open, @function
button_imgsrc_open:
.LFB107:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 12744	#,
	.cfi_def_cfa_offset 12752
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# sender, sender
	mov	QWORD PTR [rsp], rsi	# %sfp, screen
	mov	rsi, QWORD PTR IMAGE_SUPPORTED_FILES[rip]	#, IMAGE_SUPPORTED_FILES
	lea	rdi, [rsp+48]	#,
	call	FileBrowsePanel_new	#
	mov	edx, 0	#,
	mov	esi, 1	#,
	lea	rdi, [rsp+48]	#,
	call	FileBrowsePanel_show	#
	mov	r13, rax	# sel_path,
	lea	rdi, [rsp+48]	#,
	call	delete	#
	test	r13, r13	# sel_path
	je	.L2	#,
	mov	rax, QWORD PTR [rbx+120]	# D.11645, sender_3(D)->cparam
	mov	rbp, QWORD PTR [rax]	# imgsrc, *D.11645_4
	mov	r12, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.11645_4 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.11645_4 + 16B]
	mov	r15, QWORD PTR [rax+24]	# thr_bin_label, MEM[(void * *)D.11645_4 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.11645_4 + 32B]
	mov	QWORD PTR [rsp+32], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.11645_4 + 40B]
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	mov	rax, QWORD PTR [rax+48]	#, MEM[(void * *)D.11645_4 + 48B]
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	movzx	r14d, BYTE PTR [rbp+157]	# imgsrc_draggable, MEM[(struct Widget *)imgsrc_5].draggable
	movzx	eax, BYTE PTR [rbx+159]	#, MEM[(struct Widget *)histogram_9].visible
	mov	BYTE PTR [rsp+23], al	# %sfp,
	movzx	edx, WORD PTR [rbp+96]	#, MEM[(struct Widget *)imgsrc_5].pos.x
	mov	WORD PTR [rsp+24], dx	# %sfp,
	movzx	eax, WORD PTR [rbp+98]	#, MEM[(struct Widget *)imgsrc_5].pos.y
	mov	WORD PTR [rsp+26], ax	# %sfp,
	movzx	edx, WORD PTR [r12+96]	#, MEM[(struct Widget *)imgdst_7].pos.x
	mov	WORD PTR [rsp+28], dx	# %sfp,
	movzx	eax, WORD PTR [r12+98]	#, MEM[(struct Widget *)imgdst_7].pos.y
	mov	WORD PTR [rsp+30], ax	# %sfp,
	mov	rdi, rbp	#, imgsrc
	call	delete	#
	mov	rdi, r12	#, imgdst
	call	delete	#
	movzx	ecx, WORD PTR [rsp+26]	# src_y, %sfp
	movzx	edx, WORD PTR [rsp+24]	# src_x, %sfp
	mov	rsi, r13	#, sel_path
	mov	rdi, rbp	#, imgsrc
	call	Image_new	#
	movzx	edx, WORD PTR [rbp+100]	# D.11652, MEM[(struct Widget *)imgsrc_5].pos.w
	movzx	eax, WORD PTR [rbp+102]	# D.11653, MEM[(struct Widget *)imgsrc_5].pos.h
	cmp	dx, ax	# D.11652, D.11653
	jbe	.L3	#,
	cmp	dx, 1920	# D.11652,
	jbe	.L4	#,
	movzx	edx, dx	# D.11652, D.11652
	cvtsi2sd	xmm1, edx	# tmp128, D.11652
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp130,
	divsd	xmm0, xmm1	# scale, tmp128
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, imgsrc
	call	Widget_scale	#
	jmp	.L4	#
.L3:
	cmp	ax, 600	# D.11653,
	jbe	.L4	#,
	movzx	eax, ax	# D.11653, D.11653
	cvtsi2sd	xmm1, eax	# tmp131, D.11653
	movsd	xmm0, QWORD PTR .LC1[rip]	# tmp133,
	divsd	xmm0, xmm1	# scale, tmp131
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, imgsrc
	call	Widget_scale	#
.L4:
	mov	edx, 1	#,
	mov	rsi, rbp	#, imgsrc
	mov	rdi, r12	#, imgdst
	call	Image_copy	#
	movzx	edx, WORD PTR [rsp+30]	# dst_y, %sfp
	movzx	esi, WORD PTR [rsp+28]	# dst_x, %sfp
	mov	rdi, r12	#, imgdst
	call	Widget_setPosition	#
	mov	BYTE PTR [r12+157], r14b	# MEM[(struct Widget *)imgdst_7].draggable, imgsrc_draggable
	mov	BYTE PTR [rbp+157], r14b	# MEM[(struct Widget *)imgsrc_5].draggable, imgsrc_draggable
	mov	QWORD PTR [rbx+552], 0	# MEM[(struct Histogram *)histogram_9 + 384B].data,
	mov	QWORD PTR [rbx+360], 0	# MEM[(struct Histogram *)histogram_9 + 192B].data,
	mov	QWORD PTR [rbx+168], 0	# histogram_9->data,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_9].class, MEM[(struct coObject *)histogram_9].class
	mov	rax, QWORD PTR [rax+16]	# D.11670_47->vtable, D.11670_47->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11671_48 + 8B], MEM[(const void * *)D.11671_48 + 8B]
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11673_50].refresh
	lea	r12, [rbx+192]	# D.11681,
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_9 + 192B].class, MEM[(struct coObject *)histogram_9 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11676_53->vtable, D.11676_53->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11677_54 + 8B], MEM[(const void * *)D.11677_54 + 8B]
	mov	rdi, r12	#, D.11681
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11679_56].refresh
	lea	rbp, [rbx+384]	# D.11688,
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_9 + 384B].class, MEM[(struct coObject *)histogram_9 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11683_60->vtable, D.11683_60->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11684_61 + 8B], MEM[(const void * *)D.11684_61 + 8B]
	mov	rdi, rbp	#, D.11688
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11686_63].refresh
	cmp	BYTE PTR [rsp+23], 0	# %sfp,
	jne	.L5	#,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_9].class, MEM[(struct coObject *)histogram_9].class
	mov	rax, QWORD PTR [rax+16]	# D.11670_66->vtable, D.11670_66->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11671_67 + 8B], MEM[(const void * *)D.11671_67 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11673_69].setVisible
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_9 + 192B].class, MEM[(struct coObject *)histogram_9 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11676_72->vtable, D.11676_72->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11677_73 + 8B], MEM[(const void * *)D.11677_73 + 8B]
	mov	esi, 0	#,
	mov	rdi, r12	#, D.11681
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11679_75].setVisible
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_9 + 384B].class, MEM[(struct coObject *)histogram_9 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11683_79->vtable, D.11683_79->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11684_80 + 8B], MEM[(const void * *)D.11684_80 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.11688
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11686_82].setVisible
.L5:
	mov	rdx, QWORD PTR [rsp+8]	#, %sfp
	cmp	QWORD PTR [rdx], 255	# *thr_value_17,
	ja	.L2	#,
	mov	eax, 4294967295	#,
	mov	QWORD PTR [rdx], rax	# *thr_value_17,
	mov	rax, QWORD PTR [r15+336]	# D.11697, thr_bin_label_11->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.11697_86 + 7B],
	mov	rax, QWORD PTR [r15]	# MEM[(struct coObject *)thr_bin_label_11].class, MEM[(struct coObject *)thr_bin_label_11].class
	mov	rax, QWORD PTR [rax+16]	# D.11699_88->vtable, D.11699_88->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11700_89 + 8B], MEM[(const void * *)D.11700_89 + 8B]
	mov	rdi, r15	#, thr_bin_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11702_91].refresh
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+40]	#, %sfp
	call	ButtonImage_setEnabled	#
.L2:
	mov	rdx, QWORD PTR [rsp]	#, %sfp
	mov	BYTE PTR [rdx+173], 1	# screen_93(D)->need_reload,
	mov	rbx, QWORD PTR [rsp+12696]	#,
	mov	rbp, QWORD PTR [rsp+12704]	#,
	mov	r12, QWORD PTR [rsp+12712]	#,
	mov	r13, QWORD PTR [rsp+12720]	#,
	mov	r14, QWORD PTR [rsp+12728]	#,
	mov	r15, QWORD PTR [rsp+12736]	#,
	add	rsp, 12744	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	button_imgsrc_open, .-button_imgsrc_open
	.globl	button_src_restore
	.type	button_src_restore, @function
button_src_restore:
.LFB108:
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
	mov	QWORD PTR [rsp+8], rsi	# %sfp, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11585, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# imgsrc, *D.11585_2
	mov	r15, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.11585_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.11585_2 + 16B]
	mov	r14, QWORD PTR [rax+24]	# thr_bin_label, MEM[(void * *)D.11585_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.11585_2 + 32B]
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.11585_2 + 40B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	r13, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.11585_2 + 48B]
	mov	r12, QWORD PTR [rax+56]	# hist_cont_wt, MEM[(void * *)D.11585_2 + 56B]
	movzx	eax, BYTE PTR [rbp+157]	#, MEM[(struct Widget *)imgsrc_3].draggable
	mov	BYTE PTR [rsp+2], al	# %sfp,
	movzx	edx, BYTE PTR [r12+159]	#, hist_cont_wt_17->visible
	mov	BYTE PTR [rsp+3], dl	# %sfp,
	movzx	eax, WORD PTR [rbp+96]	#, MEM[(struct Widget *)imgsrc_3].pos.x
	mov	WORD PTR [rsp+4], ax	# %sfp,
	movzx	edx, WORD PTR [rbp+98]	#, MEM[(struct Widget *)imgsrc_3].pos.y
	mov	WORD PTR [rsp+6], dx	# %sfp,
	mov	rdi, rbp	#, imgsrc
	call	delete	#
	movzx	ecx, WORD PTR [rsp+6]	# src_y, %sfp
	movzx	edx, WORD PTR [rsp+4]	# src_x, %sfp
	mov	rsi, QWORD PTR [r15+168]	# imgdst_5->path, imgdst_5->path
	mov	rdi, rbp	#, imgsrc
	call	Image_new	#
	movzx	eax, BYTE PTR [rsp+2]	#, %sfp
	mov	BYTE PTR [rbp+157], al	# MEM[(struct Widget *)imgsrc_3].draggable,
	movzx	edx, WORD PTR [rbp+100]	# D.11591, MEM[(struct Widget *)imgsrc_3].pos.w
	movzx	eax, WORD PTR [rbp+102]	# D.11592, MEM[(struct Widget *)imgsrc_3].pos.h
	cmp	dx, ax	# D.11591, D.11592
	jbe	.L8	#,
	cmp	dx, 1920	# D.11591,
	jbe	.L9	#,
	movzx	edx, dx	# D.11591, D.11591
	cvtsi2sd	xmm1, edx	# tmp112, D.11591
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp114,
	divsd	xmm0, xmm1	# scale, tmp112
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, imgsrc
	call	Widget_scale	#
	jmp	.L9	#
.L8:
	cmp	ax, 600	# D.11592,
	jbe	.L9	#,
	movzx	eax, ax	# D.11592, D.11592
	cvtsi2sd	xmm1, eax	# tmp115, D.11592
	movsd	xmm0, QWORD PTR .LC1[rip]	# tmp117,
	divsd	xmm0, xmm1	# scale, tmp115
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, imgsrc
	call	Widget_scale	#
.L9:
	mov	QWORD PTR [rbx+552], 0	# MEM[(struct Histogram *)histogram_7 + 384B].data,
	mov	QWORD PTR [rbx+360], 0	# MEM[(struct Histogram *)histogram_7 + 192B].data,
	mov	QWORD PTR [rbx+168], 0	# histogram_7->data,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_7].class, MEM[(struct coObject *)histogram_7].class
	mov	rax, QWORD PTR [rax+16]	# D.11606_41->vtable, D.11606_41->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11607_42 + 8B], MEM[(const void * *)D.11607_42 + 8B]
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11609_44].refresh
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_7 + 192B].class, MEM[(struct coObject *)histogram_7 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11612_47->vtable, D.11612_47->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11613_48 + 8B], MEM[(const void * *)D.11613_48 + 8B]
	lea	rdi, [rbx+192]	# tmp125,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11615_50].refresh
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_7 + 384B].class, MEM[(struct coObject *)histogram_7 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11619_54->vtable, D.11619_54->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11620_55 + 8B], MEM[(const void * *)D.11620_55 + 8B]
	lea	rdi, [rbx+384]	# tmp130,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11622_57].refresh
	cmp	BYTE PTR [rsp+3], 0	# %sfp,
	jne	.L10	#,
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)hist_cont_wt_17].class, MEM[(struct coObject *)hist_cont_wt_17].class
	mov	rax, QWORD PTR [rax+16]	# D.11627_60->vtable, D.11627_60->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11628_61 + 8B], MEM[(const void * *)D.11628_61 + 8B]
	mov	esi, 0	#,
	mov	rdi, r12	#, hist_cont_wt
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11630_63].setVisible
.L10:
	cmp	QWORD PTR [r13+0], 255	# *thr_value_15,
	ja	.L11	#,
	mov	edx, 4294967295	#,
	mov	QWORD PTR [r13+0], rdx	# *thr_value_15,
	mov	rax, QWORD PTR [r14+336]	# D.11635, thr_bin_label_9->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.11635_66 + 7B],
	mov	rax, QWORD PTR [r14]	# MEM[(struct coObject *)thr_bin_label_9].class, MEM[(struct coObject *)thr_bin_label_9].class
	mov	rax, QWORD PTR [rax+16]	# D.11637_68->vtable, D.11637_68->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11638_69 + 8B], MEM[(const void * *)D.11638_69 + 8B]
	mov	rdi, r14	#, thr_bin_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11640_71].refresh
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
.L11:
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	mov	BYTE PTR [rax+173], 1	# screen_73(D)->need_reload,
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
.LFE108:
	.size	button_src_restore, .-button_src_restore
	.globl	button_src_to_dest
	.type	button_src_to_dest, @function
button_src_to_dest:
.LFB109:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11580, sender_1(D)->cparam
	mov	r14, QWORD PTR [rax]	# imgsrc, *D.11580_2
	mov	rbx, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.11580_2 + 8B]
	movzx	r12d, BYTE PTR [rbx+157]	# draggable, MEM[(struct Widget *)imgdst_5].draggable
	movzx	r13d, WORD PTR [rbx+96]	# posx, MEM[(struct Widget *)imgdst_5].pos.x
	movzx	r15d, WORD PTR [rbx+98]	# posy, MEM[(struct Widget *)imgdst_5].pos.y
	mov	rdi, rbx	#, imgdst
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, r14	#, imgsrc
	mov	rdi, rbx	#, imgdst
	call	Image_copy	#
	movzx	edx, r15w	# posy, posy
	movzx	esi, r13w	# posx, posx
	mov	rdi, rbx	#, imgdst
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+157], r12b	# MEM[(struct Widget *)imgdst_5].draggable, draggable
	mov	BYTE PTR [rbp+173], 1	# screen_13(D)->need_reload,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	mov	r14, QWORD PTR [rsp+40]	#,
	mov	r15, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	button_src_to_dest, .-button_src_to_dest
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%hd"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"button_brightness_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_brightness_change
	.type	button_brightness_change, @function
button_brightness_change:
.LFB110:
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
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11544, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.11544_2, *D.11544_2
	mov	rdx, QWORD PTR [rdx+88]	#, MEM[(struct Widget *)D.11545_3].surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.11544_2 + 8B], MEM[(void * *)D.11544_2 + 8B]
	mov	r13, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.11547_7].surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.11544_2 + 16B]
	mov	rbx, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.11544_2 + 24B]
	mov	r14, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.11544_2 + 32B]
	mov	r15, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.11544_2 + 40B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L16	#,
	movzx	eax, WORD PTR [rbx]	# D.11551, *img_off_12
	cmp	ax, 250	# D.11551,
	jg	.L15	#,
	add	eax, 2	# tmp97,
	mov	WORD PTR [rbx], ax	# *img_off_12, tmp97
	jmp	.L18	#
.L16:
	movzx	eax, WORD PTR [rbx]	# D.11551, *img_off_12
	cmp	ax, -250	# D.11551,
	jl	.L15	#,
	sub	eax, 2	# tmp98,
	mov	WORD PTR [rbx], ax	# *img_off_12, tmp98
.L18:
	mov	rdi, QWORD PTR [rbp+336]	# tmp100, label_10->text_block.text
	add	rdi, 11	# tmp100,
	movsx	r8d, WORD PTR [rbx]	#, *img_off_12
	mov	ecx, OFFSET FLAT:.LC2	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_10].class, MEM[(struct coObject *)label_10].class
	mov	rax, QWORD PTR [rax+16]	# D.11567_32->vtable, D.11567_32->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11568_33 + 8B], MEM[(const void * *)D.11568_33 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11570_35].refresh
	movzx	ecx, BYTE PTR [r15]	# *allow_of_16, *allow_of_16
	movsx	edx, WORD PTR [rbx]	# *img_off_12, *img_off_12
	movss	xmm0, DWORD PTR [r14]	#, *img_mul_14
	mov	rsi, r13	#, imgdst
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L19	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L19:
	mov	BYTE PTR [r12+173], 1	# screen_45(D)->need_reload,
.L15:
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
.LFE110:
	.size	button_brightness_change, .-button_brightness_change
	.section	.rodata.str1.1
.LC7:
	.string	"%5.2f"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"button_contrast_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_contrast_change
	.type	button_contrast_change, @function
button_contrast_change:
.LFB111:
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
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11510, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.11510_2, *D.11510_2
	mov	rdx, QWORD PTR [rdx+88]	#, MEM[(struct Widget *)D.11511_3].surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.11510_2 + 8B], MEM[(void * *)D.11510_2 + 8B]
	mov	r13, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.11513_7].surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.11510_2 + 16B]
	mov	r14, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.11510_2 + 24B]
	mov	rbx, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.11510_2 + 32B]
	mov	r15, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.11510_2 + 40B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L22	#,
	movss	xmm0, DWORD PTR [rbx]	# D.11517, *img_mul_14
	movss	xmm1, DWORD PTR .LC4[rip]	# tmp93,
	ucomiss	xmm1, xmm0	# tmp93, D.11517
	jbe	.L21	#,
	addss	xmm0, DWORD PTR .LC5[rip]	# tmp94,
	movss	DWORD PTR [rbx], xmm0	# *img_mul_14, tmp94
	jmp	.L25	#
.L22:
	movss	xmm0, DWORD PTR [rbx]	# D.11517, *img_mul_14
	ucomiss	xmm0, DWORD PTR .LC6[rip]	# D.11517,
	jb	.L21	#,
	subss	xmm0, DWORD PTR .LC5[rip]	# tmp96,
	movss	DWORD PTR [rbx], xmm0	# *img_mul_14, tmp96
.L25:
	movss	xmm0, DWORD PTR [rbx]	# tmp98, *img_mul_14
	cvtps2pd	xmm0, xmm0	# tmp98, tmp98
	mov	rdi, QWORD PTR [rbp+336]	# tmp99, label_10->text_block.text
	add	rdi, 11	# tmp99,
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_10].class, MEM[(struct coObject *)label_10].class
	mov	rax, QWORD PTR [rax+16]	# D.11530_28->vtable, D.11530_28->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11531_29 + 8B], MEM[(const void * *)D.11531_29 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11533_31].refresh
	movzx	ecx, BYTE PTR [r15]	# *allow_of_16, *allow_of_16
	movsx	edx, WORD PTR [r14]	# *img_off_12, *img_off_12
	movss	xmm0, DWORD PTR [rbx]	#, *img_mul_14
	mov	rsi, r13	#, imgdst
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L27	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L27:
	mov	BYTE PTR [r12+173], 1	# screen_41(D)->need_reload,
.L21:
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
.LFE111:
	.size	button_contrast_change, .-button_contrast_change
	.section	.rodata.str1.1
.LC9:
	.string	"przepe\305\202nienie"
.LC10:
	.string	"do skrajnych"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"button_overflow_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_overflow_change
	.type	button_overflow_change, @function
button_overflow_change:
.LFB112:
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
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11475, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.11475_3, *D.11475_3
	mov	rdx, QWORD PTR [rdx+88]	#, MEM[(struct Widget *)D.11476_4].surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.11475_3 + 8B], MEM[(void * *)D.11475_3 + 8B]
	mov	r13, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.11478_8].surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.11475_3 + 16B]
	mov	r15, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.11475_3 + 24B]
	mov	r14, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.11475_3 + 32B]
	mov	rbx, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.11475_3 + 40B]
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	je	.L32	#,
	cmp	BYTE PTR [rbx], 0	# *allow_of_17,
	je	.L31	#,
	mov	BYTE PTR [rbx], 0	# *allow_of_17,
	mov	esi, OFFSET FLAT:.LC10	# iftmp.28,
	jmp	.L34	#
.L32:
	cmp	BYTE PTR [rbx], 0	# *allow_of_17,
	jne	.L31	#,
	mov	BYTE PTR [rbx], 1	# *allow_of_17,
	mov	esi, OFFSET FLAT:.LC9	# iftmp.28,
.L34:
	mov	rdi, QWORD PTR [rbp+336]	# tmp90, label_11->text_block.text
	add	rdi, 9	# tmp90,
	call	strcpy	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_11].class, MEM[(struct coObject *)label_11].class
	mov	rax, QWORD PTR [rax+16]	# D.11496_26->vtable, D.11496_26->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11497_27 + 8B], MEM[(const void * *)D.11497_27 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11499_29].refresh
	movzx	ecx, BYTE PTR [rbx]	# *allow_of_17, *allow_of_17
	movsx	edx, WORD PTR [r15]	# *img_off_13, *img_off_13
	movss	xmm0, DWORD PTR [r14]	#, *img_mul_15
	mov	rsi, r13	#, imgdst
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L35	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L35:
	mov	BYTE PTR [r12+173], 1	# screen_39(D)->need_reload,
.L31:
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
.LFE112:
	.size	button_overflow_change, .-button_overflow_change
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"button_brightness_reset() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_brightness_reset
	.type	button_brightness_reset, @function
button_brightness_reset:
.LFB113:
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
	mov	QWORD PTR [rsp+8], rsi	# %sfp, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11436, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.11436_3, *D.11436_3
	mov	rdi, QWORD PTR [rdx+88]	# imgsrc, MEM[(struct Widget *)D.11437_4].surf
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.11436_3 + 8B], MEM[(void * *)D.11436_3 + 8B]
	mov	rsi, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.11439_8].surf
	mov	r12, QWORD PTR [rax+16]	# label_off, MEM[(void * *)D.11436_3 + 16B]
	mov	rbp, QWORD PTR [rax+24]	# label_mul, MEM[(void * *)D.11436_3 + 24B]
	mov	rbx, QWORD PTR [rax+32]	# label_of, MEM[(void * *)D.11436_3 + 32B]
	mov	r14, QWORD PTR [rax+40]	# img_off, MEM[(void * *)D.11436_3 + 40B]
	mov	r13, QWORD PTR [rax+48]	# img_mul, MEM[(void * *)D.11436_3 + 48B]
	mov	r15, QWORD PTR [rax+56]	# allow_of, MEM[(void * *)D.11436_3 + 56B]
	mov	WORD PTR [r14], 0	# *img_off_17,
	mov	DWORD PTR [r13+0], 0x3f800000	# *img_mul_19,
	mov	BYTE PTR [r15], 0	# *allow_of_21,
	movsx	edx, WORD PTR [r14]	# *img_off_17, *img_off_17
	mov	ecx, 0	#,
	movss	xmm0, DWORD PTR [r13+0]	#, *img_mul_19
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L38	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L38:
	mov	rdi, QWORD PTR [r12+336]	# tmp108, label_off_11->text_block.text
	add	rdi, 11	# tmp108,
	movsx	r8d, WORD PTR [r14]	#, *img_off_17
	mov	ecx, OFFSET FLAT:.LC2	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	movss	xmm0, DWORD PTR [r13+0]	# tmp110, *img_mul_19
	cvtps2pd	xmm0, xmm0	# tmp110, tmp110
	mov	rdi, QWORD PTR [rbp+336]	# tmp111, label_mul_13->text_block.text
	add	rdi, 11	# tmp111,
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	cmp	BYTE PTR [r15], 0	# *allow_of_21,
	mov	eax, OFFSET FLAT:.LC9	# tmp128,
	mov	esi, OFFSET FLAT:.LC10	# tmp127,
	cmovne	rsi, rax	# tmp127,, iftmp.27, tmp128
	mov	rdi, QWORD PTR [rbx+336]	# tmp113, label_of_15->text_block.text
	add	rdi, 9	# tmp113,
	call	strcpy	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)label_off_11].class, MEM[(struct coObject *)label_off_11].class
	mov	rax, QWORD PTR [rax+16]	# D.11460_43->vtable, D.11460_43->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11461_44 + 8B], MEM[(const void * *)D.11461_44 + 8B]
	mov	rdi, r12	#, label_off
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11463_46].refresh
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_mul_13].class, MEM[(struct coObject *)label_mul_13].class
	mov	rax, QWORD PTR [rax+16]	# D.11465_48->vtable, D.11465_48->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11466_49 + 8B], MEM[(const void * *)D.11466_49 + 8B]
	mov	rdi, rbp	#, label_mul
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11468_51].refresh
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)label_of_15].class, MEM[(struct coObject *)label_of_15].class
	mov	rax, QWORD PTR [rax+16]	# D.11470_53->vtable, D.11470_53->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11471_54 + 8B], MEM[(const void * *)D.11471_54 + 8B]
	mov	rdi, rbx	#, label_of
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11473_56].refresh
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	mov	BYTE PTR [rax+173], 1	# screen_58(D)->need_reload,
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
.LFE113:
	.size	button_brightness_reset, .-button_brightness_reset
	.globl	button_dest_to_src
	.type	button_dest_to_src, @function
button_dest_to_src:
.LFB114:
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
	mov	QWORD PTR [rsp+40], rsi	# %sfp, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11396, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# imgsrc, *D.11396_2
	mov	rdx, QWORD PTR [rax+8]	#, MEM[(void * *)D.11396_2 + 8B]
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.11396_2 + 16B]
	mov	r12, QWORD PTR [rax+24]	# thr_bin_label, MEM[(void * *)D.11396_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.11396_2 + 32B]
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.11396_2 + 40B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	r14, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.11396_2 + 48B]
	movzx	eax, WORD PTR [rbp+96]	#, MEM[(struct Widget *)imgsrc_3].pos.x
	mov	WORD PTR [rsp+36], ax	# %sfp,
	movzx	edx, WORD PTR [rbp+98]	#, MEM[(struct Widget *)imgsrc_3].pos.y
	mov	WORD PTR [rsp+38], dx	# %sfp,
	movzx	r15d, BYTE PTR [rbp+157]	# draggable, MEM[(struct Widget *)imgsrc_3].draggable
	movzx	r13d, BYTE PTR [rbx+159]	# hist_vis, MEM[(struct Widget *)histogram_7].visible
	mov	rdi, rbp	#, imgsrc
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, QWORD PTR [rsp+8]	#, %sfp
	mov	rdi, rbp	#, imgsrc
	call	Image_copy	#
	movzx	edx, WORD PTR [rsp+38]	# posy, %sfp
	movzx	esi, WORD PTR [rsp+36]	# posx, %sfp
	mov	rdi, rbp	#, imgsrc
	call	Widget_setPosition	#
	mov	BYTE PTR [rbp+157], r15b	# MEM[(struct Widget *)imgsrc_3].draggable, draggable
	mov	eax, 4294967295	#,
	mov	QWORD PTR [r14], rax	# *thr_value_15,
	mov	QWORD PTR [rbx+552], 0	# MEM[(struct Histogram *)histogram_7 + 384B].data,
	mov	QWORD PTR [rbx+360], 0	# MEM[(struct Histogram *)histogram_7 + 192B].data,
	mov	QWORD PTR [rbx+168], 0	# histogram_7->data,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_7].class, MEM[(struct coObject *)histogram_7].class
	mov	rax, QWORD PTR [rax+16]	# D.11405_28->vtable, D.11405_28->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11406_29 + 8B], MEM[(const void * *)D.11406_29 + 8B]
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11408_31].refresh
	lea	r14, [rbx+192]	# D.11416,
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_7 + 192B].class, MEM[(struct coObject *)histogram_7 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11411_34->vtable, D.11411_34->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11412_35 + 8B], MEM[(const void * *)D.11412_35 + 8B]
	mov	rdi, r14	#, D.11416
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11414_37].refresh
	lea	rbp, [rbx+384]	# D.11423,
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_7 + 384B].class, MEM[(struct coObject *)histogram_7 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11418_41->vtable, D.11418_41->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11419_42 + 8B], MEM[(const void * *)D.11419_42 + 8B]
	mov	rdi, rbp	#, D.11423
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11421_44].refresh
	test	r13b, r13b	# hist_vis
	jne	.L43	#,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_7].class, MEM[(struct coObject *)histogram_7].class
	mov	rax, QWORD PTR [rax+16]	# D.11405_47->vtable, D.11405_47->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11406_48 + 8B], MEM[(const void * *)D.11406_48 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11408_50].setVisible
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_7 + 192B].class, MEM[(struct coObject *)histogram_7 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11411_53->vtable, D.11411_53->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11412_54 + 8B], MEM[(const void * *)D.11412_54 + 8B]
	mov	esi, 0	#,
	mov	rdi, r14	#, D.11416
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11414_56].setVisible
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_7 + 384B].class, MEM[(struct coObject *)histogram_7 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11418_60->vtable, D.11418_60->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11419_61 + 8B], MEM[(const void * *)D.11419_61 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.11423
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11421_63].setVisible
.L43:
	mov	rax, QWORD PTR [r12+336]	# D.11429, thr_bin_label_9->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.11429_66 + 7B],
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)thr_bin_label_9].class, MEM[(struct coObject *)thr_bin_label_9].class
	mov	rax, QWORD PTR [rax+16]	# D.11431_68->vtable, D.11431_68->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11432_69 + 8B], MEM[(const void * *)D.11432_69 + 8B]
	mov	rdi, r12	#, thr_bin_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11434_71].refresh
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	rdx, QWORD PTR [rsp+40]	#, %sfp
	mov	BYTE PTR [rdx+173], 1	# screen_73(D)->need_reload,
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
.LFE114:
	.size	button_dest_to_src, .-button_dest_to_src
	.section	.rodata.str1.1
.LC14:
	.string	"wb"
.LC15:
	.string	"img/00_file_src.bmp"
	.text
	.globl	button_src_save
	.type	button_src_save, @function
button_src_save:
.LFB115:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+120]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgsrc, *D.11393_2
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	edi, OFFSET FLAT:.LC15	#,
	call	SDL_RWFromFile	#
	mov	rdi, QWORD PTR [rbx+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	edx, 1	#,
	mov	rsi, rax	#, D.11394
	call	SDL_SaveBMP_RW	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	button_src_save, .-button_src_save
	.section	.rodata.str1.1
.LC16:
	.string	"img/00_file_dest.bmp"
	.text
	.globl	button_dest_save
	.type	button_dest_save, @function
button_dest_save:
.LFB116:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+120]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgdst, *D.11390_2
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	edi, OFFSET FLAT:.LC16	#,
	call	SDL_RWFromFile	#
	mov	rdi, QWORD PTR [rbx+88]	# imgdst_3->surf, imgdst_3->surf
	mov	edx, 1	#,
	mov	rsi, rax	#, D.11391
	call	SDL_SaveBMP_RW	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	button_dest_save, .-button_dest_save
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"button_destaturize_std() >> Error in GToolsPoint_desaturize_std() [exited with code %d]\n"
	.text
	.globl	button_destaturize_std
	.type	button_destaturize_std, @function
button_destaturize_std:
.LFB117:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11382, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.11382_2 + 8B], MEM[(void * *)D.11382_2 + 8B]
	mov	rsi, QWORD PTR [rdx+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rax, QWORD PTR [rax]	# *D.11382_2, *D.11382_2
	mov	rdi, QWORD PTR [rax+88]	# imgsrc_3->surf, imgsrc_3->surf
	call	GToolsPoint_desaturize_std	#
	test	al, al	# s
	je	.L50	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC17	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L49	#
.L50:
	mov	BYTE PTR [rbx+173], 1	# screen_11(D)->need_reload,
.L49:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	button_destaturize_std, .-button_destaturize_std
	.section	.rodata.str1.1
.LC18:
	.string	"Otsu"
.LC19:
	.string	"tom3k.info"
	.text
	.globl	button_bin_algo_toggle
	.type	button_bin_algo_toggle, @function
button_bin_algo_toggle:
.LFB118:
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
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11356, sender_2(D)->cparam
	mov	r14, QWORD PTR [rax]	# thr_bin_label, *D.11356_3
	mov	rbx, QWORD PTR [rax+8]	# thr_bin_algo_label, MEM[(void * *)D.11356_3 + 8B]
	mov	r13, QWORD PTR [rax+16]	# thr_up_butimg, MEM[(void * *)D.11356_3 + 16B]
	mov	r12, QWORD PTR [rax+24]	# thr_dn_butimg, MEM[(void * *)D.11356_3 + 24B]
	mov	rdx, QWORD PTR [rax+32]	# t_algo, MEM[(void * *)D.11356_3 + 32B]
	mov	rax, QWORD PTR [rax+40]	# thr_value, MEM[(void * *)D.11356_3 + 40B]
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	je	.L54	#,
	cmp	BYTE PTR [rdx], 0	# *t_algo_12,
	jne	.L53	#,
	mov	BYTE PTR [rdx], 1	# *t_algo_12,
	jmp	.L56	#
.L54:
	cmp	BYTE PTR [rdx], 0	# *t_algo_12,
	.p2align 4,,2
	je	.L53	#,
	mov	BYTE PTR [rdx], 0	# *t_algo_12,
.L56:
	mov	ecx, 4294967295	#,
	mov	QWORD PTR [rax], rcx	# *thr_value_14,
	cmp	BYTE PTR [rdx], 0	# *t_algo_12,
	mov	eax, OFFSET FLAT:.LC18	# tmp87,
	mov	ecx, OFFSET FLAT:.LC19	# tmp86,
	cmovne	rcx, rax	# tmp86,, iftmp.24, tmp87
	mov	rdi, QWORD PTR [rbx+336]	# tmp80, thr_bin_algo_label_6->text_block.text
	add	rdi, 10	# tmp80,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)thr_bin_algo_label_6].class, MEM[(struct coObject *)thr_bin_algo_label_6].class
	mov	rax, QWORD PTR [rax+16]	# D.11374_23->vtable, D.11374_23->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11375_24 + 8B], MEM[(const void * *)D.11375_24 + 8B]
	mov	rdi, rbx	#, thr_bin_algo_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11377_26].refresh
	mov	rax, QWORD PTR [r14+336]	# D.11379, thr_bin_label_4->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.11379_28 + 7B],
	mov	esi, 0	#,
	mov	rdi, r13	#, thr_up_butimg
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, r12	#, thr_dn_butimg
	call	ButtonImage_setEnabled	#
	mov	BYTE PTR [rbp+173], 1	# screen_30(D)->need_reload,
.L53:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	button_bin_algo_toggle, .-button_bin_algo_toggle
	.section	.rodata.str1.1
.LC20:
	.string	"%5s"
	.text
	.globl	button_used_hist_toggle
	.type	button_used_hist_toggle, @function
button_used_hist_toggle:
.LFB119:
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
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11323, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# lab_used_hist, *D.11323_2
	mov	rbx, QWORD PTR [rax+8]	# thr_bin_label, MEM[(void * *)D.11323_2 + 8B]
	mov	r14, QWORD PTR [rax+16]	# thr_up_butimg, MEM[(void * *)D.11323_2 + 16B]
	mov	r13, QWORD PTR [rax+24]	# thr_dn_butimg, MEM[(void * *)D.11323_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	# num_hist, MEM[(void * *)D.11323_2 + 32B]
	mov	rcx, QWORD PTR [rax+40]	# hist_names, MEM[(void * *)D.11323_2 + 40B]
	mov	rax, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.11323_2 + 48B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L61	#,
	movzx	esi, BYTE PTR [rdx]	# D.11327, *num_hist_11
	test	sil, sil	# D.11327
	je	.L60	#,
	sub	esi, 1	# tmp90,
	mov	BYTE PTR [rdx], sil	# *num_hist_11, tmp90
	jmp	.L63	#
.L61:
	movzx	esi, BYTE PTR [rdx]	# D.11327, *num_hist_11
	cmp	sil, 1	# D.11327,
	ja	.L60	#,
	add	esi, 1	# tmp91,
	mov	BYTE PTR [rdx], sil	# *num_hist_11, tmp91
.L63:
	mov	esi, 4294967295	#,
	mov	QWORD PTR [rax], rsi	# *thr_value_15,
	movzx	eax, BYTE PTR [rdx]	# *num_hist_11, *num_hist_11
	mov	rdi, QWORD PTR [rbp+336]	# tmp94, lab_used_hist_3->text_block.text
	add	rdi, 18	# tmp94,
	mov	r8, QWORD PTR [rcx+rax*8]	#, *D.11339_26
	mov	ecx, OFFSET FLAT:.LC20	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)lab_used_hist_3].class, MEM[(struct coObject *)lab_used_hist_3].class
	mov	rax, QWORD PTR [rax+16]	# D.11343_30->vtable, D.11343_30->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11344_31 + 8B], MEM[(const void * *)D.11344_31 + 8B]
	mov	rdi, rbp	#, lab_used_hist
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11346_33].refresh
	mov	rax, QWORD PTR [rbx+336]	# D.11348, thr_bin_label_5->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.11348_35 + 7B],
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)thr_bin_label_5].class, MEM[(struct coObject *)thr_bin_label_5].class
	mov	rax, QWORD PTR [rax+16]	# D.11350_37->vtable, D.11350_37->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11351_38 + 8B], MEM[(const void * *)D.11351_38 + 8B]
	mov	rdi, rbx	#, thr_bin_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11353_40].refresh
	mov	esi, 0	#,
	mov	rdi, r14	#, thr_up_butimg
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, r13	#, thr_dn_butimg
	call	ButtonImage_setEnabled	#
	mov	BYTE PTR [r12+173], 1	# screen_42(D)->need_reload,
.L60:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	button_used_hist_toggle, .-button_used_hist_toggle
	.section	.rodata.str1.1
.LC21:
	.string	"%lu"
	.text
	.globl	button_threshold_change
	.type	button_threshold_change, @function
button_threshold_change:
.LFB120:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rax, QWORD PTR [rdi+120]	# D.11299, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# thr_bin_label, *D.11299_2
	mov	rdx, QWORD PTR [rax+8]	# thr_value, MEM[(void * *)D.11299_2 + 8B]
	mov	rax, QWORD PTR [rdx]	# D.11300, *thr_value_5
	cmp	rax, 255	# D.11300,
	ja	.L65	#,
	mov	rbp, rsi	# screen, screen
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L67	#,
	cmp	rax, 254	# D.11300,
	ja	.L65	#,
	add	rax, 1	# tmp75,
	mov	QWORD PTR [rdx], rax	# *thr_value_5, tmp75
	jmp	.L68	#
.L67:
	test	rax, rax	# D.11300
	je	.L65	#,
	sub	rax, 1	# tmp76,
	mov	QWORD PTR [rdx], rax	# *thr_value_5, tmp76
.L68:
	mov	rdi, QWORD PTR [rbx+336]	# tmp77, thr_bin_label_3->text_block.text
	add	rdi, 7	# tmp77,
	mov	r8, QWORD PTR [rdx]	#, *thr_value_5
	mov	ecx, OFFSET FLAT:.LC21	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)thr_bin_label_3].class, MEM[(struct coObject *)thr_bin_label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.11317_17->vtable, D.11317_17->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11318_18 + 8B], MEM[(const void * *)D.11318_18 + 8B]
	mov	rdi, rbx	#, thr_bin_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11320_20].refresh
	mov	BYTE PTR [rbp+173], 1	# screen_22(D)->need_reload,
.L65:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE120:
	.size	button_threshold_change, .-button_threshold_change
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"button_create_histograms_click() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n"
	.text
	.globl	button_create_histograms_click
	.type	button_create_histograms_click, @function
button_create_histograms_click:
.LFB121:
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
	mov	r13, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11263, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.11263_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.11263_2 + 16B]
	mov	r12, QWORD PTR [rax+24]	# hist_cont_wt, MEM[(void * *)D.11263_2 + 24B]
	mov	rax, QWORD PTR [rax]	# *D.11263_2, *D.11263_2
	mov	rdi, QWORD PTR [rax+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	rsi, rbp	#, colors
	call	GToolsPoint_create_histograms	#
	test	al, al	# s
	je	.L71	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC22	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L70	#
.L71:
	mov	rax, QWORD PTR [rbp+0]	# D.11270, *colors_5
	mov	QWORD PTR [rbx+168], rax	# histogram_7->data, D.11270
	mov	rax, QWORD PTR [rbp+8]	# D.11272, MEM[(u32 * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+360], rax	# MEM[(struct Histogram *)histogram_7 + 192B].data, D.11272
	mov	rax, QWORD PTR [rbp+16]	# D.11274, MEM[(u32 * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+552], rax	# MEM[(struct Histogram *)histogram_7 + 384B].data, D.11274
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_7].class, MEM[(struct coObject *)histogram_7].class
	mov	rax, QWORD PTR [rax+16]	# D.11275_19->vtable, D.11275_19->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11276_20 + 8B], MEM[(const void * *)D.11276_20 + 8B]
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11278_22].refresh
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_7 + 192B].class, MEM[(struct coObject *)histogram_7 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11281_25->vtable, D.11281_25->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11282_26 + 8B], MEM[(const void * *)D.11282_26 + 8B]
	lea	rdi, [rbx+192]	# tmp101,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11284_28].refresh
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_7 + 384B].class, MEM[(struct coObject *)histogram_7 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11288_32->vtable, D.11288_32->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11289_33 + 8B], MEM[(const void * *)D.11289_33 + 8B]
	lea	rdi, [rbx+384]	# tmp106,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11291_35].refresh
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)hist_cont_wt_9].class, MEM[(struct coObject *)hist_cont_wt_9].class
	mov	rax, QWORD PTR [rax+16]	# D.11294_38->vtable, D.11294_38->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11295_39 + 8B], MEM[(const void * *)D.11295_39 + 8B]
	mov	esi, 1	#,
	mov	rdi, r12	#, hist_cont_wt
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11297_41].setVisible
	mov	BYTE PTR [r13+173], 1	# screen_43(D)->need_reload,
.L70:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE121:
	.size	button_create_histograms_click, .-button_create_histograms_click
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"button_histograms_equalize() To use this tool, histograms have to be created first.\n"
	.align 8
.LC24:
	.string	"button_histograms_equalize() >> Error in GToolsPoint_histEqualize() [exited with code %d]\n"
	.text
	.globl	button_histograms_equalize
	.type	button_histograms_equalize, @function
button_histograms_equalize:
.LFB122:
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
	mov	rax, QWORD PTR [rdi+120]	# D.11223, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# imgdst, *D.11223_2
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.11223_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.11223_2 + 16B]
	mov	r12, QWORD PTR [rax+24]	# hist_cont_wt, MEM[(void * *)D.11223_2 + 24B]
	cmp	QWORD PTR [rbx+168], 0	# histogram_7->data,
	jne	.L75	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC23	#,
	call	fwrite	#
	jmp	.L74	#
.L75:
	mov	r13, rsi	# screen, screen
	mov	rdi, QWORD PTR [rdx+88]	# imgdst_3->surf, imgdst_3->surf
	mov	rsi, rbp	#, colors
	call	GToolsPoint_histEqualize	#
	test	al, al	# s
	je	.L77	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC24	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L74	#
.L77:
	mov	rax, QWORD PTR [rbp+0]	# D.11233, *colors_5
	mov	QWORD PTR [rbx+168], rax	# histogram_7->data, D.11233
	mov	rax, QWORD PTR [rbp+8]	# D.11235, MEM[(u32 * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+360], rax	# MEM[(struct Histogram *)histogram_7 + 192B].data, D.11235
	mov	rax, QWORD PTR [rbp+16]	# D.11237, MEM[(u32 * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+552], rax	# MEM[(struct Histogram *)histogram_7 + 384B].data, D.11237
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_7].class, MEM[(struct coObject *)histogram_7].class
	mov	rax, QWORD PTR [rax+16]	# D.11238_21->vtable, D.11238_21->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11239_22 + 8B], MEM[(const void * *)D.11239_22 + 8B]
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11241_24].refresh
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_7 + 192B].class, MEM[(struct coObject *)histogram_7 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11244_27->vtable, D.11244_27->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11245_28 + 8B], MEM[(const void * *)D.11245_28 + 8B]
	lea	rdi, [rbx+192]	# tmp102,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11247_30].refresh
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_7 + 384B].class, MEM[(struct coObject *)histogram_7 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11251_34->vtable, D.11251_34->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11252_35 + 8B], MEM[(const void * *)D.11252_35 + 8B]
	lea	rdi, [rbx+384]	# tmp107,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11254_37].refresh
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)hist_cont_wt_9].class, MEM[(struct coObject *)hist_cont_wt_9].class
	mov	rax, QWORD PTR [rax+16]	# D.11257_40->vtable, D.11257_40->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11258_41 + 8B], MEM[(const void * *)D.11258_41 + 8B]
	mov	esi, 1	#,
	mov	rdi, r12	#, hist_cont_wt
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11260_43].setVisible
	mov	BYTE PTR [r13+173], 1	# screen_45(D)->need_reload,
.L74:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE122:
	.size	button_histograms_equalize, .-button_histograms_equalize
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"button_bin_create_histograms() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n"
	.align 8
.LC26:
	.string	"button_bin_create_histograms() >> Error in GToolsPoint_calculate_binary_threshold() [exited with code %d]\n"
	.text
	.globl	button_bin_create_histograms
	.type	button_bin_create_histograms, @function
button_bin_create_histograms:
.LFB123:
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
	mov	QWORD PTR [rsp+24], rsi	# %sfp, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11167, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.11167_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.11167_2 + 16B]
	mov	r13, QWORD PTR [rax+24]	# hist_cont_wt, MEM[(void * *)D.11167_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.11167_2 + 32B]
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rcx, QWORD PTR [rax+40]	#, MEM[(void * *)D.11167_2 + 40B]
	mov	QWORD PTR [rsp+16], rcx	# %sfp,
	mov	r12, QWORD PTR [rax+48]	# thr_bin_label, MEM[(void * *)D.11167_2 + 48B]
	mov	r14, QWORD PTR [rax+56]	# thr_value, MEM[(void * *)D.11167_2 + 56B]
	mov	rdx, QWORD PTR [rax+64]	#, MEM[(void * *)D.11167_2 + 64B]
	mov	QWORD PTR [rsp], rdx	# %sfp,
	mov	r15, QWORD PTR [rax+72]	# t_algo, MEM[(void * *)D.11167_2 + 72B]
	mov	rax, QWORD PTR [rax]	# *D.11167_2, *D.11167_2
	mov	rdi, QWORD PTR [rax+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	rsi, rbp	#, colors
	call	GToolsPoint_create_histograms	#
	test	al, al	# s
	je	.L80	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC25	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L79	#
.L80:
	mov	rax, QWORD PTR [rbp+0]	# D.11174, *colors_5
	mov	QWORD PTR [rbx+168], rax	# histogram_7->data, D.11174
	mov	rax, QWORD PTR [rbp+8]	# D.11176, MEM[(u32 * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+360], rax	# MEM[(struct Histogram *)histogram_7 + 192B].data, D.11176
	mov	rax, QWORD PTR [rbp+16]	# D.11178, MEM[(u32 * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+552], rax	# MEM[(struct Histogram *)histogram_7 + 384B].data, D.11178
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)histogram_7].class, MEM[(struct coObject *)histogram_7].class
	mov	rax, QWORD PTR [rax+16]	# D.11179_31->vtable, D.11179_31->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11180_32 + 8B], MEM[(const void * *)D.11180_32 + 8B]
	mov	rdi, rbx	#, histogram
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11182_34].refresh
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct coObject *)histogram_7 + 192B].class, MEM[(struct coObject *)histogram_7 + 192B].class
	mov	rax, QWORD PTR [rax+16]	# D.11185_37->vtable, D.11185_37->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11186_38 + 8B], MEM[(const void * *)D.11186_38 + 8B]
	lea	rdi, [rbx+192]	# tmp127,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11188_40].refresh
	mov	rax, QWORD PTR [rbx+384]	# MEM[(struct coObject *)histogram_7 + 384B].class, MEM[(struct coObject *)histogram_7 + 384B].class
	mov	rax, QWORD PTR [rax+16]	# D.11192_44->vtable, D.11192_44->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11193_45 + 8B], MEM[(const void * *)D.11193_45 + 8B]
	lea	rdi, [rbx+384]	# tmp132,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11195_47].refresh
	mov	rax, QWORD PTR [r13+0]	# MEM[(struct coObject *)hist_cont_wt_9].class, MEM[(struct coObject *)hist_cont_wt_9].class
	mov	rax, QWORD PTR [rax+16]	# D.11198_50->vtable, D.11198_50->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11199_51 + 8B], MEM[(const void * *)D.11199_51 + 8B]
	mov	esi, 1	#,
	mov	rdi, r13	#, hist_cont_wt
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11201_53].setVisible
	movzx	edx, BYTE PTR [r15]	# *t_algo_21, *t_algo_21
	mov	rcx, QWORD PTR [rsp]	#, %sfp
	movzx	eax, BYTE PTR [rcx]	# *num_hist_19, *num_hist_19
	lea	rax, [rax+rax*2]	# tmp142,
	sal	rax, 6	# tmp143,
	mov	rdi, QWORD PTR [rbx+168+rax]	# D.11208_60->data, D.11208_60->data
	mov	rsi, r14	#, thr_value
	call	GToolsPoint_calculate_binary_threshold	#
	mov	ebx, eax	# s,
	test	al, al	# s
	je	.L82	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC26	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [r12+336]	# D.11212, thr_bin_label_15->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.11212_65 + 7B],
	jmp	.L83	#
.L82:
	mov	rdi, QWORD PTR [r12+336]	# tmp147, thr_bin_label_15->text_block.text
	add	rdi, 7	# tmp147,
	mov	r8, QWORD PTR [r14]	#, *thr_value_17
	mov	ecx, OFFSET FLAT:.LC21	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
.L83:
	test	bl, bl	# s
	sete	bl	#, tmp149
	movzx	ebx, bl	# tmp149, tmp149
	mov	esi, ebx	#, tmp149
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, ebx	#, tmp149
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)thr_bin_label_15].class, MEM[(struct coObject *)thr_bin_label_15].class
	mov	rax, QWORD PTR [rax+16]	# D.11218_74->vtable, D.11218_74->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11219_75 + 8B], MEM[(const void * *)D.11219_75 + 8B]
	mov	rdi, r12	#, thr_bin_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11221_77].refresh
	mov	rax, QWORD PTR [rsp+24]	#, %sfp
	mov	BYTE PTR [rax+173], 1	# screen_79(D)->need_reload,
.L79:
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
.LFE123:
	.size	button_bin_create_histograms, .-button_bin_create_histograms
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"button_threshold_apply() >> Error in GToolsPoint_apply_bin_threshold() [exited with code %d]\n"
	.text
	.globl	button_threshold_apply
	.type	button_threshold_apply, @function
button_threshold_apply:
.LFB124:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11156, sender_1(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.11156_2
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.11156_2 + 8B]
	mov	rax, QWORD PTR [rax+16]	# MEM[(void * *)D.11156_2 + 16B], MEM[(void * *)D.11156_2 + 16B]
	mov	rdx, QWORD PTR [rax]	# D.11157, *thr_value_7
	cmp	rdx, 255	# D.11157,
	ja	.L85	#,
	mov	rsi, QWORD PTR [rsi+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rdi, QWORD PTR [rcx+88]	# imgsrc_3->surf, imgsrc_3->surf
	call	GToolsPoint_apply_bin_threshold	#
	test	al, al	# s
	je	.L87	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC27	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L85	#
.L87:
	mov	BYTE PTR [rbx+173], 1	# screen_15(D)->need_reload,
.L85:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE124:
	.size	button_threshold_apply, .-button_threshold_apply
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"In DESTINATION:\n\tBpp=%d\n\tpitch=%5hu\n\twidth*Bpp=%u\n\twidth=%5hu\n\theight=%5hu\n\trefcount=%d\n"
	.align 8
.LC29:
	.string	"button_dest_negative() >> Error in GToolsPoint_negative() [exited with code %d]\n"
	.text
	.globl	button_dest_negative
	.type	button_dest_negative, @function
button_dest_negative:
.LFB125:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 64
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rax, QWORD PTR [rax]	# *D.11140_2, *D.11140_2
	mov	rbx, QWORD PTR [rax+88]	# surf, MEM[(struct Widget *)D.11141_3].surf
	mov	r9d, DWORD PTR [rbx+16]	# D.11144, surf_4->w
	mov	rax, QWORD PTR [rbx+8]	# surf_4->format, surf_4->format
	movzx	ecx, BYTE PTR [rax+9]	# D.11147, D.11145_9->BytesPerPixel
	movzx	r8d, WORD PTR [rbx+24]	# surf_4->pitch, surf_4->pitch
	mov	eax, DWORD PTR [rbx+84]	# surf_4->refcount, surf_4->refcount
	mov	DWORD PTR [rsp+16], eax	#, surf_4->refcount
	mov	eax, DWORD PTR [rbx+20]	# surf_4->h, surf_4->h
	mov	DWORD PTR [rsp+8], eax	#, surf_4->h
	mov	DWORD PTR [rsp], r9d	#, D.11144
	imul	r9d, ecx	#, D.11147
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, rbx	#, surf
	call	GToolsPoint_negative	#
	test	al, al	# s
	je	.L90	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC29	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L89	#
.L90:
	mov	BYTE PTR [rbp+173], 1	# screen_22(D)->need_reload,
.L89:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE125:
	.size	button_dest_negative, .-button_dest_negative
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"button_dest_splotfilter() >> Error in GToolsSplotFilter_applyFilter() [exited with code %d]\n"
	.text
	.globl	button_dest_splotfilter
	.type	button_dest_splotfilter, @function
button_dest_splotfilter:
.LFB126:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11132, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.11132_2 + 8B], MEM[(void * *)D.11132_2 + 8B]
	mov	rdx, QWORD PTR [rdx+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rcx, QWORD PTR [rax]	# *D.11132_2, *D.11132_2
	mov	rsi, QWORD PTR [rcx+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	rdi, QWORD PTR [rax+16]	# MEM[(void * *)D.11132_2 + 16B], MEM[(void * *)D.11132_2 + 16B]
	call	GToolsSplotFilter_applyFilter	#
	test	al, al	# s
	je	.L94	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC30	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L93	#
.L94:
	mov	BYTE PTR [rbx+173], 1	# screen_13(D)->need_reload,
.L93:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE126:
	.size	button_dest_splotfilter, .-button_dest_splotfilter
	.section	.rodata.str1.1
.LC31:
	.string	"%6.2f"
	.text
	.globl	button_change_filter_weight
	.type	button_change_filter_weight, @function
button_change_filter_weight:
.LFB127:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	r13, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+128]	# sender_2(D)->vparam, sender_2(D)->vparam
	mov	rbp, QWORD PTR [rdx]	# weight_label, *D.11098_3
	mov	rdx, QWORD PTR [rdi+120]	# D.11099, sender_2(D)->cparam
	mov	r12, QWORD PTR [rdx]	# predef_label, *D.11099_5
	mov	rbx, QWORD PTR [rdx+8]	# gtsf, MEM[(void * *)D.11099_5 + 8B]
	movzx	r14d, WORD PTR [rbx+8]	# prev_ind, gtsf_8->predef_filter_ind
	mov	eax, DWORD PTR [rdi+152]	# D.11100, sender_2(D)->id
	test	al, 1	# D.11100,
	je	.L98	#,
	lea	r15d, [rax-1]	# tmp94,
	shr	r15d	# D.11105
	movzx	esi, r15b	# tmp95, D.11105
	mov	rdi, rbx	#, gtsf
	call	GToolsSplotFilter_increaseWeightAt	#
	test	al, al	# D.11107
	je	.L97	#,
	jmp	.L100	#
.L98:
	mov	r15d, eax	# D.11111, D.11100
	shr	r15d	# D.11111
	movzx	esi, r15b	# tmp96, D.11111
	mov	rdi, rbx	#, gtsf
	call	GToolsSplotFilter_decreaseWeightAt	#
	test	al, al	# D.11112
	je	.L97	#,
.L100:
	cmp	r14w, -1	# prev_ind,
	je	.L101	#,
	mov	rax, QWORD PTR [r12+336]	# predef_label_6->text_block.text, predef_label_6->text_block.text
	mov	DWORD PTR [rax], 977556563	#* predef_label_6->text_block.text,
	mov	WORD PTR [rax+4], 32	#,
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)predef_label_6].class, MEM[(struct coObject *)predef_label_6].class
	mov	rax, QWORD PTR [rax+16]	# D.11118_24->vtable, D.11118_24->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11119_25 + 8B], MEM[(const void * *)D.11119_25 + 8B]
	mov	rdi, r12	#, predef_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11121_27].refresh
.L101:
	movzx	r15d, r15b	# w, w
	movss	xmm0, DWORD PTR [rbx+12+r15*4]	# tmp104, gtsf_8->weight
	cvtps2pd	xmm0, xmm0	# tmp104, tmp104
	mov	rdi, QWORD PTR [rbp+336]	# weight_label_4->text_block.text, weight_label_4->text_block.text
	mov	r8d, OFFSET FLAT:.LC31	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 7	#,
	mov	eax, 1	#,
	call	__snprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)weight_label_4].class, MEM[(struct coObject *)weight_label_4].class
	mov	rax, QWORD PTR [rax+16]	# D.11126_33->vtable, D.11126_33->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11127_34 + 8B], MEM[(const void * *)D.11127_34 + 8B]
	mov	rdi, rbp	#, weight_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11129_36].refresh
	mov	BYTE PTR [r13+173], 1	# screen_38(D)->need_reload,
.L97:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	mov	r14, QWORD PTR [rsp+40]	#,
	mov	r15, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE127:
	.size	button_change_filter_weight, .-button_change_filter_weight
	.section	.rodata.str1.1
.LC32:
	.string	"%s"
	.text
	.globl	button_change_filter_predef
	.type	button_change_filter_predef, @function
button_change_filter_predef:
.LFB128:
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
	mov	r14, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11064, sender_2(D)->cparam
	mov	rbp, QWORD PTR [rax]	# predef_label, *D.11064_3
	mov	r12, QWORD PTR [rax+8]	# gtsf, MEM[(void * *)D.11064_3 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# weight_label, MEM[(void * *)D.11064_3 + 16B]
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	je	.L104	#,
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_decreaseFilterInd	#
	test	al, al	# D.11068
	jne	.L106	#,
	.p2align 4,,3
	jmp	.L103	#
.L104:
	mov	rdi, r12	#, gtsf
	.p2align 4,,6
	call	GToolsSplotFilter_increaseFilterInd	#
	test	al, al	# D.11072
	.p2align 4,,3
	je	.L103	#,
.L106:
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_getFilterName	#
	mov	rdi, QWORD PTR [rbp+336]	# tmp118, predef_label_4->text_block.text
	add	rdi, 5	# tmp118,
	mov	rcx, rax	#, D.11075
	mov	edx, OFFSET FLAT:.LC32	#,
	mov	esi, 32	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)predef_label_4].class, MEM[(struct coObject *)predef_label_4].class
	mov	rax, QWORD PTR [rax+16]	# D.11078_15->vtable, D.11078_15->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11079_16 + 8B], MEM[(const void * *)D.11079_16 + 8B]
	mov	rdi, rbp	#, predef_label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11081_18].refresh
	mov	ebp, 0	# ivtmp.107,
	mov	r13, -1	# tmp130,
.L107:
	movss	xmm0, DWORD PTR [r12+12+rbp]	# tmp124, MEM[base: gtsf_6, index: ivtmp.107_65, offset: 12B]
	cvtps2pd	xmm0, xmm0	# tmp124, tmp124
	mov	rdi, QWORD PTR [rbx+336]	# MEM[base: D.11088_26, offset: 336B], MEM[base: D.11088_26, offset: 336B]
	mov	r8d, OFFSET FLAT:.LC31	#,
	mov	rcx, r13	#, tmp130
	mov	edx, 1	#,
	mov	esi, 7	#,
	mov	eax, 1	#,
	call	__snprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[base: D.11088_26, offset: 0B], MEM[base: D.11088_26, offset: 0B]
	mov	rax, QWORD PTR [rax+16]	# D.11091_31->vtable, D.11091_31->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11092_32 + 8B], MEM[(const void * *)D.11092_32 + 8B]
	mov	rdi, rbx	#, ivtmp.111
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11094_34].refresh
	add	rbp, 4	# ivtmp.107,
	add	rbx, 392	# ivtmp.111,
	cmp	rbp, 36	# ivtmp.107,
	jne	.L107	#,
	mov	BYTE PTR [r14+173], 1	# screen_40(D)->need_reload,
.L103:
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
.LFE128:
	.size	button_change_filter_predef, .-button_change_filter_predef
	.globl	button_view_click
	.type	button_view_click, @function
button_view_click:
.LFB129:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rax, QWORD PTR [rdi+128]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# D.11051, *D.11050_2
	test	rbx, rbx	# D.11051
	je	.L110	#,
	mov	r12, rsi	# screen, screen
	cmp	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)D.11051_3].visible,
	sete	bpl	#, tmp71
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)D.11051_3].class, MEM[(struct coObject *)D.11051_3].class
	mov	rax, QWORD PTR [rax+16]	# D.11056_9->vtable, D.11056_9->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11057_10 + 8B], MEM[(const void * *)D.11057_10 + 8B]
	movzx	esi, bpl	# D.11055, tmp71
	mov	rdi, rbx	#, D.11051
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.11059_12].setVisible
	test	bpl, bpl	# tmp71
	je	.L112	#,
	mov	QWORD PTR [r12+56], rbx	# screen_15(D)->widget_ontop, D.11051
.L112:
	mov	BYTE PTR [r12+173], 1	# screen_15(D)->need_reload,
.L110:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE129:
	.size	button_view_click, .-button_view_click
	.section	.rodata.str1.1
.LC33:
	.string	"%3hu"
	.text
	.globl	button_change_strelem_size
	.type	button_change_strelem_size, @function
button_change_strelem_size:
.LFB130:
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
	mov	rbx, rdi	# sender, sender
	mov	r13, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# sender_2(D)->vparam, sender_2(D)->vparam
	mov	r12, QWORD PTR [rax]	# label, *D.11020_3
	mov	rax, QWORD PTR [rdi+120]	# sender_2(D)->cparam, sender_2(D)->cparam
	mov	rbp, QWORD PTR [rax]	# pdb, *D.11021_5
	mov	eax, DWORD PTR [rdi+152]	# sender_2(D)->id, sender_2(D)->id
	cmp	eax, 1	# sender_2(D)->id,
	je	.L117	#,
	cmp	eax, 1	# sender_2(D)->id,
	jb	.L116	#,
	cmp	eax, 2	# sender_2(D)->id,
	je	.L118	#,
	cmp	eax, 3	# sender_2(D)->id,
	.p2align 4,,2
	jne	.L114	#,
	.p2align 4,,5
	jmp	.L119	#
.L116:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_increaseActY	#
	cmp	BYTE PTR [rbp+161], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	jne	.L120	#,
	jmp	.L114	#
.L117:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_decreaseActY	#
	cmp	BYTE PTR [rbp+161], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	jne	.L120	#,
	jmp	.L114	#
.L118:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_increaseActX	#
	cmp	BYTE PTR [rbp+161], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	jne	.L120	#,
	jmp	.L114	#
.L119:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_decreaseActX	#
	cmp	BYTE PTR [rbp+161], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	je	.L114	#,
.L120:
	cmp	DWORD PTR [rbx+152], 1	# sender_2(D)->id,
	ja	.L121	#,
	movzx	r9d, WORD PTR [rbp+220]	# iftmp.17, pdb_6->actY
	jmp	.L122	#
.L121:
	movzx	r9d, WORD PTR [rbp+218]	# iftmp.17, pdb_6->actX
.L122:
	mov	rdi, QWORD PTR [r12+336]	# label_4->text_block.text, label_4->text_block.text
	mov	r8d, OFFSET FLAT:.LC33	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 4	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)label_4].class, MEM[(struct coObject *)label_4].class
	mov	rax, QWORD PTR [rax+16]	# D.11040_23->vtable, D.11040_23->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.11041_24 + 8B], MEM[(const void * *)D.11041_24 + 8B]
	mov	rdi, r12	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.11043_26].refresh
	mov	BYTE PTR [r13+173], 1	# screen_28(D)->need_reload,
.L114:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE130:
	.size	button_change_strelem_size, .-button_change_strelem_size
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"button_dilate_click: GToolsMorph_dilate() exited with error: %d\n"
	.text
	.globl	button_dilate_click
	.type	button_dilate_click, @function
button_dilate_click:
.LFB131:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.11007, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.11007_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.11007_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	jne	.L125	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.11007_3 + 16B]
.L125:
	mov	rsi, QWORD PTR [rsi+88]	# imgdst_6->surf, imgdst_6->surf
	mov	rdi, QWORD PTR [rcx+88]	# imgsrc_4->surf, imgsrc_4->surf
	call	GToolsMorph_dilate	#
	test	al, al	# s
	je	.L126	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC34	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L124	#
.L126:
	mov	BYTE PTR [rbx+173], 1	# screen_17(D)->need_reload,
.L124:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE131:
	.size	button_dilate_click, .-button_dilate_click
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"button_erode_click: GToolsMorph_erode() exited with error: %d\n"
	.text
	.globl	button_erode_click
	.type	button_erode_click, @function
button_erode_click:
.LFB132:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.10994, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10994_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10994_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	jne	.L131	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.10994_3 + 16B]
.L131:
	mov	rsi, QWORD PTR [rsi+88]	# imgdst_6->surf, imgdst_6->surf
	mov	rdi, QWORD PTR [rcx+88]	# imgsrc_4->surf, imgsrc_4->surf
	call	GToolsMorph_erode	#
	test	al, al	# s
	je	.L132	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L130	#
.L132:
	mov	BYTE PTR [rbx+173], 1	# screen_17(D)->need_reload,
.L130:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE132:
	.size	button_erode_click, .-button_erode_click
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"button_morph_open_click: GToolsMorph_open() exited with error: %d\n"
	.text
	.globl	button_morph_open_click
	.type	button_morph_open_click, @function
button_morph_open_click:
.LFB133:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.10981, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10981_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10981_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	jne	.L137	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.10981_3 + 16B]
.L137:
	mov	rsi, QWORD PTR [rsi+88]	# imgdst_6->surf, imgdst_6->surf
	mov	rdi, QWORD PTR [rcx+88]	# imgsrc_4->surf, imgsrc_4->surf
	call	GToolsMorph_open	#
	test	al, al	# s
	je	.L138	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L136	#
.L138:
	mov	BYTE PTR [rbx+173], 1	# screen_17(D)->need_reload,
.L136:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE133:
	.size	button_morph_open_click, .-button_morph_open_click
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"button_morph_close_click: GToolsMorph_close() exited with error: %d\n"
	.text
	.globl	button_morph_close_click
	.type	button_morph_close_click, @function
button_morph_close_click:
.LFB134:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.10968, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10968_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10968_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	jne	.L143	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.10968_3 + 16B]
.L143:
	mov	rsi, QWORD PTR [rsi+88]	# imgdst_6->surf, imgdst_6->surf
	mov	rdi, QWORD PTR [rcx+88]	# imgsrc_4->surf, imgsrc_4->surf
	call	GToolsMorph_close	#
	test	al, al	# s
	je	.L144	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC37	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L142	#
.L144:
	mov	BYTE PTR [rbx+173], 1	# screen_17(D)->need_reload,
.L142:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE134:
	.size	button_morph_close_click, .-button_morph_close_click
	.section	.rodata.str1.1
.LC38:
	.string	"%5hu"
	.text
	.globl	button_change_reconst_limit
	.type	button_change_reconst_limit, @function
button_change_reconst_limit:
.LFB135:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10946, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10946_2
	mov	rax, QWORD PTR [rax+8]	# limit, MEM[(void * *)D.10946_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L149	#,
	movzx	edx, WORD PTR [rax]	# D.10950, *limit_5
	cmp	dx, 9999	# D.10950,
	ja	.L148	#,
	add	edx, 5	# tmp76,
	mov	WORD PTR [rax], dx	# *limit_5, tmp76
	jmp	.L151	#
.L149:
	movzx	edx, WORD PTR [rax]	# D.10950, *limit_5
	cmp	dx, 5	# D.10950,
	jbe	.L148	#,
	sub	edx, 5	# tmp77,
	mov	WORD PTR [rax], dx	# *limit_5, tmp77
.L151:
	mov	rdi, QWORD PTR [rbx+336]	# label_3->text_block.text, label_3->text_block.text
	movzx	r8d, WORD PTR [rax]	#, *limit_5
	mov	ecx, OFFSET FLAT:.LC38	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10962_16->vtable, D.10962_16->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10963_17 + 8B], MEM[(const void * *)D.10963_17 + 8B]
	mov	rdi, rbx	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10965_19].refresh
	mov	BYTE PTR [rbp+173], 1	# screen_21(D)->need_reload,
.L148:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE135:
	.size	button_change_reconst_limit, .-button_change_reconst_limit
	.section	.rodata.str1.1
.LC39:
	.string	"GraphicsCallbacks.c"
	.section	.rodata.str1.8
	.align 8
.LC40:
	.string	"button_reconstruction_marker_open() Failed to load image '%s' [invisible]\n"
	.align 8
.LC41:
	.string	"button_reconstruction_marker_open() Marker and mask image format mismatch.\n"
	.text
	.globl	button_reconstruction_marker_open
	.type	button_reconstruction_marker_open, @function
button_reconstruction_marker_open:
.LFB136:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 12696	#,
	.cfi_def_cfa_offset 12704
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# sender, sender
	mov	r13, rsi	# screen, screen
	mov	rsi, QWORD PTR IMAGE_SUPPORTED_FILES[rip]	#, IMAGE_SUPPORTED_FILES
	mov	rdi, rsp	#,
	call	FileBrowsePanel_new	#
	mov	edx, 0	#,
	mov	esi, 1	#,
	mov	rdi, rsp	#,
	call	FileBrowsePanel_show	#
	mov	r12, rax	# sel_path,
	mov	rdi, rsp	#,
	call	delete	#
	test	r12, r12	# sel_path
	je	.L154	#,
	mov	rax, QWORD PTR [rbx+128]	# D.10879, sender_5(D)->vparam
	mov	rbx, QWORD PTR [rax]	# imgdst, *D.10879_6
	mov	r14, QWORD PTR [rax+8]	# imgcmp, MEM[(void * *)D.10879_6 + 8B]
	mov	edx, 909	#,
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rax, QWORD PTR Image_class[rip]	# Image_class, Image_class
	mov	rdi, QWORD PTR [rax]	#, Image_class.7_10->size
	call	wmalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, r12	#, sel_path
	mov	rdi, rax	#, D.10882
	call	Image_new	#
	mov	rbp, rax	# imgtmp,
	mov	edi, 0	# err,
	cmp	BYTE PTR [rax+159], 0	# MEM[(struct Widget *)imgtmp_13].visible,
	jne	.L155	#,
	mov	rcx, r12	#, sel_path
	mov	edx, OFFSET FLAT:.LC40	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edi, 1	# err,
.L155:
	mov	rax, QWORD PTR [rbp+88]	# D.10889, MEM[(struct Widget *)imgtmp_13].surf
	test	rax, rax	# D.10889
	je	.L156	#,
	mov	rdx, QWORD PTR [r14+88]	# D.10891, MEM[(struct Widget *)imgcmp_9].surf
	test	rdx, rdx	# D.10891
	je	.L156	#,
	mov	r9, QWORD PTR [rax+8]	# D.10893, D.10889_18->format
	test	r9, r9	# D.10893
	je	.L156	#,
	mov	rsi, QWORD PTR [rdx+8]	# D.10895, D.10891_19->format
	test	rsi, rsi	# D.10895
	je	.L156	#,
	movzx	ecx, WORD PTR [rdx+24]	#, D.10891_19->pitch
	cmp	WORD PTR [rax+24], cx	# D.10889_18->pitch,
	jne	.L156	#,
	mov	r8, QWORD PTR [rdx+16]	#,
	cmp	QWORD PTR [rax+16], r8	#,
	jne	.L156	#,
	movzx	ecx, BYTE PTR [rsi+9]	#, D.10895_23->BytesPerPixel
	cmp	BYTE PTR [r9+9], cl	# D.10893_21->BytesPerPixel,
	jne	.L156	#,
	mov	r8d, DWORD PTR [rsi+32]	#, D.10895_23->Amask
	cmp	DWORD PTR [r9+32], r8d	# D.10893_21->Amask,
	jne	.L156	#,
	mov	ecx, DWORD PTR [rsi+20]	#, D.10895_23->Rmask
	cmp	DWORD PTR [r9+20], ecx	# D.10893_21->Rmask,
	jne	.L156	#,
	mov	r8, QWORD PTR [rsi+24]	#,
	cmp	QWORD PTR [r9+24], r8	#,
	jne	.L156	#,
	movzx	ecx, BYTE PTR [rsi+17]	#, D.10895_23->Ashift
	cmp	BYTE PTR [r9+17], cl	# D.10893_21->Ashift,
	jne	.L156	#,
	movzx	r8d, WORD PTR [rsi+14]	#,
	cmp	WORD PTR [r9+14], r8w	#,
	jne	.L156	#,
	movzx	ecx, BYTE PTR [rsi+16]	#, D.10895_23->Bshift
	cmp	BYTE PTR [r9+16], cl	# D.10893_21->Bshift,
	jne	.L156	#,
	cmp	QWORD PTR [rax+32], 0	# D.10889_18->pixels,
	je	.L156	#,
	cmp	QWORD PTR [rdx+32], 0	# D.10891_19->pixels,
	jne	.L157	#,
.L156:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 75	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC41	#,
	call	fwrite	#
	jmp	.L158	#
.L157:
	test	dil, dil	# err
	je	.L159	#,
.L158:
	mov	rdi, rbp	#, imgtmp
	.p2align 4,,5
	call	delete	#
	mov	edx, 923	#,
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rdi, rax	#, D.10937
	call	wfree	#
	mov	BYTE PTR [r13+173], 1	# screen_89(D)->need_reload,
	jmp	.L153	#
.L159:
	movzx	r14d, WORD PTR [rbx+96]	# posx, MEM[(struct Widget *)imgdst_7].pos.x
	movzx	r15d, WORD PTR [rbx+98]	# posy, MEM[(struct Widget *)imgdst_7].pos.y
	movzx	r12d, BYTE PTR [rbx+157]	# draggable, MEM[(struct Widget *)imgdst_7].draggable
	mov	rdi, rbx	#, imgdst
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, rbp	#, imgtmp
	mov	rdi, rbx	#, imgdst
	call	Image_copy	#
	movzx	edx, r15w	# posy, posy
	movzx	esi, r14w	# posx, posx
	mov	rdi, rbx	#, imgdst
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+157], r12b	# MEM[(struct Widget *)imgdst_7].draggable, draggable
	mov	rdi, rbp	#, imgtmp
	call	delete	#
	mov	edx, 937	#,
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rdi, rax	#, D.10942
	call	wfree	#
.L154:
	mov	BYTE PTR [r13+173], 1	# screen_89(D)->need_reload,
.L153:
	mov	rbx, QWORD PTR [rsp+12648]	#,
	mov	rbp, QWORD PTR [rsp+12656]	#,
	mov	r12, QWORD PTR [rsp+12664]	#,
	mov	r13, QWORD PTR [rsp+12672]	#,
	mov	r14, QWORD PTR [rsp+12680]	#,
	mov	r15, QWORD PTR [rsp+12688]	#,
	add	rsp, 12696	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE136:
	.size	button_reconstruction_marker_open, .-button_reconstruction_marker_open
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"button_apply_reconstruction_filter() Marker is invisible, cannot continue.\n"
	.align 8
.LC43:
	.string	"button_apply_reconstruction_filter(): Method GToolsMorph_reconstruction exited with error code %d\n"
	.text
	.globl	button_apply_reconstruction_filter
	.type	button_apply_reconstruction_filter, @function
button_apply_reconstruction_filter:
.LFB137:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+128]	# D.10862, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	# imgmask, *D.10862_2
	mov	rcx, QWORD PTR [rax+8]	# imgmarker, MEM[(void * *)D.10862_2 + 8B]
	mov	rax, QWORD PTR [rax+16]	# limit, MEM[(void * *)D.10862_2 + 16B]
	cmp	BYTE PTR [rcx+159], 0	# imgmarker_5->visible,
	jne	.L164	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 75	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC42	#,
	call	fwrite	#
	jmp	.L163	#
.L164:
	mov	rbx, rsi	# screen, screen
	movzx	edx, WORD PTR [rax]	# *limit_7, *limit_7
	mov	rsi, QWORD PTR [rcx+88]	# imgmarker_5->surf, imgmarker_5->surf
	mov	rdi, QWORD PTR [rdi+88]	# imgmask_3->surf, imgmask_3->surf
	call	GToolsMorph_reconstruction	#
	test	al, al	# s
	je	.L166	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC43	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L163	#
.L166:
	mov	BYTE PTR [rbx+173], 1	# screen_17(D)->need_reload,
.L163:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE137:
	.size	button_apply_reconstruction_filter, .-button_apply_reconstruction_filter
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"button_dest_resize(): Failed on assertion Check_surface()\n"
	.align 8
.LC45:
	.string	"button_dest_resize(): At least one dimension of Image is below 10px\n"
	.align 8
.LC46:
	.string	"button_dest_resize(): Refuse to resize above %hu pixels\n"
	.text
	.globl	button_dest_resize
	.type	button_dest_resize, @function
button_dest_resize:
.LFB138:
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
	mov	rax, QWORD PTR [rdi+128]	# sender_3(D)->vparam, sender_3(D)->vparam
	mov	rbx, QWORD PTR [rax]	# wtdst, *D.10825_4
	mov	rax, QWORD PTR [rbx+88]	# D.10828, wtdst_5->surf
	test	rax, rax	# D.10828
	je	.L169	#,
	cmp	QWORD PTR [rax+32], 0	# D.10828_6->pixels,
	je	.L169	#,
	cmp	QWORD PTR [rax+8], 0	# D.10828_6->format,
	jne	.L170	#,
.L169:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 58	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC44	#,
	call	fwrite	#
	jmp	.L168	#
.L170:
	movzx	eax, WORD PTR [rbx+102]	# D.10834, wtdst_5->pos.h
	movzx	r8d, WORD PTR [rbx+100]	# D.10835, wtdst_5->pos.w
	movzx	r12d, WORD PTR [rbx+96]	# D.10836, wtdst_5->pos.x
	movzx	r13d, WORD PTR [rbx+98]	# D.10837, wtdst_5->pos.y
	cmp	r8w, ax	# D.10835, D.10834
	mov	edx, eax	# tmp100, D.10834
	cmovbe	edx, r8d	# D.10835,, tmp100
	cmp	dx, 9	# tmp100,
	ja	.L172	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 68	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC45	#,
	call	fwrite	#
	jmp	.L168	#
.L172:
	mov	rbp, rsi	# screen, screen
	cmp	DWORD PTR [rdi+152], 0	# sender_3(D)->id,
	je	.L173	#,
	cmp	r8w, ax	# D.10835, D.10834
	mov	ecx, eax	# maxdim, D.10834
	cmovae	ecx, r8d	# D.10835,, maxdim
	cmp	cx, 1000	# maxdim,
	jbe	.L174	#,
	movzx	ecx, cx	# maxdim, maxdim
	mov	edx, OFFSET FLAT:.LC46	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L168	#
.L174:
	movzx	r8d, r8w	# D.10835, D.10835
	lea	edx, [r8+10]	# tmp103,
	cvtsi2sd	xmm0, edx	# tmp104, tmp103
	cvtsi2sd	xmm1, r8d	# tmp105, D.10835
	divsd	xmm0, xmm1	# sw, tmp105
	movzx	eax, ax	# D.10834, D.10834
	lea	edx, [rax+10]	# tmp108,
	cvtsi2sd	xmm1, edx	# tmp109, tmp108
	cvtsi2sd	xmm2, eax	# tmp110, D.10834
	divsd	xmm1, xmm2	# sh, tmp110
	jmp	.L175	#
.L173:
	movzx	r8d, r8w	# D.10835, D.10835
	cvtsi2sd	xmm0, r8d	# tmp112, D.10835
	add	r8d, 10	# tmp115,
	cvtsi2sd	xmm1, r8d	# tmp116, tmp115
	divsd	xmm0, xmm1	# sw, tmp116
	movzx	eax, ax	# D.10834, D.10834
	cvtsi2sd	xmm1, eax	# tmp117, D.10834
	add	eax, 10	# tmp120,
	cvtsi2sd	xmm2, eax	# tmp121, tmp120
	divsd	xmm1, xmm2	# sh, tmp121
.L175:
	mov	esi, 1	#,
	mov	rdi, rbx	#, wtdst
	call	Widget_scale	#
	movzx	edx, r13w	# D.10837, D.10837
	movzx	esi, r12w	# D.10836, D.10836
	mov	rdi, rbx	#, wtdst
	call	Widget_setPosition	#
	mov	BYTE PTR [rbp+173], 1	# screen_62(D)->need_reload,
.L168:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE138:
	.size	button_dest_resize, .-button_dest_resize
	.section	.rodata.str1.1
.LC47:
	.string	"%3d"
	.text
	.globl	button_rep_col_change_threshold
	.type	button_rep_col_change_threshold, @function
button_rep_col_change_threshold:
.LFB139:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.10802, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10802_2
	mov	rax, QWORD PTR [rax+8]	# rep_thr, MEM[(void * *)D.10802_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L178	#,
	movzx	edx, BYTE PTR [rax]	# D.10806, *rep_thr_5
	cmp	dl, -1	# D.10806,
	je	.L177	#,
	add	edx, 1	# tmp77,
	mov	BYTE PTR [rax], dl	# *rep_thr_5, tmp77
	jmp	.L180	#
.L178:
	movzx	edx, BYTE PTR [rax]	# D.10806, *rep_thr_5
	test	dl, dl	# D.10806
	je	.L177	#,
	sub	edx, 1	# tmp78,
	mov	BYTE PTR [rax], dl	# *rep_thr_5, tmp78
.L180:
	mov	rdi, QWORD PTR [rbx+336]	# tmp80, label_3->text_block.text
	add	rdi, 7	# tmp80,
	movzx	r8d, BYTE PTR [rax]	#, *rep_thr_5
	mov	ecx, OFFSET FLAT:.LC47	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10819_17->vtable, D.10819_17->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10820_18 + 8B], MEM[(const void * *)D.10820_18 + 8B]
	mov	rdi, rbx	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10822_20].refresh
	mov	BYTE PTR [rbp+173], 1	# screen_22(D)->need_reload,
.L177:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE139:
	.size	button_rep_col_change_threshold, .-button_rep_col_change_threshold
	.section	.rodata.str1.1
.LC48:
	.string	"`%2s`"
	.text
	.globl	button_rep_col_change_condition
	.type	button_rep_col_change_condition, @function
button_rep_col_change_condition:
.LFB140:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.10779, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10779_2
	mov	rax, QWORD PTR [rax+8]	# cond, MEM[(void * *)D.10779_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L183	#,
	mov	edx, DWORD PTR [rax]	# D.10783, *cond_5
	cmp	edx, 4	# D.10783,
	ja	.L182	#,
	add	edx, 1	# tmp77,
	mov	DWORD PTR [rax], edx	# *cond_5, tmp77
	jmp	.L185	#
.L183:
	mov	edx, DWORD PTR [rax]	# D.10783, *cond_5
	test	edx, edx	# D.10783
	je	.L182	#,
	sub	edx, 1	# tmp78,
	mov	DWORD PTR [rax], edx	# *cond_5, tmp78
.L185:
	mov	eax, DWORD PTR [rax]	# *cond_5, *cond_5
	mov	rdi, QWORD PTR [rbx+336]	# tmp82, label_3->text_block.text
	add	rdi, 9	# tmp82,
	mov	r8, QWORD PTR COND_SYM[0+rax*8]	#, COND_SYM
	mov	ecx, OFFSET FLAT:.LC48	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10796_17->vtable, D.10796_17->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10797_18 + 8B], MEM[(const void * *)D.10797_18 + 8B]
	mov	rdi, rbx	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10799_20].refresh
	mov	BYTE PTR [rbp+173], 1	# screen_22(D)->need_reload,
.L182:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE140:
	.size	button_rep_col_change_condition, .-button_rep_col_change_condition
	.globl	button_rep_col_change_new_color
	.type	button_rep_col_change_new_color, @function
button_rep_col_change_new_color:
.LFB141:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10757, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10757_2
	mov	rax, QWORD PTR [rax+8]	# rep_channel, MEM[(void * *)D.10757_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L188	#,
	movzx	edx, BYTE PTR [rax]	# D.10761, *rep_channel_5
	cmp	dl, -1	# D.10761,
	je	.L187	#,
	add	edx, 1	# tmp76,
	mov	BYTE PTR [rax], dl	# *rep_channel_5, tmp76
	jmp	.L190	#
.L188:
	movzx	edx, BYTE PTR [rax]	# D.10761, *rep_channel_5
	test	dl, dl	# D.10761
	je	.L187	#,
	sub	edx, 1	# tmp77,
	mov	BYTE PTR [rax], dl	# *rep_channel_5, tmp77
.L190:
	mov	rdi, QWORD PTR [rbx+336]	# label_3->text_block.text, label_3->text_block.text
	movzx	r8d, BYTE PTR [rax]	#, *rep_channel_5
	mov	ecx, OFFSET FLAT:.LC47	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10773_16->vtable, D.10773_16->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10774_17 + 8B], MEM[(const void * *)D.10774_17 + 8B]
	mov	rdi, rbx	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10776_19].refresh
	mov	BYTE PTR [rbp+173], 1	# screen_21(D)->need_reload,
.L187:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE141:
	.size	button_rep_col_change_new_color, .-button_rep_col_change_new_color
	.section	.rodata.str1.8
	.align 8
.LC49:
	.string	"button_rep_col_apply: GToolsPoint_replace_pixels failed [exit code %d]\n"
	.text
	.globl	button_rep_col_apply
	.type	button_rep_col_apply, @function
button_rep_col_apply:
.LFB142:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.10746, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+24]	# MEM[(void * *)D.10746_2 + 24B], MEM[(void * *)D.10746_2 + 24B]
	movzx	ecx, BYTE PTR [rdx]	# *thr_9, *thr_9
	mov	rdx, QWORD PTR [rax+16]	# MEM[(void * *)D.10746_2 + 16B], MEM[(void * *)D.10746_2 + 16B]
	mov	rsi, QWORD PTR [rax+8]	# MEM[(void * *)D.10746_2 + 8B], MEM[(void * *)D.10746_2 + 8B]
	mov	rsi, QWORD PTR [rsi+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rdi, QWORD PTR [rax]	# *D.10746_2, *D.10746_2
	mov	rdi, QWORD PTR [rdi+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	r8, QWORD PTR [rax+32]	#, MEM[(void * *)D.10746_2 + 32B]
	mov	edx, DWORD PTR [rdx]	#, *cond_7
	call	GToolsPoint_replace_pixels	#
	test	al, al	# s
	je	.L193	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC49	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L192	#
.L193:
	mov	BYTE PTR [rbx+173], 1	# screen_20(D)->need_reload,
.L192:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE142:
	.size	button_rep_col_apply, .-button_rep_col_apply
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"histogram_stretch_on_mouse_release: GToolsPoint_histogram_stretching failed [exit code %d]\n"
	.text
	.globl	histogram_stretch_on_mouse_release
	.type	histogram_stretch_on_mouse_release, @function
histogram_stretch_on_mouse_release:
.LFB143:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rdi	# sender, sender
	mov	rbx, rsi	# screen, screen
	mov	rdi, QWORD PTR [rdi+128]	# D.10734, sender_1(D)->vparam
	mov	rcx, QWORD PTR [rax+600]	# MEM[(const struct HistStretchGraph *)sender_1(D)].y, MEM[(const struct HistStretchGraph *)sender_1(D)].y
	mov	rdx, QWORD PTR [rax+592]	# MEM[(const struct HistStretchGraph *)sender_1(D)].x, MEM[(const struct HistStretchGraph *)sender_1(D)].x
	mov	rsi, QWORD PTR [rdi+8]	# MEM[(void * *)D.10734_3 + 8B], MEM[(void * *)D.10734_3 + 8B]
	mov	r9, QWORD PTR [rsi+88]	# imgdst_6->surf, imgdst_6->surf
	mov	rsi, QWORD PTR [rdi]	# *D.10734_3, *D.10734_3
	mov	rdi, QWORD PTR [rsi+88]	# imgsrc_4->surf, imgsrc_4->surf
	movzx	r8d, WORD PTR [rax+608]	#, MEM[(const struct HistStretchGraph *)sender_1(D)].size
	mov	rsi, r9	#, imgdst_6->surf
	call	GToolsPoint_histogram_stretching	#
	test	al, al	# s
	je	.L197	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC50	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L196	#
.L197:
	mov	BYTE PTR [rbx+173], 1	# screen_16(D)->need_reload,
.L196:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE143:
	.size	histogram_stretch_on_mouse_release, .-histogram_stretch_on_mouse_release
	.globl	button_hist_stretch_apply
	.type	button_hist_stretch_apply, @function
button_hist_stretch_apply:
.LFB144:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+128]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	#, *D.10732_2
	call	histogram_stretch_on_mouse_release	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE144:
	.size	button_hist_stretch_apply, .-button_hist_stretch_apply
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"button_change_hist_stretch_nodes: HistStretchGraph_setCountPoints failed [exit code %d]\n"
	.text
	.globl	button_change_hist_stretch_nodes
	.type	button_change_hist_stretch_nodes, @function
button_change_hist_stretch_nodes:
.LFB145:
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
	mov	r12, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+128]	# D.10699, sender_2(D)->vparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10699_3
	mov	rbx, QWORD PTR [rdx+8]	# hsg, MEM[(void * *)D.10699_3 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	je	.L203	#,
	movzx	esi, WORD PTR [rbx+608]	# D.10703, hsg_6->size
	cmp	si, 31	# D.10703,
	ja	.L202	#,
	add	esi, 1	# tmp82,
	movzx	esi, si	# tmp83, tmp82
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_setCountPoints	#
	mov	r13d, eax	# s,
	jmp	.L205	#
.L203:
	movzx	esi, WORD PTR [rbx+608]	# D.10703, hsg_6->size
	cmp	si, 2	# D.10703,
	jbe	.L202	#,
	sub	esi, 1	# tmp84,
	movzx	esi, si	# tmp85, tmp84
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_setCountPoints	#
	mov	r13d, eax	# s,
.L205:
	mov	rdi, QWORD PTR [rbp+336]	# tmp87, label_4->text_block.text
	add	rdi, 18	# tmp87,
	movzx	r8d, WORD PTR [rbx+608]	#, hsg_6->size
	mov	ecx, OFFSET FLAT:.LC47	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_4].class, MEM[(struct coObject *)label_4].class
	mov	rax, QWORD PTR [rax+16]	# D.10718_22->vtable, D.10718_22->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10719_23 + 8B], MEM[(const void * *)D.10719_23 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10721_25].refresh
	test	r13b, r13b	# s
	je	.L206	#,
	movzx	ecx, r13b	# s, s
	mov	edx, OFFSET FLAT:.LC51	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L202	#
.L206:
	mov	BYTE PTR [r12+173], 1	# screen_29(D)->need_reload,
.L202:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE145:
	.size	button_change_hist_stretch_nodes, .-button_change_hist_stretch_nodes
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"button_generic_filter_apply: GToolsFilter_apply (filter: %s) failed [exit code %d]\n"
	.text
	.globl	button_generic_filter_apply
	.type	button_generic_filter_apply, @function
button_generic_filter_apply:
.LFB146:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+120]	# D.10688, sender_1(D)->cparam
	mov	ebp, DWORD PTR [rdi+152]	# type, sender_1(D)->id
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10688_2 + 8B], MEM[(void * *)D.10688_2 + 8B]
	mov	rsi, QWORD PTR [rdx+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rax, QWORD PTR [rax]	# *D.10688_2, *D.10688_2
	mov	rdi, QWORD PTR [rax+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	edx, ebp	#, type
	call	GToolsFilter_apply	#
	mov	ebx, eax	# s,
	test	al, al	# s
	je	.L209	#,
	mov	edi, ebp	#, type
	call	GToolsFilter_getName	#
	movzx	r8d, bl	#, s
	mov	rcx, rax	#, D.10694
	mov	edx, OFFSET FLAT:.LC52	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L208	#
.L209:
	mov	BYTE PTR [r12+173], 1	# screen_13(D)->need_reload,
.L208:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE146:
	.size	button_generic_filter_apply, .-button_generic_filter_apply
	.comm	IMAGE_SUPPORTED_FILES,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1084096512
	.align 8
.LC1:
	.long	0
	.long	1082310656
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	1120396902
	.align 4
.LC5:
	.long	1017370378
	.align 4
.LC6:
	.long	3267880550
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
