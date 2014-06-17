	.file	"ButtonImage.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT ButtonImage.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/ButtonImage.asm
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
	.type	ButtonImage_vdestroy, @function
ButtonImage_vdestroy:
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
	imul	rax, rax, 312	# tmp68, i,
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
	.size	ButtonImage_vdestroy, .-ButtonImage_vdestroy
	.globl	ButtonImage_refresh
	.type	ButtonImage_refresh, @function
ButtonImage_refresh:
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
	mov	rbx, rdi	# buttonimage, buttonimage
	mov	r12, rdi	# ivtmp.49, buttonimage
	mov	ebp, 0	# i,
.L6:
	movzx	eax, WORD PTR [rbx+56]	# D.9045, MEM[(struct Widget *)buttonimage_2(D)].pos.x
	mov	WORD PTR [r12+200], ax	# MEM[base: D.9142_37, offset: 200B], D.9045
	movzx	eax, WORD PTR [rbx+58]	# D.9046, MEM[(struct Widget *)buttonimage_2(D)].pos.y
	mov	WORD PTR [r12+202], ax	# MEM[base: D.9142_37, offset: 202B], D.9046
	movsx	rax, ebp	# i, i
	imul	rax, rax, 312	# tmp91, i,
	lea	rdi, [rbx+144+rax]	# tmp93,
	call	LabelImage_refresh	#
	add	ebp, 1	# i,
	add	r12, 312	# ivtmp.49,
	cmp	ebp, 4	# i,
	jne	.L6	#,
	mov	rax, QWORD PTR [rbx+192]	# buttonimage_2(D)->labelimage[0].widget.surf, buttonimage_2(D)->labelimage[0].widget.surf
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)buttonimage_2(D)].surf, buttonimage_2(D)->labelimage[0].widget.surf
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)buttonimage_2(D)].visible,
	mov	BYTE PTR [rbx+132], 1	# MEM[(struct Widget *)buttonimage_2(D)].need_reload,
	movzx	edx, WORD PTR [rbx+204]	# D.9050, buttonimage_2(D)->labelimage[0].widget.pos.w
	mov	eax, edx	# tmp95, D.9050
	add	ax, WORD PTR [rbx+56]	# tmp95, MEM[(struct Widget *)buttonimage_2(D)].pos.x
	mov	WORD PTR [rbx+112], ax	# MEM[(struct Widget *)buttonimage_2(D)].maxx, tmp95
	movzx	eax, WORD PTR [rbx+206]	# D.9053, buttonimage_2(D)->labelimage[0].widget.pos.h
	mov	ecx, eax	# tmp97, D.9053
	add	cx, WORD PTR [rbx+58]	# tmp97, MEM[(struct Widget *)buttonimage_2(D)].pos.y
	mov	WORD PTR [rbx+114], cx	# MEM[(struct Widget *)buttonimage_2(D)].maxy, tmp97
	mov	WORD PTR [rbx+60], dx	# MEM[(struct Widget *)buttonimage_2(D)].pos.w, D.9050
	mov	WORD PTR [rbx+62], ax	# MEM[(struct Widget *)buttonimage_2(D)].pos.h, D.9053
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	ButtonImage_refresh, .-ButtonImage_refresh
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"ButtonImage_new: Passed NULL this pointer. img_path=%s\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"ButtonImage"
	.text
	.globl	ButtonImage_new
	.type	ButtonImage_new, @function
ButtonImage_new:
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
	mov	r12, rsi	# img_path, img_path
	test	rdi, rdi	# this
	jne	.L10	#,
	mov	rcx, rsi	#, img_path
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L11	#
.L10:
	mov	ecx, OFFSET FLAT:.LC1	#,
	mov	edx, OFFSET FLAT:ButtonImage_vdestroy	#,
	mov	esi, 5	#,
	call	Widget_init_type	#
	mov	BYTE PTR [rbp+131], 1	# MEM[(struct Widget *)this_3(D)].mevent,
	mov	BYTE PTR [rbp+1392], 1	# this_3(D)->enabled,
	mov	ebx, 0	# i,
