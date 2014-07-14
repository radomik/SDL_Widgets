	.file	"StackListX.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT StackListX.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/StackListX.asm
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
	.string	"StackListX_refresh: No items, setting itself visible to false\n"
	.align 8
.LC1:
	.string	"StackListX_refresh: (DEBUG FATAL) pos.x=%hu maxx=%hu w=%hu && w > maxx+1\n"
	.align 8
.LC2:
	.string	"\t\tAdditional info:\n\t\tlast widget in stacklist:\n\t%s\n\t(padx,pady)=(%hu,%hu)\n"
	.text
	.globl	StackListX_refresh
	.type	StackListX_refresh, @function
StackListX_refresh:
.LFB103:
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
	mov	rbx, rdi	# this, this
	cmp	DWORD PTR [rdi+188], 0	# this_2(D)->count,
	jne	.L2	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 62	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)this_2(D)].visible,
	jmp	.L1	#
.L2:
	call	StackList_validateAllItemsOnBaseAxis	#
	mov	r12d, eax	# maxh,
	movzx	eax, WORD PTR [rbx+174]	# MEM[(struct Container *)this_2(D)].pady, MEM[(struct Container *)this_2(D)].pady
	lea	eax, [r12+rax*2]	# D.9216,
	mov	WORD PTR [rbx+102], ax	# MEM[(struct Widget *)this_2(D)].pos.h, D.9216
	movzx	edx, WORD PTR [rbx+98]	# MEM[(struct Widget *)this_2(D)].pos.y, MEM[(struct Widget *)this_2(D)].pos.y
	lea	eax, [rax-1+rdx]	# tmp162,
	mov	WORD PTR [rbx+146], ax	# MEM[(struct Widget *)this_2(D)].maxy, tmp162
	mov	eax, DWORD PTR [rbx+188]	# this_2(D)->count, this_2(D)->count
	sub	eax, 1	# tmp165,
	lea	rax, [rax+rax*4]	# tmp169,
	sal	rax, 3	# tmp170,
	add	rax, QWORD PTR [rbx+176]	# tmp171, this_2(D)->items
	movzx	r8d, WORD PTR [rbx+172]	# MEM[(struct Container *)this_2(D)].padx, MEM[(struct Container *)this_2(D)].padx
	add	r8w, WORD PTR [rax+24]	# D.9229, D.9226_22->maxx
	mov	WORD PTR [rbx+144], r8w	# MEM[(struct Widget *)this_2(D)].maxx, D.9229
	movzx	ecx, WORD PTR [rbx+96]	# D.9231, MEM[(struct Widget *)this_2(D)].pos.x
	lea	r9d, [r8+1]	# tmp174,
	sub	r9d, ecx	# D.9234, D.9231
	mov	WORD PTR [rbx+100], r9w	# MEM[(struct Widget *)this_2(D)].pos.w, D.9234
	movzx	r9d, r9w	# D.9236, D.9234
	movzx	r8d, r8w	# D.9237, D.9229
	lea	eax, [r8+1]	# tmp175,
	cmp	r9d, eax	# D.9236, tmp175
	jg	.L4	#,
	mov	ebp, 0	# i,
	movzx	r13d, r12w	# maxh, maxh
	cmp	DWORD PTR [rbx+188], 0	# this_2(D)->count,
	jne	.L13	#,
	jmp	.L6	#
.L4:
	movsx	ecx, cx	# D.9231, D.9231
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	r12d, WORD PTR [rbx+174]	# D.9242, MEM[(struct Container *)this_2(D)].pady
	movzx	ebp, WORD PTR [rbx+172]	# D.9243, MEM[(struct Container *)this_2(D)].padx
	mov	rdi, rbx	#, this
	call	StackList_lastWidgetToString	#
	mov	r9d, r12d	#, D.9242
	mov	r8d, ebp	#, D.9243
	mov	rcx, rax	#, D.9244
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)this_2(D)].visible,
	jmp	.L1	#
