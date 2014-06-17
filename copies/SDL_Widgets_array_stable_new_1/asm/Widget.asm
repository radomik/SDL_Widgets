	.file	"Widget.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Widget.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Widget.asm
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
	.string	"Widget.c"
	.text
	.type	Widget_vdestroy, @function
Widget_vdestroy:
.LFB97:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+48]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	edx, 73	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+48], 0	# MEM[(struct Widget *)vthis_1(D)].surf,
	mov	rdi, QWORD PTR [rbx+96]	# MEM[(struct Widget *)vthis_1(D)].vparam, MEM[(struct Widget *)vthis_1(D)].vparam
	mov	edx, 75	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+96], 0	# MEM[(struct Widget *)vthis_1(D)].vparam,
	mov	DWORD PTR [rbx+104], 0	# MEM[(struct Widget *)vthis_1(D)].vparam_size,
	mov	DWORD PTR [rbx+108], 0	# MEM[(struct Widget *)vthis_1(D)].vparam_count,
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	mov	rdi, rbx	#, vthis
	call	Object_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	Widget_vdestroy, .-Widget_vdestroy
	.globl	getPeakRSS
	.type	getPeakRSS, @function
getPeakRSS:
.LFB93:
	.cfi_startproc
	sub	rsp, 152	#,
	.cfi_def_cfa_offset 160
	mov	rsi, rsp	#,
	mov	edi, 0	#,
	call	getrusage	#
	mov	rax, QWORD PTR [rsp+32]	# D.10233, rusage.D.8232.ru_maxrss
	sal	rax, 10	# D.10233,
	add	rsp, 152	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	getPeakRSS, .-getPeakRSS
	.section	.rodata.str1.1
.LC1:
	.string	"r"
.LC2:
	.string	"/proc/self/statm"
.LC3:
	.string	"%*s%ld"
	.text
	.globl	getCurrentRSS
	.type	getCurrentRSS, @function
getCurrentRSS:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16	#,
	.cfi_def_cfa_offset 32
	mov	QWORD PTR [rsp+8], 0	# rss,
	mov	esi, OFFSET FLAT:.LC1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fopen	#
	mov	rbx, rax	# fp,
	mov	eax, 0	# D.10223,
	test	rbx, rbx	# fp
	je	.L6	#,
	lea	rdx, [rsp+8]	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rbx	#, fp
	call	fscanf	#
	cmp	eax, 1	# D.10224,
	je	.L7	#,
	mov	rdi, rbx	#, fp
	call	fclose	#
	mov	eax, 0	# D.10223,
	jmp	.L6	#
.L7:
	mov	rdi, rbx	#, fp
	call	fclose	#
	mov	edi, 30	#,
	call	sysconf	#
	imul	rax, QWORD PTR [rsp+8]	# D.10223, rss
.L6:
	add	rsp, 16	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	getCurrentRSS, .-getCurrentRSS
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"Widget_addParameter: Fatal error occured while creating/growing widget.vparam array. Method Static_growArray exited with error %s\n"
	.text
	.globl	Widget_addParameter
	.type	Widget_addParameter, @function
Widget_addParameter:
.LFB95:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 64
	mov	rbx, rdi	# widget, widget
	mov	rbp, rsi	# vparam, vparam
	mov	ecx, DWORD PTR [rdi+104]	# D.10198, widget_3(D)->vparam_size
	cmp	ecx, DWORD PTR [rdi+108]	# D.10198, widget_3(D)->vparam_count
	jne	.L11	#,
	cmp	ecx, edx	# D.10198, def_size
	mov	eax, 10	# tmp86,
	cmovae	edx, eax	# def_size,, def_size, tmp86
	lea	rax, [rdi+104]	# tmp78,
	mov	rsi, QWORD PTR [rdi+96]	# widget_3(D)->vparam, widget_3(D)->vparam
	mov	QWORD PTR [rsp+8], 8	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, edx	#, def_size
	mov	r8d, ecx	#, D.10198
	mov	rdx, rax	#, tmp78
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L13	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.10211
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.10213, e
	jmp	.L14	#
.L13:
	mov	QWORD PTR [rbx+96], rax	# widget_3(D)->vparam, new_array
.L11:
	mov	eax, DWORD PTR [rbx+108]	# D.10199, widget_3(D)->vparam_count
	mov	ecx, eax	# D.10199, D.10199
	mov	rdx, QWORD PTR [rbx+96]	# widget_3(D)->vparam, widget_3(D)->vparam
	mov	QWORD PTR [rdx+rcx*8], rbp	# *D.10217_23, vparam
	add	eax, 1	# tmp84,
	mov	DWORD PTR [rbx+108], eax	# widget_3(D)->vparam_count, tmp84
	mov	eax, 0	# D.10213,
.L14:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Widget_addParameter, .-Widget_addParameter
	.globl	Widget_destroy
	.type	Widget_destroy, @function
Widget_destroy:
.LFB98:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	rdi, QWORD PTR [rdi+48]	# this_1(D)->surf, this_1(D)->surf
	mov	edx, 73	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+48], 0	# this_1(D)->surf,
	mov	rdi, QWORD PTR [rbx+96]	# this_1(D)->vparam, this_1(D)->vparam
	mov	edx, 75	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+96], 0	# this_1(D)->vparam,
	mov	DWORD PTR [rbx+104], 0	# this_1(D)->vparam_size,
	mov	DWORD PTR [rbx+108], 0	# this_1(D)->vparam_count,
	mov	BYTE PTR [rbx+130], 0	# this_1(D)->visible,
	mov	rdi, rbx	#, this
	call	Object_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Widget_destroy, .-Widget_destroy
	.globl	Widget_copy_common
	.type	Widget_copy_common, @function
Widget_copy_common:
.LFB99:
	.cfi_startproc
	movzx	eax, BYTE PTR [rsi+128]	# D.10189, widget_src_1(D)->draggable
	mov	BYTE PTR [rdi+128], al	# widget_dest_3(D)->draggable, D.10189
	mov	BYTE PTR [rdi+129], 0	# widget_dest_3(D)->dragging,
	movzx	eax, BYTE PTR [rsi+131]	# D.10190, widget_src_1(D)->mevent
	mov	BYTE PTR [rdi+131], al	# widget_dest_3(D)->mevent, D.10190
	mov	BYTE PTR [rdi+132], 1	# widget_dest_3(D)->need_reload,
	mov	BYTE PTR [rdi+133], 0	# widget_dest_3(D)->mouse_state,
	mov	BYTE PTR [rdi+134], 0	# widget_dest_3(D)->mouse_over,
	movzx	eax, BYTE PTR [rsi+135]	# D.10191, widget_src_1(D)->mouse_move_listen
	mov	BYTE PTR [rdi+135], al	# widget_dest_3(D)->mouse_move_listen, D.10191
	mov	QWORD PTR [rdi+16], 0	# widget_dest_3(D)->click_handler,
	mov	QWORD PTR [rdi+24], 0	# widget_dest_3(D)->press_handler,
	mov	QWORD PTR [rdi+32], 0	# widget_dest_3(D)->release_handler,
	mov	QWORD PTR [rdi+40], 0	# widget_dest_3(D)->mouse_enter_handler,
	mov	rax, QWORD PTR [rsi+64]	# D.10192, widget_src_1(D)->parameter
	mov	QWORD PTR [rdi+64], rax	# widget_dest_3(D)->parameter, D.10192
	mov	rax, QWORD PTR [rsi+72]	# D.10193, widget_src_1(D)->void_parameter
	mov	QWORD PTR [rdi+72], rax	# widget_dest_3(D)->void_parameter, D.10193
	mov	rax, QWORD PTR [rsi+80]	# D.10194, widget_src_1(D)->void_parameter2
	mov	QWORD PTR [rdi+80], rax	# widget_dest_3(D)->void_parameter2, D.10194
	mov	QWORD PTR [rdi+96], 0	# widget_dest_3(D)->vparam,
	mov	DWORD PTR [rdi+108], 0	# widget_dest_3(D)->vparam_count,
	mov	DWORD PTR [rdi+104], 0	# widget_dest_3(D)->vparam_size,
	mov	QWORD PTR [rdi+88], 0	# widget_dest_3(D)->cparam,
	mov	BYTE PTR [rdi+120], 1	# widget_dest_3(D)->cparam_exist,
	mov	DWORD PTR [rdi+116], 0	# widget_dest_3(D)->id,
	mov	eax, DWORD PTR [rsi+124]	# D.10196, widget_src_1(D)->type
	mov	DWORD PTR [rdi+124], eax	# widget_dest_3(D)->type, D.10196
	movzx	eax, BYTE PTR [rsi+136]	# D.10197, widget_src_1(D)->internal
	mov	BYTE PTR [rdi+136], al	# widget_dest_3(D)->internal, D.10197
	ret
	.cfi_endproc
.LFE99:
	.size	Widget_copy_common, .-Widget_copy_common
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Widget_copy: Failed to copy surface SDL_ConvertSurface: %s\n"
	.text
	.globl	Widget_copy
	.type	Widget_copy, @function
