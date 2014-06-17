	.file	"GraphicsCallbacks.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GraphicsCallbacks.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/GraphicsCallbacks.asm
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
	.string	"CM: &(image[1])....................%p\n"
	.align 8
.LC1:
	.string	"CM: colors.........................%p\n"
	.align 8
.LC2:
	.string	"CM: histogram......................%p\n"
	.align 8
.LC3:
	.string	"CM: cont_equal.....................%p\n"
	.align 8
.LC4:
	.string	"CM: callback.......................%p\n"
	.align 8
.LC5:
	.string	"CM: sender.........................%p\n"
	.align 8
.LC6:
	.string	"button_histograms_equalize() To use this tool, histograms have to be created first.\n"
	.align 8
.LC7:
	.string	"button_histograms_equalize() >> Error in GToolsPoint_histEqualize() [exited with code %d]\n"
	.text
	.globl	button_histograms_equalize
	.type	button_histograms_equalize, @function
button_histograms_equalize:
.LFB109:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# sender, sender
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rcx, QWORD PTR [rax]	#, *D.10242_2
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rcx, QWORD PTR [rax+8]	# MEM[(void * *)D.10242_5 + 8B], MEM[(void * *)D.10242_5 + 8B]
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rcx, QWORD PTR [rax+16]	# MEM[(void * *)D.10242_9 + 16B], MEM[(void * *)D.10242_9 + 16B]
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rcx, QWORD PTR [rax+24]	# MEM[(void * *)D.10242_13 + 24B], MEM[(void * *)D.10242_13 + 24B]
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ecx, OFFSET FLAT:button_histograms_equalize	#,
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rcx, rbx	#, sender
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx+88]	# D.10242, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# imgdst, *D.10242_19
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.10242_19 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10242_19 + 16B]
	mov	r13, QWORD PTR [rax+24]	# hist_cont, MEM[(void * *)D.10242_19 + 24B]
	cmp	QWORD PTR [rbx+144], 0	# histogram_24->data,
	jne	.L2	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC6	#,
	call	fwrite	#
	jmp	.L1	#
.L2:
	mov	rdi, QWORD PTR [rdx+48]	# imgdst_20->widget.surf, imgdst_20->widget.surf
	mov	rsi, rbp	#, colors
	call	GToolsPoint_histEqualize	#
	test	al, al	# s
	je	.L4	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L1	#
.L4:
	mov	rax, QWORD PTR [rbp+0]	# D.10259, *colors_22
	mov	QWORD PTR [rbx+144], rax	# histogram_24->data, D.10259
	mov	rax, QWORD PTR [rbp+8]	# D.10261, MEM[(unsigned int * *)colors_22 + 8B]
	mov	QWORD PTR [rbx+312], rax	# MEM[(struct Histogram *)histogram_24 + 168B].data, D.10261
	mov	rax, QWORD PTR [rbp+16]	# D.10263, MEM[(unsigned int * *)colors_22 + 16B]
	mov	QWORD PTR [rbx+480], rax	# MEM[(struct Histogram *)histogram_24 + 336B].data, D.10263
	mov	rdi, rbx	#, histogram
	call	Histogram_refresh	#
	lea	rdi, [rbx+168]	# tmp100,
	call	Histogram_refresh	#
	lea	rdi, [rbx+336]	# tmp101,
	call	Histogram_refresh	#
	mov	esi, 1	#,
	mov	rdi, r13	#, hist_cont
	call	Container_setVisible	#
	mov	BYTE PTR [r12+132], 1	# screen_40(D)->need_reload,
.L1:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 40
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	button_histograms_equalize, .-button_histograms_equalize
	.globl	button_main_floating_menu_click
	.type	button_main_floating_menu_click, @function
button_main_floating_menu_click:
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rdi	# sender, sender
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+96]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# cont, *D.10553_2
	cmp	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)cont_3].visible,
	je	.L7	#,
	cmp	QWORD PTR [rsi+64], rbx	# screen_6(D)->widget_ontop, cont
	jne	.L8	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, cont
	call	Container_setVisible	#
	mov	BYTE PTR [r12+130], 1	# sender_1(D)->visible,
	mov	BYTE PTR [rbp+132], 1	# screen_6(D)->need_reload,
	mov	QWORD PTR [rbp+64], 0	# screen_6(D)->widget_ontop,
	jmp	.L6	#
.L8:
	mov	QWORD PTR [rsi+64], rbx	# screen_6(D)->widget_ontop, cont
	mov	edx, 1	#,
	mov	rdi, rbx	#, cont
	call	Container_draw	#
	jmp	.L6	#
.L7:
	mov	esi, 1	#,
	mov	rdi, rbx	#, cont
	call	Container_setVisible	#
	mov	QWORD PTR [rbp+64], rbx	# screen_6(D)->widget_ontop, cont
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, cont
	call	Container_draw	#
.L6:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	button_main_floating_menu_click, .-button_main_floating_menu_click
	.globl	button_imgsrc_open
	.type	button_imgsrc_open, @function
button_imgsrc_open:
.LFB94:
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
	mov	rdi, QWORD PTR [rsi+80]	# screen_1(D)->screen, screen_1(D)->screen
	call	FileBrowsePanel_Main	#
	mov	r14, rax	# sel_path,
	test	rax, rax	# sel_path
	je	.L12	#,
	mov	rax, QWORD PTR [rbx+88]	# D.10519, sender_4(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgsrc, *D.10519_5
	mov	r12, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10519_5 + 8B]
	mov	rbp, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10519_5 + 16B]
	mov	rdx, QWORD PTR [rax+24]	#, MEM[(void * *)D.10519_5 + 24B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10519_5 + 32B]
	mov	QWORD PTR [rsp+32], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10519_5 + 40B]
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	mov	rax, QWORD PTR [rax+48]	#, MEM[(void * *)D.10519_5 + 48B]
	mov	QWORD PTR [rsp], rax	# %sfp,
	movzx	r15d, BYTE PTR [rbx+128]	# imgsrc_draggable, imgsrc_6->widget.draggable
	movzx	eax, BYTE PTR [rbp+130]	#, histogram_10->widget.visible
	mov	BYTE PTR [rsp+15], al	# %sfp,
	movzx	edx, WORD PTR [rbx+56]	#, imgsrc_6->widget.pos.x
	mov	WORD PTR [rsp+16], dx	# %sfp,
	movzx	eax, WORD PTR [rbx+58]	#, imgsrc_6->widget.pos.y
	mov	WORD PTR [rsp+18], ax	# %sfp,
	movzx	edx, WORD PTR [r12+56]	#, imgdst_8->widget.pos.x
	mov	WORD PTR [rsp+20], dx	# %sfp,
	movzx	eax, WORD PTR [r12+58]	#, imgdst_8->widget.pos.y
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
	movzx	edx, WORD PTR [rbx+60]	# D.10526, imgsrc_6->widget.pos.w
	movzx	eax, WORD PTR [rbx+62]	# D.10527, imgsrc_6->widget.pos.h
	cmp	dx, ax	# D.10526, D.10527
	jbe	.L13	#,
	cmp	dx, 1920	# D.10526,
	jbe	.L14	#,
	movzx	edx, dx	# D.10526, D.10526
	cvtsi2sd	xmm1, edx	# tmp98, D.10526
	movsd	xmm0, QWORD PTR .LC8[rip]	# tmp100,
	divsd	xmm0, xmm1	# scale, tmp98
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Image_scale	#
	jmp	.L14	#
.L13:
	cmp	ax, 600	# D.10527,
	jbe	.L14	#,
	movzx	eax, ax	# D.10527, D.10527
	cvtsi2sd	xmm1, eax	# tmp101, D.10527
	movsd	xmm0, QWORD PTR .LC9[rip]	# tmp103,
	divsd	xmm0, xmm1	# scale, tmp101
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Image_scale	#
.L14:
	mov	edx, 1	#,
	mov	rsi, rbx	#, imgsrc
	mov	rdi, r12	#, imgdst
	call	Image_copy	#
	movzx	edx, WORD PTR [rsp+22]	# dst_y, %sfp
	movzx	esi, WORD PTR [rsp+20]	# dst_x, %sfp
	mov	rdi, r12	#, imgdst
	call	Image_setPosition	#
	mov	BYTE PTR [r12+128], r15b	# imgdst_8->widget.draggable, imgsrc_draggable
	mov	BYTE PTR [rbx+128], r15b	# imgsrc_6->widget.draggable, imgsrc_draggable
	mov	QWORD PTR [rbp+480], 0	# MEM[(struct Histogram *)histogram_10 + 336B].data,
	mov	QWORD PTR [rbp+312], 0	# MEM[(struct Histogram *)histogram_10 + 168B].data,
	mov	QWORD PTR [rbp+144], 0	# histogram_10->data,
	mov	rdi, rbp	#, histogram
	call	Histogram_refresh	#
	lea	rdi, [rbp+168]	# tmp106,
	call	Histogram_refresh	#
	lea	rdi, [rbp+336]	# tmp107,
	call	Histogram_refresh	#
	cmp	BYTE PTR [rsp+15], 0	# %sfp,
	jne	.L15	#,
	mov	BYTE PTR [rbp+466], 0	# MEM[(struct Histogram *)histogram_10 + 336B].widget.visible,
	mov	BYTE PTR [rbp+298], 0	# MEM[(struct Histogram *)histogram_10 + 168B].widget.visible,
	mov	BYTE PTR [rbp+130], 0	# histogram_10->widget.visible,
.L15:
	mov	rdx, QWORD PTR [rsp]	#, %sfp
	cmp	QWORD PTR [rdx], 255	# *thr_value_18,
	ja	.L12	#,
	mov	eax, 4294967295	#,
	mov	QWORD PTR [rdx], rax	# *thr_value_18,
	mov	rdx, QWORD PTR [rsp+24]	#, %sfp
	mov	rax, QWORD PTR [rdx+288]	# D.10551, thr_bin_label_12->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10551_55 + 7B],
	mov	rdi, rdx	#,
	call	Label_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+40]	#, %sfp
	call	ButtonImage_setEnabled	#
.L12:
	mov	BYTE PTR [r13+132], 1	# screen_1(D)->need_reload,
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
.LFE94:
	.size	button_imgsrc_open, .-button_imgsrc_open
	.globl	button_src_restore
	.type	button_src_restore, @function
