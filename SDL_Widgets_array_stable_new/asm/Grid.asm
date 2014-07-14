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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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

	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"GRID(%s): c_row=%hu, c_col=%hu"
	.text
	.globl	Grid_vtoString
	.type	Grid_vtoString, @function
Grid_vtoString:
.LFB111:
	.cfi_startproc
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	r9, QWORD PTR [rax+8]	# D.9408_6->name, D.9408_6->name
	movzx	eax, WORD PTR [rdi+194]	# MEM[(struct Grid *)vthis_1(D)].c_col, MEM[(struct Grid *)vthis_1(D)].c_col
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Grid *)vthis_1(D)].c_col
	movzx	eax, WORD PTR [rdi+192]	# MEM[(struct Grid *)vthis_1(D)].c_row, MEM[(struct Grid *)vthis_1(D)].c_row
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Grid *)vthis_1(D)].c_row
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 128	#,
	mov	edx, 1	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.9402	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9402	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	Grid_vtoString, .-Grid_vtoString
	.globl	Grid_vsetVisible
	.type	Grid_vsetVisible, @function
Grid_vsetVisible:
.LFB108:
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
	movzx	r13d, sil	# D.9469, vis
	mov	esi, r13d	#, D.9469
	call	Widget_vsetVisible	#
	mov	r14d, 0	# y,
	cmp	WORD PTR [rbp+192], 0	# MEM[(struct Grid *)vthis_6(D)].c_row,
	jne	.L11	#,
	jmp	.L3	#
.L7:
	mov	rdx, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_6(D)].items, MEM[(struct Grid *)vthis_6(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp94,
	sal	rax, 3	# tmp95,
	add	rax, QWORD PTR [rdx+r12]	# tmp96, *D.9473_13
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9477_17->widget
	test	rdi, rdi	# item_wt
	je	.L6	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_18].class, MEM[(struct coObject *)item_wt_18].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9480_19->vtable, D.9480_19->vtable
	mov	rdx, QWORD PTR [rdx+8]	# MEM[(const void * *)D.9481_20 + 8B], MEM[(const void * *)D.9481_20 + 8B]
	mov	esi, r13d	#, D.9469
	call	[QWORD PTR [rdx+32]]	# MEM[(struct IWidget *)D.9483_22].setVisible
.L6:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+194], bx	# MEM[(struct Grid *)vthis_6(D)].c_col, x
	ja	.L7	#,
.L8:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+192], r14w	# MEM[(struct Grid *)vthis_6(D)].c_row, y
	jbe	.L3	#,
.L11:
	cmp	WORD PTR [rbp+194], 0	# MEM[(struct Grid *)vthis_6(D)].c_col,
	je	.L8	#,
	movzx	r12d, r14w	# y, y
	sal	r12, 3	# D.9472,
	mov	ebx, 0	# x,
	jmp	.L7	#
.L3:
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
.LFE108:
	.size	Grid_vsetVisible, .-Grid_vsetVisible
	.globl	Grid_vdrag
	.type	Grid_vdrag, @function
Grid_vdrag:
.LFB107:
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
	movsx	r14d, dx	# D.9487, dy
	movsx	r13d, si	# D.9488, dx
	mov	edx, r14d	#, D.9487
	mov	esi, r13d	#, D.9488
	call	Widget_vdrag	#
	mov	r15d, 0	# y,
	cmp	WORD PTR [rbp+192], 0	# MEM[(struct Grid *)vthis_8(D)].c_row,
	jne	.L21	#,
	jmp	.L13	#
.L17:
	mov	rdx, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_8(D)].items, MEM[(struct Grid *)vthis_8(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp94,
	sal	rax, 3	# tmp95,
	add	rax, QWORD PTR [rdx+r12]	# tmp96, *D.9492_15
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9496_19->widget
	test	rdi, rdi	# item_wt
	je	.L16	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_20].class, MEM[(struct coObject *)item_wt_20].class
	mov	rax, QWORD PTR [rax+16]	# D.9499_21->vtable, D.9499_21->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9500_22 + 8B], MEM[(const void * *)D.9500_22 + 8B]
	mov	edx, r14d	#, D.9487
	mov	esi, r13d	#, D.9488
	call	[QWORD PTR [rax+24]]	# MEM[(struct IWidget *)D.9502_24].drag
.L16:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+194], bx	# MEM[(struct Grid *)vthis_8(D)].c_col, x
	ja	.L17	#,
.L18:
	add	r15d, 1	# y,
	cmp	WORD PTR [rbp+192], r15w	# MEM[(struct Grid *)vthis_8(D)].c_row, y
	jbe	.L13	#,
