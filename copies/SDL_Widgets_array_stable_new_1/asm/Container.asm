	.file	"Container.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Container.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Container.asm
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
	.globl	Container_init_type
	.type	Container_init_type, @function
Container_init_type:
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# container, container
	mov	ebp, esi	# container_type, container_type
	mov	esi, 9	#,
	call	Widget_init_type	#
	mov	DWORD PTR [rbx+152], ebp	# container_1(D)->type, container_type
	mov	WORD PTR [rbx+148], 0	# container_1(D)->padx,
	mov	WORD PTR [rbx+150], 0	# container_1(D)->pady,
	mov	DWORD PTR [rbx+144], 15592683	# container_1(D)->color,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Container_init_type, .-Container_init_type
	.globl	Container_destroy
	.type	Container_destroy, @function
Container_destroy:
.LFB94:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Container_destroy, .-Container_destroy
	.globl	Container_dragItems
	.type	Container_dragItems, @function
Container_dragItems:
.LFB95:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [rdi+152]	# container_1(D)->type, container_1(D)->type
	test	eax, eax	# container_1(D)->type
	je	.L7	#,
	cmp	eax, 1	# container_1(D)->type,
	jne	.L5	#,
	jmp	.L8	#
.L7:
	movsx	edx, dx	# dy, dy
	movsx	esi, si	# dx, dx
	call	StackList_dragItems	#
	.p2align 4,,2
	jmp	.L5	#
.L8:
	movsx	edx, dx	# dy, dy
	movsx	esi, si	# dx, dx
	call	Grid_dragItems	#
.L5:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Container_dragItems, .-Container_dragItems
	.globl	Container_draw
	.type	Container_draw, @function
Container_draw:
.LFB96:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [rdi+152]	# container_1(D)->type, container_1(D)->type
	test	eax, eax	# container_1(D)->type
	je	.L12	#,
	cmp	eax, 1	# container_1(D)->type,
	jne	.L10	#,
	jmp	.L13	#
.L12:
	movzx	edx, dl	# flip, flip
	.p2align 4,,5
	call	StackList_draw	#
	.p2align 4,,5
	jmp	.L10	#
.L13:
	movzx	edx, dl	# flip, flip
	call	Grid_draw	#
.L10:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE96:
	.size	Container_draw, .-Container_draw
	.globl	Container_mevent
	.type	Container_mevent, @function
Container_mevent:
.LFB97:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [rdi+152]	# container_1(D)->type, container_1(D)->type
	test	eax, eax	# container_1(D)->type
	je	.L17	#,
	cmp	eax, 1	# container_1(D)->type,
	jne	.L15	#,
	jmp	.L18	#
.L17:
	.p2align 4,,8
	call	StackList_mevent	#
	.p2align 4,,8
	jmp	.L15	#
.L18:
	.p2align 4,,8
	call	Grid_mevent	#
.L15:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE97:
	.size	Container_mevent, .-Container_mevent
	.globl	Container_refresh
	.type	Container_refresh, @function
Container_refresh:
.LFB98:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# container, container
	mov	eax, DWORD PTR [rdi+152]	# container_1(D)->type, container_1(D)->type
	test	eax, eax	# container_1(D)->type
	je	.L22	#,
	cmp	eax, 1	# container_1(D)->type,
	jne	.L20	#,
	jmp	.L23	#
.L22:
	.p2align 4,,8
	call	StackList_validate	#
	mov	rdi, rbx	#, container
	.p2align 4,,5
	call	StackList_refresh	#
	.p2align 4,,2
	jmp	.L20	#
.L23:
	.p2align 4,,5
	call	Grid_refresh	#
.L20:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,7
	ret
	.cfi_endproc
.LFE98:
	.size	Container_refresh, .-Container_refresh
	.globl	Container_setVisible
	.type	Container_setVisible, @function
Container_setVisible:
.LFB99:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, DWORD PTR [rdi+152]	# container_1(D)->type, container_1(D)->type
	test	eax, eax	# container_1(D)->type
	je	.L27	#,
	cmp	eax, 1	# container_1(D)->type,
	jne	.L25	#,
	jmp	.L28	#
.L27:
	movzx	esi, sil	# vis, vis
	call	StackList_setVisible	#
	.p2align 4,,4
	jmp	.L25	#
.L28:
	movzx	esi, sil	# vis, vis
	call	Grid_setVisible	#
.L25:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Container_setVisible, .-Container_setVisible
	.globl	Container_setPadding
	.type	Container_setPadding, @function
Container_setPadding:
.LFB100:
	.cfi_startproc
	mov	WORD PTR [rdi+148], si	# container_1(D)->padx, padx
	mov	WORD PTR [rdi+150], dx	# container_1(D)->pady, pady
	ret
	.cfi_endproc
.LFE100:
	.size	Container_setPadding, .-Container_setPadding
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"TOP"
.LC1:
	.string	"BOTTOM"
.LC2:
	.string	"CENTER"
.LC3:
	.string	"LEFT"
