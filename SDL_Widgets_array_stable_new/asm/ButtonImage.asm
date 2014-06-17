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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
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
	.type	ButtonImage_initDefault, @function
ButtonImage_initDefault:
.LFB99:
	.cfi_startproc
	mov	QWORD PTR [rdi+72], OFFSET FLAT:ButtonImage_mouseEnter	# MEM[(struct Widget *)this_1(D)].mevent_internal.mouse_enter,
	mov	QWORD PTR [rdi+80], OFFSET FLAT:ButtonImage_mouseExit	# MEM[(struct Widget *)this_1(D)].mevent_internal.mouse_exit,
	mov	QWORD PTR [rdi+56], OFFSET FLAT:ButtonImage_mousePressed	# MEM[(struct Widget *)this_1(D)].mevent_internal.press,
	mov	QWORD PTR [rdi+64], OFFSET FLAT:ButtonImage_mouseReleased	# MEM[(struct Widget *)this_1(D)].mevent_internal.release,
	mov	BYTE PTR [rdi+168], 1	# MEM[(struct Widget *)this_1(D)].mevent,
	ret
	.cfi_endproc
.LFE99:
	.size	ButtonImage_initDefault, .-ButtonImage_initDefault
	.globl	ButtonImage_vrefresh
	.type	ButtonImage_vrefresh, @function
ButtonImage_vrefresh:
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
	mov	rbx, rdi	# vthis, vthis
	mov	ebp, 0	# i,
.L3:
	movsx	rax, ebp	# i, i
	imul	rax, rax, 376	# tmp78, i,
	lea	rdi, [rbx+176+rax]	# tmp80,
	call	Widget_refresh	#
	add	ebp, 1	# i,
	cmp	ebp, 4	# i,
	jne	.L3	#,
	mov	rax, QWORD PTR [rbx+264]	# MEM[(struct Widget *)vthis_2(D) + 176B].surf, MEM[(struct Widget *)vthis_2(D) + 176B].surf
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_2(D)].surf, MEM[(struct Widget *)vthis_2(D) + 176B].surf
	movzx	edx, WORD PTR [rbx+276]	# D.9372, MEM[(struct Widget *)vthis_2(D) + 176B].pos.w
	mov	WORD PTR [rbx+100], dx	# MEM[(struct Widget *)vthis_2(D)].pos.w, D.9372
	movzx	eax, WORD PTR [rbx+278]	# D.9373, MEM[(struct Widget *)vthis_2(D) + 176B].pos.h
	mov	WORD PTR [rbx+102], ax	# MEM[(struct Widget *)vthis_2(D)].pos.h, D.9373
	movzx	ecx, BYTE PTR [rbx+343]	# MEM[(struct Widget *)vthis_2(D) + 176B].visible, MEM[(struct Widget *)vthis_2(D) + 176B].visible
	mov	BYTE PTR [rbx+167], cl	# MEM[(struct Widget *)vthis_2(D)].visible, MEM[(struct Widget *)vthis_2(D) + 176B].visible
	mov	BYTE PTR [rbx+169], 1	# MEM[(struct Widget *)vthis_2(D)].need_reload,
	add	dx, WORD PTR [rbx+96]	# tmp83, MEM[(struct Widget *)vthis_2(D)].pos.x
	mov	WORD PTR [rbx+152], dx	# MEM[(struct Widget *)vthis_2(D)].maxx, tmp83
	add	ax, WORD PTR [rbx+98]	# tmp85, MEM[(struct Widget *)vthis_2(D)].pos.y
	mov	WORD PTR [rbx+154], ax	# MEM[(struct Widget *)vthis_2(D)].maxy, tmp85
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	ButtonImage_vrefresh, .-ButtonImage_vrefresh
	.type	ButtonImage_mouseReleased, @function
ButtonImage_mouseReleased:
.LFB96:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# sender, sender
	cmp	BYTE PTR [rdi+1680], 0	# MEM[(struct ButtonImage *)sender_1(D)].enabled,
	je	.L6	#,
	mov	rbp, rsi	# screen, screen
	movzx	edx, WORD PTR [rsi+14]	# screen_3(D)->event.button.y, screen_3(D)->event.button.y
	movzx	esi, WORD PTR [rsi+12]	# screen_3(D)->event.button.x, screen_3(D)->event.button.x
	call	Widget_contains	#
	test	al, al	# D.9337
	setne	al	#, tmp75
	movzx	eax, al	# tmp75, tmp75
	imul	rax, rax, 376	# tmp76, tmp75,
	mov	rax, QWORD PTR [rbx+264+rax]	# D.9340, MEM[(struct Widget *)D.9339_11].surf
	mov	QWORD PTR [rbx+88], rax	# sender_1(D)->surf, D.9340
	mov	BYTE PTR [rbx+169], 1	# sender_1(D)->need_reload,
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, sender
	call	Widget_draw	#
