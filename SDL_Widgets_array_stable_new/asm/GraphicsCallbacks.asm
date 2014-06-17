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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
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
.LFB93:
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
	mov	rbx, rdi	# sender, sender
	mov	r13, rsi	# screen, screen
	mov	rdi, QWORD PTR [rsi+72]	# screen_1(D)->screen, screen_1(D)->screen
	call	FileBrowsePanel_Main	#
	mov	r14, rax	# sel_path,
	test	rax, rax	# sel_path
	je	.L2	#,
	mov	rax, QWORD PTR [rbx+128]	# D.10802, sender_4(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgsrc, *D.10802_5
	mov	r12, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10802_5 + 8B]
	mov	rbp, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10802_5 + 16B]
	mov	rdx, QWORD PTR [rax+24]	#, MEM[(void * *)D.10802_5 + 24B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10802_5 + 32B]
	mov	QWORD PTR [rsp+32], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10802_5 + 40B]
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	mov	rax, QWORD PTR [rax+48]	#, MEM[(void * *)D.10802_5 + 48B]
	mov	QWORD PTR [rsp], rax	# %sfp,
	movzx	r15d, BYTE PTR [rbx+165]	# imgsrc_draggable, MEM[(struct Widget *)imgsrc_6].draggable
	movzx	eax, BYTE PTR [rbp+167]	#, MEM[(struct Widget *)histogram_10].visible
	mov	BYTE PTR [rsp+15], al	# %sfp,
	movzx	edx, WORD PTR [rbx+96]	#, MEM[(struct Widget *)imgsrc_6].pos.x
	mov	WORD PTR [rsp+16], dx	# %sfp,
	movzx	eax, WORD PTR [rbx+98]	#, MEM[(struct Widget *)imgsrc_6].pos.y
	mov	WORD PTR [rsp+18], ax	# %sfp,
	movzx	edx, WORD PTR [r12+96]	#, MEM[(struct Widget *)imgdst_8].pos.x
	mov	WORD PTR [rsp+20], dx	# %sfp,
	movzx	eax, WORD PTR [r12+98]	#, MEM[(struct Widget *)imgdst_8].pos.y
	mov	WORD PTR [rsp+22], ax	# %sfp,
	mov	rdi, rbx	#, imgsrc
	call	delete	#
	mov	rdi, r12	#, imgdst
	call	delete	#
	movzx	ecx, WORD PTR [rsp+18]	# src_y, %sfp
	movzx	edx, WORD PTR [rsp+16]	# src_x, %sfp
	mov	rsi, r14	#, sel_path
	mov	rdi, rbx	#, imgsrc
	call	Image_new	#
	movzx	edx, WORD PTR [rbx+100]	# D.10809, MEM[(struct Widget *)imgsrc_6].pos.w
	movzx	eax, WORD PTR [rbx+102]	# D.10810, MEM[(struct Widget *)imgsrc_6].pos.h
	cmp	dx, ax	# D.10809, D.10810
	jbe	.L3	#,
	cmp	dx, 1920	# D.10809,
	jbe	.L4	#,
	movzx	edx, dx	# D.10809, D.10809
	cvtsi2sd	xmm1, edx	# tmp98, D.10809
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp100,
	divsd	xmm0, xmm1	# scale, tmp98
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Widget_scale	#
	jmp	.L4	#
.L3:
	cmp	ax, 600	# D.10810,
	jbe	.L4	#,
	movzx	eax, ax	# D.10810, D.10810
	cvtsi2sd	xmm1, eax	# tmp101, D.10810
	movsd	xmm0, QWORD PTR .LC1[rip]	# tmp103,
	divsd	xmm0, xmm1	# scale, tmp101
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Widget_scale	#
.L4:
	mov	edx, 1	#,
	mov	rsi, rbx	#, imgsrc
	mov	rdi, r12	#, imgdst
	call	Image_copy	#
	movzx	edx, WORD PTR [rsp+22]	# dst_y, %sfp
	movzx	esi, WORD PTR [rsp+20]	# dst_x, %sfp
	mov	rdi, r12	#, imgdst
	call	Widget_setPosition	#
	mov	BYTE PTR [r12+165], r15b	# MEM[(struct Widget *)imgdst_8].draggable, imgsrc_draggable
	mov	BYTE PTR [rbx+165], r15b	# MEM[(struct Widget *)imgsrc_6].draggable, imgsrc_draggable
	mov	QWORD PTR [rbp+576], 0	# MEM[(struct Histogram *)histogram_10 + 400B].data,
	mov	QWORD PTR [rbp+376], 0	# MEM[(struct Histogram *)histogram_10 + 200B].data,
	mov	QWORD PTR [rbp+176], 0	# histogram_10->data,
	mov	rdi, rbp	#, histogram
	call	Widget_refresh	#
	lea	r12, [rbp+200]	# D.10827,
	mov	rdi, r12	#, D.10827
	call	Widget_refresh	#
	lea	rbx, [rbp+400]	# D.10828,
	mov	rdi, rbx	#, D.10828
	call	Widget_refresh	#
	cmp	BYTE PTR [rsp+15], 0	# %sfp,
	jne	.L5	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, histogram
	call	Widget_setVisible	#
	mov	esi, 0	#,
	mov	rdi, r12	#, D.10827
	call	Widget_setVisible	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, D.10828
	call	Widget_setVisible	#
.L5:
	mov	rdx, QWORD PTR [rsp]	#, %sfp
	cmp	QWORD PTR [rdx], 255	# *thr_value_18,
	ja	.L2	#,
	mov	eax, 4294967295	#,
	mov	QWORD PTR [rdx], rax	# *thr_value_18,
	mov	rdx, QWORD PTR [rsp+24]	#, %sfp
	mov	rax, QWORD PTR [rdx+352]	# D.10834, thr_bin_label_12->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10834_53 + 7B],
	mov	rdi, rdx	#,
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+40]	#, %sfp
	call	ButtonImage_setEnabled	#
.L2:
	mov	BYTE PTR [r13+124], 1	# screen_1(D)->need_reload,
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
.LFE93:
	.size	button_imgsrc_open, .-button_imgsrc_open
	.globl	button_src_restore
	.type	button_src_restore, @function
button_src_restore:
.LFB94:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10769, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgsrc, *D.10769_2
	mov	r14, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10769_2 + 8B]
	mov	rbp, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10769_2 + 16B]
	mov	r15, QWORD PTR [rax+24]	# thr_bin_label, MEM[(void * *)D.10769_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10769_2 + 32B]
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10769_2 + 40B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	r12, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.10769_2 + 48B]
	mov	r13, QWORD PTR [rax+56]	# hist_cont_wt, MEM[(void * *)D.10769_2 + 56B]
	movzx	eax, BYTE PTR [rbx+165]	#, MEM[(struct Widget *)imgsrc_3].draggable
	mov	BYTE PTR [rsp+2], al	# %sfp,
	movzx	edx, BYTE PTR [r13+167]	#, hist_cont_wt_17->visible
	mov	BYTE PTR [rsp+3], dl	# %sfp,
	movzx	eax, WORD PTR [rbx+96]	#, MEM[(struct Widget *)imgsrc_3].pos.x
	mov	WORD PTR [rsp+4], ax	# %sfp,
	movzx	edx, WORD PTR [rbx+98]	#, MEM[(struct Widget *)imgsrc_3].pos.y
	mov	WORD PTR [rsp+6], dx	# %sfp,
	mov	rdi, rbx	#, imgsrc
	call	delete	#
	movzx	ecx, WORD PTR [rsp+6]	# src_y, %sfp
	movzx	edx, WORD PTR [rsp+4]	# src_x, %sfp
	mov	rsi, QWORD PTR [r14+176]	# imgdst_5->path, imgdst_5->path
	mov	rdi, rbx	#, imgsrc
	call	Image_new	#
	movzx	eax, BYTE PTR [rsp+2]	#, %sfp
	mov	BYTE PTR [rbx+165], al	# MEM[(struct Widget *)imgsrc_3].draggable,
	movzx	edx, WORD PTR [rbx+100]	# D.10775, MEM[(struct Widget *)imgsrc_3].pos.w
	movzx	eax, WORD PTR [rbx+102]	# D.10776, MEM[(struct Widget *)imgsrc_3].pos.h
	cmp	dx, ax	# D.10775, D.10776
	jbe	.L8	#,
	cmp	dx, 1920	# D.10775,
	jbe	.L9	#,
	movzx	edx, dx	# D.10775, D.10775
	cvtsi2sd	xmm1, edx	# tmp92, D.10775
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp94,
	divsd	xmm0, xmm1	# scale, tmp92
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Widget_scale	#
	jmp	.L9	#
