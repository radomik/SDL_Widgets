	.file	"StackList.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT StackList.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/StackList.asm
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
	.string	"StackList.c"
	.text
	.type	StackList_vdestroy, @function
StackList_vdestroy:
.LFB97:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+160]	# D.9275, MEM[(struct StackList *)vthis_1(D)].items
	test	rdi, rdi	# D.9275
	je	.L2	#,
	mov	edx, 56	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+160], 0	# MEM[(struct StackList *)vthis_1(D)].items,
	mov	DWORD PTR [rbx+172], 0	# MEM[(struct StackList *)vthis_1(D)].count,
	mov	DWORD PTR [rbx+168], 0	# MEM[(struct StackList *)vthis_1(D)].size,
.L2:
	mov	rdi, rbx	#, vthis
	call	Container_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	StackList_vdestroy, .-StackList_vdestroy
	.section	.rodata.str1.1
.LC1:
	.string	"HORIZONTAL"
.LC2:
	.string	"VERTICAL"
	.text
	.globl	StackList_getLayoutName
	.type	StackList_getLayoutName, @function
StackList_getLayoutName:
.LFB93:
	.cfi_startproc
	test	edi, edi	# layout
	mov	eax, OFFSET FLAT:.LC1	# tmp64,
	mov	edx, OFFSET FLAT:.LC2	# tmp63,
	cmovne	rax, rdx	# tmp63,, D.9164
	ret
	.cfi_endproc
.LFE93:
	.size	StackList_getLayoutName, .-StackList_getLayoutName
	.section	.rodata.str1.1
.LC3:
	.string	"stacklist=NULL"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
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
	mov	rbx, rdi	# stacklist, stacklist
	mov	eax, OFFSET FLAT:.LC3	# D.9155,
	test	rdi, rdi	# stacklist
	je	.L8	#,
	mov	edi, DWORD PTR [rdi+176]	# stacklist_2(D)->layout, stacklist_2(D)->layout
	call	StackList_getLayoutName	#
	mov	edx, DWORD PTR [rbx+168]	# stacklist_2(D)->size, stacklist_2(D)->size
	mov	DWORD PTR [rsp+16], edx	#, stacklist_2(D)->size
	mov	edx, DWORD PTR [rbx+172]	# stacklist_2(D)->count, stacklist_2(D)->count
	mov	DWORD PTR [rsp+8], edx	#, stacklist_2(D)->count
	mov	QWORD PTR [rsp], rax	#, D.9159
	mov	r9, rbx	#, stacklist
	mov	r8d, OFFSET FLAT:.LC4	#,
	mov	ecx, 80	#,
	mov	edx, 1	#,
	mov	esi, 80	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.9155,
.L8:
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	StackList_toString, .-StackList_toString
	.section	.rodata.str1.1
.LC5:
	.string	"(null)"
	.text
	.globl	StackList_lastWidgetToString
	.type	StackList_lastWidgetToString, @function
StackList_lastWidgetToString:
.LFB95:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+172]	# D.9142, stacklist_2(D)->count
	mov	eax, OFFSET FLAT:.LC5	# D.9140,
	test	edx, edx	# D.9142
	je	.L16	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	sub	edx, 1	# tmp70,
	lea	rax, [rdx+rdx*4]	# tmp74,
	sal	rax, 3	# tmp75,
	add	rax, QWORD PTR [rdi+160]	# tmp76, stacklist_2(D)->items
	mov	rdi, QWORD PTR [rax]	#, D.9149_9->widget
	call	Widget_toString	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L16:
	rep
	ret
	.cfi_endproc
.LFE95:
	.size	StackList_lastWidgetToString, .-StackList_lastWidgetToString
	.globl	StackList_destroy
	.type	StackList_destroy, @function
StackList_destroy:
.LFB98:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	rdi, QWORD PTR [rdi+160]	# D.9289, this_1(D)->items
	test	rdi, rdi	# D.9289
	je	.L18	#,
	mov	edx, 56	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+160], 0	# this_1(D)->items,
	mov	DWORD PTR [rbx+172], 0	# this_1(D)->count,
	mov	DWORD PTR [rbx+168], 0	# this_1(D)->size,
