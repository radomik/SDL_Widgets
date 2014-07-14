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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB104:
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
	mov	rdi, QWORD PTR [rdi+576]	# this_5(D)->bg_surf, this_5(D)->bg_surf
	mov	ecx, 0	#,
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9549
	je	.L2	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9552
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_5(D)].class, MEM[(struct coObject *)this_5(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9554_14->vtable, D.9554_14->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9555_15 + 8B], MEM[(const void * *)D.9555_15 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9557_17].setVisible
	mov	eax, 1	# D.9559,
	jmp	.L3	#
.L2:
	mov	rdi, QWORD PTR [rbx+584]	# D.9560, this_5(D)->rect
	cmp	BYTE PTR [rdi+159], 0	# MEM[(struct Widget *)D.9560_20].visible,
	jne	.L4	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 56	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_5(D)].class, MEM[(struct coObject *)this_5(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9554_23->vtable, D.9554_23->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9555_24 + 8B], MEM[(const void * *)D.9555_24 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9557_26].setVisible
	mov	eax, 4	# D.9559,
	jmp	.L3	#
.L4:
	lea	rdx, [rsp+18]	# tmp145,
	lea	rsi, [rsp+16]	#,
	call	Rectangle_getCenter	#
	cmp	WORD PTR [rbx+608], 0	# this_5(D)->size,
	je	.L5	#,
	mov	r12, QWORD PTR [rbx+584]	# wt_rect, this_5(D)->rect
	cmp	BYTE PTR [r12+159], 0	# wt_rect_126->visible,
	je	.L12	#,
	mov	ebp, 0	# i,
	mov	r13d, 1	# t,
	jmp	.L15	#
.L11:
	movzx	eax, bp	# i, i
	lea	rdx, [rax+rax*4]	# tmp150,
	lea	r12, [rax+rdx*2]	# tmp152,
	sal	r12, 4	# tmp153,
	add	r12, QWORD PTR [rbx+584]	# wt_rect, this_5(D)->rect
	cmp	BYTE PTR [r12+159], 0	# wt_rect_34->visible,
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
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_5(D)].class, MEM[(struct coObject *)this_5(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9554_38->vtable, D.9554_38->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9555_39 + 8B], MEM[(const void * *)D.9555_39 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9557_41].setVisible
	mov	eax, 4	# D.9559,
	jmp	.L3	#
.L8:
	test	bp, bp	# i
	je	.L15	#,
	mov	esi, 1	# D.9572,
	and	rsi, r13	# D.9572, t
	sal	rsi, 2	# tmp162,
	lea	rdx, [rsp+18+rsi]	# tmp164,
	lea	rax, [rsp+16]	#,
	add	rsi, rax	# tmp168,
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
	lea	rcx, [r12+96]	# tmp175,
	mov	rdx, QWORD PTR [rbx+88]	# MEM[(struct Widget *)this_5(D)].surf, MEM[(struct Widget *)this_5(D)].surf
	mov	rdi, QWORD PTR [r12+88]	# wt_rect_139->surf, wt_rect_139->surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9591
	je	.L10	#,
	call	SDL_GetError	#
	mov	r13, rax	# D.9594,
	mov	rdi, r12	#, wt_rect
	call	Widget_toString	#
	mov	r8, rax	# D.9595,
	movzx	ecx, bp	# i, i
	mov	r9, r13	#, D.9594
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_5(D)].class, MEM[(struct coObject *)this_5(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9554_75->vtable, D.9554_75->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9555_76 + 8B], MEM[(const void * *)D.9555_76 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9557_78].setVisible
	mov	eax, 5	# D.9559,
	jmp	.L3	#
.L10:
	add	ebp, 1	# i,
	cmp	WORD PTR [rbx+608], bp	# this_5(D)->size, i
	ja	.L11	#,
.L5:
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_5(D)].class, MEM[(struct coObject *)this_5(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9554_82->vtable, D.9554_82->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9555_83 + 8B], MEM[(const void * *)D.9555_83 + 8B]
	mov	esi, 1	#,
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9557_85].setVisible
	mov	eax, 0	# D.9559,
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
.LFE104:
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
.LFB108:
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
	mov	r12, rdi	# widget, widget
	mov	rbx, rsi	# screen, screen
	mov	BYTE PTR [rsi+169], 1	# screen_10(D)->event_handled,
	cmp	QWORD PTR [rdi+584], 0	# MEM[(struct HistStretchGraph *)widget_8(D)].rect,
	jne	.L18	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 76	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	jmp	.L17	#
.L18:
	movzx	r13d, WORD PTR [rsi+14]	# screen_10(D)->event.button.y, screen_10(D)->event.button.y
	sub	r13w, WORD PTR [rdi+98]	# tmp201, widget_8(D)->pos.y
	movzx	r13d, r13w	# D.9444, tmp201
	movzx	r14d, WORD PTR [rsi+12]	# screen_10(D)->event.button.x, screen_10(D)->event.button.x
	sub	r14w, WORD PTR [rdi+96]	# tmp204, widget_8(D)->pos.x
	movzx	r14d, r14w	# D.9445, tmp204
	mov	r8d, r13d	#, D.9444
	mov	ecx, r14d	#, D.9445
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	cmp	WORD PTR [r12+608], 0	# MEM[(struct HistStretchGraph *)widget_8(D)].size,
	je	.L17	#,
	mov	ebp, 0	# i,