.L8:
	cmp	ax, 600	# D.10776,
	jbe	.L9	#,
	movzx	eax, ax	# D.10776, D.10776
	cvtsi2sd	xmm1, eax	# tmp95, D.10776
	movsd	xmm0, QWORD PTR .LC1[rip]	# tmp97,
	divsd	xmm0, xmm1	# scale, tmp95
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Widget_scale	#
.L9:
	mov	QWORD PTR [rbp+576], 0	# MEM[(struct Histogram *)histogram_7 + 400B].data,
	mov	QWORD PTR [rbp+376], 0	# MEM[(struct Histogram *)histogram_7 + 200B].data,
	mov	QWORD PTR [rbp+176], 0	# histogram_7->data,
	mov	rdi, rbp	#, histogram
	call	Widget_refresh	#
	lea	rdi, [rbp+200]	# tmp98,
	call	Widget_refresh	#
	lea	rdi, [rbp+400]	# tmp99,
	call	Widget_refresh	#
	cmp	BYTE PTR [rsp+3], 0	# %sfp,
	jne	.L10	#,
	mov	esi, 0	#,
	mov	rdi, r13	#, hist_cont_wt
	call	Widget_setVisible	#
.L10:
	cmp	QWORD PTR [r12], 255	# *thr_value_15,
	ja	.L11	#,
	mov	edx, 4294967295	#,
	mov	QWORD PTR [r12], rdx	# *thr_value_15,
	mov	rax, QWORD PTR [r15+352]	# D.10797, thr_bin_label_9->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10797_44 + 7B],
	mov	rdi, r15	#, thr_bin_label
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
.L11:
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	mov	BYTE PTR [rax+124], 1	# screen_46(D)->need_reload,
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
.LFE94:
	.size	button_src_restore, .-button_src_restore
	.globl	button_src_to_dest
	.type	button_src_to_dest, @function
button_src_to_dest:
.LFB95:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10764, sender_1(D)->cparam
	mov	r14, QWORD PTR [rax]	# imgsrc, *D.10764_2
	mov	rbx, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10764_2 + 8B]
	movzx	r12d, BYTE PTR [rbx+165]	# draggable, MEM[(struct Widget *)imgdst_5].draggable
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
	mov	BYTE PTR [rbx+165], r12b	# MEM[(struct Widget *)imgdst_5].draggable, draggable
	mov	BYTE PTR [rbp+124], 1	# screen_13(D)->need_reload,
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
.LFE95:
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
.LFB96:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10733, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10733_2, *D.10733_2
	mov	rdx, QWORD PTR [rdx+88]	#, MEM[(struct Widget *)D.10734_3].surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10733_2 + 8B], MEM[(void * *)D.10733_2 + 8B]
	mov	r13, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.10736_7].surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.10733_2 + 16B]
	mov	rbx, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.10733_2 + 24B]
	mov	r14, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.10733_2 + 32B]
	mov	r15, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.10733_2 + 40B]
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L16	#,
	movzx	eax, WORD PTR [rbx]	# D.10740, *img_off_12
	cmp	ax, 250	# D.10740,
	jg	.L15	#,
	add	eax, 2	# tmp93,
	mov	WORD PTR [rbx], ax	# *img_off_12, tmp93
	jmp	.L18	#
.L16:
	movzx	eax, WORD PTR [rbx]	# D.10740, *img_off_12
	cmp	ax, -250	# D.10740,
	jl	.L15	#,
	sub	eax, 2	# tmp94,
	mov	WORD PTR [rbx], ax	# *img_off_12, tmp94
.L18:
	mov	rdi, QWORD PTR [rbp+352]	# tmp96, label_10->text_block.text
	add	rdi, 11	# tmp96,
	movsx	r8d, WORD PTR [rbx]	#, *img_off_12
	mov	ecx, OFFSET FLAT:.LC2	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Widget_refresh	#
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
	mov	BYTE PTR [r12+124], 1	# screen_40(D)->need_reload,
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
.LFE96:
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
.LFB97:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10704, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10704_2, *D.10704_2
	mov	rdx, QWORD PTR [rdx+88]	#, MEM[(struct Widget *)D.10705_3].surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10704_2 + 8B], MEM[(void * *)D.10704_2 + 8B]
	mov	r13, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.10707_7].surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.10704_2 + 16B]
	mov	r14, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.10704_2 + 24B]
	mov	rbx, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.10704_2 + 32B]
	mov	r15, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.10704_2 + 40B]
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L22	#,
	movss	xmm0, DWORD PTR [rbx]	# D.10711, *img_mul_14
	movss	xmm1, DWORD PTR .LC4[rip]	# tmp89,
	ucomiss	xmm1, xmm0	# tmp89, D.10711
	jbe	.L21	#,
	addss	xmm0, DWORD PTR .LC5[rip]	# tmp90,
	movss	DWORD PTR [rbx], xmm0	# *img_mul_14, tmp90
	jmp	.L25	#
.L22:
	movss	xmm0, DWORD PTR [rbx]	# D.10711, *img_mul_14
	ucomiss	xmm0, DWORD PTR .LC6[rip]	# D.10711,
	jb	.L21	#,
	subss	xmm0, DWORD PTR .LC5[rip]	# tmp92,
	movss	DWORD PTR [rbx], xmm0	# *img_mul_14, tmp92
.L25:
	movss	xmm0, DWORD PTR [rbx]	# tmp94, *img_mul_14
	cvtps2pd	xmm0, xmm0	# tmp94, tmp94
	mov	rdi, QWORD PTR [rbp+352]	# tmp95, label_10->text_block.text
	add	rdi, 11	# tmp95,
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Widget_refresh	#
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
	mov	BYTE PTR [r12+124], 1	# screen_36(D)->need_reload,
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
.LFE97:
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
.LFB98:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10674, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10674_3, *D.10674_3
	mov	rdx, QWORD PTR [rdx+88]	#, MEM[(struct Widget *)D.10675_4].surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10674_3 + 8B], MEM[(void * *)D.10674_3 + 8B]
	mov	r13, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.10677_8].surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.10674_3 + 16B]
	mov	r15, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.10674_3 + 24B]
	mov	r14, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.10674_3 + 32B]
	mov	rbx, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.10674_3 + 40B]
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
	je	.L32	#,
	cmp	BYTE PTR [rbx], 0	# *allow_of_17,
	je	.L31	#,
	mov	BYTE PTR [rbx], 0	# *allow_of_17,
	mov	esi, OFFSET FLAT:.LC10	# iftmp.27,
	jmp	.L34	#
.L32:
	cmp	BYTE PTR [rbx], 0	# *allow_of_17,
	jne	.L31	#,
	mov	BYTE PTR [rbx], 1	# *allow_of_17,
	mov	esi, OFFSET FLAT:.LC9	# iftmp.27,
.L34:
	mov	rdi, QWORD PTR [rbp+352]	# tmp86, label_11->text_block.text
	add	rdi, 9	# tmp86,
	call	strcpy	#
	mov	rdi, rbp	#, label
	call	Widget_refresh	#
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
	mov	BYTE PTR [r12+124], 1	# screen_34(D)->need_reload,
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
.LFE98:
	.size	button_overflow_change, .-button_overflow_change
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"button_brightness_reset() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_brightness_reset
	.type	button_brightness_reset, @function