.L18:
	mov	rdi, rbx	#, this
	call	Container_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	StackList_destroy, .-StackList_destroy
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"StackList_new: Passed NULL this pointer. layout=%s, size=%u\n"
	.section	.rodata.str1.1
.LC7:
	.string	"StackList"
	.text
	.globl	StackList_new
	.type	StackList_new, @function
StackList_new:
.LFB100:
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
	jne	.L21	#,
	mov	edi, esi	#, layout
	call	StackList_getLayoutName	#
	mov	r8d, ebp	#, size
	mov	rcx, rax	#, D.9135
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L22	#
.L21:
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	edx, OFFSET FLAT:StackList_vdestroy	#,
	mov	esi, 0	#,
	call	Container_init_type	#
	mov	DWORD PTR [rbx+176], r12d	# this_2(D)->layout, layout
	mov	DWORD PTR [rbx+168], ebp	# this_2(D)->size, size
	mov	DWORD PTR [rbx+172], 0	# this_2(D)->count,
	test	ebp, ebp	# size
	je	.L23	#,
	mov	edi, ebp	# size, size
	mov	ecx, 84	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 40	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+160], rax	# this_2(D)->items, D.9295
	jmp	.L24	#
.L23:
	mov	QWORD PTR [rbx+160], 0	# this_2(D)->items,
.L24:
	mov	DWORD PTR [rbx+180], 0	# this_2(D)->type,
.L22:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	StackList_new, .-StackList_new
	.globl	StackList_init_type
	.type	StackList_init_type, @function
StackList_init_type:
.LFB101:
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
	mov	rbx, rdi	# stacklist, stacklist
	mov	r12d, esi	# stacklist_type, stacklist_type
	mov	r13d, edx	# layout, layout
	mov	ebp, ecx	# size, size
	test	r8, r8	# vdestroy
	mov	eax, OFFSET FLAT:StackList_vdestroy	# tmp68,
	cmove	r8, rax	# vdestroy,, vdestroy, tmp68
	mov	rcx, r9	#, type
	mov	rdx, r8	#, vdestroy
	mov	esi, 0	#,
	call	Container_init_type	#
	mov	DWORD PTR [rbx+176], r13d	# stacklist_5(D)->layout, layout
	mov	DWORD PTR [rbx+168], ebp	# stacklist_5(D)->size, size
	mov	DWORD PTR [rbx+172], 0	# stacklist_5(D)->count,
	test	ebp, ebp	# size
	je	.L28	#,
	mov	edi, ebp	# size, size
	mov	ecx, 84	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 40	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+160], rax	# stacklist_5(D)->items, D.9304
	jmp	.L29	#
.L28:
	mov	QWORD PTR [rbx+160], 0	# stacklist_5(D)->items,
.L29:
	mov	DWORD PTR [rbx+180], r12d	# stacklist_5(D)->type, stacklist_type
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	StackList_init_type, .-StackList_init_type
	.globl	StackList_dragItems
	.type	StackList_dragItems, @function
StackList_dragItems:
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
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 64
	mov	rbp, rdi	# stacklist, stacklist
	add	WORD PTR [rdi+56], si	# MEM[(struct Widget *)stacklist_2(D)].pos.x, dx
	add	WORD PTR [rdi+58], dx	# MEM[(struct Widget *)stacklist_2(D)].pos.y, dy
	add	WORD PTR [rdi+112], si	# MEM[(struct Widget *)stacklist_2(D)].maxx, dx
	add	WORD PTR [rdi+114], dx	# MEM[(struct Widget *)stacklist_2(D)].maxy, dy
	cmp	DWORD PTR [rdi+172], 0	# stacklist_2(D)->count,
	je	.L31	#,
	mov	r12d, esi	# dx.8, dx
	mov	r13d, edx	# dy.9, dy
	mov	ebx, 0	# i,
	movsx	r15d, dx	# dy, dy
	movsx	r14d, si	# dx, dx
.L35:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp108,
	sal	rax, 3	# tmp109,
	add	rax, QWORD PTR [rbp+160]	# tmp110, stacklist_2(D)->items
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9094_27->widget
	test	rdi, rdi	# item_wt
	je	.L33	#,
	cmp	DWORD PTR [rdi+124], 9	# item_wt_28->type,
	jne	.L34	#,
	mov	edx, r15d	#, dy
	mov	esi, r14d	#, dx
	call	Container_dragItems	#
	jmp	.L33	#
