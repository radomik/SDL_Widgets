	.file	"Button.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Button.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Button.asm
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
	.type	Button_mousePressed, @function
Button_mousePressed:
.LFB93:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1808], 0	# MEM[(struct Button *)sender_1(D)].enabled,
	je	.L5	#,
	cmp	BYTE PTR [rsi+10], 1	# screen_3(D)->event.button.button,
	jne	.L5	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+1080]	# MEM[(struct Widget *)sender_1(D) + 992B].surf, MEM[(struct Widget *)sender_1(D) + 992B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_1(D)->surf, MEM[(struct Widget *)sender_1(D) + 992B].surf
	mov	BYTE PTR [rdi+169], 1	# sender_1(D)->need_reload,
	mov	edx, 1	#,
	call	Widget_vdraw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L5:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	Button_mousePressed, .-Button_mousePressed
	.type	Button_mouseExit, @function
Button_mouseExit:
.LFB96:
	.cfi_startproc
	mov	BYTE PTR [rsi+121], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1808], 0	# MEM[(struct Button *)sender_2(D)].enabled,
	je	.L10	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+264]	# MEM[(struct Widget *)sender_2(D) + 176B].surf, MEM[(struct Widget *)sender_2(D) + 176B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_2(D)->surf, MEM[(struct Widget *)sender_2(D) + 176B].surf
	mov	BYTE PTR [rdi+169], 1	# sender_2(D)->need_reload,
	mov	edx, 1	#,
	call	Widget_vdraw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L10:
	rep
	ret
	.cfi_endproc
.LFE96:
	.size	Button_mouseExit, .-Button_mouseExit
	.type	Button_mouseEnter, @function
Button_mouseEnter:
.LFB95:
	.cfi_startproc
	mov	BYTE PTR [rsi+121], 1	# screen_1(D)->event_handled,
	cmp	BYTE PTR [rdi+1808], 0	# MEM[(struct Button *)sender_2(D)].enabled,
	je	.L15	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi+672]	# MEM[(struct Widget *)sender_2(D) + 584B].surf, MEM[(struct Widget *)sender_2(D) + 584B].surf
	mov	QWORD PTR [rdi+88], rax	# sender_2(D)->surf, MEM[(struct Widget *)sender_2(D) + 584B].surf
	mov	BYTE PTR [rdi+169], 1	# sender_2(D)->need_reload,
	mov	edx, 1	#,
	call	Widget_vdraw	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L15:
	rep
	ret
	.cfi_endproc
.LFE95:
	.size	Button_mouseEnter, .-Button_mouseEnter
	.globl	Button_vrefresh
	.type	Button_vrefresh, @function
Button_vrefresh:
.LFB97:
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
.L17:
	movsx	rax, ebp	# i, i
	imul	rax, rax, 408	# tmp78, i,
	lea	rdi, [rbx+176+rax]	# tmp80,
	call	Widget_refresh	#
	add	ebp, 1	# i,
	cmp	ebp, 4	# i,
	jne	.L17	#,
	mov	rax, QWORD PTR [rbx+264]	# MEM[(struct Widget *)vthis_2(D) + 176B].surf, MEM[(struct Widget *)vthis_2(D) + 176B].surf
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_2(D)].surf, MEM[(struct Widget *)vthis_2(D) + 176B].surf
	movzx	edx, WORD PTR [rbx+276]	# D.9233, MEM[(struct Widget *)vthis_2(D) + 176B].pos.w
	mov	WORD PTR [rbx+100], dx	# MEM[(struct Widget *)vthis_2(D)].pos.w, D.9233
	movzx	eax, WORD PTR [rbx+278]	# D.9234, MEM[(struct Widget *)vthis_2(D) + 176B].pos.h
	mov	WORD PTR [rbx+102], ax	# MEM[(struct Widget *)vthis_2(D)].pos.h, D.9234
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
.LFE97:
	.size	Button_vrefresh, .-Button_vrefresh
	.type	Button_mouseReleased, @function
