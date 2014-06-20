	.file	"HistStretchGraph.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT HistStretchGraph.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/HistStretchGraph.asm
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
	.string	"HistStretchGraph_refresh2: SDL_BlitSurface(this->bg_surf, NULL, widget->surf, NULL) failed: %s\n"
	.align 8
.LC1:
	.string	"HistStretchGraph_refresh2: this->rect[0] is not visible\n"
	.align 8
.LC2:
	.string	"HistStretchGraph_refresh2: this->rect[%hu] is not visible\n"
	.align 8
.LC3:
	.string	"HistStretchGraph_refresh2: Failed to blit rectangle[%hu]: %s failed: %s\n"
	.text
	.type	HistStretchGraph_refresh2, @function
HistStretchGraph_refresh2:
.LFB94:
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
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 80
	mov	rbx, rdi	# this, this
	mov	rdx, QWORD PTR [rdi+88]	# MEM[(struct Widget *)this_5(D)].surf, MEM[(struct Widget *)this_5(D)].surf
	mov	rdi, QWORD PTR [rdi+600]	# this_5(D)->bg_surf, this_5(D)->bg_surf
	mov	ecx, 0	#,
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9251
	je	.L2	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9254
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	mov	eax, 1	# D.9256,
	jmp	.L3	#
.L2:
	mov	rdi, QWORD PTR [rbx+608]	# D.9257, this_5(D)->rect
	cmp	BYTE PTR [rdi+167], 0	# MEM[(struct Widget *)D.9257_15].visible,
	jne	.L4	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 56	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	mov	eax, 4	# D.9256,
	jmp	.L3	#
.L4:
	lea	rdx, [rsp+18]	# tmp117,
	lea	rsi, [rsp+16]	#,
	call	Rectangle_getCenter	#
	cmp	WORD PTR [rbx+632], 0	# this_5(D)->size,
	je	.L5	#,
	mov	r12, QWORD PTR [rbx+608]	# wt_rect, this_5(D)->rect
	cmp	BYTE PTR [r12+167], 0	# wt_rect_101->visible,
	je	.L12	#,
	mov	ebp, 0	# i,
	mov	r13d, 1	# t,
	jmp	.L15	#
.L11:
	movzx	r12d, bp	# i, i
	imul	r12, r12, 184	# tmp120, i,
	add	r12, QWORD PTR [rbx+608]	# wt_rect, this_5(D)->rect
	cmp	BYTE PTR [r12+167], 0	# wt_rect_24->visible,
	jne	.L8	#,
	jmp	.L6	#
.L12:
	mov	ebp, 0	# i,
.L6:
	movzx	ecx, bp	# i, i
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	mov	eax, 4	# D.9256,
	jmp	.L3	#
.L8:
	test	bp, bp	# i
	je	.L15	#,
	mov	esi, 1	# D.9269,
	and	rsi, r13	# D.9269, t
	sal	rsi, 2	# tmp125,
	lea	rdx, [rsp+18+rsi]	# tmp127,
	lea	rax, [rsp+16]	#,
	add	rsi, rax	# tmp131,
	mov	rdi, r12	#, wt_rect
	call	Rectangle_getCenter	#
	xor	r13d, 1	# t,
	movsx	r8d, WORD PTR [rsp+22]	# line, line
	movsx	ecx, WORD PTR [rsp+20]	# line, line
	movsx	edx, WORD PTR [rsp+18]	# line, line
	movsx	esi, WORD PTR [rsp+16]	# line, line
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)this_5(D)].surf, MEM[(struct Widget *)this_5(D)].surf
	mov	DWORD PTR [rsp], -16711681	#,
	mov	r9d, 2	#,
	call	thickLineColor	#
.L15:
	lea	rcx, [r12+96]	# tmp138,
	mov	rdx, QWORD PTR [rbx+88]	# MEM[(struct Widget *)this_5(D)].surf, MEM[(struct Widget *)this_5(D)].surf
	mov	rdi, QWORD PTR [r12+88]	# wt_rect_114->surf, wt_rect_114->surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9288
	je	.L10	#,
	call	SDL_GetError	#
	mov	r13, rax	# D.9291,
	mov	rdi, r12	#, wt_rect
	call	Widget_toString	#
	mov	r8, rax	# D.9292,
	movzx	ecx, bp	# i, i
	mov	r9, r13	#, D.9291
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	mov	eax, 5	# D.9256,
	jmp	.L3	#
.L10:
	add	ebp, 1	# i,
	cmp	WORD PTR [rbx+632], bp	# this_5(D)->size, i
	ja	.L11	#,
.L5:
	mov	esi, 1	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	mov	eax, 0	# D.9256,
.L3:
	add	rsp, 40	#,
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
.LFE94:
	.size	HistStretchGraph_refresh2, .-HistStretchGraph_refresh2
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"HistStretchGraph_mousePressed: Error this->rect array of Rectangles is NULL\n"
	.align 8
.LC5:
	.string	"HistStretchGraph_mousePressed: relx=%hu, rely=%hu\n"
	.text
	.type	HistStretchGraph_mousePressed, @function
HistStretchGraph_mousePressed:
.LFB98:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 128
	mov	r13, rdi	# widget, widget
	mov	rbx, rsi	# screen, screen
	mov	BYTE PTR [rsi+121], 1	# screen_10(D)->event_handled,
	cmp	QWORD PTR [rdi+608], 0	# MEM[(struct HistStretchGraph *)widget_8(D)].rect,
	jne	.L18	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 76	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	jmp	.L17	#
