	.file	"StackList.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT StackList.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/StackList.asm
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
	.string	"%s: Fatal error occured while creating/growing stacklist.items array. Method Static_growArray exited with error %s\n"
	.text
	.type	StackList_growArray, @function
StackList_growArray:
.LFB105:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# this, this
	mov	DWORD PTR [rsp+28], 0	# e,
	mov	ecx, DWORD PTR [rdi+196]	# D.9167, this_1(D)->count
	lea	rdx, [rdi+192]	# tmp69,
	mov	rsi, QWORD PTR [rdi+184]	# this_1(D)->items, this_1(D)->items
	mov	QWORD PTR [rsp+8], 40	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 10	#,
	mov	r8d, ecx	#, D.9167
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L2	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	r8, rax	# D.9173,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9104	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L3	#
.L2:
	mov	QWORD PTR [rbx+184], rax	# this_1(D)->items, new_array
.L3:
	mov	eax, DWORD PTR [rsp+28]	#, e
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	StackList_growArray, .-StackList_growArray
	.type	StackList_validateAt, @function
StackList_validateAt:
.LFB103:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, esi	# index, index
	lea	rdx, [rax+rax*4]	# tmp94,
	mov	rax, QWORD PTR [rdi+184]	# this_1(D)->items, this_1(D)->items
	lea	rax, [rax+rdx*8]	# item,
	cmp	DWORD PTR [rax+28], 3	# item_6->halign,
	jne	.L6	#,
	movzx	ecx, WORD PTR [rax+18]	# item_6->margin_right, item_6->margin_right
	add	cx, WORD PTR [rax+16]	# D.9190, item_6->margin_left
	mov	edx, ecx	# D.9192, D.9190
	shr	dx	# D.9192
	mov	WORD PTR [rax+16], dx	# item_6->margin_left, D.9192
	and	ecx, 1	# tmp99,
	add	edx, ecx	# tmp100, tmp99
	mov	WORD PTR [rax+18], dx	# item_6->margin_right, tmp100
.L6:
	cmp	DWORD PTR [rax+32], 3	# item_6->valign,
	jne	.L7	#,
	movzx	ecx, WORD PTR [rax+22]	# item_6->margin_bottom, item_6->margin_bottom
	add	cx, WORD PTR [rax+20]	# D.9200, item_6->margin_top
	mov	edx, ecx	# D.9202, D.9200
	shr	dx	# D.9202
	mov	WORD PTR [rax+20], dx	# item_6->margin_top, D.9202
	and	ecx, 1	# tmp103,
	add	edx, ecx	# tmp104, tmp103
	mov	WORD PTR [rax+22], dx	# item_6->margin_bottom, tmp104
.L7:
	mov	rdx, QWORD PTR [rax]	# D.9204, item_6->widget
	movzx	ecx, WORD PTR [rax+16]	# item_6->margin_left, item_6->margin_left
	add	cx, WORD PTR [rdx+100]	# tmp105, D.9204_33->pos.w
	add	cx, WORD PTR [rax+18]	# tmp108, item_6->margin_right
	mov	WORD PTR [rax+12], cx	# item_6->cell_rect.w, tmp108
	movzx	ecx, WORD PTR [rax+20]	# item_6->margin_top, item_6->margin_top
	add	cx, WORD PTR [rdx+102]	# tmp110, D.9204_33->pos.h
	add	cx, WORD PTR [rax+22]	# tmp113, item_6->margin_bottom
	mov	WORD PTR [rax+14], cx	# item_6->cell_rect.h, tmp113
	mov	BYTE PTR [rdx+165], 0	# D.9204_33->draggable,
	cmp	DWORD PTR [rdi+200], 1	# this_1(D)->layout,
	jne	.L8	#,
	call	StackListY_validateItem	#
	jmp	.L5	#
.L8:
	.p2align 4,,8
	call	StackListX_validateItem	#
.L5:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE103:
	.size	StackList_validateAt, .-StackList_validateAt
	.type	StackList_validateFrom, @function
StackList_validateFrom:
.LFB104:
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
	cmp	esi, DWORD PTR [rdi+196]	# index, this_4(D)->count
	jae	.L11	#,
	mov	ebx, esi	# i, index
.L13:
	mov	esi, ebx	#, i
	mov	rdi, rbp	#, this
	call	StackList_validateAt	#
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+196], ebx	# this_4(D)->count, i
	ja	.L13	#,