.L6:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	ButtonImage_mouseReleased, .-ButtonImage_mouseReleased
	.type	ButtonImage_mousePressed, @function
ButtonImage_mousePressed:
.LFB95:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1680], 0	# MEM[(struct ButtonImage *)sender_1(D)].enabled,
	je	.L13	#,
	cmp	BYTE PTR [rsi+10], 1	# screen_3(D)->event.button.button,
	jne	.L13	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+1016]	# MEM[(struct Widget *)sender_1(D) + 928B].surf, MEM[(struct Widget *)sender_1(D) + 928B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_1(D)->surf, MEM[(struct Widget *)sender_1(D) + 928B].surf
	mov	BYTE PTR [rdi+169], 1	# sender_1(D)->need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L13:
	rep
	ret
	.cfi_endproc
.LFE95:
	.size	ButtonImage_mousePressed, .-ButtonImage_mousePressed
	.type	ButtonImage_mouseExit, @function
ButtonImage_mouseExit:
.LFB98:
	.cfi_startproc
	mov	BYTE PTR [rsi+121], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1680], 0	# MEM[(struct ButtonImage *)sender_2(D)].enabled,
	je	.L18	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+264]	# MEM[(struct Widget *)sender_2(D) + 176B].surf, MEM[(struct Widget *)sender_2(D) + 176B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_2(D)->surf, MEM[(struct Widget *)sender_2(D) + 176B].surf
	mov	BYTE PTR [rdi+169], 1	# sender_2(D)->need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L18:
	rep
	ret
	.cfi_endproc
.LFE98:
	.size	ButtonImage_mouseExit, .-ButtonImage_mouseExit
	.type	ButtonImage_mouseEnter, @function
ButtonImage_mouseEnter:
.LFB97:
	.cfi_startproc
	mov	BYTE PTR [rsi+121], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1680], 0	# MEM[(struct ButtonImage *)sender_2(D)].enabled,
	je	.L23	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+640]	# MEM[(struct Widget *)sender_2(D) + 552B].surf, MEM[(struct Widget *)sender_2(D) + 552B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_2(D)->surf, MEM[(struct Widget *)sender_2(D) + 552B].surf
	mov	BYTE PTR [rdi+169], 1	# sender_2(D)->need_reload,
	mov	edx, 1	#,
	call	Widget_draw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L23:
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	ButtonImage_mouseEnter, .-ButtonImage_mouseEnter
	.globl	ButtonImage_vdestroy
	.type	ButtonImage_vdestroy, @function
ButtonImage_vdestroy:
.LFB94:
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
	mov	esi, OFFSET FLAT:__FUNCTION__.9170	#,
	call	Static_printObj2	#
	mov	ebx, 0	# i,
.L25:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 376	# tmp65, i,
	lea	rdi, [rbp+176+rax]	# tmp67,
	call	delete	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L25	#,
	mov	QWORD PTR [rbp+88], 0	# MEM[(struct Widget *)vthis_2(D)].surf,
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
.LFE94:
	.size	ButtonImage_vdestroy, .-ButtonImage_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"%20s:\tWithin context: img_path=%s\n"
	.text
	.globl	ButtonImage_new
	.type	ButtonImage_new, @function
ButtonImage_new:
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
	mov	rbp, rdi	# this, this
	mov	r12, rsi	# img_path, img_path
	test	rdi, rdi	# this
	jne	.L29	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9199	#,
	call	Static_nullThis2	#
	mov	r8, r12	#, img_path
	mov	ecx, OFFSET FLAT:__FUNCTION__.9199	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L30	#
.L29:
	call	Widget_new	#
	mov	QWORD PTR [rbp+0], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9199	#,
	mov	rdi, rbp	#, this
	call	Static_printObj2	#
	mov	rdi, rbp	#, this
	call	ButtonImage_initDefault	#
	mov	BYTE PTR [rbp+1680], 1	# this_3(D)->enabled,
	mov	ebx, 0	# i,
.L31:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 376	# tmp68, i,
	lea	rdi, [rbp+176+rax]	# tmp70,
	mov	rsi, r12	#, img_path
	call	LabelImage_new	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L31	#,