button_brightness_reset:
.LFB99:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10650, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10650_3, *D.10650_3
	mov	rdi, QWORD PTR [rdx+88]	# imgsrc, MEM[(struct Widget *)D.10651_4].surf
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10650_3 + 8B], MEM[(void * *)D.10650_3 + 8B]
	mov	rsi, QWORD PTR [rdx+88]	# imgdst, MEM[(struct Widget *)D.10653_8].surf
	mov	r14, QWORD PTR [rax+16]	# label_off, MEM[(void * *)D.10650_3 + 16B]
	mov	r13, QWORD PTR [rax+24]	# label_mul, MEM[(void * *)D.10650_3 + 24B]
	mov	r12, QWORD PTR [rax+32]	# label_of, MEM[(void * *)D.10650_3 + 32B]
	mov	rbp, QWORD PTR [rax+40]	# img_off, MEM[(void * *)D.10650_3 + 40B]
	mov	rbx, QWORD PTR [rax+48]	# img_mul, MEM[(void * *)D.10650_3 + 48B]
	mov	r15, QWORD PTR [rax+56]	# allow_of, MEM[(void * *)D.10650_3 + 56B]
	mov	WORD PTR [rbp+0], 0	# *img_off_17,
	mov	DWORD PTR [rbx], 0x3f800000	# *img_mul_19,
	mov	BYTE PTR [r15], 0	# *allow_of_21,
	movsx	edx, WORD PTR [rbp+0]	# *img_off_17, *img_off_17
	mov	ecx, 0	#,
	movss	xmm0, DWORD PTR [rbx]	#, *img_mul_19
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
	mov	rdi, QWORD PTR [r14+352]	# tmp96, label_off_11->text_block.text
	add	rdi, 11	# tmp96,
	movsx	r8d, WORD PTR [rbp+0]	#, *img_off_17
	mov	ecx, OFFSET FLAT:.LC2	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	movss	xmm0, DWORD PTR [rbx]	# tmp98, *img_mul_19
	cvtps2pd	xmm0, xmm0	# tmp98, tmp98
	mov	rdi, QWORD PTR [r13+352]	# tmp99, label_mul_13->text_block.text
	add	rdi, 11	# tmp99,
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	cmp	BYTE PTR [r15], 0	# *allow_of_21,
	mov	eax, OFFSET FLAT:.LC9	# tmp104,
	mov	esi, OFFSET FLAT:.LC10	# tmp103,
	cmovne	rsi, rax	# tmp103,, iftmp.26, tmp104
	mov	rdi, QWORD PTR [r12+352]	# tmp101, label_of_15->text_block.text
	add	rdi, 9	# tmp101,
	call	strcpy	#
	mov	rdi, r14	#, label_off
	call	Widget_refresh	#
	mov	rdi, r13	#, label_mul
	call	Widget_refresh	#
	mov	rdi, r12	#, label_of
	call	Widget_refresh	#
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	mov	BYTE PTR [rax+124], 1	# screen_43(D)->need_reload,
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
.LFE99:
	.size	button_brightness_reset, .-button_brightness_reset
	.globl	button_dest_to_src
	.type	button_dest_to_src, @function
button_dest_to_src:
.LFB100:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10635, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# imgsrc, *D.10635_2
	mov	rdx, QWORD PTR [rax+8]	#, MEM[(void * *)D.10635_2 + 8B]
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10635_2 + 16B]
	mov	r12, QWORD PTR [rax+24]	# thr_bin_label, MEM[(void * *)D.10635_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10635_2 + 32B]
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10635_2 + 40B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	r14, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.10635_2 + 48B]
	movzx	eax, WORD PTR [rbp+96]	#, MEM[(struct Widget *)imgsrc_3].pos.x
	mov	WORD PTR [rsp+36], ax	# %sfp,
	movzx	edx, WORD PTR [rbp+98]	#, MEM[(struct Widget *)imgsrc_3].pos.y
	mov	WORD PTR [rsp+38], dx	# %sfp,
	movzx	r15d, BYTE PTR [rbp+165]	# draggable, MEM[(struct Widget *)imgsrc_3].draggable
	movzx	r13d, BYTE PTR [rbx+167]	# hist_vis, MEM[(struct Widget *)histogram_7].visible
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
	mov	BYTE PTR [rbp+165], r15b	# MEM[(struct Widget *)imgsrc_3].draggable, draggable
	mov	eax, 4294967295	#,
	mov	QWORD PTR [r14], rax	# *thr_value_15,
	mov	QWORD PTR [rbx+576], 0	# MEM[(struct Histogram *)histogram_7 + 400B].data,
	mov	QWORD PTR [rbx+376], 0	# MEM[(struct Histogram *)histogram_7 + 200B].data,
	mov	QWORD PTR [rbx+176], 0	# histogram_7->data,
	mov	rdi, rbx	#, histogram
	call	Widget_refresh	#
	lea	r14, [rbx+200]	# D.10644,
	mov	rdi, r14	#, D.10644
	call	Widget_refresh	#
	lea	rbp, [rbx+400]	# D.10645,
	mov	rdi, rbp	#, D.10645
	call	Widget_refresh	#
	test	r13b, r13b	# hist_vis
	jne	.L43	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, histogram
	call	Widget_setVisible	#
	mov	esi, 0	#,
	mov	rdi, r14	#, D.10644
	call	Widget_setVisible	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.10645
	call	Widget_setVisible	#
.L43:
	mov	rax, QWORD PTR [r12+352]	# D.10648, thr_bin_label_9->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10648_32 + 7B],
	mov	rdi, r12	#, thr_bin_label
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	rdx, QWORD PTR [rsp+40]	#, %sfp
	mov	BYTE PTR [rdx+124], 1	# screen_34(D)->need_reload,
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
.LFE100:
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
.LFB101:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+128]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgsrc, *D.10632_2
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	edi, OFFSET FLAT:.LC15	#,
	call	SDL_RWFromFile	#
	mov	rdi, QWORD PTR [rbx+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	edx, 1	#,
	mov	rsi, rax	#, D.10633
	call	SDL_SaveBMP_RW	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	button_src_save, .-button_src_save
	.section	.rodata.str1.1
.LC16:
	.string	"img/00_file_dest.bmp"
	.text
	.globl	button_dest_save
	.type	button_dest_save, @function
button_dest_save:
.LFB102:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+128]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgdst, *D.10629_2
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	edi, OFFSET FLAT:.LC16	#,
	call	SDL_RWFromFile	#
	mov	rdi, QWORD PTR [rbx+88]	# imgdst_3->surf, imgdst_3->surf
	mov	edx, 1	#,
	mov	rsi, rax	#, D.10630
	call	SDL_SaveBMP_RW	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	button_dest_save, .-button_dest_save
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"button_destaturize_std() >> Error in GToolsPoint_desaturize_std() [exited with code %d]\n"
	.text
	.globl	button_destaturize_std
	.type	button_destaturize_std, @function
button_destaturize_std:
.LFB103:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10621, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10621_2 + 8B], MEM[(void * *)D.10621_2 + 8B]
	mov	rsi, QWORD PTR [rdx+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rax, QWORD PTR [rax]	# *D.10621_2, *D.10621_2
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
	mov	BYTE PTR [rbx+124], 1	# screen_11(D)->need_reload,
.L49:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
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
.LFB104:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10600, sender_2(D)->cparam
	mov	r14, QWORD PTR [rax]	# thr_bin_label, *D.10600_3
	mov	rbx, QWORD PTR [rax+8]	# thr_bin_algo_label, MEM[(void * *)D.10600_3 + 8B]
	mov	r13, QWORD PTR [rax+16]	# thr_up_butimg, MEM[(void * *)D.10600_3 + 16B]
	mov	r12, QWORD PTR [rax+24]	# thr_dn_butimg, MEM[(void * *)D.10600_3 + 24B]
	mov	rdx, QWORD PTR [rax+32]	# t_algo, MEM[(void * *)D.10600_3 + 32B]
	mov	rax, QWORD PTR [rax+40]	# thr_value, MEM[(void * *)D.10600_3 + 40B]
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
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
	mov	eax, OFFSET FLAT:.LC18	# tmp79,
	mov	ecx, OFFSET FLAT:.LC19	# tmp78,
	cmovne	rcx, rax	# tmp78,, iftmp.23, tmp79
	mov	rdi, QWORD PTR [rbx+352]	# tmp76, thr_bin_algo_label_6->text_block.text
	add	rdi, 10	# tmp76,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, thr_bin_algo_label
	call	Widget_refresh	#
	mov	rax, QWORD PTR [r14+352]	# D.10618, thr_bin_label_4->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10618_23 + 7B],
	mov	esi, 0	#,
	mov	rdi, r13	#, thr_up_butimg
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, r12	#, thr_dn_butimg
	call	ButtonImage_setEnabled	#
	mov	BYTE PTR [rbp+124], 1	# screen_25(D)->need_reload,
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
.LFE104:
	.size	button_bin_algo_toggle, .-button_bin_algo_toggle
	.section	.rodata.str1.1
.LC20:
	.string	"%5s"
	.text
	.globl	button_used_hist_toggle
	.type	button_used_hist_toggle, @function
button_used_hist_toggle:
.LFB105:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10577, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# lab_used_hist, *D.10577_2
	mov	rbx, QWORD PTR [rax+8]	# thr_bin_label, MEM[(void * *)D.10577_2 + 8B]
	mov	r14, QWORD PTR [rax+16]	# thr_up_butimg, MEM[(void * *)D.10577_2 + 16B]
	mov	r13, QWORD PTR [rax+24]	# thr_dn_butimg, MEM[(void * *)D.10577_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	# num_hist, MEM[(void * *)D.10577_2 + 32B]
	mov	rcx, QWORD PTR [rax+40]	# hist_names, MEM[(void * *)D.10577_2 + 40B]
	mov	rax, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.10577_2 + 48B]
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L61	#,
	movzx	esi, BYTE PTR [rdx]	# D.10581, *num_hist_11
	test	sil, sil	# D.10581
	je	.L60	#,
	sub	esi, 1	# tmp82,
	mov	BYTE PTR [rdx], sil	# *num_hist_11, tmp82
	jmp	.L63	#