Widget_copy:
.LFB100:
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
	mov	rbx, rdi	# widget_dest, widget_dest
	mov	rbp, rsi	# widget_src, widget_src
	mov	r13d, edx	# copy_pos, copy_pos
	mov	r12d, ecx	# copy_surf, copy_surf
	call	Object_copy	#
	test	r12b, r12b	# copy_surf
	je	.L20	#,
	mov	BYTE PTR [rbx+130], 1	# widget_dest_1(D)->visible,
	mov	rdi, QWORD PTR [rbp+48]	# widget_src_2(D)->surf, widget_src_2(D)->surf
	call	Static_CopySurface	#
	mov	QWORD PTR [rbx+48], rax	# widget_dest_1(D)->surf, D.10175
	test	rax, rax	# D.10175
	jne	.L21	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.10179
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# widget_dest_1(D)->visible,
	jmp	.L19	#
.L20:
	mov	BYTE PTR [rbx+130], 0	# widget_dest_1(D)->visible,
	mov	QWORD PTR [rbx+48], 0	# widget_dest_1(D)->surf,
.L21:
	test	r13b, r13b	# copy_pos
	je	.L23	#,
	mov	rax, QWORD PTR [rbp+56]	# widget_src_2(D)->pos, widget_src_2(D)->pos
	mov	QWORD PTR [rbx+56], rax	# widget_dest_1(D)->pos, widget_src_2(D)->pos
	movzx	eax, WORD PTR [rbp+112]	# D.10183, widget_src_2(D)->maxx
	mov	WORD PTR [rbx+112], ax	# widget_dest_1(D)->maxx, D.10183
	movzx	eax, WORD PTR [rbp+114]	# D.10184, widget_src_2(D)->maxy
	mov	WORD PTR [rbx+114], ax	# widget_dest_1(D)->maxy, D.10184
	jmp	.L24	#
.L23:
	movzx	eax, WORD PTR [rbp+60]	# D.10186, widget_src_2(D)->pos.w
	mov	WORD PTR [rbx+60], ax	# widget_dest_1(D)->pos.w, D.10186
	movzx	eax, WORD PTR [rbp+62]	# D.10187, widget_src_2(D)->pos.h
	mov	WORD PTR [rbx+62], ax	# widget_dest_1(D)->pos.h, D.10187
.L24:
	movzx	eax, BYTE PTR [rbp+128]	# D.10443, widget_src_2(D)->draggable
	mov	BYTE PTR [rbx+128], al	# widget_dest_1(D)->draggable, D.10443
	mov	BYTE PTR [rbx+129], 0	# widget_dest_1(D)->dragging,
	movzx	eax, BYTE PTR [rbp+131]	# D.10444, widget_src_2(D)->mevent
	mov	BYTE PTR [rbx+131], al	# widget_dest_1(D)->mevent, D.10444
	mov	BYTE PTR [rbx+132], 1	# widget_dest_1(D)->need_reload,
	mov	BYTE PTR [rbx+133], 0	# widget_dest_1(D)->mouse_state,
	mov	BYTE PTR [rbx+134], 0	# widget_dest_1(D)->mouse_over,
	movzx	eax, BYTE PTR [rbp+135]	# D.10445, widget_src_2(D)->mouse_move_listen
	mov	BYTE PTR [rbx+135], al	# widget_dest_1(D)->mouse_move_listen, D.10445
	mov	QWORD PTR [rbx+16], 0	# widget_dest_1(D)->click_handler,
	mov	QWORD PTR [rbx+24], 0	# widget_dest_1(D)->press_handler,
	mov	QWORD PTR [rbx+32], 0	# widget_dest_1(D)->release_handler,
	mov	QWORD PTR [rbx+40], 0	# widget_dest_1(D)->mouse_enter_handler,
	mov	rax, QWORD PTR [rbp+64]	# D.10446, widget_src_2(D)->parameter
	mov	QWORD PTR [rbx+64], rax	# widget_dest_1(D)->parameter, D.10446
	mov	rax, QWORD PTR [rbp+72]	# D.10447, widget_src_2(D)->void_parameter
	mov	QWORD PTR [rbx+72], rax	# widget_dest_1(D)->void_parameter, D.10447
	mov	rax, QWORD PTR [rbp+80]	# D.10448, widget_src_2(D)->void_parameter2
	mov	QWORD PTR [rbx+80], rax	# widget_dest_1(D)->void_parameter2, D.10448
	mov	QWORD PTR [rbx+96], 0	# widget_dest_1(D)->vparam,
	mov	DWORD PTR [rbx+108], 0	# widget_dest_1(D)->vparam_count,
	mov	DWORD PTR [rbx+104], 0	# widget_dest_1(D)->vparam_size,
	mov	QWORD PTR [rbx+88], 0	# widget_dest_1(D)->cparam,
	mov	BYTE PTR [rbx+120], 1	# widget_dest_1(D)->cparam_exist,
	mov	DWORD PTR [rbx+116], 0	# widget_dest_1(D)->id,
	mov	eax, DWORD PTR [rbp+124]	# D.10450, widget_src_2(D)->type
	mov	DWORD PTR [rbx+124], eax	# widget_dest_1(D)->type, D.10450
	movzx	eax, BYTE PTR [rbp+136]	# D.10451, widget_src_2(D)->internal
	mov	BYTE PTR [rbx+136], al	# widget_dest_1(D)->internal, D.10451
.L19:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Widget_copy, .-Widget_copy
	.globl	Widget_std_init
	.type	Widget_std_init, @function
Widget_std_init:
.LFB101:
	.cfi_startproc
	mov	WORD PTR [rdi+114], 0	# widget_1(D)->maxy,
	mov	WORD PTR [rdi+112], 0	# widget_1(D)->maxx,
	mov	WORD PTR [rdi+60], 0	# widget_1(D)->pos.w,
	mov	WORD PTR [rdi+62], 0	# widget_1(D)->pos.h,
	mov	WORD PTR [rdi+58], 0	# widget_1(D)->pos.y,
	mov	WORD PTR [rdi+56], 0	# widget_1(D)->pos.x,
	mov	BYTE PTR [rdi+128], 0	# widget_1(D)->draggable,
	mov	BYTE PTR [rdi+129], 0	# widget_1(D)->dragging,
	mov	QWORD PTR [rdi+48], 0	# widget_1(D)->surf,
	mov	BYTE PTR [rdi+130], 0	# widget_1(D)->visible,
	mov	BYTE PTR [rdi+131], 0	# widget_1(D)->mevent,
	mov	BYTE PTR [rdi+135], 0	# widget_1(D)->mouse_move_listen,
	mov	BYTE PTR [rdi+133], 0	# widget_1(D)->mouse_state,
	mov	BYTE PTR [rdi+132], 1	# widget_1(D)->need_reload,
	mov	BYTE PTR [rdi+134], 0	# widget_1(D)->mouse_over,
	mov	QWORD PTR [rdi+16], 0	# widget_1(D)->click_handler,
	mov	QWORD PTR [rdi+24], 0	# widget_1(D)->press_handler,
	mov	QWORD PTR [rdi+32], 0	# widget_1(D)->release_handler,
	mov	QWORD PTR [rdi+40], 0	# widget_1(D)->mouse_enter_handler,
	mov	QWORD PTR [rdi+64], 0	# widget_1(D)->parameter,
	mov	QWORD PTR [rdi+72], 0	# widget_1(D)->void_parameter,
	mov	QWORD PTR [rdi+80], 0	# widget_1(D)->void_parameter2,
	mov	QWORD PTR [rdi+88], 0	# widget_1(D)->cparam,
	mov	BYTE PTR [rdi+120], 1	# widget_1(D)->cparam_exist,
	mov	QWORD PTR [rdi+96], 0	# widget_1(D)->vparam,
	mov	DWORD PTR [rdi+104], 0	# widget_1(D)->vparam_size,
	mov	DWORD PTR [rdi+108], 0	# widget_1(D)->vparam_count,
	mov	DWORD PTR [rdi+116], 0	# widget_1(D)->id,
	mov	BYTE PTR [rdi+136], 0	# widget_1(D)->internal,
	ret
	.cfi_endproc
.LFE101:
	.size	Widget_std_init, .-Widget_std_init
	.globl	Widget_init_type
	.type	Widget_init_type, @function