.L11:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	StackList_validateFrom, .-StackList_validateFrom
	.globl	StackList_vrefresh
	.type	StackList_vrefresh, @function
StackList_vrefresh:
.LFB102:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	DWORD PTR [rdi+200], 1	# MEM[(struct StackList *)vthis_1(D)].layout,
	jne	.L17	#,
	call	StackListY_refresh	#
	jmp	.L16	#
.L17:
	.p2align 4,,8
	call	StackListX_refresh	#
.L16:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE102:
	.size	StackList_vrefresh, .-StackList_vrefresh
	.globl	StackList_vsetVisible
	.type	StackList_vsetVisible, @function
StackList_vsetVisible:
.LFB101:
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
	mov	rbp, rdi	# vthis, vthis
	movzx	r12d, sil	# D.9284, vis
	mov	esi, r12d	#, D.9284
	call	Widget_vsetVisible	#
	cmp	DWORD PTR [rbp+196], 0	# MEM[(struct StackList *)vthis_2(D)].count,
	je	.L20	#,
	mov	ebx, 0	# i,
.L23:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp80,
	sal	rax, 3	# tmp81,
	add	rax, QWORD PTR [rbp+184]	# tmp82, MEM[(struct StackList *)vthis_2(D)].items
	mov	rdi, QWORD PTR [rax]	# widget, D.9288_11->widget
	test	rdi, rdi	# widget
	je	.L22	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)widget_12].class, MEM[(struct coObject *)widget_12].class
	mov	rdx, QWORD PTR [rdx]	# D.9291_13->vtable, D.9291_13->vtable
	mov	esi, r12d	#, D.9284
	call	[QWORD PTR [rdx+40]]	# MEM[(const void * *)D.9292_14 + 40B]
.L22:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+196], ebx	# MEM[(struct StackList *)vthis_2(D)].count, i
	ja	.L23	#,
.L20:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	StackList_vsetVisible, .-StackList_vsetVisible
	.globl	StackList_vmevent
	.type	StackList_vmevent, @function
StackList_vmevent:
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
	mov	rbp, rdi	# vthis, vthis
	mov	r12, rsi	# screen, screen
	cmp	DWORD PTR [rdi+196], 0	# MEM[(struct StackList *)vthis_3(D)].count,
	je	.L27	#,
	mov	ebx, 0	# i,
.L30:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp79,
	sal	rax, 3	# tmp80,
	add	rax, QWORD PTR [rbp+184]	# tmp81, MEM[(struct StackList *)vthis_3(D)].items
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9300_8->widget
	test	rdi, rdi	# item_wt
	je	.L28	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_9].class, MEM[(struct coObject *)item_wt_9].class
	mov	rdx, QWORD PTR [rdx]	# D.9303_10->vtable, D.9303_10->vtable
	mov	rsi, r12	#, screen
	call	[QWORD PTR [rdx+8]]	# MEM[(const void * *)D.9304_11 + 8B]
	cmp	BYTE PTR [r12+121], 0	# screen_15(D)->event_handled,
	jne	.L26	#,
.L28:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+196], ebx	# MEM[(struct StackList *)vthis_3(D)].count, i
	ja	.L30	#,
.L27:
	mov	rsi, r12	#, screen
	mov	rdi, rbp	#, vthis
	call	Widget_vmevent	#
.L26:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	StackList_vmevent, .-StackList_vmevent
	.globl	StackList_vdraw
	.type	StackList_vdraw, @function
StackList_vdraw:
.LFB99:
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
	mov	rbp, rdi	# vthis, vthis
	mov	r12, rsi	# screen, screen
	mov	r13d, edx	# flip, flip
	mov	edx, 0	#,
	call	Widget_vdraw	#
	cmp	DWORD PTR [rbp+196], 0	# MEM[(struct StackList *)vthis_3(D)].count,
	je	.L34	#,
	mov	ebx, 0	# i,
.L36:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp80,
	sal	rax, 3	# tmp81,
	add	rax, QWORD PTR [rbp+184]	# tmp82, MEM[(struct StackList *)vthis_3(D)].items
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9316_9->widget
	test	rdi, rdi	# item_wt
	je	.L35	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_10].class, MEM[(struct coObject *)item_wt_10].class
	mov	rcx, QWORD PTR [rdx]	# D.9319_11->vtable, D.9319_11->vtable
	mov	edx, 0	#,
	mov	rsi, r12	#, screen
	call	[QWORD PTR [rcx+16]]	# MEM[(const void * *)D.9320_12 + 16B]