.L18:
	movzx	r12d, WORD PTR [rsi+14]	# screen_10(D)->event.button.y, screen_10(D)->event.button.y
	sub	r12w, WORD PTR [rdi+98]	# tmp193, widget_8(D)->pos.y
	movzx	r12d, r12w	# D.9151, tmp193
	movzx	r14d, WORD PTR [rsi+12]	# screen_10(D)->event.button.x, screen_10(D)->event.button.x
	sub	r14w, WORD PTR [rdi+96]	# tmp196, widget_8(D)->pos.x
	movzx	r14d, r14w	# D.9152, tmp196
	mov	r8d, r12d	#, D.9151
	mov	ecx, r14d	#, D.9152
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	cmp	WORD PTR [r13+632], 0	# MEM[(struct HistStretchGraph *)widget_8(D)].size,
	je	.L17	#,
	mov	ebp, 0	# i,
.L21:
	movzx	edi, bp	# i, i
	imul	rdi, rdi, 184	# tmp200, i,
	add	rdi, QWORD PTR [r13+608]	# tmp201, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	mov	edx, r12d	#, D.9151
	mov	esi, r14d	#, D.9152
	call	Rectangle_contains	#
	test	al, al	# D.9156
	jne	.L20	#,
	add	ebp, 1	# i,
	cmp	WORD PTR [r13+632], bp	# MEM[(struct HistStretchGraph *)widget_8(D)].size, i
	ja	.L21	#,
.L20:
	movzx	eax, WORD PTR [r13+632]	# D.9158, MEM[(struct HistStretchGraph *)widget_8(D)].size
	cmp	ax, bp	# D.9158, i
	je	.L17	#,
	movzx	r15d, WORD PTR [rbx+12]	# stx, screen_10(D)->event.button.x
	movzx	r14d, WORD PTR [rbx+14]	# sty, screen_10(D)->event.button.y
	mov	edx, 0	# iftmp.3,
	test	bp, bp	# i
	je	.L22	#,
	movzx	edx, bp	# i, i
	movzx	eax, ax	# D.9158, D.9158
	sub	eax, 1	# tmp205,
	cmp	edx, eax	# i, tmp205
	setl	dl	#, iftmp.3
	movzx	edx, dl	# iftmp.3, iftmp.3
.L22:
	mov	BYTE PTR [rsp+23], dl	# %sfp, iftmp.3
	movzx	ebp, bp	# D.9153, i
	imul	rax, rbp, 184	#, D.9153,
	mov	QWORD PTR [rsp+24], rax	# %sfp,
	mov	rdi, rax	# tmp210,
	add	rdi, QWORD PTR [r13+608]	# tmp210, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	lea	rdx, [rsp+62]	#,
	lea	rsi, [rsp+60]	#,
	call	Rectangle_getCenter	#
	lea	rsi, [rbp+rbp]	#,
	mov	QWORD PTR [rsp+8], rsi	# %sfp,
	lea	rdi, [rbp-2+rbp]	#,
	mov	QWORD PTR [rsp+40], rdi	# %sfp,
	lea	rbp, [rbp+2+rbp]	#,
	mov	QWORD PTR [rsp+32], rbp	# %sfp,
	jmp	.L40	#
.L34:
	movzx	eax, BYTE PTR [rbx+8]	# D.9169, screen_10(D)->event.type
	cmp	al, 4	# D.9169,
	jne	.L24	#,
	movzx	r12d, WORD PTR [rbx+12]	# stx, screen_10(D)->event.motion.x
	mov	edx, r12d	# D.9173, stx
	sub	edx, r15d	# D.9173, stx
	movzx	ebp, WORD PTR [rbx+14]	# sty, screen_10(D)->event.motion.y
	mov	eax, ebp	# D.9175, sty
	sub	eax, r14d	# D.9175, sty
	mov	ecx, eax	# tmp214, D.9175
	or	ecx, edx	# tmp214, D.9173
	test	cl, 1	# tmp214,
	jne	.L40	#,
	mov	ecx, eax	# dy2, D.9175
	sar	cx	# dy2
	cmp	BYTE PTR [rsp+23], 0	# %sfp,
	je	.L26	#,
	mov	esi, edx	# dx2, D.9173
	sar	si	# dx2
	jns	.L27	#,
	mov	r9, QWORD PTR [r13+616]	# D.9191, MEM[(struct HistStretchGraph *)widget_8(D)].x
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	edi, WORD PTR [r9+r8]	# D.9195, *D.9193_67
	movsx	r8d, si	# dx2, dx2
	add	r8d, edi	# D.9197, D.9195
	cmp	edi, r8d	# D.9195, D.9197
	jl	.L40	#,
	mov	r10, QWORD PTR [rsp+40]	#, %sfp
	movzx	edi, WORD PTR [r9+r10]	# *D.9202_90, *D.9202_90
	cmp	r8d, edi	# D.9197, *D.9202_90
	jl	.L40	#,
