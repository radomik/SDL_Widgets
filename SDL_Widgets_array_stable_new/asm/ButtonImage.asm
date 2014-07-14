	.file	"ButtonImage.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT ButtonImage.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/ButtonImage.asm
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
	.type	ButtonImage_mousePressed, @function
ButtonImage_mousePressed:
.LFB109:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1608], 0	# MEM[(struct ButtonImage *)sender_1(D)].enabled,
	je	.L5	#,
	cmp	BYTE PTR [rsi+10], 1	# screen_3(D)->event.button.button,
	jne	.L5	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+976]	# MEM[(struct Widget *)sender_1(D) + 888B].surf, MEM[(struct Widget *)sender_1(D) + 888B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_1(D)->surf, MEM[(struct Widget *)sender_1(D) + 888B].surf
	mov	BYTE PTR [rdi+161], 1	# sender_1(D)->need_reload,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)sender_1(D)].class, MEM[(struct coObject *)sender_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9949_7->vtable, D.9949_7->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9950_8 + 8B], MEM[(const void * *)D.9950_8 + 8B]
	mov	edx, 1	#,
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9952_10].draw
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L5:
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	ButtonImage_mousePressed, .-ButtonImage_mousePressed
	.type	ButtonImage_mouseEnter, @function
ButtonImage_mouseEnter:
.LFB111:
	.cfi_startproc
	mov	BYTE PTR [rsi+169], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1608], 0	# MEM[(struct ButtonImage *)sender_2(D)].enabled,
	je	.L10	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+616]	# MEM[(struct Widget *)sender_2(D) + 528B].surf, MEM[(struct Widget *)sender_2(D) + 528B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_2(D)->surf, MEM[(struct Widget *)sender_2(D) + 528B].surf
	mov	BYTE PTR [rdi+161], 1	# sender_2(D)->need_reload,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)sender_2(D)].class, MEM[(struct coObject *)sender_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9971_6->vtable, D.9971_6->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9972_7 + 8B], MEM[(const void * *)D.9972_7 + 8B]
	mov	edx, 1	#,
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9974_9].draw
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L10:
	rep
	ret
	.cfi_endproc
.LFE111:
	.size	ButtonImage_mouseEnter, .-ButtonImage_mouseEnter
	.type	ButtonImage_mouseExit, @function
ButtonImage_mouseExit:
.LFB112:
	.cfi_startproc
	mov	BYTE PTR [rsi+169], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1608], 0	# MEM[(struct ButtonImage *)sender_2(D)].enabled,
	je	.L15	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+256]	# MEM[(struct Widget *)sender_2(D) + 168B].surf, MEM[(struct Widget *)sender_2(D) + 168B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_2(D)->surf, MEM[(struct Widget *)sender_2(D) + 168B].surf
	mov	BYTE PTR [rdi+161], 1	# sender_2(D)->need_reload,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)sender_2(D)].class, MEM[(struct coObject *)sender_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9960_6->vtable, D.9960_6->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9961_7 + 8B], MEM[(const void * *)D.9961_7 + 8B]
	mov	edx, 1	#,
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9963_9].draw
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L15:
	rep
	ret
	.cfi_endproc
.LFE112:
	.size	ButtonImage_mouseExit, .-ButtonImage_mouseExit
	.type	ButtonImage_initDefault, @function
ButtonImage_initDefault:
.LFB113:
	.cfi_startproc
	mov	QWORD PTR [rdi+72], OFFSET FLAT:ButtonImage_mouseEnter	# MEM[(struct Widget *)this_1(D)].mevent_internal.mouse_enter,
	mov	QWORD PTR [rdi+80], OFFSET FLAT:ButtonImage_mouseExit	# MEM[(struct Widget *)this_1(D)].mevent_internal.mouse_exit,
	mov	QWORD PTR [rdi+56], OFFSET FLAT:ButtonImage_mousePressed	# MEM[(struct Widget *)this_1(D)].mevent_internal.press,
	mov	QWORD PTR [rdi+64], OFFSET FLAT:ButtonImage_mouseReleased	# MEM[(struct Widget *)this_1(D)].mevent_internal.release,
	mov	BYTE PTR [rdi+160], 1	# MEM[(struct Widget *)this_1(D)].mevent,
	ret
	.cfi_endproc
.LFE113:
	.size	ButtonImage_initDefault, .-ButtonImage_initDefault
	.type	ButtonImage_mouseReleased, @function