button_src_restore:
.LFB95:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10488, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgsrc, *D.10488_2
	mov	r14, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10488_2 + 8B]
	mov	rbp, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10488_2 + 16B]
	mov	r15, QWORD PTR [rax+24]	# thr_bin_label, MEM[(void * *)D.10488_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10488_2 + 32B]
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10488_2 + 40B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	r12, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.10488_2 + 48B]
	mov	r13, QWORD PTR [rax+56]	# hist_cont, MEM[(void * *)D.10488_2 + 56B]
	movzx	eax, BYTE PTR [rbx+128]	#, imgsrc_3->widget.draggable
	mov	BYTE PTR [rsp+2], al	# %sfp,
	movzx	edx, BYTE PTR [r13+130]	#, hist_cont_17->widget.visible
	mov	BYTE PTR [rsp+3], dl	# %sfp,
	movzx	eax, WORD PTR [rbx+56]	#, imgsrc_3->widget.pos.x
	mov	WORD PTR [rsp+4], ax	# %sfp,
	movzx	edx, WORD PTR [rbx+58]	#, imgsrc_3->widget.pos.y
	mov	WORD PTR [rsp+6], dx	# %sfp,
	mov	rdi, rbx	#, imgsrc
	call	delete	#
	movzx	ecx, WORD PTR [rsp+6]	# src_y, %sfp
	movzx	edx, WORD PTR [rsp+4]	# src_x, %sfp
	mov	rsi, QWORD PTR [r14+144]	# imgdst_5->path, imgdst_5->path
	mov	rdi, rbx	#, imgsrc
	call	Image_new	#
	movzx	eax, BYTE PTR [rsp+2]	#, %sfp
	mov	BYTE PTR [rbx+128], al	# imgsrc_3->widget.draggable,
	movzx	edx, WORD PTR [rbx+60]	# D.10494, imgsrc_3->widget.pos.w
	movzx	eax, WORD PTR [rbx+62]	# D.10495, imgsrc_3->widget.pos.h
	cmp	dx, ax	# D.10494, D.10495
	jbe	.L18	#,
	cmp	dx, 1920	# D.10494,
	jbe	.L19	#,
	movzx	edx, dx	# D.10494, D.10494
	cvtsi2sd	xmm1, edx	# tmp92, D.10494
	movsd	xmm0, QWORD PTR .LC8[rip]	# tmp94,
	divsd	xmm0, xmm1	# scale, tmp92
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Image_scale	#
	jmp	.L19	#
.L18:
	cmp	ax, 600	# D.10495,
	jbe	.L19	#,
	movzx	eax, ax	# D.10495, D.10495
	cvtsi2sd	xmm1, eax	# tmp95, D.10495
	movsd	xmm0, QWORD PTR .LC9[rip]	# tmp97,
	divsd	xmm0, xmm1	# scale, tmp95
	mov	esi, 0	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbx	#, imgsrc
	call	Image_scale	#
.L19:
	mov	QWORD PTR [rbp+480], 0	# MEM[(struct Histogram *)histogram_7 + 336B].data,
	mov	QWORD PTR [rbp+312], 0	# MEM[(struct Histogram *)histogram_7 + 168B].data,
	mov	QWORD PTR [rbp+144], 0	# histogram_7->data,
	mov	rdi, rbp	#, histogram
	call	Histogram_refresh	#
	lea	rdi, [rbp+168]	# tmp98,
	call	Histogram_refresh	#
	lea	rdi, [rbp+336]	# tmp99,
	call	Histogram_refresh	#
	cmp	BYTE PTR [rsp+3], 0	# %sfp,
	jne	.L20	#,
	mov	esi, 0	#,
	mov	rdi, r13	#, hist_cont
	call	Container_setVisible	#
.L20:
	cmp	QWORD PTR [r12], 255	# *thr_value_15,
	ja	.L21	#,
	mov	edx, 4294967295	#,
	mov	QWORD PTR [r12], rdx	# *thr_value_15,
	mov	rax, QWORD PTR [r15+288]	# D.10514, thr_bin_label_9->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10514_44 + 7B],
	mov	rdi, r15	#, thr_bin_label
	call	Label_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
.L21:
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	mov	BYTE PTR [rax+132], 1	# screen_46(D)->need_reload,
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
.LFE95:
	.size	button_src_restore, .-button_src_restore
	.globl	button_src_to_dest
	.type	button_src_to_dest, @function
button_src_to_dest:
.LFB96:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10483, sender_1(D)->cparam
	mov	r14, QWORD PTR [rax]	# imgsrc, *D.10483_2
	mov	rbx, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10483_2 + 8B]
	movzx	r12d, BYTE PTR [rbx+128]	# draggable, imgdst_5->widget.draggable
	movzx	r13d, WORD PTR [rbx+56]	# posx, imgdst_5->widget.pos.x
	movzx	r15d, WORD PTR [rbx+58]	# posy, imgdst_5->widget.pos.y
	mov	rdi, rbx	#, imgdst
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, r14	#, imgsrc
	mov	rdi, rbx	#, imgdst
	call	Image_copy	#
	movzx	edx, r15w	# posy, posy
	movzx	esi, r13w	# posx, posx
	mov	rdi, rbx	#, imgdst
	call	Image_setPosition	#
	mov	BYTE PTR [rbx+128], r12b	# imgdst_5->widget.draggable, draggable
	mov	BYTE PTR [rbp+132], 1	# screen_13(D)->need_reload,
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
.LFE96:
	.size	button_src_to_dest, .-button_src_to_dest
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"%hd"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"button_brightness_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_brightness_change
	.type	button_brightness_change, @function
button_brightness_change:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10452, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10452_2, *D.10452_2
	mov	rdx, QWORD PTR [rdx+48]	#, MEM[(struct Image *)D.10453_3].widget.surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10452_2 + 8B], MEM[(void * *)D.10452_2 + 8B]
	mov	r13, QWORD PTR [rdx+48]	# imgdst, MEM[(struct Image *)D.10455_7].widget.surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.10452_2 + 16B]
	mov	rbx, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.10452_2 + 24B]
	mov	r14, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.10452_2 + 32B]
	mov	r15, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.10452_2 + 40B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L26	#,
	movzx	eax, WORD PTR [rbx]	# D.10459, *img_off_12
	cmp	ax, 250	# D.10459,
	jg	.L25	#,
	add	eax, 2	# tmp93,
	mov	WORD PTR [rbx], ax	# *img_off_12, tmp93
	jmp	.L28	#
.L26:
	movzx	eax, WORD PTR [rbx]	# D.10459, *img_off_12
	cmp	ax, -250	# D.10459,
	jl	.L25	#,
	sub	eax, 2	# tmp94,
	mov	WORD PTR [rbx], ax	# *img_off_12, tmp94
.L28:
	mov	rdi, QWORD PTR [rbp+288]	# tmp96, label_10->text_block.text
	add	rdi, 11	# tmp96,
	movsx	r8d, WORD PTR [rbx]	#, *img_off_12
	mov	ecx, OFFSET FLAT:.LC10	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	movzx	ecx, BYTE PTR [r15]	# *allow_of_16, *allow_of_16
	movsx	edx, WORD PTR [rbx]	# *img_off_12, *img_off_12
	movss	xmm0, DWORD PTR [r14]	#, *img_mul_14
	mov	rsi, r13	#, imgdst
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L29	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L29:
	mov	BYTE PTR [r12+132], 1	# screen_40(D)->need_reload,
.L25:
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
	.size	button_brightness_change, .-button_brightness_change
	.section	.rodata.str1.1
.LC15:
	.string	"%5.2f"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"button_contrast_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_contrast_change
	.type	button_contrast_change, @function
button_contrast_change:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10423, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10423_2, *D.10423_2
	mov	rdx, QWORD PTR [rdx+48]	#, MEM[(struct Image *)D.10424_3].widget.surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10423_2 + 8B], MEM[(void * *)D.10423_2 + 8B]
	mov	r13, QWORD PTR [rdx+48]	# imgdst, MEM[(struct Image *)D.10426_7].widget.surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.10423_2 + 16B]
	mov	r14, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.10423_2 + 24B]
	mov	rbx, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.10423_2 + 32B]
	mov	r15, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.10423_2 + 40B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L32	#,
	movss	xmm0, DWORD PTR [rbx]	# D.10430, *img_mul_14
	movss	xmm1, DWORD PTR .LC12[rip]	# tmp89,
	ucomiss	xmm1, xmm0	# tmp89, D.10430
	jbe	.L31	#,
	addss	xmm0, DWORD PTR .LC13[rip]	# tmp90,
	movss	DWORD PTR [rbx], xmm0	# *img_mul_14, tmp90
	jmp	.L35	#
.L32:
	movss	xmm0, DWORD PTR [rbx]	# D.10430, *img_mul_14
	ucomiss	xmm0, DWORD PTR .LC14[rip]	# D.10430,
	jb	.L31	#,
	subss	xmm0, DWORD PTR .LC13[rip]	# tmp92,
	movss	DWORD PTR [rbx], xmm0	# *img_mul_14, tmp92
.L35:
	movss	xmm0, DWORD PTR [rbx]	# tmp94, *img_mul_14
	cvtps2pd	xmm0, xmm0	# tmp94, tmp94
	mov	rdi, QWORD PTR [rbp+288]	# tmp95, label_10->text_block.text
	add	rdi, 11	# tmp95,
	mov	ecx, OFFSET FLAT:.LC15	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	movzx	ecx, BYTE PTR [r15]	# *allow_of_16, *allow_of_16
	movsx	edx, WORD PTR [r14]	# *img_off_12, *img_off_12
	movss	xmm0, DWORD PTR [rbx]	#, *img_mul_14
	mov	rsi, r13	#, imgdst
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L37	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L37:
	mov	BYTE PTR [r12+132], 1	# screen_36(D)->need_reload,
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
	.size	button_contrast_change, .-button_contrast_change
	.section	.rodata.str1.1
.LC17:
	.string	"przepe\305\202nienie"
.LC18:
	.string	"do skrajnych"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"button_overflow_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_overflow_change
	.type	button_overflow_change, @function
button_overflow_change:
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
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.10393, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10393_3, *D.10393_3
	mov	rdx, QWORD PTR [rdx+48]	#, MEM[(struct Image *)D.10394_4].widget.surf
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10393_3 + 8B], MEM[(void * *)D.10393_3 + 8B]
	mov	r13, QWORD PTR [rdx+48]	# imgdst, MEM[(struct Image *)D.10396_8].widget.surf
	mov	rbp, QWORD PTR [rax+16]	# label, MEM[(void * *)D.10393_3 + 16B]
	mov	r15, QWORD PTR [rax+24]	# img_off, MEM[(void * *)D.10393_3 + 24B]
	mov	r14, QWORD PTR [rax+32]	# img_mul, MEM[(void * *)D.10393_3 + 32B]
	mov	rbx, QWORD PTR [rax+40]	# allow_of, MEM[(void * *)D.10393_3 + 40B]
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	je	.L42	#,
	cmp	BYTE PTR [rbx], 0	# *allow_of_17,
	je	.L41	#,
	mov	BYTE PTR [rbx], 0	# *allow_of_17,
	mov	esi, OFFSET FLAT:.LC18	# iftmp.21,
	jmp	.L44	#
.L42:
	cmp	BYTE PTR [rbx], 0	# *allow_of_17,
	jne	.L41	#,
	mov	BYTE PTR [rbx], 1	# *allow_of_17,
	mov	esi, OFFSET FLAT:.LC17	# iftmp.21,
