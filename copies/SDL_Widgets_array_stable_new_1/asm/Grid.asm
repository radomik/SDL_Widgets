	.file	"Grid.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Grid.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Grid.asm
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Grid.c"
	.text
	.type	Grid_vdestroy, @function
Grid_vdestroy:
.LFB95:
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
	cmp	QWORD PTR [rdi+160], 0	# MEM[(struct Grid *)vthis_1(D)].items,
	je	.L2	#,
	cmp	WORD PTR [rdi+172], 0	# MEM[(struct Grid *)vthis_1(D)].c_row,
	je	.L3	#,
	mov	ebx, 0	# i,
.L4:
	movzx	edx, bx	# i, i
	mov	rax, QWORD PTR [rbp+160]	# MEM[(struct Grid *)vthis_1(D)].items, MEM[(struct Grid *)vthis_1(D)].items
	mov	rdi, QWORD PTR [rax+rdx*8]	# *D.9280_9, *D.9280_9
	mov	edx, 60	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	add	ebx, 1	# i,
	cmp	bx, WORD PTR [rbp+172]	# i, MEM[(struct Grid *)vthis_1(D)].c_row
	jb	.L4	#,
.L3:
	mov	rdi, QWORD PTR [rbp+160]	# MEM[(struct Grid *)vthis_1(D)].items, MEM[(struct Grid *)vthis_1(D)].items
	mov	edx, 61	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbp+160], 0	# MEM[(struct Grid *)vthis_1(D)].items,
	mov	WORD PTR [rbp+172], 0	# MEM[(struct Grid *)vthis_1(D)].c_row,
	mov	WORD PTR [rbp+174], 0	# MEM[(struct Grid *)vthis_1(D)].c_col,
.L2:
	mov	rdi, rbp	#, vthis
	call	Container_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Grid_vdestroy, .-Grid_vdestroy
	.globl	Grid_dragItems
	.type	Grid_dragItems, @function
Grid_dragItems:
.LFB93:
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
	mov	rbp, rdi	# grid, grid
	mov	eax, esi	# dx, dx
	mov	r13d, esi	# dx.15, dx
	add	WORD PTR [rdi+56], si	# MEM[(struct Widget *)grid_3(D)].pos.x, dx
	mov	r12d, edx	# dy.16, dy
	add	WORD PTR [rdi+58], dx	# MEM[(struct Widget *)grid_3(D)].pos.y, dy
	add	WORD PTR [rdi+112], si	# MEM[(struct Widget *)grid_3(D)].maxx, dx
	add	WORD PTR [rdi+114], dx	# MEM[(struct Widget *)grid_3(D)].maxy, dy
	mov	r15d, 0	# y,
	movsx	ecx, dx	#, dy
	mov	DWORD PTR [rsp+8], ecx	# %sfp,
	cwde
	mov	DWORD PTR [rsp+12], eax	# %sfp,
	cmp	WORD PTR [rdi+172], 0	# grid_3(D)->c_row,
	jne	.L16	#,
	jmp	.L7	#
.L12:
	mov	rdx, QWORD PTR [rbp+160]	# grid_3(D)->items, grid_3(D)->items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp117,
	sal	rax, 3	# tmp118,
	add	rax, QWORD PTR [rdx+r14]	# tmp119, *D.9206_30
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9210_34->widget
	test	rdi, rdi	# item_wt
	je	.L10	#,
	cmp	DWORD PTR [rdi+124], 9	# item_wt_35->type,
	jne	.L11	#,
	mov	edx, DWORD PTR [rsp+8]	#, %sfp
	mov	esi, DWORD PTR [rsp+12]	#, %sfp
	call	Container_dragItems	#
	jmp	.L10	#
.L11:
	add	WORD PTR [rdi+56], r13w	# item_wt_35->pos.x, dx.15
	add	WORD PTR [rdi+112], r13w	# item_wt_35->maxx, dx.15
	add	WORD PTR [rdi+58], r12w	# item_wt_35->pos.y, dy.16
	add	WORD PTR [rdi+114], r12w	# item_wt_35->maxy, dy.16
.L10:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+174], bx	# grid_3(D)->c_col, x
	ja	.L12	#,
.L13:
	add	r15d, 1	# y,
	cmp	WORD PTR [rbp+172], r15w	# grid_3(D)->c_row, y
	jbe	.L7	#,
.L16:
	cmp	WORD PTR [rbp+174], 0	# grid_3(D)->c_col,
	je	.L13	#,
	movzx	r14d, r15w	# y, y
	sal	r14, 3	# D.9205,
	mov	ebx, 0	# x,
	jmp	.L12	#
.L7:
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
.LFE93:
	.size	Grid_dragItems, .-Grid_dragItems
	.globl	Grid_destroy
	.type	Grid_destroy, @function
Grid_destroy:
.LFB96:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# this, this
	cmp	QWORD PTR [rdi+160], 0	# this_1(D)->items,
	je	.L19	#,
	cmp	WORD PTR [rdi+172], 0	# this_1(D)->c_row,
	je	.L20	#,
	mov	ebx, 0	# i,
.L21:
	movzx	edx, bx	# i, i
	mov	rax, QWORD PTR [rbp+160]	# this_1(D)->items, this_1(D)->items
	mov	rdi, QWORD PTR [rax+rdx*8]	# *D.9308_9, *D.9308_9
	mov	edx, 60	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	add	ebx, 1	# i,
	cmp	bx, WORD PTR [rbp+172]	# i, this_1(D)->c_row
	jb	.L21	#,
