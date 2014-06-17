	.file	"List2D.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT List2D.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/List2D.asm
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
	.string	"List2D.c"
	.text
	.type	List2D_vdestroy, @function
List2D_vdestroy:
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
	mov	rax, QWORD PTR [rdi+16]	# temp, MEM[(struct List2D *)vthis_1(D)].first
	test	rax, rax	# temp
	je	.L2	#,
.L5:
	mov	rbx, QWORD PTR [rax+16]	# temp, MEM[(struct List2DItem *)temp_29].next
	cmp	BYTE PTR [rbp+48], 0	# MEM[(struct List2D *)vthis_1(D)].free_data_on_destroy,
	je	.L3	#,
	mov	edx, 37	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, QWORD PTR [rax]	#, MEM[(struct List2DItem *)temp_29].data
	call	wfree	#
.L3:
	mov	rdi, QWORD PTR [rbp+16]	# MEM[(struct List2D *)vthis_1(D)].first, MEM[(struct List2D *)vthis_1(D)].first
	mov	edx, 38	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbp+16], rbx	# MEM[(struct List2D *)vthis_1(D)].first, temp
	mov	rax, rbx	# temp, temp
	test	rbx, rbx	# temp
	jne	.L5	#,
	mov	QWORD PTR [rbp+32], 0	# MEM[(struct List2D *)vthis_1(D)].last,
	mov	QWORD PTR [rbp+24], 0	# MEM[(struct List2D *)vthis_1(D)].current,
	mov	QWORD PTR [rbp+40], 0	# MEM[(struct List2D *)vthis_1(D)].count,
.L2:
	mov	rdi, rbp	#, vthis
	call	Object_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	List2D_vdestroy, .-List2D_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"List2D_new: Passed NULL this pointer.\n"
	.section	.rodata.str1.1
.LC2:
	.string	"List2D"
	.text
	.globl	List2D_new
	.type	List2D_new, @function
List2D_new:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# list2d, list2d
	test	rdi, rdi	# list2d
	jne	.L9	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 38	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	jmp	.L10	#
.L9:
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, OFFSET FLAT:List2D_vdestroy	#,
	call	Object_init_type	#
	mov	QWORD PTR [rbx+40], 0	# list2d_2(D)->count,
	mov	QWORD PTR [rbx+32], 0	# list2d_2(D)->last,
	mov	QWORD PTR [rbx+24], 0	# list2d_2(D)->current,
	mov	QWORD PTR [rbx+16], 0	# list2d_2(D)->first,
	mov	BYTE PTR [rbx+48], 0	# list2d_2(D)->free_data_on_destroy,
.L10:
	mov	rax, rbx	#, list2d
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	List2D_new, .-List2D_new
	.globl	List2D_addLast
	.type	List2D_addLast, @function
List2D_addLast:
.LFB95:
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
	mov	rbx, rdi	# list2d, list2d
	mov	r13, rsi	# data, data
	mov	r12d, edx	# code, code
	mov	ebp, ecx	# change_current, change_current
	mov	edx, 63	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, 32	#,
	call	wmalloc	#
	mov	QWORD PTR [rax], r13	# new_item_1->data, data
	mov	DWORD PTR [rax+24], r12d	# new_item_1->code, code
	mov	QWORD PTR [rax+16], 0	# new_item_1->next,
	mov	rdx, QWORD PTR [rbx+32]	# D.8594, list2d_4(D)->last
	test	rdx, rdx	# D.8594
	je	.L13	#,
	mov	QWORD PTR [rdx+16], rax	# D.8594_5->next, new_item
	mov	rdx, QWORD PTR [rbx+32]	# D.8594, list2d_4(D)->last
	mov	QWORD PTR [rax+8], rdx	# new_item_1->prev, D.8594
	mov	QWORD PTR [rbx+32], rax	# list2d_4(D)->last, new_item
	jmp	.L14	#
.L13:
	mov	QWORD PTR [rax+8], 0	# new_item_1->prev,
	mov	QWORD PTR [rbx+16], rax	# list2d_4(D)->first, new_item
	mov	QWORD PTR [rbx+32], rax	# list2d_4(D)->last, new_item
.L14:
	add	QWORD PTR [rbx+40], 1	# list2d_4(D)->count,
	test	bpl, bpl	# change_current
	je	.L15	#,
	mov	QWORD PTR [rbx+24], rax	# list2d_4(D)->current, new_item
.L15:
	mov	eax, 1	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	List2D_addLast, .-List2D_addLast
	.globl	List2D_addFirst
	.type	List2D_addFirst, @function