Widget_init_type:
.LFB102:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbx, rdi	# widget, widget
	mov	ebp, esi	# widget_type, widget_type
	mov	rsi, rdx	# vdestroy, vdestroy
	mov	rdx, rcx	# type, type
	test	rsi, rsi	# vdestroy
	mov	ecx, OFFSET FLAT:Widget_vdestroy	# tmp63,
	cmove	rsi, rcx	# vdestroy,, vdestroy, tmp63
	call	Object_init_type	#
	mov	DWORD PTR [rbx+124], ebp	# widget_5(D)->type, widget_type
	mov	WORD PTR [rbx+114], 0	# widget_5(D)->maxy,
	mov	WORD PTR [rbx+112], 0	# widget_5(D)->maxx,
	mov	WORD PTR [rbx+60], 0	# widget_5(D)->pos.w,
	mov	WORD PTR [rbx+62], 0	# widget_5(D)->pos.h,
	mov	WORD PTR [rbx+58], 0	# widget_5(D)->pos.y,
	mov	WORD PTR [rbx+56], 0	# widget_5(D)->pos.x,
	mov	BYTE PTR [rbx+128], 0	# widget_5(D)->draggable,
	mov	BYTE PTR [rbx+129], 0	# widget_5(D)->dragging,
	mov	QWORD PTR [rbx+48], 0	# widget_5(D)->surf,
	mov	BYTE PTR [rbx+130], 0	# widget_5(D)->visible,
	mov	BYTE PTR [rbx+131], 0	# widget_5(D)->mevent,
	mov	BYTE PTR [rbx+135], 0	# widget_5(D)->mouse_move_listen,
	mov	BYTE PTR [rbx+133], 0	# widget_5(D)->mouse_state,
	mov	BYTE PTR [rbx+132], 1	# widget_5(D)->need_reload,
	mov	BYTE PTR [rbx+134], 0	# widget_5(D)->mouse_over,
	mov	QWORD PTR [rbx+16], 0	# widget_5(D)->click_handler,
	mov	QWORD PTR [rbx+24], 0	# widget_5(D)->press_handler,
	mov	QWORD PTR [rbx+32], 0	# widget_5(D)->release_handler,
	mov	QWORD PTR [rbx+40], 0	# widget_5(D)->mouse_enter_handler,
	mov	QWORD PTR [rbx+64], 0	# widget_5(D)->parameter,
	mov	QWORD PTR [rbx+72], 0	# widget_5(D)->void_parameter,
	mov	QWORD PTR [rbx+80], 0	# widget_5(D)->void_parameter2,
	mov	QWORD PTR [rbx+88], 0	# widget_5(D)->cparam,
	mov	BYTE PTR [rbx+120], 1	# widget_5(D)->cparam_exist,
	mov	QWORD PTR [rbx+96], 0	# widget_5(D)->vparam,
	mov	DWORD PTR [rbx+104], 0	# widget_5(D)->vparam_size,
	mov	DWORD PTR [rbx+108], 0	# widget_5(D)->vparam_count,
	mov	DWORD PTR [rbx+116], 0	# widget_5(D)->id,
	mov	BYTE PTR [rbx+136], 0	# widget_5(D)->internal,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	Widget_init_type, .-Widget_init_type
	.section	.rodata.str1.1
.LC6:
	.string	"true"
.LC7:
	.string	"false"
.LC8:
	.string	"widget=NULL"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"Widget[%p](%s): ID=%u, VIS=%s [x,y,mx,my,w,h]=[%hu,%hu,%hu,%hu,%hu,%hu]"
	.text
	.globl	Widget_toString
	.type	Widget_toString, @function
Widget_toString:
.LFB103:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 152	#,
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# widget, widget
	test	rdi, rdi	# widget
	je	.L33	#,
	movzx	r15d, WORD PTR [rdi+62]	# D.10122, widget_3(D)->pos.h
	movzx	r14d, WORD PTR [rdi+60]	# D.10124, widget_3(D)->pos.w
	movzx	r13d, WORD PTR [rdi+114]	# D.10126, widget_3(D)->maxy
	movzx	r12d, WORD PTR [rdi+112]	# D.10128, widget_3(D)->maxx
	movsx	eax, WORD PTR [rdi+58]	#, widget_3(D)->pos.y
	mov	DWORD PTR [rsp+84], eax	# %sfp,
	movsx	edx, WORD PTR [rdi+56]	#, widget_3(D)->pos.x
	mov	DWORD PTR [rsp+88], edx	# %sfp,
	cmp	BYTE PTR [rdi+130], 0	# widget_3(D)->visible,
	mov	eax, OFFSET FLAT:.LC6	# tmp80,
	mov	ebp, OFFSET FLAT:.LC7	# tmp79,
	cmovne	rbp, rax	# tmp79,, iftmp.26, tmp80
	mov	eax, DWORD PTR [rdi+116]	#, widget_3(D)->id
	mov	DWORD PTR [rsp+92], eax	# %sfp,
	call	Object_getType	#
	mov	DWORD PTR [rsp+64], r15d	#, D.10122
	mov	DWORD PTR [rsp+56], r14d	#, D.10124
	mov	DWORD PTR [rsp+48], r13d	#, D.10126
	mov	DWORD PTR [rsp+40], r12d	#, D.10128
	mov	edx, DWORD PTR [rsp+84]	#, %sfp
	mov	DWORD PTR [rsp+32], edx	#,
	mov	edx, DWORD PTR [rsp+88]	#, %sfp
	mov	DWORD PTR [rsp+24], edx	#,
	mov	QWORD PTR [rsp+16], rbp	#, iftmp.26
	mov	edx, DWORD PTR [rsp+92]	#, %sfp
	mov	DWORD PTR [rsp+8], edx	#,
	mov	QWORD PTR [rsp], rax	#, D.10139
	mov	r9, rbx	#, widget
	mov	r8d, OFFSET FLAT:.LC9	#,
	mov	ecx, 512	#,
	mov	edx, 1	#,
	mov	esi, 512	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.10120,
	jmp	.L31	#
.L33:
	mov	eax, OFFSET FLAT:.LC8	# D.10120,
.L31:
	mov	rbx, QWORD PTR [rsp+104]	#,
	mov	rbp, QWORD PTR [rsp+112]	#,
	mov	r12, QWORD PTR [rsp+120]	#,
	mov	r13, QWORD PTR [rsp+128]	#,
	mov	r14, QWORD PTR [rsp+136]	#,
	mov	r15, QWORD PTR [rsp+144]	#,
	add	rsp, 152	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	Widget_toString, .-Widget_toString
	.globl	Widget_draw
	.type	Widget_draw, @function
Widget_draw:
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
	mov	rbx, rdi	# widget, widget
	cmp	BYTE PTR [rdi+130], 0	# widget_1(D)->visible,
	je	.L36	#,
	mov	rbp, rsi	# screen, screen
	mov	r12d, edx	# flip, flip
	lea	rcx, [rdi+56]	# tmp68,
	mov	rdx, QWORD PTR [rsi+80]	# screen_4(D)->screen, screen_4(D)->screen
	mov	rdi, QWORD PTR [rdi+48]	# widget_1(D)->surf, widget_1(D)->surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	BYTE PTR [rbx+132], 0	# widget_1(D)->need_reload,
	test	r12b, r12b	# flip
	je	.L36	#,
	mov	rdi, QWORD PTR [rbp+80]	# screen_4(D)->screen, screen_4(D)->screen
	call	SDL_Flip	#
.L36:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Widget_draw, .-Widget_draw
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"\n----------------------\nStart drag: %s\n"
	.text
	.globl	Widget_mousePressed
	.type	Widget_mousePressed, @function
Widget_mousePressed:
.LFB105:
	.cfi_startproc
	cmp	BYTE PTR [rsi+2], 1	# event_1(D)->button.button,
	jne	.L43	#,
	cmp	BYTE PTR [rdi+128], 0	# widget_3(D)->draggable,
	je	.L43	#,
	cmp	BYTE PTR [rdi+130], 0	# widget_3(D)->visible,
	je	.L43	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	BYTE PTR [rdi+129], 1	# widget_3(D)->dragging,
	movzx	eax, WORD PTR [rsi+4]	# event_1(D)->button.x, event_1(D)->button.x
	mov	WORD PTR stx[rip], ax	# stx, event_1(D)->button.x
	movzx	eax, WORD PTR [rsi+6]	# event_1(D)->button.y, event_1(D)->button.y
	mov	WORD PTR sty[rip], ax	# sty, event_1(D)->button.y
	call	Widget_toString	#
	mov	rcx, rax	#, D.10108
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L43:
	rep
	ret
	.cfi_endproc
.LFE105:
	.size	Widget_mousePressed, .-Widget_mousePressed
	.globl	Widget_mouseDragging
	.type	Widget_mouseDragging, @function
Widget_mouseDragging:
.LFB106:
	.cfi_startproc
	mov	eax, 0	# D.10075,
	cmp	BYTE PTR [rdi+129], 0	# widget_2(D)->dragging,
	je	.L52	#,
	movzx	r9d, WORD PTR [rsi+4]	# D.10054, event_4(D)->motion.x
	mov	eax, r9d	# D.10056, D.10054
	sub	ax, WORD PTR stx[rip]	# D.10056, stx
	mov	WORD PTR dx[rip], ax	# dx, D.10056
	movzx	r8d, WORD PTR [rsi+6]	# D.10058, event_4(D)->motion.y
	mov	ecx, r8d	# D.10060, D.10058
	sub	cx, WORD PTR sty[rip]	# D.10060, sty
	mov	WORD PTR dy[rip], cx	# dy, D.10060
	movzx	r10d, WORD PTR [rdi+56]	# D.10064, widget_2(D)->pos.x
	movsx	esi, ax	# D.10067, D.10056
	movsx	edx, r10w	# D.10064, D.10064
	add	edx, esi	# D.10064, D.10067
	js	.L48	#,
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzx	r11d, WORD PTR [rdi+58]	# D.10070, widget_2(D)->pos.y
	movsx	edx, cx	# D.10073, D.10060
	movsx	ebx, r11w	# D.10070, D.10070
	add	ebx, edx	# D.10070, D.10073
	js	.L49	#,
	mov	WORD PTR stx[rip], r9w	# stx, D.10054
	mov	WORD PTR sty[rip], r8w	# sty, D.10058
	cmp	DWORD PTR [rdi+124], 9	# widget_2(D)->type,
	jne	.L46	#,
	call	Container_dragItems	#
	mov	eax, 1	# D.10075,
	jmp	.L45	#