.L20:
	mov	rdi, QWORD PTR [rbp+160]	# this_1(D)->items, this_1(D)->items
	mov	edx, 61	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbp+160], 0	# this_1(D)->items,
	mov	WORD PTR [rbp+172], 0	# this_1(D)->c_row,
	mov	WORD PTR [rbp+174], 0	# this_1(D)->c_col,
.L19:
	mov	rdi, rbp	#, this
	call	Container_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Grid_destroy, .-Grid_destroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Grid_new: Passed NULL this pointer. c_row=%hu, c_col=%hu\n"
	.section	.rodata.str1.1
.LC2:
	.string	"Grid"
	.text
	.globl	Grid_new
	.type	Grid_new, @function
Grid_new:
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
	mov	rbp, rdi	# this, this
	mov	r15d, esi	# c_row, c_row
	mov	WORD PTR [rsp+14], dx	# %sfp, c_col
	test	rdi, rdi	# this
	jne	.L25	#,
	movzx	ecx, si	# c_row, c_row
	movzx	r8d, dx	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L26	#
.L25:
	mov	ecx, OFFSET FLAT:.LC2	#,
	mov	edx, OFFSET FLAT:Grid_vdestroy	#,
	mov	esi, 1	#,
	call	Container_init_type	#
	mov	BYTE PTR [rbp+180], 0	# this_2(D)->showBorder,
	mov	DWORD PTR [rbp+176], 255	# this_2(D)->bord_color,
	cmp	WORD PTR [rsp+14], 0	# %sfp,
	je	.L32	#,
	test	r15w, r15w	# c_row
	jne	.L27	#,
.L32:
	mov	WORD PTR [rbp+174], 0	# this_2(D)->c_col,
	mov	WORD PTR [rbp+172], 0	# this_2(D)->c_row,
	mov	QWORD PTR [rbp+160], 0	# this_2(D)->items,
	jmp	.L29	#
.L27:
	movzx	edi, r15w	# c_row, c_row
	mov	ecx, 90	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+160], rax	# this_2(D)->items, D.9328
	test	r15w, r15w	# c_row
	je	.L30	#,
	lea	eax, [r15-1]	# tmp90,
	movzx	eax, ax	# tmp91, tmp90
	lea	r14, [8+rax*8]	# D.9343,
	mov	ebx, 0	# ivtmp.59,
	movzx	r13d, WORD PTR [rsp+14]	# c_col, %sfp
.L31:
	mov	r12, QWORD PTR [rbp+160]	# D.9324, this_2(D)->items
	add	r12, rbx	# D.9324, ivtmp.59
	mov	ecx, 91	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 40	#,
	mov	rdi, r13	#, c_col
	call	wcalloc	#
	mov	QWORD PTR [r12], rax	# *D.9324_33, D.9322
	add	rbx, 8	# ivtmp.59,
	cmp	rbx, r14	# ivtmp.59, D.9343
	jne	.L31	#,
.L30:
	movzx	eax, WORD PTR [rsp+14]	#, %sfp
	mov	WORD PTR [rbp+174], ax	# this_2(D)->c_col,
	mov	WORD PTR [rbp+172], r15w	# this_2(D)->c_row, c_row
.L29:
	mov	DWORD PTR [rbp+168], 0	# this_2(D)->type,
.L26:
	mov	rax, rbp	#, this
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
	.size	Grid_new, .-Grid_new
	.globl	Grid_init_type
	.type	Grid_init_type, @function
Grid_init_type:
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
	mov	rbp, rdi	# grid, grid
	mov	DWORD PTR [rsp+12], esi	# %sfp, grid_type
	mov	r15d, edx	# c_row, c_row
	mov	WORD PTR [rsp+10], cx	# %sfp, c_col
	test	r8, r8	# vdestroy
	mov	eax, OFFSET FLAT:Grid_vdestroy	# tmp91,
	cmove	r8, rax	# vdestroy,, vdestroy, tmp91
	mov	rcx, r9	#, type
	mov	rdx, r8	#, vdestroy
	mov	esi, 1	#,
	call	Container_init_type	#
	mov	BYTE PTR [rbp+180], 0	# grid_5(D)->showBorder,
	mov	DWORD PTR [rbp+176], 255	# grid_5(D)->bord_color,
	cmp	WORD PTR [rsp+10], 0	# %sfp,
	je	.L42	#,
	test	r15w, r15w	# c_row
	jne	.L37	#,
.L42:
	mov	WORD PTR [rbp+174], 0	# grid_5(D)->c_col,
	mov	WORD PTR [rbp+172], 0	# grid_5(D)->c_row,
	mov	QWORD PTR [rbp+160], 0	# grid_5(D)->items,
	jmp	.L39	#
.L37:
	movzx	edi, r15w	# c_row, c_row
	mov	ecx, 90	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+160], rax	# grid_5(D)->items, D.9359
	test	r15w, r15w	# c_row
	je	.L40	#,
	lea	eax, [r15-1]	# tmp86,
	movzx	eax, ax	# tmp87, tmp86
	lea	r14, [8+rax*8]	# D.9374,
	mov	ebx, 0	# ivtmp.65,
	movzx	r13d, WORD PTR [rsp+10]	# c_col, %sfp
