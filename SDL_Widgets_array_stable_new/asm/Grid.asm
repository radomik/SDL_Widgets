	.file	"Grid.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Grid.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Grid.asm
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
	.globl	Grid_vsetVisible
	.type	Grid_vsetVisible, @function
Grid_vsetVisible:
.LFB98:
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
	mov	rbp, rdi	# vthis, vthis
	movzx	r13d, sil	# D.9194, vis
	mov	esi, r13d	#, D.9194
	call	Widget_vsetVisible	#
	mov	r14d, 0	# y,
	cmp	WORD PTR [rbp+200], 0	# MEM[(struct Grid *)vthis_6(D)].c_row,
	jne	.L9	#,
	jmp	.L1	#
.L5:
	mov	rdx, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_6(D)].items, MEM[(struct Grid *)vthis_6(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp90,
	sal	rax, 3	# tmp91,
	add	rax, QWORD PTR [rdx+r12]	# tmp92, *D.9198_13
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9202_17->widget
	test	rdi, rdi	# item_wt
	je	.L4	#,
	mov	esi, r13d	#, D.9194
	call	Widget_setVisible	#
.L4:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+202], bx	# MEM[(struct Grid *)vthis_6(D)].c_col, x
	ja	.L5	#,
.L6:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+200], r14w	# MEM[(struct Grid *)vthis_6(D)].c_row, y
	jbe	.L1	#,
.L9:
	cmp	WORD PTR [rbp+202], 0	# MEM[(struct Grid *)vthis_6(D)].c_col,
	je	.L6	#,
	movzx	r12d, r14w	# y, y
	sal	r12, 3	# D.9197,
	mov	ebx, 0	# x,
	jmp	.L5	#
.L1:
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
.LFE98:
	.size	Grid_vsetVisible, .-Grid_vsetVisible
	.globl	Grid_vdrag
	.type	Grid_vdrag, @function
Grid_vdrag:
.LFB97:
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
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 64
	mov	rbp, rdi	# vthis, vthis
	movsx	r14d, dx	# D.9207, dy
	movsx	r13d, si	# D.9208, dx
	mov	edx, r14d	#, D.9207
	mov	esi, r13d	#, D.9208
	call	Widget_vdrag	#
	mov	r15d, 0	# y,
	cmp	WORD PTR [rbp+200], 0	# MEM[(struct Grid *)vthis_8(D)].c_row,
	jne	.L19	#,
	jmp	.L11	#
.L15:
	mov	rdx, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_8(D)].items, MEM[(struct Grid *)vthis_8(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp90,
	sal	rax, 3	# tmp91,
	add	rax, QWORD PTR [rdx+r12]	# tmp92, *D.9212_15
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9216_19->widget
	test	rdi, rdi	# item_wt
	je	.L14	#,
	mov	edx, r14d	#, D.9207
	mov	esi, r13d	#, D.9208
	call	Widget_drag	#
.L14:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+202], bx	# MEM[(struct Grid *)vthis_8(D)].c_col, x
	ja	.L15	#,
.L16:
	add	r15d, 1	# y,
	cmp	WORD PTR [rbp+200], r15w	# MEM[(struct Grid *)vthis_8(D)].c_row, y
	jbe	.L11	#,
.L19:
	cmp	WORD PTR [rbp+202], 0	# MEM[(struct Grid *)vthis_8(D)].c_col,
	je	.L16	#,
	movzx	r12d, r15w	# y, y
	sal	r12, 3	# D.9211,
	mov	ebx, 0	# x,
	jmp	.L15	#
.L11:
	add	rsp, 8	#,
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
.LFE97:
	.size	Grid_vdrag, .-Grid_vdrag
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Grid_refresh: Failed on condition: (! this->c_row) || (! this->c_col) || (! this->items) [%hu,%hu,%p]\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Grid.c"
	.text
	.globl	Grid_vrefresh
	.type	Grid_vrefresh, @function
Grid_vrefresh:
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
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
	mov	rbx, rdi	# vthis, vthis
	movzx	eax, WORD PTR [rdi+200]	# D.9223, MEM[(struct Grid *)vthis_23(D)].c_row
	test	ax, ax	# D.9223
	je	.L22	#,
	movzx	edx, WORD PTR [rdi+202]	# D.9225, MEM[(struct Grid *)vthis_23(D)].c_col
	test	dx, dx	# D.9225
	je	.L22	#,
	cmp	QWORD PTR [rdi+184], 0	# MEM[(struct Grid *)vthis_23(D)].items,
	jne	.L23	#,
.L22:
	movzx	ecx, ax	# D.9223, D.9223
	mov	r9, QWORD PTR [rbx+184]	#, MEM[(struct Grid *)vthis_23(D)].items
	movzx	r8d, WORD PTR [rbx+202]	#, MEM[(struct Grid *)vthis_23(D)].c_col
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_23(D)].visible,
	jmp	.L21	#