.L21:
	movzx	eax, bp	# i, i
	lea	rdx, [rax+rax*4]	# tmp210,
	lea	rdi, [rax+rdx*2]	# tmp212,
	sal	rdi, 4	# tmp213,
	add	rdi, QWORD PTR [r12+584]	# tmp214, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	mov	edx, r13d	#, D.9444
	mov	esi, r14d	#, D.9445
	call	Rectangle_contains	#
	test	al, al	# D.9449
	jne	.L20	#,
	add	ebp, 1	# i,
	cmp	WORD PTR [r12+608], bp	# MEM[(struct HistStretchGraph *)widget_8(D)].size, i
	ja	.L21	#,
.L20:
	movzx	eax, WORD PTR [r12+608]	# D.9451, MEM[(struct HistStretchGraph *)widget_8(D)].size
	cmp	ax, bp	# D.9451, i
	je	.L17	#,
	movzx	r15d, WORD PTR [rbx+12]	# stx, screen_10(D)->event.button.x
	movzx	r14d, WORD PTR [rbx+14]	# sty, screen_10(D)->event.button.y
	mov	edx, 0	# iftmp.3,
	test	bp, bp	# i
	je	.L22	#,
	movzx	edx, bp	# i, i
	movzx	eax, ax	# D.9451, D.9451
	sub	eax, 1	# tmp218,
	cmp	edx, eax	# i, tmp218
	setl	dl	#, iftmp.3
	movzx	edx, dl	# iftmp.3, iftmp.3
.L22:
	mov	BYTE PTR [rsp+23], dl	# %sfp, iftmp.3
	movzx	ebp, bp	# D.9446, i
	lea	rax, [rbp+0+rbp*4]	# tmp223,
	lea	rax, [rbp+0+rax*2]	# tmp225,
	sal	rax, 4	# tmp226,
	mov	QWORD PTR [rsp+24], rax	# %sfp, tmp226
	mov	rdi, QWORD PTR [r12+584]	# tmp229, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	add	rdi, rax	# tmp229, tmp226
	lea	rdx, [rsp+62]	#,
	lea	rsi, [rsp+60]	#,
	call	Rectangle_getCenter	#
	lea	rax, [rbp+rbp]	#,
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	lea	rsi, [rbp-2+rbp]	#,
	mov	QWORD PTR [rsp+40], rsi	# %sfp,
	lea	rbp, [rbp+2+rbp]	#,
	mov	QWORD PTR [rsp+32], rbp	# %sfp,
	jmp	.L40	#
.L34:
	movzx	eax, BYTE PTR [rbx+8]	# D.9462, screen_10(D)->event.type
	cmp	al, 4	# D.9462,
	jne	.L24	#,
	movzx	r13d, WORD PTR [rbx+12]	# stx, screen_10(D)->event.motion.x
	mov	edx, r13d	# D.9466, stx
	sub	edx, r15d	# D.9466, stx
	movzx	ebp, WORD PTR [rbx+14]	# sty, screen_10(D)->event.motion.y
	mov	eax, ebp	# D.9468, sty
	sub	eax, r14d	# D.9468, sty
	mov	ecx, eax	# tmp233, D.9468
	or	ecx, edx	# tmp233, D.9466
	test	cl, 1	# tmp233,
	jne	.L40	#,
	mov	ecx, eax	# dy2, D.9468
	sar	cx	# dy2
	cmp	BYTE PTR [rsp+23], 0	# %sfp,
	je	.L26	#,
	mov	esi, edx	# dx2, D.9466
	sar	si	# dx2
	jns	.L27	#,
	mov	r9, QWORD PTR [r12+592]	# D.9484, MEM[(struct HistStretchGraph *)widget_8(D)].x
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	edi, WORD PTR [r9+r8]	# D.9488, *D.9486_67
	movsx	r8d, si	# dx2, dx2
	add	r8d, edi	# D.9490, D.9488
	cmp	edi, r8d	# D.9488, D.9490
	jl	.L40	#,
	mov	r10, QWORD PTR [rsp+40]	#, %sfp
	movzx	edi, WORD PTR [r9+r10]	# *D.9495_90, *D.9495_90
	cmp	r8d, edi	# D.9490, *D.9495_90
	jl	.L40	#,
.L27:
	test	si, si	# dx2
	jle	.L28	#,
	mov	rdi, QWORD PTR [r12+592]	# D.9484, MEM[(struct HistStretchGraph *)widget_8(D)].x
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	r9d, WORD PTR [rdi+r8]	# *D.9486_96, *D.9486_96
	movsx	r8d, si	# dx2, dx2
	add	r8d, r9d	# tmp239, *D.9486_96
	mov	r9, QWORD PTR [rsp+32]	#, %sfp
	movzx	edi, WORD PTR [rdi+r9]	# *D.9501_105, *D.9501_105
	cmp	r8d, edi	# tmp239, *D.9501_105
	jg	.L40	#,
.L28:
	test	cx, cx	# dy2
	jle	.L29	#,
	mov	rdi, QWORD PTR [r12+600]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r10, QWORD PTR [rsp+8]	#, %sfp
	movsx	r8d, WORD PTR [rdi+r10]	# *D.9506_111, *D.9506_111
	movsx	edi, cx	# dy2, dy2
	cmp	r8d, edi	# *D.9506_111, dy2
	js	.L40	#,
.L29:
	test	cx, cx	# dy2
	jns	.L30	#,
	mov	rdi, QWORD PTR [r12+600]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	edi, WORD PTR [rdi+r8]	# *D.9506_120, *D.9506_120
	movsx	r8d, cx	# dy2, dy2
	sub	edi, r8d	# tmp248, dy2
	cmp	edi, 255	# tmp248,
	jg	.L40	#,
