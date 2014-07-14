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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB115:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# this, this
	mov	DWORD PTR [rsp+28], 0	# e,
	mov	ecx, DWORD PTR [rdi+188]	# D.9458, this_1(D)->count
	lea	rdx, [rdi+184]	# tmp69,
	mov	rsi, QWORD PTR [rdi+176]	# this_1(D)->items, this_1(D)->items
	mov	QWORD PTR [rsp+8], 40	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 10	#,
	mov	r8d, ecx	#, D.9458
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L2	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	r8, rax	# D.9464,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9395	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L3	#
.L2:
	mov	QWORD PTR [rbx+176], rax	# this_1(D)->items, new_array
.L3:
	mov	eax, DWORD PTR [rsp+28]	#, e
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	StackList_growArray, .-StackList_growArray
	.globl	StackList_vrefresh
	.type	StackList_vrefresh, @function
StackList_vrefresh:
.LFB112:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	DWORD PTR [rdi+192], 1	# MEM[(struct StackList *)vthis_1(D)].layout,
	jne	.L6	#,
	call	StackListY_refresh	#
	jmp	.L5	#
.L6:
	.p2align 4,,8
	call	StackListX_refresh	#
.L5:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE112:
	.size	StackList_vrefresh, .-StackList_vrefresh
	.globl	StackList_vsetVisible
	.type	StackList_vsetVisible, @function
StackList_vsetVisible:
.LFB111:
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
	movzx	r12d, sil	# D.9581, vis
	mov	esi, r12d	#, D.9581
	call	Widget_vsetVisible	#
	cmp	DWORD PTR [rbp+188], 0	# MEM[(struct StackList *)vthis_2(D)].count,
	je	.L9	#,
	mov	ebx, 0	# i,
.L12:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp82,
	sal	rax, 3	# tmp83,
	add	rax, QWORD PTR [rbp+176]	# tmp84, MEM[(struct StackList *)vthis_2(D)].items
	mov	rdi, QWORD PTR [rax]	# widget, D.9585_11->widget
	test	rdi, rdi	# widget
	je	.L11	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)widget_12].class, MEM[(struct coObject *)widget_12].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9588_13->vtable, D.9588_13->vtable
	mov	rdx, QWORD PTR [rdx+8]	# MEM[(const void * *)D.9589_14 + 8B], MEM[(const void * *)D.9589_14 + 8B]
	mov	esi, r12d	#, D.9581
	call	[QWORD PTR [rdx+32]]	# MEM[(struct IWidget *)D.9591_16].setVisible
.L11:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+188], ebx	# MEM[(struct StackList *)vthis_2(D)].count, i
	ja	.L12	#,
.L9:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	StackList_vsetVisible, .-StackList_vsetVisible
	.globl	StackList_vmevent
	.type	StackList_vmevent, @function
StackList_vmevent:
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
	mov	rbp, rdi	# vthis, vthis
	mov	r12, rsi	# screen, screen
	cmp	DWORD PTR [rdi+188], 0	# MEM[(struct StackList *)vthis_3(D)].count,
	je	.L16	#,
	mov	ebx, 0	# i,
.L19:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp79,
	sal	rax, 3	# tmp80,
	add	rax, QWORD PTR [rbp+176]	# tmp81, MEM[(struct StackList *)vthis_3(D)].items
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9597_8->widget
	test	rdi, rdi	# item_wt
	je	.L17	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_9].class, MEM[(struct coObject *)item_wt_9].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9600_10->vtable, D.9600_10->vtable
	mov	rdx, QWORD PTR [rdx+8]	# MEM[(const void * *)D.9601_11 + 8B], MEM[(const void * *)D.9601_11 + 8B]
	mov	rsi, r12	#, screen
	call	[QWORD PTR [rdx]]	# MEM[(struct IWidget *)D.9603_13].mevent
	cmp	BYTE PTR [r12+169], 0	# screen_15(D)->event_handled,
	jne	.L15	#,
.L17:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+188], ebx	# MEM[(struct StackList *)vthis_3(D)].count, i
	ja	.L19	#,
.L16:
	mov	rsi, r12	#, screen
	mov	rdi, rbp	#, vthis
	call	Widget_vmevent	#
.L15:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	StackList_vmevent, .-StackList_vmevent
	.globl	StackList_vdraw
	.type	StackList_vdraw, @function