.L23:
	movzx	edx, dx	# D.9225, D.9225
	add	rdx, rdx	# tmp322
	mov	rdi, QWORD PTR [rdi+192]	# MEM[(struct Grid *)vthis_23(D)].maxw, MEM[(struct Grid *)vthis_23(D)].maxw
	mov	esi, 0	#,
	call	memset	#
	mov	r15, QWORD PTR [rbx+192]	# maxw, MEM[(struct Grid *)vthis_23(D)].maxw
	movzx	r14d, WORD PTR [rbx+180]	# maxx, MEM[(struct Container *)vthis_23(D)].padx
	movzx	r13d, WORD PTR [rbx+182]	# maxy, MEM[(struct Container *)vthis_23(D)].pady
	mov	r9d, r13d	# _y, maxy
	add	r9w, WORD PTR [rbx+98]	# _y, MEM[(struct Widget *)vthis_23(D)].pos.y
	mov	r10d, 0	# y,
	mov	eax, 0	# item,
	cmp	WORD PTR [rbx+200], 0	# MEM[(struct Grid *)vthis_23(D)].c_row,
	jne	.L53	#,
	jmp	.L26	#
.L28:
	movzx	ecx, dx	# D.9241, x
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	lea	rdi, [rcx+rcx*4]	# tmp332,
	mov	rax, QWORD PTR [rax+r8]	# *D.9239_48, *D.9239_48
	lea	rax, [rax+rdi*8]	# item,
	mov	rdi, QWORD PTR [rax]	# D.9243, item_52->widget
	test	rdi, rdi	# D.9243
	je	.L27	#,
	movzx	r11d, WORD PTR [rax+20]	# item_52->margin_top, item_52->margin_top
	add	r11w, WORD PTR [rdi+102]	# tmp335, D.9243_53->pos.h
	add	r11w, WORD PTR [rax+22]	# tmp338, item_52->margin_bottom
	cmp	si, r11w	# maxh, tmp338
	cmovb	esi, r11d	# maxh,, maxh, tmp338
	movzx	r11d, WORD PTR [rax+16]	# item_52->margin_left, item_52->margin_left
	add	r11w, WORD PTR [rdi+100]	# item_52->margin_left, D.9243_53->pos.w
	mov	edi, r11d	# tmp340, item_52->margin_left
	add	di, WORD PTR [rax+18]	# w, item_52->margin_right
	lea	rcx, [r15+rcx*2]	# D.9257,
	cmp	di, WORD PTR [rcx]	# w, *D.9257_69
	jbe	.L27	#,
	mov	WORD PTR [rcx], di	# *D.9257_69, w
.L27:
	add	edx, 1	# x,
	movzx	ecx, WORD PTR [rbx+202]	# D.9225, MEM[(struct Grid *)vthis_23(D)].c_col
	cmp	cx, dx	# D.9225, x
	ja	.L28	#,
	test	cx, cx	# D.9225
	je	.L29	#,
	mov	edx, 0	# x,
	lea	r11d, [rsi-1+r9]	# D.9265,
	movzx	ebp, si	# maxh, maxh
.L33:
	mov	rdi, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	movzx	eax, dx	# x, x
	lea	rcx, [rax+rax*4]	# tmp349,
	mov	rax, QWORD PTR [rdi+r8]	# *D.9239_80, *D.9239_80
	lea	rax, [rax+rcx*8]	# item,
	mov	WORD PTR [rax+10], r9w	# item_84->cell_rect.y, _y
	mov	WORD PTR [rax+14], si	# item_84->cell_rect.h, maxh
	mov	WORD PTR [rax+26], r11w	# item_84->maxy, D.9265
	mov	rcx, QWORD PTR [rax]	# D.9243, item_84->widget
	test	rcx, rcx	# D.9243
	je	.L30	#,
	mov	edi, DWORD PTR [rax+32]	# D.9268, item_84->valign
	cmp	edi, 1	# D.9268,
	jne	.L31	#,
	mov	edi, r9d	# tmp353, _y
	add	di, WORD PTR [rax+20]	# tmp353, item_84->margin_top
	mov	WORD PTR [rcx+98], di	# D.9243_90->pos.y, tmp353
	mov	rcx, QWORD PTR [rax]	# D.9243, item_84->widget
	movzx	r12d, WORD PTR [rcx+102]	# D.9243_99->pos.h, D.9243_99->pos.h
	movzx	edi, WORD PTR [rcx+98]	# D.9243_99->pos.y, D.9243_99->pos.y
	lea	edi, [r12-1+rdi]	# tmp357,
	mov	WORD PTR [rcx+154], di	# D.9243_99->maxy, tmp357
	jmp	.L30	#