.L46:
	add	r10d, eax	# tmp95, D.10056
	mov	WORD PTR [rdi+56], r10w	# widget_2(D)->pos.x, tmp95
	add	r11d, ecx	# tmp96, D.10060
	mov	WORD PTR [rdi+58], r11w	# widget_2(D)->pos.y, tmp96
	add	WORD PTR [rdi+112], ax	# widget_2(D)->maxx, D.10056
	add	WORD PTR [rdi+114], cx	# widget_2(D)->maxy, D.10060
	mov	eax, 1	# D.10075,
	jmp	.L45	#
.L48:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	mov	eax, 0	# D.10075,
	ret
.L49:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	eax, 0	# D.10075,
.L45:
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L52:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	Widget_mouseDragging, .-Widget_mouseDragging
	.section	.rodata.str1.1
.LC11:
	.string	"End drag:   %s\n"
	.text
	.globl	Widget_mouseReleased
	.type	Widget_mouseReleased, @function
Widget_mouseReleased:
.LFB107:
	.cfi_startproc
	cmp	BYTE PTR [rdi+129], 0	# widget_1(D)->dragging,
	je	.L57	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	BYTE PTR [rdi+129], 0	# widget_1(D)->dragging,
	call	Widget_toString	#
	mov	rcx, rax	#, D.10049
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L57:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	Widget_mouseReleased, .-Widget_mouseReleased
	.globl	mouseEvent
	.type	mouseEvent, @function
mouseEvent:
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
	mov	rbx, rdi	# widget, widget
	mov	rbp, rsi	# screen, screen
	mov	r12d, edx	# _event_type, _event_type
	cmp	BYTE PTR [rsi+131], 0	# screen_5(D)->drag_on,
	je	.L59	#,
	cmp	BYTE PTR [rdi+128], 0	# widget_7(D)->draggable,
	je	.L59	#,
	cmp	dl, 5	# _event_type,
	jne	.L59	#,
	mov	rsi, QWORD PTR [rsi+88]	# screen_5(D)->pevent, screen_5(D)->pevent
	call	Widget_mousePressed	#
	jmp	.L118	#
.L64:
	mov	rsi, QWORD PTR [rbp+88]	# screen_5(D)->pevent, screen_5(D)->pevent
	mov	rdi, rbx	#, widget
	call	Widget_mouseDragging	#
	mov	BYTE PTR s[rip], al	# s, s.7
	mov	rax, QWORD PTR [rbp+88]	# screen_5(D)->pevent, screen_5(D)->pevent
	cmp	BYTE PTR [rax], 6	# D.9905_16->type,
	jne	.L112	#,
	mov	rdi, rbp	#, screen
	call	Screen_draw	#
	mov	BYTE PTR [rbx+129], 0	# widget_7(D)->dragging,
	mov	rdi, rbx	#, widget
	call	Widget_toString	#
	mov	rcx, rax	#, D.9910
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+133], 0	# widget_7(D)->mouse_state,
	cmp	QWORD PTR [rbx+16], 0	# widget_7(D)->click_handler,
	je	.L62	#,
	mov	BYTE PTR [rbp+129], 1	# screen_5(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	[QWORD PTR [rbx+16]]	# widget_7(D)->click_handler
.L62:
	cmp	QWORD PTR [rbx+32], 0	# widget_7(D)->release_handler,
	je	.L58	#,
	mov	BYTE PTR [rbp+129], 1	# screen_5(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	[QWORD PTR [rbx+32]]	# widget_7(D)->release_handler
	jmp	.L58	#
.L112:
	mov	rdi, QWORD PTR [rbp+88]	# screen_5(D)->pevent, screen_5(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.9918
	.p2align 4,,2
	jne	.L64	#,
	cmp	BYTE PTR s[rip], 0	# s,
	je	.L118	#,
	mov	rdi, rbp	#, screen
	call	Screen_draw	#
.L118:
	cmp	BYTE PTR [rbx+129], 0	# widget_7(D)->dragging,
	jne	.L112	#,
.L59:
	cmp	BYTE PTR [rbx+131], 0	# widget_7(D)->mevent,
	je	.L58	#,
	mov	eax, DWORD PTR [rbx+124]	# widget_7(D)->type, widget_7(D)->type
	cmp	eax, 5	# widget_7(D)->type,
	je	.L67	#,
	cmp	eax, 5	# widget_7(D)->type,
	ja	.L70	#,
	cmp	eax, 1	# widget_7(D)->type,
	jne	.L58	#,
	.p2align 4,,5
	jmp	.L66	#
.L70:
	cmp	eax, 8	# widget_7(D)->type,
	.p2align 4,,5
	je	.L68	#,
	cmp	eax, 10	# widget_7(D)->type,
	.p2align 4,,5
	jne	.L58	#,
	.p2align 4,,5
	jmp	.L69	#
