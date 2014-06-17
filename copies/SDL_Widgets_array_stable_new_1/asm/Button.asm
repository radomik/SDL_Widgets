	.file	"Button.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Button.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Button.asm
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
	.type	Button_vdestroy, @function
Button_vdestroy:
.LFB94:
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
	mov	ebx, 0	# i,
.L2:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 344	# tmp68, i,
	lea	rdi, [rbp+144+rax]	# tmp70,
	call	delete	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L2	#,
	mov	QWORD PTR [rbp+48], 0	# MEM[(struct Widget *)vthis_2(D)].surf,
	mov	rdi, rbp	#, vthis
	call	Widget_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Button_vdestroy, .-Button_vdestroy
	.globl	Button_refresh
	.type	Button_refresh, @function
Button_refresh:
.LFB93:
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
	mov	rbx, rdi	# button, button
	mov	r12, rdi	# ivtmp.47, button
	mov	ebp, 0	# i,
.L6:
	movzx	eax, WORD PTR [rbx+56]	# D.8884, MEM[(struct Widget *)button_2(D)].pos.x
	mov	WORD PTR [r12+200], ax	# MEM[base: D.8977_37, offset: 200B], D.8884
	movzx	eax, WORD PTR [rbx+58]	# D.8885, MEM[(struct Widget *)button_2(D)].pos.y
	mov	WORD PTR [r12+202], ax	# MEM[base: D.8977_37, offset: 202B], D.8885
	movsx	rax, ebp	# i, i
	imul	rax, rax, 344	# tmp91, i,
	lea	rdi, [rbx+144+rax]	# tmp93,
	call	Label_refresh	#
	add	ebp, 1	# i,
	add	r12, 344	# ivtmp.47,
	cmp	ebp, 4	# i,
	jne	.L6	#,
	mov	rax, QWORD PTR [rbx+192]	# button_2(D)->label[0].widget.surf, button_2(D)->label[0].widget.surf
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)button_2(D)].surf, button_2(D)->label[0].widget.surf
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)button_2(D)].visible,
	mov	BYTE PTR [rbx+132], 1	# MEM[(struct Widget *)button_2(D)].need_reload,
	movzx	edx, WORD PTR [rbx+204]	# D.8890, button_2(D)->label[0].widget.pos.w
	mov	eax, edx	# tmp95, D.8890
	add	ax, WORD PTR [rbx+56]	# tmp95, button_2(D)->widget.pos.x
	mov	WORD PTR [rbx+112], ax	# MEM[(struct Widget *)button_2(D)].maxx, tmp95
	movzx	eax, WORD PTR [rbx+206]	# D.8894, button_2(D)->label[0].widget.pos.h
	mov	ecx, eax	# tmp97, D.8894
	add	cx, WORD PTR [rbx+58]	# tmp97, button_2(D)->widget.pos.y
	mov	WORD PTR [rbx+114], cx	# MEM[(struct Widget *)button_2(D)].maxy, tmp97
	mov	WORD PTR [rbx+60], dx	# MEM[(struct Widget *)button_2(D)].pos.w, D.8890
	mov	WORD PTR [rbx+62], ax	# MEM[(struct Widget *)button_2(D)].pos.h, D.8894
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Button_refresh, .-Button_refresh
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Button_new: Passed NULL this pointer. text=%s\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Button"
	.text
	.globl	Button_new
	.type	Button_new, @function
Button_new:
.LFB95:
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
	mov	rbp, rdi	# this, this
	mov	r12, rsi	# text, text
	test	rdi, rdi	# this
	jne	.L10	#,
	mov	rcx, rsi	#, text
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L11	#
.L10:
	mov	ecx, OFFSET FLAT:.LC1	#,
	mov	edx, OFFSET FLAT:Button_vdestroy	#,
	mov	esi, 1	#,
	call	Widget_init_type	#
	mov	BYTE PTR [rbp+131], 1	# MEM[(struct Widget *)this_3(D)].mevent,
	mov	BYTE PTR [rbp+1520], 1	# this_3(D)->enabled,
	mov	ebx, 0	# i,
.L12:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 344	# tmp68, i,
	lea	rdi, [rbp+144+rax]	# tmp70,
	mov	rsi, r12	#, text
	call	Label_new	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L12	#,
.L11:
	mov	rax, rbp	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Button_new, .-Button_new
	.globl	Button_setBgColor
	.type	Button_setBgColor, @function
Button_setBgColor:
.LFB96:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rdi	# button, button
	mov	ebp, esi	# rgb, rgb
	mov	ebx, 0	# i,
.L16:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 344	# tmp66, i,
	lea	rdi, [r12+144+rax]	# tmp68,
	mov	esi, ebp	#, rgb
	call	Label_setBgColor	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L16	#,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Button_setBgColor, .-Button_setBgColor
	.globl	Button_setBorder
	.type	Button_setBorder, @function
Button_setBorder:
.LFB97:
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
	mov	r13, rdi	# button, button
	mov	r12d, edx	# rgb, rgb
	mov	ebx, 0	# i,
	movzx	ebp, si	# bord_width, bord_width