.L21:
	cmp	WORD PTR [rbp+194], 0	# MEM[(struct Grid *)vthis_8(D)].c_col,
	je	.L18	#,
	movzx	r12d, r15w	# y, y
	sal	r12, 3	# D.9491,
	mov	ebx, 0	# x,
	jmp	.L17	#
.L13:
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
.LFE107:
	.size	Grid_vdrag, .-Grid_vdrag
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"Grid_refresh: Failed on condition: (! this->c_row) || (! this->c_col) || (! this->items) [%hu,%hu,%p]\n"
	.text
	.globl	Grid_vrefresh
	.type	Grid_vrefresh, @function
Grid_vrefresh:
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
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
	mov	rbx, rdi	# vthis, vthis
	movzx	eax, WORD PTR [rdi+192]	# D.9508, MEM[(struct Grid *)vthis_23(D)].c_row
	test	ax, ax	# D.9508
	je	.L24	#,
	movzx	edx, WORD PTR [rdi+194]	# D.9510, MEM[(struct Grid *)vthis_23(D)].c_col
	test	dx, dx	# D.9510
	je	.L24	#,
	cmp	QWORD PTR [rdi+176], 0	# MEM[(struct Grid *)vthis_23(D)].items,
	jne	.L25	#,
.L24:
	movzx	ecx, ax	# D.9508, D.9508
	mov	r9, QWORD PTR [rbx+176]	#, MEM[(struct Grid *)vthis_23(D)].items
	movzx	r8d, WORD PTR [rbx+194]	#, MEM[(struct Grid *)vthis_23(D)].c_col
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_23(D)].visible,
	jmp	.L23	#
.L25:
	movzx	edx, dx	# D.9510, D.9510
	add	rdx, rdx	# tmp326
	mov	rdi, QWORD PTR [rdi+184]	# MEM[(struct Grid *)vthis_23(D)].maxw, MEM[(struct Grid *)vthis_23(D)].maxw
	mov	esi, 0	#,
	call	memset	#
	mov	r15, QWORD PTR [rbx+184]	# maxw, MEM[(struct Grid *)vthis_23(D)].maxw
	movzx	r14d, WORD PTR [rbx+172]	# maxx, MEM[(struct Container *)vthis_23(D)].padx
	movzx	r13d, WORD PTR [rbx+174]	# maxy, MEM[(struct Container *)vthis_23(D)].pady
	mov	r9d, r13d	# _y, maxy
	add	r9w, WORD PTR [rbx+98]	# _y, MEM[(struct Widget *)vthis_23(D)].pos.y
	mov	r10d, 0	# y,
	mov	eax, 0	# item,
	cmp	WORD PTR [rbx+192], 0	# MEM[(struct Grid *)vthis_23(D)].c_row,
	jne	.L55	#,
	jmp	.L28	#
.L30:
	movzx	ecx, dx	# D.9526, x
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	lea	rdi, [rcx+rcx*4]	# tmp336,
	mov	rax, QWORD PTR [rax+r8]	# *D.9524_48, *D.9524_48
	lea	rax, [rax+rdi*8]	# item,
	mov	rdi, QWORD PTR [rax]	# D.9528, item_52->widget
	test	rdi, rdi	# D.9528
	je	.L29	#,
	movzx	r11d, WORD PTR [rax+20]	# item_52->margin_top, item_52->margin_top
	add	r11w, WORD PTR [rdi+102]	# tmp339, D.9528_53->pos.h
	add	r11w, WORD PTR [rax+22]	# tmp342, item_52->margin_bottom
	cmp	si, r11w	# maxh, tmp342
	cmovb	esi, r11d	# maxh,, maxh, tmp342
	movzx	r11d, WORD PTR [rax+16]	# item_52->margin_left, item_52->margin_left
	add	r11w, WORD PTR [rdi+100]	# item_52->margin_left, D.9528_53->pos.w
	mov	edi, r11d	# tmp344, item_52->margin_left
	add	di, WORD PTR [rax+18]	# w, item_52->margin_right
	lea	rcx, [r15+rcx*2]	# D.9542,
	cmp	di, WORD PTR [rcx]	# w, *D.9542_69
	jbe	.L29	#,
	mov	WORD PTR [rcx], di	# *D.9542_69, w
.L29:
	add	edx, 1	# x,
	movzx	ecx, WORD PTR [rbx+194]	# D.9510, MEM[(struct Grid *)vthis_23(D)].c_col
	cmp	cx, dx	# D.9510, x
	ja	.L30	#,
	test	cx, cx	# D.9510
	je	.L31	#,
	mov	edx, 0	# x,
	lea	r11d, [rsi-1+r9]	# D.9550,
	movzx	ebp, si	# maxh, maxh