.L44:
	mov	rdi, QWORD PTR [rbp+288]	# tmp86, label_11->text_block.text
	add	rdi, 9	# tmp86,
	call	strcpy	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	movzx	ecx, BYTE PTR [rbx]	# *allow_of_17, *allow_of_17
	movsx	edx, WORD PTR [r15]	# *img_off_13, *img_off_13
	movss	xmm0, DWORD PTR [r14]	#, *img_mul_15
	mov	rsi, r13	#, imgdst
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L45	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L45:
	mov	BYTE PTR [r12+132], 1	# screen_34(D)->need_reload,
.L41:
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
	.size	button_overflow_change, .-button_overflow_change
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"button_brightness_reset() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n"
	.text
	.globl	button_brightness_reset
	.type	button_brightness_reset, @function
button_brightness_reset:
.LFB100:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10369, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax]	# *D.10369_3, *D.10369_3
	mov	rdi, QWORD PTR [rdx+48]	# imgsrc, MEM[(struct Image *)D.10370_4].widget.surf
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10369_3 + 8B], MEM[(void * *)D.10369_3 + 8B]
	mov	rsi, QWORD PTR [rdx+48]	# imgdst, MEM[(struct Image *)D.10372_8].widget.surf
	mov	r14, QWORD PTR [rax+16]	# label_off, MEM[(void * *)D.10369_3 + 16B]
	mov	r13, QWORD PTR [rax+24]	# label_mul, MEM[(void * *)D.10369_3 + 24B]
	mov	r12, QWORD PTR [rax+32]	# label_of, MEM[(void * *)D.10369_3 + 32B]
	mov	rbp, QWORD PTR [rax+40]	# img_off, MEM[(void * *)D.10369_3 + 40B]
	mov	rbx, QWORD PTR [rax+48]	# img_mul, MEM[(void * *)D.10369_3 + 48B]
	mov	r15, QWORD PTR [rax+56]	# allow_of, MEM[(void * *)D.10369_3 + 56B]
	mov	WORD PTR [rbp+0], 0	# *img_off_17,
	mov	DWORD PTR [rbx], 0x3f800000	# *img_mul_19,
	mov	BYTE PTR [r15], 0	# *allow_of_21,
	movsx	edx, WORD PTR [rbp+0]	# *img_off_17, *img_off_17
	mov	ecx, 0	#,
	movss	xmm0, DWORD PTR [rbx]	#, *img_mul_19
	call	GToolsPoint_apply_brightness_contrast	#
	test	al, al	# s
	je	.L48	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC21	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L48:
	mov	rdi, QWORD PTR [r14+288]	# tmp96, label_off_11->text_block.text
	add	rdi, 11	# tmp96,
	movsx	r8d, WORD PTR [rbp+0]	#, *img_off_17
	mov	ecx, OFFSET FLAT:.LC10	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	movss	xmm0, DWORD PTR [rbx]	# tmp98, *img_mul_19
	cvtps2pd	xmm0, xmm0	# tmp98, tmp98
	mov	rdi, QWORD PTR [r13+288]	# tmp99, label_mul_13->text_block.text
	add	rdi, 11	# tmp99,
	mov	ecx, OFFSET FLAT:.LC15	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	cmp	BYTE PTR [r15], 0	# *allow_of_21,
	mov	eax, OFFSET FLAT:.LC17	# tmp104,
	mov	esi, OFFSET FLAT:.LC18	# tmp103,
	cmovne	rsi, rax	# tmp103,, iftmp.20, tmp104
	mov	rdi, QWORD PTR [r12+288]	# tmp101, label_of_15->text_block.text
	add	rdi, 9	# tmp101,
	call	strcpy	#
	mov	rdi, r14	#, label_off
	call	Label_refresh	#
	mov	rdi, r13	#, label_mul
	call	Label_refresh	#
	mov	rdi, r12	#, label_of
	call	Label_refresh	#
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	mov	BYTE PTR [rax+132], 1	# screen_43(D)->need_reload,
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
.LFE100:
	.size	button_brightness_reset, .-button_brightness_reset
	.globl	button_dest_to_src
	.type	button_dest_to_src, @function
button_dest_to_src:
.LFB101:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10354, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# imgsrc, *D.10354_2
	mov	rdx, QWORD PTR [rax+8]	#, MEM[(void * *)D.10354_2 + 8B]
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10354_2 + 16B]
	mov	r12, QWORD PTR [rax+24]	# thr_bin_label, MEM[(void * *)D.10354_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10354_2 + 32B]
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10354_2 + 40B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	r14, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.10354_2 + 48B]
	movzx	eax, WORD PTR [rbp+56]	#, imgsrc_3->widget.pos.x
	mov	WORD PTR [rsp+36], ax	# %sfp,
	movzx	edx, WORD PTR [rbp+58]	#, imgsrc_3->widget.pos.y
	mov	WORD PTR [rsp+38], dx	# %sfp,
	movzx	r15d, BYTE PTR [rbp+128]	# draggable, imgsrc_3->widget.draggable
	movzx	r13d, BYTE PTR [rbx+130]	# hist_vis, histogram_7->widget.visible
	mov	rdi, rbp	#, imgsrc
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, QWORD PTR [rsp+8]	#, %sfp
	mov	rdi, rbp	#, imgsrc
	call	Image_copy	#
	movzx	edx, WORD PTR [rsp+38]	# posy, %sfp
	movzx	esi, WORD PTR [rsp+36]	# posx, %sfp
	mov	rdi, rbp	#, imgsrc
	call	Image_setPosition	#
	mov	BYTE PTR [rbp+128], r15b	# imgsrc_3->widget.draggable, draggable
	mov	eax, 4294967295	#,
	mov	QWORD PTR [r14], rax	# *thr_value_15,
	mov	QWORD PTR [rbx+480], 0	# MEM[(struct Histogram *)histogram_7 + 336B].data,
	mov	QWORD PTR [rbx+312], 0	# MEM[(struct Histogram *)histogram_7 + 168B].data,
	mov	QWORD PTR [rbx+144], 0	# histogram_7->data,
	mov	rdi, rbx	#, histogram
	call	Histogram_refresh	#
	lea	rdi, [rbx+168]	# tmp82,
	call	Histogram_refresh	#
	lea	rdi, [rbx+336]	# tmp83,
	call	Histogram_refresh	#
	test	r13b, r13b	# hist_vis
	jne	.L53	#,
	mov	BYTE PTR [rbx+466], 0	# MEM[(struct Histogram *)histogram_7 + 336B].widget.visible,
	mov	BYTE PTR [rbx+298], 0	# MEM[(struct Histogram *)histogram_7 + 168B].widget.visible,
	mov	BYTE PTR [rbx+130], 0	# histogram_7->widget.visible,
.L53:
	mov	rax, QWORD PTR [r12+288]	# D.10367, thr_bin_label_9->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10367_34 + 7B],
	mov	rdi, r12	#, thr_bin_label
	call	Label_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	rdx, QWORD PTR [rsp+40]	#, %sfp
	mov	BYTE PTR [rdx+132], 1	# screen_36(D)->need_reload,
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
.LFE101:
	.size	button_dest_to_src, .-button_dest_to_src
	.section	.rodata.str1.1
.LC22:
	.string	"wb"
.LC23:
	.string	"img/00_file_src.bmp"
	.text
	.globl	button_src_save
	.type	button_src_save, @function