.L66:
	cmp	r12b, 7	# _event_type,
	.p2align 4,,4
	ja	.L58	#,
	movzx	r12d, r12b	# _event_type, _event_type
	.p2align 4,,3
	jmp	[QWORD PTR .L78[0+r12*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L78:
	.quad	.L58
	.quad	.L71
	.quad	.L72
	.quad	.L73
	.quad	.L74
	.quad	.L75
	.quad	.L76
	.quad	.L77
	.text
.L76:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	Button_mouseClicked	#
	jmp	.L58	#
.L75:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	Button_mousePressed	#
	.p2align 4,,2
	jmp	.L58	#
.L77:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	Button_mouseReleased	#
	.p2align 4,,2
	jmp	.L58	#
.L73:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	Button_mouseEnter	#
	.p2align 4,,2
	jmp	.L58	#
.L74:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	Button_mouseExit	#
	.p2align 4,,2
	jmp	.L58	#
.L71:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	Button_mouseMove	#
	.p2align 4,,2
	jmp	.L58	#
.L72:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	Button_mouseDragging	#
	.p2align 4,,2
	jmp	.L58	#
.L67:
	cmp	r12b, 7	# _event_type,
	ja	.L58	#,
	movzx	r12d, r12b	# _event_type, _event_type
	.p2align 4,,3
	jmp	[QWORD PTR .L86[0+r12*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L86:
	.quad	.L58
	.quad	.L79
	.quad	.L80
	.quad	.L81
	.quad	.L82
	.quad	.L83
	.quad	.L84
	.quad	.L85
	.text
.L84:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	ButtonImage_mouseClicked	#
	jmp	.L58	#
.L83:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	ButtonImage_mousePressed	#
	.p2align 4,,2
	jmp	.L58	#
.L85:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	ButtonImage_mouseReleased	#
	.p2align 4,,2
	jmp	.L58	#
.L81:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	ButtonImage_mouseEnter	#
	.p2align 4,,2
	jmp	.L58	#
.L82:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	ButtonImage_mouseExit	#
	.p2align 4,,2
	jmp	.L58	#
.L79:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	ButtonImage_mouseMove	#
	.p2align 4,,2
	jmp	.L58	#
.L80:
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	ButtonImage_mouseDragging	#
	.p2align 4,,2
	jmp	.L58	#
.L68:
	cmp	r12b, 5	# _event_type,
	jne	.L58	#,
	movzx	eax, WORD PTR [rbp+20]	# screen_5(D)->event.button.x, screen_5(D)->event.button.x
	sub	ax, WORD PTR [rbx+56]	# D.9933, MEM[(struct WaveDrawBox *)widget_7(D)].widget.pos.x
	mov	WORD PTR [rbx+190], ax	# MEM[(struct WaveDrawBox *)widget_7(D)].relx, D.9933
	movzx	edx, WORD PTR [rbp+22]	# screen_5(D)->event.button.y, screen_5(D)->event.button.y
	sub	dx, WORD PTR [rbx+58]	# D.9937, MEM[(struct WaveDrawBox *)widget_7(D)].widget.pos.y
	mov	WORD PTR [rbx+192], dx	# MEM[(struct WaveDrawBox *)widget_7(D)].rely, D.9937
	movzx	ecx, WORD PTR [rbx+194]	# D.9939, MEM[(struct WaveDrawBox *)widget_7(D)].relx_min
	cmp	ax, cx	# D.9933, D.9939
	jb	.L58	#,
	movzx	esi, WORD PTR [rbx+198]	# D.9943, MEM[(struct WaveDrawBox *)widget_7(D)].rely_min
	cmp	dx, si	# D.9937, D.9943
	jb	.L58	#,
	cmp	ax, WORD PTR [rbx+196]	# D.9933, MEM[(struct WaveDrawBox *)widget_7(D)].relx_max
	ja	.L58	#,
	cmp	dx, WORD PTR [rbx+200]	# D.9937, MEM[(struct WaveDrawBox *)widget_7(D)].rely_max
	ja	.L58	#,
	mov	BYTE PTR [rbx+129], 1	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.dragging,
	sub	eax, ecx	# D.9952, D.9939
	mov	WORD PTR [rbx+202], ax	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, D.9952
	movzx	edi, dx	# D.9937, D.9937
	movzx	esi, si	# D.9943, D.9943
	sub	esi, edi	# tmp319, D.9937
	lea	ecx, [rsi+rsi]	# tmp320,
	cvtsi2ss	xmm1, ecx	# tmp321, tmp320
	movzx	ecx, WORD PTR [rbx+182]	# MEM[(struct WaveDrawBox *)widget_7(D)].yrange, MEM[(struct WaveDrawBox *)widget_7(D)].yrange
	cvtsi2ss	xmm0, ecx	# tmp322, MEM[(struct WaveDrawBox *)widget_7(D)].yrange
	divss	xmm1, xmm0	# tmp321, tmp322
	movaps	xmm0, xmm1	# tmp324, tmp321
	addss	xmm0, DWORD PTR .LC12[rip]	# tmp325,
	movss	DWORD PTR [rbx+168], xmm0	# MEM[(struct WaveDrawBox *)widget_7(D)].yp, tmp325
	movzx	eax, ax	# D.9952, D.9952
	mov	rcx, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	lea	rcx, [rcx+rax*8]	# D.9967,
	movzx	eax, WORD PTR [rcx+6]	# D.9968, D.9967_64->rely
	cmp	dx, ax	# D.9937, D.9968
	je	.L110	#,
	test	ax, ax	# D.9968
	je	.L88	#,
	cmp	ax, WORD PTR [rbx+188]	# D.9968, MEM[(struct WaveDrawBox *)widget_7(D)].zero_y
	je	.L88	#,
	movsx	edx, ax	# D.9968, D.9968
	movsx	esi, WORD PTR [rcx+4]	# D.9967_64->relx, D.9967_64->relx
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf, MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf
	mov	ecx, -737793	#,
	call	pixelColor	#
.L88:
	movzx	ecx, WORD PTR [rbx+190]	# D.9938, MEM[(struct WaveDrawBox *)widget_7(D)].relx
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	mov	WORD PTR [rax+4+rdx*8], cx	# D.9967_101->relx, D.9938
	movzx	ecx, WORD PTR [rbx+192]	# D.9942, MEM[(struct WaveDrawBox *)widget_7(D)].rely
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	mov	WORD PTR [rax+6+rdx*8], cx	# D.9967_107->rely, D.9942
	movss	xmm0, DWORD PTR [rbx+168]	# D.9982, MEM[(struct WaveDrawBox *)widget_7(D)].yp
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	movss	DWORD PTR [rax+rdx*8], xmm0	# D.9967_113->fvalue, D.9982
	movzx	eax, WORD PTR [rbx+188]	#, MEM[(struct WaveDrawBox *)widget_7(D)].zero_y
	cmp	WORD PTR [rbx+192], ax	# MEM[(struct WaveDrawBox *)widget_7(D)].rely,
	je	.L89	#,
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	lea	rax, [rax+rdx*8]	# D.9967,
	movsx	edx, WORD PTR [rax+6]	# D.9967_121->rely, D.9967_121->rely
	movsx	esi, WORD PTR [rax+4]	# D.9967_121->relx, D.9967_121->relx
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf, MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf
	mov	ecx, -16766721	#,
	call	pixelColor	#
.L89:
	lea	rcx, [rbx+56]	# tmp346,
	mov	rdx, QWORD PTR [rbp+80]	# screen_5(D)->screen, screen_5(D)->screen
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf, MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	rdi, QWORD PTR [rbp+80]	# screen_5(D)->screen, screen_5(D)->screen
	call	SDL_Flip	#
	jmp	.L110	#
.L101:
	mov	rax, QWORD PTR [rbp+88]	# screen_5(D)->pevent, screen_5(D)->pevent
	movzx	eax, BYTE PTR [rax]	# D.9907, D.9905_141->type
	cmp	al, 4	# D.9907,
	jne	.L91	#,
	movzx	esi, WORD PTR [rbp+22]	# D.9989, screen_5(D)->event.motion.y
	movzx	eax, WORD PTR [rbp+20]	# D.9991, screen_5(D)->event.motion.x
	test	rbx, rbx	# widget
	je	.L119	#,
	movzx	ecx, ax	# D.9991, D.9991
	movsx	edx, WORD PTR [rbx+56]	# widget_7(D)->pos.x, widget_7(D)->pos.x
	cmp	ecx, edx	# D.9991, widget_7(D)->pos.x
	jl	.L119	#,
	movzx	ecx, si	# D.9989, D.9989
	movsx	edx, WORD PTR [rbx+58]	# widget_7(D)->pos.y, widget_7(D)->pos.y
	cmp	ecx, edx	# D.9989, widget_7(D)->pos.y
	jl	.L119	#,
	cmp	ax, WORD PTR [rbx+112]	# D.9991, widget_7(D)->maxx
	ja	.L119	#,
	cmp	si, WORD PTR [rbx+114]	# D.9989, widget_7(D)->maxy
	jbe	.L93	#,
	.p2align 4,,3
	jmp	.L119	#
.L104:
	movzx	esi, WORD PTR [rbx+198]	# D.9943, MEM[(struct WaveDrawBox *)widget_7(D)].rely_min
	cmp	dx, si	# D.9998, D.9943
	jb	.L119	#,
	cmp	ax, WORD PTR [rbx+196]	# D.9997, MEM[(struct WaveDrawBox *)widget_7(D)].relx_max
	ja	.L119	#,
	cmp	dx, WORD PTR [rbx+200]	# D.9998, MEM[(struct WaveDrawBox *)widget_7(D)].rely_max
	ja	.L119	#,
	sub	eax, ecx	# D.9952, D.9939
	mov	WORD PTR [rbx+202], ax	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, D.9952
	movzx	edi, dx	# D.9998, D.9998
	movzx	ecx, si	# D.9943, D.9943
	sub	ecx, edi	# tmp358, D.9998
	add	ecx, ecx	# tmp359
	cvtsi2ss	xmm1, ecx	# tmp360, tmp359
	movzx	ecx, WORD PTR [rbx+182]	# MEM[(struct WaveDrawBox *)widget_7(D)].yrange, MEM[(struct WaveDrawBox *)widget_7(D)].yrange
	cvtsi2ss	xmm0, ecx	# tmp361, MEM[(struct WaveDrawBox *)widget_7(D)].yrange
	divss	xmm1, xmm0	# tmp360, tmp361
	movaps	xmm0, xmm1	# tmp363, tmp360
	addss	xmm0, DWORD PTR .LC12[rip]	# tmp364,
	movss	DWORD PTR [rbx+168], xmm0	# MEM[(struct WaveDrawBox *)widget_7(D)].yp, tmp364
	movzx	eax, ax	# D.9952, D.9952
	mov	rcx, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	lea	rcx, [rcx+rax*8]	# D.9967,
	movzx	eax, WORD PTR [rcx+6]	# D.9968, D.9967_184->rely
	cmp	dx, ax	# D.9998, D.9968
	je	.L119	#,
	test	ax, ax	# D.9968
	je	.L94	#,
	cmp	ax, WORD PTR [rbx+188]	# D.9968, MEM[(struct WaveDrawBox *)widget_7(D)].zero_y
	je	.L94	#,
	movsx	edx, ax	# D.9968, D.9968
	movsx	esi, WORD PTR [rcx+4]	# D.9967_184->relx, D.9967_184->relx
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf, MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf
	mov	ecx, -737793	#,
	call	pixelColor	#
.L94:
	movzx	ecx, WORD PTR [rbx+190]	# D.9938, MEM[(struct WaveDrawBox *)widget_7(D)].relx
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	mov	WORD PTR [rax+4+rdx*8], cx	# D.9967_221->relx, D.9938
	movzx	ecx, WORD PTR [rbx+192]	# D.9942, MEM[(struct WaveDrawBox *)widget_7(D)].rely
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	mov	WORD PTR [rax+6+rdx*8], cx	# D.9967_227->rely, D.9942
	movss	xmm0, DWORD PTR [rbx+168]	# D.9982, MEM[(struct WaveDrawBox *)widget_7(D)].yp
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	movss	DWORD PTR [rax+rdx*8], xmm0	# D.9967_233->fvalue, D.9982
	movzx	eax, WORD PTR [rbx+188]	#, MEM[(struct WaveDrawBox *)widget_7(D)].zero_y
	cmp	WORD PTR [rbx+192], ax	# MEM[(struct WaveDrawBox *)widget_7(D)].rely,
	je	.L95	#,
	movzx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)widget_7(D)].xp, MEM[(struct WaveDrawBox *)widget_7(D)].xp
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	lea	rax, [rax+rdx*8]	# D.9967,
	movsx	edx, WORD PTR [rax+6]	# D.9967_241->rely, D.9967_241->rely
	movsx	esi, WORD PTR [rax+4]	# D.9967_241->relx, D.9967_241->relx
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf, MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf
	mov	ecx, -16766721	#,
	call	pixelColor	#
.L95:
	mov	rdx, QWORD PTR [rbp+80]	# screen_5(D)->screen, screen_5(D)->screen
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf, MEM[(struct WaveDrawBox *)widget_7(D)].widget.surf
	mov	rcx, r12	#, tmp418
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	rdi, QWORD PTR [rbp+80]	# screen_5(D)->screen, screen_5(D)->screen
	call	SDL_Flip	#
	jmp	.L119	#
.L91:
	cmp	al, 6	# D.9907,
	.p2align 4,,2
	jne	.L119	#,
	mov	BYTE PTR [rbx+129], 0	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.dragging,
	cmp	QWORD PTR [rbx+160], 0	# MEM[(struct WaveDrawBox *)widget_7(D)].samples,
	je	.L120	#,
	movzx	r11d, WORD PTR [rbx+172]	# xrange, MEM[(struct WaveDrawBox *)widget_7(D)].bunch
	cmp	WORD PTR [rbx+180], 1	# MEM[(struct WaveDrawBox *)widget_7(D)].xrange,
	jbe	.L105	#,
	mov	r10d, 1	# i,
	mov	edi, 0	# s,
	movzx	r14d, r11w	# xrange, xrange
	lea	r13d, [r11-1]	# tmp414,
	jmp	.L100	#
.L106:
	mov	edi, r9d	# s, s
.L100:
	mov	rax, QWORD PTR [rbx+152]	# D.9963, MEM[(struct WaveDrawBox *)widget_7(D)].points
	movzx	edx, r10w	# D.10021, i
	movss	xmm1, DWORD PTR [rax-8+rdx*8]	# y1, D.10024_269->fvalue
	movss	xmm3, DWORD PTR [rax+rdx*8]	# yrange, D.10027_274->fvalue
	movzx	edx, di	# s, s
	mov	rax, QWORD PTR [rbx+160]	# MEM[(struct WaveDrawBox *)widget_7(D)].samples, MEM[(struct WaveDrawBox *)widget_7(D)].samples
	movss	DWORD PTR [rax+rdx*4], xmm1	# *D.10030_280, y1
	lea	r9d, [rdi+1]	# s,
	subss	xmm3, xmm1	# yrange, y1
	cmp	r11w, 1	# xrange,
	jbe	.L98	#,
	lea	r8d, [rdi+r11]	# D.10502,
	mov	eax, r9d	# s, s
	cvtsi2ss	xmm2, r14d	# tmp412, xrange
.L99:
	movzx	ecx, ax	# s, s
	mov	rdx, QWORD PTR [rbx+160]	# MEM[(struct WaveDrawBox *)widget_7(D)].samples, MEM[(struct WaveDrawBox *)widget_7(D)].samples
	mov	esi, eax	# tmp394, s
	sub	esi, edi	# tmp394, s
	movzx	esi, si	# tmp396, tmp394
	cvtsi2ss	xmm0, esi	# tmp395, tmp396
	mulss	xmm0, xmm3	# tmp397, yrange
	divss	xmm0, xmm2	# tmp400, tmp412
	addss	xmm0, xmm1	# tmp401, y1
	movss	DWORD PTR [rdx+rcx*4], xmm0	# *D.10030_286, tmp401
	add	eax, 1	# s,
	cmp	ax, r8w	# s, D.10502
	jne	.L99	#,
	add	r9d, r13d	# s, tmp414
.L98:
	add	r10d, 1	# i,
	cmp	WORD PTR [rbx+180], r10w	# MEM[(struct WaveDrawBox *)widget_7(D)].xrange, i
	ja	.L106	#,
	jmp	.L97	#
.L105:
	mov	r10d, 1	# i,
	mov	r9d, 0	# s,
.L97:
	movzx	r10d, r10w	# i, i
	mov	rax, QWORD PTR [rbx+152]	# MEM[(struct WaveDrawBox *)widget_7(D)].points, MEM[(struct WaveDrawBox *)widget_7(D)].points
	movss	xmm0, DWORD PTR [rax-8+r10*8]	# D.10037, D.10024_303->fvalue
	movzx	r9d, r9w	# s, s
	mov	rax, QWORD PTR [rbx+160]	# MEM[(struct WaveDrawBox *)widget_7(D)].samples, MEM[(struct WaveDrawBox *)widget_7(D)].samples
	movss	DWORD PTR [rax+r9*4], xmm0	# *D.10030_298, D.10037
	jmp	.L120	#
.L119:
	mov	rdi, QWORD PTR [rbp+88]	# screen_5(D)->pevent, screen_5(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.10038
	je	.L120	#,
	.p2align 4,,2
	jmp	.L101	#
.L110:
	lea	r12, [rbx+56]	# tmp418,
.L120:
	cmp	BYTE PTR [rbx+129], 0	# MEM[(struct WaveDrawBox *)widget_7(D)].widget.dragging,
	jne	.L119	#,
	jmp	.L58	#
.L69:
	cmp	r12b, 5	# _event_type,
	jne	.L58	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	HistStretchGraph_mousePressed	#
	jmp	.L58	#
.L93:
	sub	eax, DWORD PTR [rbx+56]	# D.9997, MEM[(struct WaveDrawBox *)widget_7(D)].widget.pos.x
	mov	WORD PTR [rbx+190], ax	# MEM[(struct WaveDrawBox *)widget_7(D)].relx, D.9997
	movzx	edx, WORD PTR [rbp+22]	# screen_5(D)->event.motion.y, screen_5(D)->event.motion.y
	sub	dx, WORD PTR [rbx+58]	# D.9998, MEM[(struct WaveDrawBox *)widget_7(D)].widget.pos.y
	mov	WORD PTR [rbx+192], dx	# MEM[(struct WaveDrawBox *)widget_7(D)].rely, D.9998
	movzx	ecx, WORD PTR [rbx+194]	# D.9939, MEM[(struct WaveDrawBox *)widget_7(D)].relx_min
	cmp	ax, cx	# D.9997, D.9939
	jae	.L104	#,
	jmp	.L119	#
.L58:
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
	.size	mouseEvent, .-mouseEvent
	.globl	Widget_mevent
	.type	Widget_mevent, @function
Widget_mevent:
.LFB109:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# widget, widget
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+16]	# D.9809, widget_1(D)->click_handler
	test	rax, rax	# D.9809
	jne	.L123	#,
	cmp	QWORD PTR [rdi+24], 0	# widget_1(D)->press_handler,
	jne	.L123	#,
	cmp	QWORD PTR [rdi+32], 0	# widget_1(D)->release_handler,
	jne	.L123	#,
	cmp	QWORD PTR [rdi+40], 0	# widget_1(D)->mouse_enter_handler,
	jne	.L123	#,
	test	DWORD PTR [rdi+128], -16776961	#,
	je	.L122	#,
.L123:
	cmp	BYTE PTR [rbx+130], 0	# widget_1(D)->visible,
	je	.L122	#,
	movzx	edx, BYTE PTR [rbp+16]	# screen_9(D)->event.type, screen_9(D)->event.type
	cmp	dl, 5	# screen_9(D)->event.type,
	je	.L126	#,
	cmp	dl, 6	# screen_9(D)->event.type,
	je	.L127	#,
	cmp	dl, 4	# screen_9(D)->event.type,
	jne	.L122	#,
	test	DWORD PTR [rbx+128], -16776961	#,
	je	.L128	#,
	cmp	BYTE PTR [rbx+133], 0	# widget_1(D)->mouse_state,
	je	.L128	#,
	mov	edx, 2	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	mouseEvent	#
	jmp	.L122	#
.L128:
	cmp	BYTE PTR [rbx+135], 0	# widget_1(D)->mouse_move_listen,
	je	.L129	#,
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	mouseEvent	#
.L129:
	cmp	BYTE PTR [rbx+134], 0	# widget_1(D)->mouse_over,
	jne	.L130	#,
	movzx	esi, WORD PTR [rbp+22]	# D.9833, screen_9(D)->event.motion.y
	movzx	eax, WORD PTR [rbp+20]	# D.9835, screen_9(D)->event.motion.x
	test	rbx, rbx	# widget
	je	.L122	#,
	movzx	ecx, ax	# D.9835, D.9835
	movsx	edx, WORD PTR [rbx+56]	# widget_1(D)->pos.x, widget_1(D)->pos.x
	cmp	ecx, edx	# D.9835, widget_1(D)->pos.x
	jl	.L122	#,
	movzx	ecx, si	# D.9833, D.9833
	movsx	edx, WORD PTR [rbx+58]	# widget_1(D)->pos.y, widget_1(D)->pos.y
	cmp	ecx, edx	# D.9833, widget_1(D)->pos.y
	jl	.L122	#,
	cmp	ax, WORD PTR [rbx+112]	# D.9835, widget_1(D)->maxx
	ja	.L122	#,
	cmp	si, WORD PTR [rbx+114]	# D.9833, widget_1(D)->maxy
	jbe	.L131	#,
	.p2align 4,,3
	jmp	.L122	#
.L139:
	mov	BYTE PTR [rbp+129], 1	# screen_9(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	[QWORD PTR [rbx+40]]	# widget_1(D)->mouse_enter_handler
	jmp	.L122	#
.L130:
	movzx	esi, WORD PTR [rbp+22]	# D.9833, screen_9(D)->event.motion.y
	movzx	eax, WORD PTR [rbp+20]	# D.9835, screen_9(D)->event.motion.x
	test	rbx, rbx	# widget
	je	.L132	#,
	movzx	ecx, ax	# D.9835, D.9835
	movsx	edx, WORD PTR [rbx+56]	# widget_1(D)->pos.x, widget_1(D)->pos.x
	cmp	ecx, edx	# D.9835, widget_1(D)->pos.x
	jl	.L132	#,
	movzx	ecx, si	# D.9833, D.9833
	movsx	edx, WORD PTR [rbx+58]	# widget_1(D)->pos.y, widget_1(D)->pos.y
	cmp	ecx, edx	# D.9833, widget_1(D)->pos.y
	jl	.L132	#,
	cmp	ax, WORD PTR [rbx+112]	# D.9835, widget_1(D)->maxx
	ja	.L132	#,
	cmp	si, WORD PTR [rbx+114]	# D.9833, widget_1(D)->maxy
	jbe	.L122	#,
	.p2align 4,,3
	jmp	.L132	#
.L126:
	movzx	edi, WORD PTR [rbp+22]	# D.9850, screen_9(D)->event.button.y
	movzx	edx, WORD PTR [rbp+20]	# D.9852, screen_9(D)->event.button.x
	test	rbx, rbx	# widget
	je	.L122	#,
	movzx	esi, dx	# D.9852, D.9852
	movsx	ecx, WORD PTR [rbx+56]	# widget_1(D)->pos.x, widget_1(D)->pos.x
	cmp	esi, ecx	# D.9852, widget_1(D)->pos.x
	jl	.L122	#,
	movzx	esi, di	# D.9850, D.9850
	movsx	ecx, WORD PTR [rbx+58]	# widget_1(D)->pos.y, widget_1(D)->pos.y
	cmp	esi, ecx	# D.9850, widget_1(D)->pos.y
	jl	.L122	#,
	cmp	dx, WORD PTR [rbx+112]	# D.9852, widget_1(D)->maxx
	ja	.L122	#,
	cmp	di, WORD PTR [rbx+114]	# D.9850, widget_1(D)->maxy
	jbe	.L133	#,
	.p2align 4,,3
	jmp	.L122	#
.L140:
	mov	BYTE PTR [rbp+129], 1	# screen_9(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	[QWORD PTR [rbx+24]]	# widget_1(D)->press_handler
	jmp	.L134	#
.L143:
	test	rax, rax	# D.9809
	je	.L134	#,
	mov	BYTE PTR [rbp+129], 1	# screen_9(D)->event_handled,
.L134:
	mov	edx, 5	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	mouseEvent	#
	jmp	.L122	#
.L127:
	movzx	eax, BYTE PTR [rbx+133]	# D.9825, widget_1(D)->mouse_state
	test	al, al	# D.9825
	je	.L122	#,
	movzx	edi, WORD PTR [rbp+22]	# D.9850, screen_9(D)->event.button.y
	movzx	edx, WORD PTR [rbp+20]	# D.9852, screen_9(D)->event.button.x
	test	rbx, rbx	# widget
	je	.L135	#,
	movzx	esi, dx	# D.9852, D.9852
	movsx	ecx, WORD PTR [rbx+56]	# widget_1(D)->pos.x, widget_1(D)->pos.x
	cmp	esi, ecx	# D.9852, widget_1(D)->pos.x
	jl	.L135	#,
	movzx	esi, di	# D.9850, D.9850
	movsx	ecx, WORD PTR [rbx+58]	# widget_1(D)->pos.y, widget_1(D)->pos.y
	cmp	esi, ecx	# D.9850, widget_1(D)->pos.y
	jl	.L135	#,
	cmp	dx, WORD PTR [rbx+112]	# D.9852, widget_1(D)->maxx
	ja	.L135	#,
	cmp	di, WORD PTR [rbx+114]	# D.9850, widget_1(D)->maxy
	jbe	.L136	#,
	.p2align 4,,3
	jmp	.L135	#
.L142:
	mov	edx, 6	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	mouseEvent	#
	mov	rsi, QWORD PTR [rbx+16]	# D.9809, widget_1(D)->click_handler
	test	rsi, rsi	# D.9809
	je	.L137	#,
	cmp	BYTE PTR [rbx+120], 0	# widget_1(D)->cparam_exist,
	je	.L138	#,
	cmp	QWORD PTR [rbx+88], 0	# widget_1(D)->cparam,
	jne	.L138	#,
	lea	rdx, [rbx+88]	# tmp166,
	mov	rdi, rbp	#, screen
	call	Screen_getCParam	#
	mov	BYTE PTR [rbx+120], al	# widget_1(D)->cparam_exist, D.9889
.L138:
	mov	BYTE PTR [rbp+129], 1	# screen_9(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	[QWORD PTR [rbx+16]]	# widget_1(D)->click_handler
	jmp	.L135	#
.L137:
	cmp	QWORD PTR [rbx+24], 0	# widget_1(D)->press_handler,
	je	.L135	#,
	mov	BYTE PTR [rbp+129], 1	# screen_9(D)->event_handled,
.L135:
	mov	edx, 7	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	mouseEvent	#
	mov	BYTE PTR [rbx+133], 0	# widget_1(D)->mouse_state,
	cmp	QWORD PTR [rbx+32], 0	# widget_1(D)->release_handler,
	je	.L122	#,
	mov	BYTE PTR [rbp+129], 1	# screen_9(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	[QWORD PTR [rbx+32]]	# widget_1(D)->release_handler
	jmp	.L122	#
.L131:
	mov	BYTE PTR [rbx+134], 1	# widget_1(D)->mouse_over,
	mov	edx, 3	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	mouseEvent	#
	cmp	QWORD PTR [rbx+40], 0	# widget_1(D)->mouse_enter_handler,
	jne	.L139	#,
	jmp	.L122	#
.L132:
	mov	BYTE PTR [rbx+134], 0	# widget_1(D)->mouse_over,
	mov	edx, 4	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, widget
	call	mouseEvent	#
	jmp	.L122	#
.L133:
	movzx	ecx, BYTE PTR [rbp+18]	# screen_9(D)->event.button.button, screen_9(D)->event.button.button
	sub	ecx, 1	# tmp170,
	mov	edx, 1	# tmp172,
	sal	edx, cl	# tmp171, tmp170
	or	BYTE PTR [rbx+133], dl	# widget_1(D)->mouse_state, tmp171
	cmp	QWORD PTR [rbx+24], 0	# widget_1(D)->press_handler,
	jne	.L140	#,
	jmp	.L143	#
.L136:
	movzx	eax, al	# D.9825, D.9825
	movzx	edx, BYTE PTR [rbp+18]	# screen_9(D)->event.button.button, screen_9(D)->event.button.button
	sub	edx, 1	# tmp175,
	bt	eax, edx	# D.9825, tmp175
	jnc	.L135	#,
	jmp	.L142	#
.L122:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	Widget_mevent, .-Widget_mevent
	.globl	Widget_scale
	.type	Widget_scale, @function
Widget_scale:
.LFB110:
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
	mov	rdi, QWORD PTR [rdi+48]	# widget_1(D)->surf, widget_1(D)->surf
	mov	ecx, 489	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	call	wzoomSurface	#
	mov	r13, rax	# surf,
	test	rax, rax	# surf
	je	.L145	#,
	mov	rdi, QWORD PTR [rbx+48]	# widget_1(D)->surf, widget_1(D)->surf
	mov	edx, 491	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+48], r13	# widget_1(D)->surf, surf
	movzx	eax, WORD PTR [rbx+60]	# widget_1(D)->pos.w, widget_1(D)->pos.w
	cvtsi2sd	xmm0, eax	# tmp85, widget_1(D)->pos.w
	movd	xmm1, r12	#, xscale
	mulsd	xmm0, xmm1	# tmp86,
	cvttsd2si	r12d, xmm0	# tmp87, tmp86
	mov	WORD PTR [rbx+60], r12w	# widget_1(D)->pos.w, tmp87
	movzx	eax, WORD PTR [rbx+62]	# widget_1(D)->pos.h, widget_1(D)->pos.h
	cvtsi2sd	xmm0, eax	# tmp89, widget_1(D)->pos.h
	movd	xmm1, rbp	#, yscale
	mulsd	xmm0, xmm1	# tmp90,
	cvttsd2si	ebp, xmm0	# tmp91, tmp90
	mov	WORD PTR [rbx+62], bp	# widget_1(D)->pos.h, tmp91
	add	r12w, WORD PTR [rbx+56]	# tmp92, widget_1(D)->pos.x
	mov	WORD PTR [rbx+112], r12w	# widget_1(D)->maxx, tmp92
	add	bp, WORD PTR [rbx+58]	# tmp94, widget_1(D)->pos.y
	mov	WORD PTR [rbx+114], bp	# widget_1(D)->maxy, tmp94