.L27:
	test	si, si	# dx2
	jle	.L28	#,
	mov	rdi, QWORD PTR [r13+616]	# D.9191, MEM[(struct HistStretchGraph *)widget_8(D)].x
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	r9d, WORD PTR [rdi+r8]	# *D.9193_96, *D.9193_96
	movsx	r8d, si	# dx2, dx2
	add	r8d, r9d	# tmp220, *D.9193_96
	mov	r9, QWORD PTR [rsp+32]	#, %sfp
	movzx	edi, WORD PTR [rdi+r9]	# *D.9208_105, *D.9208_105
	cmp	r8d, edi	# tmp220, *D.9208_105
	jg	.L40	#,
.L28:
	test	cx, cx	# dy2
	jle	.L29	#,
	mov	rdi, QWORD PTR [r13+624]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r10, QWORD PTR [rsp+8]	#, %sfp
	movsx	r8d, WORD PTR [rdi+r10]	# *D.9213_111, *D.9213_111
	movsx	edi, cx	# dy2, dy2
	cmp	r8d, edi	# *D.9213_111, dy2
	js	.L40	#,
.L29:
	test	cx, cx	# dy2
	jns	.L30	#,
	mov	rdi, QWORD PTR [r13+624]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	edi, WORD PTR [rdi+r8]	# *D.9213_120, *D.9213_120
	movsx	r8d, cx	# dy2, dy2
	sub	edi, r8d	# tmp229, dy2
	cmp	edi, 255	# tmp229,
	jg	.L40	#,
.L30:
	add	WORD PTR [rsp+60], dx	# x, D.9173
	add	WORD PTR [rsp+62], ax	# y, D.9175
	mov	rax, QWORD PTR [rsp+8]	# D.9193, %sfp
	add	rax, QWORD PTR [r13+616]	# D.9193, MEM[(struct HistStretchGraph *)widget_8(D)].x
	add	WORD PTR [rax], si	# *D.9193_138, dx2
	mov	rax, QWORD PTR [rsp+8]	# D.9213, %sfp
	add	rax, QWORD PTR [r13+624]	# D.9213, MEM[(struct HistStretchGraph *)widget_8(D)].y
	sub	WORD PTR [rax], cx	# *D.9213_149, dy2
	movzx	edx, WORD PTR [rsp+62]	# y, y
	movzx	esi, WORD PTR [rsp+60]	# x, x
	mov	rdi, QWORD PTR [rsp+24]	# tmp234, %sfp
	add	rdi, QWORD PTR [r13+608]	# tmp234, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	call	Rectangle_setCenter	#
	mov	rdi, r13	#, widget
	call	HistStretchGraph_refresh2	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r13	#, widget
	call	Widget_draw	#
	mov	r14d, ebp	# sty, sty
	mov	r15d, r12d	# stx, stx
	jmp	.L40	#
.L26:
	test	cx, cx	# dy2
	jle	.L31	#,
	mov	rdx, QWORD PTR [r13+624]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r9, QWORD PTR [rsp+8]	#, %sfp
	movsx	esi, WORD PTR [rdx+r9]	# *D.9213_168, *D.9213_168
	movsx	edx, cx	# dy2, dy2
	cmp	esi, edx	# *D.9213_168, dy2
	js	.L40	#,
.L31:
	test	cx, cx	# dy2
	jns	.L32	#,
	mov	rdx, QWORD PTR [r13+624]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r10, QWORD PTR [rsp+8]	#, %sfp
	movzx	edx, WORD PTR [rdx+r10]	# *D.9213_177, *D.9213_177
	movsx	esi, cx	# dy2, dy2
	sub	edx, esi	# tmp243, dy2
	cmp	edx, 255	# tmp243,
	jg	.L40	#,
.L32:
	add	WORD PTR [rsp+62], ax	# y, D.9175
	mov	rax, QWORD PTR [rsp+8]	# D.9213, %sfp
	add	rax, QWORD PTR [r13+624]	# D.9213, MEM[(struct HistStretchGraph *)widget_8(D)].y
	sub	WORD PTR [rax], cx	# *D.9213_192, dy2
	movzx	edx, WORD PTR [rsp+62]	# y, y
	movzx	esi, WORD PTR [rsp+60]	# x, x
	mov	rdi, QWORD PTR [rsp+24]	# tmp247, %sfp
	add	rdi, QWORD PTR [r13+608]	# tmp247, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	call	Rectangle_setCenter	#
	mov	rdi, r13	#, widget
	call	HistStretchGraph_refresh2	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r13	#, widget
	call	Widget_draw	#
	mov	r14d, ebp	# sty, sty
	jmp	.L40	#
.L24:
	cmp	al, 6	# D.9169,
	jne	.L40	#,
	mov	rax, QWORD PTR [r13+592]	# D.9243, MEM[(struct HistStretchGraph *)widget_8(D)].release_handler
	test	rax, rax	# D.9243
	je	.L17	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r13	#, widget
	call	rax	# D.9243
	jmp	.L17	#
.L40:
	mov	rdi, QWORD PTR [rbx+80]	# screen_10(D)->pevent, screen_10(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.9247
	.p2align 4,,2
	jne	.L34	#,
	.p2align 4,,2
	jmp	.L40	#
.L17:
	add	rsp, 72	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	HistStretchGraph_mousePressed, .-HistStretchGraph_mousePressed
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"HistStretchGraph.c"
	.text
	.globl	HistStretchGraph_vdestroy
	.type	HistStretchGraph_vdestroy, @function