button_src_save:
.LFB102:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgsrc, *D.10351_2
	mov	esi, OFFSET FLAT:.LC22	#,
	mov	edi, OFFSET FLAT:.LC23	#,
	call	SDL_RWFromFile	#
	mov	rdi, QWORD PTR [rbx+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	mov	edx, 1	#,
	mov	rsi, rax	#, D.10352
	call	SDL_SaveBMP_RW	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	button_src_save, .-button_src_save
	.section	.rodata.str1.1
.LC24:
	.string	"img/00_file_dest.bmp"
	.text
	.globl	button_dest_save
	.type	button_dest_save, @function
button_dest_save:
.LFB103:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# imgdst, *D.10348_2
	mov	esi, OFFSET FLAT:.LC22	#,
	mov	edi, OFFSET FLAT:.LC24	#,
	call	SDL_RWFromFile	#
	mov	rdi, QWORD PTR [rbx+48]	# imgdst_3->widget.surf, imgdst_3->widget.surf
	mov	edx, 1	#,
	mov	rsi, rax	#, D.10349
	call	SDL_SaveBMP_RW	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	button_dest_save, .-button_dest_save
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"button_destaturize_std() >> Error in GToolsPoint_desaturize_std() [exited with code %d]\n"
	.text
	.globl	button_destaturize_std
	.type	button_destaturize_std, @function
button_destaturize_std:
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.10340, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10340_2 + 8B], MEM[(void * *)D.10340_2 + 8B]
	mov	rsi, QWORD PTR [rdx+48]	# imgdst_5->widget.surf, imgdst_5->widget.surf
	mov	rax, QWORD PTR [rax]	# *D.10340_2, *D.10340_2
	mov	rdi, QWORD PTR [rax+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	call	GToolsPoint_desaturize_std	#
	test	al, al	# s
	je	.L60	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC25	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L59	#
.L60:
	mov	BYTE PTR [rbx+132], 1	# screen_11(D)->need_reload,
.L59:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	button_destaturize_std, .-button_destaturize_std
	.section	.rodata.str1.1
.LC26:
	.string	"Otsu"
.LC27:
	.string	"tom3k.info"
	.text
	.globl	button_bin_algo_toggle
	.type	button_bin_algo_toggle, @function
button_bin_algo_toggle:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10319, sender_2(D)->cparam
	mov	rbx, QWORD PTR [rax]	# thr_bin_label, *D.10319_3
	mov	rbp, QWORD PTR [rax+8]	# thr_bin_algo_label, MEM[(void * *)D.10319_3 + 8B]
	mov	r14, QWORD PTR [rax+16]	# thr_up_butimg, MEM[(void * *)D.10319_3 + 16B]
	mov	r13, QWORD PTR [rax+24]	# thr_dn_butimg, MEM[(void * *)D.10319_3 + 24B]
	mov	rdx, QWORD PTR [rax+32]	# t_algo, MEM[(void * *)D.10319_3 + 32B]
	mov	rax, QWORD PTR [rax+40]	# thr_value, MEM[(void * *)D.10319_3 + 40B]
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	je	.L64	#,
	cmp	BYTE PTR [rdx], 0	# *t_algo_12,
	jne	.L63	#,
	mov	BYTE PTR [rdx], 1	# *t_algo_12,
	jmp	.L66	#
.L64:
	cmp	BYTE PTR [rdx], 0	# *t_algo_12,
	.p2align 4,,2
	je	.L63	#,
	mov	BYTE PTR [rdx], 0	# *t_algo_12,
.L66:
	mov	ecx, 4294967295	#,
	mov	QWORD PTR [rax], rcx	# *thr_value_14,
	cmp	BYTE PTR [rdx], 0	# *t_algo_12,
	mov	eax, OFFSET FLAT:.LC26	# tmp79,
	mov	ecx, OFFSET FLAT:.LC27	# tmp78,
	cmovne	rcx, rax	# tmp78,, iftmp.17, tmp79
	mov	rdi, QWORD PTR [rbp+288]	# tmp76, thr_bin_algo_label_6->text_block.text
	add	rdi, 10	# tmp76,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, thr_bin_algo_label
	call	Label_refresh	#
	mov	rax, QWORD PTR [rbx+288]	# D.10337, thr_bin_label_4->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10337_23 + 7B],
	mov	rdi, rbx	#, thr_bin_label
	call	Label_refresh	#
	mov	esi, 0	#,
	mov	rdi, r14	#, thr_up_butimg
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, r13	#, thr_dn_butimg
	call	ButtonImage_setEnabled	#
	mov	BYTE PTR [r12+132], 1	# screen_25(D)->need_reload,
.L63:
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
	.size	button_bin_algo_toggle, .-button_bin_algo_toggle
	.section	.rodata.str1.1
.LC28:
	.string	"%5s"
	.text
	.globl	button_used_hist_toggle
	.type	button_used_hist_toggle, @function
button_used_hist_toggle:
.LFB106:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10296, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# lab_used_hist, *D.10296_2
	mov	rbx, QWORD PTR [rax+8]	# thr_bin_label, MEM[(void * *)D.10296_2 + 8B]
	mov	r14, QWORD PTR [rax+16]	# thr_up_butimg, MEM[(void * *)D.10296_2 + 16B]
	mov	r13, QWORD PTR [rax+24]	# thr_dn_butimg, MEM[(void * *)D.10296_2 + 24B]
	mov	rdx, QWORD PTR [rax+32]	# num_hist, MEM[(void * *)D.10296_2 + 32B]
	mov	rcx, QWORD PTR [rax+40]	# hist_names, MEM[(void * *)D.10296_2 + 40B]
	mov	rax, QWORD PTR [rax+48]	# thr_value, MEM[(void * *)D.10296_2 + 48B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L71	#,
	movzx	esi, BYTE PTR [rdx]	# D.10300, *num_hist_11
	test	sil, sil	# D.10300
	je	.L70	#,
	sub	esi, 1	# tmp82,
	mov	BYTE PTR [rdx], sil	# *num_hist_11, tmp82
	jmp	.L73	#
.L71:
	movzx	esi, BYTE PTR [rdx]	# D.10300, *num_hist_11
	cmp	sil, 1	# D.10300,
	ja	.L70	#,
	add	esi, 1	# tmp83,
	mov	BYTE PTR [rdx], sil	# *num_hist_11, tmp83
.L73:
	mov	esi, 4294967295	#,
	mov	QWORD PTR [rax], rsi	# *thr_value_15,
	movzx	eax, BYTE PTR [rdx]	# *num_hist_11, *num_hist_11
	mov	rdi, QWORD PTR [rbp+288]	# tmp86, lab_used_hist_3->text_block.text
	add	rdi, 18	# tmp86,
	mov	r8, QWORD PTR [rcx+rax*8]	#, *D.10312_26
	mov	ecx, OFFSET FLAT:.LC28	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, lab_used_hist
	call	Label_refresh	#
	mov	rax, QWORD PTR [rbx+288]	# D.10316, thr_bin_label_5->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10316_30 + 7B],
	mov	rdi, rbx	#, thr_bin_label
	call	Label_refresh	#
	mov	esi, 0	#,
	mov	rdi, r14	#, thr_up_butimg
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, r13	#, thr_dn_butimg
	call	ButtonImage_setEnabled	#
	mov	BYTE PTR [r12+132], 1	# screen_32(D)->need_reload,
.L70:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	button_used_hist_toggle, .-button_used_hist_toggle
	.section	.rodata.str1.1
.LC29:
	.string	"%Lu"
	.text
	.globl	button_threshold_change
	.type	button_threshold_change, @function
button_threshold_change:
.LFB107:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rax, QWORD PTR [rdi+88]	# D.10277, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# thr_bin_label, *D.10277_2
	mov	rdx, QWORD PTR [rax+8]	# thr_value, MEM[(void * *)D.10277_2 + 8B]
	mov	rax, QWORD PTR [rdx]	# D.10278, *thr_value_5
	cmp	rax, 255	# D.10278,
	ja	.L75	#,
	mov	rbp, rsi	# screen, screen
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L77	#,
	cmp	rax, 254	# D.10278,
	ja	.L75	#,
	add	rax, 1	# tmp71,
	mov	QWORD PTR [rdx], rax	# *thr_value_5, tmp71
	jmp	.L78	#
.L77:
	test	rax, rax	# D.10278
	je	.L75	#,
	sub	rax, 1	# tmp72,
	mov	QWORD PTR [rdx], rax	# *thr_value_5, tmp72
.L78:
	mov	rdi, QWORD PTR [rbx+288]	# tmp73, thr_bin_label_3->text_block.text
	add	rdi, 7	# tmp73,
	mov	r8, QWORD PTR [rdx]	#, *thr_value_5
	mov	ecx, OFFSET FLAT:.LC29	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, thr_bin_label
	call	Label_refresh	#
	mov	BYTE PTR [rbp+132], 1	# screen_17(D)->need_reload,
.L75:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	button_threshold_change, .-button_threshold_change
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"button_create_histograms_click() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n"
	.text
	.globl	button_create_histograms_click
	.type	button_create_histograms_click, @function
button_create_histograms_click:
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
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.10265, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.10265_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10265_2 + 16B]
	mov	r13, QWORD PTR [rax+24]	# hist_cont, MEM[(void * *)D.10265_2 + 24B]
	mov	rax, QWORD PTR [rax]	# *D.10265_2, *D.10265_2
	mov	rdi, QWORD PTR [rax+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	mov	rsi, rbp	#, colors
	call	GToolsPoint_create_histograms	#
	test	al, al	# s
	je	.L81	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC30	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L80	#
.L81:
	mov	rax, QWORD PTR [rbp+0]	# D.10272, *colors_5
	mov	QWORD PTR [rbx+144], rax	# histogram_7->data, D.10272
	mov	rax, QWORD PTR [rbp+8]	# D.10274, MEM[(unsigned int * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+312], rax	# MEM[(struct Histogram *)histogram_7 + 168B].data, D.10274
	mov	rax, QWORD PTR [rbp+16]	# D.10276, MEM[(unsigned int * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+480], rax	# MEM[(struct Histogram *)histogram_7 + 336B].data, D.10276
	mov	rdi, rbx	#, histogram
	call	Histogram_refresh	#
	lea	rdi, [rbx+168]	# tmp78,
	call	Histogram_refresh	#
	lea	rdi, [rbx+336]	# tmp79,
	call	Histogram_refresh	#
	mov	esi, 1	#,
	mov	rdi, r13	#, hist_cont
	call	Container_setVisible	#
	mov	BYTE PTR [r12+132], 1	# screen_21(D)->need_reload,
.L80:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	button_create_histograms_click, .-button_create_histograms_click
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"button_bin_create_histograms() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n"
	.align 8
.LC32:
	.string	"button_bin_create_histograms() >> Error in GToolsPoint_calculate_binary_threshold() [exited with code %d]\n"
	.text
	.globl	button_bin_create_histograms
	.type	button_bin_create_histograms, @function
button_bin_create_histograms:
.LFB110:
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
	mov	r15, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.10217, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax+8]	# colors, MEM[(void * *)D.10217_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# histogram, MEM[(void * *)D.10217_2 + 16B]
	mov	rdx, QWORD PTR [rax+24]	#, MEM[(void * *)D.10217_2 + 24B]
	mov	QWORD PTR [rsp], rdx	# %sfp,
	mov	rcx, QWORD PTR [rax+32]	#, MEM[(void * *)D.10217_2 + 32B]
	mov	QWORD PTR [rsp+16], rcx	# %sfp,
	mov	rdx, QWORD PTR [rax+40]	#, MEM[(void * *)D.10217_2 + 40B]
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
	mov	r12, QWORD PTR [rax+48]	# thr_bin_label, MEM[(void * *)D.10217_2 + 48B]
	mov	r13, QWORD PTR [rax+56]	# thr_value, MEM[(void * *)D.10217_2 + 56B]
	mov	rcx, QWORD PTR [rax+64]	#, MEM[(void * *)D.10217_2 + 64B]
	mov	QWORD PTR [rsp+8], rcx	# %sfp,
	mov	r14, QWORD PTR [rax+72]	# t_algo, MEM[(void * *)D.10217_2 + 72B]
	mov	rax, QWORD PTR [rax]	# *D.10217_2, *D.10217_2
	mov	rdi, QWORD PTR [rax+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	mov	rsi, rbp	#, colors
	call	GToolsPoint_create_histograms	#
	test	al, al	# s
	je	.L85	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC31	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L84	#
.L85:
	mov	BYTE PTR [r15+132], 1	# screen_26(D)->need_reload,
	mov	rax, QWORD PTR [rbp+0]	# D.10224, *colors_5
	mov	QWORD PTR [rbx+144], rax	# histogram_7->data, D.10224
	mov	rax, QWORD PTR [rbp+8]	# D.10226, MEM[(unsigned int * *)colors_5 + 8B]
	mov	QWORD PTR [rbx+312], rax	# MEM[(struct Histogram *)histogram_7 + 168B].data, D.10226
	mov	rax, QWORD PTR [rbp+16]	# D.10228, MEM[(unsigned int * *)colors_5 + 16B]
	mov	QWORD PTR [rbx+480], rax	# MEM[(struct Histogram *)histogram_7 + 336B].data, D.10228
	mov	rdi, rbx	#, histogram
	call	Histogram_refresh	#
	lea	rdi, [rbx+168]	# tmp98,
	call	Histogram_refresh	#
	lea	rdi, [rbx+336]	# tmp99,
	call	Histogram_refresh	#
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp]	#, %sfp
	call	Container_setVisible	#
	movzx	edx, BYTE PTR [r14]	# *t_algo_21, *t_algo_21
	mov	rcx, QWORD PTR [rsp+8]	#, %sfp
	movzx	eax, BYTE PTR [rcx]	# *num_hist_19, *num_hist_19
	lea	rcx, [rax+rax*4]	# tmp104,
	lea	rax, [rax+rcx*4]	# tmp106,
	mov	rdi, QWORD PTR [rbx+144+rax*8]	# D.10234_39->data, D.10234_39->data
	mov	rsi, r13	#, thr_value
	call	GToolsPoint_calculate_binary_threshold	#
	test	al, al	# s
	je	.L87	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC32	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	rax, QWORD PTR [r12+288]	# D.10238, thr_bin_label_15->text_block.text
	mov	BYTE PTR [rax+7], 0	# MEM[(char *)D.10238_44 + 7B],
	mov	rdi, r12	#, thr_bin_label
	call	Label_refresh	#
	jmp	.L84	#