.L41:
	mov	r12, QWORD PTR [rbp+160]	# D.9355, grid_5(D)->items
	add	r12, rbx	# D.9355, ivtmp.65
	mov	ecx, 91	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 40	#,
	mov	rdi, r13	#, c_col
	call	wcalloc	#
	mov	QWORD PTR [r12], rax	# *D.9355_27, D.9353
	add	rbx, 8	# ivtmp.65,
	cmp	rbx, r14	# ivtmp.65, D.9374
	jne	.L41	#,
.L40:
	movzx	eax, WORD PTR [rsp+10]	#, %sfp
	mov	WORD PTR [rbp+174], ax	# grid_5(D)->c_col,
	mov	WORD PTR [rbp+172], r15w	# grid_5(D)->c_row, c_row
.L39:
	mov	eax, DWORD PTR [rsp+12]	#, %sfp
	mov	DWORD PTR [rbp+168], eax	# grid_5(D)->type,
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
	.size	Grid_init_type, .-Grid_init_type
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Grid_add:Grid > index items[%hu][%hu] out of bounds rows=%hu, cols=%hu\n"
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
	movzx	r10d, WORD PTR [rdi+172]	# D.9111, grid_5(D)->c_row
	cmp	r10w, dx	# D.9111, row
	jbe	.L46	#,
	cmp	WORD PTR [rdi+174], ax	# grid_5(D)->c_col, col
	jbe	.L46	#,
	movzx	edx, dx	# row, row
	mov	r10, QWORD PTR [rdi+160]	# grid_5(D)->items, grid_5(D)->items
	movzx	eax, ax	# col, col
	lea	rdi, [rax+rax*4]	# tmp100,
	mov	rax, QWORD PTR [r10+rdx*8]	# *D.9118_13, *D.9118_13
	lea	rax, [rax+rdi*8]	# item,
	cmp	r8d, 3	# halign,
	jne	.L47	#,
	add	ebp, r11d	# marg_left, marg_left
	mov	r11d, ebp	# marg_left, marg_left
	shr	r11w	# marg_left
	and	ebp, 1	# tmp103,
	add	ebp, r11d	# marg_right, marg_left
.L47:
	cmp	r9d, 3	# valign,
	jne	.L48	#,
	add	ebx, ecx	# marg_top, marg_top
	mov	ecx, ebx	# marg_top, marg_top
	shr	cx	# marg_top
	and	ebx, 1	# tmp104,
	add	ebx, ecx	# marg_bot, marg_top
.L48:
	mov	DWORD PTR [rax+28], r8d	# item_17->halign, halign
	mov	DWORD PTR [rax+32], r9d	# item_17->valign, valign
	mov	WORD PTR [rax+20], cx	# item_17->margin_top, marg_top
	mov	WORD PTR [rax+16], r11w	# item_17->margin_left, marg_left
	mov	WORD PTR [rax+22], bx	# item_17->margin_bottom, marg_bot
	mov	WORD PTR [rax+18], bp	# item_17->margin_right, marg_right
	mov	QWORD PTR [rax], rsi	# item_17->widget, widget
	jmp	.L45	#
.L46:
	movzx	ecx, dx	# row, row
	movzx	edx, WORD PTR [rdi+174]	# grid_5(D)->c_col, grid_5(D)->c_col
	mov	DWORD PTR [rsp], edx	#, grid_5(D)->c_col
	movzx	r9d, r10w	#, D.9111
	movzx	r8d, ax	#, col
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L45:
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
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Grid_refresh:Grid > Failed on condition: (! grid->c_row) || (! grid->c_col) || (! grid->items) [%hu,%hu,%p]\n"
	.text
	.globl	Grid_refresh
	.type	Grid_refresh, @function
Grid_refresh:
.LFB101:
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
	mov	rbx, rdi	# grid, grid
	movzx	eax, WORD PTR [rdi+172]	# D.8940, grid_23(D)->c_row
	test	ax, ax	# D.8940
	je	.L52	#,
	movzx	edx, WORD PTR [rdi+174]	# D.8942, grid_23(D)->c_col
	test	dx, dx	# D.8942
	je	.L52	#,
	cmp	QWORD PTR [rdi+160], 0	# grid_23(D)->items,
	jne	.L53	#,
.L52:
	movzx	ecx, ax	# D.8940, D.8940
	mov	r9, QWORD PTR [rbx+160]	#, grid_23(D)->items
	movzx	r8d, WORD PTR [rbx+174]	#, grid_23(D)->c_col
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# grid_23(D)->container.widget.visible,
	jmp	.L51	#
.L53:
	movzx	edi, dx	# D.8942, D.8942
	mov	ecx, 172	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 2	#,
	call	wcalloc	#
	mov	r15, rax	# maxw,
	movzx	r14d, WORD PTR [rbx+148]	# maxx, MEM[(struct Container *)grid_23(D)].padx
	movzx	r13d, WORD PTR [rbx+150]	# maxy, MEM[(struct Container *)grid_23(D)].pady
	mov	r9d, r13d	# _y, maxy
	add	r9w, WORD PTR [rbx+58]	# _y, MEM[(struct Container *)grid_23(D)].widget.pos.y
	mov	r10d, 0	# y,
	mov	eax, 0	# item,
	cmp	WORD PTR [rbx+172], 0	# grid_23(D)->c_row,
	jne	.L83	#,
	jmp	.L56	#