StackList_vdraw:
.LFB109:
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
	cmp	DWORD PTR [rbp+188], 0	# MEM[(struct StackList *)vthis_3(D)].count,
	je	.L23	#,
	mov	ebx, 0	# i,
.L25:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp80,
	sal	rax, 3	# tmp81,
	add	rax, QWORD PTR [rbp+176]	# tmp82, MEM[(struct StackList *)vthis_3(D)].items
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9613_9->widget
	test	rdi, rdi	# item_wt
	je	.L24	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_10].class, MEM[(struct coObject *)item_wt_10].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9616_11->vtable, D.9616_11->vtable
	mov	rcx, QWORD PTR [rdx+8]	# MEM[(const void * *)D.9617_12 + 8B], MEM[(const void * *)D.9617_12 + 8B]
	mov	edx, 0	#,
	mov	rsi, r12	#, screen
	call	[QWORD PTR [rcx+8]]	# MEM[(struct IWidget *)D.9619_14].draw
.L24:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+188], ebx	# MEM[(struct StackList *)vthis_3(D)].count, i
	ja	.L25	#,
.L23:
	test	r13b, r13b	# flip
	je	.L22	#,
	mov	rdi, r12	#, screen
	call	Screen_flip	#
.L22:
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
.LFE109:
	.size	StackList_vdraw, .-StackList_vdraw
	.globl	StackList_vdrag
	.type	StackList_vdrag, @function
StackList_vdrag:
.LFB108:
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
	movsx	r12d, dx	# D.9624, dy
	movsx	r13d, si	# D.9625, dx
	mov	edx, r12d	#, D.9624
	mov	esi, r13d	#, D.9625
	call	Widget_vdrag	#
	cmp	DWORD PTR [rbp+188], 0	# MEM[(struct StackList *)vthis_7(D)].count,
	je	.L29	#,
	mov	ebx, 0	# i,
.L32:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp83,
	sal	rax, 3	# tmp84,
	add	rax, QWORD PTR [rbp+176]	# tmp85, MEM[(struct StackList *)vthis_7(D)].items
	mov	rdi, QWORD PTR [rax]	# item_wt, D.9629_12->widget
	test	rdi, rdi	# item_wt
	je	.L31	#,
	mov	rdx, QWORD PTR [rdi]	# MEM[(struct coObject *)item_wt_13].class, MEM[(struct coObject *)item_wt_13].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9632_14->vtable, D.9632_14->vtable
	mov	rcx, QWORD PTR [rdx+8]	# MEM[(const void * *)D.9633_15 + 8B], MEM[(const void * *)D.9633_15 + 8B]
	mov	edx, r12d	#, D.9624
	mov	esi, r13d	#, D.9625
	call	[QWORD PTR [rcx+24]]	# MEM[(struct IWidget *)D.9635_17].drag
.L31:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+188], ebx	# MEM[(struct StackList *)vthis_7(D)].count, i
	ja	.L32	#,
.L29:
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
.LFE108:
	.size	StackList_vdrag, .-StackList_vdrag
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"StackList.c"
	.text
	.globl	StackList_vdestroy
	.type	StackList_vdestroy, @function
StackList_vdestroy:
.LFB106:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+176]	# D.9650, MEM[(struct StackList *)vthis_1(D)].items
	test	rdi, rdi	# D.9650
	je	.L36	#,
	mov	edx, 80	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbx+176], 0	# MEM[(struct StackList *)vthis_1(D)].items,
	mov	DWORD PTR [rbx+188], 0	# MEM[(struct StackList *)vthis_1(D)].count,
	mov	DWORD PTR [rbx+184], 0	# MEM[(struct StackList *)vthis_1(D)].size,
.L36:
	mov	rdi, rbx	#, vthis
	call	Container_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
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
.LFB103:
	.cfi_startproc
	test	edi, edi	# layout
	mov	eax, OFFSET FLAT:.LC2	# tmp64,
	mov	edx, OFFSET FLAT:.LC3	# tmp63,
	cmovne	rax, rdx	# tmp63,, D.9676
	ret
	.cfi_endproc
.LFE103:
	.size	StackList_getLayoutName, .-StackList_getLayoutName
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"StackList[this=%p]: layout=%s, count=%u, size=%u"
	.text
	.globl	StackList_vtoString
	.type	StackList_vtoString, @function
