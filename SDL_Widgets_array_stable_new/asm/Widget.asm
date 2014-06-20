	.file	"Widget.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Widget.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Widget.asm
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
	.globl	Widget_vrefresh
	.type	Widget_vrefresh, @function
Widget_vrefresh:
.LFB114:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE114:
	.size	Widget_vrefresh, .-Widget_vrefresh
	.globl	Widget_vdrag
	.type	Widget_vdrag, @function
Widget_vdrag:
.LFB115:
	.cfi_startproc
	add	WORD PTR [rdi+96], si	# MEM[(struct Widget *)vthis_1(D)].pos.x, dx
	add	WORD PTR [rdi+98], dx	# MEM[(struct Widget *)vthis_1(D)].pos.y, dy
	add	WORD PTR [rdi+152], si	# MEM[(struct Widget *)vthis_1(D)].maxx, dx
	add	WORD PTR [rdi+154], dx	# MEM[(struct Widget *)vthis_1(D)].maxy, dy
	ret
	.cfi_endproc
.LFE115:
	.size	Widget_vdrag, .-Widget_vdrag
	.globl	Widget_vsetVisible
	.type	Widget_vsetVisible, @function
Widget_vsetVisible:
.LFB116:
	.cfi_startproc
	mov	BYTE PTR [rdi+167], sil	# MEM[(struct Widget *)vthis_1(D)].visible, vis
	ret
	.cfi_endproc
.LFE116:
	.size	Widget_vsetVisible, .-Widget_vsetVisible
	.globl	Widget_vdraw
	.type	Widget_vdraw, @function
Widget_vdraw:
.LFB113:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# vthis, vthis
	cmp	BYTE PTR [rdi+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	je	.L4	#,
	mov	rbp, rsi	# screen, screen
	mov	r12d, edx	# flip, flip
	lea	rcx, [rdi+96]	# tmp68,
	mov	rdx, QWORD PTR [rsi+72]	# screen_4(D)->screen, screen_4(D)->screen
	mov	rdi, QWORD PTR [rdi+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	BYTE PTR [rbx+169], 0	# MEM[(struct Widget *)vthis_1(D)].need_reload,
	test	r12b, r12b	# flip
	je	.L4	#,
	mov	rdi, QWORD PTR [rbp+72]	# screen_4(D)->screen, screen_4(D)->screen
	call	SDL_Flip	#
.L4:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	Widget_vdraw, .-Widget_vdraw
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Widget.c"
	.text
	.globl	Widget_vdestroy
	.type	Widget_vdestroy, @function
Widget_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.9430	#,
	call	Static_printObj2	#
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	edx, 83	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+88], 0	# MEM[(struct Widget *)vthis_1(D)].surf,
	mov	rdi, QWORD PTR [rbx+136]	# MEM[(struct Widget *)vthis_1(D)].vparam, MEM[(struct Widget *)vthis_1(D)].vparam
	mov	edx, 85	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+136], 0	# MEM[(struct Widget *)vthis_1(D)].vparam,
	mov	DWORD PTR [rbx+144], 0	# MEM[(struct Widget *)vthis_1(D)].vparam_size,
	mov	DWORD PTR [rbx+148], 0	# MEM[(struct Widget *)vthis_1(D)].vparam_count,
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Widget_vdestroy, .-Widget_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Widget_addVParam: Fatal error occured while creating/growing widget.vparam array. Method Static_growArray exited with error %s\n"
	.text
	.globl	Widget_addVParam
	.type	Widget_addVParam, @function
Widget_addVParam:
.LFB93:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 64
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# vparam, vparam
	mov	ecx, DWORD PTR [rdi+144]	# D.9994, this_3(D)->vparam_size
	cmp	ecx, DWORD PTR [rdi+148]	# D.9994, this_3(D)->vparam_count
	jne	.L10	#,
	cmp	ecx, edx	# D.9994, def_size
	mov	eax, 10	# tmp86,
	cmovae	edx, eax	# def_size,, def_size, tmp86
	lea	rax, [rdi+144]	# tmp78,
	mov	rsi, QWORD PTR [rdi+136]	# this_3(D)->vparam, this_3(D)->vparam
	mov	QWORD PTR [rsp+8], 8	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, edx	#, def_size
	mov	r8d, ecx	#, D.9994
	mov	rdx, rax	#, tmp78
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L12	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.10007
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.10009, e
	jmp	.L13	#
.L12:
	mov	QWORD PTR [rbx+136], rax	# this_3(D)->vparam, new_array
.L10:
	mov	eax, DWORD PTR [rbx+148]	# D.9995, this_3(D)->vparam_count
	mov	ecx, eax	# D.9995, D.9995
	mov	rdx, QWORD PTR [rbx+136]	# this_3(D)->vparam, this_3(D)->vparam
	mov	QWORD PTR [rdx+rcx*8], rbp	# *D.10013_23, vparam
	add	eax, 1	# tmp84,
	mov	DWORD PTR [rbx+148], eax	# this_3(D)->vparam_count, tmp84
	mov	eax, 0	# D.10009,
.L13:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Widget_addVParam, .-Widget_addVParam
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Widget_copy: Failed to copy surface SDL_ConvertSurface: %s\n"
	.text
	.globl	Widget_copy
	.type	Widget_copy, @function
Widget_copy:
.LFB96:
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
	mov	rbp, rsi	# src, src
	mov	r13d, edx	# copy_pos, copy_pos
	mov	r12d, ecx	# copy_surf, copy_surf
	mov	QWORD PTR [rdi], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9441	#,
	call	Static_printObj2	#
	test	r12b, r12b	# copy_surf
	je	.L16	#,
	mov	BYTE PTR [rbx+167], 1	# this_2(D)->visible,
	mov	rdi, QWORD PTR [rbp+88]	# src_4(D)->surf, src_4(D)->surf
	call	Static_copySurface	#
	mov	QWORD PTR [rbx+88], rax	# this_2(D)->surf, D.9967
	test	rax, rax	# D.9967
	jne	.L17	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9971
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# this_2(D)->visible,
	jmp	.L18	#