.L12:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 312	# tmp68, i,
	lea	rdi, [rbp+144+rax]	# tmp70,
	mov	rsi, r12	#, img_path
	call	LabelImage_new	#
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
	.size	ButtonImage_new, .-ButtonImage_new
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"ButtonImage_copy: Passed NULL: btimage_dest(%p) or btimage_src(%p)\n"
	.text
	.globl	ButtonImage_copy
	.type	ButtonImage_copy, @function
ButtonImage_copy:
.LFB96:
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
	mov	rbp, rdi	# btimage_dest, btimage_dest
	mov	r12, rsi	# btimage_src, btimage_src
	test	rsi, rsi	# btimage_src
	je	.L20	#,
	test	rdi, rdi	# btimage_dest
	jne	.L16	#,
.L20:
	mov	r8, r12	#, btimage_src
	mov	rcx, rbp	#, btimage_dest
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebp, 0	# btimage_dest,
	jmp	.L18	#
.L16:
	movzx	r13d, dl	# D.9019, copy_pos
	mov	ecx, 0	#,
	mov	edx, r13d	#, D.9019
	call	Widget_copy	#
	mov	ebx, 0	# i,
.L19:
	movsx	rdi, ebx	# i, i
	imul	rdi, rdi, 312	# tmp81, i,
	add	rdi, 144	# tmp82,
	lea	rsi, [r12+rdi]	# tmp83,
	add	rdi, rbp	# tmp87, btimage_dest
	mov	edx, r13d	#, D.9019
	call	LabelImage_copy	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L19	#,
	movzx	eax, BYTE PTR [r12+1392]	# D.9025, btimage_src_5(D)->enabled
	mov	BYTE PTR [rbp+1392], al	# btimage_dest_3(D)->enabled, D.9025
	mov	rax, QWORD PTR [rbp+192]	# btimage_dest_3(D)->labelimage[0].widget.surf, btimage_dest_3(D)->labelimage[0].widget.surf
	mov	QWORD PTR [rbp+48], rax	# MEM[(struct Widget *)btimage_dest_3(D)].surf, btimage_dest_3(D)->labelimage[0].widget.surf
	mov	BYTE PTR [rbp+130], 1	# MEM[(struct Widget *)btimage_dest_3(D)].visible,
.L18:
	mov	rax, rbp	#, btimage_dest
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
.LFE96:
	.size	ButtonImage_copy, .-ButtonImage_copy
	.globl	ButtonImage_setEnabled
	.type	ButtonImage_setEnabled, @function
ButtonImage_setEnabled:
.LFB97:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1392], sil	# buttonimage_2(D)->enabled, sel
	je	.L23	#,
	mov	BYTE PTR [rdi+1392], sil	# buttonimage_2(D)->enabled, sel
	test	sil, sil	# sel
	je	.L25	#,
	mov	rax, QWORD PTR [rdi+192]	# iftmp.4, buttonimage_2(D)->labelimage[0].widget.surf
	jmp	.L26	#
.L25:
	mov	rax, QWORD PTR [rdi+1128]	# iftmp.4, buttonimage_2(D)->labelimage[3].widget.surf
.L26:
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)buttonimage_2(D)].surf, iftmp.4
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)buttonimage_2(D)].need_reload,
.L23:
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	ButtonImage_setEnabled, .-ButtonImage_setEnabled
	.globl	ButtonImage_setBorder
	.type	ButtonImage_setBorder, @function
ButtonImage_setBorder:
.LFB98:
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
	mov	r13, rdi	# buttonimage, buttonimage
	mov	r12d, edx	# rgb, rgb
	mov	ebx, 0	# i,
	movzx	ebp, si	# bord_width, bord_width