.L35:
	mov	rdi, QWORD PTR [rbx+176]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	movzx	eax, dx	# x, x
	lea	rcx, [rax+rax*4]	# tmp353,
	mov	rax, QWORD PTR [rdi+r8]	# *D.9524_80, *D.9524_80
	lea	rax, [rax+rcx*8]	# item,
	mov	WORD PTR [rax+10], r9w	# item_84->cell_rect.y, _y
	mov	WORD PTR [rax+14], si	# item_84->cell_rect.h, maxh
	mov	WORD PTR [rax+26], r11w	# item_84->maxy, D.9550
	mov	rcx, QWORD PTR [rax]	# D.9528, item_84->widget
	test	rcx, rcx	# D.9528
	je	.L32	#,
	mov	edi, DWORD PTR [rax+32]	# D.9553, item_84->valign
	cmp	edi, 1	# D.9553,
	jne	.L33	#,
	mov	edi, r9d	# tmp357, _y
	add	di, WORD PTR [rax+20]	# tmp357, item_84->margin_top
	mov	WORD PTR [rcx+98], di	# D.9528_90->pos.y, tmp357
	mov	rcx, QWORD PTR [rax]	# D.9528, item_84->widget
	movzx	r12d, WORD PTR [rcx+102]	# D.9528_99->pos.h, D.9528_99->pos.h
	movzx	edi, WORD PTR [rcx+98]	# D.9528_99->pos.y, D.9528_99->pos.y
	lea	edi, [r12-1+rdi]	# tmp361,
	mov	WORD PTR [rcx+146], di	# D.9528_99->maxy, tmp361
	jmp	.L32	#
.L33:
	cmp	edi, 2	# D.9553,
	jne	.L34	#,
	mov	edi, r11d	# tmp363, D.9550
	sub	di, WORD PTR [rax+22]	# tmp363, item_84->margin_bottom
	mov	WORD PTR [rcx+146], di	# D.9528_90->maxy, tmp363
	mov	rcx, QWORD PTR [rax]	# D.9528, item_84->widget
	movzx	edi, WORD PTR [rcx+146]	# D.9528_112->maxy, D.9528_112->maxy
	sub	di, WORD PTR [rcx+102]	# tmp365, D.9528_112->pos.h
	mov	WORD PTR [rcx+98], di	# D.9528_112->pos.y, tmp365
	jmp	.L32	#
.L34:
	movzx	edi, WORD PTR [rcx+102]	# D.9528_90->pos.h, D.9528_90->pos.h
	mov	r12d, ebp	#, maxh
	sub	r12d, edi	#, D.9528_90->pos.h
	mov	edi, r12d	# tmp369,
	sar	edi	# tmp370
	add	edi, r9d	# tmp371, _y
	mov	WORD PTR [rcx+98], di	# D.9528_90->pos.y, tmp371
	mov	rcx, QWORD PTR [rax]	# D.9528, item_84->widget
	movzx	r12d, WORD PTR [rcx+102]	# D.9528_131->pos.h, D.9528_131->pos.h
	movzx	edi, WORD PTR [rcx+98]	# D.9528_131->pos.y, D.9528_131->pos.y
	lea	edi, [r12-1+rdi]	# tmp374,
	mov	WORD PTR [rcx+146], di	# D.9528_131->maxy, tmp374
.L32:
	add	edx, 1	# x,
	cmp	WORD PTR [rbx+194], dx	# MEM[(struct Grid *)vthis_23(D)].c_col, x
	ja	.L35	#,
.L31:
	test	rax, rax	# item
	je	.L36	#,
	movzx	r9d, WORD PTR [rax+26]	# _y, item_451->maxy
.L36:
	add	r10d, 1	# y,
	movzx	edx, WORD PTR [rbx+192]	# D.9508, MEM[(struct Grid *)vthis_23(D)].c_row
	cmp	dx, r10w	# D.9508, y
	jbe	.L37	#,
.L55:
	cmp	WORD PTR [rbx+194], 0	# MEM[(struct Grid *)vthis_23(D)].c_col,
	je	.L31	#,
	movzx	r8d, r10w	# y, y
	sal	r8, 3	# D.9523,
	mov	esi, 0	# maxh,
	mov	edx, 0	# x,
	jmp	.L30	#
.L37:
	test	dx, dx	# D.9508
	je	.L28	#,
	mov	WORD PTR [rsp+14], 0	# %sfp,
.L44:
	movzx	ebp, WORD PTR [rbx+96]	# MEM[(struct Widget *)vthis_23(D)].pos.x, MEM[(struct Widget *)vthis_23(D)].pos.x
	add	bp, WORD PTR [rbx+172]	# _x, MEM[(struct Container *)vthis_23(D)].padx
	cmp	WORD PTR [rbx+194], 0	# MEM[(struct Grid *)vthis_23(D)].c_col,
	je	.L38	#,
	movzx	eax, WORD PTR [rsp+14]	# y, %sfp
	sal	rax, 3	#,
	mov	QWORD PTR [rsp], rax	# %sfp,
	mov	r12d, 0	# x,