.L16:
	mov	BYTE PTR [rbx+167], 0	# this_2(D)->visible,
	mov	QWORD PTR [rbx+88], 0	# this_2(D)->surf,
.L17:
	test	r13b, r13b	# copy_pos
	je	.L19	#,
	mov	rax, QWORD PTR [rbp+96]	# src_4(D)->pos, src_4(D)->pos
	mov	QWORD PTR [rbx+96], rax	# this_2(D)->pos, src_4(D)->pos
	movzx	eax, WORD PTR [rbp+152]	# D.9977, src_4(D)->maxx
	mov	WORD PTR [rbx+152], ax	# this_2(D)->maxx, D.9977
	movzx	eax, WORD PTR [rbp+154]	# D.9978, src_4(D)->maxy
	mov	WORD PTR [rbx+154], ax	# this_2(D)->maxy, D.9978
	jmp	.L20	#
.L19:
	movzx	eax, WORD PTR [rbp+100]	# D.9980, src_4(D)->pos.w
	mov	WORD PTR [rbx+100], ax	# this_2(D)->pos.w, D.9980
	movzx	eax, WORD PTR [rbp+102]	# D.9981, src_4(D)->pos.h
	mov	WORD PTR [rbx+102], ax	# this_2(D)->pos.h, D.9981
.L20:
	movzx	eax, BYTE PTR [rbp+165]	# D.10181, src_4(D)->draggable
	mov	BYTE PTR [rbx+165], al	# this_2(D)->draggable, D.10181
	mov	BYTE PTR [rbx+166], 0	# this_2(D)->dragging,
	movzx	eax, BYTE PTR [rbp+168]	# D.10180, src_4(D)->mevent
	mov	BYTE PTR [rbx+168], al	# this_2(D)->mevent, D.10180
	mov	BYTE PTR [rbx+169], 1	# this_2(D)->need_reload,
	mov	BYTE PTR [rbx+170], 0	# this_2(D)->mouse_state,
	mov	BYTE PTR [rbx+171], 0	# this_2(D)->mouse_over,
	movzx	eax, BYTE PTR [rbp+172]	# D.10179, src_4(D)->mouse_move_listen
	mov	BYTE PTR [rbx+172], al	# this_2(D)->mouse_move_listen, D.10179
	mov	QWORD PTR [rbx+8], 0	# this_2(D)->click_handler,
	mov	QWORD PTR [rbx+16], 0	# this_2(D)->press_handler,
	mov	QWORD PTR [rbx+24], 0	# this_2(D)->release_handler,
	mov	QWORD PTR [rbx+32], 0	# this_2(D)->mouse_enter_handler,
	mov	QWORD PTR [rbx+40], 0	# this_2(D)->mouse_exit_handler,
	mov	QWORD PTR [rbx+48], 0	# this_2(D)->mevent_internal.click,
	mov	QWORD PTR [rbx+72], 0	# this_2(D)->mevent_internal.mouse_enter,
	mov	QWORD PTR [rbx+80], 0	# this_2(D)->mevent_internal.mouse_exit,
	mov	QWORD PTR [rbx+56], 0	# this_2(D)->mevent_internal.press,
	mov	QWORD PTR [rbx+64], 0	# this_2(D)->mevent_internal.release,
	mov	rax, QWORD PTR [rbp+104]	# D.10178, src_4(D)->parameter
	mov	QWORD PTR [rbx+104], rax	# this_2(D)->parameter, D.10178
	mov	rax, QWORD PTR [rbp+112]	# D.10177, src_4(D)->void_parameter
	mov	QWORD PTR [rbx+112], rax	# this_2(D)->void_parameter, D.10177
	mov	rax, QWORD PTR [rbp+120]	# D.10176, src_4(D)->void_parameter2
	mov	QWORD PTR [rbx+120], rax	# this_2(D)->void_parameter2, D.10176
	mov	QWORD PTR [rbx+136], 0	# this_2(D)->vparam,
	mov	DWORD PTR [rbx+148], 0	# this_2(D)->vparam_count,
	mov	DWORD PTR [rbx+144], 0	# this_2(D)->vparam_size,
	mov	QWORD PTR [rbx+128], 0	# this_2(D)->cparam,
	mov	BYTE PTR [rbx+164], 1	# this_2(D)->cparam_exist,
	mov	DWORD PTR [rbx+160], 0	# this_2(D)->id,
	movzx	eax, BYTE PTR [rbp+174]	# D.10174, src_4(D)->internal
	mov	BYTE PTR [rbx+174], al	# this_2(D)->internal, D.10174
	movzx	eax, BYTE PTR [rbp+173]	# D.10173, src_4(D)->is_container
	mov	BYTE PTR [rbx+173], al	# this_2(D)->is_container, D.10173
.L18:
	mov	rax, rbx	#, this
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
.LFE96:
	.size	Widget_copy, .-Widget_copy
	.globl	Widget_new
	.type	Widget_new, @function