.L34:
	add	WORD PTR [rdi+56], r12w	# item_wt_28->pos.x, dx.8
	add	WORD PTR [rdi+112], r12w	# item_wt_28->maxx, dx.8
	add	WORD PTR [rdi+58], r13w	# item_wt_28->pos.y, dy.9
	add	WORD PTR [rdi+114], r13w	# item_wt_28->maxy, dy.9
.L33:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+172], ebx	# stacklist_2(D)->count, i
	ja	.L35	#,
.L31:
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
.LFE102:
	.size	StackList_dragItems, .-StackList_dragItems
	.globl	StackList_draw
	.type	StackList_draw, @function
StackList_draw:
.LFB103:
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
	mov	r12, rdi	# stacklist, stacklist
	mov	r14, rsi	# screen, screen
	mov	r15d, edx	# flip, flip
	mov	r13, QWORD PTR [rsi+80]	# sscreen, screen_2(D)->screen
	cmp	BYTE PTR [rdi+130], 0	# MEM[(struct Widget *)stacklist_4(D)].visible,
	je	.L39	#,
	lea	rcx, [rdi+56]	# tmp81,
	mov	rdi, QWORD PTR [rdi+48]	# MEM[(struct Widget *)stacklist_4(D)].surf, MEM[(struct Widget *)stacklist_4(D)].surf
	mov	rdx, r13	#, sscreen
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	BYTE PTR [r12+132], 0	# MEM[(struct Widget *)stacklist_4(D)].need_reload,
.L39:
	cmp	DWORD PTR [r12+172], 0	# stacklist_4(D)->count,
	je	.L40	#,
	mov	ebp, 0	# i,
	movzx	eax, r15b	#, flip
	mov	DWORD PTR [rsp+12], eax	# %sfp,
.L43:
	mov	eax, ebp	# i, i
	lea	rax, [rax+rax*4]	# tmp87,
	sal	rax, 3	# tmp88,
	add	rax, QWORD PTR [r12+160]	# tmp89, stacklist_4(D)->items
	mov	rbx, QWORD PTR [rax]	# widget, D.9062_14->widget
	test	rbx, rbx	# widget
	je	.L41	#,
	cmp	BYTE PTR [rbx+130], 0	# widget_15->visible,
	je	.L41	#,
	cmp	DWORD PTR [rbx+124], 9	# widget_15->type,
	jne	.L42	#,
	mov	edx, DWORD PTR [rsp+12]	#, %sfp
	mov	rsi, r14	#, screen
	mov	rdi, rbx	#, widget
	call	Container_draw	#
	jmp	.L41	#
.L42:
	lea	rcx, [rbx+56]	# tmp91,
	mov	rdi, QWORD PTR [rbx+48]	# widget_15->surf, widget_15->surf
	mov	rdx, r13	#, sscreen
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	BYTE PTR [rbx+132], 0	# widget_15->need_reload,
.L41:
	add	ebp, 1	# i,
	cmp	DWORD PTR [r12+172], ebp	# stacklist_4(D)->count, i
	ja	.L43	#,
.L40:
	test	r15b, r15b	# flip
	je	.L38	#,
	mov	rdi, r13	#, sscreen
	call	SDL_Flip	#
.L38:
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
.LFE103:
	.size	StackList_draw, .-StackList_draw
	.globl	StackList_mevent
	.type	StackList_mevent, @function
StackList_mevent:
.LFB104:
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
	mov	rbp, rdi	# stacklist, stacklist
	mov	r12, rsi	# screen, screen
	cmp	DWORD PTR [rdi+172], 0	# stacklist_3(D)->count,
	je	.L48	#,
	mov	ebx, 0	# i,
.L53:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp79,
	sal	rax, 3	# tmp80,
	add	rax, QWORD PTR [rbp+160]	# tmp81, stacklist_3(D)->items
	mov	rdi, QWORD PTR [rax]	# widget, D.9038_8->widget
	test	rdi, rdi	# widget
	je	.L49	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_9->type,
	jne	.L50	#,
	mov	rsi, r12	#, screen
	call	Container_mevent	#
	jmp	.L51	#
.L50:
	mov	rsi, r12	#, screen
	call	Widget_mevent	#