.L30:
	add	WORD PTR [rsp+60], dx	# x, D.9466
	add	WORD PTR [rsp+62], ax	# y, D.9468
	mov	rax, QWORD PTR [rsp+8]	# D.9486, %sfp
	add	rax, QWORD PTR [r12+592]	# D.9486, MEM[(struct HistStretchGraph *)widget_8(D)].x
	add	WORD PTR [rax], si	# *D.9486_138, dx2
	mov	rax, QWORD PTR [rsp+8]	# D.9506, %sfp
	add	rax, QWORD PTR [r12+600]	# D.9506, MEM[(struct HistStretchGraph *)widget_8(D)].y
	sub	WORD PTR [rax], cx	# *D.9506_149, dy2
	movzx	edx, WORD PTR [rsp+62]	# y, y
	movzx	esi, WORD PTR [rsp+60]	# x, x
	mov	rdi, QWORD PTR [rsp+24]	# tmp253, %sfp
	add	rdi, QWORD PTR [r12+584]	# tmp253, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	call	Rectangle_setCenter	#
	mov	rdi, r12	#, widget
	call	HistStretchGraph_refresh2	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)widget_8(D)].class, MEM[(struct coObject *)widget_8(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9527_161->vtable, D.9527_161->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9528_162 + 8B], MEM[(const void * *)D.9528_162 + 8B]
	mov	edx, 1	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r12	#, widget
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9530_164].draw
	mov	r14d, ebp	# sty, sty
	mov	r15d, r13d	# stx, stx
	jmp	.L40	#
.L26:
	test	cx, cx	# dy2
	jle	.L31	#,
	mov	rdx, QWORD PTR [r12+600]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r9, QWORD PTR [rsp+8]	#, %sfp
	movsx	esi, WORD PTR [rdx+r9]	# *D.9506_173, *D.9506_173
	movsx	edx, cx	# dy2, dy2
	cmp	esi, edx	# *D.9506_173, dy2
	js	.L40	#,
.L31:
	test	cx, cx	# dy2
	jns	.L32	#,
	mov	rdx, QWORD PTR [r12+600]	# MEM[(struct HistStretchGraph *)widget_8(D)].y, MEM[(struct HistStretchGraph *)widget_8(D)].y
	mov	r10, QWORD PTR [rsp+8]	#, %sfp
	movzx	edx, WORD PTR [rdx+r10]	# *D.9506_182, *D.9506_182
	movsx	esi, cx	# dy2, dy2
	sub	edx, esi	# tmp266, dy2
	cmp	edx, 255	# tmp266,
	jg	.L40	#,
.L32:
	add	WORD PTR [rsp+62], ax	# y, D.9468
	mov	rax, QWORD PTR [rsp+8]	# D.9506, %sfp
	add	rax, QWORD PTR [r12+600]	# D.9506, MEM[(struct HistStretchGraph *)widget_8(D)].y
	sub	WORD PTR [rax], cx	# *D.9506_197, dy2
	movzx	edx, WORD PTR [rsp+62]	# y, y
	movzx	esi, WORD PTR [rsp+60]	# x, x
	mov	rdi, QWORD PTR [rsp+24]	# tmp270, %sfp
	add	rdi, QWORD PTR [r12+584]	# tmp270, MEM[(struct HistStretchGraph *)widget_8(D)].rect
	call	Rectangle_setCenter	#
	mov	rdi, r12	#, widget
	call	HistStretchGraph_refresh2	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)widget_8(D)].class, MEM[(struct coObject *)widget_8(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9527_209->vtable, D.9527_209->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9528_210 + 8B], MEM[(const void * *)D.9528_210 + 8B]
	mov	edx, 1	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r12	#, widget
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9530_212].draw
	mov	r14d, ebp	# sty, sty
	jmp	.L40	#
.L24:
	cmp	al, 6	# D.9462,
	jne	.L40	#,
	mov	rax, QWORD PTR [r12+568]	# D.9541, MEM[(struct HistStretchGraph *)widget_8(D)].release_handler
	test	rax, rax	# D.9541
	je	.L17	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r12	#, widget
	call	rax	# D.9541
	jmp	.L17	#
.L40:
	mov	rdi, QWORD PTR [rbx+80]	# screen_10(D)->pevent, screen_10(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.9545
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
.LFE108:
	.size	HistStretchGraph_mousePressed, .-HistStretchGraph_mousePressed
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"HistStretchGraph.c"
	.text
	.globl	HistStretchGraph_vdestroy
	.type	HistStretchGraph_vdestroy, @function
HistStretchGraph_vdestroy:
.LFB107:
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
	cmp	QWORD PTR [rdi+584], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect,
	je	.L43	#,
	cmp	WORD PTR [rdi+608], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].size,
	je	.L44	#,
	mov	ebx, 0	# i,
.L45:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*4]	# tmp79,
	lea	rdi, [rax+rdx*2]	# tmp81,
	sal	rdi, 4	# tmp82,
	add	rdi, QWORD PTR [rbp+584]	# tmp83, MEM[(struct HistStretchGraph *)vthis_2(D)].rect
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR [rbp+608], bx	# MEM[(struct HistStretchGraph *)vthis_2(D)].size, i
	ja	.L45	#,
.L44:
	mov	rdi, QWORD PTR [rbp+584]	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect, MEM[(struct HistStretchGraph *)vthis_2(D)].rect
	mov	edx, 263	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR [rbp+584], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect,