Button_mouseReleased:
.LFB94:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# sender, sender
	cmp	BYTE PTR [rdi+1808], 0	# MEM[(struct Button *)sender_1(D)].enabled,
	je	.L20	#,
	mov	rbp, rsi	# screen, screen
	movzx	edx, WORD PTR [rsi+14]	# screen_3(D)->event.button.y, screen_3(D)->event.button.y
	movzx	esi, WORD PTR [rsi+12]	# screen_3(D)->event.button.x, screen_3(D)->event.button.x
	call	Widget_contains	#
	test	al, al	# D.9200
	je	.L22	#,
	mov	rax, QWORD PTR [rbx+672]	# MEM[(struct Widget *)sender_1(D) + 584B].surf, MEM[(struct Widget *)sender_1(D) + 584B].surf
	mov	QWORD PTR [rbx+88], rax	# sender_1(D)->surf, MEM[(struct Widget *)sender_1(D) + 584B].surf
	jmp	.L23	#
.L22:
	mov	rax, QWORD PTR [rbx+264]	# MEM[(struct Widget *)sender_1(D) + 176B].surf, MEM[(struct Widget *)sender_1(D) + 176B].surf
	mov	QWORD PTR [rbx+88], rax	# sender_1(D)->surf, MEM[(struct Widget *)sender_1(D) + 176B].surf
.L23:
	mov	BYTE PTR [rbx+169], 1	# sender_1(D)->need_reload,
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, sender
	call	Widget_vdraw	#
.L20:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Button_mouseReleased, .-Button_mouseReleased
	.globl	Button_vdestroy
	.type	Button_vdestroy, @function
Button_vdestroy:
.LFB98:
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
	mov	esi, OFFSET FLAT:__FUNCTION__.9075	#,
	call	Static_printObj2	#
	mov	ebx, 0	# i,
.L26:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 408	# tmp65, i,
	lea	rdi, [rbp+176+rax]	# tmp67,
	call	delete	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L26	#,
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
.LFE98:
	.size	Button_vdestroy, .-Button_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"%20s:\tWithin context: text=%s\n"
	.text
	.globl	Button_new
	.type	Button_new, @function
Button_new:
.LFB99:
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
	mov	r12, rsi	# text, text
	test	rdi, rdi	# this
	jne	.L30	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9084	#,
	call	Static_nullThis2	#
	mov	r8, r12	#, text
	mov	ecx, OFFSET FLAT:__FUNCTION__.9084	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L31	#
.L30:
	call	Widget_new	#
	mov	QWORD PTR [rbp+0], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9084	#,
	mov	rdi, rbp	#, this
	call	Static_printObj2	#
	mov	QWORD PTR [rbp+72], OFFSET FLAT:Button_mouseEnter	# MEM[(struct Widget *)this_3(D)].mevent_internal.mouse_enter,
	mov	QWORD PTR [rbp+80], OFFSET FLAT:Button_mouseExit	# MEM[(struct Widget *)this_3(D)].mevent_internal.mouse_exit,
	mov	QWORD PTR [rbp+56], OFFSET FLAT:Button_mousePressed	# MEM[(struct Widget *)this_3(D)].mevent_internal.press,
	mov	QWORD PTR [rbp+64], OFFSET FLAT:Button_mouseReleased	# MEM[(struct Widget *)this_3(D)].mevent_internal.release,
	mov	BYTE PTR [rbp+168], 1	# MEM[(struct Widget *)this_3(D)].mevent,
	mov	BYTE PTR [rbp+1808], 1	# this_3(D)->enabled,
	mov	ebx, 0	# i,
.L32:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 408	# tmp68, i,
	lea	rdi, [rbp+176+rax]	# tmp70,
	mov	rsi, r12	#, text
	call	Label_new	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L32	#,
.L31:
	mov	rax, rbp	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Button_new, .-Button_new
	.globl	Button_setBgColor
	.type	Button_setBgColor, @function
Button_setBgColor:
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
	mov	r12, rdi	# this, this
	mov	ebp, esi	# rgb, rgb
	mov	ebx, 0	# i,