.L30:
	mov	rax, rbp	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	ButtonImage_new, .-ButtonImage_new
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"ButtonImage_copy: Passed NULL: this(%p) or src(%p)\n"
	.text
	.globl	ButtonImage_copy
	.type	ButtonImage_copy, @function
ButtonImage_copy:
.LFB101:
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
	je	.L39	#,
	test	rdi, rdi	# this
	jne	.L35	#,
.L39:
	mov	r8, r12	#, src
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebp, 0	# this,
	jmp	.L37	#
.L35:
	movzx	r13d, dl	# D.9321, copy_pos
	mov	ecx, 0	#,
	mov	edx, r13d	#, D.9321
	call	Widget_copy	#
	mov	QWORD PTR [rbp+0], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9209	#,
	mov	rdi, rbp	#, this
	call	Static_printObj2	#
	mov	rdi, rbp	#, this
	call	ButtonImage_initDefault	#
	mov	ebx, 0	# i,
.L38:
	movsx	rdi, ebx	# i, i
	imul	rdi, rdi, 376	# tmp81, i,
	add	rdi, 176	# tmp82,
	lea	rsi, [r12+rdi]	# tmp83,
	add	rdi, rbp	# tmp87, this
	mov	edx, r13d	#, D.9321
	call	LabelImage_copy	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L38	#,
	movzx	eax, BYTE PTR [r12+1680]	# D.9324, src_5(D)->enabled
	mov	BYTE PTR [rbp+1680], al	# this_3(D)->enabled, D.9324
	mov	rax, QWORD PTR [rbp+264]	# MEM[(struct Widget *)this_3(D) + 176B].surf, MEM[(struct Widget *)this_3(D) + 176B].surf
	mov	QWORD PTR [rbp+88], rax	# MEM[(struct Widget *)this_3(D)].surf, MEM[(struct Widget *)this_3(D) + 176B].surf
	mov	BYTE PTR [rbp+167], 1	# MEM[(struct Widget *)this_3(D)].visible,
.L37:
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
.LFE101:
	.size	ButtonImage_copy, .-ButtonImage_copy
	.globl	ButtonImage_setEnabled
	.type	ButtonImage_setEnabled, @function
ButtonImage_setEnabled:
.LFB102:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1680], sil	# this_2(D)->enabled, sel
	je	.L42	#,
	cmp	sil, 1	# sel,
	sbb	eax, eax	# iftmp.4
	mov	BYTE PTR [rdi+1680], sil	# this_2(D)->enabled, sel
	and	eax, 3	# iftmp.4,
	imul	rax, rax, 376	# tmp67, iftmp.4,
	mov	rax, QWORD PTR [rdi+264+rax]	# D.9312, MEM[(struct Widget *)D.9311_8].surf
	mov	QWORD PTR [rdi+88], rax	# MEM[(struct Widget *)this_2(D)].surf, D.9312
	mov	BYTE PTR [rdi+169], 1	# MEM[(struct Widget *)this_2(D)].need_reload,
.L42:
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	ButtonImage_setEnabled, .-ButtonImage_setEnabled
	.globl	ButtonImage_setBorder
	.type	ButtonImage_setBorder, @function
ButtonImage_setBorder:
.LFB103:
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
.L47:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 376	# tmp70, i,
	lea	rdi, [r13+176+rax]	# tmp72,
	mov	edx, r12d	#, rgb
	mov	esi, ebp	#, bord_width
	call	LabelImage_setBorder	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L47	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	ButtonImage_setBorder, .-ButtonImage_setBorder
	.globl	ButtonImage_setFixedWidth
	.type	ButtonImage_setFixedWidth, @function
ButtonImage_setFixedWidth:
.LFB104:
	.cfi_startproc
	mov	BYTE PTR [rdi+550], sil	# this_3(D)->labelimage[0].fixed_width, sel
	mov	BYTE PTR [rdi+926], sil	# this_3(D)->labelimage[1].fixed_width, sel
	mov	BYTE PTR [rdi+1302], sil	# this_3(D)->labelimage[2].fixed_width, sel
	mov	BYTE PTR [rdi+1678], sil	# this_3(D)->labelimage[3].fixed_width, sel
	ret
	.cfi_endproc
.LFE104:
	.size	ButtonImage_setFixedWidth, .-ButtonImage_setFixedWidth
	.globl	ButtonImage_setImage
	.type	ButtonImage_setImage, @function
ButtonImage_setImage:
.LFB105:
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
.L52:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 376	# tmp66, i,
	lea	rdi, [r12+176+rax]	# tmp68,
	mov	rsi, rbp	#, image
	call	LabelImage_setImage	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L52	#,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	ButtonImage_setImage, .-ButtonImage_setImage
	.globl	ButtonImage_scale
	.type	ButtonImage_scale, @function