StackList_vtoString:
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# vthis, vthis
	mov	edi, DWORD PTR [rdi+192]	# MEM[(const struct StackList *)vthis_1(D)].layout, MEM[(const struct StackList *)vthis_1(D)].layout
	call	StackList_getLayoutName	#
	mov	edx, DWORD PTR [rbx+184]	# MEM[(const struct StackList *)vthis_1(D)].size, MEM[(const struct StackList *)vthis_1(D)].size
	mov	DWORD PTR [rsp+16], edx	#, MEM[(const struct StackList *)vthis_1(D)].size
	mov	edx, DWORD PTR [rbx+188]	# MEM[(const struct StackList *)vthis_1(D)].count, MEM[(const struct StackList *)vthis_1(D)].count
	mov	DWORD PTR [rsp+8], edx	#, MEM[(const struct StackList *)vthis_1(D)].count
	mov	QWORD PTR [rsp], rax	#, D.9670
	mov	r9, rbx	#, vthis
	mov	r8d, OFFSET FLAT:.LC4	#,
	mov	ecx, 80	#,
	mov	edx, 1	#,
	mov	esi, 80	#,
	mov	edi, OFFSET FLAT:str_id.9317	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9317	#,
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	StackList_vtoString, .-StackList_vtoString
	.section	.rodata.str1.1
.LC5:
	.string	"(empty stacklist)"
	.text
	.globl	StackList_lastWidgetToString
	.type	StackList_lastWidgetToString, @function
StackList_lastWidgetToString:
.LFB105:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+188]	# D.9656, this_2(D)->count
	mov	eax, OFFSET FLAT:.LC5	# D.9654,
	test	edx, edx	# D.9656
	je	.L48	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	sub	edx, 1	# tmp70,
	lea	rax, [rdx+rdx*4]	# tmp74,
	sal	rax, 3	# tmp75,
	add	rax, QWORD PTR [rdi+176]	# tmp76, this_2(D)->items
	mov	rdi, QWORD PTR [rax]	#, D.9663_9->widget
	call	Widget_toString	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L48:
	rep
	ret
	.cfi_endproc
.LFE105:
	.size	StackList_lastWidgetToString, .-StackList_lastWidgetToString
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"%20s:\tWithin context: layout='%s', size=%u\n"
	.text
	.globl	StackList_new
	.type	StackList_new, @function
StackList_new:
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
	mov	r12d, esi	# layout, layout
	mov	ebp, edx	# size, size
	test	rdi, rdi	# this
	jne	.L50	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9330	#,
	call	Static_nullThis2	#
	mov	edi, r12d	#, layout
	call	StackList_getLayoutName	#
	mov	r8, rax	# D.9640,
	mov	r9d, ebp	#, size
	mov	ecx, OFFSET FLAT:__FUNCTION__.9330	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L51	#
.L50:
	call	Container_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	DWORD PTR [rbx+192], r12d	# this_3(D)->layout, layout
	mov	DWORD PTR [rbx+184], ebp	# this_3(D)->size, size
	mov	DWORD PTR [rbx+188], 0	# this_3(D)->count,
	mov	eax, 0	# iftmp.8,
	test	ebp, ebp	# size
	je	.L52	#,
	mov	ebp, ebp	# size, size
	lea	rdi, [rbp+0+rbp*4]	# tmp71,
	sal	rdi, 3	# tmp72,
	mov	edx, 107	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wmalloc	#
.L52:
	mov	QWORD PTR [rbx+176], rax	# this_3(D)->items, iftmp.8
.L51:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	StackList_new, .-StackList_new
	.globl	StackList_validateAllItemsOnBaseAxis
	.type	StackList_validateAllItemsOnBaseAxis, @function
StackList_validateAllItemsOnBaseAxis:
.LFB114:
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
	cmp	DWORD PTR [rdi+188], 0	# this_5(D)->count,
	je	.L62	#,
	mov	r12d, 0	# max_opposite_size,
	mov	ebx, 0	# i,
.L61:
	mov	eax, ebx	# i, i
	lea	rdx, [rax+rax*4]	# tmp100,
	mov	rax, QWORD PTR [rbp+176]	# this_5(D)->items, this_5(D)->items
	lea	rsi, [rax+rdx*8]	# item,
	cmp	DWORD PTR [rsi+28], 3	# item_10->halign,
	jne	.L57	#,
	movzx	edx, WORD PTR [rsi+18]	# item_10->margin_right, item_10->margin_right
	add	dx, WORD PTR [rsi+16]	# D.9844, item_10->margin_left
	mov	eax, edx	# D.9842, D.9844
	shr	ax	# D.9842
	mov	WORD PTR [rsi+16], ax	# item_10->margin_left, D.9842
	and	edx, 1	# tmp105,
	add	eax, edx	# tmp106, tmp105
	mov	WORD PTR [rsi+18], ax	# item_10->margin_right, tmp106