.L31:
	cmp	edi, 2	# D.9268,
	jne	.L32	#,
	mov	edi, r11d	# tmp359, D.9265
	sub	di, WORD PTR [rax+22]	# tmp359, item_84->margin_bottom
	mov	WORD PTR [rcx+154], di	# D.9243_90->maxy, tmp359
	mov	rcx, QWORD PTR [rax]	# D.9243, item_84->widget
	movzx	edi, WORD PTR [rcx+154]	# D.9243_112->maxy, D.9243_112->maxy
	sub	di, WORD PTR [rcx+102]	# tmp361, D.9243_112->pos.h
	mov	WORD PTR [rcx+98], di	# D.9243_112->pos.y, tmp361
	jmp	.L30	#
.L32:
	movzx	edi, WORD PTR [rcx+102]	# D.9243_90->pos.h, D.9243_90->pos.h
	mov	r12d, ebp	#, maxh
	sub	r12d, edi	#, D.9243_90->pos.h
	mov	edi, r12d	# tmp365,
	sar	edi	# tmp366
	add	edi, r9d	# tmp367, _y
	mov	WORD PTR [rcx+98], di	# D.9243_90->pos.y, tmp367
	mov	rcx, QWORD PTR [rax]	# D.9243, item_84->widget
	movzx	r12d, WORD PTR [rcx+102]	# D.9243_131->pos.h, D.9243_131->pos.h
	movzx	edi, WORD PTR [rcx+98]	# D.9243_131->pos.y, D.9243_131->pos.y
	lea	edi, [r12-1+rdi]	# tmp370,
	mov	WORD PTR [rcx+154], di	# D.9243_131->maxy, tmp370
.L30:
	add	edx, 1	# x,
	cmp	WORD PTR [rbx+202], dx	# MEM[(struct Grid *)vthis_23(D)].c_col, x
	ja	.L33	#,
.L29:
	test	rax, rax	# item
	je	.L34	#,
	movzx	r9d, WORD PTR [rax+26]	# _y, item_446->maxy
.L34:
	add	r10d, 1	# y,
	movzx	edx, WORD PTR [rbx+200]	# D.9223, MEM[(struct Grid *)vthis_23(D)].c_row
	cmp	dx, r10w	# D.9223, y
	jbe	.L35	#,
.L53:
	cmp	WORD PTR [rbx+202], 0	# MEM[(struct Grid *)vthis_23(D)].c_col,
	je	.L29	#,
	movzx	r8d, r10w	# y, y
	sal	r8, 3	# D.9238,
	mov	esi, 0	# maxh,
	mov	edx, 0	# x,
	jmp	.L28	#
.L35:
	test	dx, dx	# D.9223
	je	.L26	#,
	mov	WORD PTR [rsp+14], 0	# %sfp,
.L42:
	movzx	ebp, WORD PTR [rbx+96]	# MEM[(struct Widget *)vthis_23(D)].pos.x, MEM[(struct Widget *)vthis_23(D)].pos.x
	add	bp, WORD PTR [rbx+180]	# _x, MEM[(struct Container *)vthis_23(D)].padx
	cmp	WORD PTR [rbx+202], 0	# MEM[(struct Grid *)vthis_23(D)].c_col,
	je	.L36	#,
	movzx	eax, WORD PTR [rsp+14]	# y, %sfp
	sal	rax, 3	#,
	mov	QWORD PTR [rsp], rax	# %sfp,
	mov	r12d, 0	# x,
.L41:
	movzx	edx, r12w	# D.9241, x
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	lea	rcx, [rdx+rdx*4]	# tmp379,
	mov	rsi, QWORD PTR [rsp]	#, %sfp
	mov	rax, QWORD PTR [rax+rsi]	# *D.9239_152, *D.9239_152
	lea	rax, [rax+rcx*8]	# item,
	mov	WORD PTR [rax+8], bp	# item_156->cell_rect.x, _x
	lea	rdx, [r15+rdx*2]	# D.9257,
	movzx	ecx, WORD PTR [rdx]	# D.9258, *D.9257_160
	mov	WORD PTR [rax+12], cx	# item_156->cell_rect.w, D.9258
	movzx	ecx, WORD PTR [rdx]	# *D.9257_160, *D.9257_160
	lea	ebp, [rbp-1+rcx]	# maxx,
	mov	WORD PTR [rax+24], bp	# item_156->maxx, maxx
	movzx	ecx, WORD PTR [rax+26]	# maxy, item_156->maxy
	cmp	r13w, cx	# maxy, maxy
	cmovb	r13d, ecx	# maxy,, maxy, maxy
	cmp	r14w, bp	# maxx, maxx
	cmovb	r14d, ebp	# maxx,, maxx, maxx
	mov	rcx, QWORD PTR [rax]	# D.9243, item_156->widget
	test	rcx, rcx	# D.9243
	je	.L37	#,
	mov	BYTE PTR [rcx+165], 0	# D.9243_175->draggable,
	mov	ecx, DWORD PTR [rax+28]	# D.9311, item_156->halign
	cmp	ecx, 4	# D.9311,
	jne	.L38	#,
	mov	rdx, QWORD PTR [rax]	# D.9243, item_156->widget
	movzx	ecx, WORD PTR [rax+8]	# item_156->cell_rect.x, item_156->cell_rect.x
	add	cx, WORD PTR [rax+16]	# tmp386, item_156->margin_left
	mov	WORD PTR [rdx+96], cx	# D.9243_178->pos.x, tmp386
	mov	rdx, QWORD PTR [rax]	# D.9243, item_156->widget
	movzx	ecx, WORD PTR [rdx+96]	# D.9243_185->pos.x, D.9243_185->pos.x
	add	cx, WORD PTR [rdx+100]	# tmp389, D.9243_185->pos.w
	mov	WORD PTR [rdx+152], cx	# D.9243_185->maxx, tmp389
	jmp	.L39	#