.L51:
	cmp	BYTE PTR [r12+129], 0	# screen_11(D)->event_handled,
	jne	.L47	#,
.L49:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+172], ebx	# stacklist_3(D)->count, i
	ja	.L53	#,
.L48:
	test	DWORD PTR [rbp+128], -16776961	#,
	je	.L47	#,
	mov	rsi, r12	#, screen
	mov	rdi, rbp	#, stacklist
	call	Widget_mevent	#
.L47:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	StackList_mevent, .-StackList_mevent
	.globl	StackList_setVisible
	.type	StackList_setVisible, @function
StackList_setVisible:
.LFB105:
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
	mov	rbp, rdi	# stacklist, stacklist
	mov	BYTE PTR [rdi+130], sil	# stacklist_2(D)->container.widget.visible, vis
	cmp	DWORD PTR [rdi+172], 0	# stacklist_2(D)->count,
	je	.L56	#,
	mov	r12d, esi	# vis, vis
	mov	ebx, 0	# i,
	movzx	r13d, sil	# vis, vis
.L60:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp77,
	sal	rax, 3	# tmp78,
	add	rax, QWORD PTR [rbp+160]	# tmp79, stacklist_2(D)->items
	mov	rdi, QWORD PTR [rax]	# widget, D.9026_9->widget
	test	rdi, rdi	# widget
	je	.L58	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_10->type,
	jne	.L59	#,
	mov	esi, r13d	#, vis
	call	Container_setVisible	#
	jmp	.L58	#
.L59:
	mov	BYTE PTR [rdi+130], r12b	# widget_10->visible, vis
.L58:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+172], ebx	# stacklist_2(D)->count, i
	ja	.L60	#,
.L56:
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
.LFE105:
	.size	StackList_setVisible, .-StackList_setVisible
	.globl	StackList_refresh
	.type	StackList_refresh, @function
StackList_refresh:
.LFB106:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	DWORD PTR [rdi+176], 1	# stacklist_1(D)->layout,
	jne	.L64	#,
	call	StackListY_refresh	#
	jmp	.L63	#
.L64:
	.p2align 4,,8
	call	StackListX_refresh	#
.L63:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE106:
	.size	StackList_refresh, .-StackList_refresh
	.globl	StackList_validateAt
	.type	StackList_validateAt, @function
StackList_validateAt:
.LFB107:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, esi	# index, index
	lea	rdx, [rax+rax*4]	# tmp94,
	mov	rax, QWORD PTR [rdi+160]	# stacklist_1(D)->items, stacklist_1(D)->items
	lea	rax, [rax+rdx*8]	# item,
	cmp	DWORD PTR [rax+28], 3	# item_6->halign,
	jne	.L68	#,
	movzx	ecx, WORD PTR [rax+18]	# item_6->margin_right, item_6->margin_right
	add	cx, WORD PTR [rax+16]	# D.8994, item_6->margin_left
	mov	edx, ecx	# D.8996, D.8994
	shr	dx	# D.8996
	mov	WORD PTR [rax+16], dx	# item_6->margin_left, D.8996
	and	ecx, 1	# tmp99,
	add	edx, ecx	# tmp100, tmp99
	mov	WORD PTR [rax+18], dx	# item_6->margin_right, tmp100
.L68:
	cmp	DWORD PTR [rax+32], 3	# item_6->valign,
	jne	.L69	#,
	movzx	ecx, WORD PTR [rax+22]	# item_6->margin_bottom, item_6->margin_bottom
	add	cx, WORD PTR [rax+20]	# D.9004, item_6->margin_top
	mov	edx, ecx	# D.9006, D.9004
	shr	dx	# D.9006
	mov	WORD PTR [rax+20], dx	# item_6->margin_top, D.9006
	and	ecx, 1	# tmp103,
	add	edx, ecx	# tmp104, tmp103
	mov	WORD PTR [rax+22], dx	# item_6->margin_bottom, tmp104