.L58:
	movzx	ecx, dx	# D.8956, x
	mov	rax, QWORD PTR [rbx+160]	# grid_23(D)->items, grid_23(D)->items
	lea	rdi, [rcx+rcx*4]	# tmp320,
	mov	rax, QWORD PTR [rax+r8]	# *D.8954_46, *D.8954_46
	lea	rax, [rax+rdi*8]	# item,
	mov	rdi, QWORD PTR [rax]	# D.8958, item_50->widget
	test	rdi, rdi	# D.8958
	je	.L57	#,
	movzx	r11d, WORD PTR [rax+20]	# item_50->margin_top, item_50->margin_top
	add	r11w, WORD PTR [rdi+62]	# tmp323, D.8958_51->pos.h
	add	r11w, WORD PTR [rax+22]	# tmp326, item_50->margin_bottom
	cmp	si, r11w	# maxh, tmp326
	cmovb	esi, r11d	# maxh,, maxh, tmp326
	movzx	r11d, WORD PTR [rax+16]	# item_50->margin_left, item_50->margin_left
	add	r11w, WORD PTR [rdi+60]	# item_50->margin_left, D.8958_51->pos.w
	mov	edi, r11d	# tmp328, item_50->margin_left
	add	di, WORD PTR [rax+18]	# w, item_50->margin_right
	lea	rcx, [r15+rcx*2]	# D.8972,
	cmp	di, WORD PTR [rcx]	# w, *D.8972_67
	jbe	.L57	#,
	mov	WORD PTR [rcx], di	# *D.8972_67, w
.L57:
	add	edx, 1	# x,
	movzx	ecx, WORD PTR [rbx+174]	# D.8942, grid_23(D)->c_col
	cmp	cx, dx	# D.8942, x
	ja	.L58	#,
	test	cx, cx	# D.8942
	je	.L59	#,
	mov	edx, 0	# x,
	lea	r11d, [rsi+r9]	# D.8979,
	movzx	ebp, si	# maxh, maxh
.L63:
	mov	rdi, QWORD PTR [rbx+160]	# grid_23(D)->items, grid_23(D)->items
	movzx	eax, dx	# x, x
	lea	rcx, [rax+rax*4]	# tmp337,
	mov	rax, QWORD PTR [rdi+r8]	# *D.8954_78, *D.8954_78
	lea	rax, [rax+rcx*8]	# item,
	mov	WORD PTR [rax+10], r9w	# item_82->cell_rect.y, _y
	mov	WORD PTR [rax+14], si	# item_82->cell_rect.h, maxh
	mov	WORD PTR [rax+26], r11w	# item_82->maxy, D.8979
	mov	rcx, QWORD PTR [rax]	# D.8958, item_82->widget
	test	rcx, rcx	# D.8958
	je	.L60	#,
	mov	edi, DWORD PTR [rax+32]	# D.8982, item_82->valign
	cmp	edi, 1	# D.8982,
	jne	.L61	#,
	mov	edi, r9d	# tmp340, _y
	add	di, WORD PTR [rax+20]	# tmp340, item_82->margin_top
	mov	WORD PTR [rcx+58], di	# D.8958_87->pos.y, tmp340
	mov	rcx, QWORD PTR [rax]	# D.8958, item_82->widget
	movzx	edi, WORD PTR [rcx+58]	# D.8958_96->pos.y, D.8958_96->pos.y
	add	di, WORD PTR [rcx+62]	# tmp343, D.8958_96->pos.h
	mov	WORD PTR [rcx+114], di	# D.8958_96->maxy, tmp343
	jmp	.L60	#
.L61:
	cmp	edi, 2	# D.8982,
	jne	.L62	#,
	mov	edi, r11d	# tmp345, D.8979
	sub	di, WORD PTR [rax+22]	# tmp345, item_82->margin_bottom
	mov	WORD PTR [rcx+114], di	# D.8958_87->maxy, tmp345
	mov	rcx, QWORD PTR [rax]	# D.8958, item_82->widget
	movzx	edi, WORD PTR [rcx+114]	# D.8958_108->maxy, D.8958_108->maxy
	sub	di, WORD PTR [rcx+62]	# tmp347, D.8958_108->pos.h
	mov	WORD PTR [rcx+58], di	# D.8958_108->pos.y, tmp347
	jmp	.L60	#
.L62:
	movzx	edi, WORD PTR [rcx+62]	# D.8958_87->pos.h, D.8958_87->pos.h
	mov	r12d, ebp	#, maxh
	sub	r12d, edi	#, D.8958_87->pos.h
	mov	edi, r12d	# tmp351,
	sar	edi	# tmp352
	add	edi, r9d	# tmp353, _y
	mov	WORD PTR [rcx+58], di	# D.8958_87->pos.y, tmp353
	mov	rcx, QWORD PTR [rax]	# D.8958, item_82->widget
	movzx	edi, WORD PTR [rcx+58]	# D.8958_127->pos.y, D.8958_127->pos.y
	add	di, WORD PTR [rcx+62]	# tmp355, D.8958_127->pos.h
	mov	WORD PTR [rcx+114], di	# D.8958_127->maxy, tmp355
.L60:
	add	edx, 1	# x,
	cmp	WORD PTR [rbx+174], dx	# grid_23(D)->c_col, x
	ja	.L63	#,