Widget_new:
.LFB98:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	QWORD PTR [rdi], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9448	#,
	call	Static_printObj2	#
	mov	WORD PTR [rbx+154], 0	# this_1(D)->maxy,
	mov	WORD PTR [rbx+152], 0	# this_1(D)->maxx,
	mov	WORD PTR [rbx+100], 0	# this_1(D)->pos.w,
	mov	WORD PTR [rbx+102], 0	# this_1(D)->pos.h,
	mov	WORD PTR [rbx+98], 0	# this_1(D)->pos.y,
	mov	WORD PTR [rbx+96], 0	# this_1(D)->pos.x,
	mov	BYTE PTR [rbx+165], 0	# this_1(D)->draggable,
	mov	BYTE PTR [rbx+166], 0	# this_1(D)->dragging,
	mov	QWORD PTR [rbx+88], 0	# this_1(D)->surf,
	mov	BYTE PTR [rbx+167], 0	# this_1(D)->visible,
	mov	BYTE PTR [rbx+168], 0	# this_1(D)->mevent,
	mov	BYTE PTR [rbx+172], 0	# this_1(D)->mouse_move_listen,
	mov	BYTE PTR [rbx+170], 0	# this_1(D)->mouse_state,
	mov	BYTE PTR [rbx+169], 1	# this_1(D)->need_reload,
	mov	BYTE PTR [rbx+171], 0	# this_1(D)->mouse_over,
	mov	QWORD PTR [rbx+8], 0	# this_1(D)->click_handler,
	mov	QWORD PTR [rbx+16], 0	# this_1(D)->press_handler,
	mov	QWORD PTR [rbx+24], 0	# this_1(D)->release_handler,
	mov	QWORD PTR [rbx+32], 0	# this_1(D)->mouse_enter_handler,
	mov	QWORD PTR [rbx+40], 0	# this_1(D)->mouse_exit_handler,
	mov	QWORD PTR [rbx+48], 0	# this_1(D)->mevent_internal.click,
	mov	QWORD PTR [rbx+72], 0	# this_1(D)->mevent_internal.mouse_enter,
	mov	QWORD PTR [rbx+80], 0	# this_1(D)->mevent_internal.mouse_exit,
	mov	QWORD PTR [rbx+56], 0	# this_1(D)->mevent_internal.press,
	mov	QWORD PTR [rbx+64], 0	# this_1(D)->mevent_internal.release,
	mov	QWORD PTR [rbx+104], 0	# this_1(D)->parameter,
	mov	QWORD PTR [rbx+112], 0	# this_1(D)->void_parameter,
	mov	QWORD PTR [rbx+120], 0	# this_1(D)->void_parameter2,
	mov	QWORD PTR [rbx+128], 0	# this_1(D)->cparam,
	mov	BYTE PTR [rbx+164], 1	# this_1(D)->cparam_exist,
	mov	QWORD PTR [rbx+136], 0	# this_1(D)->vparam,
	mov	DWORD PTR [rbx+144], 0	# this_1(D)->vparam_size,
	mov	DWORD PTR [rbx+148], 0	# this_1(D)->vparam_count,
	mov	DWORD PTR [rbx+160], 0	# this_1(D)->id,
	mov	BYTE PTR [rbx+174], 0	# this_1(D)->internal,
	mov	BYTE PTR [rbx+173], 0	# this_1(D)->is_container,
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Widget_new, .-Widget_new
	.section	.rodata.str1.1
.LC3:
	.string	"true"
.LC4:
	.string	"false"
.LC5:
	.string	"widget=NULL"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Widget[%p](%s): ID=%u, VIS=%s [x,y,mx,my,w,h]=[%hu,%hu,%hu,%hu,%hu,%hu]"
	.text
	.globl	Widget_toString
	.type	Widget_toString, @function
Widget_toString:
.LFB99:
	.cfi_startproc
	mov	r9, rdi	# this, this
	test	rdi, rdi	# this
	je	.L27	#,
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	movzx	r10d, WORD PTR [rdi+102]	# D.9933, this_3(D)->pos.h
	movzx	r8d, WORD PTR [rdi+100]	# D.9935, this_3(D)->pos.w
	movzx	edi, WORD PTR [rdi+154]	# D.9937, this_3(D)->maxy
	movzx	esi, WORD PTR [r9+152]	# D.9939, this_3(D)->maxx
	movsx	ecx, WORD PTR [r9+98]	# D.9941, this_3(D)->pos.y
	movsx	edx, WORD PTR [r9+96]	# D.9943, this_3(D)->pos.x
	cmp	BYTE PTR [r9+167], 0	# this_3(D)->visible,
	mov	eax, OFFSET FLAT:.LC3	# tmp84,
	mov	r11d, OFFSET FLAT:.LC4	# tmp83,
	cmove	rax, r11	# tmp83,, iftmp.19
	mov	DWORD PTR [rsp+64], r10d	#, D.9933
	mov	DWORD PTR [rsp+56], r8d	#, D.9935
	mov	DWORD PTR [rsp+48], edi	#, D.9937
	mov	DWORD PTR [rsp+40], esi	#, D.9939
	mov	DWORD PTR [rsp+32], ecx	#, D.9941
	mov	DWORD PTR [rsp+24], edx	#, D.9943
	mov	QWORD PTR [rsp+16], rax	#, iftmp.19
	mov	eax, DWORD PTR [r9+160]	# this_3(D)->id, this_3(D)->id
	mov	DWORD PTR [rsp+8], eax	#, this_3(D)->id
	mov	rax, QWORD PTR [r9]	# MEM[(struct coObject *)this_3(D)].class, MEM[(struct coObject *)this_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9950_21->name, D.9950_21->name
	mov	QWORD PTR [rsp], rax	#, D.9950_21->name
	mov	r8d, OFFSET FLAT:.LC6	#,
	mov	ecx, 512	#,
	mov	edx, 1	#,
	mov	esi, 512	#,
	mov	edi, OFFSET FLAT:str_id.9452	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9452	# D.9931,
	jmp	.L25	#
.L27:
	.cfi_def_cfa_offset 8
	mov	eax, OFFSET FLAT:.LC5	# D.9931,
	ret
.L25:
	.cfi_def_cfa_offset 96
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Widget_toString, .-Widget_toString
	.globl	Widget_scale
	.type	Widget_scale, @function