List2D_addFirst:
.LFB96:
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
	mov	rbx, rdi	# list2d, list2d
	mov	r13, rsi	# data, data
	mov	r12d, edx	# code, code
	mov	ebp, ecx	# change_current, change_current
	mov	edx, 82	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, 32	#,
	call	wmalloc	#
	mov	QWORD PTR [rax], r13	# new_item_1->data, data
	mov	DWORD PTR [rax+24], r12d	# new_item_1->code, code
	mov	QWORD PTR [rax+8], 0	# new_item_1->prev,
	mov	rdx, QWORD PTR [rbx+16]	# D.8584, list2d_4(D)->first
	test	rdx, rdx	# D.8584
	je	.L18	#,
	mov	QWORD PTR [rdx+8], rax	# D.8584_5->prev, new_item
	mov	rdx, QWORD PTR [rbx+16]	# D.8584, list2d_4(D)->first
	mov	QWORD PTR [rax+16], rdx	# new_item_1->next, D.8584
	mov	QWORD PTR [rbx+16], rax	# list2d_4(D)->first, new_item
	jmp	.L19	#
.L18:
	mov	QWORD PTR [rax+16], 0	# new_item_1->next,
	mov	QWORD PTR [rbx+16], rax	# list2d_4(D)->first, new_item
	mov	QWORD PTR [rbx+32], rax	# list2d_4(D)->last, new_item
.L19:
	add	QWORD PTR [rbx+40], 1	# list2d_4(D)->count,
	test	bpl, bpl	# change_current
	je	.L20	#,
	mov	QWORD PTR [rbx+24], rax	# list2d_4(D)->current, new_item
.L20:
	mov	eax, 1	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	List2D_addFirst, .-List2D_addFirst
	.globl	List2D_removeByItem
	.type	List2D_removeByItem, @function
List2D_removeByItem:
.LFB97:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+16]	# D.8692, list2d_3(D)->first
	test	rax, rax	# D.8692
	je	.L30	#,
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rsi	# item, item
	test	rsi, rsi	# item
	je	.L31	#,
	mov	rbp, QWORD PTR [rsi+8]	# prev, item_5(D)->prev
	mov	r12, QWORD PTR [rsi+16]	# next, item_5(D)->next
	cmp	QWORD PTR [rdi+24], rsi	# list2d_3(D)->current, item
	jne	.L24	#,
	test	rbp, rbp	# prev
	mov	rcx, rbp	# prev, prev
	cmove	rcx, r12	# next,, prev
	mov	QWORD PTR [rdi+24], rcx	# list2d_3(D)->current, prev
.L24:
	cmp	rbx, rax	# item, D.8692
	jne	.L26	#,
	mov	QWORD PTR [rdi+16], r12	# list2d_3(D)->first, next
.L26:
	cmp	QWORD PTR [rdi+32], rbx	# list2d_3(D)->last, item
	jne	.L27	#,
	mov	QWORD PTR [rdi+32], rbp	# list2d_3(D)->last, prev
.L27:
	test	dl, dl	# free_data
	je	.L28	#,
	mov	rdi, QWORD PTR [rbx]	# D.8576, item_5(D)->data
	test	rdi, rdi	# D.8576
	je	.L28	#,
	mov	edx, 108	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
.L28:
	mov	edx, 109	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbx	#, item
	call	wfree	#
	test	rbp, rbp	# prev
	je	.L29	#,
	mov	QWORD PTR [rbp+16], r12	# prev_6->next, next
.L29:
	test	r12, r12	# next
	je	.L33	#,
	mov	QWORD PTR [r12+8], rbp	# next_7->prev, prev
	mov	eax, 1	# D.8560,
	jmp	.L23	#
.L30:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	mov	eax, 0	# D.8560,
	ret
.L31:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	eax, 0	# D.8560,
	jmp	.L23	#
.L33:
	mov	eax, 1	# D.8560,
.L23:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_restore 12
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	List2D_removeByItem, .-List2D_removeByItem
	.globl	List2D_removeByData
	.type	List2D_removeByData, @function
List2D_removeByData:
.LFB98:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+16]	# D.8708, list2d_2(D)->first
	test	rax, rax	# D.8708
	je	.L40	#,
	test	rsi, rsi	# data
	jne	.L42	#,
	jmp	.L41	#
.L38:
	.p2align 4,,8
	jmp	.L38	#
.L39:
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dl	# free_data, free_data
	mov	rsi, rax	#, D.8708
	call	List2D_removeByItem	#
	mov	eax, 1	# D.8550,
	jmp	.L36	#