.L59:
	test	rax, rax	# item
	je	.L64	#,
	movzx	r9d, WORD PTR [rax+26]	# _y, item_431->maxy
.L64:
	add	r10d, 1	# y,
	movzx	edx, WORD PTR [rbx+172]	# D.8940, grid_23(D)->c_row
	cmp	dx, r10w	# D.8940, y
	jbe	.L65	#,
.L83:
	cmp	WORD PTR [rbx+174], 0	# grid_23(D)->c_col,
	je	.L59	#,
	movzx	r8d, r10w	# y, y
	sal	r8, 3	# D.8953,
	mov	esi, 0	# maxh,
	mov	edx, 0	# x,
	jmp	.L58	#
.L65:
	test	dx, dx	# D.8940
	je	.L56	#,
	mov	WORD PTR [rsp+14], 0	# %sfp,
.L72:
	movzx	ebp, WORD PTR [rbx+56]	# MEM[(struct Container *)grid_23(D)].widget.pos.x, MEM[(struct Container *)grid_23(D)].widget.pos.x
	add	bp, WORD PTR [rbx+148]	# _x, MEM[(struct Container *)grid_23(D)].padx
	cmp	WORD PTR [rbx+174], 0	# grid_23(D)->c_col,
	je	.L66	#,
	movzx	eax, WORD PTR [rsp+14]	# y, %sfp
	sal	rax, 3	#,
	mov	QWORD PTR [rsp], rax	# %sfp,
	mov	r12d, 0	# x,
.L71:
	movzx	edx, r12w	# D.8956, x
	mov	rax, QWORD PTR [rbx+160]	# grid_23(D)->items, grid_23(D)->items
	lea	rcx, [rdx+rdx*4]	# tmp364,
	mov	rsi, QWORD PTR [rsp]	#, %sfp
	mov	rax, QWORD PTR [rax+rsi]	# *D.8954_147, *D.8954_147
	lea	rax, [rax+rcx*8]	# item,
	mov	WORD PTR [rax+8], bp	# item_151->cell_rect.x, _x
	lea	rdx, [r15+rdx*2]	# D.8972,
	movzx	ecx, WORD PTR [rdx]	# D.8973, *D.8972_155
	mov	WORD PTR [rax+12], cx	# item_151->cell_rect.w, D.8973
	add	bp, WORD PTR [rdx]	# maxx, *D.8972_155
	mov	WORD PTR [rax+24], bp	# item_151->maxx, maxx
	movzx	ecx, WORD PTR [rax+26]	# maxy, item_151->maxy
	cmp	r13w, cx	# maxy, maxy
	cmovb	r13d, ecx	# maxy,, maxy, maxy
	cmp	r14w, bp	# maxx, maxx
	cmovb	r14d, ebp	# maxx,, maxx, maxx
	mov	rcx, QWORD PTR [rax]	# D.8958, item_151->widget
	test	rcx, rcx	# D.8958
	je	.L67	#,
	mov	BYTE PTR [rcx+128], 0	# D.8958_169->draggable,
	mov	ecx, DWORD PTR [rax+28]	# D.9023, item_151->halign
	cmp	ecx, 4	# D.9023,
	jne	.L68	#,
	mov	rdx, QWORD PTR [rax]	# D.8958, item_151->widget
	movzx	ecx, WORD PTR [rax+8]	# item_151->cell_rect.x, item_151->cell_rect.x
	add	cx, WORD PTR [rax+16]	# tmp370, item_151->margin_left
	mov	WORD PTR [rdx+56], cx	# D.8958_172->pos.x, tmp370
	mov	rdx, QWORD PTR [rax]	# D.8958, item_151->widget
	movzx	ecx, WORD PTR [rdx+56]	# D.8958_179->pos.x, D.8958_179->pos.x
	add	cx, WORD PTR [rdx+60]	# tmp373, D.8958_179->pos.w
	mov	WORD PTR [rdx+112], cx	# D.8958_179->maxx, tmp373
	jmp	.L69	#
.L68:
	cmp	ecx, 5	# D.9023,
	jne	.L70	#,
	mov	rdx, QWORD PTR [rax]	# D.8958, item_151->widget
	movzx	ecx, WORD PTR [rax+24]	# item_151->maxx, item_151->maxx
	sub	cx, WORD PTR [rax+18]	# tmp376, item_151->margin_right
	mov	WORD PTR [rdx+112], cx	# D.8958_186->maxx, tmp376
	mov	rdx, QWORD PTR [rax]	# D.8958, item_151->widget
	movzx	ecx, WORD PTR [rdx+112]	# D.8958_191->maxx, D.8958_191->maxx
	sub	cx, WORD PTR [rdx+60]	# tmp379, D.8958_191->pos.w
	mov	WORD PTR [rdx+56], cx	# D.8958_191->pos.x, tmp379
	jmp	.L69	#