.LC4:
	.string	"RIGHT"
.LC5:
	.string	"UNKNOWN"
	.text
	.globl	Container_alignmentToString
	.type	Container_alignmentToString, @function
Container_alignmentToString:
.LFB101:
	.cfi_startproc
	cmp	edi, 5	# align,
	ja	.L32	#,
	mov	edi, edi	# align, align
	jmp	[QWORD PTR .L38[0+rdi*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L38:
	.quad	.L32
	.quad	.L33
	.quad	.L39
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.text
.L33:
	mov	eax, OFFSET FLAT:.LC0	# D.8830,
	ret
.L35:
	mov	eax, OFFSET FLAT:.LC2	# D.8830,
	ret
.L36:
	mov	eax, OFFSET FLAT:.LC3	# D.8830,
	ret
.L37:
	mov	eax, OFFSET FLAT:.LC4	# D.8830,
	ret
.L32:
	mov	eax, OFFSET FLAT:.LC5	# D.8830,
	ret
.L39:
	mov	eax, OFFSET FLAT:.LC1	# D.8830,
	ret
	.cfi_endproc
.LFE101:
	.size	Container_alignmentToString, .-Container_alignmentToString
	.section	.rodata.str1.1
.LC6:
	.string	"Container.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"Container::Container_createSurfaceIfNeeded()> CreateRGBSurface of container failed: %s\n"
	.align 8
.LC8:
	.string	"Container::Container_createSurfaceIfNeeded()> Failed to fill background surface (FillRect)\n"
	.text
	.globl	Container_createSurfaceIfNeeded
	.type	Container_createSurfaceIfNeeded, @function
Container_createSurfaceIfNeeded:
.LFB102:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# container, container
	mov	rdi, QWORD PTR [rdi+48]	# D.8805, MEM[(struct Widget *)container_2(D)].surf
	test	rdi, rdi	# D.8805
	je	.L41	#,
	movzx	eax, WORD PTR [rbx+60]	# MEM[(struct Widget *)container_2(D)].pos.w, MEM[(struct Widget *)container_2(D)].pos.w
	cmp	DWORD PTR [rdi+16], eax	# D.8805_5->w, MEM[(struct Widget *)container_2(D)].pos.w
	jge	.L42	#,
	mov	edx, 139	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wSDL_FreeSurface	#
	jmp	.L41	#
.L45:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8821
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)container_2(D)].visible,
	jmp	.L40	#
.L46:
	mov	edx, DWORD PTR [rbx+144]	# container_2(D)->color, container_2(D)->color
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.8824
	je	.L44	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 91	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)container_2(D)].visible,
	jmp	.L40	#
.L44:
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)container_2(D)].visible,
	mov	BYTE PTR [rbx+132], 1	# MEM[(struct Widget *)container_2(D)].need_reload,
	jmp	.L40	#
.L41:
	movzx	esi, WORD PTR [rbx+62]	# MEM[(struct Widget *)container_2(D)].pos.h, MEM[(struct Widget *)container_2(D)].pos.h
	movzx	edi, WORD PTR [rbx+60]	# MEM[(struct Widget *)container_2(D)].pos.w, MEM[(struct Widget *)container_2(D)].pos.w
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)container_2(D)].surf, D.8818
	mov	rdi, rax	# D.8805, D.8818
	test	rax, rax	# D.8818
	jne	.L46	#,
	jmp	.L45	#
.L42:
	mov	rdi, QWORD PTR [rbx+48]	# D.8805, MEM[(struct Widget *)container_2(D)].surf
	jmp	.L46	#
.L40:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,6
	ret
	.cfi_endproc
.LFE102:
	.size	Container_createSurfaceIfNeeded, .-Container_createSurfaceIfNeeded
	.section	.rodata.str1.1
.LC9:
	.string	"(null)"
.LC10:
	.string	"container_item=NULL"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"ContainerItem: widget=%s, margins=[%hu,%hu,%hu,%hu], halign=%s, valign=%s, cell_rect=[%hu,%hu,%hu,%hu], cell_max=(%hu,%hu)"
	.text
	.globl	ContainerItem_toString
	.type	ContainerItem_toString, @function