Widget_scale:
.LFB104:
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
	mov	rbx, rdi	# widget, widget
	movd	r12, xmm0	# xscale, xscale
	movd	rbp, xmm1	# yscale, yscale
	mov	rdi, QWORD PTR [rdi+88]	# widget_1(D)->surf, widget_1(D)->surf
	mov	ecx, 317	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	call	wzoomSurface	#
	mov	r13, rax	# surf,
	test	rax, rax	# surf
	je	.L31	#,
	mov	rdi, QWORD PTR [rbx+88]	# widget_1(D)->surf, widget_1(D)->surf
	mov	edx, 319	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+88], r13	# widget_1(D)->surf, surf
	movzx	eax, WORD PTR [rbx+100]	# widget_1(D)->pos.w, widget_1(D)->pos.w
	cvtsi2sd	xmm0, eax	# tmp85, widget_1(D)->pos.w
	movd	xmm1, r12	#, xscale
	mulsd	xmm0, xmm1	# tmp86,
	cvttsd2si	r12d, xmm0	# tmp87, tmp86
	mov	WORD PTR [rbx+100], r12w	# widget_1(D)->pos.w, tmp87
	movzx	eax, WORD PTR [rbx+102]	# widget_1(D)->pos.h, widget_1(D)->pos.h
	cvtsi2sd	xmm0, eax	# tmp89, widget_1(D)->pos.h
	movd	xmm1, rbp	#, yscale
	mulsd	xmm0, xmm1	# tmp90,
	cvttsd2si	ebp, xmm0	# tmp91, tmp90
	mov	WORD PTR [rbx+102], bp	# widget_1(D)->pos.h, tmp91
	add	r12w, WORD PTR [rbx+96]	# tmp92, widget_1(D)->pos.x
	mov	WORD PTR [rbx+152], r12w	# widget_1(D)->maxx, tmp92
	add	bp, WORD PTR [rbx+98]	# tmp94, widget_1(D)->pos.y
	mov	WORD PTR [rbx+154], bp	# widget_1(D)->maxy, tmp94
.L31:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Widget_scale, .-Widget_scale
	.globl	Widget_contains
	.type	Widget_contains, @function
Widget_contains:
.LFB105:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L36	#,
	movzx	r8d, si	# x, x
	movsx	ecx, WORD PTR [rdi+96]	# widget_2(D)->pos.x, widget_2(D)->pos.x
	mov	eax, 0	# iftmp.18,
	cmp	r8d, ecx	# x, widget_2(D)->pos.x
	jl	.L35	#,
	movzx	r8d, dx	# y, y
	movsx	ecx, WORD PTR [rdi+98]	# widget_2(D)->pos.y, widget_2(D)->pos.y
	cmp	r8d, ecx	# y, widget_2(D)->pos.y
	jl	.L35	#,
	cmp	si, WORD PTR [rdi+152]	# x, widget_2(D)->maxx
	ja	.L35	#,
	cmp	dx, WORD PTR [rdi+154]	# y, widget_2(D)->maxy
	setbe	al	#, iftmp.18
	movzx	eax, al	# iftmp.18, iftmp.18
	ret
.L36:
	mov	eax, 0	# iftmp.18,
.L35:
	rep
	ret
	.cfi_endproc
.LFE105:
	.size	Widget_contains, .-Widget_contains
	.globl	Widget_setPosition
	.type	Widget_setPosition, @function
Widget_setPosition:
.LFB106:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L40	#,
	mov	WORD PTR [rdi+96], si	# widget_1(D)->pos.x, minx
	mov	WORD PTR [rdi+98], dx	# widget_1(D)->pos.y, miny
	add	si, WORD PTR [rdi+100]	# tmp70, widget_1(D)->pos.w
	mov	WORD PTR [rdi+152], si	# widget_1(D)->maxx, tmp70
	add	dx, WORD PTR [rdi+102]	# tmp72, widget_1(D)->pos.h
	mov	WORD PTR [rdi+154], dx	# widget_1(D)->maxy, tmp72
.L40:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	Widget_setPosition, .-Widget_setPosition
	.globl	Widget_setSize
	.type	Widget_setSize, @function
Widget_setSize:
.LFB107:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L42	#,
	mov	WORD PTR [rdi+100], si	# widget_1(D)->pos.w, width
	mov	WORD PTR [rdi+102], dx	# widget_1(D)->pos.h, height
.L42:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	Widget_setSize, .-Widget_setSize
	.globl	Widget_setSizeUpdatePos
	.type	Widget_setSizeUpdatePos, @function
Widget_setSizeUpdatePos:
.LFB108:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L44	#,
	mov	WORD PTR [rdi+100], si	# widget_1(D)->pos.w, width
	mov	WORD PTR [rdi+102], dx	# widget_1(D)->pos.h, height
	add	si, WORD PTR [rdi+96]	# tmp70, widget_1(D)->pos.x
	mov	WORD PTR [rdi+152], si	# widget_1(D)->maxx, tmp70
	add	dx, WORD PTR [rdi+98]	# tmp72, widget_1(D)->pos.y
	mov	WORD PTR [rdi+154], dx	# widget_1(D)->maxy, tmp72
.L44:
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	Widget_setSizeUpdatePos, .-Widget_setSizeUpdatePos
	.globl	Widget_setRect
	.type	Widget_setRect, @function
Widget_setRect:
.LFB109:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L46	#,
	mov	WORD PTR [rdi+96], si	# widget_1(D)->pos.x, minx
	mov	WORD PTR [rdi+98], dx	# widget_1(D)->pos.y, miny
	mov	WORD PTR [rdi+100], cx	# widget_1(D)->pos.w, width
	mov	WORD PTR [rdi+102], r8w	# widget_1(D)->pos.h, height
	add	esi, ecx	# tmp72, width
	mov	WORD PTR [rdi+152], si	# widget_1(D)->maxx, tmp72
	add	edx, r8d	# tmp73, height
	mov	WORD PTR [rdi+154], dx	# widget_1(D)->maxy, tmp73