.L61:
	movzx	esi, BYTE PTR [rdx]	# D.10581, *num_hist_11
	cmp	sil, 1	# D.10581,
	ja	.L60	#,
	add	esi, 1	# tmp83,
	mov	BYTE PTR [rdx], sil	# *num_hist_11, tmp83
.L63:
	mov	esi, 4294967295	#,
	mov	QWORD PTR [rax], rsi	# *thr_value_15,
	movzx	eax, BYTE PTR [rdx]	# *num_hist_11, *num_hist_11
	mov	rdi, QWORD PTR [rbp+352]	# tmp86, lab_used_hist_3->text_block.text
	add	rdi, 18	# tmp86,
	mov	r8, QWORD PTR [rcx+rax*8]	#, *D.10593_26
	mov	ecx, OFFSET FLAT:.LC20	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, lab_used_hist
	call	Widget_refresh	#
	mov	rax, QWORD PTR [rbx+352]	# D.10597, thr_bin_label_5->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10597_30 + 7B],
	mov	rdi, rbx	#, thr_bin_label
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, r14	#, thr_up_butimg
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, r13	#, thr_dn_butimg
	call	ButtonImage_setEnabled	#
	mov	BYTE PTR [r12+124], 1	# screen_32(D)->need_reload,
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
.LFE105:
	.size	button_used_hist_toggle, .-button_used_hist_toggle
	.section	.rodata.str1.1
.LC21:
	.string	"%lu"
	.text
	.globl	button_threshold_change
	.type	button_threshold_change, @function
button_threshold_change:
.LFB106:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rax, QWORD PTR [rdi+128]	# D.10558, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# thr_bin_label, *D.10558_2
	mov	rdx, QWORD PTR [rax+8]	# thr_value, MEM[(void * *)D.10558_2 + 8B]
	mov	rax, QWORD PTR [rdx]	# D.10559, *thr_value_5
	cmp	rax, 255	# D.10559,
	ja	.L65	#,
	mov	rbp, rsi	# screen, screen
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L67	#,
	cmp	rax, 254	# D.10559,
	ja	.L65	#,
	add	rax, 1	# tmp71,
	mov	QWORD PTR [rdx], rax	# *thr_value_5, tmp71
	jmp	.L68	#
.L67:
	test	rax, rax	# D.10559
	je	.L65	#,
	sub	rax, 1	# tmp72,
	mov	QWORD PTR [rdx], rax	# *thr_value_5, tmp72
.L68:
	mov	rdi, QWORD PTR [rbx+352]	# tmp73, thr_bin_label_3->text_block.text
	add	rdi, 7	# tmp73,
	mov	r8, QWORD PTR [rdx]	#, *thr_value_5
	mov	ecx, OFFSET FLAT:.LC21	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, thr_bin_label
	call	Widget_refresh	#
	mov	BYTE PTR [rbp+124], 1	# screen_17(D)->need_reload,
.L65:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	button_threshold_change, .-button_threshold_change
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"button_create_histograms_click() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n"
	.text
	.globl	button_create_histograms_click
	.type	button_create_histograms_click, @function
button_create_histograms_click:
.LFB107:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10544, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.10544_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10544_2 + 16B]
	mov	r13, QWORD PTR [rax+24]	# hist_cont_wt, MEM[(void * *)D.10544_2 + 24B]
	mov	rax, QWORD PTR [rax]	# *D.10544_2, *D.10544_2
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
	mov	rax, QWORD PTR [rbp+0]	# D.10551, *colors_5
	mov	QWORD PTR [rbx+176], rax	# histogram_7->data, D.10551
	mov	rax, QWORD PTR [rbp+8]	# D.10553, MEM[(u32 * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+376], rax	# MEM[(struct Histogram *)histogram_7 + 200B].data, D.10553
	mov	rax, QWORD PTR [rbp+16]	# D.10555, MEM[(u32 * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+576], rax	# MEM[(struct Histogram *)histogram_7 + 400B].data, D.10555
	mov	rdi, rbx	#, histogram
	call	Widget_refresh	#
	lea	rdi, [rbx+200]	# tmp78,
	call	Widget_refresh	#
	lea	rdi, [rbx+400]	# tmp79,
	call	Widget_refresh	#
	mov	esi, 1	#,
	mov	rdi, r13	#, hist_cont_wt
	call	Widget_setVisible	#
	mov	BYTE PTR [r12+124], 1	# screen_21(D)->need_reload,
.L70:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
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
.LFB108:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10526, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# imgdst, *D.10526_2
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.10526_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10526_2 + 16B]
	mov	r13, QWORD PTR [rax+24]	# hist_cont_wt, MEM[(void * *)D.10526_2 + 24B]
	cmp	QWORD PTR [rbx+176], 0	# histogram_7->data,
	jne	.L75	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC23	#,
	call	fwrite	#
	jmp	.L74	#
.L75:
	mov	r12, rsi	# screen, screen
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
	mov	rax, QWORD PTR [rbp+0]	# D.10536, *colors_5
	mov	QWORD PTR [rbx+176], rax	# histogram_7->data, D.10536
	mov	rax, QWORD PTR [rbp+8]	# D.10538, MEM[(u32 * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+376], rax	# MEM[(struct Histogram *)histogram_7 + 200B].data, D.10538
	mov	rax, QWORD PTR [rbp+16]	# D.10540, MEM[(u32 * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+576], rax	# MEM[(struct Histogram *)histogram_7 + 400B].data, D.10540
	mov	rdi, rbx	#, histogram
	call	Widget_refresh	#
	lea	rdi, [rbx+200]	# tmp79,
	call	Widget_refresh	#
	lea	rdi, [rbx+400]	# tmp80,
	call	Widget_refresh	#
	mov	esi, 1	#,
	mov	rdi, r13	#, hist_cont_wt
	call	Widget_setVisible	#
	mov	BYTE PTR [r12+124], 1	# screen_23(D)->need_reload,
.L74:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
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
.LFB109:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10497, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.10497_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10497_2 + 16B]
	mov	rdx, QWORD PTR [rax+24]	#, MEM[(void * *)D.10497_2 + 24B]
	mov	QWORD PTR [rsp], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10497_2 + 32B]
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10497_2 + 40B]
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	r12, QWORD PTR [rax+48]	# thr_bin_label, MEM[(void * *)D.10497_2 + 48B]
	mov	r13, QWORD PTR [rax+56]	# thr_value, MEM[(void * *)D.10497_2 + 56B]
	mov	r14, QWORD PTR [rax+64]	# num_hist, MEM[(void * *)D.10497_2 + 64B]
	mov	r15, QWORD PTR [rax+72]	# t_algo, MEM[(void * *)D.10497_2 + 72B]
	mov	rax, QWORD PTR [rax]	# *D.10497_2, *D.10497_2
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
	mov	rax, QWORD PTR [rbp+0]	# D.10504, *colors_5
	mov	QWORD PTR [rbx+176], rax	# histogram_7->data, D.10504
	mov	rax, QWORD PTR [rbp+8]	# D.10506, MEM[(u32 * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+376], rax	# MEM[(struct Histogram *)histogram_7 + 200B].data, D.10506
	mov	rax, QWORD PTR [rbp+16]	# D.10508, MEM[(u32 * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+576], rax	# MEM[(struct Histogram *)histogram_7 + 400B].data, D.10508
	mov	rdi, rbx	#, histogram
	call	Widget_refresh	#
	lea	rdi, [rbx+200]	# tmp100,
	call	Widget_refresh	#
	lea	rdi, [rbx+400]	# tmp101,
	call	Widget_refresh	#
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, BYTE PTR [r15]	# *t_algo_21, *t_algo_21
	movzx	eax, BYTE PTR [r14]	# *num_hist_19, *num_hist_19
	lea	rax, [rax+rax*4]	# tmp106,
	lea	rax, [rax+rax*4]	# tmp108,
	mov	rdi, QWORD PTR [rbx+176+rax*8]	# D.10516_38->data, D.10516_38->data
	mov	rsi, r13	#, thr_value
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
	mov	rax, QWORD PTR [r12+352]	# D.10520, thr_bin_label_15->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10520_43 + 7B],
	jmp	.L83	#
.L82:
	mov	rdi, QWORD PTR [r12+352]	# tmp113, thr_bin_label_15->text_block.text
	add	rdi, 7	# tmp113,
	mov	r8, QWORD PTR [r13+0]	#, *thr_value_17
	mov	ecx, OFFSET FLAT:.LC21	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