ContainerItem_toString:
.LFB103:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 200	#,
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# container_item, container_item
	test	rdi, rdi	# container_item
	je	.L51	#,
	movzx	r15d, WORD PTR [rdi+26]	# D.8776, container_item_3(D)->maxy
	movzx	r14d, WORD PTR [rdi+24]	# D.8778, container_item_3(D)->maxx
	movzx	r13d, WORD PTR [rdi+14]	# D.8780, container_item_3(D)->cell_rect.h
	movzx	r12d, WORD PTR [rdi+12]	# D.8782, container_item_3(D)->cell_rect.w
	movsx	ebp, WORD PTR [rdi+10]	# D.8784, container_item_3(D)->cell_rect.y
	movsx	eax, WORD PTR [rdi+8]	#, container_item_3(D)->cell_rect.x
	mov	DWORD PTR [rsp+108], eax	# %sfp,
	mov	edi, DWORD PTR [rdi+32]	# container_item_3(D)->valign, container_item_3(D)->valign
	call	Container_alignmentToString	#
	mov	QWORD PTR [rsp+112], rax	# %sfp,
	mov	edi, DWORD PTR [rbx+28]	# container_item_3(D)->halign, container_item_3(D)->halign
	call	Container_alignmentToString	#
	mov	QWORD PTR [rsp+120], rax	# %sfp,
	movzx	eax, WORD PTR [rbx+18]	#, container_item_3(D)->margin_right
	mov	DWORD PTR [rsp+128], eax	# %sfp,
	movzx	eax, WORD PTR [rbx+22]	#, container_item_3(D)->margin_bottom
	mov	DWORD PTR [rsp+132], eax	# %sfp,
	movzx	eax, WORD PTR [rbx+16]	#, container_item_3(D)->margin_left
	mov	DWORD PTR [rsp+136], eax	# %sfp,
	movzx	eax, WORD PTR [rbx+20]	#, container_item_3(D)->margin_top
	mov	DWORD PTR [rsp+140], eax	# %sfp,
	mov	rdi, QWORD PTR [rbx]	# D.8800, container_item_3(D)->widget
	mov	r9d, OFFSET FLAT:.LC9	# iftmp.0,
	test	rdi, rdi	# D.8800
	je	.L50	#,
	call	Widget_toString	#
	mov	r9, rax	# iftmp.0,
.L50:
	mov	DWORD PTR [rsp+88], r15d	#, D.8776
	mov	DWORD PTR [rsp+80], r14d	#, D.8778
	mov	DWORD PTR [rsp+72], r13d	#, D.8780
	mov	DWORD PTR [rsp+64], r12d	#, D.8782
	mov	DWORD PTR [rsp+56], ebp	#, D.8784
	mov	eax, DWORD PTR [rsp+108]	#, %sfp
	mov	DWORD PTR [rsp+48], eax	#,
	mov	rax, QWORD PTR [rsp+112]	#, %sfp
	mov	QWORD PTR [rsp+40], rax	#,
	mov	rax, QWORD PTR [rsp+120]	#, %sfp
	mov	QWORD PTR [rsp+32], rax	#,
	mov	eax, DWORD PTR [rsp+128]	#, %sfp
	mov	DWORD PTR [rsp+24], eax	#,
	mov	eax, DWORD PTR [rsp+132]	#, %sfp
	mov	DWORD PTR [rsp+16], eax	#,
	mov	eax, DWORD PTR [rsp+136]	#, %sfp
	mov	DWORD PTR [rsp+8], eax	#,
	mov	eax, DWORD PTR [rsp+140]	#, %sfp
	mov	DWORD PTR [rsp], eax	#,
	mov	r8d, OFFSET FLAT:.LC11	#,
	mov	ecx, 600	#,
	mov	edx, 1	#,
	mov	esi, 600	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.8774,
	jmp	.L49	#
.L51:
	mov	eax, OFFSET FLAT:.LC10	# D.8774,
.L49:
	mov	rbx, QWORD PTR [rsp+152]	#,
	mov	rbp, QWORD PTR [rsp+160]	#,
	mov	r12, QWORD PTR [rsp+168]	#,
	mov	r13, QWORD PTR [rsp+176]	#,
	mov	r14, QWORD PTR [rsp+184]	#,
	mov	r15, QWORD PTR [rsp+192]	#,
	add	rsp, 200	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	ContainerItem_toString, .-ContainerItem_toString
	.section	.rodata.str1.1
.LC12:
	.string	"container=NULL"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Container(%s): color=0x%X, padx=%hu, pady=%hu"
	.text
	.globl	Container_toString
	.type	Container_toString, @function
Container_toString:
.LFB104:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC12	# D.8761,
	test	rdi, rdi	# container
	je	.L59	#,
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movzx	r12d, WORD PTR [rdi+150]	# D.8763, container_2(D)->pady
	movzx	ebp, WORD PTR [rdi+148]	# D.8765, container_2(D)->padx
	mov	ebx, DWORD PTR [rdi+144]	# D.8766, container_2(D)->color
	call	Object_getType	#
	mov	r9, rax	# D.8767,
	mov	DWORD PTR [rsp+16], r12d	#, D.8763
	mov	DWORD PTR [rsp+8], ebp	#, D.8765
	mov	DWORD PTR [rsp], ebx	#, D.8766
	mov	r8d, OFFSET FLAT:.LC13	#,
	mov	ecx, 600	#,
	mov	edx, 1	#,
	mov	esi, 600	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.8761,
	mov	rbx, QWORD PTR [rsp+32]	#,
	mov	rbp, QWORD PTR [rsp+40]	#,
	mov	r12, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_restore 12
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L59:
	rep
	ret
	.cfi_endproc
.LFE104:
	.size	Container_toString, .-Container_toString
	.local	str_id
	.comm	str_id,600,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
