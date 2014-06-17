	.file	"StackListX.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT StackListX.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/StackListX.asm
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
	.string	"StackListX_refresh:StackListX > No items, setting itself visible to false\n"
	.align 8
.LC1:
	.string	"StackListX_refresh (DEBUG FATAL) pos.x=%hu maxx=%hu w=%hu && w > maxx\n"
	.text
	.globl	StackListX_refresh
	.type	StackListX_refresh, @function
StackListX_refresh:
.LFB93:
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
	mov	rbx, rdi	# stacklist, stacklist
	mov	edx, DWORD PTR [rdi+172]	# D.8669, stacklist_5(D)->count
	test	edx, edx	# D.8669
	jne	.L2	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 74	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)stacklist_5(D)].visible,
	jmp	.L1	#
.L2:
	mov	rax, QWORD PTR [rdi+160]	# ivtmp.14, stacklist_5(D)->items
	sub	edx, 1	# tmp164,
	lea	rsi, [rdx+rdx*4]	# tmp167,
	sal	rsi, 3	# tmp168,
	lea	rcx, [rax+40+rsi]	# D.8782,
	mov	ebp, 0	# maxh,
.L4:
	movzx	edx, WORD PTR [rax+14]	# MEM[base: D.8776_116, offset: 14B], MEM[base: D.8776_116, offset: 14B]
	cmp	bp, dx	# maxh, MEM[base: D.8776_116, offset: 14B]
	cmovb	ebp, edx	# maxh,, maxh, MEM[base: D.8776_116, offset: 14B]
	add	rax, 40	# ivtmp.14,
	cmp	rax, rcx	# ivtmp.14, D.8782
	jne	.L4	#,
	movzx	eax, WORD PTR [rbx+150]	# MEM[(struct Container *)stacklist_5(D)].pady, MEM[(struct Container *)stacklist_5(D)].pady
	lea	eax, [rbp+0+rax*2]	# D.8681,
	mov	WORD PTR [rbx+62], ax	# MEM[(struct Widget *)stacklist_5(D)].pos.h, D.8681
	add	ax, WORD PTR [rbx+58]	# tmp173, MEM[(struct Widget *)stacklist_5(D)].pos.y
	mov	WORD PTR [rbx+114], ax	# MEM[(struct Widget *)stacklist_5(D)].maxy, tmp173
	mov	rax, QWORD PTR [rbx+160]	# stacklist_5(D)->items, stacklist_5(D)->items
	movzx	r8d, WORD PTR [rbx+148]	# MEM[(struct Container *)stacklist_5(D)].padx, MEM[(struct Container *)stacklist_5(D)].padx
	add	r8w, WORD PTR [rax+24+rsi]	# D.8692, D.8689_32->maxx
	mov	WORD PTR [rbx+112], r8w	# MEM[(struct Widget *)stacklist_5(D)].maxx, D.8692
	movzx	ecx, WORD PTR [rbx+56]	# D.8694, MEM[(struct Widget *)stacklist_5(D)].pos.x
	mov	r9d, r8d	# D.8696, D.8692
	sub	r9d, ecx	# D.8696, D.8694
	mov	WORD PTR [rbx+60], r9w	# MEM[(struct Widget *)stacklist_5(D)].pos.w, D.8696
	cmp	r8w, r9w	# D.8692, D.8696
	jb	.L5	#,
	mov	r12d, 0	# i,
	movzx	r13d, bp	# maxh, maxh
	cmp	DWORD PTR [rbx+172], 0	# stacklist_5(D)->count,
	jne	.L14	#,
	jmp	.L7	#
.L5:
	movsx	ecx, cx	# D.8694, D.8694
	movzx	r9d, r9w	#, D.8696
	movzx	r8d, r8w	#, D.8692
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)stacklist_5(D)].visible,
	jmp	.L1	#
.L14:
	mov	eax, r12d	# i, i
	lea	rdx, [rax+rax*4]	# tmp184,
	mov	rax, QWORD PTR [rbx+160]	# stacklist_5(D)->items, stacklist_5(D)->items
	lea	rax, [rax+rdx*8]	# item,
	movzx	edx, WORD PTR [rax+14]	# D.8703, item_54->cell_rect.h
	cmp	dx, bp	# D.8703, maxh
	jne	.L8	#,
	movzx	edx, WORD PTR [rbx+58]	# MEM[(struct Widget *)stacklist_5(D)].pos.y, MEM[(struct Widget *)stacklist_5(D)].pos.y
	add	dx, WORD PTR [rbx+150]	# D.8707, MEM[(struct Container *)stacklist_5(D)].pady
	mov	WORD PTR [rax+10], dx	# item_54->cell_rect.y, D.8707
	add	edx, ebp	# tmp189, maxh
	mov	WORD PTR [rax+26], dx	# item_54->maxy, tmp189
	jmp	.L9	#
.L8:
	mov	ecx, DWORD PTR [rax+32]	# D.8713, item_54->valign
	cmp	ecx, 1	# D.8713,
	jne	.L10	#,
	movzx	ecx, WORD PTR [rbx+58]	# MEM[(struct Widget *)stacklist_5(D)].pos.y, MEM[(struct Widget *)stacklist_5(D)].pos.y
	add	cx, WORD PTR [rbx+150]	# D.8707, MEM[(struct Container *)stacklist_5(D)].pady
	mov	WORD PTR [rax+10], cx	# item_54->cell_rect.y, D.8707
	add	edx, ecx	# tmp192, D.8707
	mov	WORD PTR [rax+26], dx	# item_54->maxy, tmp192
	jmp	.L9	#