.L35:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+196], ebx	# MEM[(struct StackList *)vthis_3(D)].count, i
	ja	.L36	#,
.L34:
	test	r13b, r13b	# flip
	je	.L33	#,
	mov	rdi, r12	#, screen
	call	Screen_flip	#
.L33:
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
.LFE99:
	.size	StackList_vdraw, .-StackList_vdraw
	.globl	StackList_vdrag
	.type	StackList_vdrag, @function
StackList_vdrag:
.LFB98:
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
	mov	rbp, rdi	# vthis, vthis
	movsx	r12d, dx	# D.9327, dy
	movsx	r13d, si	# D.9328, dx
	mov	edx, r12d	#, D.9327
	mov	esi, r13d	#, D.9328
	call	Widget_vdrag	#
	cmp	DWORD PTR [rbp+196], 0	# MEM[(struct StackList *)vthis_7(D)].count,
	je	.L40	#,
	mov	ebx, 0	# i,
.L43:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp83,
	sal	rax, 3	# tmp84,
	add	rax, QWORD PTR [rbp+184]	# tmp85, MEM[(struct StackList *)vthis_7(D)].items
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9332_12->widget
	test	rdi, rdi	# item_wt
	je	.L42	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_13].class, MEM[(struct coObject *)item_wt_13].class
	mov	rcx, QWORD PTR [rdx]	# D.9335_14->vtable, D.9335_14->vtable
	mov	edx, r12d	#, D.9327
	mov	esi, r13d	#, D.9328
	call	[QWORD PTR [rcx+32]]	# MEM[(const void * *)D.9336_15 + 32B]
.L42:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+196], ebx	# MEM[(struct StackList *)vthis_7(D)].count, i
	ja	.L43	#,
.L40:
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
.LFE98:
	.size	StackList_vdrag, .-StackList_vdrag
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"StackList.c"
	.text
	.globl	StackList_vdestroy
	.type	StackList_vdestroy, @function
StackList_vdestroy:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.9026	#,
	call	Static_printObj2	#
	mov	rdi, QWORD PTR [rbx+184]	# D.9352, MEM[(struct StackList *)vthis_1(D)].items
	test	rdi, rdi	# D.9352
	je	.L47	#,
	mov	edx, 71	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbx+184], 0	# MEM[(struct StackList *)vthis_1(D)].items,
	mov	DWORD PTR [rbx+196], 0	# MEM[(struct StackList *)vthis_1(D)].count,
	mov	DWORD PTR [rbx+192], 0	# MEM[(struct StackList *)vthis_1(D)].size,
.L47:
	mov	rdi, rbx	#, vthis
	call	Container_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	StackList_vdestroy, .-StackList_vdestroy
	.section	.rodata.str1.1
.LC2:
	.string	"HORIZONTAL"
.LC3:
	.string	"VERTICAL"
	.text
	.globl	StackList_getLayoutName
	.type	StackList_getLayoutName, @function
StackList_getLayoutName:
.LFB93:
	.cfi_startproc
	test	edi, edi	# layout
	mov	eax, OFFSET FLAT:.LC2	# tmp64,
	mov	edx, OFFSET FLAT:.LC3	# tmp63,
	cmovne	rax, rdx	# tmp63,, D.9380
	ret
	.cfi_endproc
.LFE93:
	.size	StackList_getLayoutName, .-StackList_getLayoutName
	.section	.rodata.str1.1
.LC4:
	.string	"stacklist=NULL"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"StackList[this=%p]: layout=%s, count=%u, size=%u"
	.text
	.globl	StackList_toString
	.type	StackList_toString, @function