.L87:
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+24]	#, %sfp
	call	ButtonImage_setEnabled	#
	mov	rdi, QWORD PTR [r12+288]	# tmp111, thr_bin_label_15->text_block.text
	add	rdi, 7	# tmp111,
	mov	r8, QWORD PTR [r13+0]	#, *thr_value_17
	mov	ecx, OFFSET FLAT:.LC29	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, r12	#, thr_bin_label
	call	Label_refresh	#
.L84:
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
.LFE110:
	.size	button_bin_create_histograms, .-button_bin_create_histograms
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"button_threshold_apply() >> Error in GToolsPoint_apply_bin_threshold() [exited with code %d]\n"
	.text
	.globl	button_threshold_apply
	.type	button_threshold_apply, @function
button_threshold_apply:
.LFB111:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.10206, sender_1(D)->cparam
	mov	rcx, QWORD PTR [rax]	# imgsrc, *D.10206_2
	mov	rsi, QWORD PTR [rax+8]	# imgdst, MEM[(void * *)D.10206_2 + 8B]
	mov	rax, QWORD PTR [rax+16]	# MEM[(void * *)D.10206_2 + 16B], MEM[(void * *)D.10206_2 + 16B]
	mov	rdx, QWORD PTR [rax]	# D.10207, *thr_value_7
	cmp	rdx, 255	# D.10207,
	ja	.L89	#,
	mov	rsi, QWORD PTR [rsi+48]	# imgdst_5->widget.surf, imgdst_5->widget.surf
	mov	rdi, QWORD PTR [rcx+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	call	GToolsPoint_apply_bin_threshold	#
	test	al, al	# s
	je	.L91	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC33	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L89	#
.L91:
	mov	BYTE PTR [rbx+132], 1	# screen_15(D)->need_reload,
.L89:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	button_threshold_apply, .-button_threshold_apply
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"In DESTINATION:\n\tBpp=%d\n\tpitch=%5hu\n\twidth*Bpp=%u\n\twidth=%5hu\n\theight=%5hu\n\trefcount=%d\n"
	.align 8
.LC35:
	.string	"button_dest_negative() >> Error in GToolsPoint_negative() [exited with code %d]\n"
	.text
	.globl	button_dest_negative
	.type	button_dest_negative, @function
button_dest_negative:
.LFB112:
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
	mov	rax, QWORD PTR [rdi+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rax, QWORD PTR [rax]	# *D.10191_2, *D.10191_2
	mov	rbx, QWORD PTR [rax+48]	# surf, imgdst_3->widget.surf
	mov	r9d, DWORD PTR [rbx+16]	# D.10194, surf_4->w
	mov	rax, QWORD PTR [rbx+8]	# surf_4->format, surf_4->format
	movzx	ecx, BYTE PTR [rax+9]	# D.10197, D.10195_9->BytesPerPixel
	movzx	r8d, WORD PTR [rbx+24]	# surf_4->pitch, surf_4->pitch
	mov	eax, DWORD PTR [rbx+84]	# surf_4->refcount, surf_4->refcount
	mov	DWORD PTR [rsp+16], eax	#, surf_4->refcount
	mov	eax, DWORD PTR [rbx+20]	# surf_4->h, surf_4->h
	mov	DWORD PTR [rsp+8], eax	#, surf_4->h
	mov	DWORD PTR [rsp], r9d	#, D.10194
	imul	r9d, ecx	#, D.10197
	mov	edx, OFFSET FLAT:.LC34	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, rbx	#, surf
	call	GToolsPoint_negative	#
	test	al, al	# s
	je	.L94	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L93	#
.L94:
	mov	BYTE PTR [rbp+132], 1	# screen_22(D)->need_reload,
.L93:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	button_dest_negative, .-button_dest_negative
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"button_dest_splotfilter() >> Error in GToolsSplotFilter_applyFilter() [exited with code %d]\n"
	.text
	.globl	button_dest_splotfilter
	.type	button_dest_splotfilter, @function
button_dest_splotfilter:
.LFB113:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.10183, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.10183_2 + 8B], MEM[(void * *)D.10183_2 + 8B]
	mov	rdx, QWORD PTR [rdx+48]	# imgdst_5->widget.surf, imgdst_5->widget.surf
	mov	rcx, QWORD PTR [rax]	# *D.10183_2, *D.10183_2
	mov	rsi, QWORD PTR [rcx+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	mov	rdi, QWORD PTR [rax+16]	# MEM[(void * *)D.10183_2 + 16B], MEM[(void * *)D.10183_2 + 16B]
	call	GToolsSplotFilter_applyFilter	#
	test	al, al	# s
	je	.L98	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L97	#
.L98:
	mov	BYTE PTR [rbx+132], 1	# screen_13(D)->need_reload,
.L97:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	button_dest_splotfilter, .-button_dest_splotfilter
	.section	.rodata.str1.1
.LC37:
	.string	"%6.2f"
	.text
	.globl	button_change_filter_weight
	.type	button_change_filter_weight, @function
button_change_filter_weight:
.LFB114:
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
	mov	rdx, QWORD PTR [rdi+96]	# sender_2(D)->vparam, sender_2(D)->vparam
	mov	rbp, QWORD PTR [rdx]	# weight_label, *D.10159_3
	mov	rdx, QWORD PTR [rdi+88]	# D.10160, sender_2(D)->cparam
	mov	r12, QWORD PTR [rdx]	# predef_label, *D.10160_5
	mov	rbx, QWORD PTR [rdx+8]	# gtsf, MEM[(void * *)D.10160_5 + 8B]
	movzx	r14d, WORD PTR [rbx+16]	# prev_ind, gtsf_8->predef_filter_ind
	mov	eax, DWORD PTR [rdi+116]	# D.10161, sender_2(D)->id
	test	al, 1	# D.10161,
	je	.L102	#,
	lea	r15d, [rax-1]	# tmp86,
	shr	r15d	# D.10166
	movzx	esi, r15b	# tmp87, D.10166
	mov	rdi, rbx	#, gtsf
	call	GToolsSplotFilter_increaseWeightAt	#
	test	al, al	# D.10168
	je	.L101	#,
	jmp	.L104	#
.L102:
	mov	r15d, eax	# D.10172, D.10161
	shr	r15d	# D.10172
	movzx	esi, r15b	# tmp88, D.10172
	mov	rdi, rbx	#, gtsf
	call	GToolsSplotFilter_decreaseWeightAt	#
	test	al, al	# D.10173
	je	.L101	#,
.L104:
	cmp	r14w, -1	# prev_ind,
	je	.L105	#,
	mov	rax, QWORD PTR [r12+288]	# predef_label_6->text_block.text, predef_label_6->text_block.text
	mov	DWORD PTR [rax], 977556563	#* predef_label_6->text_block.text,
	mov	WORD PTR [rax+4], 32	#,
	mov	rdi, r12	#, predef_label
	call	Label_refresh	#
.L105:
	movzx	r15d, r15b	# w, w
	movss	xmm0, DWORD PTR [rbx+20+r15*4]	# tmp93, gtsf_8->weight
	cvtps2pd	xmm0, xmm0	# tmp93, tmp93
	mov	rdi, QWORD PTR [rbp+288]	# weight_label_4->text_block.text, weight_label_4->text_block.text
	mov	r8d, OFFSET FLAT:.LC37	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 7	#,
	mov	eax, 1	#,
	call	__snprintf_chk	#
	mov	rdi, rbp	#, weight_label
	call	Label_refresh	#
	mov	BYTE PTR [r13+132], 1	# screen_28(D)->need_reload,
.L101:
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
.LFE114:
	.size	button_change_filter_weight, .-button_change_filter_weight
	.section	.rodata.str1.1
.LC38:
	.string	"%s"
	.text
	.globl	button_change_filter_predef
	.type	button_change_filter_predef, @function
button_change_filter_predef:
.LFB115:
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
	mov	rax, QWORD PTR [rdi+88]	# D.10137, sender_2(D)->cparam
	mov	rbx, QWORD PTR [rax]	# predef_label, *D.10137_3
	mov	r12, QWORD PTR [rax+8]	# gtsf, MEM[(void * *)D.10137_3 + 8B]
	mov	rbp, QWORD PTR [rax+16]	# weight_label, MEM[(void * *)D.10137_3 + 16B]
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	je	.L108	#,
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_decreaseFilterInd	#
	test	al, al	# D.10141
	jne	.L110	#,
	.p2align 4,,3
	jmp	.L107	#
.L108:
	mov	rdi, r12	#, gtsf
	.p2align 4,,6
	call	GToolsSplotFilter_increaseFilterInd	#
	test	al, al	# D.10145
	.p2align 4,,3
	je	.L107	#,
.L110:
	mov	rdi, r12	#, gtsf
	call	GToolsSplotFilter_getFilterName	#
	mov	rdi, QWORD PTR [rbx+288]	# tmp110, predef_label_4->text_block.text
	add	rdi, 5	# tmp110,
	mov	rcx, rax	#, D.10148
	mov	edx, OFFSET FLAT:.LC38	#,
	mov	esi, 32	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	rdi, rbx	#, predef_label
	call	Label_refresh	#
	mov	ebx, 0	# ivtmp.101,
	mov	r13, -1	# tmp114,
.L111:
	movss	xmm0, DWORD PTR [r12+20+rbx]	# tmp112, MEM[base: gtsf_6, index: ivtmp.101_52, offset: 20B]
	cvtps2pd	xmm0, xmm0	# tmp112, tmp112
	mov	rdi, QWORD PTR [rbp+288]	# MEM[base: D.10156_21, offset: 288B], MEM[base: D.10156_21, offset: 288B]
	mov	r8d, OFFSET FLAT:.LC37	#,
	mov	rcx, r13	#, tmp114
	mov	edx, 1	#,
	mov	esi, 7	#,
	mov	eax, 1	#,
	call	__snprintf_chk	#
	mov	rdi, rbp	#, ivtmp.105
	call	Label_refresh	#
	add	rbx, 4	# ivtmp.101,
	add	rbp, 344	# ivtmp.105,
	cmp	rbx, 36	# ivtmp.101,
	jne	.L111	#,
	mov	BYTE PTR [r14+132], 1	# screen_27(D)->need_reload,
.L107:
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
.LFE115:
	.size	button_change_filter_predef, .-button_change_filter_predef
	.globl	button_view_click
	.type	button_view_click, @function
button_view_click:
.LFB116:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rax, QWORD PTR [rdi+96]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# D.10129, *D.10128_2
	test	rbx, rbx	# D.10129
	je	.L114	#,
	mov	r12, rsi	# screen, screen
	cmp	BYTE PTR [rbx+130], 0	# MEM[(struct Container *)D.10129_3].widget.visible,
	sete	bpl	#, tmp68
	movzx	esi, bpl	# D.10132, tmp68
	mov	rdi, rbx	#, D.10129
	call	Container_setVisible	#
	test	bpl, bpl	# tmp68
	je	.L116	#,
	mov	QWORD PTR [r12+64], rbx	# screen_10(D)->widget_ontop, D.10129
.L116:
	mov	BYTE PTR [r12+132], 1	# screen_10(D)->need_reload,
.L114:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	button_view_click, .-button_view_click
	.section	.rodata.str1.1
.LC39:
	.string	"%3hu"
	.text
	.globl	button_change_strelem_size
	.type	button_change_strelem_size, @function
button_change_strelem_size:
.LFB117:
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
	mov	rax, QWORD PTR [rdi+96]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	r13, QWORD PTR [rax]	# label, *D.10102_2
	mov	rax, QWORD PTR [rdi+88]	# sender_1(D)->cparam, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# pdb, *D.10103_4
	mov	eax, DWORD PTR [rdi+116]	# sender_1(D)->id, sender_1(D)->id
	cmp	eax, 1	# sender_1(D)->id,
	je	.L121	#,
	cmp	eax, 1	# sender_1(D)->id,
	jb	.L120	#,
	cmp	eax, 2	# sender_1(D)->id,
	je	.L122	#,
	cmp	eax, 3	# sender_1(D)->id,
	.p2align 4,,2
	jne	.L118	#,
	.p2align 4,,5
	jmp	.L123	#
.L120:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_increaseActY	#
	cmp	BYTE PTR [rbp+132], 0	# pdb_5->grid.container.widget.need_reload,
	jne	.L124	#,
	jmp	.L118	#
.L121:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_decreaseActY	#
	cmp	BYTE PTR [rbp+132], 0	# pdb_5->grid.container.widget.need_reload,
	jne	.L124	#,
	jmp	.L118	#
.L122:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_increaseActX	#
	cmp	BYTE PTR [rbp+132], 0	# pdb_5->grid.container.widget.need_reload,
	jne	.L124	#,
	jmp	.L118	#
.L123:
	mov	esi, 1	#,
	mov	rdi, rbp	#, pdb
	call	PixelDrawBox_decreaseActX	#
	cmp	BYTE PTR [rbp+132], 0	# pdb_5->grid.container.widget.need_reload,
	je	.L118	#,
.L124:
	cmp	DWORD PTR [rbx+116], 1	# sender_1(D)->id,
	ja	.L125	#,
	mov	rdi, QWORD PTR [r13+288]	# label_3->text_block.text, label_3->text_block.text
	movzx	r9d, WORD PTR [rbp+196]	#, pdb_5->actY
	mov	r8d, OFFSET FLAT:.LC39	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 4	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	jmp	.L126	#
.L125:
	mov	rdi, QWORD PTR [r13+288]	# label_3->text_block.text, label_3->text_block.text
	movzx	r9d, WORD PTR [rbp+194]	#, pdb_5->actX
	mov	r8d, OFFSET FLAT:.LC39	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 4	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
.L126:
	mov	rdi, r13	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_23(D)->need_reload,
.L118:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	button_change_strelem_size, .-button_change_strelem_size
	.globl	button_dilate_click
	.type	button_dilate_click, @function
button_dilate_click:
.LFB118:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	edx, 0	# iftmp.10,
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	jne	.L129	#,
	mov	rax, QWORD PTR [rdi+88]	# sender_2(D)->cparam, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax+16]	# iftmp.10, MEM[(void * *)D.10092_4 + 16B]
.L129:
	mov	rax, QWORD PTR [rdi+88]	# D.10092, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax+8]	# MEM[(void * *)D.10092_7 + 8B], MEM[(void * *)D.10092_7 + 8B]
	mov	rsi, QWORD PTR [rcx+48]	# MEM[(struct Image *)D.10095_9].widget.surf, MEM[(struct Image *)D.10095_9].widget.surf
	mov	rax, QWORD PTR [rax]	# *D.10092_7, *D.10092_7
	mov	rdi, QWORD PTR [rax+48]	# MEM[(struct Image *)D.10097_12].widget.surf, MEM[(struct Image *)D.10097_12].widget.surf
	call	GToolsMorph_dilate	#
	test	al, al	# D.10099
	jne	.L128	#,
	mov	BYTE PTR [rbx+132], 1	# screen_15(D)->need_reload,
.L128:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	button_dilate_click, .-button_dilate_click
	.globl	button_erode_click
	.type	button_erode_click, @function
button_erode_click:
.LFB119:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	edx, 0	# iftmp.9,
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	jne	.L134	#,
	mov	rax, QWORD PTR [rdi+88]	# sender_2(D)->cparam, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax+16]	# iftmp.9, MEM[(void * *)D.10078_4 + 16B]
.L134:
	mov	rax, QWORD PTR [rdi+88]	# D.10078, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax+8]	# MEM[(void * *)D.10078_7 + 8B], MEM[(void * *)D.10078_7 + 8B]
	mov	rsi, QWORD PTR [rcx+48]	# MEM[(struct Image *)D.10081_9].widget.surf, MEM[(struct Image *)D.10081_9].widget.surf
	mov	rax, QWORD PTR [rax]	# *D.10078_7, *D.10078_7
	mov	rdi, QWORD PTR [rax+48]	# MEM[(struct Image *)D.10083_12].widget.surf, MEM[(struct Image *)D.10083_12].widget.surf
	call	GToolsMorph_erode	#
	test	al, al	# D.10085
	jne	.L133	#,
	mov	BYTE PTR [rbx+132], 1	# screen_15(D)->need_reload,
.L133:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	button_erode_click, .-button_erode_click
	.globl	button_morph_open_click
	.type	button_morph_open_click, @function
button_morph_open_click:
.LFB120:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	edx, 0	# iftmp.8,
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	jne	.L139	#,
	mov	rax, QWORD PTR [rdi+88]	# sender_2(D)->cparam, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax+16]	# iftmp.8, MEM[(void * *)D.10064_4 + 16B]
.L139:
	mov	rax, QWORD PTR [rdi+88]	# D.10064, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax+8]	# MEM[(void * *)D.10064_7 + 8B], MEM[(void * *)D.10064_7 + 8B]
	mov	rsi, QWORD PTR [rcx+48]	# MEM[(struct Image *)D.10067_9].widget.surf, MEM[(struct Image *)D.10067_9].widget.surf
	mov	rax, QWORD PTR [rax]	# *D.10064_7, *D.10064_7
	mov	rdi, QWORD PTR [rax+48]	# MEM[(struct Image *)D.10069_12].widget.surf, MEM[(struct Image *)D.10069_12].widget.surf
	call	GToolsMorph_open	#
	test	al, al	# D.10071
	jne	.L138	#,
	mov	BYTE PTR [rbx+132], 1	# screen_15(D)->need_reload,
.L138:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE120:
	.size	button_morph_open_click, .-button_morph_open_click
	.globl	button_morph_close_click
	.type	button_morph_close_click, @function
button_morph_close_click:
.LFB121:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	edx, 0	# iftmp.7,
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	jne	.L144	#,
	mov	rax, QWORD PTR [rdi+88]	# sender_2(D)->cparam, sender_2(D)->cparam
	mov	rdx, QWORD PTR [rax+16]	# iftmp.7, MEM[(void * *)D.10050_4 + 16B]
.L144:
	mov	rax, QWORD PTR [rdi+88]	# D.10050, sender_2(D)->cparam
	mov	rcx, QWORD PTR [rax+8]	# MEM[(void * *)D.10050_7 + 8B], MEM[(void * *)D.10050_7 + 8B]
	mov	rsi, QWORD PTR [rcx+48]	# MEM[(struct Image *)D.10053_9].widget.surf, MEM[(struct Image *)D.10053_9].widget.surf
	mov	rax, QWORD PTR [rax]	# *D.10050_7, *D.10050_7
	mov	rdi, QWORD PTR [rax+48]	# MEM[(struct Image *)D.10055_12].widget.surf, MEM[(struct Image *)D.10055_12].widget.surf
	call	GToolsMorph_close	#
	test	al, al	# D.10057
	jne	.L143	#,
	mov	BYTE PTR [rbx+132], 1	# screen_15(D)->need_reload,
.L143:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE121:
	.size	button_morph_close_click, .-button_morph_close_click
	.section	.rodata.str1.1
.LC40:
	.string	"%5hu"
	.text
	.globl	button_change_reconst_limit
	.type	button_change_reconst_limit, @function
button_change_reconst_limit:
.LFB122:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+96]	# D.10029, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10029_2
	mov	rax, QWORD PTR [rax+8]	# limit, MEM[(void * *)D.10029_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L149	#,
	movzx	edx, WORD PTR [rax]	# D.10033, *limit_5
	cmp	dx, 9999	# D.10033,
	ja	.L148	#,
	add	edx, 5	# tmp72,
	mov	WORD PTR [rax], dx	# *limit_5, tmp72
	jmp	.L151	#
.L149:
	movzx	edx, WORD PTR [rax]	# D.10033, *limit_5
	cmp	dx, 5	# D.10033,
	jbe	.L148	#,
	sub	edx, 5	# tmp73,
	mov	WORD PTR [rax], dx	# *limit_5, tmp73
.L151:
	mov	rdi, QWORD PTR [rbx+288]	# label_3->text_block.text, label_3->text_block.text
	movzx	r8d, WORD PTR [rax]	#, *limit_5
	mov	ecx, OFFSET FLAT:.LC40	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Label_refresh	#
	mov	BYTE PTR [rbp+132], 1	# screen_16(D)->need_reload,
.L148:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE122:
	.size	button_change_reconst_limit, .-button_change_reconst_limit
	.section	.rodata.str1.1
.LC41:
	.string	"GraphicsCallbacks.c"
.LC42:
	.string	"%s\n"
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"button_reconstruction_marker_open() Marker and mask image format mismatch.\n"
	.text
	.globl	button_reconstruction_marker_open
	.type	button_reconstruction_marker_open, @function
button_reconstruction_marker_open:
.LFB123:
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
	mov	rbp, rsi	# screen, screen
	mov	rdi, QWORD PTR [rsi+80]	# screen_1(D)->screen, screen_1(D)->screen
	call	FileBrowsePanel_Main	#
	mov	r12, rax	# sel_path,
	test	rax, rax	# sel_path
	je	.L154	#,
	mov	rax, QWORD PTR [rbx+96]	# D.9971, sender_4(D)->vparam
	mov	r13, QWORD PTR [rax]	# imgdst, *D.9971_5
	mov	r14, QWORD PTR [rax+8]	# imgcmp, MEM[(void * *)D.9971_5 + 8B]
	mov	ecx, 873	#,
	mov	edx, OFFSET FLAT:.LC41	#,
	mov	esi, 152	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rbx, rax	# imgtmp,
	mov	rdi, r13	#, imgdst
	call	Widget_toString	#
	mov	rcx, rax	#, D.9973
	mov	edx, OFFSET FLAT:.LC42	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, r12	#, sel_path
	mov	rdi, rbx	#, imgtmp
	call	Image_new	#
	mov	rax, QWORD PTR [rbx+48]	# D.9977, imgtmp_9->widget.surf
	test	rax, rax	# D.9977
	je	.L155	#,
	mov	rdx, QWORD PTR [r14+48]	# D.9979, imgcmp_8->widget.surf
	test	rdx, rdx	# D.9979
	je	.L155	#,
	mov	r8, QWORD PTR [rax+8]	# D.9981, D.9977_13->format
	test	r8, r8	# D.9981
	je	.L155	#,
	mov	rsi, QWORD PTR [rdx+8]	# D.9983, D.9979_14->format
	test	rsi, rsi	# D.9983
	je	.L155	#,
	movzx	ecx, WORD PTR [rdx+24]	#, D.9979_14->pitch
	cmp	WORD PTR [rax+24], cx	# D.9977_13->pitch,
	jne	.L155	#,
	mov	rdi, QWORD PTR [rdx+16]	#,
	cmp	QWORD PTR [rax+16], rdi	#,
	jne	.L155	#,
	movzx	ecx, BYTE PTR [rsi+9]	#, D.9983_18->BytesPerPixel
	cmp	BYTE PTR [r8+9], cl	# D.9981_16->BytesPerPixel,
	jne	.L155	#,
	mov	edi, DWORD PTR [rsi+32]	#, D.9983_18->Amask
	cmp	DWORD PTR [r8+32], edi	# D.9981_16->Amask,
	jne	.L155	#,
	mov	ecx, DWORD PTR [rsi+20]	#, D.9983_18->Rmask
	cmp	DWORD PTR [r8+20], ecx	# D.9981_16->Rmask,
	jne	.L155	#,
	mov	rdi, QWORD PTR [rsi+24]	#,
	cmp	QWORD PTR [r8+24], rdi	#,
	jne	.L155	#,
	movzx	ecx, BYTE PTR [rsi+17]	#, D.9983_18->Ashift
	cmp	BYTE PTR [r8+17], cl	# D.9981_16->Ashift,
	jne	.L155	#,
	movzx	edi, WORD PTR [rsi+14]	#,
	cmp	WORD PTR [r8+14], di	#,
	jne	.L155	#,
	movzx	ecx, BYTE PTR [rsi+16]	#, D.9983_18->Bshift
	cmp	BYTE PTR [r8+16], cl	# D.9981_16->Bshift,
	jne	.L155	#,
	cmp	QWORD PTR [rax+32], 0	# D.9977_13->pixels,
	je	.L155	#,
	cmp	QWORD PTR [rdx+32], 0	# D.9979_14->pixels,
	jne	.L156	#,
.L155:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 75	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC43	#,
	call	fwrite	#
	mov	rdi, rbx	#, imgtmp
	call	delete	#
	mov	edx, 879	#,
	mov	esi, OFFSET FLAT:.LC41	#,
	mov	rdi, rbx	#, imgtmp
	call	wfree	#
	mov	BYTE PTR [rbp+132], 1	# screen_1(D)->need_reload,
	jmp	.L153	#
.L156:
	movzx	r14d, WORD PTR [r13+56]	# posx, imgdst_6->widget.pos.x
	movzx	r15d, WORD PTR [r13+58]	# posy, imgdst_6->widget.pos.y
	movzx	r12d, BYTE PTR [r13+128]	# draggable, imgdst_6->widget.draggable
	mov	rdi, r13	#, imgdst
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, rbx	#, imgtmp
	mov	rdi, r13	#, imgdst
	call	Image_copy	#
	movzx	edx, r15w	# posy, posy
	movzx	esi, r14w	# posx, posx
	mov	rdi, r13	#, imgdst
	call	Image_setPosition	#
	mov	BYTE PTR [r13+128], r12b	# imgdst_6->widget.draggable, draggable
	mov	rdi, rbx	#, imgtmp
	call	delete	#
	mov	edx, 891	#,
	mov	esi, OFFSET FLAT:.LC41	#,
	mov	rdi, rax	#, D.10027
	call	wfree	#
.L154:
	mov	BYTE PTR [rbp+132], 1	# screen_1(D)->need_reload,
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
.LFE123:
	.size	button_reconstruction_marker_open, .-button_reconstruction_marker_open
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"button_apply_reconstruction_filter() Marker is invisible, cannot continue.\n"
	.align 8
.LC45:
	.string	"button_apply_reconstruction_filter(): Method GToolsMorph_reconstruction exited with error code %d\n"
	.text
	.globl	button_apply_reconstruction_filter
	.type	button_apply_reconstruction_filter, @function
button_apply_reconstruction_filter:
.LFB124:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, QWORD PTR [rdi+96]	# D.9954, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	# imgmask, *D.9954_2
	mov	rcx, QWORD PTR [rax+8]	# imgmarker, MEM[(void * *)D.9954_2 + 8B]
	mov	rax, QWORD PTR [rax+16]	# limit, MEM[(void * *)D.9954_2 + 16B]
	cmp	BYTE PTR [rcx+130], 0	# imgmarker_5->widget.visible,
	jne	.L160	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 75	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC44	#,
	call	fwrite	#
	jmp	.L159	#
.L160:
	mov	rbx, rsi	# screen, screen
	movzx	edx, WORD PTR [rax]	# *limit_7, *limit_7
	mov	rsi, QWORD PTR [rcx+48]	# imgmarker_5->widget.surf, imgmarker_5->widget.surf
	mov	rdi, QWORD PTR [rdi+48]	# imgmask_3->widget.surf, imgmask_3->widget.surf
	call	GToolsMorph_reconstruction	#
	test	al, al	# s
	je	.L162	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC45	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L159	#
.L162:
	mov	BYTE PTR [rbx+132], 1	# screen_17(D)->need_reload,
.L159:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE124:
	.size	button_apply_reconstruction_filter, .-button_apply_reconstruction_filter
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"button_dest_resize(): Failed on assertion Check_surface()\n"
	.align 8
.LC47:
	.string	"button_dest_resize(): At least one dimension of Image is below 10px\n"
	.align 8
.LC48:
	.string	"button_dest_resize(): Refuse to resize above %hu pixels\n"
	.text
	.globl	button_dest_resize
	.type	button_dest_resize, @function
button_dest_resize:
.LFB125:
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
	mov	rax, QWORD PTR [rdi+96]	# sender_3(D)->vparam, sender_3(D)->vparam
	mov	rbx, QWORD PTR [rax]	# imgdst, *D.9917_4
	mov	rax, QWORD PTR [rbx+48]	# D.9920, MEM[(struct Widget *)imgdst_5].surf
	test	rax, rax	# D.9920
	je	.L165	#,
	cmp	QWORD PTR [rax+32], 0	# D.9920_7->pixels,
	je	.L165	#,
	cmp	QWORD PTR [rax+8], 0	# D.9920_7->format,
	jne	.L166	#,
.L165:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 58	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC46	#,
	call	fwrite	#
	jmp	.L164	#
.L166:
	movzx	eax, WORD PTR [rbx+62]	# D.9926, MEM[(struct Widget *)imgdst_5].pos.h
	movzx	r8d, WORD PTR [rbx+60]	# D.9927, MEM[(struct Widget *)imgdst_5].pos.w
	movzx	r12d, WORD PTR [rbx+56]	# D.9928, MEM[(struct Widget *)imgdst_5].pos.x
	movzx	r13d, WORD PTR [rbx+58]	# D.9929, MEM[(struct Widget *)imgdst_5].pos.y
	cmp	r8w, ax	# D.9927, D.9926
	mov	edx, eax	# tmp101, D.9926
	cmovbe	edx, r8d	# D.9927,, tmp101
	cmp	dx, 9	# tmp101,
	ja	.L168	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 68	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC47	#,
	call	fwrite	#
	jmp	.L164	#
.L168:
	mov	rbp, rsi	# screen, screen
	cmp	DWORD PTR [rdi+116], 0	# sender_3(D)->id,
	je	.L169	#,
	cmp	r8w, ax	# D.9927, D.9926
	mov	ecx, eax	# maxdim, D.9926
	cmovae	ecx, r8d	# D.9927,, maxdim
	cmp	cx, 1000	# maxdim,
	jbe	.L170	#,
	movzx	ecx, cx	# maxdim, maxdim
	mov	edx, OFFSET FLAT:.LC48	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L164	#
.L170:
	movzx	r8d, r8w	# D.9927, D.9927
	lea	edx, [r8+10]	# tmp104,
	cvtsi2sd	xmm0, edx	# tmp105, tmp104
	cvtsi2sd	xmm1, r8d	# tmp106, D.9927
	divsd	xmm0, xmm1	# sw, tmp106
	movzx	eax, ax	# D.9926, D.9926
	lea	edx, [rax+10]	# tmp109,
	cvtsi2sd	xmm1, edx	# tmp110, tmp109
	cvtsi2sd	xmm2, eax	# tmp111, D.9926
	divsd	xmm1, xmm2	# sh, tmp111
	jmp	.L171	#
.L169:
	movzx	r8d, r8w	# D.9927, D.9927
	cvtsi2sd	xmm0, r8d	# tmp113, D.9927
	add	r8d, 10	# tmp116,
	cvtsi2sd	xmm1, r8d	# tmp117, tmp116
	divsd	xmm0, xmm1	# sw, tmp117
	movzx	eax, ax	# D.9926, D.9926
	cvtsi2sd	xmm1, eax	# tmp118, D.9926
	add	eax, 10	# tmp121,
	cvtsi2sd	xmm2, eax	# tmp122, tmp121
	divsd	xmm1, xmm2	# sh, tmp122
.L171:
	mov	esi, 1	#,
	mov	rdi, rbx	#, imgdst
	call	Widget_scale	#
	movzx	edx, r13w	# D.9929, D.9929
	movzx	esi, r12w	# D.9928, D.9928
	mov	rdi, rbx	#, imgdst
	call	Image_setPosition	#
	mov	BYTE PTR [rbp+132], 1	# screen_63(D)->need_reload,
.L164:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE125:
	.size	button_dest_resize, .-button_dest_resize
	.section	.rodata.str1.1
.LC49:
	.string	"%3d"
	.text
	.globl	button_rep_col_change_threshold
	.type	button_rep_col_change_threshold, @function
button_rep_col_change_threshold:
.LFB126:
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
	mov	rax, QWORD PTR [rdi+88]	# D.9899, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# label, *D.9899_2
	mov	rax, QWORD PTR [rax+8]	# rep_thr, MEM[(void * *)D.9899_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L174	#,
	movzx	edx, BYTE PTR [rax]	# D.9903, *rep_thr_5
	cmp	dl, -1	# D.9903,
	je	.L173	#,
	add	edx, 1	# tmp73,
	mov	BYTE PTR [rax], dl	# *rep_thr_5, tmp73
	jmp	.L176	#
.L174:
	movzx	edx, BYTE PTR [rax]	# D.9903, *rep_thr_5
	test	dl, dl	# D.9903
	je	.L173	#,
	sub	edx, 1	# tmp74,
	mov	BYTE PTR [rax], dl	# *rep_thr_5, tmp74
.L176:
	mov	rdi, QWORD PTR [rbx+288]	# tmp76, label_3->text_block.text
	add	rdi, 7	# tmp76,
	movzx	r8d, BYTE PTR [rax]	#, *rep_thr_5
	mov	ecx, OFFSET FLAT:.LC49	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Label_refresh	#
	mov	BYTE PTR [rbp+132], 1	# screen_17(D)->need_reload,
.L173:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE126:
	.size	button_rep_col_change_threshold, .-button_rep_col_change_threshold
	.section	.rodata.str1.1
.LC50:
	.string	"`%2s`"
	.text
	.globl	button_rep_col_change_condition
	.type	button_rep_col_change_condition, @function
button_rep_col_change_condition:
.LFB127:
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
	mov	rax, QWORD PTR [rdi+88]	# D.9878, sender_1(D)->cparam
	mov	rbx, QWORD PTR [rax]	# label, *D.9878_2
	mov	rdx, QWORD PTR [rax+8]	# cond, MEM[(void * *)D.9878_2 + 8B]
	mov	rax, QWORD PTR [rax+16]	# cond_sym, MEM[(void * *)D.9878_2 + 16B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L179	#,
	mov	ecx, DWORD PTR [rdx]	# D.9882, *cond_5
	cmp	ecx, 4	# D.9882,
	ja	.L178	#,
	add	ecx, 1	# tmp77,
	mov	DWORD PTR [rdx], ecx	# *cond_5, tmp77
	jmp	.L181	#
.L179:
	mov	ecx, DWORD PTR [rdx]	# D.9882, *cond_5
	test	ecx, ecx	# D.9882
	je	.L178	#,
	sub	ecx, 1	# tmp78,
	mov	DWORD PTR [rdx], ecx	# *cond_5, tmp78
.L181:
	mov	edx, DWORD PTR [rdx]	# *cond_5, *cond_5
	mov	rdi, QWORD PTR [rbx+288]	# tmp81, label_3->text_block.text
	add	rdi, 9	# tmp81,
	mov	r8, QWORD PTR [rax+rdx*8]	#, *D.9894_18
	mov	ecx, OFFSET FLAT:.LC50	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Label_refresh	#
	mov	BYTE PTR [rbp+132], 1	# screen_22(D)->need_reload,
.L178:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE127:
	.size	button_rep_col_change_condition, .-button_rep_col_change_condition
	.globl	button_rep_col_change_new_color
	.type	button_rep_col_change_new_color, @function
button_rep_col_change_new_color:
.LFB128:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+96]	# D.9861, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# label, *D.9861_2
	mov	rax, QWORD PTR [rax+8]	# rep_channel, MEM[(void * *)D.9861_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L184	#,
	movzx	edx, BYTE PTR [rax]	# D.9865, *rep_channel_5
	cmp	dl, -1	# D.9865,
	je	.L183	#,
	add	edx, 1	# tmp72,
	mov	BYTE PTR [rax], dl	# *rep_channel_5, tmp72
	jmp	.L186	#