.L70:
	mov	rcx, QWORD PTR [rax]	# D.8958, item_151->widget
	movzx	edx, WORD PTR [rdx]	# *D.8972_155, *D.8972_155
	movzx	esi, WORD PTR [rcx+60]	# D.8958_205->pos.w, D.8958_205->pos.w
	sub	edx, esi	# tmp383, D.8958_205->pos.w
	sar	edx	# tmp384
	add	dx, WORD PTR [rax+8]	# tmp385, item_151->cell_rect.x
	mov	WORD PTR [rcx+56], dx	# D.8958_205->pos.x, tmp385
	mov	rdx, QWORD PTR [rax]	# D.8958, item_151->widget
	movzx	ecx, WORD PTR [rdx+56]	# D.8958_214->pos.x, D.8958_214->pos.x
	add	cx, WORD PTR [rdx+60]	# tmp388, D.8958_214->pos.w
	mov	WORD PTR [rdx+112], cx	# D.8958_214->maxx, tmp388
.L69:
	mov	rdi, QWORD PTR [rax]	# D.8958, item_151->widget
	cmp	DWORD PTR [rdi+124], 9	# D.8958_220->type,
	jne	.L67	#,
	call	Container_refresh	#
.L67:
	add	r12d, 1	# x,
	cmp	WORD PTR [rbx+174], r12w	# grid_23(D)->c_col, x
	ja	.L71	#,
.L66:
	add	WORD PTR [rsp+14], 1	# %sfp,
	movzx	r12d, WORD PTR [rsp+14]	#, %sfp
	cmp	WORD PTR [rbx+172], r12w	# grid_23(D)->c_row,
	ja	.L72	#,
.L56:
	mov	edx, 309	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r15	#, maxw
	call	wfree	#
	add	r14w, WORD PTR [rbx+148]	# D.9050, MEM[(struct Container *)grid_23(D)].padx
	mov	WORD PTR [rbx+112], r14w	# MEM[(struct Widget *)grid_23(D)].maxx, D.9050
	add	r13w, WORD PTR [rbx+150]	# D.9051, MEM[(struct Container *)grid_23(D)].pady
	mov	WORD PTR [rbx+114], r13w	# MEM[(struct Widget *)grid_23(D)].maxy, D.9051
	sub	r14w, WORD PTR [rbx+56]	# tmp392, MEM[(struct Widget *)grid_23(D)].pos.x
	mov	WORD PTR [rbx+60], r14w	# MEM[(struct Widget *)grid_23(D)].pos.w, tmp392
	sub	r13w, WORD PTR [rbx+58]	# tmp393, MEM[(struct Widget *)grid_23(D)].pos.y
	mov	WORD PTR [rbx+62], r13w	# MEM[(struct Widget *)grid_23(D)].pos.h, tmp393
	mov	rdi, rbx	#, grid
	call	Container_createSurfaceIfNeeded	#
	cmp	BYTE PTR [rbx+180], 0	# grid_23(D)->showBorder,
	je	.L51	#,
	movzx	r14d, WORD PTR [rbx+150]	# D.8949, MEM[(struct Container *)grid_23(D)].pady
	movzx	r12d, WORD PTR [rbx+56]	# w, MEM[(struct Widget *)grid_23(D)].pos.x
	movzx	r13d, WORD PTR [rbx+62]	# tmp396, MEM[(struct Widget *)grid_23(D)].pos.h
	sub	r13d, r14d	# tmp396, D.8949
	movsx	r13d, r13w	# D.9067, tmp396
	movsx	r14d, r14w	# D.9069, D.8949
	mov	rdx, QWORD PTR [rbx+160]	# grid_23(D)->items, grid_23(D)->items
	movzx	eax, WORD PTR [rbx+174]	# grid_23(D)->c_col, grid_23(D)->c_col
	lea	rax, [rax-5+rax*4]	# tmp404,
	sal	rax, 3	# tmp405,
	add	rax, QWORD PTR [rdx]	# tmp406, *D.8944_252
	movzx	esi, WORD PTR [rax+24]	# D.9074_258->maxx, D.9074_258->maxx
	sub	esi, r12d	# tmp407, w
	movsx	esi, si	# tmp409, tmp407
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)grid_23(D)].surf, MEM[(struct Widget *)grid_23(D)].surf
	mov	r8d, DWORD PTR [rbx+176]	#, grid_23(D)->bord_color
	mov	ecx, r13d	#, D.9067
	mov	edx, r14d	#, D.9069
	call	vlineColor	#
	cmp	WORD PTR [rbx+174], 0	# grid_23(D)->c_col,
	je	.L73	#,
	mov	ebp, 0	# x,
.L74:
	mov	rdx, QWORD PTR [rbx+160]	# grid_23(D)->items, grid_23(D)->items
	movzx	eax, bp	# x, x
	lea	rax, [rax+rax*4]	# tmp417,
	sal	rax, 3	# tmp418,
	add	rax, QWORD PTR [rdx]	# tmp419, *D.8944_271
	movzx	esi, WORD PTR [rax+8]	# D.9080_275->cell_rect.x, D.9080_275->cell_rect.x
	sub	esi, r12d	# tmp420, w
	movsx	esi, si	# tmp422, tmp420
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)grid_23(D)].surf, MEM[(struct Widget *)grid_23(D)].surf
	mov	r8d, DWORD PTR [rbx+176]	#, grid_23(D)->bord_color
	mov	ecx, r13d	#, D.9067
	mov	edx, r14d	#, D.9069
	call	vlineColor	#
	add	ebp, 1	# x,
	cmp	WORD PTR [rbx+174], bp	# grid_23(D)->c_col, x
	ja	.L74	#,