StackList_toString:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# this, this
	mov	eax, OFFSET FLAT:.LC4	# D.9371,
	test	rdi, rdi	# this
	je	.L53	#,
	mov	edi, DWORD PTR [rdi+200]	# this_2(D)->layout, this_2(D)->layout
	call	StackList_getLayoutName	#
	mov	edx, DWORD PTR [rbx+192]	# this_2(D)->size, this_2(D)->size
	mov	DWORD PTR [rsp+16], edx	#, this_2(D)->size
	mov	edx, DWORD PTR [rbx+196]	# this_2(D)->count, this_2(D)->count
	mov	DWORD PTR [rsp+8], edx	#, this_2(D)->count
	mov	QWORD PTR [rsp], rax	#, D.9375
	mov	r9, rbx	#, this
	mov	r8d, OFFSET FLAT:.LC5	#,
	mov	ecx, 80	#,
	mov	edx, 1	#,
	mov	esi, 80	#,
	mov	edi, OFFSET FLAT:str_id.9019	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9019	# D.9371,
.L53:
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	StackList_toString, .-StackList_toString
	.section	.rodata.str1.1
.LC6:
	.string	"(empty stacklist)"
	.text
	.globl	StackList_lastWidgetToString
	.type	StackList_lastWidgetToString, @function
StackList_lastWidgetToString:
.LFB95:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+196]	# D.9358, this_2(D)->count
	mov	eax, OFFSET FLAT:.LC6	# D.9356,
	test	edx, edx	# D.9358
	je	.L61	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	sub	edx, 1	# tmp70,
	lea	rax, [rdx+rdx*4]	# tmp74,
	sal	rax, 3	# tmp75,
	add	rax, QWORD PTR [rdi+184]	# tmp76, this_2(D)->items
	mov	rdi, QWORD PTR [rax]	#, D.9365_9->widget
	call	Widget_toString	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L61:
	rep
	ret
	.cfi_endproc
.LFE95:
	.size	StackList_lastWidgetToString, .-StackList_lastWidgetToString
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"%20s:\tWithin context: layout='%s', size=%u\n"
	.text
	.globl	StackList_new
	.type	StackList_new, @function
StackList_new:
.LFB97:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# this, this
	mov	r12d, esi	# layout, layout
	mov	ebp, edx	# size, size
	test	rdi, rdi	# this
	jne	.L63	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9032	#,
	call	Static_nullThis2	#
	mov	edi, r12d	#, layout
	call	StackList_getLayoutName	#
	mov	r8, rax	# D.9343,
	mov	r9d, ebp	#, size
	mov	ecx, OFFSET FLAT:__FUNCTION__.9032	#,
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L64	#
.L63:
	call	Container_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9032	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	DWORD PTR [rbx+200], r12d	# this_3(D)->layout, layout
	mov	DWORD PTR [rbx+192], ebp	# this_3(D)->size, size
	mov	DWORD PTR [rbx+196], 0	# this_3(D)->count,
	mov	eax, 0	# iftmp.7,
	test	ebp, ebp	# size
	je	.L65	#,
	mov	edi, ebp	# size, size
	mov	ecx, 98	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 40	#,
	call	wcalloc	#
.L65:
	mov	QWORD PTR [rbx+184], rax	# this_3(D)->items, iftmp.7
.L64:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	StackList_new, .-StackList_new
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"StackList_appendAt: Passed NULL: this(%p) or container_item(%p)\n"
	.align 8
.LC9:
	.string	"StackList_appendAt: index=%u out of range (count=%u)\n"
	.align 8
.LC10:
	.string	"StackList_appendAt: Failed to append item at index: %u, [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_appendAt
	.type	StackList_appendAt, @function
StackList_appendAt:
.LFB106:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rbx	#,
	mov	QWORD PTR [rsp-32], rbp	#,
	mov	QWORD PTR [rsp-24], r12	#,
	mov	QWORD PTR [rsp-16], r13	#,
	mov	QWORD PTR [rsp-8], r14	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	mov	rbp, rdi	# this, this
	mov	rbx, rsi	# container_item, container_item
	test	rsi, rsi	# container_item
	je	.L75	#,
	test	rdi, rdi	# this
	jne	.L69	#,
.L75:
	mov	r8, rbx	#, container_item
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 1	# e,
	jmp	.L71	#
.L69:
	mov	r12d, edx	# index, index
	mov	r13d, DWORD PTR [rdi+196]	# D.9261, this_2(D)->count
	cmp	r13d, edx	# D.9261, index
	jae	.L72	#,
	mov	r8d, r13d	#, D.9261
	mov	ecx, edx	#, index
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 19	# e,
	jmp	.L71	#