.L43:
	lea	rdi, [rbp+168]	# tmp86,
	call	delete	#
	lea	rdi, [rbp+368]	# tmp87,
	call	delete	#
	mov	rdi, QWORD PTR [rbp+592]	# MEM[(struct HistStretchGraph *)vthis_2(D)].x, MEM[(struct HistStretchGraph *)vthis_2(D)].x
	mov	edx, 270	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	rdi, QWORD PTR [rbp+600]	# MEM[(struct HistStretchGraph *)vthis_2(D)].y, MEM[(struct HistStretchGraph *)vthis_2(D)].y
	mov	edx, 271	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR [rbp+600], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].y,
	mov	QWORD PTR [rbp+592], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].x,
	mov	rdi, QWORD PTR [rbp+576]	# MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf
	mov	edx, 274	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbp+576], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf,
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
.LFE107:
	.size	HistStretchGraph_vdestroy, .-HistStretchGraph_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"HistStretchGraph: (x,y,w,h,maxx,maxy)=[%hu,%hu,%hu,%hu,%hu,%hu], (ax,ay)=[%hu,%hu], (tw,th)=[%hu,%hu], size=%hu"
	.text
	.globl	HistStretchGraph_vtoString
	.type	HistStretchGraph_vtoString, @function
HistStretchGraph_vtoString:
.LFB103:
	.cfi_startproc
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	mov	eax, 0	# this,
	movsx	r9d, WORD PTR [rax+96]	# MEM[(struct Widget *)this_1(D)].pos.x, MEM[(struct Widget *)this_1(D)].pos.x
	movzx	edx, WORD PTR [rax+608]	# this_1(D)->size, this_1(D)->size
	mov	DWORD PTR [rsp+72], edx	#, this_1(D)->size
	movzx	edx, WORD PTR [rax+270]	# MEM[(struct Widget *)this_1(D) + 168B].pos.h, MEM[(struct Widget *)this_1(D) + 168B].pos.h
	mov	DWORD PTR [rsp+64], edx	#, MEM[(struct Widget *)this_1(D) + 168B].pos.h
	movzx	edx, WORD PTR [rax+268]	# MEM[(struct Widget *)this_1(D) + 168B].pos.w, MEM[(struct Widget *)this_1(D) + 168B].pos.w
	mov	DWORD PTR [rsp+56], edx	#, MEM[(struct Widget *)this_1(D) + 168B].pos.w
	movzx	edx, WORD PTR [rax+616]	# this_1(D)->ay, this_1(D)->ay
	mov	DWORD PTR [rsp+48], edx	#, this_1(D)->ay
	movzx	edx, WORD PTR [rax+614]	# this_1(D)->ax, this_1(D)->ax
	mov	DWORD PTR [rsp+40], edx	#, this_1(D)->ax
	movzx	edx, WORD PTR [rax+146]	# MEM[(struct Widget *)this_1(D)].maxy, MEM[(struct Widget *)this_1(D)].maxy
	mov	DWORD PTR [rsp+32], edx	#, MEM[(struct Widget *)this_1(D)].maxy
	movzx	edx, WORD PTR [rax+144]	# MEM[(struct Widget *)this_1(D)].maxx, MEM[(struct Widget *)this_1(D)].maxx
	mov	DWORD PTR [rsp+24], edx	#, MEM[(struct Widget *)this_1(D)].maxx
	movzx	edx, WORD PTR [rax+102]	# MEM[(struct Widget *)this_1(D)].pos.h, MEM[(struct Widget *)this_1(D)].pos.h
	mov	DWORD PTR [rsp+16], edx	#, MEM[(struct Widget *)this_1(D)].pos.h
	movzx	edx, WORD PTR [rax+100]	# MEM[(struct Widget *)this_1(D)].pos.w, MEM[(struct Widget *)this_1(D)].pos.w
	mov	DWORD PTR [rsp+8], edx	#, MEM[(struct Widget *)this_1(D)].pos.w
	movsx	eax, WORD PTR [rax+98]	# MEM[(struct Widget *)this_1(D)].pos.y, MEM[(struct Widget *)this_1(D)].pos.y
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Widget *)this_1(D)].pos.y
	mov	r8d, OFFSET FLAT:.LC7	#,
	mov	ecx, 160	#,
	mov	edx, 1	#,
	mov	esi, 160	#,
	mov	edi, OFFSET FLAT:str_id.9315	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9315	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	HistStretchGraph_vtoString, .-HistStretchGraph_vtoString
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"HistStretchGraph_setCountPoints: Failed to HistStretchGraph_refresh2(). Exited with code %d\n"
	.text
	.globl	HistStretchGraph_setCountPoints
	.type	HistStretchGraph_setCountPoints, @function
HistStretchGraph_setCountPoints:
.LFB105:
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
	cmp	WORD PTR [rdi+608], si	# this_4(D)->size, size
	jne	.L51	#,
	mov	ebp, 99	# s,
	cmp	QWORD PTR [rdi+592], 0	# this_4(D)->x,
	jne	.L52	#,
.L51:
	movzx	ecx, si	# size, size
	mov	eax, 256	# tmp148,
	mov	edx, eax	# tmp147, tmp148
	sar	edx, 31	# tmp147,
	idiv	ecx	# size
	mov	r14d, eax	# dx, tmp146
	mov	WORD PTR [rbx+608], si	# this_4(D)->size, size
	movzx	r12d, si	# D.9728, size
	lea	rbp, [r12+r12]	# D.9729,
	mov	rdi, QWORD PTR [rbx+592]	# this_4(D)->x, this_4(D)->x
	mov	ecx, 129	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	rsi, rbp	#, D.9729
	call	wrealloc	#
	mov	QWORD PTR [rbx+592], rax	# this_4(D)->x, D.9730
	mov	rdi, QWORD PTR [rbx+600]	# this_4(D)->y, this_4(D)->y
	mov	ecx, 130	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	rsi, rbp	#, D.9729
	call	wrealloc	#
	mov	QWORD PTR [rbx+600], rax	# this_4(D)->y, D.9732
	cmp	QWORD PTR [rbx+584], 0	# this_4(D)->rect,
	je	.L53	#,
	cmp	WORD PTR [rbx+608], 0	# this_4(D)->size,
	je	.L53	#,
	mov	ebp, 0	# i,