.L184:
	movzx	edx, BYTE PTR [rax]	# D.9865, *rep_channel_5
	test	dl, dl	# D.9865
	je	.L183	#,
	sub	edx, 1	# tmp73,
	mov	BYTE PTR [rax], dl	# *rep_channel_5, tmp73
.L186:
	mov	rdi, QWORD PTR [rbx+288]	# label_3->text_block.text, label_3->text_block.text
	movzx	r8d, BYTE PTR [rax]	#, *rep_channel_5
	mov	ecx, OFFSET FLAT:.LC49	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Label_refresh	#
	mov	BYTE PTR [rbp+132], 1	# screen_16(D)->need_reload,
.L183:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE128:
	.size	button_rep_col_change_new_color, .-button_rep_col_change_new_color
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"button_rep_col_apply: GToolsPoint_replace_pixels failed [exit code %d]\n"
	.text
	.globl	button_rep_col_apply
	.type	button_rep_col_apply, @function
button_rep_col_apply:
.LFB129:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.9850, sender_1(D)->cparam
	mov	rdx, QWORD PTR [rax+24]	# MEM[(void * *)D.9850_2 + 24B], MEM[(void * *)D.9850_2 + 24B]
	movzx	ecx, BYTE PTR [rdx]	# *thr_9, *thr_9
	mov	rdx, QWORD PTR [rax+16]	# MEM[(void * *)D.9850_2 + 16B], MEM[(void * *)D.9850_2 + 16B]
	mov	rsi, QWORD PTR [rax+8]	# MEM[(void * *)D.9850_2 + 8B], MEM[(void * *)D.9850_2 + 8B]
	mov	rsi, QWORD PTR [rsi+48]	# imgdst_5->widget.surf, imgdst_5->widget.surf
	mov	rdi, QWORD PTR [rax]	# *D.9850_2, *D.9850_2
	mov	rdi, QWORD PTR [rdi+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	mov	r8, QWORD PTR [rax+32]	#, MEM[(void * *)D.9850_2 + 32B]
	mov	edx, DWORD PTR [rdx]	#, *cond_7
	call	GToolsPoint_replace_pixels	#
	test	al, al	# s
	je	.L189	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC51	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L188	#
.L189:
	mov	BYTE PTR [rbx+132], 1	# screen_20(D)->need_reload,
.L188:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE129:
	.size	button_rep_col_apply, .-button_rep_col_apply
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"histogram_stretch_on_mouse_release: GToolsPoint_histogram_stretching failed [exit code %d]\n"
	.text
	.globl	histogram_stretch_on_mouse_release
	.type	histogram_stretch_on_mouse_release, @function
histogram_stretch_on_mouse_release:
.LFB130:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rax, rdi	# sender, sender
	mov	rbx, rsi	# screen, screen
	mov	rdi, QWORD PTR [rdi+96]	# D.9838, sender_1(D)->vparam
	mov	rcx, QWORD PTR [rax+528]	# MEM[(struct HistStretchGraph *)sender_1(D)].y, MEM[(struct HistStretchGraph *)sender_1(D)].y
	mov	rdx, QWORD PTR [rax+520]	# MEM[(struct HistStretchGraph *)sender_1(D)].x, MEM[(struct HistStretchGraph *)sender_1(D)].x
	mov	rsi, QWORD PTR [rdi+8]	# MEM[(void * *)D.9838_3 + 8B], MEM[(void * *)D.9838_3 + 8B]
	mov	r9, QWORD PTR [rsi+48]	# imgdst_6->widget.surf, imgdst_6->widget.surf
	mov	rsi, QWORD PTR [rdi]	# *D.9838_3, *D.9838_3
	mov	rdi, QWORD PTR [rsi+48]	# imgsrc_4->widget.surf, imgsrc_4->widget.surf
	movzx	r8d, WORD PTR [rax+536]	#, MEM[(struct HistStretchGraph *)sender_1(D)].size
	mov	rsi, r9	#, imgdst_6->widget.surf
	call	GToolsPoint_histogram_stretching	#
	test	al, al	# s
	je	.L193	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC52	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L192	#
.L193:
	mov	BYTE PTR [rbx+132], 1	# screen_16(D)->need_reload,
.L192:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE130:
	.size	histogram_stretch_on_mouse_release, .-histogram_stretch_on_mouse_release
	.globl	button_hist_stretch_apply
	.type	button_hist_stretch_apply, @function
button_hist_stretch_apply:
.LFB131:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+96]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	#, *D.9836_2
	call	histogram_stretch_on_mouse_release	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE131:
	.size	button_hist_stretch_apply, .-button_hist_stretch_apply
	.section	.rodata.str1.8
	.align 8