.L38:
	cmp	ecx, 5	# D.9311,
	jne	.L40	#,
	mov	rdx, QWORD PTR [rax]	# D.9243, item_156->widget
	movzx	ecx, WORD PTR [rax+24]	# item_156->maxx, item_156->maxx
	sub	cx, WORD PTR [rax+18]	# tmp392, item_156->margin_right
	mov	WORD PTR [rdx+152], cx	# D.9243_192->maxx, tmp392
	mov	rdx, QWORD PTR [rax]	# D.9243, item_156->widget
	movzx	ecx, WORD PTR [rdx+152]	# D.9243_197->maxx, D.9243_197->maxx
	sub	cx, WORD PTR [rdx+100]	# tmp395, D.9243_197->pos.w
	mov	WORD PTR [rdx+96], cx	# D.9243_197->pos.x, tmp395
	jmp	.L39	#
.L40:
	mov	rcx, QWORD PTR [rax]	# D.9243, item_156->widget
	movzx	edx, WORD PTR [rdx]	# *D.9257_160, *D.9257_160
	movzx	esi, WORD PTR [rcx+100]	# D.9243_211->pos.w, D.9243_211->pos.w
	sub	edx, esi	# tmp399, D.9243_211->pos.w
	sar	edx	# tmp400
	add	dx, WORD PTR [rax+8]	# tmp401, item_156->cell_rect.x
	mov	WORD PTR [rcx+96], dx	# D.9243_211->pos.x, tmp401
	mov	rdx, QWORD PTR [rax]	# D.9243, item_156->widget
	movzx	esi, WORD PTR [rdx+100]	# D.9243_220->pos.w, D.9243_220->pos.w
	movzx	ecx, WORD PTR [rdx+96]	# D.9243_220->pos.x, D.9243_220->pos.x
	lea	ecx, [rsi-1+rcx]	# tmp405,
	mov	WORD PTR [rdx+152], cx	# D.9243_220->maxx, tmp405
.L39:
	mov	rdi, QWORD PTR [rax]	# D.9243, item_156->widget
	cmp	BYTE PTR [rdi+173], 0	# D.9243_227->is_container,
	je	.L37	#,
	call	Widget_refresh	#
.L37:
	add	r12d, 1	# x,
	cmp	WORD PTR [rbx+202], r12w	# MEM[(struct Grid *)vthis_23(D)].c_col, x
	ja	.L41	#,
.L36:
	add	WORD PTR [rsp+14], 1	# %sfp,
	movzx	r12d, WORD PTR [rsp+14]	#, %sfp
	cmp	WORD PTR [rbx+200], r12w	# MEM[(struct Grid *)vthis_23(D)].c_row,
	ja	.L42	#,