ButtonImage_mouseReleased:
.LFB110:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# sender, sender
	cmp	BYTE PTR [rdi+1608], 0	# MEM[(struct ButtonImage *)sender_1(D)].enabled,
	je	.L17	#,
	mov	rbp, rsi	# screen, screen
	movzx	edx, WORD PTR [rsi+14]	# screen_3(D)->event.button.y, screen_3(D)->event.button.y
	movzx	esi, WORD PTR [rsi+12]	# screen_3(D)->event.button.x, screen_3(D)->event.button.x
	call	Widget_contains	#
	test	al, al	# D.9931
	setne	al	#, tmp79
	movzx	eax, al	# tmp79, tmp79
	imul	rax, rax, 360	# tmp80, tmp79,
	mov	rax, QWORD PTR [rbx+256+rax]	# D.9934, MEM[(struct Widget *)D.9933_11].surf
	mov	QWORD PTR [rbx+88], rax	# sender_1(D)->surf, D.9934
	mov	BYTE PTR [rbx+161], 1	# sender_1(D)->need_reload,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)sender_1(D)].class, MEM[(struct coObject *)sender_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9935_13->vtable, D.9935_13->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9936_14 + 8B], MEM[(const void * *)D.9936_14 + 8B]
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, sender
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9938_16].draw
.L17:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	ButtonImage_mouseReleased, .-ButtonImage_mouseReleased
	.globl	ButtonImage_vdestroy
	.type	ButtonImage_vdestroy, @function
ButtonImage_vdestroy:
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
	mov	rbp, rdi	# vthis, vthis
	mov	ebx, 0	# i,
.L21:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 360	# tmp68, i,
	lea	rdi, [rbp+168+rax]	# tmp71,
	call	delete	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L21	#,
	mov	QWORD PTR [rbp+88], 0	# MEM[(struct Widget *)vthis_3(D)].surf,
	mov	rdi, rbp	#, vthis
	call	Widget_vdestroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	ButtonImage_vdestroy, .-ButtonImage_vdestroy
	.globl	ButtonImage_vrefresh
	.type	ButtonImage_vrefresh, @function
ButtonImage_vrefresh:
.LFB107:
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
	mov	ebx, 0	# i,
.L25:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 360	# tmp73, i,
	lea	rax, [rbp+160+rax]	# tmp75,
	lea	rdi, [rax+8]	# D.9984,
	mov	rax, QWORD PTR [rax+8]	# MEM[(struct coObject *)D.9984_5].class, MEM[(struct coObject *)D.9984_5].class
	mov	rax, QWORD PTR [rax+16]	# D.9985_6->vtable, D.9985_6->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9986_7 + 8B], MEM[(const void * *)D.9986_7 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9988_9].refresh
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L25	#,
	mov	rax, QWORD PTR [rbp+256]	# MEM[(struct Widget *)vthis_2(D) + 168B].surf, MEM[(struct Widget *)vthis_2(D) + 168B].surf
	mov	QWORD PTR [rbp+88], rax	# MEM[(struct Widget *)vthis_2(D)].surf, MEM[(struct Widget *)vthis_2(D) + 168B].surf
	movzx	eax, WORD PTR [rbp+268]	# MEM[(struct Widget *)vthis_2(D) + 168B].pos.w, MEM[(struct Widget *)vthis_2(D) + 168B].pos.w
	mov	WORD PTR [rbp+100], ax	# MEM[(struct Widget *)vthis_2(D)].pos.w, MEM[(struct Widget *)vthis_2(D) + 168B].pos.w
	movzx	eax, WORD PTR [rbp+270]	# MEM[(struct Widget *)vthis_2(D) + 168B].pos.h, MEM[(struct Widget *)vthis_2(D) + 168B].pos.h
	mov	WORD PTR [rbp+102], ax	# MEM[(struct Widget *)vthis_2(D)].pos.h, MEM[(struct Widget *)vthis_2(D) + 168B].pos.h
	movzx	eax, BYTE PTR [rbp+327]	# MEM[(struct Widget *)vthis_2(D) + 168B].visible, MEM[(struct Widget *)vthis_2(D) + 168B].visible
	mov	BYTE PTR [rbp+159], al	# MEM[(struct Widget *)vthis_2(D)].visible, MEM[(struct Widget *)vthis_2(D) + 168B].visible
	mov	BYTE PTR [rbp+161], 1	# MEM[(struct Widget *)vthis_2(D)].need_reload,
	mov	rdi, rbp	#, vthis
	call	Widget_updateMaxXY	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	ButtonImage_vrefresh, .-ButtonImage_vrefresh
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
	.text
	.globl	ButtonImage_vtoString
	.type	ButtonImage_vtoString, @function