.L69:
	mov	rdx, QWORD PTR [rax]	# D.9008, item_6->widget
	movzx	ecx, WORD PTR [rax+16]	# item_6->margin_left, item_6->margin_left
	add	cx, WORD PTR [rdx+60]	# tmp105, D.9008_33->pos.w
	add	cx, WORD PTR [rax+18]	# tmp108, item_6->margin_right
	mov	WORD PTR [rax+12], cx	# item_6->cell_rect.w, tmp108
	movzx	ecx, WORD PTR [rax+20]	# item_6->margin_top, item_6->margin_top
	add	cx, WORD PTR [rdx+62]	# tmp110, D.9008_33->pos.h
	add	cx, WORD PTR [rax+22]	# tmp113, item_6->margin_bottom
	mov	WORD PTR [rax+14], cx	# item_6->cell_rect.h, tmp113
	mov	BYTE PTR [rdx+128], 0	# D.9008_33->draggable,
	cmp	DWORD PTR [rdi+176], 1	# stacklist_1(D)->layout,
	jne	.L70	#,
	call	StackListY_validateAt	#
	jmp	.L67	#
.L70:
	.p2align 4,,8
	call	StackListX_validateAt	#
.L67:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE107:
	.size	StackList_validateAt, .-StackList_validateAt
	.globl	StackList_validate
	.type	StackList_validate, @function
StackList_validate:
.LFB108:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# stacklist, stacklist
	cmp	DWORD PTR [rdi+172], 0	# stacklist_3(D)->count,
	je	.L73	#,
	mov	ebx, 0	# i,
.L75:
	mov	esi, ebx	#, i
	mov	rdi, rbp	#, stacklist
	call	StackList_validateAt	#
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+172], ebx	# stacklist_3(D)->count, i
	ja	.L75	#,
.L73:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	StackList_validate, .-StackList_validate
	.globl	StackList_validateFrom
	.type	StackList_validateFrom, @function
StackList_validateFrom:
.LFB109:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# stacklist, stacklist
	cmp	esi, DWORD PTR [rdi+172]	# index, stacklist_4(D)->count
	jae	.L78	#,
	mov	ebx, esi	# i, index
.L80:
	mov	esi, ebx	#, i
	mov	rdi, rbp	#, stacklist
	call	StackList_validateAt	#
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+172], ebx	# stacklist_4(D)->count, i
	ja	.L80	#,
.L78:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	StackList_validateFrom, .-StackList_validateFrom
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"StackList_appendAt: Passed NULL: stacklist(%p) or container_item(%p)\n"
	.align 8
.LC9:
	.string	"StackList_appendAt: index=%u out of range (count=%u)\n"
	.section	.rodata.str1.1
.LC10:
	.string	"StackList_appendAt"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"%s: Fatal error occured while creating/growing stacklist.items array. Method Static_growArray exited with error %s\n"
	.text
	.globl	StackList_appendAt
	.type	StackList_appendAt, @function
StackList_appendAt:
.LFB110:
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
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 64
	mov	rbp, rdi	# stacklist, stacklist
	mov	r12, rsi	# container_item, container_item
	test	rsi, rsi	# container_item
	je	.L93	#,
	test	rdi, rdi	# stacklist
	jne	.L84	#,
.L93:
	mov	r8, r12	#, container_item
	mov	rcx, rbp	#, stacklist
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8960,
	jmp	.L86	#
.L84:
	mov	ebx, edx	# index, index
	mov	ecx, DWORD PTR [rdi+172]	# D.8961, stacklist_2(D)->count
	cmp	ecx, edx	# D.8961, index
	jae	.L87	#,
	mov	r8d, ecx	#, D.8961
	mov	ecx, edx	#, index
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 19	# D.8960,
	jmp	.L86	#
.L87:
	cmp	ecx, edx	# D.8961, index
	jne	.L88	#,
	cmp	ecx, DWORD PTR [rdi+168]	# D.8961, stacklist_2(D)->size
	jne	.L88	#,
	lea	rdx, [rdi+168]	# tmp92,
	mov	rsi, QWORD PTR [rdi+160]	# stacklist_2(D)->items, stacklist_2(D)->items
	mov	QWORD PTR [rsp+8], 40	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 10	#,
	mov	r8d, ecx	#, D.8961
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L89	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	r8, rax	# D.8974,
	mov	ecx, OFFSET FLAT:.LC10	#,
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.8960, e
	jmp	.L86	#
.L89:
	mov	QWORD PTR [rbp+160], rax	# stacklist_2(D)->items, new_array