.L28:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 312	# tmp70, i,
	lea	rdi, [r13+144+rax]	# tmp72,
	mov	edx, r12d	#, rgb
	mov	esi, ebp	#, bord_width
	call	LabelImage_setBorder	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L28	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	ButtonImage_setBorder, .-ButtonImage_setBorder
	.globl	ButtonImage_setFixedWidth
	.type	ButtonImage_setFixedWidth, @function
ButtonImage_setFixedWidth:
.LFB99:
	.cfi_startproc
	mov	BYTE PTR [rdi+454], sil	# buttonimage_3(D)->labelimage[0].fixed_width, sel
	mov	BYTE PTR [rdi+766], sil	# buttonimage_3(D)->labelimage[1].fixed_width, sel
	mov	BYTE PTR [rdi+1078], sil	# buttonimage_3(D)->labelimage[2].fixed_width, sel
	mov	BYTE PTR [rdi+1390], sil	# buttonimage_3(D)->labelimage[3].fixed_width, sel
	ret
	.cfi_endproc
.LFE99:
	.size	ButtonImage_setFixedWidth, .-ButtonImage_setFixedWidth
	.globl	ButtonImage_applyDefaultStyle
	.type	ButtonImage_applyDefaultStyle, @function
ButtonImage_applyDefaultStyle:
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
	mov	rbx, rdi	# buttonimage, buttonimage
	mov	ebp, r9d	# fixed_width, fixed_width
	mov	WORD PTR [rsp+14], cx	# %sfp, padx
	mov	r15d, r8d	# pady, pady
	mov	WORD PTR [rdi+56], si	# MEM[(struct Widget *)buttonimage_3(D)].pos.x, posx
	mov	WORD PTR [rdi+58], dx	# MEM[(struct Widget *)buttonimage_3(D)].pos.y, posy
	lea	r14, [rdi+144]	# labimg,
	lea	r13d, [r15+2]	# tmp82,
	movzx	r13d, r13w	# D.8997, tmp82
	mov	r12d, ecx	# tmp83, padx
	add	r12d, 2	# tmp83,
	movzx	r12d, r12w	# D.8998, tmp83
	mov	edx, r13d	#, D.8997
	mov	esi, r12d	#, D.8998
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14417872	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	lea	r14, [rbx+456]	# labimg,
	mov	edx, r13d	#, D.8997
	mov	esi, r12d	#, D.8998
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 11927454	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	lea	r14, [rbx+768]	# labimg,
	movzx	edx, r15w	# pady, pady
	movzx	esi, WORD PTR [rsp+14]	# padx, %sfp
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 16768601	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 16711680	#,
	mov	esi, 7	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	lea	r14, [rbx+1080]	# labimg,
	mov	edx, r13d	#, D.8997
	mov	esi, r12d	#, D.8998
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14671839	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 5	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	mov	rdi, rbx	#, buttonimage
	call	ButtonImage_refresh	#
	mov	BYTE PTR [rbx+454], bpl	# buttonimage_3(D)->labelimage[0].fixed_width, fixed_width
	mov	BYTE PTR [rbx+766], bpl	# buttonimage_3(D)->labelimage[1].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1078], bpl	# buttonimage_3(D)->labelimage[2].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1390], bpl	# buttonimage_3(D)->labelimage[3].fixed_width, fixed_width
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
	.size	ButtonImage_applyDefaultStyle, .-ButtonImage_applyDefaultStyle
	.globl	ButtonImage_applyDefaultStyle3
	.type	ButtonImage_applyDefaultStyle3, @function