.L43:
	movzx	edx, r12w	# D.9526, x
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	lea	rcx, [rdx+rdx*4]	# tmp383,
	mov	rsi, QWORD PTR [rsp]	#, %sfp
	mov	rax, QWORD PTR [rax+rsi]	# *D.9524_152, *D.9524_152
	lea	rax, [rax+rcx*8]	# item,
	mov	WORD PTR [rax+8], bp	# item_156->cell_rect.x, _x
	lea	rdx, [r15+rdx*2]	# D.9542,
	movzx	ecx, WORD PTR [rdx]	# D.9543, *D.9542_160
	mov	WORD PTR [rax+12], cx	# item_156->cell_rect.w, D.9543
	movzx	ecx, WORD PTR [rdx]	# *D.9542_160, *D.9542_160
	lea	ebp, [rbp-1+rcx]	# maxx,
	mov	WORD PTR [rax+24], bp	# item_156->maxx, maxx
	movzx	ecx, WORD PTR [rax+26]	# maxy, item_156->maxy
	cmp	r13w, cx	# maxy, maxy
	cmovb	r13d, ecx	# maxy,, maxy, maxy
	cmp	r14w, bp	# maxx, maxx
	cmovb	r14d, ebp	# maxx,, maxx, maxx
	mov	rcx, QWORD PTR [rax]	# D.9528, item_156->widget
	test	rcx, rcx	# D.9528
	je	.L39	#,
	mov	BYTE PTR [rcx+157], 0	# D.9528_175->draggable,
	mov	ecx, DWORD PTR [rax+28]	# D.9596, item_156->halign
	cmp	ecx, 4	# D.9596,
	jne	.L40	#,
	mov	rdx, QWORD PTR [rax]	# D.9528, item_156->widget
	movzx	ecx, WORD PTR [rax+8]	# item_156->cell_rect.x, item_156->cell_rect.x
	add	cx, WORD PTR [rax+16]	# tmp390, item_156->margin_left
	mov	WORD PTR [rdx+96], cx	# D.9528_178->pos.x, tmp390
	mov	rdx, QWORD PTR [rax]	# D.9528, item_156->widget
	movzx	ecx, WORD PTR [rdx+96]	# D.9528_185->pos.x, D.9528_185->pos.x
	add	cx, WORD PTR [rdx+100]	# tmp393, D.9528_185->pos.w
	mov	WORD PTR [rdx+144], cx	# D.9528_185->maxx, tmp393
	jmp	.L41	#
.L40:
	cmp	ecx, 5	# D.9596,
	jne	.L42	#,
	mov	rdx, QWORD PTR [rax]	# D.9528, item_156->widget
	movzx	ecx, WORD PTR [rax+24]	# item_156->maxx, item_156->maxx
	sub	cx, WORD PTR [rax+18]	# tmp396, item_156->margin_right
	mov	WORD PTR [rdx+144], cx	# D.9528_192->maxx, tmp396
	mov	rdx, QWORD PTR [rax]	# D.9528, item_156->widget
	movzx	ecx, WORD PTR [rdx+144]	# D.9528_197->maxx, D.9528_197->maxx
	sub	cx, WORD PTR [rdx+100]	# tmp399, D.9528_197->pos.w
	mov	WORD PTR [rdx+96], cx	# D.9528_197->pos.x, tmp399
	jmp	.L41	#
.L42:
	mov	rcx, QWORD PTR [rax]	# D.9528, item_156->widget
	movzx	edx, WORD PTR [rdx]	# *D.9542_160, *D.9542_160
	movzx	esi, WORD PTR [rcx+100]	# D.9528_211->pos.w, D.9528_211->pos.w
	sub	edx, esi	# tmp403, D.9528_211->pos.w
	sar	edx	# tmp404
	add	dx, WORD PTR [rax+8]	# tmp405, item_156->cell_rect.x
	mov	WORD PTR [rcx+96], dx	# D.9528_211->pos.x, tmp405
	mov	rdx, QWORD PTR [rax]	# D.9528, item_156->widget
	movzx	esi, WORD PTR [rdx+100]	# D.9528_220->pos.w, D.9528_220->pos.w
	movzx	ecx, WORD PTR [rdx+96]	# D.9528_220->pos.x, D.9528_220->pos.x
	lea	ecx, [rsi-1+rcx]	# tmp409,
	mov	WORD PTR [rdx+144], cx	# D.9528_220->maxx, tmp409