.L46:
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	Widget_setRect, .-Widget_setRect
	.globl	Widget_getCenter
	.type	Widget_getCenter, @function
Widget_getCenter:
.LFB110:
	.cfi_startproc
	test	rsi, rsi	# cx
	je	.L48	#,
	test	rdi, rdi	# this
	je	.L48	#,
	test	rdx, rdx	# cy
	je	.L48	#,
	movzx	eax, WORD PTR [rdi+100]	# tmp79, this_1(D)->pos.w
	shr	ax	# tmp79
	add	ax, WORD PTR [rdi+96]	# tmp81, this_1(D)->pos.x
	mov	WORD PTR [rsi], ax	# *cx_3(D), tmp81
	movzx	eax, WORD PTR [rdi+102]	# tmp83, this_1(D)->pos.h
	shr	ax	# tmp83
	add	ax, WORD PTR [rdi+98]	# tmp85, this_1(D)->pos.y
	mov	WORD PTR [rdx], ax	# *cy_6(D), tmp85
.L48:
	rep
	ret
	.cfi_endproc
.LFE110:
	.size	Widget_getCenter, .-Widget_getCenter
	.globl	Widget_setCenter
	.type	Widget_setCenter, @function
Widget_setCenter:
.LFB111:
	.cfi_startproc
	test	rdi, rdi	# this
	je	.L50	#,
	movzx	ecx, WORD PTR [rdi+100]	# D.9836, this_1(D)->pos.w
	mov	eax, ecx	# tmp74, D.9836
	shr	ax	# tmp74
	sub	esi, eax	# D.9838, tmp74
	mov	WORD PTR [rdi+96], si	# this_1(D)->pos.x, D.9838
	movzx	eax, WORD PTR [rdi+102]	# D.9840, this_1(D)->pos.h
	mov	r8d, eax	# tmp75, D.9840
	shr	r8w	# tmp75
	sub	edx, r8d	# D.9842, tmp75
	mov	WORD PTR [rdi+98], dx	# this_1(D)->pos.y, D.9842
	add	ecx, esi	# tmp76, D.9838
	mov	WORD PTR [rdi+152], cx	# this_1(D)->maxx, tmp76
	add	eax, edx	# tmp77, D.9842
	mov	WORD PTR [rdi+154], ax	# this_1(D)->maxy, tmp77
.L50:
	rep
	ret
	.cfi_endproc
.LFE111:
	.size	Widget_setCenter, .-Widget_setCenter
	.section	.rodata.str1.1
.LC7:
	.string	"vptr != ((void *)0)"
	.text
	.globl	Widget_mevent
	.type	Widget_mevent, @function
Widget_mevent:
.LFB117:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.9623_2->vtable, D.9623_2->vtable
	mov	rax, QWORD PTR [rax+8]	# vptr, MEM[(const void * *)D.9624_3 + 8B]
	test	rax, rax	# vptr
	jne	.L53	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.9561	#,
	mov	edx, 564	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	__assert_fail	#
.L53:
	call	rax	# vptr
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	Widget_mevent, .-Widget_mevent
	.globl	Widget_draw
	.type	Widget_draw, @function
Widget_draw:
.LFB118:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.9617_2->vtable, D.9617_2->vtable
	mov	rax, QWORD PTR [rax+16]	# vptr, MEM[(const void * *)D.9618_3 + 16B]
	test	rax, rax	# vptr
	jne	.L56	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.9570	#,
	mov	edx, 571	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	__assert_fail	#
.L56:
	movzx	edx, dl	# flip, flip
	call	rax	# vptr
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	Widget_draw, .-Widget_draw
	.globl	Widget_refresh
	.type	Widget_refresh, @function
Widget_refresh:
.LFB119:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.9612_2->vtable, D.9612_2->vtable
	mov	rax, QWORD PTR [rax+24]	# vptr, MEM[(const void * *)D.9613_3 + 24B]
	test	rax, rax	# vptr
	jne	.L59	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.9578	#,
	mov	edx, 578	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	__assert_fail	#
.L59:
	call	rax	# vptr
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	Widget_refresh, .-Widget_refresh
	.globl	Widget_drag
	.type	Widget_drag, @function
Widget_drag:
.LFB120:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.9605_2->vtable, D.9605_2->vtable
	mov	rax, QWORD PTR [rax+32]	# vptr, MEM[(const void * *)D.9606_3 + 32B]
	test	rax, rax	# vptr
	jne	.L62	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.9586	#,
	mov	edx, 585	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	__assert_fail	#
.L62:
	movsx	edx, dx	# dy, dy
	movsx	esi, si	# dx, dx
	call	rax	# vptr
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE120:
	.size	Widget_drag, .-Widget_drag
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"\n----------------------\nStart drag: %s\n"
	.section	.rodata.str1.1
.LC9:
	.string	"End drag:   %s\n"
	.text
	.type	Widget_mouseEvent, @function