.L54:
	movzx	eax, bp	# i, i
	lea	rdx, [rax+rax*4]	# tmp154,
	lea	rdi, [rax+rdx*2]	# tmp156,
	sal	rdi, 4	# tmp157,
	add	rdi, QWORD PTR [rbx+584]	# tmp158, this_4(D)->rect
	call	delete	#
	add	ebp, 1	# i,
	cmp	WORD PTR [rbx+608], bp	# this_4(D)->size, i
	ja	.L54	#,
.L53:
	lea	rax, [r12+r12*4]	# tmp162,
	lea	rsi, [r12+rax*2]	# tmp164,
	sal	rsi, 4	# tmp165,
	mov	rdi, QWORD PTR [rbx+584]	# this_4(D)->rect, this_4(D)->rect
	mov	ecx, 136	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	call	wrealloc	#
	mov	QWORD PTR [rbx+584], rax	# this_4(D)->rect, D.9740
	mov	rax, QWORD PTR [rbx+592]	# D.9722, this_4(D)->x
	mov	WORD PTR [rax], 0	# *D.9722_32,
	movzx	edx, WORD PTR [rbx+608]	# this_4(D)->size, this_4(D)->size
	mov	rax, QWORD PTR [rbx+592]	# this_4(D)->x, this_4(D)->x
	mov	WORD PTR [rax-2+rdx*2], 255	# *D.9744_38,
	mov	r13d, 0	# i,
	cmp	WORD PTR [rbx+608], 0	# this_4(D)->size,
	jne	.L65	#,
	jmp	.L56	#
.L58:
	test	r13w, r13w	# i
	je	.L65	#,
	movzx	edx, r13w	# i, i
	movzx	eax, ax	# D.9719, D.9719
	sub	eax, 1	# tmp172,
	cmp	edx, eax	# i, tmp172
	je	.L65	#,
	mov	rax, QWORD PTR [rbx+592]	# D.9722, this_4(D)->x
	movzx	edx, r13w	# D.9736, i
	mov	ecx, r14d	# tmp174, dx
	add	cx, WORD PTR [rax-2+rdx*2]	# tmp174, *D.9757_53
	mov	WORD PTR [rax+rdx*2], cx	# *D.9753_48, tmp174
.L65:
	movzx	ebp, r13w	# D.9736, i
	lea	rax, [rbp+0+rbp*4]	# tmp178,
	lea	r12, [rbp+0+rax*2]	# tmp180,
	sal	r12, 4	# tmp181,
	add	r12, QWORD PTR [rbx+584]	# rect, this_4(D)->rect
	mov	rax, QWORD PTR [rbx+592]	# this_4(D)->x, this_4(D)->x
	movzx	edx, WORD PTR [rax+rbp*2]	# D.9761, *D.9753_67
	mov	rax, QWORD PTR [rbx+600]	# this_4(D)->y, this_4(D)->y
	mov	WORD PTR [rax+rbp*2], dx	# *D.9760_63, D.9761
	mov	esi, 16711935	#,
	mov	rdi, r12	#, rect
	call	Rectangle_new	#
	mov	rax, QWORD PTR [rbx+600]	# this_4(D)->y, this_4(D)->y
	movzx	eax, WORD PTR [rax+rbp*2]	# *D.9760_73, *D.9760_73
	add	eax, eax	# tmp186
	movzx	edx, WORD PTR [rbx+612]	# tmp188, this_4(D)->zero_y
	sub	edx, eax	# tmp188, tmp186
	movzx	edx, dx	# tmp190, tmp188
	mov	rax, QWORD PTR [rbx+592]	# this_4(D)->x, this_4(D)->x
	movzx	esi, WORD PTR [rax+rbp*2]	# *D.9753_81, *D.9753_81
	movzx	eax, WORD PTR [rbx+610]	# this_4(D)->zero_x, this_4(D)->zero_x
	lea	esi, [rax+rsi*2]	# tmp194,
	movzx	esi, si	# tmp196, tmp194
	mov	rdi, r12	#, rect
	call	Rectangle_setCenter	#
	mov	edx, 12	#,
	mov	esi, 12	#,
	mov	rdi, r12	#, rect
	call	Rectangle_setSize	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)rect_59].class, MEM[(struct coObject *)rect_59].class
	mov	rax, QWORD PTR [rax+16]	# D.9771_87->vtable, D.9771_87->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9772_88 + 8B], MEM[(const void * *)D.9772_88 + 8B]
	mov	rdi, r12	#, rect
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9774_90].refresh
	add	r13d, 1	# i,
	movzx	eax, WORD PTR [rbx+608]	# D.9719, this_4(D)->size
	cmp	ax, r13w	# D.9719, i
	ja	.L58	#,
.L56:
	mov	rdi, rbx	#, this
	call	HistStretchGraph_refresh2	#
	mov	ebp, eax	# s,
	test	al, al	# s
	je	.L52	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L52:
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
.LFE105:
	.size	HistStretchGraph_setCountPoints, .-HistStretchGraph_setCountPoints
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"HistStretchGraph_vrefresh: Failed on assertion (! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible)\n"
	.align 8
.LC10:
	.string	"HistStretchGraph_vrefresh: Failed to CreateRGBSurface widget->surf: %s\n"
	.align 8
.LC11:
	.string	"HistStretchGraph_vrefresh: Failed to CreateRGBSurface this->bg_surf: %s\n"
	.align 8
.LC12:
	.string	"HistStretchGraph_vrefresh: Failed to fill background surface (FillRect)\n"
	.align 8
.LC13:
	.string	"HistStretchGraph_vrefresh: [1] SDL_BlitSurface(WIDGET(&this->labelY)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelY)->pos )) failed: %s\n"
	.align 8