.L26:
	mov	edx, 230	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	rdi, r15	#, maxw
	call	wfree	#
	add	r14w, WORD PTR [rbx+180]	# D.9339, MEM[(struct Container *)vthis_23(D)].padx
	mov	WORD PTR [rbx+152], r14w	# MEM[(struct Widget *)vthis_23(D)].maxx, D.9339
	add	r13w, WORD PTR [rbx+182]	# D.9340, MEM[(struct Container *)vthis_23(D)].pady
	mov	WORD PTR [rbx+154], r13w	# MEM[(struct Widget *)vthis_23(D)].maxy, D.9340
	sub	r14w, WORD PTR [rbx+96]	# tmp409, MEM[(struct Widget *)vthis_23(D)].pos.x
	mov	WORD PTR [rbx+100], r14w	# MEM[(struct Widget *)vthis_23(D)].pos.w, tmp409
	sub	r13w, WORD PTR [rbx+98]	# tmp410, MEM[(struct Widget *)vthis_23(D)].pos.y
	mov	WORD PTR [rbx+102], r13w	# MEM[(struct Widget *)vthis_23(D)].pos.h, tmp410
	mov	rdi, rbx	#, vthis
	call	Container_createSurfaceIfNeeded	#
	cmp	BYTE PTR [rbx+208], 0	# MEM[(struct Grid *)vthis_23(D)].showBorder,
	je	.L21	#,
	movzx	r14d, WORD PTR [rbx+182]	# D.9234, MEM[(struct Container *)vthis_23(D)].pady
	movzx	r12d, WORD PTR [rbx+96]	# w, MEM[(struct Widget *)vthis_23(D)].pos.x
	movzx	r13d, WORD PTR [rbx+102]	# tmp413, MEM[(struct Widget *)vthis_23(D)].pos.h
	sub	r13d, r14d	# tmp413, D.9234
	movsx	r13d, r13w	# D.9355, tmp413
	movsx	r14d, r14w	# D.9357, D.9234
	mov	rdx, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	movzx	eax, WORD PTR [rbx+202]	# MEM[(struct Grid *)vthis_23(D)].c_col, MEM[(struct Grid *)vthis_23(D)].c_col
	lea	rax, [rax-5+rax*4]	# tmp421,
	sal	rax, 3	# tmp422,
	add	rax, QWORD PTR [rdx]	# tmp423, *D.9227_258
	movzx	esi, WORD PTR [rax+24]	# D.9362_264->maxx, D.9362_264->maxx
	sub	esi, r12d	# tmp424, w
	movsx	esi, si	# tmp426, tmp424
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+204]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	ecx, r13d	#, D.9355
	mov	edx, r14d	#, D.9357
	call	vlineColor	#
	cmp	WORD PTR [rbx+202], 0	# MEM[(struct Grid *)vthis_23(D)].c_col,
	je	.L43	#,
	mov	ebp, 0	# x,
.L44:
	mov	rdx, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	movzx	eax, bp	# x, x
	lea	rax, [rax+rax*4]	# tmp434,
	sal	rax, 3	# tmp435,
	add	rax, QWORD PTR [rdx]	# tmp436, *D.9227_277
	movzx	esi, WORD PTR [rax+8]	# D.9368_281->cell_rect.x, D.9368_281->cell_rect.x
	sub	esi, r12d	# tmp437, w
	movsx	esi, si	# tmp439, tmp437
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+204]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	ecx, r13d	#, D.9355
	mov	edx, r14d	#, D.9357
	call	vlineColor	#
	add	ebp, 1	# x,
	cmp	WORD PTR [rbx+202], bp	# MEM[(struct Grid *)vthis_23(D)].c_col, x
	ja	.L44	#,
.L43:
	movzx	r12d, WORD PTR [rbx+98]	# h, MEM[(struct Widget *)vthis_23(D)].pos.y
	movzx	r14d, WORD PTR [rbx+180]	# D.9296, MEM[(struct Container *)vthis_23(D)].padx
	movzx	r13d, WORD PTR [rbx+100]	# tmp443, MEM[(struct Widget *)vthis_23(D)].pos.w
	sub	r13d, r14d	# tmp443, D.9296
	movsx	r13d, r13w	# D.9386, tmp443
	movsx	r14d, r14w	# D.9388, D.9296
	movzx	edx, WORD PTR [rbx+200]	# MEM[(struct Grid *)vthis_23(D)].c_row, MEM[(struct Grid *)vthis_23(D)].c_row
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	mov	rax, QWORD PTR [rax-8+rdx*8]	# *D.9379_303, *D.9379_303
	movzx	ecx, WORD PTR [rax+26]	# D.9380_304->maxy, D.9380_304->maxy
	sub	ecx, r12d	# tmp449, h
	movsx	ecx, cx	# tmp451, tmp449
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+204]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	edx, r13d	#, D.9386
	mov	esi, r14d	#, D.9388
	call	hlineColor	#
	cmp	WORD PTR [rbx+200], 0	# MEM[(struct Grid *)vthis_23(D)].c_row,
	je	.L21	#,
	mov	ebp, 0	# y,
.L45:
	movzx	edx, bp	# y, y
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	mov	rax, QWORD PTR [rax+rdx*8]	# *D.9239_320, *D.9239_320
	movzx	ecx, WORD PTR [rax+10]	# D.9240_321->cell_rect.y, D.9240_321->cell_rect.y
	sub	ecx, r12d	# tmp457, h
	movsx	ecx, cx	# tmp459, tmp457
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+204]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	edx, r13d	#, D.9386
	mov	esi, r14d	#, D.9388
	call	hlineColor	#
	add	ebp, 1	# y,
	cmp	WORD PTR [rbx+200], bp	# MEM[(struct Grid *)vthis_23(D)].c_row, y
	ja	.L45	#,