HistStretchGraph_vdestroy:
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
	mov	rbp, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.9083	#,
	call	Static_printObj2	#
	cmp	QWORD PTR [rbp+608], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect,
	je	.L43	#,
	cmp	WORD PTR [rbp+632], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].size,
	je	.L44	#,
	mov	ebx, 0	# i,
.L45:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp77, i,
	add	rdi, QWORD PTR [rbp+608]	# tmp78, MEM[(struct HistStretchGraph *)vthis_2(D)].rect
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR [rbp+632], bx	# MEM[(struct HistStretchGraph *)vthis_2(D)].size, i
	ja	.L45	#,
.L44:
	mov	rdi, QWORD PTR [rbp+608]	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect, MEM[(struct HistStretchGraph *)vthis_2(D)].rect
	mov	edx, 252	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR [rbp+608], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect,
.L43:
	lea	rdi, [rbp+176]	# tmp81,
	call	delete	#
	lea	rdi, [rbp+384]	# tmp82,
	call	delete	#
	mov	rdi, QWORD PTR [rbp+616]	# MEM[(struct HistStretchGraph *)vthis_2(D)].x, MEM[(struct HistStretchGraph *)vthis_2(D)].x
	mov	edx, 259	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	rdi, QWORD PTR [rbp+624]	# MEM[(struct HistStretchGraph *)vthis_2(D)].y, MEM[(struct HistStretchGraph *)vthis_2(D)].y
	mov	edx, 260	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR [rbp+624], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].y,
	mov	QWORD PTR [rbp+616], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].x,
	mov	rdi, QWORD PTR [rbp+600]	# MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf
	mov	edx, 263	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbp+600], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf,
	mov	rdi, rbp	#, vthis
	call	Widget_vdestroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	HistStretchGraph_vdestroy, .-HistStretchGraph_vdestroy
	.section	.rodata.str1.1
.LC7:
	.string	"hsg=NULL"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"HistStretchGraph: (x,y,w,h,maxx,maxy)=[%hu,%hu,%hu,%hu,%hu,%hu], (ax,ay)=[%hu,%hu], (tw,th)=[%hu,%hu], size=%hu"
	.text
	.globl	HistStretchGraph_toString
	.type	HistStretchGraph_toString, @function
HistStretchGraph_toString:
.LFB93:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC7	# D.9470,
	test	rdi, rdi	# this
	je	.L53	#,
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	movsx	r9d, WORD PTR [rdi+96]	# MEM[(struct Widget *)this_2(D)].pos.x, MEM[(struct Widget *)this_2(D)].pos.x
	movzx	eax, WORD PTR [rdi+632]	# this_2(D)->size, this_2(D)->size
	mov	DWORD PTR [rsp+72], eax	#, this_2(D)->size
	movzx	eax, WORD PTR [rdi+278]	# MEM[(struct Widget *)this_2(D) + 176B].pos.h, MEM[(struct Widget *)this_2(D) + 176B].pos.h
	mov	DWORD PTR [rsp+64], eax	#, MEM[(struct Widget *)this_2(D) + 176B].pos.h
	movzx	eax, WORD PTR [rdi+276]	# MEM[(struct Widget *)this_2(D) + 176B].pos.w, MEM[(struct Widget *)this_2(D) + 176B].pos.w
	mov	DWORD PTR [rsp+56], eax	#, MEM[(struct Widget *)this_2(D) + 176B].pos.w
	movzx	eax, WORD PTR [rdi+640]	# this_2(D)->ay, this_2(D)->ay
	mov	DWORD PTR [rsp+48], eax	#, this_2(D)->ay
	movzx	eax, WORD PTR [rdi+638]	# this_2(D)->ax, this_2(D)->ax
	mov	DWORD PTR [rsp+40], eax	#, this_2(D)->ax
	movzx	eax, WORD PTR [rdi+154]	# MEM[(struct Widget *)this_2(D)].maxy, MEM[(struct Widget *)this_2(D)].maxy
	mov	DWORD PTR [rsp+32], eax	#, MEM[(struct Widget *)this_2(D)].maxy
	movzx	eax, WORD PTR [rdi+152]	# MEM[(struct Widget *)this_2(D)].maxx, MEM[(struct Widget *)this_2(D)].maxx
	mov	DWORD PTR [rsp+24], eax	#, MEM[(struct Widget *)this_2(D)].maxx
	movzx	eax, WORD PTR [rdi+102]	# MEM[(struct Widget *)this_2(D)].pos.h, MEM[(struct Widget *)this_2(D)].pos.h
	mov	DWORD PTR [rsp+16], eax	#, MEM[(struct Widget *)this_2(D)].pos.h
	movzx	eax, WORD PTR [rdi+100]	# MEM[(struct Widget *)this_2(D)].pos.w, MEM[(struct Widget *)this_2(D)].pos.w
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Widget *)this_2(D)].pos.w
	movsx	eax, WORD PTR [rdi+98]	# MEM[(struct Widget *)this_2(D)].pos.y, MEM[(struct Widget *)this_2(D)].pos.y
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Widget *)this_2(D)].pos.y
	mov	r8d, OFFSET FLAT:.LC8	#,
	mov	ecx, 160	#,
	mov	edx, 1	#,
	mov	esi, 160	#,
	mov	edi, OFFSET FLAT:str_id.9037	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9037	# D.9470,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