.LC14:
	.string	"HistStretchGraph_refresh> [2] SDL_BlitSurface(WIDGET(&this->labelY)->surf, NULL, this->bg_surf, &( WIDGET(&this->labelY)->pos )) failed: %s\n"
	.text
	.globl	HistStretchGraph_vrefresh
	.type	HistStretchGraph_vrefresh, @function
HistStretchGraph_vrefresh:
.LFB106:
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
	cmp	BYTE PTR [rdi+327], 0	# MEM[(struct Widget *)vthis_3(D) + 168B].visible,
	je	.L68	#,
	cmp	BYTE PTR [rdi+527], 0	# MEM[(struct Widget *)vthis_3(D) + 368B].visible,
	jne	.L69	#,
.L68:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 120	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC9	#,
	call	fwrite	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_3(D)].class, MEM[(struct coObject *)vthis_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9619_219->vtable, D.9619_219->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9620_220 + 8B], MEM[(const void * *)D.9620_220 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9622_222].setVisible
	jmp	.L67	#
.L69:
	movzx	ecx, WORD PTR [rdi+268]	# tw, MEM[(struct Widget *)vthis_3(D) + 168B].pos.w
	movzx	r12d, WORD PTR [rdi+270]	# th, MEM[(struct Widget *)vthis_3(D) + 168B].pos.h
	lea	eax, [rcx+14]	# D.9624,
	mov	WORD PTR [rdi+614], ax	# MEM[(struct HistStretchGraph *)vthis_3(D)].ax, D.9624
	lea	edx, [r12+14]	# D.9625,
	mov	WORD PTR [rdi+616], dx	# MEM[(struct HistStretchGraph *)vthis_3(D)].ay, D.9625
	shr	cx	# tw
	mov	WORD PTR [rsp+28], cx	# %sfp, tw
	lea	eax, [rcx+522+rax*2]	# D.9630,
	mov	WORD PTR [rdi+100], ax	# MEM[(struct Widget *)vthis_3(D)].pos.w, D.9630
	shr	r12w	# D.9633
	lea	edx, [r12+522+rdx*2]	# D.9635,
	mov	WORD PTR [rdi+102], dx	# MEM[(struct Widget *)vthis_3(D)].pos.h, D.9635
	movzx	ecx, WORD PTR [rdi+96]	# MEM[(struct Widget *)vthis_3(D)].pos.x, MEM[(struct Widget *)vthis_3(D)].pos.x
	lea	ecx, [rax-1+rcx]	# tmp258,
	mov	WORD PTR [rdi+144], cx	# MEM[(struct Widget *)vthis_3(D)].maxx, tmp258
	movzx	ecx, WORD PTR [rdi+98]	# MEM[(struct Widget *)vthis_3(D)].pos.y, MEM[(struct Widget *)vthis_3(D)].pos.y
	lea	ecx, [rdx-1+rcx]	# tmp261,
	mov	WORD PTR [rdi+146], cx	# MEM[(struct Widget *)vthis_3(D)].maxy, tmp261
	cmp	QWORD PTR [rdi+88], 0	# MEM[(struct Widget *)vthis_3(D)].surf,
	jne	.L71	#,
	movzx	esi, dx	# D.9635, D.9635
	movzx	edi, ax	# D.9630, D.9630
	call	Static_newSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_3(D)].surf, D.9651
	test	rax, rax	# D.9651
	jne	.L71	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9654
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_3(D)].class, MEM[(struct coObject *)vthis_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9619_45->vtable, D.9619_45->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9620_46 + 8B], MEM[(const void * *)D.9620_46 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9622_48].setVisible
	jmp	.L67	#
.L71:
	cmp	QWORD PTR [rbx+576], 0	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf,
	jne	.L72	#,
	movzx	esi, WORD PTR [rbx+102]	# MEM[(struct Widget *)vthis_3(D)].pos.h, MEM[(struct Widget *)vthis_3(D)].pos.h
	movzx	edi, WORD PTR [rbx+100]	# MEM[(struct Widget *)vthis_3(D)].pos.w, MEM[(struct Widget *)vthis_3(D)].pos.w
	call	Static_newSurface	#
	mov	QWORD PTR [rbx+576], rax	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, D.9658
	test	rax, rax	# D.9658
	jne	.L72	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9661
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_3(D)].class, MEM[(struct coObject *)vthis_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9619_59->vtable, D.9619_59->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9620_60 + 8B], MEM[(const void * *)D.9620_60 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9622_62].setVisible
	jmp	.L67	#
.L72:
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	edx, 16777215	#,
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.9662
	je	.L73	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 72	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC12	#,
	call	fwrite	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_3(D)].class, MEM[(struct coObject *)vthis_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9619_67->vtable, D.9619_67->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9620_68 + 8B], MEM[(const void * *)D.9620_68 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9622_70].setVisible
	jmp	.L67	#
.L73:
	movzx	edx, WORD PTR [rbx+616]	# D.9631, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	lea	r13d, [r12+519+rdx]	# tmp280,
	movsx	r13d, r13w	# D.9667, tmp280
	movsx	esi, WORD PTR [rbx+614]	# D.9669, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movsx	edx, dx	# D.9631, D.9631
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, r13d	#, D.9667
	mov	ecx, esi	#, D.9669
	call	thickLineColor	#
	movzx	esi, WORD PTR [rbx+614]	# D.9626, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	lea	ebp, [rsi+134]	# x2,
	movzx	edx, bp	# x2, x2
	movzx	eax, si	# D.9626, D.9626
	add	eax, 517	# tmp285,
	cmp	edx, eax	# x2, tmp285
	jg	.L74	#,
	mov	r14d, -1212696577	# tmp343,