.L72:
	cmp	r13d, edx	# D.9261, index
	jne	.L73	#,
	cmp	r13d, DWORD PTR [rdi+192]	# D.9261, this_2(D)->size
	jne	.L73	#,
	call	StackList_growArray	#
	mov	r14d, eax	# e,
	test	eax, eax	# e
	je	.L73	#,
	mov	r12d, DWORD PTR [rbp+192]	# D.9266, this_2(D)->size
	mov	ebx, DWORD PTR [rbp+196]	# D.9261, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r8, rax	# D.9271,
	mov	DWORD PTR [rsp], r12d	#, D.9266
	mov	r9d, ebx	#, D.9261
	mov	ecx, r13d	#, D.9261
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L71	#
.L73:
	mov	eax, r12d	# index, index
	lea	rax, [rax+rax*4]	# tmp89,
	sal	rax, 3	# tmp90,
	add	rax, QWORD PTR [rbp+184]	# tmp91, this_2(D)->items
	mov	rdx, QWORD PTR [rbx]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax], rdx	# *D.9275_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+8]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+8], rdx	# *D.9275_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+16]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+16], rdx	# *D.9275_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+24]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+24], rdx	# *D.9275_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+32]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+32], rdx	# *D.9275_26, *container_item_4(D)
	mov	eax, DWORD PTR [rbp+196]	# D.9261, this_2(D)->count
	cmp	eax, r12d	# D.9261, index
	jne	.L74	#,
	add	eax, 1	# tmp97,
	mov	DWORD PTR [rbp+196], eax	# this_2(D)->count, tmp97
.L74:
	mov	esi, r12d	#, index
	mov	rdi, rbp	#, this
	call	StackList_validateFrom	#
	mov	r14d, 0	# e,
.L71:
	mov	eax, r14d	#, e
	mov	rbx, QWORD PTR [rsp+16]	#,
	mov	rbp, QWORD PTR [rsp+24]	#,
	mov	r12, QWORD PTR [rsp+32]	#,
	mov	r13, QWORD PTR [rsp+40]	#,
	mov	r14, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	StackList_appendAt, .-StackList_appendAt
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"StackList_addLast: Passed NULL: this(%p) or container_item(%p)\n"
	.align 8
.LC12:
	.string	"StackList_addLast: Failed to add item on the end [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_addLast
	.type	StackList_addLast, @function
StackList_addLast:
.LFB107:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# container_item, container_item
	test	rsi, rsi	# container_item
	je	.L82	#,
	test	rdi, rdi	# this
	jne	.L78	#,
.L82:
	mov	r8, rbp	#, container_item
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r12d, 1	# e,
	jmp	.L80	#
.L78:
	mov	eax, DWORD PTR [rdi+196]	#, this_2(D)->count
	cmp	DWORD PTR [rdi+192], eax	# this_2(D)->size,
	jne	.L81	#,
	call	StackList_growArray	#
	mov	r12d, eax	# e,
	test	eax, eax	# e
	je	.L81	#,
	mov	ebp, DWORD PTR [rbx+192]	# D.9241, this_2(D)->size
	mov	ebx, DWORD PTR [rbx+196]	# D.9242, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r9d, ebp	#, D.9241
	mov	r8d, ebx	#, D.9242
	mov	rcx, rax	#, D.9247
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L80	#
.L81:
	mov	eax, DWORD PTR [rbx+196]	# this_2(D)->count, this_2(D)->count
	lea	rax, [rax+rax*4]	# tmp90,
	sal	rax, 3	# tmp91,
	add	rax, QWORD PTR [rbx+184]	# tmp92, this_2(D)->items
	mov	rdx, QWORD PTR [rbp+0]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax], rdx	# *D.9251_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+8]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+8], rdx	# *D.9251_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+16]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+16], rdx	# *D.9251_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+24]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+24], rdx	# *D.9251_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+32]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+32], rdx	# *D.9251_21, *container_item_4(D)
	mov	esi, DWORD PTR [rbx+196]	# this_2(D)->count, this_2(D)->count
	mov	rdi, rbx	#, this
	call	StackList_validateAt	#
	add	DWORD PTR [rbx+196], 1	# this_2(D)->count,
	mov	r12d, 0	# e,
.L80:
	mov	eax, r12d	#, e
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	StackList_addLast, .-StackList_addLast
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"StackList_addWidgetLast: Passed NULL: this(%p) or widget(%p)\n"
	.align 8