.L53:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	HistStretchGraph_toString, .-HistStretchGraph_toString
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"HistStretchGraph_setCountPoints: Failed to HistStretchGraph_refresh2(). Exited with code %d\n"
	.text
	.globl	HistStretchGraph_setCountPoints
	.type	HistStretchGraph_setCountPoints, @function
HistStretchGraph_setCountPoints:
.LFB95:
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
	mov	rbx, rdi	# this, this
	cmp	WORD PTR [rdi+632], si	# this_4(D)->size, size
	jne	.L55	#,
	mov	ebp, 99	# s,
	cmp	QWORD PTR [rdi+616], 0	# this_4(D)->x,
	jne	.L56	#,
.L55:
	movzx	ecx, si	# size, size
	mov	eax, 256	# tmp144,
	mov	edx, eax	# tmp143, tmp144
	sar	edx, 31	# tmp143,
	idiv	ecx	# size
	mov	r14d, eax	# dx, tmp142
	mov	WORD PTR [rbx+632], si	# this_4(D)->size, size
	movzx	r12d, si	# D.9420, size
	lea	rbp, [r12+r12]	# D.9421,
	mov	rdi, QWORD PTR [rbx+616]	# this_4(D)->x, this_4(D)->x
	mov	ecx, 118	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	rsi, rbp	#, D.9421
	call	wrealloc	#
	mov	QWORD PTR [rbx+616], rax	# this_4(D)->x, D.9422
	mov	rdi, QWORD PTR [rbx+624]	# this_4(D)->y, this_4(D)->y
	mov	ecx, 119	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	rsi, rbp	#, D.9421
	call	wrealloc	#
	mov	QWORD PTR [rbx+624], rax	# this_4(D)->y, D.9424
	cmp	QWORD PTR [rbx+608], 0	# this_4(D)->rect,
	je	.L57	#,
	cmp	WORD PTR [rbx+632], 0	# this_4(D)->size,
	je	.L57	#,
	mov	ebp, 0	# i,
.L58:
	movzx	edi, bp	# i, i
	imul	rdi, rdi, 184	# tmp148, i,
	add	rdi, QWORD PTR [rbx+608]	# tmp149, this_4(D)->rect
	call	delete	#
	add	ebp, 1	# i,
	cmp	WORD PTR [rbx+632], bp	# this_4(D)->size, i
	ja	.L58	#,
.L57:
	imul	rsi, r12, 184	# tmp151, D.9420,
	mov	rdi, QWORD PTR [rbx+608]	# this_4(D)->rect, this_4(D)->rect
	mov	ecx, 125	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	call	wrealloc	#
	mov	QWORD PTR [rbx+608], rax	# this_4(D)->rect, D.9432
	mov	rax, QWORD PTR [rbx+616]	# D.9414, this_4(D)->x
	mov	WORD PTR [rax], 0	# *D.9414_32,
	movzx	edx, WORD PTR [rbx+632]	# this_4(D)->size, this_4(D)->size
	mov	rax, QWORD PTR [rbx+616]	# this_4(D)->x, this_4(D)->x
	mov	WORD PTR [rax-2+rdx*2], 255	# *D.9436_38,
	mov	r12d, 0	# i,
	cmp	WORD PTR [rbx+632], 0	# this_4(D)->size,
	jne	.L69	#,
	jmp	.L60	#
.L62:
	test	r12w, r12w	# i
	je	.L69	#,
	movzx	edx, r12w	# i, i
	movzx	eax, ax	# D.9411, D.9411
	sub	eax, 1	# tmp158,
	cmp	edx, eax	# i, tmp158
	je	.L69	#,
	mov	rax, QWORD PTR [rbx+616]	# D.9414, this_4(D)->x
	movzx	edx, r12w	# D.9428, i
	mov	ecx, r14d	# tmp160, dx
	add	cx, WORD PTR [rax-2+rdx*2]	# tmp160, *D.9449_53
	mov	WORD PTR [rax+rdx*2], cx	# *D.9445_48, tmp160
.L69:
	movzx	ebp, r12w	# D.9428, i
	imul	r13, rbp, 184	# tmp162, D.9428,
	add	r13, QWORD PTR [rbx+608]	# rect, this_4(D)->rect
	mov	rax, QWORD PTR [rbx+616]	# this_4(D)->x, this_4(D)->x
	movzx	edx, WORD PTR [rax+rbp*2]	# D.9453, *D.9445_67
	mov	rax, QWORD PTR [rbx+624]	# this_4(D)->y, this_4(D)->y
	mov	WORD PTR [rax+rbp*2], dx	# *D.9452_63, D.9453
	mov	esi, 16711935	#,
	mov	rdi, r13	#, rect
	call	Rectangle_new	#
	mov	rax, QWORD PTR [rbx+624]	# this_4(D)->y, this_4(D)->y
	movzx	eax, WORD PTR [rax+rbp*2]	# *D.9452_73, *D.9452_73
	add	eax, eax	# tmp167
	movzx	edx, WORD PTR [rbx+636]	# tmp169, this_4(D)->zero_y
	sub	edx, eax	# tmp169, tmp167
	movzx	edx, dx	# tmp171, tmp169
	mov	rax, QWORD PTR [rbx+616]	# this_4(D)->x, this_4(D)->x
	movzx	esi, WORD PTR [rax+rbp*2]	# *D.9445_81, *D.9445_81
	movzx	eax, WORD PTR [rbx+634]	# this_4(D)->zero_x, this_4(D)->zero_x
	lea	esi, [rax+rsi*2]	# tmp175,
	movzx	esi, si	# tmp177, tmp175
	mov	rdi, r13	#, rect
	call	Rectangle_setCenter	#
	mov	edx, 12	#,
	mov	esi, 12	#,
	mov	rdi, r13	#, rect
	call	Rectangle_setSize	#
	mov	rdi, r13	#, rect
	call	Widget_refresh	#
	add	r12d, 1	# i,
	movzx	eax, WORD PTR [rbx+632]	# D.9411, this_4(D)->size
	cmp	ax, r12w	# D.9411, i
	ja	.L62	#,