.L73:
	movzx	r12d, WORD PTR [rbx+58]	# h, MEM[(struct Widget *)grid_23(D)].pos.y
	movzx	r14d, WORD PTR [rbx+148]	# D.9009, MEM[(struct Container *)grid_23(D)].padx
	movzx	r13d, WORD PTR [rbx+60]	# tmp426, MEM[(struct Widget *)grid_23(D)].pos.w
	sub	r13d, r14d	# tmp426, D.9009
	movsx	r13d, r13w	# D.9098, tmp426
	movsx	r14d, r14w	# D.9100, D.9009
	movzx	edx, WORD PTR [rbx+172]	# grid_23(D)->c_row, grid_23(D)->c_row
	mov	rax, QWORD PTR [rbx+160]	# grid_23(D)->items, grid_23(D)->items
	mov	rax, QWORD PTR [rax-8+rdx*8]	# *D.9091_297, *D.9091_297
	movzx	ecx, WORD PTR [rax+26]	# D.9092_298->maxy, D.9092_298->maxy
	sub	ecx, r12d	# tmp432, h
	movsx	ecx, cx	# tmp434, tmp432
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)grid_23(D)].surf, MEM[(struct Widget *)grid_23(D)].surf
	mov	r8d, DWORD PTR [rbx+176]	#, grid_23(D)->bord_color
	mov	edx, r13d	#, D.9098
	mov	esi, r14d	#, D.9100
	call	hlineColor	#
	cmp	WORD PTR [rbx+172], 0	# grid_23(D)->c_row,
	je	.L51	#,
	mov	ebp, 0	# y,
.L75:
	movzx	edx, bp	# y, y
	mov	rax, QWORD PTR [rbx+160]	# grid_23(D)->items, grid_23(D)->items
	mov	rax, QWORD PTR [rax+rdx*8]	# *D.8954_314, *D.8954_314
	movzx	ecx, WORD PTR [rax+10]	# D.8955_315->cell_rect.y, D.8955_315->cell_rect.y
	sub	ecx, r12d	# tmp440, h
	movsx	ecx, cx	# tmp442, tmp440
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)grid_23(D)].surf, MEM[(struct Widget *)grid_23(D)].surf
	mov	r8d, DWORD PTR [rbx+176]	#, grid_23(D)->bord_color
	mov	edx, r13d	#, D.9098
	mov	esi, r14d	#, D.9100
	call	hlineColor	#
	add	ebp, 1	# y,
	cmp	WORD PTR [rbx+172], bp	# grid_23(D)->c_row, y
	ja	.L75	#,
.L51:
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
.LFE101:
	.size	Grid_refresh, .-Grid_refresh
	.globl	Grid_draw
	.type	Grid_draw, @function
Grid_draw:
.LFB102:
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
	mov	r12, rdi	# grid, grid
	mov	QWORD PTR [rsp], rsi	# %sfp, screen
	mov	BYTE PTR [rsp+15], dl	# %sfp, flip
	mov	r15, QWORD PTR [rsi+80]	# sscreen, screen_3(D)->screen
	cmp	BYTE PTR [rdi+130], 0	# MEM[(struct Widget *)grid_5(D)].visible,
	je	.L86	#,
	lea	rcx, [rdi+56]	# tmp91,
	mov	rdi, QWORD PTR [rdi+48]	# MEM[(struct Widget *)grid_5(D)].surf, MEM[(struct Widget *)grid_5(D)].surf
	mov	rdx, r15	#, sscreen
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	BYTE PTR [r12+132], 0	# MEM[(struct Widget *)grid_5(D)].need_reload,
.L86:
	mov	r14d, 0	# y,
	movzx	eax, BYTE PTR [rsp+15]	#, %sfp
	mov	DWORD PTR [rsp+8], eax	# %sfp,
	cmp	WORD PTR [r12+172], 0	# grid_5(D)->c_row,
	jne	.L96	#,
	jmp	.L88	#
.L91:
	mov	rdx, QWORD PTR [r12+160]	# grid_5(D)->items, grid_5(D)->items
	movzx	eax, bp	# x, x
	lea	rax, [rax+rax*4]	# tmp98,
	sal	rax, 3	# tmp99,
	add	rax, QWORD PTR [rdx+r13]	# tmp100, *D.8920_17
	mov	rbx, QWORD PTR [rax]	# widget, D.8924_21->widget
	test	rbx, rbx	# widget
	je	.L89	#,
	cmp	BYTE PTR [rbx+130], 0	# widget_22->visible,
	je	.L89	#,
	cmp	DWORD PTR [rbx+124], 9	# widget_22->type,
	jne	.L90	#,
	mov	edx, DWORD PTR [rsp+8]	#, %sfp
	mov	rsi, QWORD PTR [rsp]	#, %sfp
	mov	rdi, rbx	#, widget
	call	Container_draw	#
	jmp	.L89	#
.L90:
	lea	rcx, [rbx+56]	# tmp102,
	mov	rdi, QWORD PTR [rbx+48]	# widget_22->surf, widget_22->surf
	mov	rdx, r15	#, sscreen
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	BYTE PTR [rbx+132], 0	# widget_22->need_reload,
.L89:
	add	ebp, 1	# x,
	cmp	WORD PTR [r12+174], bp	# grid_5(D)->c_col, x
	ja	.L91	#,
.L92:
	add	r14d, 1	# y,
	cmp	WORD PTR [r12+172], r14w	# grid_5(D)->c_row, y
	jbe	.L88	#,