ButtonImage_vtoString:
.LFB123:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR TO_STRING_NULL_THIS_STR[rip]	# iftmp.0, TO_STRING_NULL_THIS_STR
	mov	rax, rdi	# D.9853, vthis
	add	rax, 168	# D.9853,
	je	.L30	#,
	mov	rdx, QWORD PTR [rdi+168]	# MEM[(struct coObject *)vthis_2(D) + 168B].class, MEM[(struct coObject *)vthis_2(D) + 168B].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9856_5->vtable, D.9856_5->vtable
	mov	rdx, QWORD PTR [rdx]	# *D.9857_6, *D.9857_6
	mov	rdi, rax	#, D.9853
	call	[QWORD PTR [rdx+8]]	# MEM[(struct coIObject *)D.9858_7].toString
	mov	rcx, rax	# iftmp.0,
.L30:
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.9850	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.9850	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE123:
	.size	ButtonImage_vtoString, .-ButtonImage_vtoString
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"%20s:\tWithin context: img_path=%s\n"
	.text
	.globl	ButtonImage_new
	.type	ButtonImage_new, @function
ButtonImage_new:
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
	mov	r12, rsi	# img_path, img_path
	test	rdi, rdi	# this
	jne	.L33	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9768	#,
	call	Static_nullThis2	#
	mov	r8, r12	#, img_path
	mov	ecx, OFFSET FLAT:__FUNCTION__.9768	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L34	#
.L33:
	call	Widget_new	#
	mov	QWORD PTR [rbp+0], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	rdi, rbp	#, this
	call	ButtonImage_initDefault	#
	mov	BYTE PTR [rbp+1608], 1	# this_3(D)->enabled,
	mov	ebx, 0	# i,
.L35:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 360	# tmp68, i,
	lea	rdi, [rbp+168+rax]	# tmp71,
	mov	rsi, r12	#, img_path
	call	LabelImage_new	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L35	#,
.L34:
	mov	rax, rbp	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	ButtonImage_new, .-ButtonImage_new
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"ButtonImage_copy: Passed NULL: this(%p) or src(%p)\n"
	.text
	.globl	ButtonImage_copy
	.type	ButtonImage_copy, @function
ButtonImage_copy:
.LFB115:
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
	mov	rbp, rdi	# this, this
	mov	r12, rsi	# src, src
	test	rsi, rsi	# src
	je	.L43	#,
	test	rdi, rdi	# this
	jne	.L39	#,
.L43:
	mov	r8, r12	#, src
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebp, 0	# this,
	jmp	.L41	#
.L39:
	movzx	r13d, dl	# D.9915, copy_pos
	mov	ecx, 0	#,
	mov	edx, r13d	#, D.9915
	call	Widget_copy	#
	mov	QWORD PTR [rbp+0], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	rdi, rbp	#, this
	call	ButtonImage_initDefault	#
	mov	ebx, 0	# i,
.L42:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 360	# tmp81, i,
	add	rax, 160	# tmp82,
	lea	rsi, [r12+8+rax]	# tmp84,
	lea	rdi, [rbp+8+rax]	# tmp89,
	mov	edx, r13d	#, D.9915
	call	LabelImage_copy	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L42	#,
	movzx	eax, BYTE PTR [r12+1608]	# D.9918, src_5(D)->enabled
	mov	BYTE PTR [rbp+1608], al	# this_3(D)->enabled, D.9918
	mov	rax, QWORD PTR [rbp+256]	# MEM[(struct Widget *)this_3(D) + 168B].surf, MEM[(struct Widget *)this_3(D) + 168B].surf
	mov	QWORD PTR [rbp+88], rax	# MEM[(struct Widget *)this_3(D)].surf, MEM[(struct Widget *)this_3(D) + 168B].surf
	mov	BYTE PTR [rbp+159], 1	# MEM[(struct Widget *)this_3(D)].visible,
.L41:
	mov	rax, rbp	#, this
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
.LFE115:
	.size	ButtonImage_copy, .-ButtonImage_copy
	.globl	ButtonImage_setEnabled
	.type	ButtonImage_setEnabled, @function
ButtonImage_setEnabled:
.LFB116:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1608], sil	# this_2(D)->enabled, sel
	je	.L46	#,
	cmp	sil, 1	# sel,
	sbb	eax, eax	# iftmp.5
	mov	BYTE PTR [rdi+1608], sil	# this_2(D)->enabled, sel
	and	eax, 3	# iftmp.5,
	imul	rax, rax, 360	# tmp67, iftmp.5,
	mov	rax, QWORD PTR [rdi+256+rax]	# D.9906, MEM[(struct Widget *)D.9905_8].surf
	mov	QWORD PTR [rdi+88], rax	# MEM[(struct Widget *)this_2(D)].surf, D.9906
	mov	BYTE PTR [rdi+161], 1	# MEM[(struct Widget *)this_2(D)].need_reload,