.L83:
	test	bl, bl	# s
	sete	bl	#, tmp115
	movzx	ebx, bl	# tmp115, tmp115
	mov	esi, ebx	#, tmp115
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, ebx	#, tmp115
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	rdi, r12	#, thr_bin_label
	call	Widget_refresh	#
	mov	rax, QWORD PTR [rsp+24]	#, %sfp
	mov	BYTE PTR [rax+124], 1	# screen_52(D)->need_reload,
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
.LFE109:
	.size	button_bin_create_histograms, .-button_bin_create_histograms
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"button_threshold_apply() >> Error in GToolsPoint_apply_bin_threshold() [exited with code %d]\n"
	.text
	.globl	button_threshold_apply
	.type	button_threshold_apply, @function
button_threshold_apply:
.LFB110:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10486, sender_1(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10486_2
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10486_2 + 8B]
	mov	rax, QWORD PTR [rax+16]	# MEM[(void * *)D.10486_2 + 16B], MEM[(void * *)D.10486_2 + 16B]
	mov	rdx, QWORD PTR [rax]	# D.10487, *thr_value_7
	cmp	rdx, 255	# D.10487,
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
	mov	BYTE PTR [rbx+124], 1	# screen_15(D)->need_reload,
.L85:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
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
.LFB111:
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
	mov	rax, QWORD PTR [rdi+128]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rax, QWORD PTR [rax]	# *D.10470_2, *D.10470_2
	mov	rbx, QWORD PTR [rax+88]	# surf, MEM[(struct Widget *)D.10471_3].surf
	mov	r9d, DWORD PTR [rbx+16]	# D.10474, surf_4->w
	mov	rax, QWORD PTR [rbx+8]	# surf_4->format, surf_4->format
	movzx	ecx, BYTE PTR [rax+9]	# D.10477, D.10475_9->BytesPerPixel
	movzx	r8d, WORD PTR [rbx+24]	# surf_4->pitch, surf_4->pitch
	mov	eax, DWORD PTR [rbx+84]	# surf_4->refcount, surf_4->refcount
	mov	DWORD PTR [rsp+16], eax	#, surf_4->refcount
	mov	eax, DWORD PTR [rbx+20]	# surf_4->h, surf_4->h
	mov	DWORD PTR [rsp+8], eax	#, surf_4->h
	mov	DWORD PTR [rsp], r9d	#, D.10474
	imul	r9d, ecx	#, D.10477
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
	mov	BYTE PTR [rbp+124], 1	# screen_22(D)->need_reload,
.L89:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	button_dest_negative, .-button_dest_negative
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"button_dest_splotfilter() >> Error in GToolsSplotFilter_applyFilter() [exited with code %d]\n"
	.text
	.globl	button_dest_splotfilter
	.type	button_dest_splotfilter, @function
button_dest_splotfilter:
.LFB112:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10462, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10462_2 + 8B], MEM[(void * *)D.10462_2 + 8B]
	mov	rdx, QWORD PTR [rdx+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rcx, QWORD PTR [rax]	# *D.10462_2, *D.10462_2
	mov	rsi, QWORD PTR [rcx+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	rdi, QWORD PTR [rax+16]	# MEM[(void * *)D.10462_2 + 16B], MEM[(void * *)D.10462_2 + 16B]
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
	mov	BYTE PTR [rbx+124], 1	# screen_13(D)->need_reload,
.L93:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	button_dest_splotfilter, .-button_dest_splotfilter
	.section	.rodata.str1.1
.LC31:
	.string	"%6.2f"
	.text
	.globl	button_change_filter_weight
	.type	button_change_filter_weight, @function
button_change_filter_weight:
.LFB113:
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
	mov	rdx, QWORD PTR [rdi+136]	# sender_2(D)->vparam, sender_2(D)->vparam
	mov	rbp, QWORD PTR [rdx]	# weight_label, *D.10438_3
	mov	rdx, QWORD PTR [rdi+128]	# D.10439, sender_2(D)->cparam
	mov	r12, QWORD PTR [rdx]	# predef_label, *D.10439_5
	mov	rbx, QWORD PTR [rdx+8]	# gtsf, MEM[(void * *)D.10439_5 + 8B]
	movzx	r14d, WORD PTR [rbx+8]	# prev_ind, gtsf_8->predef_filter_ind
	mov	eax, DWORD PTR [rdi+160]	# D.10440, sender_2(D)->id
	test	al, 1	# D.10440,
	je	.L98	#,
	lea	r15d, [rax-1]	# tmp86,
	shr	r15d	# D.10445
	movzx	esi, r15b	# tmp87, D.10445
	mov	rdi, rbx	#, gtsf
	call	GToolsSplotFilter_increaseWeightAt	#
	test	al, al	# D.10447
	je	.L97	#,
	jmp	.L100	#
.L98:
	mov	r15d, eax	# D.10451, D.10440
	shr	r15d	# D.10451
	movzx	esi, r15b	# tmp88, D.10451
	mov	rdi, rbx	#, gtsf
	call	GToolsSplotFilter_decreaseWeightAt	#
	test	al, al	# D.10452
	je	.L97	#,
.L100:
	cmp	r14w, -1	# prev_ind,
	je	.L101	#,
	mov	rax, QWORD PTR [r12+352]	# predef_label_6->text_block.text, predef_label_6->text_block.text
	mov	DWORD PTR [rax], 977556563	#* predef_label_6->text_block.text,
	mov	WORD PTR [rax+4], 32	#,
	mov	rdi, r12	#, predef_label
	call	Widget_refresh	#
.L101:
	movzx	r15d, r15b	# w, w
	movss	xmm0, DWORD PTR [rbx+12+r15*4]	# tmp92, gtsf_8->weight
	cvtps2pd	xmm0, xmm0	# tmp92, tmp92
	mov	rdi, QWORD PTR [rbp+352]	# weight_label_4->text_block.text, weight_label_4->text_block.text
	mov	r8d, OFFSET FLAT:.LC31	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 7	#,
	mov	eax, 1	#,
	call	__snprintf_chk	#
	mov	rdi, rbp	#, weight_label
	call	Widget_refresh	#
	mov	BYTE PTR [r13+124], 1	# screen_28(D)->need_reload,
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
.LFE113:
	.size	button_change_filter_weight, .-button_change_filter_weight
	.section	.rodata.str1.1
.LC32:
	.string	"%s"
	.text
	.globl	button_change_filter_predef
	.type	button_change_filter_predef, @function
button_change_filter_predef:
.LFB114:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10415, sender_2(D)->cparam
	mov	rbx, QWORD PTR [rax]	# predef_label, *D.10415_3
	mov	r12, QWORD PTR [rax+8]	# gtsf, MEM[(void * *)D.10415_3 + 8B]
	mov	rbp, QWORD PTR [rax+16]	# weight_label, MEM[(void * *)D.10415_3 + 16B]
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
	je	.L104	#,
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_decreaseFilterInd	#
	test	al, al	# D.10419
	jne	.L106	#,
	.p2align 4,,3
	jmp	.L103	#
.L104:
	mov	rdi, r12	#, gtsf
	.p2align 4,,6
	call	GToolsSplotFilter_increaseFilterInd	#
	test	al, al	# D.10423
	.p2align 4,,3
	je	.L103	#,
.L106:
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_getFilterName	#
	mov	rdi, QWORD PTR [rbx+352]	# tmp110, predef_label_4->text_block.text
	add	rdi, 5	# tmp110,
	mov	rcx, rax	#, D.10426
	mov	edx, OFFSET FLAT:.LC32	#,
	mov	esi, 32	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	rdi, rbx	#, predef_label
	call	Widget_refresh	#
	mov	ebx, 0	# ivtmp.105,
	mov	r13, -1	# tmp114,
.L107:
	movss	xmm0, DWORD PTR [r12+12+rbx]	# tmp112, MEM[base: gtsf_6, index: ivtmp.105_52, offset: 12B]
	cvtps2pd	xmm0, xmm0	# tmp112, tmp112
	mov	rdi, QWORD PTR [rbp+352]	# MEM[base: D.10434_21, offset: 352B], MEM[base: D.10434_21, offset: 352B]
	mov	r8d, OFFSET FLAT:.LC31	#,
	mov	rcx, r13	#, tmp114
	mov	edx, 1	#,
	mov	esi, 7	#,
	mov	eax, 1	#,
	call	__snprintf_chk	#
	mov	rdi, rbp	#, ivtmp.109
	call	Widget_refresh	#
	add	rbx, 4	# ivtmp.105,
	add	rbp, 408	# ivtmp.109,
	cmp	rbx, 36	# ivtmp.105,
	jne	.L107	#,
	mov	BYTE PTR [r14+124], 1	# screen_27(D)->need_reload,
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
.LFE114:
	.size	button_change_filter_predef, .-button_change_filter_predef
	.globl	button_view_click
	.type	button_view_click, @function
button_view_click:
.LFB115:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rax, QWORD PTR [rdi+136]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# D.10407, *D.10406_2
	test	rbx, rbx	# D.10407
	je	.L110	#,
	mov	r12, rsi	# screen, screen
	cmp	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)D.10407_3].visible,
	sete	bpl	#, tmp67
	movzx	esi, bpl	# D.10411, tmp67
	mov	rdi, rbx	#, D.10407
	call	Widget_setVisible	#
	test	bpl, bpl	# tmp67
	je	.L112	#,
	mov	QWORD PTR [r12+56], rbx	# screen_10(D)->widget_ontop, D.10407