.L60:
	mov	rdi, rbx	#, this
	call	HistStretchGraph_refresh2	#
	mov	ebp, eax	# s,
	test	al, al	# s
	je	.L56	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L56:
	mov	eax, ebp	#, s
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
.LFE95:
	.size	HistStretchGraph_setCountPoints, .-HistStretchGraph_setCountPoints
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"HistStretchGraph_vrefresh: Failed on assertion (! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible)\n"
	.align 8
.LC11:
	.string	"HistStretchGraph_vrefresh: Failed to CreateRGBSurface widget->surf: %s\n"
	.align 8
.LC12:
	.string	"HistStretchGraph_vrefresh: Failed to CreateRGBSurface this->bg_surf: %s\n"
	.align 8
.LC13:
	.string	"HistStretchGraph_vrefresh: Failed to fill background surface (FillRect)\n"
	.align 8
.LC14:
	.string	"HistStretchGraph_vrefresh: [1] SDL_BlitSurface(WIDGET(&this->labelY)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelY)->pos )) failed: %s\n"
	.align 8
.LC15:
	.string	"HistStretchGraph_refresh> [2] SDL_BlitSurface(WIDGET(&this->labelY)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelY)->pos )) failed: %s\n"
	.text
	.globl	HistStretchGraph_vrefresh
	.type	HistStretchGraph_vrefresh, @function
HistStretchGraph_vrefresh:
.LFB96:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 96
	mov	rbx, rdi	# vthis, vthis
	cmp	BYTE PTR [rdi+343], 0	# MEM[(struct Widget *)vthis_3(D) + 176B].visible,
	je	.L72	#,
	cmp	BYTE PTR [rdi+551], 0	# MEM[(struct Widget *)vthis_3(D) + 384B].visible,
	jne	.L73	#,
.L72:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 120	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC10	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L71	#
.L73:
	movzx	ecx, WORD PTR [rdi+276]	# tw, MEM[(struct Widget *)vthis_3(D) + 176B].pos.w
	movzx	r12d, WORD PTR [rdi+278]	# th, MEM[(struct Widget *)vthis_3(D) + 176B].pos.h
	lea	eax, [rcx+14]	# D.9316,
	mov	WORD PTR [rdi+638], ax	# MEM[(struct HistStretchGraph *)vthis_3(D)].ax, D.9316
	lea	edx, [r12+14]	# D.9317,
	mov	WORD PTR [rdi+640], dx	# MEM[(struct HistStretchGraph *)vthis_3(D)].ay, D.9317
	shr	cx	# tw
	mov	WORD PTR [rsp+28], cx	# %sfp, tw
	lea	eax, [rcx+522+rax*2]	# D.9322,
	mov	WORD PTR [rdi+100], ax	# MEM[(struct Widget *)vthis_3(D)].pos.w, D.9322
	shr	r12w	# D.9325
	lea	edx, [r12+522+rdx*2]	# D.9327,
	mov	WORD PTR [rdi+102], dx	# MEM[(struct Widget *)vthis_3(D)].pos.h, D.9327
	movzx	ecx, WORD PTR [rdi+96]	# MEM[(struct Widget *)vthis_3(D)].pos.x, MEM[(struct Widget *)vthis_3(D)].pos.x
	lea	ecx, [rax-1+rcx]	# tmp230,
	mov	WORD PTR [rdi+152], cx	# MEM[(struct Widget *)vthis_3(D)].maxx, tmp230
	movzx	ecx, WORD PTR [rdi+98]	# MEM[(struct Widget *)vthis_3(D)].pos.y, MEM[(struct Widget *)vthis_3(D)].pos.y
	lea	ecx, [rdx-1+rcx]	# tmp233,
	mov	WORD PTR [rdi+154], cx	# MEM[(struct Widget *)vthis_3(D)].maxy, tmp233
	cmp	QWORD PTR [rdi+88], 0	# MEM[(struct Widget *)vthis_3(D)].surf,
	jne	.L75	#,
	movzx	esi, dx	# D.9327, D.9327
	movzx	edi, ax	# D.9322, D.9322
	call	Static_newSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_3(D)].surf, D.9343
	test	rax, rax	# D.9343
	jne	.L75	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9346
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L71	#
.L75:
	cmp	QWORD PTR [rbx+600], 0	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf,
	jne	.L76	#,
	movzx	esi, WORD PTR [rbx+102]	# MEM[(struct Widget *)vthis_3(D)].pos.h, MEM[(struct Widget *)vthis_3(D)].pos.h
	movzx	edi, WORD PTR [rbx+100]	# MEM[(struct Widget *)vthis_3(D)].pos.w, MEM[(struct Widget *)vthis_3(D)].pos.w
	call	Static_newSurface	#
	mov	QWORD PTR [rbx+600], rax	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, D.9350
	test	rax, rax	# D.9350
	jne	.L76	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9353
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L71	#
.L76:
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	edx, 16777215	#,
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.9354
	je	.L77	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 72	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC13	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L71	#