.L57:
	cmp	DWORD PTR [rsi+32], 3	# item_10->valign,
	jne	.L58	#,
	movzx	edx, WORD PTR [rsi+22]	# item_10->margin_bottom, item_10->margin_bottom
	add	dx, WORD PTR [rsi+20]	# D.9836, item_10->margin_top
	mov	eax, edx	# D.9834, D.9836
	shr	ax	# D.9834
	mov	WORD PTR [rsi+20], ax	# item_10->margin_top, D.9834
	and	edx, 1	# tmp109,
	add	eax, edx	# tmp110, tmp109
	mov	WORD PTR [rsi+22], ax	# item_10->margin_bottom, tmp110
.L58:
	mov	rdx, QWORD PTR [rsi]	# D.9832, item_10->widget
	movzx	eax, WORD PTR [rsi+16]	# item_10->margin_left, item_10->margin_left
	add	ax, WORD PTR [rdx+100]	# tmp111, D.9832_33->pos.w
	add	ax, WORD PTR [rsi+18]	# tmp114, item_10->margin_right
	mov	WORD PTR [rsi+12], ax	# item_10->cell_rect.w, tmp114
	movzx	eax, WORD PTR [rsi+20]	# item_10->margin_top, item_10->margin_top
	add	ax, WORD PTR [rdx+102]	# tmp116, D.9832_33->pos.h
	add	ax, WORD PTR [rsi+22]	# tmp119, item_10->margin_bottom
	mov	WORD PTR [rsi+14], ax	# item_10->cell_rect.h, tmp119
	mov	BYTE PTR [rdx+157], 0	# D.9832_33->draggable,
	cmp	DWORD PTR [rbp+192], 1	# MEM[(const struct StackList *)this_5(D)].layout,
	jne	.L59	#,
	mov	edx, ebx	#, i
	mov	rdi, rbp	#, this
	call	StackListY_validateItemOnBaseAxis	#
	jmp	.L60	#
.L59:
	mov	edx, ebx	#, i
	mov	rdi, rbp	#, this
	call	StackListX_validateItemOnBaseAxis	#
.L60:
	cmp	r12w, ax	# max_opposite_size, item_opposite_size
	cmovb	r12d, eax	# max_opposite_size,, max_opposite_size, item_opposite_size
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+188], ebx	# this_5(D)->count, i
	ja	.L61	#,
	jmp	.L56	#
.L62:
	mov	r12d, 0	# max_opposite_size,
.L56:
	mov	eax, r12d	#, max_opposite_size
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	StackList_validateAllItemsOnBaseAxis, .-StackList_validateAllItemsOnBaseAxis
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"StackList_appendAt: Passed NULL: this(%p) or container_item(%p)\n"
	.align 8
.LC8:
	.string	"StackList_appendAt: index=%u out of range (count=%u)\n"
	.align 8
.LC9:
	.string	"StackList_appendAt: Failed to append item at index: %u, [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_appendAt
	.type	StackList_appendAt, @function
StackList_appendAt:
.LFB116:
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
	je	.L72	#,
	test	rdi, rdi	# this
	jne	.L66	#,
.L72:
	mov	r8, rbx	#, container_item
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 1	# e,
	jmp	.L68	#
.L66:
	mov	r12d, edx	# index, index
	mov	r13d, DWORD PTR [rdi+188]	# D.9518, this_2(D)->count
	cmp	r13d, edx	# D.9518, index
	jae	.L69	#,
	mov	r8d, r13d	#, D.9518
	mov	ecx, edx	#, index
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 19	# e,
	jmp	.L68	#