.L88:
	mov	eax, ebx	# index, index
	lea	rax, [rax+rax*4]	# tmp100,
	sal	rax, 3	# tmp101,
	add	rax, QWORD PTR [rbp+160]	# tmp102, stacklist_2(D)->items
	mov	rdx, QWORD PTR [r12]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax], rdx	# *D.8977_29, *container_item_4(D)
	mov	rdx, QWORD PTR [r12+8]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+8], rdx	# *D.8977_29, *container_item_4(D)
	mov	rdx, QWORD PTR [r12+16]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+16], rdx	# *D.8977_29, *container_item_4(D)
	mov	rdx, QWORD PTR [r12+24]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+24], rdx	# *D.8977_29, *container_item_4(D)
	mov	rdx, QWORD PTR [r12+32]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+32], rdx	# *D.8977_29, *container_item_4(D)
	mov	eax, DWORD PTR [rbp+172]	# index, stacklist_2(D)->count
	cmp	eax, ebx	# index, index
	jne	.L90	#,
	lea	edx, [rax+1]	# tmp108,
	mov	DWORD PTR [rbp+172], edx	# stacklist_2(D)->count, tmp108
	mov	ebx, eax	# index, index
.L90:
	cmp	ebx, DWORD PTR [rbp+172]	# index, stacklist_2(D)->count
	jae	.L92	#,
.L94:
	mov	esi, ebx	#, index
	mov	rdi, rbp	#, stacklist
	call	StackList_validateAt	#
	add	ebx, 1	# index,
	cmp	ebx, DWORD PTR [rbp+172]	# index, stacklist_2(D)->count
	jb	.L94	#,
	mov	eax, 0	# D.8960,
	jmp	.L86	#
.L92:
	mov	eax, 0	# D.8960,
.L86:
	add	rsp, 32	#,
	.cfi_def_cfa_offset 32
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	StackList_appendAt, .-StackList_appendAt
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"StackList_addLast: Passed NULL: stacklist(%p) or container_item(%p)\n"
	.section	.rodata.str1.1
.LC13:
	.string	"StackList_addLast"
	.text
	.globl	StackList_addLast
	.type	StackList_addLast, @function
StackList_addLast:
.LFB111:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 64
	mov	rbx, rdi	# stacklist, stacklist
	mov	rbp, rsi	# container_item, container_item
	test	rsi, rsi	# container_item
	je	.L103	#,
	test	rdi, rdi	# stacklist
	jne	.L98	#,
.L103:
	mov	r8, rbp	#, container_item
	mov	rcx, rbx	#, stacklist
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8936,
	jmp	.L100	#
.L98:
	mov	ecx, DWORD PTR [rdi+168]	# D.8937, stacklist_2(D)->size
	cmp	ecx, DWORD PTR [rdi+172]	# D.8937, stacklist_2(D)->count
	jne	.L101	#,
	lea	rdx, [rdi+168]	# tmp87,
	mov	rsi, QWORD PTR [rdi+160]	# stacklist_2(D)->items, stacklist_2(D)->items
	mov	QWORD PTR [rsp+8], 40	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 10	#,
	mov	r8d, ecx	#, D.8937
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L102	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	r8, rax	# D.8946,
	mov	ecx, OFFSET FLAT:.LC13	#,
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.8936, e
	jmp	.L100	#
.L102:
	mov	QWORD PTR [rbx+160], rax	# stacklist_2(D)->items, new_array
.L101:
	mov	eax, DWORD PTR [rbx+172]	# stacklist_2(D)->count, stacklist_2(D)->count
	lea	rax, [rax+rax*4]	# tmp95,
	sal	rax, 3	# tmp96,
	add	rax, QWORD PTR [rbx+160]	# tmp97, stacklist_2(D)->items
	mov	rdx, QWORD PTR [rbp+0]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax], rdx	# *D.8949_24, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+8]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+8], rdx	# *D.8949_24, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+16]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+16], rdx	# *D.8949_24, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+24]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+24], rdx	# *D.8949_24, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+32]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+32], rdx	# *D.8949_24, *container_item_4(D)
	mov	esi, DWORD PTR [rbx+172]	# stacklist_2(D)->count, stacklist_2(D)->count
	mov	rdi, rbx	#, stacklist
	call	StackList_validateAt	#
	add	DWORD PTR [rbx+172], 1	# stacklist_2(D)->count,
	mov	eax, 0	# D.8936,