.L77:
	movzx	edx, WORD PTR [rbx+640]	# D.9323, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	lea	r13d, [r12+519+rdx]	# tmp240,
	movsx	r13d, r13w	# D.9359, tmp240
	movsx	esi, WORD PTR [rbx+638]	# D.9361, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movsx	edx, dx	# D.9323, D.9323
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, r13d	#, D.9359
	mov	ecx, esi	#, D.9361
	call	thickLineColor	#
	movzx	esi, WORD PTR [rbx+638]	# D.9318, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	lea	ebp, [rsi+134]	# x2,
	movzx	edx, bp	# x2, x2
	movzx	eax, si	# D.9318, D.9318
	add	eax, 517	# tmp245,
	cmp	edx, eax	# x2, tmp245
	jg	.L78	#,
	mov	r14d, -1212696577	# tmp295,
.L85:
	movsx	edx, WORD PTR [rbx+640]	# MEM[(struct HistStretchGraph *)vthis_3(D)].ay, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	movsx	esi, bp	# x2, x2
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, r14d	#, tmp295
	mov	ecx, r13d	#, D.9359
	call	vlineColor	#
	sub	bp, -128	# x2,
	movzx	esi, WORD PTR [rbx+638]	# D.9318, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movzx	edx, bp	# x2, x2
	movzx	eax, si	# D.9318, D.9318
	add	eax, 517	# tmp251,
	cmp	edx, eax	# x2, tmp251
	jle	.L85	#,
.L78:
	movsx	edx, WORD PTR [rbx+640]	# MEM[(struct HistStretchGraph *)vthis_3(D)].ay, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	add	si, 517	# tmp253,
	movsx	esi, si	# tmp254, tmp253
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, -1212696577	#,
	mov	ecx, r13d	#, D.9359
	call	vlineColor	#
	movzx	esi, WORD PTR [rbx+638]	# D.9318, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movzx	ecx, WORD PTR [rbx+100]	# tmp256, MEM[(struct Widget *)vthis_3(D)].pos.w
	sub	ecx, esi	# tmp256, D.9318
	movsx	ecx, cx	# tmp258, tmp256
	movsx	esi, si	# D.9318, D.9318
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, r13d	#, D.9359
	mov	edx, r13d	#, D.9359
	call	thickLineColor	#
	mov	r15d, r12d	# D.9357, D.9325
	add	r15w, WORD PTR [rbx+640]	# D.9357, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	lea	r13d, [r15+7]	# y1,
	mov	WORD PTR [rbx+480], 7	# MEM[(struct Widget *)vthis_3(D) + 384B].pos.x,
	mov	eax, r13d	# tmp262, y1
	sub	eax, r12d	# tmp262, D.9325
	mov	WORD PTR [rbx+482], ax	# MEM[(struct Widget *)vthis_3(D) + 384B].pos.y, tmp262
	lea	rcx, [rbx+480]	# tmp264,
	mov	rdx, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	rdi, QWORD PTR [rbx+472]	# MEM[(struct Widget *)vthis_3(D) + 384B].surf, MEM[(struct Widget *)vthis_3(D) + 384B].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9379
	je	.L80	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9382
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L71	#
.L80:
	movzx	eax, WORD PTR [rbx+638]	# D.9318, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	lea	edx, [rax+516]	#,
	mov	WORD PTR [rsp+30], dx	# %sfp,
	lea	ebp, [r15+8]	# y2,
	movsx	r12d, dx	# D.9386,
	movsx	ecx, bp	# y2, y2
	add	eax, 2	# tmp268,
	movsx	esi, ax	# tmp269, tmp268
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, -1212696577	#,
	mov	edx, r12d	#, D.9386
	call	hlineColor	#
	movzx	esi, WORD PTR [rbx+638]	# D.9318, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movsx	edx, r13w	# D.9359, y1
	lea	ecx, [rsi+7]	# tmp271,
	movsx	ecx, cx	# tmp272, tmp271
	movsx	esi, si	# D.9318, D.9318
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, edx	#, D.9359
	call	thickLineColor	#
	lea	r13d, [r15+519]	# y1,
	cmp	bp, r13w	# y2, y1
	jae	.L81	#,
	mov	r14d, -1212696577	# tmp294,
.L84:
	sub	bp, -128	# y2,
	movsx	ecx, bp	# y2, y2
	movzx	esi, WORD PTR [rbx+638]	# tmp276, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	add	esi, 2	# tmp276,
	movsx	esi, si	# tmp278, tmp276
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, r14d	#, tmp294
	mov	edx, r12d	#, D.9386
	call	hlineColor	#
	cmp	r13w, bp	# y1, y2
	ja	.L84	#,