.L69:
	cmp	r13d, edx	# D.9518, index
	jne	.L70	#,
	cmp	r13d, DWORD PTR [rdi+184]	# D.9518, this_2(D)->size
	jne	.L70	#,
	call	StackList_growArray	#
	mov	r14d, eax	# e,
	test	eax, eax	# e
	je	.L70	#,
	mov	r12d, DWORD PTR [rbp+184]	# D.9523, this_2(D)->size
	mov	ebx, DWORD PTR [rbp+188]	# D.9518, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r8, rax	# D.9528,
	mov	DWORD PTR [rsp], r12d	#, D.9523
	mov	r9d, ebx	#, D.9518
	mov	ecx, r13d	#, D.9518
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L68	#
.L70:
	mov	eax, r12d	# index, index
	lea	rax, [rax+rax*4]	# tmp89,
	sal	rax, 3	# tmp90,
	add	rax, QWORD PTR [rbp+176]	# tmp91, this_2(D)->items
	mov	rdx, QWORD PTR [rbx]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax], rdx	# *D.9532_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+8]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+8], rdx	# *D.9532_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+16]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+16], rdx	# *D.9532_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+24]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+24], rdx	# *D.9532_26, *container_item_4(D)
	mov	rdx, QWORD PTR [rbx+32]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+32], rdx	# *D.9532_26, *container_item_4(D)
	mov	eax, DWORD PTR [rbp+188]	# D.9518, this_2(D)->count
	mov	r14d, 0	# e,
	cmp	eax, r12d	# D.9518, index
	jne	.L68	#,
	add	eax, 1	# tmp97,
	mov	DWORD PTR [rbp+188], eax	# this_2(D)->count, tmp97
.L68:
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
.LFE116:
	.size	StackList_appendAt, .-StackList_appendAt
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"StackList_addLast: Passed NULL: this(%p) or container_item(%p)\n"
	.align 8
.LC11:
	.string	"StackList_addLast: Failed to add item on the end [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_addLast
	.type	StackList_addLast, @function
StackList_addLast:
.LFB117:
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
	je	.L79	#,
	test	rdi, rdi	# this
	jne	.L75	#,
.L79:
	mov	r8, rbp	#, container_item
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r12d, 1	# e,
	jmp	.L77	#
.L75:
	mov	eax, DWORD PTR [rdi+188]	#, this_2(D)->count
	cmp	DWORD PTR [rdi+184], eax	# this_2(D)->size,
	jne	.L78	#,
	call	StackList_growArray	#
	mov	r12d, eax	# e,
	test	eax, eax	# e
	je	.L78	#,
	mov	ebp, DWORD PTR [rbx+184]	# D.9498, this_2(D)->size
	mov	ebx, DWORD PTR [rbx+188]	# D.9499, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r9d, ebp	#, D.9498
	mov	r8d, ebx	#, D.9499
	mov	rcx, rax	#, D.9504
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L77	#
.L78:
	mov	eax, DWORD PTR [rbx+188]	# this_2(D)->count, this_2(D)->count
	lea	rax, [rax+rax*4]	# tmp89,
	sal	rax, 3	# tmp90,
	add	rax, QWORD PTR [rbx+176]	# tmp91, this_2(D)->items
	mov	rdx, QWORD PTR [rbp+0]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax], rdx	# *D.9508_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+8]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+8], rdx	# *D.9508_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+16]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+16], rdx	# *D.9508_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+24]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+24], rdx	# *D.9508_21, *container_item_4(D)
	mov	rdx, QWORD PTR [rbp+32]	# *container_item_4(D), *container_item_4(D)
	mov	QWORD PTR [rax+32], rdx	# *D.9508_21, *container_item_4(D)
	add	DWORD PTR [rbx+188], 1	# this_2(D)->count,
	mov	r12d, 0	# e,
.L77:
	mov	eax, r12d	#, e
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	StackList_addLast, .-StackList_addLast
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"StackList_addWidgetLast: Passed NULL: this(%p) or widget(%p)\n"
	.align 8
.LC13:
	.string	"StackList_addWidgetLast: Failed to grow array of items [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_addWidgetLast
	.type	StackList_addWidgetLast, @function
StackList_addWidgetLast:
.LFB118:
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
	je	.L86	#,
	test	rdi, rdi	# this
	jne	.L82	#,
.L86:
	mov	r8, rbp	#, widget
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r12d, 1	# e,
	jmp	.L84	#