.L20:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 344	# tmp70, i,
	lea	rdi, [r13+144+rax]	# tmp72,
	mov	edx, r12d	#, rgb
	mov	esi, ebp	#, bord_width
	call	Label_setBorder	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L20	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	Button_setBorder, .-Button_setBorder
	.globl	Button_setEnabled
	.type	Button_setEnabled, @function
Button_setEnabled:
.LFB98:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1520], sil	# button_2(D)->enabled, sel
	je	.L23	#,
	mov	BYTE PTR [rdi+1520], sil	# button_2(D)->enabled, sel
	test	sil, sil	# sel
	je	.L25	#,
	mov	rax, QWORD PTR [rdi+192]	# iftmp.4, button_2(D)->label[0].widget.surf
	jmp	.L26	#
.L25:
	mov	rax, QWORD PTR [rdi+1224]	# iftmp.4, button_2(D)->label[3].widget.surf
.L26:
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)button_2(D)].surf, iftmp.4
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)button_2(D)].need_reload,
.L23:
	rep
	ret
	.cfi_endproc
.LFE98:
	.size	Button_setEnabled, .-Button_setEnabled
	.globl	Button_setFixedWidth
	.type	Button_setFixedWidth, @function
Button_setFixedWidth:
.LFB99:
	.cfi_startproc
	mov	BYTE PTR [rdi+482], sil	# button_3(D)->label[0].fixed_width, sel
	mov	BYTE PTR [rdi+826], sil	# button_3(D)->label[1].fixed_width, sel
	mov	BYTE PTR [rdi+1170], sil	# button_3(D)->label[2].fixed_width, sel
	mov	BYTE PTR [rdi+1514], sil	# button_3(D)->label[3].fixed_width, sel
	ret
	.cfi_endproc
.LFE99:
	.size	Button_setFixedWidth, .-Button_setFixedWidth
	.globl	Button_setText
	.type	Button_setText, @function
Button_setText:
.LFB100:
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
	mov	rbp, rdi	# button, button
	mov	r12, rsi	# text, text
	mov	ebx, 0	# i,
.L29:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 344	# tmp66, i,
	lea	rdi, [rbp+144+rax]	# tmp68,
	mov	rsi, r12	#, text
	call	Label_setText	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L29	#,
	mov	rdi, rbp	#, button
	call	Button_refresh	#
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Button_setText, .-Button_setText
	.globl	Button_applyDefaultStyle
	.type	Button_applyDefaultStyle, @function
Button_applyDefaultStyle:
.LFB101:
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
	mov	rbx, rdi	# button, button
	mov	r13, rcx	# font2, font2
	mov	r12d, DWORD PTR [rsp+64]	# fixed_width, fixed_width
	mov	WORD PTR [rdi+56], si	# MEM[(struct Widget *)button_3(D)].pos.x, posx
	mov	WORD PTR [rdi+58], dx	# MEM[(struct Widget *)button_3(D)].pos.y, posy
	lea	rbp, [rdi+144]	# lab,
	movzx	r15d, r9w	# D.8852, pady
	movzx	r14d, r8w	# D.8853, padx
	mov	edx, r15d	#, D.8852
	mov	esi, r14d	#, D.8853
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 10420464	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 14417872	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+488]	# lab,
	mov	edx, r15d	#, D.8852
	mov	esi, r14d	#, D.8853
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 10420464	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 11927454	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+832]	# lab,
	mov	edx, r15d	#, D.8852
	mov	esi, r14d	#, D.8853
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 10420464	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 16768601	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 51665	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+1176]	# lab,
	mov	edx, r15d	#, D.8852
	mov	esi, r14d	#, D.8853
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 11250603	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 14671839	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	mov	rdi, rbx	#, button
	call	Button_refresh	#
	mov	BYTE PTR [rbx+482], r12b	# button_3(D)->label[0].fixed_width, fixed_width
	mov	BYTE PTR [rbx+826], r12b	# button_3(D)->label[1].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1170], r12b	# button_3(D)->label[2].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1514], r12b	# button_3(D)->label[3].fixed_width, fixed_width
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
.LFE101:
	.size	Button_applyDefaultStyle, .-Button_applyDefaultStyle
	.globl	Button_applyDefaultStyle2
	.type	Button_applyDefaultStyle2, @function