.LC53:
	.string	"button_change_hist_stretch_nodes: HistStretchGraph_refresh2 failed [exit code %d]\n"
	.text
	.globl	button_change_hist_stretch_nodes
	.type	button_change_hist_stretch_nodes, @function
button_change_hist_stretch_nodes:
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
	mov	rdx, QWORD PTR [rdi+96]	# D.9808, sender_1(D)->vparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.9808_2
	mov	rbx, QWORD PTR [rdx+8]	# hsg, MEM[(void * *)D.9808_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L199	#,
	movzx	esi, WORD PTR [rbx+536]	# D.9812, hsg_5->size
	cmp	si, 31	# D.9812,
	ja	.L198	#,
	add	esi, 1	# tmp78,
	movzx	esi, si	# tmp79, tmp78
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_setCountPoints	#
	jmp	.L201	#
.L199:
	movzx	esi, WORD PTR [rbx+536]	# D.9812, hsg_5->size
	cmp	si, 2	# D.9812,
	jbe	.L198	#,
	sub	esi, 1	# tmp80,
	movzx	esi, si	# tmp81, tmp80
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_setCountPoints	#
.L201:
	mov	rdi, QWORD PTR [rbp+288]	# tmp83, label_3->text_block.text
	add	rdi, 18	# tmp83,
	movzx	r8d, WORD PTR [rbx+536]	#, hsg_5->size
	mov	ecx, OFFSET FLAT:.LC49	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_refresh2	#
	test	al, al	# s
	je	.L202	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC53	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L198	#