.L13:
	mov	eax, ebp	# i, i
	lea	rdx, [rax+rax*4]	# tmp180,
	mov	rax, QWORD PTR [rbx+176]	# this_2(D)->items, this_2(D)->items
	lea	rdx, [rax+rdx*8]	# item,
	movzx	eax, WORD PTR [rdx+14]	# D.9247, item_54->cell_rect.h
	cmp	ax, r12w	# D.9247, maxh
	jne	.L7	#,
	movzx	eax, WORD PTR [rbx+98]	# MEM[(struct Widget *)this_2(D)].pos.y, MEM[(struct Widget *)this_2(D)].pos.y
	add	ax, WORD PTR [rbx+174]	# D.9251, MEM[(struct Container *)this_2(D)].pady
	mov	WORD PTR [rdx+10], ax	# item_54->cell_rect.y, D.9251
	lea	eax, [r12-1+rax]	# tmp186,
	mov	WORD PTR [rdx+26], ax	# item_54->maxy, tmp186
	jmp	.L8	#
.L7:
	mov	ecx, DWORD PTR [rdx+32]	# D.9258, item_54->valign
	cmp	ecx, 1	# D.9258,
	jne	.L9	#,
	movzx	ecx, WORD PTR [rbx+98]	# MEM[(struct Widget *)this_2(D)].pos.y, MEM[(struct Widget *)this_2(D)].pos.y
	add	cx, WORD PTR [rbx+174]	# D.9251, MEM[(struct Container *)this_2(D)].pady
	mov	WORD PTR [rdx+10], cx	# item_54->cell_rect.y, D.9251
	lea	eax, [rax-1+rcx]	# tmp190,
	mov	WORD PTR [rdx+26], ax	# item_54->maxy, tmp190
	jmp	.L8	#
.L9:
	cmp	ecx, 2	# D.9258,
	jne	.L10	#,
	movzx	ecx, WORD PTR [rbx+146]	# MEM[(struct Widget *)this_2(D)].maxy, MEM[(struct Widget *)this_2(D)].maxy
	sub	cx, WORD PTR [rbx+174]	# tmp191, MEM[(struct Container *)this_2(D)].pady
	sub	cx, WORD PTR [rdx+22]	# D.9267, item_54->margin_bottom
	mov	WORD PTR [rdx+26], cx	# item_54->maxy, D.9267
	sub	ecx, eax	# tmp194, D.9247
	mov	WORD PTR [rdx+10], cx	# item_54->cell_rect.y, tmp194
	jmp	.L8	#
.L10:
	movzx	esi, WORD PTR [rbx+98]	# MEM[(struct Widget *)this_2(D)].pos.y, MEM[(struct Widget *)this_2(D)].pos.y
	add	si, WORD PTR [rbx+174]	# tmp195, MEM[(struct Container *)this_2(D)].pady
	movzx	ecx, ax	# D.9247, D.9247
	mov	edi, r13d	#, maxh
	sub	edi, ecx	#, D.9247
	mov	ecx, edi	# tmp200,
	sar	ecx	# tmp201
	add	ecx, esi	# D.9277, tmp195
	mov	WORD PTR [rdx+10], cx	# item_54->cell_rect.y, D.9277
	lea	eax, [rax-1+rcx]	# tmp203,
	mov	WORD PTR [rdx+26], ax	# item_54->maxy, tmp203