ButtonImage_scale:
.LFB106:
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
	mov	r14, rdi	# this, this
	movd	r13, xmm0	# xscale, xscale
	movd	r12, xmm1	# yscale, yscale
	mov	ebp, esi	# smooth, smooth
	mov	ebx, 0	# i,
.L56:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 376	# tmp68, i,
	lea	rdi, [r14+176+rax]	# tmp70,
	mov	esi, ebp	#, smooth
	movd	xmm1, r12	#, yscale
	movd	xmm0, r13	#, xscale
	call	LabelImage_scale	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L56	#,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	ButtonImage_scale, .-ButtonImage_scale
	.globl	ButtonImage_applyDefaultStyle
	.type	ButtonImage_applyDefaultStyle, @function
ButtonImage_applyDefaultStyle:
.LFB107:
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
	lea	r13, [rdi+176]	# labimg,
	lea	r12d, [r15+2]	# tmp83,
	movzx	r12d, r12w	# D.9295, tmp83
	lea	ebp, [r14+2]	# tmp84,
	movzx	ebp, bp	# D.9296, tmp84
	mov	edx, r12d	#, D.9295
	mov	esi, ebp	#, D.9296
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14417872	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+552]	# labimg,
	mov	edx, r12d	#, D.9295
	mov	esi, ebp	#, D.9296
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 11927454	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+928]	# labimg,
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
	lea	r13, [rbx+1304]	# labimg,
	mov	edx, r12d	#, D.9295
	mov	esi, ebp	#, D.9296
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14671839	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 5	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	mov	rdi, rbx	#, this
	call	Widget_refresh	#
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
.LFE107:
	.size	ButtonImage_applyDefaultStyle, .-ButtonImage_applyDefaultStyle
	.globl	ButtonImage_applyDefaultStyle3
	.type	ButtonImage_applyDefaultStyle3, @function
ButtonImage_applyDefaultStyle3:
.LFB108:
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
	lea	r13, [rdi+176]	# labimg,
	movzx	r12d, r8w	# D.9290, pady
	movzx	ebp, cx	# D.9291, padx
	mov	edx, r12d	#, D.9290
	mov	esi, ebp	#, D.9291
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14417872	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+552]	# labimg,
	mov	edx, r12d	#, D.9290
	mov	esi, ebp	#, D.9291
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 11927454	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+928]	# labimg,
	mov	edx, r12d	#, D.9290
	mov	esi, ebp	#, D.9291
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 16768601	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 16711680	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	lea	r13, [rbx+1304]	# labimg,
	mov	edx, r12d	#, D.9290
	mov	esi, ebp	#, D.9291
	mov	rdi, r13	#, labimg
	call	LabelImage_setPadding	#
	mov	esi, 14671839	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 2	#,
	mov	rdi, r13	#, labimg
	call	LabelImage_setBorder	#
	mov	rdi, rbx	#, this
	call	Widget_refresh	#
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
.LFE108:
	.size	ButtonImage_applyDefaultStyle3, .-ButtonImage_applyDefaultStyle3
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"buttonimage=NULL"
.LC3:
	.string	"%s"
	.text
	.globl	ButtonImage_toString
	.type	ButtonImage_toString, @function
ButtonImage_toString:
.LFB109:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC2	# D.9281,
	test	rdi, rdi	# this
	je	.L68	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 176	# tmp64,
	call	LabelImage_toString	#
	mov	rcx, rax	#, D.9283
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.9277	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.9277	# D.9281,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L68:
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	ButtonImage_toString, .-ButtonImage_toString
	.globl	ButtonImage_class
	.data
	.align 8
	.type	ButtonImage_class, @object
	.size	ButtonImage_class, 8
ButtonImage_class:
	.quad	type
	.section	.rodata.str1.1
.LC4:
	.string	"ButtonImage"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	1688
# name:
	.quad	.LC4
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9170, @object
	.size	__FUNCTION__.9170, 21
__FUNCTION__.9170:
	.string	"ButtonImage_vdestroy"
	.align 16
	.type	__FUNCTION__.9199, @object
	.size	__FUNCTION__.9199, 16
__FUNCTION__.9199:
	.string	"ButtonImage_new"
	.align 16
	.type	__FUNCTION__.9209, @object
	.size	__FUNCTION__.9209, 17
__FUNCTION__.9209:
	.string	"ButtonImage_copy"
	.local	str_id.9277
	.comm	str_id.9277,128,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	ButtonImage_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	ButtonImage_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