.L46:
	rep
	ret
	.cfi_endproc
.LFE116:
	.size	ButtonImage_setEnabled, .-ButtonImage_setEnabled
	.globl	ButtonImage_setBorder
	.type	ButtonImage_setBorder, @function
ButtonImage_setBorder:
.LFB117:
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
	mov	r13, rdi	# this, this
	mov	r12d, edx	# rgb, rgb
	mov	ebx, 0	# i,
	movzx	ebp, si	# bord_width, bord_width
.L51:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 360	# tmp70, i,
	lea	rdi, [r13+168+rax]	# tmp73,
	mov	edx, r12d	#, rgb
	mov	esi, ebp	#, bord_width
	call	LabelImage_setBorder	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L51	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	ButtonImage_setBorder, .-ButtonImage_setBorder
	.globl	ButtonImage_setFixedWidth
	.type	ButtonImage_setFixedWidth, @function
ButtonImage_setFixedWidth:
.LFB118:
	.cfi_startproc
	mov	BYTE PTR [rdi+526], sil	# this_3(D)->labelimage[0].fixed_width, sel
	mov	BYTE PTR [rdi+886], sil	# this_3(D)->labelimage[1].fixed_width, sel
	mov	BYTE PTR [rdi+1246], sil	# this_3(D)->labelimage[2].fixed_width, sel
	mov	BYTE PTR [rdi+1606], sil	# this_3(D)->labelimage[3].fixed_width, sel
	ret
	.cfi_endproc
.LFE118:
	.size	ButtonImage_setFixedWidth, .-ButtonImage_setFixedWidth
	.globl	ButtonImage_setImage
	.type	ButtonImage_setImage, @function
ButtonImage_setImage:
.LFB119:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rdi	# this, this
	mov	rbp, rsi	# image, image
	mov	ebx, 0	# i,
.L56:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 360	# tmp66, i,
	lea	rdi, [r12+168+rax]	# tmp69,
	mov	rsi, rbp	#, image
	call	LabelImage_setImage	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L56	#,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	ButtonImage_setImage, .-ButtonImage_setImage
	.globl	ButtonImage_scale
	.type	ButtonImage_scale, @function
ButtonImage_scale:
.LFB120:
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
	mov	r14, rdi	# this, this
	movsd	QWORD PTR [rsp], xmm0	# %sfp, xscale
	movd	r15, xmm1	# yscale, yscale
	mov	DWORD PTR [rsp+12], esi	# %sfp, smooth
	mov	WORD PTR [rdi+102], 0	# MEM[(struct Widget *)this_11(D)].pos.h,
	mov	WORD PTR [rdi+100], 0	# MEM[(struct Widget *)this_11(D)].pos.w,
	mov	r13d, 0	# h1,
	mov	r12d, 0	# w1,
	mov	ebx, 0	# i,
.L60:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 360	# tmp74, i,
	lea	rbp, [r14+168+rax]	# lbimg,
	mov	esi, DWORD PTR [rsp+12]	#, %sfp
	movd	xmm1, r15	#, yscale
	movsd	xmm0, QWORD PTR [rsp]	#, %sfp
	mov	rdi, rbp	#, lbimg
	call	LabelImage_scale	#
	movzx	eax, WORD PTR [rbp+100]	# MEM[(struct Widget *)lbimg_13].pos.w, MEM[(struct Widget *)lbimg_13].pos.w
	cmp	r12w, ax	# w1, MEM[(struct Widget *)lbimg_13].pos.w
	cmovb	r12d, eax	# w1,, w1, MEM[(struct Widget *)lbimg_13].pos.w
	movzx	eax, WORD PTR [rbp+102]	# MEM[(struct Widget *)lbimg_13].pos.h, MEM[(struct Widget *)lbimg_13].pos.h
	cmp	r13w, ax	# h1, MEM[(struct Widget *)lbimg_13].pos.h
	cmovb	r13d, eax	# h1,, h1, MEM[(struct Widget *)lbimg_13].pos.h
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L60	#,
	movzx	edx, r13w	# h1, h1
	movzx	esi, r12w	# w1, w1
	mov	rdi, r14	#, this
	call	Widget_setSizeUpdatePos	#
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
.LFE120:
	.size	ButtonImage_scale, .-ButtonImage_scale
	.globl	ButtonImage_applyDefaultStyle
	.type	ButtonImage_applyDefaultStyle, @function