ButtonImage_applyDefaultStyle3:
.LFB101:
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
	mov	rbx, rdi	# buttonimage, buttonimage
	mov	ebp, r9d	# fixed_width, fixed_width
	mov	WORD PTR [rdi+56], si	# MEM[(struct Widget *)buttonimage_3(D)].pos.x, posx
	mov	WORD PTR [rdi+58], dx	# MEM[(struct Widget *)buttonimage_3(D)].pos.y, posy
	lea	r14, [rdi+144]	# labimg,
	movzx	r13d, r8w	# D.8992, pady
	movzx	r12d, cx	# D.8993, padx
	mov	edx, r13d	#, D.8992
	mov	esi, r12d	#, D.8993
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14417872	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	lea	r14, [rbx+456]	# labimg,
	mov	edx, r13d	#, D.8992
	mov	esi, r12d	#, D.8993
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 11927454	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	lea	r14, [rbx+768]	# labimg,
	mov	edx, r13d	#, D.8992
	mov	esi, r12d	#, D.8993
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 16768601	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 16711680	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	lea	r14, [rbx+1080]	# labimg,
	mov	edx, r13d	#, D.8992
	mov	esi, r12d	#, D.8993
	mov	rdi, r14	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14671839	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, labimg
	call	LabelImage_setBorder	#
	mov	rdi, rbx	#, buttonimage
	call	ButtonImage_refresh	#
	mov	BYTE PTR [rbx+454], bpl	# buttonimage_3(D)->labelimage[0].fixed_width, fixed_width
	mov	BYTE PTR [rbx+766], bpl	# buttonimage_3(D)->labelimage[1].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1078], bpl	# buttonimage_3(D)->labelimage[2].fixed_width, fixed_width
	mov	BYTE PTR [rbx+1390], bpl	# buttonimage_3(D)->labelimage[3].fixed_width, fixed_width
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	ButtonImage_applyDefaultStyle3, .-ButtonImage_applyDefaultStyle3
	.globl	ButtonImage_mousePressed
	.type	ButtonImage_mousePressed, @function
ButtonImage_mousePressed:
.LFB102:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1392], 0	# buttonimage_1(D)->enabled,
	je	.L40	#,
	cmp	BYTE PTR [rsi+18], 1	# screen_3(D)->event.button.button,
	jne	.L40	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+816]	# buttonimage_1(D)->labelimage[2].widget.surf, buttonimage_1(D)->labelimage[2].widget.surf
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)buttonimage_1(D)].surf, buttonimage_1(D)->labelimage[2].widget.surf
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)buttonimage_1(D)].need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L40:
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	ButtonImage_mousePressed, .-ButtonImage_mousePressed
	.globl	ButtonImage_mouseDragging
	.type	ButtonImage_mouseDragging, @function
ButtonImage_mouseDragging:
.LFB103:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	ButtonImage_mouseDragging, .-ButtonImage_mouseDragging
	.globl	ButtonImage_mouseReleased
	.type	ButtonImage_mouseReleased, @function
ButtonImage_mouseReleased:
.LFB104:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# buttonimage, buttonimage
	cmp	BYTE PTR [rdi+1392], 0	# buttonimage_1(D)->enabled,
	je	.L42	#,
	mov	rbp, rsi	# screen, screen
	movzx	edx, WORD PTR [rsi+22]	# screen_3(D)->event.button.y, screen_3(D)->event.button.y
	movzx	esi, WORD PTR [rsi+20]	# screen_3(D)->event.button.x, screen_3(D)->event.button.x
	call	Widget_contains	#
	test	al, al	# D.8975
	je	.L44	#,
	mov	rax, QWORD PTR [rbx+504]	# buttonimage_1(D)->labelimage[1].widget.surf, buttonimage_1(D)->labelimage[1].widget.surf
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)buttonimage_1(D)].surf, buttonimage_1(D)->labelimage[1].widget.surf
	jmp	.L45	#
.L44:
	mov	rax, QWORD PTR [rbx+192]	# buttonimage_1(D)->labelimage[0].widget.surf, buttonimage_1(D)->labelimage[0].widget.surf
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)buttonimage_1(D)].surf, buttonimage_1(D)->labelimage[0].widget.surf
.L45:
	mov	BYTE PTR [rbx+132], 1	# MEM[(struct Widget *)buttonimage_1(D)].need_reload,
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, buttonimage
	call	Widget_draw	#
.L42:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	ButtonImage_mouseReleased, .-ButtonImage_mouseReleased
	.globl	ButtonImage_setImage
	.type	ButtonImage_setImage, @function