Widget_mouseEvent:
.LFB103:
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
	mov	rbp, rsi	# screen, screen
	cmp	BYTE PTR [rsi+123], 0	# screen_3(D)->drag_on,
	je	.L65	#,
	cmp	BYTE PTR [rdi+165], 0	# this_5(D)->draggable,
	je	.L65	#,
	cmp	dl, 5	# _event_type,
	jne	.L65	#,
	mov	rax, QWORD PTR [rsi+80]	# D.9756, screen_3(D)->pevent
	cmp	BYTE PTR [rax+2], 1	# D.9756_9->button.button,
	jne	.L66	#,
	cmp	BYTE PTR [rdi+167], 0	# this_5(D)->visible,
	je	.L66	#,
	mov	BYTE PTR [rdi+166], 1	# this_5(D)->dragging,
	movzx	edx, WORD PTR [rax+4]	# D.10236, D.9756_9->button.x
	mov	WORD PTR [rdi+156], dx	# this_5(D)->stx, D.10236
	movzx	eax, WORD PTR [rax+6]	# D.10235, D.9756_9->button.y
	mov	WORD PTR [rdi+158], ax	# this_5(D)->sty, D.10235
	call	Widget_toString	#
	mov	rcx, rax	#, D.10234
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L66:
	mov	r12d, 0	# s,
	jmp	.L88	#
.L72:
	mov	rax, QWORD PTR [rbp+80]	# D.9756, screen_3(D)->pevent
	mov	r12d, 0	# s,
	cmp	BYTE PTR [rbx+166], 0	# this_5(D)->dragging,
	je	.L68	#,
	movzx	ecx, WORD PTR [rax+4]	# D.10261, D.9756_13->motion.x
	movzx	eax, WORD PTR [rax+6]	# D.10258, D.9756_13->motion.y
	mov	edx, eax	# dy, D.10258
	sub	dx, WORD PTR [rbx+158]	# dy, this_5(D)->sty
	mov	esi, ecx	# tmp110, D.10261
	sub	si, WORD PTR [rbx+156]	# tmp110, this_5(D)->stx
	movsx	esi, si	# D.10253, tmp110
	movsx	edi, WORD PTR [rbx+96]	# this_5(D)->pos.x, this_5(D)->pos.x
	add	edi, esi	# this_5(D)->pos.x, D.10253
	js	.L82	#,
	movsx	edx, dx	# D.10249, dy
	movsx	edi, WORD PTR [rbx+98]	# this_5(D)->pos.y, this_5(D)->pos.y
	add	edi, edx	# this_5(D)->pos.y, D.10249
	js	.L68	#,
	mov	WORD PTR [rbx+156], cx	# this_5(D)->stx, D.10261
	mov	WORD PTR [rbx+158], ax	# this_5(D)->sty, D.10258
	mov	rdi, rbx	#, this
	call	Widget_drag	#
	mov	r12d, 1	# s,
	jmp	.L68	#
.L82:
	mov	r12d, 0	# s,
.L68:
	mov	rax, QWORD PTR [rbp+80]	# screen_3(D)->pevent, screen_3(D)->pevent
	cmp	BYTE PTR [rax], 6	# D.9756_15->type,
	jne	.L85	#,
	mov	rdi, rbp	#, screen
	call	Screen_draw	#
	mov	BYTE PTR [rbx+166], 0	# this_5(D)->dragging,
	mov	rdi, rbx	#, this
	call	Widget_toString	#
	mov	rcx, rax	#, D.9760
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+170], 0	# this_5(D)->mouse_state,
	cmp	QWORD PTR [rbx+8], 0	# this_5(D)->click_handler,
	je	.L70	#,
	mov	BYTE PTR [rbp+121], 1	# screen_3(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rbx+8]]	# this_5(D)->click_handler
.L70:
	cmp	QWORD PTR [rbx+24], 0	# this_5(D)->release_handler,
	je	.L64	#,
	mov	BYTE PTR [rbp+121], 1	# screen_3(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rbx+24]]	# this_5(D)->release_handler
	jmp	.L64	#
.L85:
	mov	rdi, QWORD PTR [rbp+80]	# screen_3(D)->pevent, screen_3(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.9768
	.p2align 4,,2
	jne	.L72	#,
	test	r12b, r12b	# s
	je	.L88	#,
	mov	rdi, rbp	#, screen
	call	Screen_draw	#
.L88:
	cmp	BYTE PTR [rbx+166], 0	# this_5(D)->dragging,
	jne	.L85	#,
	jmp	.L89	#