.L112:
	mov	BYTE PTR [r12+124], 1	# screen_10(D)->need_reload,
.L110:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	button_view_click, .-button_view_click
	.section	.rodata.str1.1
.LC33:
	.string	"%3hu"
	.text
	.globl	button_change_strelem_size
	.type	button_change_strelem_size, @function
button_change_strelem_size:
.LFB116:
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
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+136]	# sender_2(D)->vparam, sender_2(D)->vparam
	mov	r13, QWORD PTR [rax]	# label, *D.10381_3
	mov	rax, QWORD PTR [rdi+128]	# sender_2(D)->cparam, sender_2(D)->cparam
	mov	rbp, QWORD PTR [rax]	# pdb, *D.10382_5
	mov	eax, DWORD PTR [rdi+160]	# sender_2(D)->id, sender_2(D)->id
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
	cmp	BYTE PTR [rbp+169], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	jne	.L120	#,
	jmp	.L114	#
.L117:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_decreaseActY	#
	cmp	BYTE PTR [rbp+169], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	jne	.L120	#,
	jmp	.L114	#
.L118:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_increaseActX	#
	cmp	BYTE PTR [rbp+169], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	jne	.L120	#,
	jmp	.L114	#
.L119:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_decreaseActX	#
	cmp	BYTE PTR [rbp+169], 0	# MEM[(struct Widget *)pdb_6].need_reload,
	je	.L114	#,
.L120:
	cmp	DWORD PTR [rbx+160], 1	# sender_2(D)->id,
	ja	.L121	#,
	movzx	r9d, WORD PTR [rbp+228]	# iftmp.16, pdb_6->actY
	jmp	.L122	#
.L121:
	movzx	r9d, WORD PTR [rbp+226]	# iftmp.16, pdb_6->actX
.L122:
	mov	rdi, QWORD PTR [r13+352]	# label_4->text_block.text, label_4->text_block.text
	mov	r8d, OFFSET FLAT:.LC33	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 4	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	rdi, r13	#, label
	call	Widget_refresh	#
	mov	BYTE PTR [r12+124], 1	# screen_23(D)->need_reload,
.L114:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	button_change_strelem_size, .-button_change_strelem_size
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"button_dilate_click: GToolsMorph_dilate() exited with error: %d\n"
	.text
	.globl	button_dilate_click
	.type	button_dilate_click, @function
button_dilate_click:
.LFB117:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10368, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10368_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10368_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
	jne	.L125	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.10368_3 + 16B]
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
	mov	BYTE PTR [rbx+124], 1	# screen_17(D)->need_reload,
.L124:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	button_dilate_click, .-button_dilate_click
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"button_erode_click: GToolsMorph_erode() exited with error: %d\n"
	.text
	.globl	button_erode_click
	.type	button_erode_click, @function
button_erode_click:
.LFB118:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10355, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10355_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10355_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
	jne	.L131	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.10355_3 + 16B]
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
	mov	BYTE PTR [rbx+124], 1	# screen_17(D)->need_reload,
.L130:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	button_erode_click, .-button_erode_click
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"button_morph_open_click: GToolsMorph_open() exited with error: %d\n"
	.text
	.globl	button_morph_open_click
	.type	button_morph_open_click, @function
button_morph_open_click:
.LFB119:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10342, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10342_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10342_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
	jne	.L137	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.10342_3 + 16B]
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
	mov	BYTE PTR [rbx+124], 1	# screen_17(D)->need_reload,
.L136:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	button_morph_open_click, .-button_morph_open_click
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"button_morph_close_click: GToolsMorph_close() exited with error: %d\n"
	.text
	.globl	button_morph_close_click
	.type	button_morph_close_click, @function
button_morph_close_click:
.LFB120:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10329, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10329_3
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10329_3 + 8B]
	mov	edx, 0	# pdb,
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
	jne	.L143	#,
	mov	rdx, QWORD PTR [rax+16]	# pdb, MEM[(void * *)D.10329_3 + 16B]
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
	mov	BYTE PTR [rbx+124], 1	# screen_17(D)->need_reload,
.L142:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE120:
	.size	button_morph_close_click, .-button_morph_close_click
	.section	.rodata.str1.1
.LC38:
	.string	"%5hu"
	.text
	.globl	button_change_reconst_limit
	.type	button_change_reconst_limit, @function
button_change_reconst_limit:
.LFB121:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+136]	# D.10312, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10312_2
	mov	rax, QWORD PTR [rax+8]	# limit, MEM[(void * *)D.10312_2 + 8B]
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L149	#,
	movzx	edx, WORD PTR [rax]	# D.10316, *limit_5
	cmp	dx, 9999	# D.10316,
	ja	.L148	#,
	add	edx, 5	# tmp72,
	mov	WORD PTR [rax], dx	# *limit_5, tmp72
	jmp	.L151	#
.L149:
	movzx	edx, WORD PTR [rax]	# D.10316, *limit_5
	cmp	dx, 5	# D.10316,
	jbe	.L148	#,
	sub	edx, 5	# tmp73,
	mov	WORD PTR [rax], dx	# *limit_5, tmp73
.L151:
	mov	rdi, QWORD PTR [rbx+352]	# label_3->text_block.text, label_3->text_block.text
	movzx	r8d, WORD PTR [rax]	#, *limit_5
	mov	ecx, OFFSET FLAT:.LC38	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Widget_refresh	#
	mov	BYTE PTR [rbp+124], 1	# screen_16(D)->need_reload,
.L148:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE121:
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
.LFB122:
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
	mov	rbx, rdi	# sender, sender
	mov	r12, rsi	# screen, screen
	mov	rdi, QWORD PTR [rsi+72]	# screen_3(D)->screen, screen_3(D)->screen
	call	FileBrowsePanel_Main	#
	mov	r13, rax	# sel_path,
	test	rax, rax	# sel_path
	je	.L154	#,
	mov	rax, QWORD PTR [rbx+136]	# D.10247, sender_6(D)->vparam
	mov	rbx, QWORD PTR [rax]	# imgdst, *D.10247_7
	mov	r14, QWORD PTR [rax+8]	# imgcmp, MEM[(void * *)D.10247_7 + 8B]
	mov	rax, QWORD PTR Image_class[rip]	# Image_class, Image_class
	mov	rdi, QWORD PTR [rax+8]	# Image_class.6_11->size, Image_class.6_11->size
	mov	edx, 899	#,
	mov	esi, OFFSET FLAT:.LC39	#,
	call	wmalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, r13	#, sel_path
	mov	rdi, rax	#, D.10250
	call	Image_new	#
	mov	rbp, rax	# imgtmp,
	mov	edi, 0	# err,
	cmp	BYTE PTR [rax+167], 0	# MEM[(struct Widget *)imgtmp_14].visible,
	jne	.L155	#,
	mov	rcx, r13	#, sel_path
	mov	edx, OFFSET FLAT:.LC40	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edi, 1	# err,