.L36:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 408	# tmp66, i,
	lea	rdi, [r12+176+rax]	# tmp68,
	mov	esi, ebp	#, rgb
	call	Label_setBgColor	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L36	#,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Button_setBgColor, .-Button_setBgColor
	.globl	Button_setBorder
	.type	Button_setBorder, @function
Button_setBorder:
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
	mov	r13, rdi	# this, this
	mov	r12d, edx	# rgb, rgb
	mov	ebx, 0	# i,
	movzx	ebp, si	# bord_width, bord_width
.L40:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 408	# tmp70, i,
	lea	rdi, [r13+176+rax]	# tmp72,
	mov	edx, r12d	#, rgb
	mov	esi, ebp	#, bord_width
	call	Label_setBorder	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L40	#,
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	Button_setBorder, .-Button_setBorder
	.globl	Button_setEnabled
	.type	Button_setEnabled, @function
Button_setEnabled:
.LFB102:
	.cfi_startproc
	cmp	BYTE PTR [rdi+1808], sil	# this_2(D)->enabled, sel
	je	.L43	#,
	cmp	sil, 1	# sel,
	sbb	eax, eax	# iftmp.4
	mov	BYTE PTR [rdi+1808], sil	# this_2(D)->enabled, sel
	and	eax, 3	# iftmp.4,
	imul	rax, rax, 408	# tmp67, iftmp.4,
	mov	rax, QWORD PTR [rdi+264+rax]	# D.9180, MEM[(struct Widget *)D.9179_8].surf
	mov	QWORD PTR [rdi+88], rax	# MEM[(struct Widget *)this_2(D)].surf, D.9180
	mov	BYTE PTR [rdi+169], 1	# MEM[(struct Widget *)this_2(D)].need_reload,
.L43:
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	Button_setEnabled, .-Button_setEnabled
	.globl	Button_setFixedWidth
	.type	Button_setFixedWidth, @function
Button_setFixedWidth:
.LFB103:
	.cfi_startproc
	mov	BYTE PTR [rdi+578], sil	# this_3(D)->label[0].fixed_width, sel
	mov	BYTE PTR [rdi+986], sil	# this_3(D)->label[1].fixed_width, sel
	mov	BYTE PTR [rdi+1394], sil	# this_3(D)->label[2].fixed_width, sel
	mov	BYTE PTR [rdi+1802], sil	# this_3(D)->label[3].fixed_width, sel
	ret
	.cfi_endproc
.LFE103:
	.size	Button_setFixedWidth, .-Button_setFixedWidth
	.globl	Button_setText
	.type	Button_setText, @function
Button_setText:
.LFB104:
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
	mov	rbp, rsi	# text, text
	mov	ebx, 0	# i,
.L49:
	movsx	rax, ebx	# i, i
	imul	rax, rax, 408	# tmp66, i,
	lea	rdi, [r12+176+rax]	# tmp68,
	mov	rsi, rbp	#, text
	call	Label_setText	#
	add	ebx, 1	# i,
	cmp	ebx, 4	# i,
	jne	.L49	#,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Button_setText, .-Button_setText
	.globl	Button_applyDefaultStyle
	.type	Button_applyDefaultStyle, @function