.LC14:
	.string	"StackList_addWidgetLast: Failed to add widget on the end [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_addWidgetLast
	.type	StackList_addWidgetLast, @function
StackList_addWidgetLast:
.LFB108:
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
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# widget, widget
	mov	r13d, edx	# halign, halign
	mov	DWORD PTR [rsp+8], ecx	# %sfp, valign
	movzx	eax, WORD PTR [rsp+80]	#, marg_bot
	mov	WORD PTR [rsp+12], ax	# %sfp,
	movzx	edx, WORD PTR [rsp+88]	#, marg_right
	mov	WORD PTR [rsp+14], dx	# %sfp,
	test	rsi, rsi	# widget
	je	.L89	#,
	test	rdi, rdi	# this
	jne	.L85	#,
.L89:
	mov	r8, rbp	#, widget
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r12d, 1	# e,
	jmp	.L87	#
.L85:
	mov	r15d, r8d	# marg_top, marg_top
	mov	r14d, r9d	# marg_left, marg_left
	mov	eax, DWORD PTR [rdi+196]	#, this_2(D)->count
	cmp	DWORD PTR [rdi+192], eax	# this_2(D)->size,
	jne	.L88	#,
	call	StackList_growArray	#
	mov	r12d, eax	# e,
	test	eax, eax	# e
	je	.L88	#,
	mov	ebp, DWORD PTR [rbx+192]	# D.9222, this_2(D)->size
	mov	ebx, DWORD PTR [rbx+196]	# D.9223, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r9d, ebp	#, D.9222
	mov	r8d, ebx	#, D.9223
	mov	rcx, rax	#, D.9228
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L87	#
.L88:
	mov	eax, DWORD PTR [rbx+196]	# this_2(D)->count, this_2(D)->count
	lea	rdx, [rax+rax*4]	# tmp99,
	mov	rax, QWORD PTR [rbx+184]	# this_2(D)->items, this_2(D)->items
	lea	rax, [rax+rdx*8]	# item,
	mov	QWORD PTR [rax], rbp	# item_21->widget, widget
	mov	WORD PTR [rax+20], r15w	# item_21->margin_top, marg_top
	mov	WORD PTR [rax+16], r14w	# item_21->margin_left, marg_left
	movzx	edx, WORD PTR [rsp+12]	#, %sfp
	mov	WORD PTR [rax+22], dx	# item_21->margin_bottom,
	movzx	edx, WORD PTR [rsp+14]	#, %sfp
	mov	WORD PTR [rax+18], dx	# item_21->margin_right,
	mov	DWORD PTR [rax+28], r13d	# item_21->halign, halign
	mov	edx, DWORD PTR [rsp+8]	#, %sfp
	mov	DWORD PTR [rax+32], edx	# item_21->valign,
	mov	esi, DWORD PTR [rbx+196]	# this_2(D)->count, this_2(D)->count
	mov	rdi, rbx	#, this
	call	StackList_validateAt	#
	add	DWORD PTR [rbx+196], 1	# this_2(D)->count,
	mov	r12d, 0	# e,
.L87:
	mov	eax, r12d	#, e
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
.LFE108:
	.size	StackList_addWidgetLast, .-StackList_addWidgetLast
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"StackList_appendWidgetAt: Passed NULL: this(%p) or widget(%p)\n"
	.align 8
.LC16:
	.string	"StackList_appendWidgetAt: index=%u out of range (count=%u)\n"
	.align 8
.LC17:
	.string	"StackList_addWidgetLast: Failed to append widget at index %u [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_appendWidgetAt
	.type	StackList_appendWidgetAt, @function
StackList_appendWidgetAt:
.LFB109:
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
	mov	rbx, rdi	# this, this
	mov	r12, rsi	# widget, widget
	mov	ebp, edx	# index, index
	mov	DWORD PTR [rsp+16], ecx	# %sfp, halign
	mov	DWORD PTR [rsp+20], r8d	# %sfp, valign
	movzx	eax, WORD PTR [rsp+96]	#, marg_left
	mov	WORD PTR [rsp+26], ax	# %sfp,
	movzx	edx, WORD PTR [rsp+104]	#, marg_bot
	mov	WORD PTR [rsp+28], dx	# %sfp,
	movzx	eax, WORD PTR [rsp+112]	#, marg_right
	mov	WORD PTR [rsp+30], ax	# %sfp,
	test	rsi, rsi	# widget
	je	.L98	#,
	test	rdi, rdi	# this
	jne	.L92	#,