.L145:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	Widget_scale, .-Widget_scale
	.globl	Widget_contains
	.type	Widget_contains, @function
Widget_contains:
.LFB111:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L150	#,
	movzx	r8d, si	# x, x
	movsx	ecx, WORD PTR [rdi+56]	# widget_2(D)->pos.x, widget_2(D)->pos.x
	mov	eax, 0	# iftmp.5,
	cmp	r8d, ecx	# x, widget_2(D)->pos.x
	jl	.L149	#,
	movzx	r8d, dx	# y, y
	movsx	ecx, WORD PTR [rdi+58]	# widget_2(D)->pos.y, widget_2(D)->pos.y
	cmp	r8d, ecx	# y, widget_2(D)->pos.y
	jl	.L149	#,
	cmp	si, WORD PTR [rdi+112]	# x, widget_2(D)->maxx
	ja	.L149	#,
	cmp	dx, WORD PTR [rdi+114]	# y, widget_2(D)->maxy
	setbe	al	#, iftmp.5
	movzx	eax, al	# iftmp.5, iftmp.5
	ret
.L150:
	mov	eax, 0	# iftmp.5,
.L149:
	rep
	ret
	.cfi_endproc
.LFE111:
	.size	Widget_contains, .-Widget_contains
	.globl	Widget_setPosition
	.type	Widget_setPosition, @function