.L100:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	StackList_addLast, .-StackList_addLast
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"StackList_addWidgetLast: Passed NULL: stacklist(%p) or widget(%p)\n"
	.section	.rodata.str1.1
.LC15:
	.string	"StackList_addWidgetLast"
	.text
	.globl	StackList_addWidgetLast
	.type	StackList_addWidgetLast, @function
StackList_addWidgetLast:
.LFB112:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# stacklist, stacklist
	mov	rbp, rsi	# widget, widget
	mov	DWORD PTR [rsp+24], edx	# %sfp, halign
	mov	DWORD PTR [rsp+28], ecx	# %sfp, valign
	movzx	r13d, WORD PTR [rsp+112]	# marg_bot, marg_bot
	movzx	r12d, WORD PTR [rsp+120]	# marg_right, marg_right
	test	rsi, rsi	# widget
	je	.L111	#,
	test	rdi, rdi	# stacklist
	jne	.L106	#,
.L111:
	mov	r8, rbp	#, widget
	mov	rcx, rbx	#, stacklist
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8913,
	jmp	.L108	#
.L106:
	mov	r15d, r8d	# marg_top, marg_top
	mov	r14d, r9d	# marg_left, marg_left
	mov	ecx, DWORD PTR [rdi+168]	# D.8914, stacklist_2(D)->size
	cmp	ecx, DWORD PTR [rdi+172]	# D.8914, stacklist_2(D)->count
	jne	.L109	#,
	lea	rdx, [rdi+168]	# tmp97,
	mov	rsi, QWORD PTR [rdi+160]	# stacklist_2(D)->items, stacklist_2(D)->items
	mov	QWORD PTR [rsp+8], 40	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 10	#,
	mov	r8d, ecx	#, D.8914
	lea	rdi, [rsp+44]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L110	#,
	mov	edi, DWORD PTR [rsp+44]	#, e
	call	perr_getName	#
	mov	r8, rax	# D.8923,
	mov	ecx, OFFSET FLAT:.LC15	#,
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+44]	# D.8913, e
	jmp	.L108	#
.L110:
	mov	QWORD PTR [rbx+160], rax	# stacklist_2(D)->items, new_array
.L109:
	mov	eax, DWORD PTR [rbx+172]	# stacklist_2(D)->count, stacklist_2(D)->count
	lea	rdx, [rax+rax*4]	# tmp104,
	mov	rax, QWORD PTR [rbx+160]	# stacklist_2(D)->items, stacklist_2(D)->items
	lea	rax, [rax+rdx*8]	# item,
	mov	QWORD PTR [rax], rbp	# item_24->widget, widget
	mov	WORD PTR [rax+20], r15w	# item_24->margin_top, marg_top
	mov	WORD PTR [rax+16], r14w	# item_24->margin_left, marg_left
	mov	WORD PTR [rax+22], r13w	# item_24->margin_bottom, marg_bot
	mov	WORD PTR [rax+18], r12w	# item_24->margin_right, marg_right
	mov	edx, DWORD PTR [rsp+24]	#, %sfp
	mov	DWORD PTR [rax+28], edx	# item_24->halign,
	mov	edx, DWORD PTR [rsp+28]	#, %sfp
	mov	DWORD PTR [rax+32], edx	# item_24->valign,
	mov	esi, DWORD PTR [rbx+172]	# stacklist_2(D)->count, stacklist_2(D)->count
	mov	rdi, rbx	#, stacklist
	call	StackList_validateAt	#
	add	DWORD PTR [rbx+172], 1	# stacklist_2(D)->count,
	mov	eax, 0	# D.8913,
.L108:
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	StackList_addWidgetLast, .-StackList_addWidgetLast
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"StackList_appendWidgetAt: Passed NULL: stacklist(%p) or widget(%p)\n"
	.align 8
.LC17:
	.string	"StackList_appendWidgetAt: index=%u out of range (count=%u)\n"
	.section	.rodata.str1.1
.LC18:
	.string	"StackList_appendWidgetAt"
	.text
	.globl	StackList_appendWidgetAt
	.type	StackList_appendWidgetAt, @function