.L98:
	mov	r8, r12	#, widget
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 1	# e,
	jmp	.L94	#
.L92:
	mov	r13d, DWORD PTR [rdi+196]	# D.9149, this_2(D)->count
	cmp	r13d, ebp	# D.9149, index
	jae	.L95	#,
	mov	r8d, r13d	#, D.9149
	mov	ecx, ebp	#, index
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 19	# e,
	jmp	.L94	#
.L95:
	mov	r15d, r9d	# marg_top, marg_top
	cmp	r13d, ebp	# D.9149, index
	jne	.L96	#,
	cmp	r13d, DWORD PTR [rdi+192]	# D.9149, this_2(D)->size
	jne	.L96	#,
	call	StackList_growArray	#
	mov	r14d, eax	# e,
	test	eax, eax	# e
	je	.L96	#,
	mov	ebp, DWORD PTR [rbx+192]	# D.9154, this_2(D)->size
	mov	ebx, DWORD PTR [rbx+196]	# D.9149, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r8, rax	# D.9159,
	mov	DWORD PTR [rsp], ebp	#, D.9154
	mov	r9d, ebx	#, D.9149
	mov	ecx, r13d	#, D.9149
	mov	edx, OFFSET FLAT:.LC17	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L94	#
.L96:
	mov	eax, ebp	# index, index
	lea	rdx, [rax+rax*4]	# tmp98,
	mov	rax, QWORD PTR [rbx+184]	# this_2(D)->items, this_2(D)->items
	lea	rax, [rax+rdx*8]	# item,
	mov	QWORD PTR [rax], r12	# item_26->widget, widget
	mov	WORD PTR [rax+20], r15w	# item_26->margin_top, marg_top
	movzx	edx, WORD PTR [rsp+26]	#, %sfp
	mov	WORD PTR [rax+16], dx	# item_26->margin_left,
	movzx	edx, WORD PTR [rsp+28]	#, %sfp
	mov	WORD PTR [rax+22], dx	# item_26->margin_bottom,
	movzx	edx, WORD PTR [rsp+30]	#, %sfp
	mov	WORD PTR [rax+18], dx	# item_26->margin_right,
	mov	edx, DWORD PTR [rsp+16]	#, %sfp
	mov	DWORD PTR [rax+28], edx	# item_26->halign,
	mov	edx, DWORD PTR [rsp+20]	#, %sfp
	mov	DWORD PTR [rax+32], edx	# item_26->valign,
	mov	eax, DWORD PTR [rbx+196]	# D.9149, this_2(D)->count
	cmp	eax, ebp	# D.9149, index
	jne	.L97	#,
	add	eax, 1	# tmp101,
	mov	DWORD PTR [rbx+196], eax	# this_2(D)->count, tmp101
.L97:
	mov	esi, ebp	#, index
	mov	rdi, rbx	#, this
	call	StackList_validateFrom	#
	mov	r14d, 0	# e,
.L94:
	mov	eax, r14d	#, e
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
.LFE109:
	.size	StackList_appendWidgetAt, .-StackList_appendWidgetAt
	.globl	StackList_class
	.data
	.align 8
	.type	StackList_class, @object
	.size	StackList_class, 8
StackList_class:
	.quad	type
	.section	.rodata.str1.1
.LC18:
	.string	"StackList"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	208
# name:
	.quad	.LC18
	.local	str_id.9019
	.comm	str_id.9019,80,32
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9026, @object
	.size	__FUNCTION__.9026, 19
__FUNCTION__.9026:
	.string	"StackList_vdestroy"
	.type	__FUNCTION__.9032, @object
	.size	__FUNCTION__.9032, 14
__FUNCTION__.9032:
	.string	"StackList_new"
	.align 16
	.type	__FUNCTION__.9104, @object
	.size	__FUNCTION__.9104, 20
__FUNCTION__.9104:
	.string	"StackList_growArray"
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	StackList_vdestroy
	.quad	StackList_vmevent
	.quad	StackList_vdraw
	.quad	StackList_vrefresh
	.quad	StackList_vdrag
	.quad	StackList_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