.L96:
	cmp	WORD PTR [r12+174], 0	# grid_5(D)->c_col,
	je	.L92	#,
	movzx	r13d, r14w	# y, y
	sal	r13, 3	# D.8919,
	mov	ebp, 0	# x,
	jmp	.L91	#
.L88:
	cmp	BYTE PTR [rsp+15], 0	# %sfp,
	je	.L85	#,
	mov	rdi, r15	#, sscreen
	call	SDL_Flip	#
.L85:
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
.LFE102:
	.size	Grid_draw, .-Grid_draw
	.globl	Grid_mevent
	.type	Grid_mevent, @function
Grid_mevent:
.LFB103:
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
	mov	rbp, rdi	# grid, grid
	mov	r12, rsi	# screen, screen
	mov	r14d, 0	# y,
	cmp	WORD PTR [rdi+172], 0	# grid_4(D)->c_row,
	jne	.L109	#,
	jmp	.L100	#
.L105:
	mov	rdx, QWORD PTR [rbp+160]	# grid_4(D)->items, grid_4(D)->items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp90,
	sal	rax, 3	# tmp91,
	add	rax, QWORD PTR [rdx+r13]	# tmp92, *D.8891_11
	mov	rdi, QWORD PTR [rax]	# widget, D.8895_15->widget
	test	rdi, rdi	# widget
	je	.L101	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_16->type,
	jne	.L102	#,
	mov	rsi, r12	#, screen
	call	Container_mevent	#
	jmp	.L103	#
.L102:
	mov	rsi, r12	#, screen
	call	Widget_mevent	#
.L103:
	cmp	BYTE PTR [r12+129], 0	# screen_18(D)->event_handled,
	jne	.L98	#,
.L101:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+174], bx	# grid_4(D)->c_col, x
	ja	.L105	#,
.L106:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+172], r14w	# grid_4(D)->c_row, y
	jbe	.L100	#,
.L109:
	cmp	WORD PTR [rbp+174], 0	# grid_4(D)->c_col,
	je	.L106	#,
	movzx	r13d, r14w	# y, y
	sal	r13, 3	# D.8890,
	mov	ebx, 0	# x,
	jmp	.L105	#
.L100:
	test	DWORD PTR [rbp+128], -16776961	#,
	je	.L98	#,
	mov	rsi, r12	#, screen
	mov	rdi, rbp	#, grid
	call	Widget_mevent	#
.L98:
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
.LFE103:
	.size	Grid_mevent, .-Grid_mevent
	.globl	Grid_setVisible
	.type	Grid_setVisible, @function
Grid_setVisible:
.LFB104:
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
	mov	rbp, rdi	# grid, grid
	mov	r13d, esi	# vis, vis
	mov	BYTE PTR [rdi+130], sil	# grid_3(D)->container.widget.visible, vis
	mov	r14d, 0	# y,
	movzx	r15d, sil	# vis, vis
	cmp	WORD PTR [rdi+172], 0	# grid_3(D)->c_row,
	jne	.L120	#,
	jmp	.L111	#
.L116:
	mov	rdx, QWORD PTR [rbp+160]	# grid_3(D)->items, grid_3(D)->items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp88,
	sal	rax, 3	# tmp89,
	add	rax, QWORD PTR [rdx+r12]	# tmp90, *D.8874_12
	mov	rdi, QWORD PTR [rax]	# widget, D.8878_16->widget
	test	rdi, rdi	# widget
	je	.L114	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_17->type,
	jne	.L115	#,
	mov	esi, r15d	#, vis
	call	Container_setVisible	#
	jmp	.L114	#
.L115:
	mov	BYTE PTR [rdi+130], r13b	# widget_17->visible, vis
.L114:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+174], bx	# grid_3(D)->c_col, x
	ja	.L116	#,
.L117:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+172], r14w	# grid_3(D)->c_row, y
	jbe	.L111	#,
.L120:
	cmp	WORD PTR [rbp+174], 0	# grid_3(D)->c_col,
	je	.L117	#,
	movzx	r12d, r14w	# y, y
	sal	r12, 3	# D.8873,
	mov	ebx, 0	# x,
	jmp	.L116	#
.L111:
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
.LFE104:
	.size	Grid_setVisible, .-Grid_setVisible
	.section	.rodata.str1.1
.LC5:
	.string	"grid=NULL"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"GRID(%s): c_row=%hu, c_col=%hu"
	.text
	.globl	Grid_toString
	.type	Grid_toString, @function
Grid_toString:
.LFB105:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC5	# D.8861,
	test	rdi, rdi	# grid
	je	.L127	#,
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movzx	ebp, WORD PTR [rdi+174]	# D.8863, grid_2(D)->c_col
	movzx	ebx, WORD PTR [rdi+172]	# D.8865, grid_2(D)->c_row
	call	Object_getType	#
	mov	r9, rax	# D.8866,
	mov	DWORD PTR [rsp+8], ebp	#, D.8863
	mov	DWORD PTR [rsp], ebx	#, D.8865
	mov	r8d, OFFSET FLAT:.LC6	#,
	mov	ecx, 64	#,
	mov	edx, 1	#,
	mov	esi, 64	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.8861,
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L127:
	rep
	ret
	.cfi_endproc
.LFE105:
	.size	Grid_toString, .-Grid_toString
	.local	str_id
	.comm	str_id,64,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