.L81:
	movsx	edx, WORD PTR [rbx+616]	# MEM[(struct HistStretchGraph *)vthis_3(D)].ay, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	movsx	esi, bp	# x2, x2
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, r14d	#, tmp343
	mov	ecx, r13d	#, D.9667
	call	vlineColor	#
	sub	bp, -128	# x2,
	movzx	esi, WORD PTR [rbx+614]	# D.9626, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movzx	edx, bp	# x2, x2
	movzx	eax, si	# D.9626, D.9626
	add	eax, 517	# tmp291,
	cmp	edx, eax	# x2, tmp291
	jle	.L81	#,
.L74:
	movsx	edx, WORD PTR [rbx+616]	# MEM[(struct HistStretchGraph *)vthis_3(D)].ay, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	add	si, 517	# tmp293,
	movsx	esi, si	# tmp294, tmp293
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, -1212696577	#,
	mov	ecx, r13d	#, D.9667
	call	vlineColor	#
	movzx	esi, WORD PTR [rbx+614]	# D.9626, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movzx	ecx, WORD PTR [rbx+100]	# tmp296, MEM[(struct Widget *)vthis_3(D)].pos.w
	sub	ecx, esi	# tmp296, D.9626
	movsx	ecx, cx	# tmp298, tmp296
	movsx	esi, si	# D.9626, D.9626
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, r13d	#, D.9667
	mov	edx, r13d	#, D.9667
	call	thickLineColor	#
	mov	r15d, r12d	# D.9665, D.9633
	add	r15w, WORD PTR [rbx+616]	# D.9665, MEM[(struct HistStretchGraph *)vthis_3(D)].ay
	lea	r13d, [r15+7]	# y1,
	mov	WORD PTR [rbx+464], 7	# MEM[(struct Widget *)vthis_3(D) + 368B].pos.x,
	mov	eax, r13d	# tmp302, y1
	sub	eax, r12d	# tmp302, D.9633
	mov	WORD PTR [rbx+466], ax	# MEM[(struct Widget *)vthis_3(D) + 368B].pos.y, tmp302
	lea	rcx, [rbx+464]	# tmp304,
	mov	rdx, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	rdi, QWORD PTR [rbx+456]	# MEM[(struct Widget *)vthis_3(D) + 368B].surf, MEM[(struct Widget *)vthis_3(D) + 368B].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9687
	je	.L76	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9690
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_3(D)].class, MEM[(struct coObject *)vthis_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9619_143->vtable, D.9619_143->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9620_144 + 8B], MEM[(const void * *)D.9620_144 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9622_146].setVisible
	jmp	.L67	#
.L76:
	movzx	eax, WORD PTR [rbx+614]	# D.9626, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	lea	edx, [rax+516]	#,
	mov	WORD PTR [rsp+30], dx	# %sfp,
	lea	ebp, [r15+8]	# y2,
	movsx	r12d, dx	# D.9694,
	movsx	ecx, bp	# y2, y2
	add	eax, 2	# tmp312,
	movsx	esi, ax	# tmp313, tmp312
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, -1212696577	#,
	mov	edx, r12d	#, D.9694
	call	hlineColor	#
	movzx	esi, WORD PTR [rbx+614]	# D.9626, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	movsx	edx, r13w	# D.9667, y1
	lea	ecx, [rsi+7]	# tmp315,
	movsx	ecx, cx	# tmp316, tmp315
	movsx	esi, si	# D.9626, D.9626
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, edx	#, D.9667
	call	thickLineColor	#
	lea	r13d, [r15+519]	# y1,
	cmp	bp, r13w	# y2, y1
	jae	.L77	#,
	mov	r14d, -1212696577	# tmp342,
.L80:
	sub	bp, -128	# y2,
	movsx	ecx, bp	# y2, y2
	movzx	esi, WORD PTR [rbx+614]	# tmp320, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	add	esi, 2	# tmp320,
	movsx	esi, si	# tmp322, tmp320
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	r8d, r14d	#, tmp342
	mov	edx, r12d	#, D.9694
	call	hlineColor	#
	cmp	r13w, bp	# y1, y2
	ja	.L80	#,
.L77:
	lea	edx, [r15+512]	# tmp325,
	movsx	edx, dx	# tmp326, tmp325
	mov	rdi, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	movsx	r8d, r13w	#, y1
	mov	ecx, r12d	#, D.9694
	mov	esi, r12d	#, D.9694
	call	thickLineColor	#
	movzx	eax, WORD PTR [rsp+30]	# tmp328, %sfp
	sub	ax, WORD PTR [rsp+28]	# tmp328, %sfp
	mov	WORD PTR [rbx+264], ax	# MEM[(struct Widget *)vthis_3(D) + 168B].pos.x, tmp328
	lea	eax, [r15+526]	# tmp329,
	mov	WORD PTR [rbx+266], ax	# MEM[(struct Widget *)vthis_3(D) + 168B].pos.y, tmp329
	add	r15w, 514	# tmp330,
	mov	WORD PTR [rbx+612], r15w	# MEM[(struct HistStretchGraph *)vthis_3(D)].zero_y, tmp330
	movzx	eax, WORD PTR [rbx+614]	# tmp331, MEM[(struct HistStretchGraph *)vthis_3(D)].ax
	add	eax, 2	# tmp331,
	mov	WORD PTR [rbx+610], ax	# MEM[(struct HistStretchGraph *)vthis_3(D)].zero_x, tmp331
	lea	rcx, [rbx+264]	# tmp334,
	mov	rdx, QWORD PTR [rbx+576]	# MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_3(D)].bg_surf
	mov	rdi, QWORD PTR [rbx+256]	# MEM[(struct Widget *)vthis_3(D) + 168B].surf, MEM[(struct Widget *)vthis_3(D) + 168B].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9712
	je	.L79	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9715
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_3(D)].class, MEM[(struct coObject *)vthis_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9619_211->vtable, D.9619_211->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9620_212 + 8B], MEM[(const void * *)D.9620_212 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9622_214].setVisible
	jmp	.L67	#