Widget_setPosition:
.LFB112:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L154	#,
	mov	WORD PTR [rdi+56], si	# widget_1(D)->pos.x, minx
	mov	WORD PTR [rdi+58], dx	# widget_1(D)->pos.y, miny
	add	si, WORD PTR [rdi+60]	# tmp70, widget_1(D)->pos.w
	mov	WORD PTR [rdi+112], si	# widget_1(D)->maxx, tmp70
	add	dx, WORD PTR [rdi+62]	# tmp72, widget_1(D)->pos.h
	mov	WORD PTR [rdi+114], dx	# widget_1(D)->maxy, tmp72
.L154:
	rep
	ret
	.cfi_endproc
.LFE112:
	.size	Widget_setPosition, .-Widget_setPosition
	.globl	Widget_setSize
	.type	Widget_setSize, @function
Widget_setSize:
.LFB113:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L156	#,
	mov	WORD PTR [rdi+60], si	# widget_1(D)->pos.w, width
	mov	WORD PTR [rdi+62], dx	# widget_1(D)->pos.h, height
.L156:
	rep
	ret
	.cfi_endproc
.LFE113:
	.size	Widget_setSize, .-Widget_setSize
	.globl	Widget_setSizeUpdatePos
	.type	Widget_setSizeUpdatePos, @function