.L41:
	mov	rdi, QWORD PTR [rax]	# D.9528, item_156->widget
	cmp	BYTE PTR [rdi+165], 0	# D.9528_227->is_container,
	je	.L39	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)D.9528_227].class, MEM[(struct coObject *)D.9528_227].class
	mov	rax, QWORD PTR [rax+16]	# D.9624_230->vtable, D.9624_230->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9625_231 + 8B], MEM[(const void * *)D.9625_231 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9627_233].refresh
.L39:
	add	r12d, 1	# x,
	cmp	WORD PTR [rbx+194], r12w	# MEM[(struct Grid *)vthis_23(D)].c_col, x
	ja	.L43	#,
.L38:
	add	WORD PTR [rsp+14], 1	# %sfp,
	movzx	r12d, WORD PTR [rsp+14]	#, %sfp
	cmp	WORD PTR [rbx+192], r12w	# MEM[(struct Grid *)vthis_23(D)].c_row,
	ja	.L44	#,
.L28:
	add	r14w, WORD PTR [rbx+172]	# D.9629, MEM[(struct Container *)vthis_23(D)].padx
	mov	WORD PTR [rbx+144], r14w	# MEM[(struct Widget *)vthis_23(D)].maxx, D.9629
	add	r13w, WORD PTR [rbx+174]	# D.9630, MEM[(struct Container *)vthis_23(D)].pady
	mov	WORD PTR [rbx+146], r13w	# MEM[(struct Widget *)vthis_23(D)].maxy, D.9630
	sub	r14w, WORD PTR [rbx+96]	# tmp417, MEM[(struct Widget *)vthis_23(D)].pos.x
	mov	WORD PTR [rbx+100], r14w	# MEM[(struct Widget *)vthis_23(D)].pos.w, tmp417
	sub	r13w, WORD PTR [rbx+98]	# tmp418, MEM[(struct Widget *)vthis_23(D)].pos.y
	mov	WORD PTR [rbx+102], r13w	# MEM[(struct Widget *)vthis_23(D)].pos.h, tmp418
	mov	rdi, rbx	#, vthis
	call	Container_createSurfaceIfNeeded	#
	cmp	BYTE PTR [rbx+200], 0	# MEM[(struct Grid *)vthis_23(D)].showBorder,
	je	.L23	#,
	movzx	r14d, WORD PTR [rbx+174]	# D.9519, MEM[(struct Container *)vthis_23(D)].pady
	movzx	r12d, WORD PTR [rbx+96]	# w, MEM[(struct Widget *)vthis_23(D)].pos.x
	movzx	r13d, WORD PTR [rbx+102]	# tmp421, MEM[(struct Widget *)vthis_23(D)].pos.h
	sub	r13d, r14d	# tmp421, D.9519
	movsx	r13d, r13w	# D.9645, tmp421
	movsx	r14d, r14w	# D.9647, D.9519
	mov	rdx, QWORD PTR [rbx+176]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	movzx	eax, WORD PTR [rbx+194]	# MEM[(struct Grid *)vthis_23(D)].c_col, MEM[(struct Grid *)vthis_23(D)].c_col
	lea	rax, [rax-5+rax*4]	# tmp429,
	sal	rax, 3	# tmp430,
	add	rax, QWORD PTR [rdx]	# tmp431, *D.9512_264
	movzx	esi, WORD PTR [rax+24]	# D.9652_270->maxx, D.9652_270->maxx
	sub	esi, r12d	# tmp432, w
	movsx	esi, si	# tmp434, tmp432
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+196]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	ecx, r13d	#, D.9645
	mov	edx, r14d	#, D.9647
	call	vlineColor	#
	cmp	WORD PTR [rbx+194], 0	# MEM[(struct Grid *)vthis_23(D)].c_col,
	je	.L45	#,
	mov	ebp, 0	# x,
.L46:
	mov	rdx, QWORD PTR [rbx+176]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	movzx	eax, bp	# x, x
	lea	rax, [rax+rax*4]	# tmp442,
	sal	rax, 3	# tmp443,
	add	rax, QWORD PTR [rdx]	# tmp444, *D.9512_283
	movzx	esi, WORD PTR [rax+8]	# D.9658_287->cell_rect.x, D.9658_287->cell_rect.x
	sub	esi, r12d	# tmp445, w
	movsx	esi, si	# tmp447, tmp445
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+196]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	ecx, r13d	#, D.9645
	mov	edx, r14d	#, D.9647
	call	vlineColor	#
	add	ebp, 1	# x,
	cmp	WORD PTR [rbx+194], bp	# MEM[(struct Grid *)vthis_23(D)].c_col, x
	ja	.L46	#,