.L155:
	mov	rax, QWORD PTR [rbp+88]	# D.10257, MEM[(struct Widget *)imgtmp_14].surf
	test	rax, rax	# D.10257
	je	.L156	#,
	mov	rdx, QWORD PTR [r14+88]	# D.10259, MEM[(struct Widget *)imgcmp_10].surf
	test	rdx, rdx	# D.10259
	je	.L156	#,
	mov	r9, QWORD PTR [rax+8]	# D.10261, D.10257_19->format
	test	r9, r9	# D.10261
	je	.L156	#,
	mov	rsi, QWORD PTR [rdx+8]	# D.10263, D.10259_20->format
	test	rsi, rsi	# D.10263
	je	.L156	#,
	movzx	ecx, WORD PTR [rdx+24]	#, D.10259_20->pitch
	cmp	WORD PTR [rax+24], cx	# D.10257_19->pitch,
	jne	.L156	#,
	mov	r8, QWORD PTR [rdx+16]	#,
	cmp	QWORD PTR [rax+16], r8	#,
	jne	.L156	#,
	movzx	ecx, BYTE PTR [rsi+9]	#, D.10263_24->BytesPerPixel
	cmp	BYTE PTR [r9+9], cl	# D.10261_22->BytesPerPixel,
	jne	.L156	#,
	mov	r8d, DWORD PTR [rsi+32]	#, D.10263_24->Amask
	cmp	DWORD PTR [r9+32], r8d	# D.10261_22->Amask,
	jne	.L156	#,
	mov	ecx, DWORD PTR [rsi+20]	#, D.10263_24->Rmask
	cmp	DWORD PTR [r9+20], ecx	# D.10261_22->Rmask,
	jne	.L156	#,
	mov	r8, QWORD PTR [rsi+24]	#,
	cmp	QWORD PTR [r9+24], r8	#,
	jne	.L156	#,
	movzx	ecx, BYTE PTR [rsi+17]	#, D.10263_24->Ashift
	cmp	BYTE PTR [r9+17], cl	# D.10261_22->Ashift,
	jne	.L156	#,
	movzx	r8d, WORD PTR [rsi+14]	#,
	cmp	WORD PTR [r9+14], r8w	#,
	jne	.L156	#,
	movzx	ecx, BYTE PTR [rsi+16]	#, D.10263_24->Bshift
	cmp	BYTE PTR [r9+16], cl	# D.10261_22->Bshift,
	jne	.L156	#,
	cmp	QWORD PTR [rax+32], 0	# D.10257_19->pixels,
	je	.L156	#,
	cmp	QWORD PTR [rdx+32], 0	# D.10259_20->pixels,
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
	mov	edx, 913	#,
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rdi, rax	#, D.10305
	call	wfree	#
	mov	BYTE PTR [r12+124], 1	# screen_3(D)->need_reload,
	jmp	.L153	#
.L159:
	movzx	r14d, WORD PTR [rbx+96]	# posx, MEM[(struct Widget *)imgdst_8].pos.x
	movzx	r15d, WORD PTR [rbx+98]	# posy, MEM[(struct Widget *)imgdst_8].pos.y
	movzx	r13d, BYTE PTR [rbx+165]	# draggable, MEM[(struct Widget *)imgdst_8].draggable
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
	mov	BYTE PTR [rbx+165], r13b	# MEM[(struct Widget *)imgdst_8].draggable, draggable
	mov	rdi, rbp	#, imgtmp
	call	delete	#
	mov	edx, 927	#,
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rdi, rax	#, D.10310
	call	wfree	#
.L154:
	mov	BYTE PTR [r12+124], 1	# screen_3(D)->need_reload,
.L153:
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
.LFE122:
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
.LFB123:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+136]	# D.10230, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	# imgmask, *D.10230_2
	mov	rcx, QWORD PTR [rax+8]	# imgmarker, MEM[(void * *)D.10230_2 + 8B]
	mov	rax, QWORD PTR [rax+16]	# limit, MEM[(void * *)D.10230_2 + 16B]
	cmp	BYTE PTR [rcx+167], 0	# imgmarker_5->visible,
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
	mov	BYTE PTR [rbx+124], 1	# screen_17(D)->need_reload,
.L163:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE123:
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
.LFB124:
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
	mov	rax, QWORD PTR [rdi+136]	# sender_3(D)->vparam, sender_3(D)->vparam
	mov	rbx, QWORD PTR [rax]	# wtdst, *D.10193_4
	mov	rax, QWORD PTR [rbx+88]	# D.10196, wtdst_5->surf
	test	rax, rax	# D.10196
	je	.L169	#,
	cmp	QWORD PTR [rax+32], 0	# D.10196_6->pixels,
	je	.L169	#,
	cmp	QWORD PTR [rax+8], 0	# D.10196_6->format,
	jne	.L170	#,
.L169:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 58	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC44	#,
	call	fwrite	#
	jmp	.L168	#
.L170:
	movzx	eax, WORD PTR [rbx+102]	# D.10202, wtdst_5->pos.h
	movzx	r8d, WORD PTR [rbx+100]	# D.10203, wtdst_5->pos.w
	movzx	r12d, WORD PTR [rbx+96]	# D.10204, wtdst_5->pos.x
	movzx	r13d, WORD PTR [rbx+98]	# D.10205, wtdst_5->pos.y
	cmp	r8w, ax	# D.10203, D.10202
	mov	edx, eax	# tmp100, D.10202
	cmovbe	edx, r8d	# D.10203,, tmp100
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
	cmp	DWORD PTR [rdi+160], 0	# sender_3(D)->id,
	je	.L173	#,
	cmp	r8w, ax	# D.10203, D.10202
	mov	ecx, eax	# maxdim, D.10202
	cmovae	ecx, r8d	# D.10203,, maxdim
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
	movzx	r8d, r8w	# D.10203, D.10203
	lea	edx, [r8+10]	# tmp103,
	cvtsi2sd	xmm0, edx	# tmp104, tmp103
	cvtsi2sd	xmm1, r8d	# tmp105, D.10203
	divsd	xmm0, xmm1	# sw, tmp105
	movzx	eax, ax	# D.10202, D.10202
	lea	edx, [rax+10]	# tmp108,
	cvtsi2sd	xmm1, edx	# tmp109, tmp108
	cvtsi2sd	xmm2, eax	# tmp110, D.10202
	divsd	xmm1, xmm2	# sh, tmp110
	jmp	.L175	#
.L173:
	movzx	r8d, r8w	# D.10203, D.10203
	cvtsi2sd	xmm0, r8d	# tmp112, D.10203
	add	r8d, 10	# tmp115,
	cvtsi2sd	xmm1, r8d	# tmp116, tmp115
	divsd	xmm0, xmm1	# sw, tmp116
	movzx	eax, ax	# D.10202, D.10202
	cvtsi2sd	xmm1, eax	# tmp117, D.10202
	add	eax, 10	# tmp120,
	cvtsi2sd	xmm2, eax	# tmp121, tmp120
	divsd	xmm1, xmm2	# sh, tmp121
.L175:
	mov	esi, 1	#,
	mov	rdi, rbx	#, wtdst
	call	Widget_scale	#
	movzx	edx, r13w	# D.10205, D.10205
	movzx	esi, r12w	# D.10204, D.10204
	mov	rdi, rbx	#, wtdst
	call	Widget_setPosition	#
	mov	BYTE PTR [rbp+124], 1	# screen_62(D)->need_reload,
.L168:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE124:
	.size	button_dest_resize, .-button_dest_resize
	.section	.rodata.str1.1
.LC47:
	.string	"%3d"
	.text
	.globl	button_rep_col_change_threshold
	.type	button_rep_col_change_threshold, @function
button_rep_col_change_threshold:
.LFB125:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10175, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10175_2
	mov	rax, QWORD PTR [rax+8]	# rep_thr, MEM[(void * *)D.10175_2 + 8B]
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L178	#,
	movzx	edx, BYTE PTR [rax]	# D.10179, *rep_thr_5
	cmp	dl, -1	# D.10179,
	je	.L177	#,
	add	edx, 1	# tmp73,
	mov	BYTE PTR [rax], dl	# *rep_thr_5, tmp73
	jmp	.L180	#
.L178:
	movzx	edx, BYTE PTR [rax]	# D.10179, *rep_thr_5
	test	dl, dl	# D.10179
	je	.L177	#,
	sub	edx, 1	# tmp74,
	mov	BYTE PTR [rax], dl	# *rep_thr_5, tmp74
.L180:
	mov	rdi, QWORD PTR [rbx+352]	# tmp76, label_3->text_block.text
	add	rdi, 7	# tmp76,
	movzx	r8d, BYTE PTR [rax]	#, *rep_thr_5
	mov	ecx, OFFSET FLAT:.LC47	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Widget_refresh	#
	mov	BYTE PTR [rbp+124], 1	# screen_17(D)->need_reload,
.L177:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE125:
	.size	button_rep_col_change_threshold, .-button_rep_col_change_threshold
	.section	.rodata.str1.1
.LC48:
	.string	"`%2s`"
	.text
	.globl	button_rep_col_change_condition
	.type	button_rep_col_change_condition, @function
button_rep_col_change_condition:
.LFB126:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10157, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10157_2
	mov	rax, QWORD PTR [rax+8]	# cond, MEM[(void * *)D.10157_2 + 8B]
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L183	#,
	mov	edx, DWORD PTR [rax]	# D.10161, *cond_5
	cmp	edx, 4	# D.10161,
	ja	.L182	#,
	add	edx, 1	# tmp73,
	mov	DWORD PTR [rax], edx	# *cond_5, tmp73
	jmp	.L185	#
.L183:
	mov	edx, DWORD PTR [rax]	# D.10161, *cond_5
	test	edx, edx	# D.10161
	je	.L182	#,
	sub	edx, 1	# tmp74,
	mov	DWORD PTR [rax], edx	# *cond_5, tmp74