.L42:
	.cfi_def_cfa_offset 8
	cmp	QWORD PTR [rax], rsi	# MEM[(struct List2DItem *)D.8708_15].data, data
	je	.L39	#,
	.p2align 4,,3
	jmp	.L38	#
.L40:
	mov	eax, 0	# D.8550,
	.p2align 4,,3
	ret
.L41:
	mov	eax, 0	# D.8550,
	.p2align 4,,2
	ret
.L36:
	.cfi_def_cfa_offset 16
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	List2D_removeByData, .-List2D_removeByData
	.globl	List2D_removeByIndex
	.type	List2D_removeByIndex, @function
List2D_removeByIndex:
.LFB99:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR [rdi+16]	# temp, list2d_4(D)->first
	test	rcx, rcx	# temp
	je	.L49	#,
	mov	eax, 0	# D.8543,
	cmp	QWORD PTR [rdi+40], rsi	# list2d_4(D)->count, index
	jb	.L46	#,
	test	rsi, rsi	# index
	je	.L47	#,
	mov	eax, 0	# i,
.L48:
	mov	rcx, QWORD PTR [rcx+16]	# temp, temp_25->next
	add	rax, 1	# i,
	cmp	rax, rsi	# i, index
	jne	.L48	#,
.L47:
	movzx	edx, dl	# free_data, free_data
	mov	rsi, rcx	#, temp
	call	List2D_removeByItem	#
	mov	eax, 1	# D.8543,
	jmp	.L46	#
.L49:
	mov	eax, 0	# D.8543,
.L46:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	List2D_removeByIndex, .-List2D_removeByIndex
	.globl	List2D_removeByCurrent
	.type	List2D_removeByCurrent, @function
List2D_removeByCurrent:
.LFB100:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, sil	# free_data, free_data
	mov	rsi, QWORD PTR [rdi+24]	# list2d_3(D)->current, list2d_3(D)->current
	call	List2D_removeByItem	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	List2D_removeByCurrent, .-List2D_removeByCurrent
	.globl	List2D_seekCurrentToData
	.type	List2D_seekCurrentToData, @function
List2D_seekCurrentToData:
.LFB101:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+16]	# D.8685, list2d_2(D)->first
	test	rax, rax	# D.8685
	je	.L60	#,
	test	rsi, rsi	# data
	jne	.L62	#,
	jmp	.L61	#
.L58:
	.p2align 4,,8
	jmp	.L58	#
.L59:
	mov	QWORD PTR [rdi+24], rax	# list2d_2(D)->current, D.8685
	mov	eax, 1	# D.8529,
	.p2align 4,,2
	ret
.L62:
	cmp	QWORD PTR [rax], rsi	# MEM[(struct List2DItem *)D.8685_13].data, data
	je	.L59	#,
	jmp	.L58	#
.L60:
	mov	eax, 0	# D.8529,
	.p2align 4,,3
	ret
.L61:
	mov	eax, 0	# D.8529,
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE101:
	.size	List2D_seekCurrentToData, .-List2D_seekCurrentToData
	.globl	List2D_seekCurrentToIndex
	.type	List2D_seekCurrentToIndex, @function
List2D_seekCurrentToIndex:
.LFB102:
	.cfi_startproc
	mov	rdx, QWORD PTR [rdi+16]	# temp, list2d_4(D)->first
	test	rdx, rdx	# temp
	je	.L67	#,
	mov	eax, 0	# D.8523,
	cmp	QWORD PTR [rdi+40], rsi	# list2d_4(D)->count, index
	jb	.L64	#,
	test	rsi, rsi	# index
	je	.L65	#,
	mov	eax, 0	# i,
.L66:
	mov	rdx, QWORD PTR [rdx+16]	# temp, temp_23->next
	add	rax, 1	# i,
	cmp	rax, rsi	# i, index
	jne	.L66	#,
.L65:
	mov	QWORD PTR [rdi+24], rdx	# list2d_4(D)->current, temp
	mov	eax, 1	# D.8523,
	ret
.L67:
	mov	eax, 0	# D.8523,
.L64:
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	List2D_seekCurrentToIndex, .-List2D_seekCurrentToIndex
	.globl	List2D_seekCurrentToFirst
	.type	List2D_seekCurrentToFirst, @function
List2D_seekCurrentToFirst:
.LFB103:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+16]	# list2d_1(D)->first, list2d_1(D)->first
	mov	QWORD PTR [rdi+24], rax	# list2d_1(D)->current, list2d_1(D)->first
	ret
	.cfi_endproc
.LFE103:
	.size	List2D_seekCurrentToFirst, .-List2D_seekCurrentToFirst
	.globl	List2D_seekCurrentToLast
	.type	List2D_seekCurrentToLast, @function