.L45:
	movzx	r12d, WORD PTR [rbx+98]	# h, MEM[(struct Widget *)vthis_23(D)].pos.y
	movzx	r14d, WORD PTR [rbx+172]	# D.9581, MEM[(struct Container *)vthis_23(D)].padx
	movzx	r13d, WORD PTR [rbx+100]	# tmp451, MEM[(struct Widget *)vthis_23(D)].pos.w
	sub	r13d, r14d	# tmp451, D.9581
	movsx	r13d, r13w	# D.9676, tmp451
	movsx	r14d, r14w	# D.9678, D.9581
	movzx	edx, WORD PTR [rbx+192]	# MEM[(struct Grid *)vthis_23(D)].c_row, MEM[(struct Grid *)vthis_23(D)].c_row
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	mov	rax, QWORD PTR [rax-8+rdx*8]	# *D.9669_309, *D.9669_309
	movzx	ecx, WORD PTR [rax+26]	# D.9670_310->maxy, D.9670_310->maxy
	sub	ecx, r12d	# tmp457, h
	movsx	ecx, cx	# tmp459, tmp457
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+196]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	edx, r13d	#, D.9676
	mov	esi, r14d	#, D.9678
	call	hlineColor	#
	cmp	WORD PTR [rbx+192], 0	# MEM[(struct Grid *)vthis_23(D)].c_row,
	je	.L23	#,
	mov	ebp, 0	# y,
.L47:
	movzx	edx, bp	# y, y
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct Grid *)vthis_23(D)].items, MEM[(struct Grid *)vthis_23(D)].items
	mov	rax, QWORD PTR [rax+rdx*8]	# *D.9524_326, *D.9524_326
	movzx	ecx, WORD PTR [rax+10]	# D.9525_327->cell_rect.y, D.9525_327->cell_rect.y
	sub	ecx, r12d	# tmp465, h
	movsx	ecx, cx	# tmp467, tmp465
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_23(D)].surf, MEM[(struct Widget *)vthis_23(D)].surf
	mov	r8d, DWORD PTR [rbx+196]	#, MEM[(struct Grid *)vthis_23(D)].bord_color
	mov	edx, r13d	#, D.9676
	mov	esi, r14d	#, D.9678
	call	hlineColor	#
	add	ebp, 1	# y,
	cmp	WORD PTR [rbx+192], bp	# MEM[(struct Grid *)vthis_23(D)].c_row, y
	ja	.L47	#,
.L23:
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
.LFE106:
	.size	Grid_vrefresh, .-Grid_vrefresh
	.globl	Grid_vdraw
	.type	Grid_vdraw, @function
Grid_vdraw:
.LFB105:
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
	cmp	WORD PTR [rbp+192], 0	# MEM[(struct Grid *)vthis_3(D)].c_row,
	jne	.L66	#,
	jmp	.L59	#
.L61:
	mov	rdx, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_3(D)].items, MEM[(struct Grid *)vthis_3(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp91,
	sal	rax, 3	# tmp92,
	add	rax, QWORD PTR [rdx+r12]	# tmp93, *D.9700_12
	mov	rdi, QWORD PTR [rax]	# widget, D.9704_16->widget
	test	rdi, rdi	# widget
	je	.L60	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)widget_17].class, MEM[(struct coObject *)widget_17].class
	mov	rax, QWORD PTR [rax+16]	# D.9707_18->vtable, D.9707_18->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9708_19 + 8B], MEM[(const void * *)D.9708_19 + 8B]
	mov	edx, 0	#,
	mov	rsi, r13	#, screen
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9710_21].draw
.L60:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+194], bx	# MEM[(struct Grid *)vthis_3(D)].c_col, x
	ja	.L61	#,
.L62:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+192], r14w	# MEM[(struct Grid *)vthis_3(D)].c_row, y
	jbe	.L59	#,
.L66:
	cmp	WORD PTR [rbp+194], 0	# MEM[(struct Grid *)vthis_3(D)].c_col,
	je	.L62	#,
	movzx	r12d, r14w	# y, y
	sal	r12, 3	# D.9699,
	mov	ebx, 0	# x,
	jmp	.L61	#
.L59:
	test	r15b, r15b	# flip
	je	.L57	#,
	mov	rdi, r13	#, screen
	call	Screen_flip	#
.L57:
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
.LFE105:
	.size	Grid_vdraw, .-Grid_vdraw
	.globl	Grid_vmevent
	.type	Grid_vmevent, @function
Grid_vmevent:
.LFB104:
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
	cmp	WORD PTR [rdi+192], 0	# MEM[(struct Grid *)vthis_4(D)].c_row,
	jne	.L77	#,
	jmp	.L70	#