.L202:
	mov	BYTE PTR [r12+132], 1	# screen_22(D)->need_reload,
.L198:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE132:
	.size	button_change_hist_stretch_nodes, .-button_change_hist_stretch_nodes
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"button_generic_filter_apply: GToolsFilter_apply (filter: %d) failed [exit code %d]\n"
	.text
	.globl	button_generic_filter_apply
	.type	button_generic_filter_apply, @function
button_generic_filter_apply:
.LFB133:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+88]	# D.9798, sender_1(D)->cparam
	mov	ebx, DWORD PTR [rdi+116]	# type, sender_1(D)->id
	mov	rdx, QWORD PTR [rax+8]	# MEM[(void * *)D.9798_2 + 8B], MEM[(void * *)D.9798_2 + 8B]
	mov	rsi, QWORD PTR [rdx+48]	# imgdst_5->widget.surf, imgdst_5->widget.surf
	mov	rax, QWORD PTR [rax]	# *D.9798_2, *D.9798_2
	mov	rdi, QWORD PTR [rax+48]	# imgsrc_3->widget.surf, imgsrc_3->widget.surf
	mov	edx, ebx	#, type
	call	GToolsFilter_apply	#
	test	al, al	# s
	je	.L205	#,
	movzx	r8d, al	#, s
	mov	ecx, ebx	#, type
	mov	edx, OFFSET FLAT:.LC54	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L204	#
.L205:
	mov	BYTE PTR [rbp+132], 1	# screen_12(D)->need_reload,
.L204:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE133:
	.size	button_generic_filter_apply, .-button_generic_filter_apply
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	0
	.long	1084096512
	.align 8
.LC9:
	.long	0
	.long	1082310656
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC12:
	.long	1120396902
	.align 4
.LC13:
	.long	1017370378
	.align 4
.LC14:
	.long	3267880550
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