.L82:
	mov	r15d, r8d	# marg_top, marg_top
	mov	r14d, r9d	# marg_left, marg_left
	mov	eax, DWORD PTR [rdi+188]	#, this_2(D)->count
	cmp	DWORD PTR [rdi+184], eax	# this_2(D)->size,
	jne	.L85	#,
	call	StackList_growArray	#
	mov	r12d, eax	# e,
	test	eax, eax	# e
	je	.L85	#,
	mov	ebp, DWORD PTR [rbx+184]	# D.9479, this_2(D)->size
	mov	ebx, DWORD PTR [rbx+188]	# D.9480, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r9d, ebp	#, D.9479
	mov	r8d, ebx	#, D.9480
	mov	rcx, rax	#, D.9485
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L84	#
.L85:
	mov	eax, DWORD PTR [rbx+188]	# this_2(D)->count, this_2(D)->count
	lea	rdx, [rax+rax*4]	# tmp98,
	mov	rax, QWORD PTR [rbx+176]	# this_2(D)->items, this_2(D)->items
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
	add	DWORD PTR [rbx+188], 1	# this_2(D)->count,
	mov	r12d, 0	# e,
.L84:
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
.LFE118:
	.size	StackList_addWidgetLast, .-StackList_addWidgetLast
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"StackList_appendWidgetAt: Passed NULL: this(%p) or widget(%p)\n"
	.align 8
.LC15:
	.string	"StackList_appendWidgetAt: index=%u out of range (count=%u)\n"
	.align 8
.LC16:
	.string	"StackList_addWidgetLast: Failed to append widget at index %u [err: %s, .count: %u, .size: %u]\n"
	.text
	.globl	StackList_appendWidgetAt
	.type	StackList_appendWidgetAt, @function
StackList_appendWidgetAt:
.LFB119:
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
	je	.L95	#,
	test	rdi, rdi	# this
	jne	.L89	#,
.L95:
	mov	r8, r12	#, widget
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 1	# e,
	jmp	.L91	#
.L89:
	mov	r13d, DWORD PTR [rdi+188]	# D.9440, this_2(D)->count
	cmp	r13d, ebp	# D.9440, index
	jae	.L92	#,
	mov	r8d, r13d	#, D.9440
	mov	ecx, ebp	#, index
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	r14d, 19	# e,
	jmp	.L91	#
.L92:
	mov	r15d, r9d	# marg_top, marg_top
	cmp	r13d, ebp	# D.9440, index
	jne	.L93	#,
	cmp	r13d, DWORD PTR [rdi+184]	# D.9440, this_2(D)->size
	jne	.L93	#,
	call	StackList_growArray	#
	mov	r14d, eax	# e,
	test	eax, eax	# e
	je	.L93	#,
	mov	ebp, DWORD PTR [rbx+184]	# D.9445, this_2(D)->size
	mov	ebx, DWORD PTR [rbx+188]	# D.9440, this_2(D)->count
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	r8, rax	# D.9450,
	mov	DWORD PTR [rsp], ebp	#, D.9445
	mov	r9d, ebx	#, D.9440
	mov	ecx, r13d	#, D.9440
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L91	#
.L93:
	mov	eax, ebp	# index, index
	lea	rdx, [rax+rax*4]	# tmp98,
	mov	rax, QWORD PTR [rbx+176]	# this_2(D)->items, this_2(D)->items
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
	mov	eax, DWORD PTR [rbx+188]	# D.9440, this_2(D)->count
	mov	r14d, 0	# e,
	cmp	eax, ebp	# D.9440, index
	jne	.L91	#,
	add	eax, 1	# tmp101,
	mov	DWORD PTR [rbx+188], eax	# this_2(D)->count, tmp101
.L91:
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
.LFE119:
	.size	StackList_appendWidgetAt, .-StackList_appendWidgetAt
	.globl	StackList_class
	.data
	.align 8
	.type	StackList_class, @object
	.size	StackList_class, 8
StackList_class:
	.quad	type
	.section	.rodata.str1.1
.LC17:
	.string	"StackList"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	200
# name:
	.quad	.LC17
# vtable:
	.quad	vtable
	.local	str_id.9317
	.comm	str_id.9317,80,32
	.section	.rodata
	.type	__FUNCTION__.9330, @object
	.size	__FUNCTION__.9330, 14
__FUNCTION__.9330:
	.string	"StackList_new"
	.align 16
	.type	__FUNCTION__.9395, @object
	.size	__FUNCTION__.9395, 20
__FUNCTION__.9395:
	.string	"StackList_growArray"
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
	.quad	StackList_vdestroy
# toString:
	.quad	StackList_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	StackList_vmevent
# draw:
	.quad	StackList_vdraw
# refresh:
	.quad	StackList_vrefresh
# drag:
	.quad	StackList_vdrag
# setVisible:
	.quad	StackList_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