.L73:
	mov	rdx, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_4(D)].items, MEM[(struct Grid *)vthis_4(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp90,
	sal	rax, 3	# tmp91,
	add	rax, QWORD PTR [rdx+r13]	# tmp92, *D.9719_11
	mov	rdi, QWORD PTR [rax]	# widget, D.9723_15->widget
	test	rdi, rdi	# widget
	je	.L71	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)widget_16].class, MEM[(struct coObject *)widget_16].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9726_17->vtable, D.9726_17->vtable
	mov	rdx, QWORD PTR [rdx+8]	# MEM[(const void * *)D.9727_18 + 8B], MEM[(const void * *)D.9727_18 + 8B]
	mov	rsi, r12	#, screen
	call	[QWORD PTR [rdx]]	# MEM[(struct IWidget *)D.9729_20].mevent
	cmp	BYTE PTR [r12+169], 0	# screen_22(D)->event_handled,
	jne	.L68	#,
.L71:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+194], bx	# MEM[(struct Grid *)vthis_4(D)].c_col, x
	ja	.L73	#,
.L74:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+192], r14w	# MEM[(struct Grid *)vthis_4(D)].c_row, y
	jbe	.L70	#,
.L77:
	cmp	WORD PTR [rbp+194], 0	# MEM[(struct Grid *)vthis_4(D)].c_col,
	je	.L74	#,
	movzx	r13d, r14w	# y, y
	sal	r13, 3	# D.9718,
	mov	ebx, 0	# x,
	jmp	.L73	#
.L70:
	mov	rsi, r12	#, screen
	mov	rdi, rbp	#, vthis
	call	Widget_vmevent	#
.L68:
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
.LFE104:
	.size	Grid_vmevent, .-Grid_vmevent
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Grid.c"
	.text
	.globl	Grid_vdestroy
	.type	Grid_vdestroy, @function
Grid_vdestroy:
.LFB103:
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
	cmp	QWORD PTR [rdi+176], 0	# MEM[(struct Grid *)vthis_2(D)].items,
	je	.L80	#,
	cmp	WORD PTR [rdi+192], 0	# MEM[(struct Grid *)vthis_2(D)].c_row,
	je	.L81	#,
	mov	ebx, 0	# i,
.L82:
	movzx	edx, bx	# i, i
	mov	rax, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_2(D)].items, MEM[(struct Grid *)vthis_2(D)].items
	mov	rdi, QWORD PTR [rax+rdx*8]	# *D.9742_9, *D.9742_9
	mov	edx, 63	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wfree	#
	add	ebx, 1	# i,
	cmp	WORD PTR [rbp+192], bx	# MEM[(struct Grid *)vthis_2(D)].c_row, i
	ja	.L82	#,
.L81:
	mov	rdi, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_2(D)].items, MEM[(struct Grid *)vthis_2(D)].items
	mov	edx, 64	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wfree	#
	mov	QWORD PTR [rbp+176], 0	# MEM[(struct Grid *)vthis_2(D)].items,
	mov	WORD PTR [rbp+192], 0	# MEM[(struct Grid *)vthis_2(D)].c_row,
	mov	WORD PTR [rbp+194], 0	# MEM[(struct Grid *)vthis_2(D)].c_col,
.L80:
	mov	rdi, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_2(D)].maxw, MEM[(struct Grid *)vthis_2(D)].maxw
	mov	edx, 68	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wfree	#
	mov	QWORD PTR [rbp+184], 0	# MEM[(struct Grid *)vthis_2(D)].maxw,
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
.LFE103:
	.size	Grid_vdestroy, .-Grid_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"%20s:\tWithin context: c_row=%hu, c_col=%hu\n"
	.text
	.globl	Grid_new
	.type	Grid_new, @function
Grid_new:
.LFB109:
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
	jne	.L86	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9380	#,
	call	Static_nullThis2	#
	movzx	r9d, r13w	#, c_col
	movzx	r8d, bx	#, c_row
	mov	ecx, OFFSET FLAT:__FUNCTION__.9380	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L94	#
.L86:
	call	Container_new	#
	mov	QWORD PTR [rbp+0], OFFSET FLAT:type	# MEM[(struct coObject *)this_5(D)].class,
	mov	BYTE PTR [rbp+200], 0	# this_5(D)->showBorder,
	mov	DWORD PTR [rbp+196], 255	# this_5(D)->bord_color,
	test	r13w, r13w	# c_col
	mov	eax, 1	# tmp101,
	cmovne	eax, r13d	# c_col,, c_col
	mov	WORD PTR [rbp+194], ax	# this_5(D)->c_col, c_col
	test	bx, bx	# c_row
	jne	.L89	#,
	jmp	.L95	#
.L91:
	mov	r12, QWORD PTR [rbp+176]	# D.9465, this_5(D)->items
	add	r12, rbx	# D.9465, ivtmp.100
	mov	ecx, 347	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 40	#,
	mov	rdi, r13	#, c_col
	call	wcalloc	#
	mov	QWORD PTR [r12], rax	# *D.9465_26, D.9467
	add	rbx, 8	# ivtmp.100,
	cmp	rbx, r14	# ivtmp.100, D.9897
	jne	.L91	#,
	jmp	.L94	#