.L8:
	mov	rax, QWORD PTR [rdx]	# D.9279, item_54->widget
	movzx	ecx, WORD PTR [rdx+10]	# item_54->cell_rect.y, item_54->cell_rect.y
	add	cx, WORD PTR [rdx+20]	# tmp205, item_54->margin_top
	mov	WORD PTR [rax+98], cx	# D.9279_104->pos.y, tmp205
	mov	rcx, QWORD PTR [rdx]	# D.9279, item_54->widget
	movzx	esi, WORD PTR [rcx+102]	# D.9279_111->pos.h, D.9279_111->pos.h
	movzx	eax, WORD PTR [rcx+98]	# D.9279_111->pos.y, D.9279_111->pos.y
	lea	eax, [rsi-1+rax]	# tmp209,
	mov	WORD PTR [rcx+146], ax	# D.9279_111->maxy, tmp209
	mov	rdi, QWORD PTR [rdx]	# D.9279, item_54->widget
	cmp	BYTE PTR [rdi+165], 0	# D.9279_118->is_container,
	je	.L11	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)D.9279_118].class, MEM[(struct coObject *)D.9279_118].class
	mov	rax, QWORD PTR [rax+16]	# D.9292_121->vtable, D.9292_121->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9293_122 + 8B], MEM[(const void * *)D.9293_122 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9295_124].refresh
.L11:
	add	ebp, 1	# i,
	cmp	DWORD PTR [rbx+188], ebp	# this_2(D)->count, i
	ja	.L13	#,
.L6:
	mov	rdi, rbx	#, this
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
.LFE103:
	.size	StackListX_refresh, .-StackListX_refresh
	.globl	StackListX_validateItemOnBaseAxis
	.type	StackListX_validateItemOnBaseAxis, @function
StackListX_validateItemOnBaseAxis:
.LFB104:
	.cfi_startproc
	test	edx, edx	# index
	jne	.L17	#,
	movzx	eax, WORD PTR [rdi+96]	# MEM[(struct Widget *)this_2(D)].pos.x, MEM[(struct Widget *)this_2(D)].pos.x
	add	ax, WORD PTR [rdi+172]	# tmp93, MEM[(struct Container *)this_2(D)].padx
	mov	WORD PTR [rsi+8], ax	# item_8(D)->cell_rect.x, tmp93
	jmp	.L18	#
.L17:
	sub	edx, 1	# tmp96,
	lea	rax, [rdx+rdx*4]	# tmp100,
	sal	rax, 3	# tmp101,
	add	rax, QWORD PTR [rdi+176]	# tmp102, this_2(D)->items
	movzx	eax, WORD PTR [rax+24]	# D.9189_13->maxx, D.9189_13->maxx
	add	eax, 1	# tmp103,
	mov	WORD PTR [rsi+8], ax	# item_8(D)->cell_rect.x, tmp103
.L18:
	movzx	eax, WORD PTR [rsi+8]	# D.9194, item_8(D)->cell_rect.x
	movzx	edx, WORD PTR [rsi+12]	# item_8(D)->cell_rect.w, item_8(D)->cell_rect.w
	lea	edx, [rax-1+rdx]	# tmp107,
	mov	WORD PTR [rsi+24], dx	# item_8(D)->maxx, tmp107
	mov	rdx, QWORD PTR [rsi]	# D.9198, item_8(D)->widget
	add	ax, WORD PTR [rsi+16]	# tmp108, item_8(D)->margin_left
	mov	WORD PTR [rdx+96], ax	# D.9198_22->pos.x, tmp108
	mov	rax, QWORD PTR [rsi]	# D.9198, item_8(D)->widget
	movzx	ecx, WORD PTR [rax+100]	# D.9198_29->pos.w, D.9198_29->pos.w
	movzx	edx, WORD PTR [rax+96]	# D.9198_29->pos.x, D.9198_29->pos.x
	lea	edx, [rcx-1+rdx]	# tmp112,
	mov	WORD PTR [rax+144], dx	# D.9198_29->maxx, tmp112
	movzx	eax, WORD PTR [rsi+14]	# item_8(D)->cell_rect.h, item_8(D)->cell_rect.h
	ret
	.cfi_endproc
.LFE104:
	.size	StackListX_validateItemOnBaseAxis, .-StackListX_validateItemOnBaseAxis
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