.L81:
	lea	edx, [r15+512]	# tmp281,
	movsx	edx, dx	# tmp282, tmp281
	mov	rdi, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	movsx	r8d, r13w	#, y1
	mov	ecx, r12d	#, D.9386
	mov	esi, r12d	#, D.9386
	call	thickLineColor	#
	movzx	eax, WORD PTR [rsp+30]	# tmp284, %sfp
	sub	ax, WORD PTR [rsp+28]	# tmp284, %sfp
	mov	WORD PTR [rbx+272], ax	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.x, tmp284
	lea	eax, [r15+526]	# tmp285,
	mov	WORD PTR [rbx+274], ax	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.y, tmp285
	add	r15w, 514	# tmp286,
	mov	WORD PTR [rbx+636], r15w	# MEM[(struct HistStretchGraph *)vthis_3(D)].zero_y, tmp286
	movzx	eax, WORD PTR [rbx+638]	# tmp287, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	add	eax, 2	# tmp287,
	mov	WORD PTR [rbx+634], ax	# MEM[(struct HistStretchGraph *)vthis_3(D)].zero_x, tmp287
	lea	rcx, [rbx+272]	# tmp290,
	mov	rdx, QWORD PTR [rbx+600]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	rdi, QWORD PTR [rbx+264]	# MEM[(struct Widget *)vthis_3(D) + 176B].surf, MEM[(struct Widget *)vthis_3(D) + 176B].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9404
	je	.L83	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9407
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L71	#
.L83:
	movzx	esi, WORD PTR [rbx+632]	# MEM[(struct HistStretchGraph *)vthis_3(D)].size, MEM[(struct HistStretchGraph *)vthis_3(D)].size
	mov	rdi, rbx	#, vthis
	call	HistStretchGraph_setCountPoints	#
.L71:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	HistStretchGraph_vrefresh, .-HistStretchGraph_vrefresh
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"%20s:\tWithin context: font=%p, size=%u\n"
	.section	.rodata.str1.1
.LC17:
	.string	"255"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"HistStretchGraph_new: Failed on assertion ((! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible))\n"
	.text
	.globl	HistStretchGraph_new
	.type	HistStretchGraph_new, @function
HistStretchGraph_new:
.LFB99:
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
	mov	r12, rsi	# font, font
	mov	ebp, edx	# size, size
	test	rdi, rdi	# this
	jne	.L90	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9120	#,
	call	Static_nullThis2	#
	movzx	r9d, bp	#, size
	mov	r8, r12	#, font
	mov	ecx, OFFSET FLAT:__FUNCTION__.9120	#,
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L91	#
.L90:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9120	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	QWORD PTR [rbx+56], OFFSET FLAT:HistStretchGraph_mousePressed	# MEM[(struct Widget *)this_3(D)].mevent_internal.press,
	mov	BYTE PTR [rbx+168], 1	# MEM[(struct Widget *)this_3(D)].mevent,
	mov	QWORD PTR [rbx+608], 0	# this_3(D)->rect,
	mov	QWORD PTR [rbx+600], 0	# this_3(D)->bg_surf,
	mov	QWORD PTR [rbx+616], 0	# this_3(D)->x,
	mov	QWORD PTR [rbx+624], 0	# this_3(D)->y,
	test	bp, bp	# size
	mov	eax, 8	# tmp73,
	cmove	ebp, eax	# size,, size, tmp73
	mov	WORD PTR [rbx+632], bp	# this_3(D)->size, size
	mov	QWORD PTR [rbx+592], 0	# this_3(D)->release_handler,
	lea	rbp, [rbx+176]	# D.9131,
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, rbp	#, D.9131
	call	TextBlock_new	#
	mov	rsi, r12	#, font
	mov	rdi, rbp	#, D.9131
	call	TextBlock_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, D.9131
	call	TextBlock_setBackgroundColor	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.9131
	call	TextBlock_setForegroundColor	#
	mov	rdi, rbp	#, D.9131
	call	Widget_refresh	#
	lea	rbp, [rbx+384]	# D.9132,
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, rbp	#, D.9132
	call	TextBlock_new	#
	mov	rsi, r12	#, font
	mov	rdi, rbp	#, D.9132
	call	TextBlock_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, D.9132
	call	TextBlock_setBackgroundColor	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.9132
	call	TextBlock_setForegroundColor	#
	mov	rdi, rbp	#, D.9132
	call	Widget_refresh	#
	cmp	BYTE PTR [rbx+343], 0	# MEM[(struct Widget *)this_3(D) + 176B].visible,
	je	.L93	#,
	cmp	BYTE PTR [rbx+551], 0	# MEM[(struct Widget *)this_3(D) + 384B].visible,
	jne	.L91	#,
.L93:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 117	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC18	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
.L91:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	HistStretchGraph_new, .-HistStretchGraph_new
	.globl	HistStretchGraph_class
	.data
	.align 8
	.type	HistStretchGraph_class, @object
	.size	HistStretchGraph_class, 8
HistStretchGraph_class:
	.quad	type
	.local	str_id.9037
	.comm	str_id.9037,160,32
	.section	.rodata.str1.1
.LC19:
	.string	"HistStretchGraph"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	648
# name:
	.quad	.LC19
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9083, @object
	.size	__FUNCTION__.9083, 26
__FUNCTION__.9083:
	.string	"HistStretchGraph_vdestroy"
	.align 16
	.type	__FUNCTION__.9120, @object
	.size	__FUNCTION__.9120, 21
__FUNCTION__.9120:
	.string	"HistStretchGraph_new"
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	HistStretchGraph_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	HistStretchGraph_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