.L185:
	mov	eax, DWORD PTR [rax]	# *cond_5, *cond_5
	mov	rdi, QWORD PTR [rbx+352]	# tmp78, label_3->text_block.text
	add	rdi, 9	# tmp78,
	mov	r8, QWORD PTR COND_SYM[0+rax*8]	#, COND_SYM
	mov	ecx, OFFSET FLAT:.LC48	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Widget_refresh	#
	mov	BYTE PTR [rbp+124], 1	# screen_17(D)->need_reload,
.L182:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE126:
	.size	button_rep_col_change_condition, .-button_rep_col_change_condition
	.globl	button_rep_col_change_new_color
	.type	button_rep_col_change_new_color, @function
button_rep_col_change_new_color:
.LFB127:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+136]	# D.10140, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10140_2
	mov	rax, QWORD PTR [rax+8]	# rep_channel, MEM[(void * *)D.10140_2 + 8B]
	cmp	DWORD PTR [rdi+160], 0	# sender_1(D)->id,
	je	.L188	#,
	movzx	edx, BYTE PTR [rax]	# D.10144, *rep_channel_5
	cmp	dl, -1	# D.10144,
	je	.L187	#,
	add	edx, 1	# tmp72,
	mov	BYTE PTR [rax], dl	# *rep_channel_5, tmp72
	jmp	.L190	#
.L188:
	movzx	edx, BYTE PTR [rax]	# D.10144, *rep_channel_5
	test	dl, dl	# D.10144
	je	.L187	#,
	sub	edx, 1	# tmp73,
	mov	BYTE PTR [rax], dl	# *rep_channel_5, tmp73
.L190:
	mov	rdi, QWORD PTR [rbx+352]	# label_3->text_block.text, label_3->text_block.text
	movzx	r8d, BYTE PTR [rax]	#, *rep_channel_5
	mov	ecx, OFFSET FLAT:.LC47	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Widget_refresh	#
	mov	BYTE PTR [rbp+124], 1	# screen_16(D)->need_reload,
.L187:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE127:
	.size	button_rep_col_change_new_color, .-button_rep_col_change_new_color
	.section	.rodata.str1.8
	.align 8
.LC49:
	.string	"button_rep_col_apply: GToolsPoint_replace_pixels failed [exit code %d]\n"
	.text
	.globl	button_rep_col_apply
	.type	button_rep_col_apply, @function
button_rep_col_apply:
.LFB128:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10129, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+24]	# MEM[(void * *)D.10129_2 + 24B], MEM[(void * *)D.10129_2 + 24B]
	movzx	ecx, BYTE PTR [rdx]	# *thr_9, *thr_9
	mov	rdx, QWORD PTR [rax+16]	# MEM[(void * *)D.10129_2 + 16B], MEM[(void * *)D.10129_2 + 16B]
	mov	rsi, QWORD PTR [rax+8]	# MEM[(void * *)D.10129_2 + 8B], MEM[(void * *)D.10129_2 + 8B]
	mov	rsi, QWORD PTR [rsi+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rdi, QWORD PTR [rax]	# *D.10129_2, *D.10129_2
	mov	rdi, QWORD PTR [rdi+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	r8, QWORD PTR [rax+32]	#, MEM[(void * *)D.10129_2 + 32B]
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
	mov	BYTE PTR [rbx+124], 1	# screen_20(D)->need_reload,
.L192:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE128:
	.size	button_rep_col_apply, .-button_rep_col_apply
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"histogram_stretch_on_mouse_release: GToolsPoint_histogram_stretching failed [exit code %d]\n"
	.text
	.globl	histogram_stretch_on_mouse_release
	.type	histogram_stretch_on_mouse_release, @function
histogram_stretch_on_mouse_release:
.LFB129:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rdi	# sender, sender
	mov	rbx, rsi	# screen, screen
	mov	rdi, QWORD PTR [rdi+136]	# D.10117, sender_1(D)->vparam
	mov	rcx, QWORD PTR [rax+624]	# MEM[(const struct HistStretchGraph *)sender_1(D)].y, MEM[(const struct HistStretchGraph *)sender_1(D)].y
	mov	rdx, QWORD PTR [rax+616]	# MEM[(const struct HistStretchGraph *)sender_1(D)].x, MEM[(const struct HistStretchGraph *)sender_1(D)].x
	mov	rsi, QWORD PTR [rdi+8]	# MEM[(void * *)D.10117_3 + 8B], MEM[(void * *)D.10117_3 + 8B]
	mov	r9, QWORD PTR [rsi+88]	# imgdst_6->surf, imgdst_6->surf
	mov	rsi, QWORD PTR [rdi]	# *D.10117_3, *D.10117_3
	mov	rdi, QWORD PTR [rsi+88]	# imgsrc_4->surf, imgsrc_4->surf
	movzx	r8d, WORD PTR [rax+632]	#, MEM[(const struct HistStretchGraph *)sender_1(D)].size
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
	mov	BYTE PTR [rbx+124], 1	# screen_16(D)->need_reload,
.L196:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE129:
	.size	histogram_stretch_on_mouse_release, .-histogram_stretch_on_mouse_release
	.globl	button_hist_stretch_apply
	.type	button_hist_stretch_apply, @function
button_hist_stretch_apply:
.LFB130:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+136]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	#, *D.10115_2
	call	histogram_stretch_on_mouse_release	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE130:
	.size	button_hist_stretch_apply, .-button_hist_stretch_apply
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"button_change_hist_stretch_nodes: HistStretchGraph_setCountPoints failed [exit code %d]\n"
	.text
	.globl	button_change_hist_stretch_nodes
	.type	button_change_hist_stretch_nodes, @function
button_change_hist_stretch_nodes:
.LFB131:
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
	mov	rdx, QWORD PTR [rdi+136]	# D.10087, sender_2(D)->vparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10087_3
	mov	rbx, QWORD PTR [rdx+8]	# hsg, MEM[(void * *)D.10087_3 + 8B]
	cmp	DWORD PTR [rdi+160], 0	# sender_2(D)->id,
	je	.L203	#,
	movzx	esi, WORD PTR [rbx+632]	# D.10091, hsg_6->size
	cmp	si, 31	# D.10091,
	ja	.L202	#,
	add	esi, 1	# tmp78,
	movzx	esi, si	# tmp79, tmp78
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_setCountPoints	#
	mov	r13d, eax	# s,
	jmp	.L205	#
.L203:
	movzx	esi, WORD PTR [rbx+632]	# D.10091, hsg_6->size
	cmp	si, 2	# D.10091,
	jbe	.L202	#,
	sub	esi, 1	# tmp80,
	movzx	esi, si	# tmp81, tmp80
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_setCountPoints	#
	mov	r13d, eax	# s,
.L205:
	mov	rdi, QWORD PTR [rbp+352]	# tmp83, label_4->text_block.text
	add	rdi, 18	# tmp83,
	movzx	r8d, WORD PTR [rbx+632]	#, hsg_6->size
	mov	ecx, OFFSET FLAT:.LC47	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Widget_refresh	#
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
	mov	BYTE PTR [r12+124], 1	# screen_24(D)->need_reload,
.L202:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE131:
	.size	button_change_hist_stretch_nodes, .-button_change_hist_stretch_nodes
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"button_generic_filter_apply: GToolsFilter_apply (filter: %s) failed [exit code %d]\n"
	.text
	.globl	button_generic_filter_apply
	.type	button_generic_filter_apply, @function
button_generic_filter_apply:
.LFB132:
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
	mov	rax, QWORD PTR [rdi+128]	# D.10076, sender_1(D)->cparam
	mov	ebp, DWORD PTR [rdi+160]	# type, sender_1(D)->id
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10076_2 + 8B], MEM[(void * *)D.10076_2 + 8B]
	mov	rsi, QWORD PTR [rdx+88]	# imgdst_5->surf, imgdst_5->surf
	mov	rax, QWORD PTR [rax]	# *D.10076_2, *D.10076_2
	mov	rdi, QWORD PTR [rax+88]	# imgsrc_3->surf, imgsrc_3->surf
	mov	edx, ebp	#, type
	call	GToolsFilter_apply	#
	mov	ebx, eax	# s,
	test	al, al	# s
	je	.L209	#,
	mov	edi, ebp	#, type
	call	GToolsFilter_getName	#
	movzx	r8d, bl	#, s
	mov	rcx, rax	#, D.10082
	mov	edx, OFFSET FLAT:.LC52	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L208	#
.L209:
	mov	BYTE PTR [r12+124], 1	# screen_13(D)->need_reload,
.L208:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE132:
	.size	button_generic_filter_apply, .-button_generic_filter_apply
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