.L89:
	mov	WORD PTR [rbp+192], bx	# this_5(D)->c_row, c_row
	movzx	eax, ax	# c_col, c_col
	lea	rdi, [rax+rax]	# tmp94,
	mov	edx, 345	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	QWORD PTR [rbp+184], rax	# this_5(D)->maxw, D.9459
	movzx	edi, bx	# c_row, c_row
	mov	ecx, 346	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+176], rax	# this_5(D)->items, D.9461
	sub	ebx, 1	# tmp96,
	movzx	ebx, bx	# tmp97, tmp96
	lea	r14, [8+rbx*8]	# D.9897,
	mov	ebx, 0	# ivtmp.100,
	movzx	r13d, r13w	# c_col, c_col
	jmp	.L91	#
.L95:
	mov	WORD PTR [rbp+192], 1	# this_5(D)->c_row,
	movzx	eax, ax	# c_col, c_col
	lea	rdi, [rax+rax]	# tmp100,
	mov	edx, 345	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	QWORD PTR [rbp+184], rax	# this_5(D)->maxw, D.9459
	mov	ecx, 346	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 8	#,
	mov	edi, 0	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+176], rax	# this_5(D)->items, D.9461
.L94:
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
.LFE109:
	.size	Grid_new, .-Grid_new
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Grid_add: Index items[%hu][%hu] out of bounds rows=%hu, cols=%hu\n"
	.text
	.globl	Grid_add
	.type	Grid_add, @function
Grid_add:
.LFB110:
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
	movzx	r10d, WORD PTR [rdi+192]	# D.9417, this_5(D)->c_row
	cmp	r10w, dx	# D.9417, row
	jbe	.L98	#,
	cmp	WORD PTR [rdi+194], ax	# this_5(D)->c_col, col
	jbe	.L98	#,
	movzx	edx, dx	# row, row
	mov	r10, QWORD PTR [rdi+176]	# this_5(D)->items, this_5(D)->items
	movzx	eax, ax	# col, col
	lea	rdi, [rax+rax*4]	# tmp100,
	mov	rax, QWORD PTR [r10+rdx*8]	# *D.9424_13, *D.9424_13
	lea	rax, [rax+rdi*8]	# item,
	cmp	r8d, 3	# halign,
	jne	.L99	#,
	add	ebp, r11d	# marg_left, marg_left
	mov	r11d, ebp	# marg_left, marg_left
	shr	r11w	# marg_left
	and	ebp, 1	# tmp103,
	add	ebp, r11d	# marg_right, marg_left
.L99:
	cmp	r9d, 3	# valign,
	jne	.L100	#,
	add	ebx, ecx	# marg_top, marg_top
	mov	ecx, ebx	# marg_top, marg_top
	shr	cx	# marg_top
	and	ebx, 1	# tmp104,
	add	ebx, ecx	# marg_bot, marg_top
.L100:
	mov	DWORD PTR [rax+28], r8d	# item_17->halign, halign
	mov	DWORD PTR [rax+32], r9d	# item_17->valign, valign
	mov	WORD PTR [rax+20], cx	# item_17->margin_top, marg_top
	mov	WORD PTR [rax+16], r11w	# item_17->margin_left, marg_left
	mov	WORD PTR [rax+22], bx	# item_17->margin_bottom, marg_bot
	mov	WORD PTR [rax+18], bp	# item_17->margin_right, marg_right
	mov	QWORD PTR [rax], rsi	# item_17->widget, widget
	jmp	.L97	#
.L98:
	movzx	ecx, dx	# row, row
	movzx	edx, WORD PTR [rdi+194]	# this_5(D)->c_col, this_5(D)->c_col
	mov	DWORD PTR [rsp], edx	#, this_5(D)->c_col
	movzx	r9d, r10w	#, D.9417
	movzx	r8d, ax	#, col
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L97:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	Grid_add, .-Grid_add
	.globl	Grid_class
	.data
	.align 8
	.type	Grid_class, @object
	.size	Grid_class, 8
Grid_class:
	.quad	type
	.section	.rodata.str1.1
.LC5:
	.string	"Grid"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	208
# name:
	.quad	.LC5
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.9380, @object
	.size	__FUNCTION__.9380, 9
__FUNCTION__.9380:
	.string	"Grid_new"
	.local	str_id.9402
	.comm	str_id.9402,128,32
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
	.quad	Grid_vdestroy
# toString:
	.quad	Grid_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Grid_vmevent
# draw:
	.quad	Grid_vdraw
# refresh:
	.quad	Grid_vrefresh
# drag:
	.quad	Grid_vdrag
# setVisible:
	.quad	Grid_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