.L65:
	cmp	BYTE PTR [rbx+168], 0	# this_5(D)->mevent,
	je	.L64	#,
	sub	edx, 3	# tmp119,
	cmp	dl, 4	# tmp119,
	ja	.L64	#,
	movzx	edx, dl	# tmp120, tmp119
	jmp	[QWORD PTR .L80[0+rdx*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L80:
	.quad	.L75
	.quad	.L76
	.quad	.L77
	.quad	.L78
	.quad	.L79
	.text
.L75:
	mov	rax, QWORD PTR [rbx+72]	# D.9776, this_5(D)->mevent_internal.mouse_enter
	test	rax, rax	# D.9776
	je	.L64	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9776
	jmp	.L64	#
.L76:
	mov	rax, QWORD PTR [rbx+80]	# D.9779, this_5(D)->mevent_internal.mouse_exit
	test	rax, rax	# D.9779
	je	.L64	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9779
	jmp	.L64	#
.L77:
	mov	rax, QWORD PTR [rbx+56]	# D.9782, this_5(D)->mevent_internal.press
	test	rax, rax	# D.9782
	je	.L64	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9782
	jmp	.L64	#
.L79:
	mov	rax, QWORD PTR [rbx+64]	# D.9785, this_5(D)->mevent_internal.release
	test	rax, rax	# D.9785
	je	.L64	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9785
	jmp	.L64	#
.L78:
	mov	rax, QWORD PTR [rbx+48]	# D.9788, this_5(D)->mevent_internal.click
	test	rax, rax	# D.9788
	je	.L64	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9788
	jmp	.L64	#
.L89:
	cmp	BYTE PTR [rbx+168], 0	# this_5(D)->mevent,
	jne	.L77	#,
.L64:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	Widget_mouseEvent, .-Widget_mouseEvent
	.globl	Widget_vmevent
	.type	Widget_vmevent, @function
Widget_vmevent:
.LFB112:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+8]	# D.9655, MEM[(struct Widget *)vthis_1(D)].click_handler
	test	rax, rax	# D.9655
	jne	.L92	#,
	cmp	QWORD PTR [rdi+16], 0	# MEM[(struct Widget *)vthis_1(D)].press_handler,
	jne	.L92	#,
	cmp	QWORD PTR [rdi+24], 0	# MEM[(struct Widget *)vthis_1(D)].release_handler,
	jne	.L92	#,
	cmp	QWORD PTR [rdi+32], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_enter_handler,
	jne	.L92	#,
	cmp	BYTE PTR [rdi+168], 0	# MEM[(struct Widget *)vthis_1(D)].mevent,
	jne	.L92	#,
	cmp	BYTE PTR [rdi+165], 0	# MEM[(struct Widget *)vthis_1(D)].draggable,
	je	.L91	#,
.L92:
	cmp	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	je	.L91	#,
	movzx	edx, BYTE PTR [rbp+8]	# screen_10(D)->event.type, screen_10(D)->event.type
	cmp	dl, 5	# screen_10(D)->event.type,
	je	.L95	#,
	cmp	dl, 6	# screen_10(D)->event.type,
	je	.L96	#,
	cmp	dl, 4	# screen_10(D)->event.type,
	jne	.L91	#,
	cmp	BYTE PTR [rbx+165], 0	# MEM[(struct Widget *)vthis_1(D)].draggable,
	jne	.L97	#,
	cmp	BYTE PTR [rbx+168], 0	# MEM[(struct Widget *)vthis_1(D)].mevent,
	je	.L98	#,
.L97:
	cmp	BYTE PTR [rbx+170], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_state,
	je	.L98	#,
	mov	edx, 2	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	jmp	.L91	#
.L98:
	cmp	BYTE PTR [rbx+172], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_move_listen,
	je	.L99	#,
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
.L99:
	cmp	BYTE PTR [rbx+171], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_over,
	jne	.L100	#,
	movzx	esi, WORD PTR [rbp+14]	# D.9681, screen_10(D)->event.motion.y
	movzx	eax, WORD PTR [rbp+12]	# D.9683, screen_10(D)->event.motion.x
	test	rbx, rbx	# vthis
	je	.L91	#,
	movzx	ecx, ax	# D.9683, D.9683
	movsx	edx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	ecx, edx	# D.9683, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L91	#,
	movzx	ecx, si	# D.9681, D.9681
	movsx	edx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	ecx, edx	# D.9681, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L91	#,
	cmp	ax, WORD PTR [rbx+152]	# D.9683, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L91	#,
	cmp	si, WORD PTR [rbx+154]	# D.9681, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L101	#,
	jmp	.L91	#
.L109:
	mov	BYTE PTR [rbp+121], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+32]]	# MEM[(struct Widget *)vthis_1(D)].mouse_enter_handler
	jmp	.L91	#
.L100:
	movzx	esi, WORD PTR [rbp+14]	# D.9681, screen_10(D)->event.motion.y
	movzx	eax, WORD PTR [rbp+12]	# D.9683, screen_10(D)->event.motion.x
	test	rbx, rbx	# vthis
	je	.L102	#,
	movzx	ecx, ax	# D.9683, D.9683
	movsx	edx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	ecx, edx	# D.9683, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L102	#,
	movzx	ecx, si	# D.9681, D.9681
	movsx	edx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	ecx, edx	# D.9681, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L102	#,
	cmp	ax, WORD PTR [rbx+152]	# D.9683, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L102	#,
	cmp	si, WORD PTR [rbx+154]	# D.9681, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L91	#,
	jmp	.L102	#
.L110:
	mov	BYTE PTR [rbp+121], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+40]]	# MEM[(struct Widget *)vthis_1(D)].mouse_exit_handler
	jmp	.L91	#
.L95:
	movzx	edi, WORD PTR [rbp+14]	# D.9701, screen_10(D)->event.button.y
	movzx	edx, WORD PTR [rbp+12]	# D.9703, screen_10(D)->event.button.x
	test	rbx, rbx	# vthis
	je	.L91	#,
	movzx	esi, dx	# D.9703, D.9703
	movsx	ecx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	esi, ecx	# D.9703, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L91	#,
	movzx	esi, di	# D.9701, D.9701
	movsx	ecx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	esi, ecx	# D.9701, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L91	#,
	cmp	dx, WORD PTR [rbx+152]	# D.9703, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L91	#,
	cmp	di, WORD PTR [rbx+154]	# D.9701, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L103	#,
	jmp	.L91	#
.L111:
	mov	BYTE PTR [rbp+121], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+16]]	# MEM[(struct Widget *)vthis_1(D)].press_handler
	jmp	.L104	#
.L114:
	test	rax, rax	# D.9655
	je	.L104	#,
	mov	BYTE PTR [rbp+121], 1	# screen_10(D)->event_handled,
.L104:
	mov	edx, 5	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	jmp	.L91	#
.L96:
	movzx	eax, BYTE PTR [rbx+170]	# D.9673, MEM[(struct Widget *)vthis_1(D)].mouse_state
	test	al, al	# D.9673
	je	.L91	#,
	movzx	edi, WORD PTR [rbp+14]	# D.9701, screen_10(D)->event.button.y
	movzx	edx, WORD PTR [rbp+12]	# D.9703, screen_10(D)->event.button.x
	test	rbx, rbx	# vthis
	je	.L105	#,
	movzx	esi, dx	# D.9703, D.9703
	movsx	ecx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	esi, ecx	# D.9703, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L105	#,
	movzx	esi, di	# D.9701, D.9701
	movsx	ecx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	esi, ecx	# D.9701, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L105	#,
	cmp	dx, WORD PTR [rbx+152]	# D.9703, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L105	#,
	cmp	di, WORD PTR [rbx+154]	# D.9701, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L106	#,
	jmp	.L105	#