.L79:
	movzx	esi, WORD PTR [rbx+608]	# MEM[(struct HistStretchGraph *)vthis_3(D)].size, MEM[(struct HistStretchGraph *)vthis_3(D)].size
	mov	rdi, rbx	#, vthis
	call	HistStretchGraph_setCountPoints	#
.L67:
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
.LFE106:
	.size	HistStretchGraph_vrefresh, .-HistStretchGraph_vrefresh
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"%20s:\tWithin context: font=%p, size=%u\n"
	.section	.rodata.str1.1
.LC16:
	.string	"255"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"HistStretchGraph_new: Failed on assertion ((! WIDGET(&this->labelX)->visible) || (! WIDGET(&this->labelY)->visible))\n"
	.text
	.globl	HistStretchGraph_new
	.type	HistStretchGraph_new, @function
HistStretchGraph_new:
.LFB109:
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
	jne	.L86	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9398	#,
	call	Static_nullThis2	#
	movzx	r9d, bp	#, size
	mov	r8, r12	#, font
	mov	ecx, OFFSET FLAT:__FUNCTION__.9398	#,
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L87	#
.L86:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	QWORD PTR [rbx+56], OFFSET FLAT:HistStretchGraph_mousePressed	# MEM[(struct Widget *)this_3(D)].mevent_internal.press,
	mov	BYTE PTR [rbx+160], 1	# MEM[(struct Widget *)this_3(D)].mevent,
	mov	QWORD PTR [rbx+584], 0	# this_3(D)->rect,
	mov	QWORD PTR [rbx+576], 0	# this_3(D)->bg_surf,
	mov	QWORD PTR [rbx+592], 0	# this_3(D)->x,
	mov	QWORD PTR [rbx+600], 0	# this_3(D)->y,
	test	bp, bp	# size
	mov	eax, 8	# tmp97,
	cmove	ebp, eax	# size,, size, tmp97
	mov	WORD PTR [rbx+608], bp	# this_3(D)->size, size
	mov	QWORD PTR [rbx+568], 0	# this_3(D)->release_handler,
	lea	rbp, [rbx+168]	# D.9409,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	rdi, rbp	#, D.9409
	call	TextBlock_new	#
	mov	rsi, r12	#, font
	mov	rdi, rbp	#, D.9409
	call	TextBlock_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, D.9409
	call	TextBlock_setBackgroundColor	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.9409
	call	TextBlock_setForegroundColor	#
	mov	rax, QWORD PTR [rbx+168]	# MEM[(struct coObject *)this_3(D) + 168B].class, MEM[(struct coObject *)this_3(D) + 168B].class
	mov	rax, QWORD PTR [rax+16]	# D.9410_16->vtable, D.9410_16->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9411_17 + 8B], MEM[(const void * *)D.9411_17 + 8B]
	mov	rdi, rbp	#, D.9409
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9413_19].refresh
	lea	rbp, [rbx+368]	# D.9415,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	rdi, rbp	#, D.9415
	call	TextBlock_new	#
	mov	rsi, r12	#, font
	mov	rdi, rbp	#, D.9415
	call	TextBlock_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, D.9415
	call	TextBlock_setBackgroundColor	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.9415
	call	TextBlock_setForegroundColor	#
	mov	rax, QWORD PTR [rbx+368]	# MEM[(struct coObject *)this_3(D) + 368B].class, MEM[(struct coObject *)this_3(D) + 368B].class
	mov	rax, QWORD PTR [rax+16]	# D.9416_27->vtable, D.9416_27->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9417_28 + 8B], MEM[(const void * *)D.9417_28 + 8B]
	mov	rdi, rbp	#, D.9415
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9419_30].refresh
	cmp	BYTE PTR [rbx+327], 0	# MEM[(struct Widget *)this_3(D) + 168B].visible,
	je	.L89	#,
	cmp	BYTE PTR [rbx+527], 0	# MEM[(struct Widget *)this_3(D) + 368B].visible,
	jne	.L87	#,
.L89:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 117	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC17	#,
	call	fwrite	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_3(D)].class, MEM[(struct coObject *)this_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9426_38->vtable, D.9426_38->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9427_39 + 8B], MEM[(const void * *)D.9427_39 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9429_41].setVisible
.L87:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	HistStretchGraph_new, .-HistStretchGraph_new
	.globl	HistStretchGraph_class
	.data
	.align 8
	.type	HistStretchGraph_class, @object
	.size	HistStretchGraph_class, 8
HistStretchGraph_class:
	.quad	type
	.local	str_id.9315
	.comm	str_id.9315,160,32
	.section	.rodata.str1.1
.LC18:
	.string	"HistStretchGraph"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	624
# name:
	.quad	.LC18
# vtable:
	.quad	vtable
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9398, @object
	.size	__FUNCTION__.9398, 21
__FUNCTION__.9398:
	.string	"HistStretchGraph_new"
	.data
	.align 16
	.type	vtable, @object
	.size	vtable, 16
vtable:
	.quad	override_coIObject
	.quad	override_IWidget
	.section	.rodata
	.align 16
	.type	override_coIObject, @object
	.size	override_coIObject, 16
override_coIObject:
# destroy:
	.quad	HistStretchGraph_vdestroy
# toString:
	.quad	HistStretchGraph_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	HistStretchGraph_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