ButtonImage_applyDefaultStyle:
.LFB121:
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
	mov	r14d, ecx	# padx, padx
	mov	r15d, r8d	# pady, pady
	mov	BYTE PTR [rsp+15], r9b	# %sfp, fixed_width
	mov	WORD PTR [rdi+96], si	# MEM[(struct Widget *)this_3(D)].pos.x, posx
	mov	WORD PTR [rdi+98], dx	# MEM[(struct Widget *)this_3(D)].pos.y, posy
	lea	r13, [rdi+168]	# labimg,
	lea	r12d, [r15+2]	# tmp87,
	movzx	r12d, r12w	# D.9878, tmp87
	lea	ebp, [r14+2]	# tmp88,
	movzx	ebp, bp	# D.9879, tmp88
	mov	edx, r12d	#, D.9878
	mov	esi, ebp	#, D.9879
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14417872	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+528]	# labimg,
	mov	edx, r12d	#, D.9878
	mov	esi, ebp	#, D.9879
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 11927454	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+888]	# labimg,
	movzx	edx, r15w	# pady, pady
	movzx	esi, r14w	# padx, padx
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 16768601	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 16711680	#,
	mov	esi, 7	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+1248]	# labimg,
	mov	edx, r12d	#, D.9878
	mov	esi, ebp	#, D.9879
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14671839	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 5	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_3(D)].class, MEM[(struct coObject *)this_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9882_22->vtable, D.9882_22->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9883_23 + 8B], MEM[(const void * *)D.9883_23 + 8B]
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9885_25].refresh
	movzx	esi, BYTE PTR [rsp+15]	# fixed_width, %sfp
	mov	rdi, rbx	#, this
	call	ButtonImage_setFixedWidth	#
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
.LFE121:
	.size	ButtonImage_applyDefaultStyle, .-ButtonImage_applyDefaultStyle
	.globl	ButtonImage_applyDefaultStyle3
	.type	ButtonImage_applyDefaultStyle3, @function
ButtonImage_applyDefaultStyle3:
.LFB122:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rbx	#,
	mov	QWORD PTR [rsp-32], rbp	#,
	mov	QWORD PTR [rsp-24], r12	#,
	mov	QWORD PTR [rsp-16], r13	#,
	mov	QWORD PTR [rsp-8], r14	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	mov	rbx, rdi	# this, this
	mov	r14d, r9d	# fixed_width, fixed_width
	mov	WORD PTR [rdi+96], si	# MEM[(struct Widget *)this_3(D)].pos.x, posx
	mov	WORD PTR [rdi+98], dx	# MEM[(struct Widget *)this_3(D)].pos.y, posy
	lea	r13, [rdi+168]	# labimg,
	movzx	r12d, r8w	# D.9868, pady
	movzx	ebp, cx	# D.9869, padx
	mov	edx, r12d	#, D.9868
	mov	esi, ebp	#, D.9869
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14417872	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+528]	# labimg,
	mov	edx, r12d	#, D.9868
	mov	esi, ebp	#, D.9869
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 11927454	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+888]	# labimg,
	mov	edx, r12d	#, D.9868
	mov	esi, ebp	#, D.9869
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 16768601	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 16711680	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+1248]	# labimg,
	mov	edx, r12d	#, D.9868
	mov	esi, ebp	#, D.9869
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14671839	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_3(D)].class, MEM[(struct coObject *)this_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9870_20->vtable, D.9870_20->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9871_21 + 8B], MEM[(const void * *)D.9871_21 + 8B]
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9873_23].refresh
	movzx	esi, r14b	# fixed_width, fixed_width
	mov	rdi, rbx	#, this
	call	ButtonImage_setFixedWidth	#
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE122:
	.size	ButtonImage_applyDefaultStyle3, .-ButtonImage_applyDefaultStyle3
	.globl	ButtonImage_class
	.data
	.align 8
	.type	ButtonImage_class, @object
	.size	ButtonImage_class, 8
ButtonImage_class:
	.quad	type
	.comm	IMAGE_SUPPORTED_FILES,8,8
	.section	.rodata.str1.1
.LC3:
	.string	"ButtonImage"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	1616
# name:
	.quad	.LC3
# vtable:
	.quad	vtable
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9768, @object
	.size	__FUNCTION__.9768, 16
__FUNCTION__.9768:
	.string	"ButtonImage_new"
	.local	str_id.9850
	.comm	str_id.9850,128,32
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
	.quad	ButtonImage_vdestroy
# toString:
	.quad	ButtonImage_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	ButtonImage_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