Button_applyDefaultStyle2:
.LFB102:
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
	mov	rbx, rdi	# button, button
	mov	r13, rcx	# font2, font2
	mov	r12d, DWORD PTR [rsp+64]	# fixed_width, fixed_width
	mov	WORD PTR [rdi+56], si	# MEM[(struct Widget *)button_3(D)].pos.x, posx
	mov	WORD PTR [rdi+58], dx	# MEM[(struct Widget *)button_3(D)].pos.y, posy
	lea	rbp, [rdi+144]	# lab,
	movzx	r15d, r9w	# D.8847, pady
	movzx	r14d, r8w	# D.8848, padx
	mov	edx, r15d	#, D.8847
	mov	esi, r14d	#, D.8848
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 15592683	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 15592683	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+488]	# lab,
	mov	edx, r15d	#, D.8847
	mov	esi, r14d	#, D.8848
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 8299732	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 8299732	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+832]	# lab,
	mov	edx, r15d	#, D.8847
	mov	esi, r14d	#, D.8848
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 15881568	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 15592683	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+1176]	# lab,
	mov	edx, r15d	#, D.8847
	mov	esi, r14d	#, D.8848
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 11447982	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 15592683	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	mov	rdi, rbx	#, button
	call	Button_refresh	#
	mov	BYTE PTR [rbx+482], r12b	# button_3(D)->label[0].fixed_width, fixed_width
	mov	BYTE PTR [rbx+826], r12b	# button_3(D)->label[1].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1170], r12b	# button_3(D)->label[2].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1514], r12b	# button_3(D)->label[3].fixed_width, fixed_width
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
.LFE102:
	.size	Button_applyDefaultStyle2, .-Button_applyDefaultStyle2
	.globl	Button_mousePressed
	.type	Button_mousePressed, @function
Button_mousePressed:
.LFB103:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1520], 0	# button_1(D)->enabled,
	je	.L40	#,
	cmp	BYTE PTR [rsi+18], 1	# screen_3(D)->event.button.button,
	jne	.L40	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+880]	# button_1(D)->label[2].widget.surf, button_1(D)->label[2].widget.surf
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)button_1(D)].surf, button_1(D)->label[2].widget.surf
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)button_1(D)].need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L40:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	Button_mousePressed, .-Button_mousePressed
	.globl	Button_mouseDragging
	.type	Button_mouseDragging, @function
Button_mouseDragging:
.LFB104:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE104:
	.size	Button_mouseDragging, .-Button_mouseDragging
	.globl	Button_mouseReleased
	.type	Button_mouseReleased, @function
Button_mouseReleased:
.LFB105:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# button, button
	cmp	BYTE PTR [rdi+1520], 0	# button_1(D)->enabled,
	je	.L42	#,
	mov	rbp, rsi	# screen, screen
	movzx	edx, WORD PTR [rsi+22]	# screen_3(D)->event.button.y, screen_3(D)->event.button.y
	movzx	esi, WORD PTR [rsi+20]	# screen_3(D)->event.button.x, screen_3(D)->event.button.x
	call	Widget_contains	#
	test	al, al	# D.8830
	je	.L44	#,
	mov	rax, QWORD PTR [rbx+536]	# button_1(D)->label[1].widget.surf, button_1(D)->label[1].widget.surf
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)button_1(D)].surf, button_1(D)->label[1].widget.surf
	jmp	.L45	#
.L44:
	mov	rax, QWORD PTR [rbx+192]	# button_1(D)->label[0].widget.surf, button_1(D)->label[0].widget.surf
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)button_1(D)].surf, button_1(D)->label[0].widget.surf
.L45:
	mov	BYTE PTR [rbx+132], 1	# MEM[(struct Widget *)button_1(D)].need_reload,
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, button
	call	Widget_draw	#
.L42:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	Button_mouseReleased, .-Button_mouseReleased
	.globl	Button_mouseEnter
	.type	Button_mouseEnter, @function
Button_mouseEnter:
.LFB106:
	.cfi_startproc
	mov	BYTE PTR [rsi+129], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1520], 0	# button_2(D)->enabled,
	je	.L51	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+536]	# button_2(D)->label[1].widget.surf, button_2(D)->label[1].widget.surf
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)button_2(D)].surf, button_2(D)->label[1].widget.surf
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)button_2(D)].need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L51:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	Button_mouseEnter, .-Button_mouseEnter
	.globl	Button_mouseExit
	.type	Button_mouseExit, @function
Button_mouseExit:
.LFB107:
	.cfi_startproc
	mov	BYTE PTR [rsi+129], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1520], 0	# button_2(D)->enabled,
	je	.L56	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+192]	# button_2(D)->label[0].widget.surf, button_2(D)->label[0].widget.surf
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)button_2(D)].surf, button_2(D)->label[0].widget.surf
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)button_2(D)].need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L56:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	Button_mouseExit, .-Button_mouseExit
	.globl	Button_mouseMove
	.type	Button_mouseMove, @function
Button_mouseMove:
.LFB108:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	Button_mouseMove, .-Button_mouseMove
	.globl	Button_mouseClicked
	.type	Button_mouseClicked, @function
Button_mouseClicked:
.LFB109:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	Button_mouseClicked, .-Button_mouseClicked
	.section	.rodata.str1.1
.LC2:
	.string	"button=NULL"
.LC3:
	.string	"%s"
	.text
	.globl	Button_toString
	.type	Button_toString, @function
Button_toString:
.LFB110:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC2	# D.8806,
	test	rdi, rdi	# button
	je	.L64	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp64,
	call	Label_toString	#
	mov	rcx, rax	#, D.8808
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id	# D.8806,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L64:
	rep
	ret
	.cfi_endproc
.LFE110:
	.size	Button_toString, .-Button_toString
	.local	str_id
	.comm	str_id,128,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