.L21:
	add	rsp, 24	#,
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
	.size	Grid_vrefresh, .-Grid_vrefresh
	.globl	Grid_vdraw
	.type	Grid_vdraw, @function
Grid_vdraw:
.LFB95:
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
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 64
	mov	rbp, rdi	# vthis, vthis
	mov	r13, rsi	# screen, screen
	mov	r15d, edx	# flip, flip
	mov	edx, 0	#,
	call	Widget_vdraw	#
	mov	r14d, 0	# y,
	cmp	WORD PTR [rbp+200], 0	# MEM[(struct Grid *)vthis_3(D)].c_row,
	jne	.L64	#,
	jmp	.L57	#
.L59:
	mov	rdx, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_3(D)].items, MEM[(struct Grid *)vthis_3(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp87,
	sal	rax, 3	# tmp88,
	add	rax, QWORD PTR [rdx+r12]	# tmp89, *D.9410_12
	mov	rdi, QWORD PTR [rax]	# widget, D.9414_16->widget
	test	rdi, rdi	# widget
	je	.L58	#,
	mov	edx, 0	#,
	mov	rsi, r13	#, screen
	call	Widget_draw	#
.L58:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+202], bx	# MEM[(struct Grid *)vthis_3(D)].c_col, x
	ja	.L59	#,
.L60:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+200], r14w	# MEM[(struct Grid *)vthis_3(D)].c_row, y
	jbe	.L57	#,
.L64:
	cmp	WORD PTR [rbp+202], 0	# MEM[(struct Grid *)vthis_3(D)].c_col,
	je	.L60	#,
	movzx	r12d, r14w	# y, y
	sal	r12, 3	# D.9409,
	mov	ebx, 0	# x,
	jmp	.L59	#
.L57:
	test	r15b, r15b	# flip
	je	.L55	#,
	mov	rdi, r13	#, screen
	call	Screen_flip	#
.L55:
	add	rsp, 8	#,
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
.LFE95:
	.size	Grid_vdraw, .-Grid_vdraw
	.globl	Grid_vmevent
	.type	Grid_vmevent, @function
Grid_vmevent:
.LFB94:
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
	mov	rbp, rdi	# vthis, vthis
	mov	r12, rsi	# screen, screen
	mov	r14d, 0	# y,
	cmp	WORD PTR [rdi+200], 0	# MEM[(struct Grid *)vthis_4(D)].c_row,
	jne	.L75	#,
	jmp	.L68	#
.L71:
	mov	rdx, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_4(D)].items, MEM[(struct Grid *)vthis_4(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp86,
	sal	rax, 3	# tmp87,
	add	rax, QWORD PTR [rdx+r13]	# tmp88, *D.9424_11
	mov	rdi, QWORD PTR [rax]	# widget, D.9428_15->widget
	test	rdi, rdi	# widget
	je	.L69	#,
	mov	rsi, r12	#, screen
	call	Widget_mevent	#
	cmp	BYTE PTR [r12+121], 0	# screen_17(D)->event_handled,
	jne	.L66	#,
.L69:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+202], bx	# MEM[(struct Grid *)vthis_4(D)].c_col, x
	ja	.L71	#,
.L72:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+200], r14w	# MEM[(struct Grid *)vthis_4(D)].c_row, y
	jbe	.L68	#,
.L75:
	cmp	WORD PTR [rbp+202], 0	# MEM[(struct Grid *)vthis_4(D)].c_col,
	je	.L72	#,
	movzx	r13d, r14w	# y, y
	sal	r13, 3	# D.9423,
	mov	ebx, 0	# x,
	jmp	.L71	#
.L68:
	mov	rsi, r12	#, screen
	mov	rdi, rbp	#, vthis
	call	Widget_vmevent	#
.L66:
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
.LFE94:
	.size	Grid_vmevent, .-Grid_vmevent
	.globl	Grid_vdestroy
	.type	Grid_vdestroy, @function
Grid_vdestroy:
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
	mov	esi, OFFSET FLAT:__FUNCTION__.9003	#,
	call	Static_printObj2	#
	cmp	QWORD PTR [rbp+184], 0	# MEM[(struct Grid *)vthis_2(D)].items,
	je	.L78	#,
	cmp	WORD PTR [rbp+200], 0	# MEM[(struct Grid *)vthis_2(D)].c_row,
	je	.L79	#,
	mov	ebx, 0	# i,
.L80:
	movzx	edx, bx	# i, i
	mov	rax, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_2(D)].items, MEM[(struct Grid *)vthis_2(D)].items
	mov	rdi, QWORD PTR [rax+rdx*8]	# *D.9442_9, *D.9442_9
	mov	edx, 52	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	add	ebx, 1	# i,
	cmp	WORD PTR [rbp+200], bx	# MEM[(struct Grid *)vthis_2(D)].c_row, i
	ja	.L80	#,