Widget_setSizeUpdatePos:
.LFB114:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L158	#,
	mov	WORD PTR [rdi+60], si	# widget_1(D)->pos.w, width
	mov	WORD PTR [rdi+62], dx	# widget_1(D)->pos.h, height
	add	si, WORD PTR [rdi+56]	# tmp70, widget_1(D)->pos.x
	mov	WORD PTR [rdi+112], si	# widget_1(D)->maxx, tmp70
	add	dx, WORD PTR [rdi+58]	# tmp72, widget_1(D)->pos.y
	mov	WORD PTR [rdi+114], dx	# widget_1(D)->maxy, tmp72
.L158:
	rep
	ret
	.cfi_endproc
.LFE114:
	.size	Widget_setSizeUpdatePos, .-Widget_setSizeUpdatePos
	.globl	Widget_setRect
	.type	Widget_setRect, @function
Widget_setRect:
.LFB115:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L160	#,
	mov	WORD PTR [rdi+56], si	# widget_1(D)->pos.x, minx
	mov	WORD PTR [rdi+58], dx	# widget_1(D)->pos.y, miny
	mov	WORD PTR [rdi+60], cx	# widget_1(D)->pos.w, width
	mov	WORD PTR [rdi+62], r8w	# widget_1(D)->pos.h, height
	add	esi, ecx	# tmp72, width
	mov	WORD PTR [rdi+112], si	# widget_1(D)->maxx, tmp72
	add	edx, r8d	# tmp73, height
	mov	WORD PTR [rdi+114], dx	# widget_1(D)->maxy, tmp73
.L160:
	rep
	ret
	.cfi_endproc
.LFE115:
	.size	Widget_setRect, .-Widget_setRect
	.globl	Widget_setVisible
	.type	Widget_setVisible, @function
Widget_setVisible:
.LFB116:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L167	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_1(D)->type,
	jne	.L164	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	esi, sil	# vis, vis
	call	Container_setVisible	#
	jmp	.L162	#
.L164:
	.cfi_def_cfa_offset 8
	mov	BYTE PTR [rdi+130], sil	# widget_1(D)->visible, vis
	ret
.L162:
	.cfi_def_cfa_offset 16
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L167:
	rep
	ret
	.cfi_endproc
.LFE116:
	.size	Widget_setVisible, .-Widget_setVisible
	.globl	Widget_getCenter
	.type	Widget_getCenter, @function
Widget_getCenter:
.LFB117:
	.cfi_startproc
	test	rsi, rsi	# cx
	je	.L168	#,
	test	rdi, rdi	# widget
	je	.L168	#,
	test	rdx, rdx	# cy
	je	.L168	#,
	movzx	eax, WORD PTR [rdi+60]	# tmp79, widget_1(D)->pos.w
	shr	ax	# tmp79
	add	ax, WORD PTR [rdi+56]	# tmp81, widget_1(D)->pos.x
	mov	WORD PTR [rsi], ax	# *cx_3(D), tmp81
	movzx	eax, WORD PTR [rdi+62]	# tmp83, widget_1(D)->pos.h
	shr	ax	# tmp83
	add	ax, WORD PTR [rdi+58]	# tmp85, widget_1(D)->pos.y
	mov	WORD PTR [rdx], ax	# *cy_6(D), tmp85
.L168:
	rep
	ret
	.cfi_endproc
.LFE117:
	.size	Widget_getCenter, .-Widget_getCenter
	.globl	Widget_setCenter
	.type	Widget_setCenter, @function
Widget_setCenter:
.LFB118:
	.cfi_startproc
	test	rdi, rdi	# widget
	je	.L170	#,
	movzx	ecx, WORD PTR [rdi+60]	# D.9706, widget_1(D)->pos.w
	mov	eax, ecx	# tmp74, D.9706
	shr	ax	# tmp74
	sub	esi, eax	# D.9708, tmp74
	mov	WORD PTR [rdi+56], si	# widget_1(D)->pos.x, D.9708
	movzx	eax, WORD PTR [rdi+62]	# D.9710, widget_1(D)->pos.h
	mov	r8d, eax	# tmp75, D.9710
	shr	r8w	# tmp75
	sub	edx, r8d	# D.9712, tmp75
	mov	WORD PTR [rdi+58], dx	# widget_1(D)->pos.y, D.9712
	add	ecx, esi	# tmp76, D.9708
	mov	WORD PTR [rdi+112], cx	# widget_1(D)->maxx, tmp76
	add	eax, edx	# tmp77, D.9712
	mov	WORD PTR [rdi+114], ax	# widget_1(D)->maxy, tmp77
.L170:
	rep
	ret
	.cfi_endproc
.LFE118:
	.size	Widget_setCenter, .-Widget_setCenter
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Widget_printMemoryUsage(): Memory used by whole program:\n"
	.align 8
.LC14:
	.string	"Widget_printMemoryUsage(): \t\tcurrent_size = %lu bytes\n"
	.align 8
.LC15:
	.string	"Widget_printMemoryUsage(): \t\tpeak_size    = %lu bytes\n"
	.text
	.globl	Widget_printMemoryUsage
	.type	Widget_printMemoryUsage, @function
Widget_printMemoryUsage:
.LFB119:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 57	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC13	#,
	call	fwrite	#
	mov	eax, 0	#,
	call	getCurrentRSS	#
	mov	rcx, rax	#, D.9700
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	#,
	call	getPeakRSS	#
	mov	rcx, rax	#, D.9701
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	Widget_printMemoryUsage, .-Widget_printMemoryUsage
	.local	str_id
	.comm	str_id,512,32
	.local	stx
	.comm	stx,2,2
	.local	sty
	.comm	sty,2,2
	.local	dx
	.comm	dx,2,2
	.local	dy
	.comm	dy,2,2
	.local	s
	.comm	s,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC12:
	.long	1065353216
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