Button_applyDefaultStyle:
.LFB105:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# this, this
	mov	r12, rcx	# font2, font2
	movzx	r15d, BYTE PTR [rsp+64]	# fixed_width, fixed_width
	mov	WORD PTR [rdi+96], si	# MEM[(struct Widget *)this_3(D)].pos.x, posx
	mov	WORD PTR [rdi+98], dx	# MEM[(struct Widget *)this_3(D)].pos.y, posy
	lea	rbp, [rdi+176]	# lab,
	movzx	r14d, r9w	# D.9168, pady
	movzx	r13d, r8w	# D.9169, padx
	mov	edx, r14d	#, D.9168
	mov	esi, r13d	#, D.9169
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 10420464	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 14417872	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+584]	# lab,
	mov	edx, r14d	#, D.9168
	mov	esi, r13d	#, D.9169
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 10420464	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 11927454	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 3762175	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+992]	# lab,
	mov	edx, r14d	#, D.9168
	mov	esi, r13d	#, D.9169
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 10420464	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 16768601	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 51665	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+1400]	# lab,
	mov	edx, r14d	#, D.9168
	mov	esi, r13d	#, D.9169
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 11250603	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 14671839	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 7434609	#,
	mov	esi, 5	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	mov	rdi, rbx	#, this
	call	Widget_refresh	#
	movzx	esi, r15b	# fixed_width, fixed_width
	mov	rdi, rbx	#, this
	call	Button_setFixedWidth	#
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	mov	r14, QWORD PTR [rsp+40]	#,
	mov	r15, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	Button_applyDefaultStyle, .-Button_applyDefaultStyle
	.globl	Button_applyDefaultStyle2
	.type	Button_applyDefaultStyle2, @function
Button_applyDefaultStyle2:
.LFB106:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# this, this
	mov	r12, rcx	# font2, font2
	movzx	r15d, BYTE PTR [rsp+64]	# fixed_width, fixed_width
	mov	WORD PTR [rdi+96], si	# MEM[(struct Widget *)this_3(D)].pos.x, posx
	mov	WORD PTR [rdi+98], dx	# MEM[(struct Widget *)this_3(D)].pos.y, posy
	lea	rbp, [rdi+176]	# lab,
	movzx	r14d, r9w	# D.9163, pady
	movzx	r13d, r8w	# D.9164, padx
	mov	edx, r14d	#, D.9163
	mov	esi, r13d	#, D.9164
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 15592683	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 15592683	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+584]	# lab,
	mov	edx, r14d	#, D.9163
	mov	esi, r13d	#, D.9164
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 8299732	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 8299732	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+992]	# lab,
	mov	edx, r14d	#, D.9163
	mov	esi, r13d	#, D.9164
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 15881568	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 15592683	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	lea	rbp, [rbx+1400]	# lab,
	mov	edx, r14d	#, D.9163
	mov	esi, r13d	#, D.9164
	mov	rdi, rbp	#, lab
	call	Label_setPadding	#
	mov	rsi, r12	#, font2
	mov	rdi, rbp	#, lab
	call	Label_setFont	#
	mov	esi, 11447982	#,
	mov	rdi, rbp	#, lab
	call	Label_setFontColor	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, lab
	call	Label_setBgColor	#
	mov	edx, 15592683	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, lab
	call	Label_setBorder	#
	mov	rdi, rbx	#, this
	call	Widget_refresh	#
	movzx	esi, r15b	# fixed_width, fixed_width
	mov	rdi, rbx	#, this
	call	Button_setFixedWidth	#
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	mov	r14, QWORD PTR [rsp+40]	#,
	mov	r15, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	Button_applyDefaultStyle2, .-Button_applyDefaultStyle2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"button=NULL"
.LC2:
	.string	"%s"
	.text
	.globl	Button_toString
	.type	Button_toString, @function
Button_toString:
.LFB107:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC1	# D.9154,
	test	rdi, rdi	# this
	je	.L61	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 176	# tmp64,
	call	Label_toString	#
	mov	rcx, rax	#, D.9156
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.9150	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.9150	# D.9154,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L61:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	Button_toString, .-Button_toString
	.globl	Button_class
	.data
	.align 8
	.type	Button_class, @object
	.size	Button_class, 8
Button_class:
	.quad	type
	.section	.rodata.str1.1
.LC3:
	.string	"Button"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	1816
# name:
	.quad	.LC3
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9075, @object
	.size	__FUNCTION__.9075, 16
__FUNCTION__.9075:
	.string	"Button_vdestroy"
	.type	__FUNCTION__.9084, @object
	.size	__FUNCTION__.9084, 11
__FUNCTION__.9084:
	.string	"Button_new"
	.local	str_id.9150
	.comm	str_id.9150,128,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	Button_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	Button_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