.L79:
	mov	rdi, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_2(D)].items, MEM[(struct Grid *)vthis_2(D)].items
	mov	edx, 53	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbp+184], 0	# MEM[(struct Grid *)vthis_2(D)].items,
	mov	WORD PTR [rbp+200], 0	# MEM[(struct Grid *)vthis_2(D)].c_row,
	mov	WORD PTR [rbp+202], 0	# MEM[(struct Grid *)vthis_2(D)].c_col,
.L78:
	mov	rdi, QWORD PTR [rbp+192]	# MEM[(struct Grid *)vthis_2(D)].maxw, MEM[(struct Grid *)vthis_2(D)].maxw
	mov	edx, 57	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbp+192], 0	# MEM[(struct Grid *)vthis_2(D)].maxw,
	mov	rdi, rbp	#, vthis
	call	Container_vdestroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Grid_vdestroy, .-Grid_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"%20s:\tWithin context: c_row=%hu, c_col=%hu\n"
	.text
	.globl	Grid_new
	.type	Grid_new, @function
Grid_new:
.LFB99:
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
	mov	rbp, rdi	# this, this
	mov	ebx, esi	# c_row, c_row
	mov	r13d, edx	# c_col, c_col
	test	rdi, rdi	# this
	jne	.L84	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9103	#,
	call	Static_nullThis2	#
	movzx	r9d, r13w	#, c_col
	movzx	r8d, bx	#, c_row
	mov	ecx, OFFSET FLAT:__FUNCTION__.9103	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L92	#
.L84:
	call	Container_new	#
	mov	QWORD PTR [rbp+0], OFFSET FLAT:type	# MEM[(struct coObject *)this_5(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9103	#,
	mov	rdi, rbp	#, this
	call	Static_printObj2	#
	mov	BYTE PTR [rbp+208], 0	# this_5(D)->showBorder,
	mov	DWORD PTR [rbp+204], 255	# this_5(D)->bord_color,
	test	r13w, r13w	# c_col
	mov	eax, 1	# tmp101,
	cmovne	eax, r13d	# c_col,, c_col
	mov	WORD PTR [rbp+202], ax	# this_5(D)->c_col, c_col
	test	bx, bx	# c_row
	jne	.L87	#,
	jmp	.L93	#
.L89:
	mov	r12, QWORD PTR [rbp+184]	# D.9190, this_5(D)->items
	add	r12, rbx	# D.9190, ivtmp.99
	mov	ecx, 337	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 40	#,
	mov	rdi, r13	#, c_col
	call	wcalloc	#
	mov	QWORD PTR [r12], rax	# *D.9190_26, D.9192
	add	rbx, 8	# ivtmp.99,
	cmp	rbx, r14	# ivtmp.99, D.9595
	jne	.L89	#,
	jmp	.L92	#
.L87:
	mov	WORD PTR [rbp+200], bx	# this_5(D)->c_row, c_row
	movzx	eax, ax	# c_col, c_col
	lea	rdi, [rax+rax]	# tmp94,
	mov	edx, 335	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wmalloc	#
	mov	QWORD PTR [rbp+192], rax	# this_5(D)->maxw, D.9184
	movzx	edi, bx	# c_row, c_row
	mov	ecx, 336	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+184], rax	# this_5(D)->items, D.9186
	sub	ebx, 1	# tmp96,
	movzx	ebx, bx	# tmp97, tmp96
	lea	r14, [8+rbx*8]	# D.9595,
	mov	ebx, 0	# ivtmp.99,
	movzx	r13d, r13w	# c_col, c_col
	jmp	.L89	#
.L93:
	mov	WORD PTR [rbp+200], 1	# this_5(D)->c_row,
	movzx	eax, ax	# c_col, c_col
	lea	rdi, [rax+rax]	# tmp100,
	mov	edx, 335	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wmalloc	#
	mov	QWORD PTR [rbp+192], rax	# this_5(D)->maxw, D.9184
	mov	ecx, 336	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 8	#,
	mov	edi, 0	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+184], rax	# this_5(D)->items, D.9186
.L92:
	mov	rax, rbp	#, this
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
.LFE99:
	.size	Grid_new, .-Grid_new
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Grid_add: Index items[%hu][%hu] out of bounds rows=%hu, cols=%hu\n"
	.text
	.globl	Grid_add
	.type	Grid_add, @function