ButtonImage_setImage:
.LFB105:
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
	mov	rbp, rdi	# buttonimage, buttonimage
	mov	r12, rsi	# image, image
	mov	ebx, 0	# i,
.L48:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 312	# tmp66, i,
	lea	rdi, [rbp+144+rax]	# tmp68,
	mov	rsi, r12	#, image
	call	LabelImage_setImage	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L48	#,
	mov	rdi, rbp	#, buttonimage
	call	ButtonImage_refresh	#
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	ButtonImage_setImage, .-ButtonImage_setImage
	.globl	ButtonImage_scale
	.type	ButtonImage_scale, @function
ButtonImage_scale:
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
	mov	rbp, rdi	# buttonimage, buttonimage
	movd	r14, xmm0	# xscale, xscale
	movd	r13, xmm1	# yscale, yscale
	mov	r12d, esi	# smooth, smooth
	mov	ebx, 0	# i,
.L52:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 312	# tmp68, i,
	lea	rdi, [rbp+144+rax]	# tmp70,
	mov	esi, r12d	#, smooth
	movd	xmm1, r13	#, yscale
	movd	xmm0, r14	#, xscale
	call	LabelImage_scale	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L52	#,
	mov	rdi, rbp	#, buttonimage
	call	ButtonImage_refresh	#
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
	.size	ButtonImage_scale, .-ButtonImage_scale
	.globl	ButtonImage_mouseEnter
	.type	ButtonImage_mouseEnter, @function
ButtonImage_mouseEnter:
.LFB107:
	.cfi_startproc
	mov	BYTE PTR [rsi+129], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1392], 0	# buttonimage_2(D)->enabled,
	je	.L59	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+504]	# buttonimage_2(D)->labelimage[1].widget.surf, buttonimage_2(D)->labelimage[1].widget.surf
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)buttonimage_2(D)].surf, buttonimage_2(D)->labelimage[1].widget.surf
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)buttonimage_2(D)].need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L59:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	ButtonImage_mouseEnter, .-ButtonImage_mouseEnter
	.globl	ButtonImage_mouseExit
	.type	ButtonImage_mouseExit, @function
ButtonImage_mouseExit:
.LFB108:
	.cfi_startproc
	mov	BYTE PTR [rsi+129], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1392], 0	# buttonimage_2(D)->enabled,
	je	.L64	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+192]	# buttonimage_2(D)->labelimage[0].widget.surf, buttonimage_2(D)->labelimage[0].widget.surf
	mov	QWORD PTR [rdi+48], rax	# MEM[(struct Widget *)buttonimage_2(D)].surf, buttonimage_2(D)->labelimage[0].widget.surf
	mov	BYTE PTR [rdi+132], 1	# MEM[(struct Widget *)buttonimage_2(D)].need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L64:
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	ButtonImage_mouseExit, .-ButtonImage_mouseExit
	.globl	ButtonImage_mouseMove
	.type	ButtonImage_mouseMove, @function
ButtonImage_mouseMove:
.LFB109:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	ButtonImage_mouseMove, .-ButtonImage_mouseMove
	.globl	ButtonImage_mouseClicked
	.type	ButtonImage_mouseClicked, @function
ButtonImage_mouseClicked:
.LFB110:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE110:
	.size	ButtonImage_mouseClicked, .-ButtonImage_mouseClicked
	.section	.rodata.str1.1
.LC3:
	.string	"buttonimage=NULL"
.LC4:
	.string	"%s"
	.text
	.globl	ButtonImage_toString
	.type	ButtonImage_toString, @function
ButtonImage_toString:
.LFB111:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC3	# D.8949,
	test	rdi, rdi	# buttonimage
	je	.L72	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp64,
	call	LabelImage_toString	#
	mov	rcx, rax	#, D.8951
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id	# D.8949,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L72:
	rep
	ret
	.cfi_endproc
.LFE111:
	.size	ButtonImage_toString, .-ButtonImage_toString
	.local	str_id
	.comm	str_id,128,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