StackList_appendWidgetAt:
.LFB113:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbp, rdi	# stacklist, stacklist
	mov	r12, rsi	# widget, widget
	mov	ebx, edx	# index, index
	mov	DWORD PTR [rsp+24], ecx	# %sfp, halign
	movzx	r14d, WORD PTR [rsp+112]	# marg_left, marg_left
	movzx	eax, WORD PTR [rsp+120]	#, marg_bot
	mov	WORD PTR [rsp+28], ax	# %sfp,
	movzx	edx, WORD PTR [rsp+128]	#, marg_right
	mov	WORD PTR [rsp+30], dx	# %sfp,
	test	rsi, rsi	# widget
	je	.L123	#,
	test	rdi, rdi	# stacklist
	jne	.L114	#,
.L123:
	mov	r8, r12	#, widget
	mov	rcx, rbp	#, stacklist
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8882,
	jmp	.L116	#
.L114:
	mov	ecx, DWORD PTR [rdi+172]	# D.8883, stacklist_2(D)->count
	cmp	ecx, ebx	# D.8883, index
	jae	.L117	#,
	mov	r8d, ecx	#, D.8883
	mov	ecx, ebx	#, index
	mov	edx, OFFSET FLAT:.LC17	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 19	# D.8882,
	jmp	.L116	#
.L117:
	mov	r13d, r8d	# valign, valign
	mov	r15d, r9d	# marg_top, marg_top
	cmp	ecx, ebx	# D.8883, index
	jne	.L118	#,
	cmp	ecx, DWORD PTR [rdi+168]	# D.8883, stacklist_2(D)->size
	jne	.L118	#,
	lea	rdx, [rdi+168]	# tmp102,
	mov	rsi, QWORD PTR [rdi+160]	# stacklist_2(D)->items, stacklist_2(D)->items
	mov	QWORD PTR [rsp+8], 40	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 10	#,
	mov	r8d, ecx	#, D.8883
	lea	rdi, [rsp+44]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L119	#,
	mov	edi, DWORD PTR [rsp+44]	#, e
	call	perr_getName	#
	mov	r8, rax	# D.8896,
	mov	ecx, OFFSET FLAT:.LC18	#,
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+44]	# D.8882, e
	jmp	.L116	#
.L119:
	mov	QWORD PTR [rbp+160], rax	# stacklist_2(D)->items, new_array
.L118:
	mov	eax, ebx	# index, index
	lea	rdx, [rax+rax*4]	# tmp109,
	mov	rax, QWORD PTR [rbp+160]	# stacklist_2(D)->items, stacklist_2(D)->items
	lea	rax, [rax+rdx*8]	# item,
	mov	QWORD PTR [rax], r12	# item_29->widget, widget
	mov	WORD PTR [rax+20], r15w	# item_29->margin_top, marg_top
	mov	WORD PTR [rax+16], r14w	# item_29->margin_left, marg_left
	movzx	edx, WORD PTR [rsp+28]	#, %sfp
	mov	WORD PTR [rax+22], dx	# item_29->margin_bottom,
	movzx	edx, WORD PTR [rsp+30]	#, %sfp
	mov	WORD PTR [rax+18], dx	# item_29->margin_right,
	mov	edx, DWORD PTR [rsp+24]	#, %sfp
	mov	DWORD PTR [rax+28], edx	# item_29->halign,
	mov	DWORD PTR [rax+32], r13d	# item_29->valign, valign
	mov	eax, DWORD PTR [rbp+172]	# index, stacklist_2(D)->count
	cmp	eax, ebx	# index, index
	jne	.L120	#,
	lea	edx, [rax+1]	# tmp112,
	mov	DWORD PTR [rbp+172], edx	# stacklist_2(D)->count, tmp112
	mov	ebx, eax	# index, index
.L120:
	cmp	ebx, DWORD PTR [rbp+172]	# index, stacklist_2(D)->count
	jae	.L122	#,
.L124:
	mov	esi, ebx	#, index
	mov	rdi, rbp	#, stacklist
	call	StackList_validateAt	#
	add	ebx, 1	# index,
	cmp	ebx, DWORD PTR [rbp+172]	# index, stacklist_2(D)->count
	jb	.L124	#,
	mov	eax, 0	# D.8882,
	jmp	.L116	#
.L122:
	mov	eax, 0	# D.8882,
.L116:
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	StackList_appendWidgetAt, .-StackList_appendWidgetAt
	.local	str_id
	.comm	str_id,80,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