.L113:
	mov	edx, 6	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	mov	rsi, QWORD PTR [rbx+8]	# D.9655, MEM[(struct Widget *)vthis_1(D)].click_handler
	test	rsi, rsi	# D.9655
	je	.L107	#,
	cmp	BYTE PTR [rbx+164], 0	# MEM[(struct Widget *)vthis_1(D)].cparam_exist,
	je	.L108	#,
	cmp	QWORD PTR [rbx+128], 0	# MEM[(struct Widget *)vthis_1(D)].cparam,
	jne	.L108	#,
	lea	rdx, [rbx+128]	# tmp165,
	mov	rdi, rbp	#, screen
	call	Screen_getCParam	#
	mov	BYTE PTR [rbx+164], al	# MEM[(struct Widget *)vthis_1(D)].cparam_exist, D.9740
.L108:
	mov	BYTE PTR [rbp+121], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+8]]	# MEM[(struct Widget *)vthis_1(D)].click_handler
	jmp	.L105	#
.L107:
	cmp	QWORD PTR [rbx+16], 0	# MEM[(struct Widget *)vthis_1(D)].press_handler,
	je	.L105	#,
	mov	BYTE PTR [rbp+121], 1	# screen_10(D)->event_handled,
.L105:
	mov	edx, 7	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	mov	BYTE PTR [rbx+170], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_state,
	cmp	QWORD PTR [rbx+24], 0	# MEM[(struct Widget *)vthis_1(D)].release_handler,
	je	.L91	#,
	mov	BYTE PTR [rbp+121], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+24]]	# MEM[(struct Widget *)vthis_1(D)].release_handler
	jmp	.L91	#
.L101:
	mov	BYTE PTR [rbx+171], 1	# MEM[(struct Widget *)vthis_1(D)].mouse_over,
	mov	edx, 3	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	cmp	QWORD PTR [rbx+32], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_enter_handler,
	jne	.L109	#,
	jmp	.L91	#
.L102:
	mov	BYTE PTR [rbx+171], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_over,
	mov	edx, 4	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	cmp	QWORD PTR [rbx+40], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_exit_handler,
	jne	.L110	#,
	jmp	.L91	#
.L103:
	movzx	ecx, BYTE PTR [rbp+10]	# screen_10(D)->event.button.button, screen_10(D)->event.button.button
	sub	ecx, 1	# tmp169,
	mov	edx, 1	# tmp171,
	sal	edx, cl	# tmp170, tmp169
	or	BYTE PTR [rbx+170], dl	# MEM[(struct Widget *)vthis_1(D)].mouse_state, tmp170
	cmp	QWORD PTR [rbx+16], 0	# MEM[(struct Widget *)vthis_1(D)].press_handler,
	jne	.L111	#,
	jmp	.L114	#
.L106:
	movzx	eax, al	# D.9673, D.9673
	movzx	edx, BYTE PTR [rbp+10]	# screen_10(D)->event.button.button, screen_10(D)->event.button.button
	sub	edx, 1	# tmp174,
	bt	eax, edx	# D.9673, tmp174
	jnc	.L105	#,
	jmp	.L113	#
.L91:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	Widget_vmevent, .-Widget_vmevent
	.globl	Widget_setVisible
	.type	Widget_setVisible, @function
Widget_setVisible:
.LFB121:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.9599_2->vtable, D.9599_2->vtable
	mov	rax, QWORD PTR [rax+40]	# vptr, MEM[(const void * *)D.9600_3 + 40B]
	test	rax, rax	# vptr
	jne	.L117	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.9595	#,
	mov	edx, 592	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	__assert_fail	#
.L117:
	movzx	esi, sil	# vis, vis
	call	rax	# vptr
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE121:
	.size	Widget_setVisible, .-Widget_setVisible
	.globl	Widget_class
	.data
	.align 8
	.type	Widget_class, @object
	.size	Widget_class, 8
Widget_class:
	.quad	type
	.section	.rodata.str1.1
.LC10:
	.string	"Widget"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	176
# name:
	.quad	.LC10
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9430, @object
	.size	__FUNCTION__.9430, 16
__FUNCTION__.9430:
	.string	"Widget_vdestroy"
	.type	__FUNCTION__.9441, @object
	.size	__FUNCTION__.9441, 12
__FUNCTION__.9441:
	.string	"Widget_copy"
	.type	__FUNCTION__.9448, @object
	.size	__FUNCTION__.9448, 11
__FUNCTION__.9448:
	.string	"Widget_new"
	.local	str_id.9452
	.comm	str_id.9452,512,32
	.type	__PRETTY_FUNCTION__.9561, @object
	.size	__PRETTY_FUNCTION__.9561, 14
__PRETTY_FUNCTION__.9561:
	.string	"Widget_mevent"
	.type	__PRETTY_FUNCTION__.9570, @object
	.size	__PRETTY_FUNCTION__.9570, 12
__PRETTY_FUNCTION__.9570:
	.string	"Widget_draw"
	.type	__PRETTY_FUNCTION__.9578, @object
	.size	__PRETTY_FUNCTION__.9578, 15
__PRETTY_FUNCTION__.9578:
	.string	"Widget_refresh"
	.type	__PRETTY_FUNCTION__.9586, @object
	.size	__PRETTY_FUNCTION__.9586, 12
__PRETTY_FUNCTION__.9586:
	.string	"Widget_drag"
	.align 16
	.type	__PRETTY_FUNCTION__.9595, @object
	.size	__PRETTY_FUNCTION__.9595, 18
__PRETTY_FUNCTION__.9595:
	.string	"Widget_setVisible"
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	Widget_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	Widget_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