.L10:
	cmp	ecx, 2	# D.8713,
	jne	.L11	#,
	movzx	ecx, WORD PTR [rbx+114]	# MEM[(struct Widget *)stacklist_5(D)].maxy, MEM[(struct Widget *)stacklist_5(D)].maxy
	sub	cx, WORD PTR [rbx+150]	# tmp193, MEM[(struct Container *)stacklist_5(D)].pady
	sub	cx, WORD PTR [rax+22]	# D.8722, item_54->margin_bottom
	mov	WORD PTR [rax+26], cx	# item_54->maxy, D.8722
	sub	ecx, edx	# tmp196, D.8703
	mov	WORD PTR [rax+10], cx	# item_54->cell_rect.y, tmp196
	jmp	.L9	#
.L11:
	movzx	esi, WORD PTR [rbx+58]	# MEM[(struct Widget *)stacklist_5(D)].pos.y, MEM[(struct Widget *)stacklist_5(D)].pos.y
	add	si, WORD PTR [rbx+150]	# tmp197, MEM[(struct Container *)stacklist_5(D)].pady
	movzx	ecx, dx	# D.8703, D.8703
	mov	edi, r13d	#, maxh
	sub	edi, ecx	#, D.8703
	mov	ecx, edi	# tmp202,
	sar	ecx	# tmp203
	add	ecx, esi	# D.8732, tmp197
	mov	WORD PTR [rax+10], cx	# item_54->cell_rect.y, D.8732
	add	edx, ecx	# tmp204, D.8732
	mov	WORD PTR [rax+26], dx	# item_54->maxy, tmp204
.L9:
	mov	rdx, QWORD PTR [rax]	# D.8734, item_54->widget
	movzx	ecx, WORD PTR [rax+10]	# item_54->cell_rect.y, item_54->cell_rect.y
	add	cx, WORD PTR [rax+20]	# tmp206, item_54->margin_top
	mov	WORD PTR [rdx+58], cx	# D.8734_101->pos.y, tmp206
	mov	rdx, QWORD PTR [rax]	# D.8734, item_54->widget
	movzx	ecx, WORD PTR [rdx+58]	# D.8734_108->pos.y, D.8734_108->pos.y
	add	cx, WORD PTR [rdx+62]	# tmp209, D.8734_108->pos.h
	mov	WORD PTR [rdx+114], cx	# D.8734_108->maxy, tmp209
	mov	rdi, QWORD PTR [rax]	# D.8734, item_54->widget
	cmp	DWORD PTR [rdi+124], 9	# D.8734_114->type,
	jne	.L12	#,
	call	Container_refresh	#
.L12:
	add	r12d, 1	# i,
	cmp	DWORD PTR [rbx+172], r12d	# stacklist_5(D)->count, i
	ja	.L14	#,
.L7:
	mov	rdi, rbx	#, stacklist
	call	Container_createSurfaceIfNeeded	#
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
.LFE93:
	.size	StackListX_refresh, .-StackListX_refresh
	.globl	StackListX_validateItem
	.type	StackListX_validateItem, @function
StackListX_validateItem:
.LFB94:
	.cfi_startproc
	mov	rdx, QWORD PTR [rdi+160]	# D.8639, stacklist_1(D)->items
	mov	eax, esi	# index, index
	lea	rax, [rax+rax*4]	# tmp92,
	lea	rax, [rdx+rax*8]	# item,
	test	esi, esi	# index
	jne	.L19	#,
	movzx	edx, WORD PTR [rdi+56]	# MEM[(struct Widget *)stacklist_1(D)].pos.x, MEM[(struct Widget *)stacklist_1(D)].pos.x
	add	dx, WORD PTR [rdi+148]	# tmp95, stacklist_1(D)->container.padx
	mov	WORD PTR [rax+8], dx	# item_6->cell_rect.x, tmp95
	jmp	.L20	#
.L19:
	sub	esi, 1	# tmp98,
	lea	rcx, [rsi+rsi*4]	# tmp101,
	movzx	edx, WORD PTR [rdx+24+rcx*8]	# D.8653_16->maxx, D.8653_16->maxx
	mov	WORD PTR [rax+8], dx	# item_6->cell_rect.x, D.8653_16->maxx
.L20:
	movzx	edx, WORD PTR [rax+8]	# D.8657, item_6->cell_rect.x
	mov	ecx, edx	# tmp105, D.8657
	add	cx, WORD PTR [rax+12]	# tmp105, item_6->cell_rect.w
	mov	WORD PTR [rax+24], cx	# item_6->maxx, tmp105
	mov	rcx, QWORD PTR [rax]	# D.8660, item_6->widget
	add	dx, WORD PTR [rax+16]	# tmp107, item_6->margin_left
	mov	WORD PTR [rcx+56], dx	# D.8660_23->pos.x, tmp107
	mov	rax, QWORD PTR [rax]	# D.8660, item_6->widget
	movzx	edx, WORD PTR [rax+56]	# D.8660_30->pos.x, D.8660_30->pos.x
	add	dx, WORD PTR [rax+60]	# tmp110, D.8660_30->pos.w
	mov	WORD PTR [rax+112], dx	# D.8660_30->maxx, tmp110
	ret
	.cfi_endproc
.LFE94:
	.size	StackListX_validateItem, .-StackListX_validateItem
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