List2D_seekCurrentToLast:
.LFB104:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+32]	# list2d_1(D)->last, list2d_1(D)->last
	mov	QWORD PTR [rdi+24], rax	# list2d_1(D)->current, list2d_1(D)->last
	ret
	.cfi_endproc
.LFE104:
	.size	List2D_seekCurrentToLast, .-List2D_seekCurrentToLast
	.globl	List2D_seekCurrentToPrevious
	.type	List2D_seekCurrentToPrevious, @function
List2D_seekCurrentToPrevious:
.LFB105:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+16]	# D.8671, list2d_2(D)->first
	test	rax, rax	# D.8671
	je	.L74	#,
	mov	rdx, QWORD PTR [rdi+24]	# D.8511, list2d_2(D)->current
	cmp	rdx, rax	# D.8511, D.8671
	je	.L75	#,
	mov	rax, QWORD PTR [rdx+8]	# D.8514, D.8511_4->prev
	mov	QWORD PTR [rdi+24], rax	# list2d_2(D)->current, D.8514
	mov	eax, 1	# D.8513,
	ret
.L74:
	mov	eax, 0	# D.8513,
	ret
.L75:
	mov	eax, 0	# D.8513,
	ret
	.cfi_endproc
.LFE105:
	.size	List2D_seekCurrentToPrevious, .-List2D_seekCurrentToPrevious
	.globl	List2D_seekCurrentToNext
	.type	List2D_seekCurrentToNext, @function
List2D_seekCurrentToNext:
.LFB106:
	.cfi_startproc
	cmp	QWORD PTR [rdi+16], 0	# list2d_2(D)->first,
	je	.L78	#,
	mov	rax, QWORD PTR [rdi+24]	# D.8502, list2d_2(D)->current
	cmp	rax, QWORD PTR [rdi+32]	# D.8502, list2d_2(D)->last
	je	.L79	#,
	mov	rax, QWORD PTR [rax+16]	# D.8505, D.8502_4->next
	mov	QWORD PTR [rdi+24], rax	# list2d_2(D)->current, D.8505
	mov	eax, 1	# D.8504,
	ret
.L78:
	mov	eax, 0	# D.8504,
	ret
.L79:
	mov	eax, 0	# D.8504,
	ret
	.cfi_endproc
.LFE106:
	.size	List2D_seekCurrentToNext, .-List2D_seekCurrentToNext
	.globl	List2D_replaceCurrent
	.type	List2D_replaceCurrent, @function
List2D_replaceCurrent:
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
	mov	rbx, rdi	# list2d, list2d
	mov	r12, rsi	# data, data
	mov	ebp, edx	# code, code
	cmp	QWORD PTR [rdi+16], 0	# list2d_2(D)->first,
	je	.L81	#,
	mov	rax, QWORD PTR [rdi+24]	# D.8492, list2d_2(D)->current
	test	rax, rax	# D.8492
	jne	.L82	#,
.L81:
	mov	ecx, 1	#,
	mov	edx, ebp	#, code
	mov	rsi, r12	#, data
	mov	rdi, rbx	#, list2d
	call	List2D_addLast	#
	jmp	.L83	#
.L82:
	test	cl, cl	# free_data
	je	.L84	#,
	mov	edx, 176	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, QWORD PTR [rax]	#, D.8492_4->data
	call	wfree	#
.L84:
	mov	rax, QWORD PTR [rbx+24]	# D.8492, list2d_2(D)->current
	mov	QWORD PTR [rax], r12	# D.8492_8->data, data
	mov	rax, QWORD PTR [rbx+24]	# D.8492, list2d_2(D)->current
	mov	DWORD PTR [rax+24], ebp	# D.8492_10->code, code
	mov	eax, 1	# D.8493,
.L83:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	List2D_replaceCurrent, .-List2D_replaceCurrent
	.globl	List2D_getCount
	.type	List2D_getCount, @function
List2D_getCount:
.LFB108:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+40]	# list2d_1(D)->count, list2d_1(D)->count
	ret
	.cfi_endproc
.LFE108:
	.size	List2D_getCount, .-List2D_getCount
	.globl	List2D_isEmpty
	.type	List2D_isEmpty, @function
List2D_isEmpty:
.LFB109:
	.cfi_startproc
	cmp	QWORD PTR [rdi+16], 0	# list2d_1(D)->first,
	sete	al	#, tmp65
	ret
	.cfi_endproc
.LFE109:
	.size	List2D_isEmpty, .-List2D_isEmpty
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