Grid_add:
.LFB100:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	mov	eax, ecx	# col, col
	movzx	ecx, WORD PTR [rsp+48]	# marg_top, marg_top
	movzx	r11d, WORD PTR [rsp+56]	# marg_left, marg_left
	movzx	ebx, WORD PTR [rsp+64]	# marg_bot, marg_bot
	movzx	ebp, WORD PTR [rsp+72]	# marg_right, marg_right
	movzx	r10d, WORD PTR [rdi+200]	# D.9142, this_5(D)->c_row
	cmp	r10w, dx	# D.9142, row
	jbe	.L96	#,
	cmp	WORD PTR [rdi+202], ax	# this_5(D)->c_col, col
	jbe	.L96	#,
	movzx	edx, dx	# row, row
	mov	r10, QWORD PTR [rdi+184]	# this_5(D)->items, this_5(D)->items
	movzx	eax, ax	# col, col
	lea	rdi, [rax+rax*4]	# tmp100,
	mov	rax, QWORD PTR [r10+rdx*8]	# *D.9149_13, *D.9149_13
	lea	rax, [rax+rdi*8]	# item,
	cmp	r8d, 3	# halign,
	jne	.L97	#,
	add	ebp, r11d	# marg_left, marg_left
	mov	r11d, ebp	# marg_left, marg_left
	shr	r11w	# marg_left
	and	ebp, 1	# tmp103,
	add	ebp, r11d	# marg_right, marg_left
.L97:
	cmp	r9d, 3	# valign,
	jne	.L98	#,
	add	ebx, ecx	# marg_top, marg_top
	mov	ecx, ebx	# marg_top, marg_top
	shr	cx	# marg_top
	and	ebx, 1	# tmp104,
	add	ebx, ecx	# marg_bot, marg_top
.L98:
	mov	DWORD PTR [rax+28], r8d	# item_17->halign, halign
	mov	DWORD PTR [rax+32], r9d	# item_17->valign, valign
	mov	WORD PTR [rax+20], cx	# item_17->margin_top, marg_top
	mov	WORD PTR [rax+16], r11w	# item_17->margin_left, marg_left
	mov	WORD PTR [rax+22], bx	# item_17->margin_bottom, marg_bot
	mov	WORD PTR [rax+18], bp	# item_17->margin_right, marg_right
	mov	QWORD PTR [rax], rsi	# item_17->widget, widget
	jmp	.L95	#
.L96:
	movzx	ecx, dx	# row, row
	movzx	edx, WORD PTR [rdi+202]	# this_5(D)->c_col, this_5(D)->c_col
	mov	DWORD PTR [rsp], edx	#, this_5(D)->c_col
	movzx	r9d, r10w	#, D.9142
	movzx	r8d, ax	#, col
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L95:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Grid_add, .-Grid_add
	.section	.rodata.str1.1
.LC4:
	.string	"grid=NULL"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"GRID(%s): c_row=%hu, c_col=%hu"
	.text
	.globl	Grid_toString
	.type	Grid_toString, @function
Grid_toString:
.LFB101:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC4	# D.9129,
	test	rdi, rdi	# this
	je	.L106	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_2(D)].class, MEM[(struct coObject *)this_2(D)].class
	mov	r9, QWORD PTR [rax+16]	# D.9134_8->name, D.9134_8->name
	movzx	eax, WORD PTR [rdi+202]	# this_2(D)->c_col, this_2(D)->c_col
	mov	DWORD PTR [rsp+8], eax	#, this_2(D)->c_col
	movzx	eax, WORD PTR [rdi+200]	# this_2(D)->c_row, this_2(D)->c_row
	mov	DWORD PTR [rsp], eax	#, this_2(D)->c_row
	mov	r8d, OFFSET FLAT:.LC5	#,
	mov	ecx, 64	#,
	mov	edx, 1	#,
	mov	esi, 64	#,
	mov	edi, OFFSET FLAT:str_id.9125	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9125	# D.9129,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
.L106:
	rep
	ret
	.cfi_endproc
.LFE101:
	.size	Grid_toString, .-Grid_toString
	.globl	Grid_class
	.data
	.align 8
	.type	Grid_class, @object
	.size	Grid_class, 8
Grid_class:
	.quad	type
	.section	.rodata
	.type	__FUNCTION__.9003, @object
	.size	__FUNCTION__.9003, 14
__FUNCTION__.9003:
	.string	"Grid_vdestroy"
	.section	.rodata.str1.1
.LC6:
	.string	"Grid"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	216
# name:
	.quad	.LC6
	.section	.rodata
	.type	__FUNCTION__.9103, @object
	.size	__FUNCTION__.9103, 9
__FUNCTION__.9103:
	.string	"Grid_new"
	.local	str_id.9125
	.comm	str_id.9125,64,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	Grid_vdestroy
	.quad	Grid_vmevent
	.quad	Grid_vdraw
	.quad	Grid_vrefresh
	.quad	Grid_vdrag
	.quad	Grid_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
