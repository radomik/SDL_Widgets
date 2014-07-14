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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB126:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE126:
	.size	Widget_vrefresh, .-Widget_vrefresh
	.globl	Widget_vdrag
	.type	Widget_vdrag, @function
Widget_vdrag:
.LFB127:
	.cfi_startproc
	add	WORD PTR [rdi+96], si	# MEM[(struct Widget *)vthis_1(D)].pos.x, dx
	add	WORD PTR [rdi+98], dx	# MEM[(struct Widget *)vthis_1(D)].pos.y, dy
	add	WORD PTR [rdi+144], si	# MEM[(struct Widget *)vthis_1(D)].maxx, dx
	add	WORD PTR [rdi+146], dx	# MEM[(struct Widget *)vthis_1(D)].maxy, dy
	ret
	.cfi_endproc
.LFE127:
	.size	Widget_vdrag, .-Widget_vdrag
	.globl	Widget_vsetVisible
	.type	Widget_vsetVisible, @function
Widget_vsetVisible:
.LFB128:
	.cfi_startproc
	mov	BYTE PTR [rdi+159], sil	# MEM[(struct Widget *)vthis_1(D)].visible, vis
	ret
	.cfi_endproc
.LFE128:
	.size	Widget_vsetVisible, .-Widget_vsetVisible
	.globl	Widget_vdraw
	.type	Widget_vdraw, @function
Widget_vdraw:
.LFB125:
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
	cmp	BYTE PTR [rdi+159], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	je	.L4	#,
	mov	rbp, rsi	# screen, screen
	mov	r12d, edx	# flip, flip
	lea	rcx, [rdi+96]	# tmp68,
	mov	rdx, QWORD PTR [rsi+72]	# screen_4(D)->screen, screen_4(D)->screen
	mov	rdi, QWORD PTR [rdi+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	BYTE PTR [rbx+161], 0	# MEM[(struct Widget *)vthis_1(D)].need_reload,
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
.LFE125:
	.size	Widget_vdraw, .-Widget_vdraw
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"true"
.LC1:
	.string	"false"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Widget[%p](%s): ID=%u, VIS=%s [x,y,mx,my,w,h]=[%hu,%hu,%hu,%hu,%hu,%hu]"
	.text
	.globl	Widget_vtoString
	.type	Widget_vtoString, @function
Widget_vtoString:
.LFB109:
	.cfi_startproc
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	mov	r9, rdi	# vthis, vthis
	movzx	r10d, WORD PTR [rdi+102]	# D.9624, MEM[(const struct Widget *)vthis_2(D)].pos.h
	movzx	r8d, WORD PTR [rdi+100]	# D.9626, MEM[(const struct Widget *)vthis_2(D)].pos.w
	movzx	edi, WORD PTR [rdi+146]	# D.9628, MEM[(const struct Widget *)vthis_2(D)].maxy
	movzx	esi, WORD PTR [r9+144]	# D.9630, MEM[(const struct Widget *)vthis_2(D)].maxx
	movsx	ecx, WORD PTR [r9+98]	# D.9632, MEM[(const struct Widget *)vthis_2(D)].pos.y
	movsx	edx, WORD PTR [r9+96]	# D.9634, MEM[(const struct Widget *)vthis_2(D)].pos.x
	cmp	BYTE PTR [r9+159], 0	# MEM[(const struct Widget *)vthis_2(D)].visible,
	mov	eax, OFFSET FLAT:.LC0	# tmp83,
	mov	r11d, OFFSET FLAT:.LC1	# tmp82,
	cmove	rax, r11	# tmp82,, iftmp.15
	mov	DWORD PTR [rsp+64], r10d	#, D.9624
	mov	DWORD PTR [rsp+56], r8d	#, D.9626
	mov	DWORD PTR [rsp+48], edi	#, D.9628
	mov	DWORD PTR [rsp+40], esi	#, D.9630
	mov	DWORD PTR [rsp+32], ecx	#, D.9632
	mov	DWORD PTR [rsp+24], edx	#, D.9634
	mov	QWORD PTR [rsp+16], rax	#, iftmp.15
	mov	eax, DWORD PTR [r9+152]	# MEM[(const struct Widget *)vthis_2(D)].id, MEM[(const struct Widget *)vthis_2(D)].id
	mov	DWORD PTR [rsp+8], eax	#, MEM[(const struct Widget *)vthis_2(D)].id
	mov	rax, QWORD PTR [r9]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+8]	# D.9641_20->name, D.9641_20->name
	mov	QWORD PTR [rsp], rax	#, D.9641_20->name
	mov	r8d, OFFSET FLAT:.LC2	#,
	mov	ecx, 512	#,
	mov	edx, 1	#,
	mov	esi, 512	#,
	mov	edi, OFFSET FLAT:str_id.9228	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9228	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	Widget_vtoString, .-Widget_vtoString
	.section	.rodata.str1.1
.LC3:
	.string	"Widget.c"
	.text
	.globl	Widget_vdestroy
	.type	Widget_vdestroy, @function
Widget_vdestroy:
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	edx, 81	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+88], 0	# MEM[(struct Widget *)vthis_1(D)].surf,
	mov	rdi, QWORD PTR [rbx+128]	# MEM[(struct Widget *)vthis_1(D)].vparam, MEM[(struct Widget *)vthis_1(D)].vparam
	mov	edx, 83	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	call	wfree	#
	mov	QWORD PTR [rbx+128], 0	# MEM[(struct Widget *)vthis_1(D)].vparam,
	mov	DWORD PTR [rbx+136], 0	# MEM[(struct Widget *)vthis_1(D)].vparam_size,
	mov	DWORD PTR [rbx+140], 0	# MEM[(struct Widget *)vthis_1(D)].vparam_count,
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Widget_vdestroy, .-Widget_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Widget_addVParam: Fatal error occured while creating/growing widget.vparam array. Method Static_growArray exited with error %s\n"
	.text
	.globl	Widget_addVParam
	.type	Widget_addVParam, @function
Widget_addVParam:
.LFB103:
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
	mov	ecx, DWORD PTR [rdi+136]	# D.9685, this_3(D)->vparam_size
	cmp	ecx, DWORD PTR [rdi+140]	# D.9685, this_3(D)->vparam_count
	jne	.L14	#,
	cmp	ecx, edx	# D.9685, def_size
	mov	eax, 10	# tmp86,
	cmovae	edx, eax	# def_size,, def_size, tmp86
	lea	rax, [rdi+136]	# tmp78,
	mov	rsi, QWORD PTR [rdi+128]	# this_3(D)->vparam, this_3(D)->vparam
	mov	QWORD PTR [rsp+8], 8	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, edx	#, def_size
	mov	r8d, ecx	#, D.9685
	mov	rdx, rax	#, tmp78
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L16	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.9698
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.9700, e
	jmp	.L17	#
.L16:
	mov	QWORD PTR [rbx+128], rax	# this_3(D)->vparam, new_array
.L14:
	mov	eax, DWORD PTR [rbx+140]	# D.9686, this_3(D)->vparam_count
	mov	ecx, eax	# D.9686, D.9686
	mov	rdx, QWORD PTR [rbx+128]	# this_3(D)->vparam, this_3(D)->vparam
	mov	QWORD PTR [rdx+rcx*8], rbp	# *D.9704_23, vparam
	add	eax, 1	# tmp84,
	mov	DWORD PTR [rbx+140], eax	# this_3(D)->vparam_count, tmp84
	mov	eax, 0	# D.9700,
.L17:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	Widget_addVParam, .-Widget_addVParam
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Widget_copy: Failed to copy surface SDL_ConvertSurface: %s\n"
	.text
	.globl	Widget_copy
	.type	Widget_copy, @function
Widget_copy:
.LFB106:
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
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# src, src
	mov	r13d, edx	# copy_pos, copy_pos
	mov	r12d, ecx	# copy_surf, copy_surf
	call	coObject_copy	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	test	r12b, r12b	# copy_surf
	je	.L20	#,
	mov	BYTE PTR [rbx+159], 1	# this_2(D)->visible,
	mov	rdi, QWORD PTR [rbp+88]	# src_3(D)->surf, src_3(D)->surf
	call	Static_copySurface	#
	mov	QWORD PTR [rbx+88], rax	# this_2(D)->surf, D.9659
	test	rax, rax	# D.9659
	jne	.L21	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9663
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# this_2(D)->visible,
	jmp	.L22	#
.L20:
	mov	BYTE PTR [rbx+159], 0	# this_2(D)->visible,
	mov	QWORD PTR [rbx+88], 0	# this_2(D)->surf,
.L21:
	test	r13b, r13b	# copy_pos
	je	.L23	#,
	mov	rax, QWORD PTR [rbp+96]	# src_3(D)->pos, src_3(D)->pos
	mov	QWORD PTR [rbx+96], rax	# this_2(D)->pos, src_3(D)->pos
	movzx	eax, WORD PTR [rbp+144]	# D.9669, src_3(D)->maxx
	mov	WORD PTR [rbx+144], ax	# this_2(D)->maxx, D.9669
	movzx	eax, WORD PTR [rbp+146]	# D.9670, src_3(D)->maxy
	mov	WORD PTR [rbx+146], ax	# this_2(D)->maxy, D.9670
	jmp	.L24	#
.L23:
	movzx	eax, WORD PTR [rbp+100]	# D.9672, src_3(D)->pos.w
	mov	WORD PTR [rbx+100], ax	# this_2(D)->pos.w, D.9672
	movzx	eax, WORD PTR [rbp+102]	# D.9673, src_3(D)->pos.h
	mov	WORD PTR [rbx+102], ax	# this_2(D)->pos.h, D.9673
.L24:
	movzx	eax, BYTE PTR [rbp+157]	# D.9924, src_3(D)->draggable
	mov	BYTE PTR [rbx+157], al	# this_2(D)->draggable, D.9924
	mov	BYTE PTR [rbx+158], 0	# this_2(D)->dragging,
	movzx	eax, BYTE PTR [rbp+160]	# D.9923, src_3(D)->mevent
	mov	BYTE PTR [rbx+160], al	# this_2(D)->mevent, D.9923
	mov	BYTE PTR [rbx+161], 1	# this_2(D)->need_reload,
	mov	BYTE PTR [rbx+162], 0	# this_2(D)->mouse_state,
	mov	BYTE PTR [rbx+163], 0	# this_2(D)->mouse_over,
	movzx	eax, BYTE PTR [rbp+164]	# D.9922, src_3(D)->mouse_move_listen
	mov	BYTE PTR [rbx+164], al	# this_2(D)->mouse_move_listen, D.9922
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
	mov	rax, QWORD PTR [rbp+104]	# D.9921, src_3(D)->parameter
	mov	QWORD PTR [rbx+104], rax	# this_2(D)->parameter, D.9921
	mov	rax, QWORD PTR [rbp+112]	# D.9920, src_3(D)->void_parameter
	mov	QWORD PTR [rbx+112], rax	# this_2(D)->void_parameter, D.9920
	mov	QWORD PTR [rbx+128], 0	# this_2(D)->vparam,
	mov	DWORD PTR [rbx+140], 0	# this_2(D)->vparam_count,
	mov	DWORD PTR [rbx+136], 0	# this_2(D)->vparam_size,
	mov	QWORD PTR [rbx+120], 0	# this_2(D)->cparam,
	mov	BYTE PTR [rbx+156], 1	# this_2(D)->cparam_exist,
	mov	DWORD PTR [rbx+152], 0	# this_2(D)->id,
	movzx	eax, BYTE PTR [rbp+166]	# D.9918, src_3(D)->internal
	mov	BYTE PTR [rbx+166], al	# this_2(D)->internal, D.9918
	movzx	eax, BYTE PTR [rbp+165]	# D.9917, src_3(D)->is_container
	mov	BYTE PTR [rbx+165], al	# this_2(D)->is_container, D.9917
.L22:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	Widget_copy, .-Widget_copy
	.globl	Widget_new
	.type	Widget_new, @function
Widget_new:
.LFB108:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_1(D)].class,
	mov	WORD PTR [rbx+146], 0	# this_1(D)->maxy,
	mov	WORD PTR [rbx+144], 0	# this_1(D)->maxx,
	mov	WORD PTR [rbx+100], 0	# this_1(D)->pos.w,
	mov	WORD PTR [rbx+102], 0	# this_1(D)->pos.h,
	mov	WORD PTR [rbx+98], 0	# this_1(D)->pos.y,
	mov	WORD PTR [rbx+96], 0	# this_1(D)->pos.x,
	mov	BYTE PTR [rbx+157], 0	# this_1(D)->draggable,
	mov	BYTE PTR [rbx+158], 0	# this_1(D)->dragging,
	mov	QWORD PTR [rbx+88], 0	# this_1(D)->surf,
	mov	BYTE PTR [rbx+159], 0	# this_1(D)->visible,
	mov	BYTE PTR [rbx+160], 0	# this_1(D)->mevent,
	mov	BYTE PTR [rbx+164], 0	# this_1(D)->mouse_move_listen,
	mov	BYTE PTR [rbx+162], 0	# this_1(D)->mouse_state,
	mov	BYTE PTR [rbx+161], 1	# this_1(D)->need_reload,
	mov	BYTE PTR [rbx+163], 0	# this_1(D)->mouse_over,
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
	mov	QWORD PTR [rbx+120], 0	# this_1(D)->cparam,
	mov	BYTE PTR [rbx+156], 1	# this_1(D)->cparam_exist,
	mov	QWORD PTR [rbx+128], 0	# this_1(D)->vparam,
	mov	DWORD PTR [rbx+136], 0	# this_1(D)->vparam_size,
	mov	DWORD PTR [rbx+140], 0	# this_1(D)->vparam_count,
	mov	DWORD PTR [rbx+152], 0	# this_1(D)->id,
	mov	BYTE PTR [rbx+166], 0	# this_1(D)->internal,
	mov	BYTE PTR [rbx+165], 0	# this_1(D)->is_container,
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	Widget_new, .-Widget_new
	.section	.rodata.str1.1
.LC6:
	.string	"widget=NULL"
	.text
	.globl	Widget_toString
	.type	Widget_toString, @function
Widget_toString:
.LFB110:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC6	# D.9617,
	test	rdi, rdi	# this
	je	.L33	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_vtoString	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L33:
	rep
	ret
	.cfi_endproc
.LFE110:
	.size	Widget_toString, .-Widget_toString
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"\n----------------------\nStart drag: %s\n"
	.section	.rodata.str1.1
.LC8:
	.string	"End drag:   %s\n"
	.text
	.type	Widget_mouseEvent, @function
Widget_mouseEvent:
.LFB114:
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
	cmp	BYTE PTR [rsi+172], 0	# screen_3(D)->drag_on,
	je	.L35	#,
	cmp	BYTE PTR [rdi+157], 0	# this_5(D)->draggable,
	je	.L35	#,
	cmp	dl, 5	# _event_type,
	jne	.L35	#,
	mov	rax, QWORD PTR [rsi+80]	# D.9468, screen_3(D)->pevent
	cmp	BYTE PTR [rax+2], 1	# D.9468_9->button.button,
	jne	.L36	#,
	cmp	BYTE PTR [rdi+159], 0	# this_5(D)->visible,
	je	.L36	#,
	mov	BYTE PTR [rdi+158], 1	# this_5(D)->dragging,
	movzx	edx, WORD PTR [rax+4]	# D.9944, D.9468_9->button.x
	mov	WORD PTR [rdi+148], dx	# this_5(D)->stx, D.9944
	movzx	eax, WORD PTR [rax+6]	# D.9943, D.9468_9->button.y
	mov	WORD PTR [rdi+150], ax	# this_5(D)->sty, D.9943
	call	Widget_toString	#
	mov	rcx, rax	#, D.9942
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L36:
	mov	r12d, 0	# s,
	jmp	.L58	#
.L42:
	mov	rax, QWORD PTR [rbp+80]	# D.9468, screen_3(D)->pevent
	mov	r12d, 0	# s,
	cmp	BYTE PTR [rbx+158], 0	# this_5(D)->dragging,
	je	.L38	#,
	movzx	ecx, WORD PTR [rax+4]	# D.9973, D.9468_13->motion.x
	movzx	eax, WORD PTR [rax+6]	# D.9970, D.9468_13->motion.y
	mov	edx, eax	# dy, D.9970
	sub	dx, WORD PTR [rbx+150]	# dy, this_5(D)->sty
	mov	esi, ecx	# tmp114, D.9973
	sub	si, WORD PTR [rbx+148]	# tmp114, this_5(D)->stx
	movsx	esi, si	# D.9965, tmp114
	movsx	edi, WORD PTR [rbx+96]	# this_5(D)->pos.x, this_5(D)->pos.x
	add	edi, esi	# this_5(D)->pos.x, D.9965
	js	.L52	#,
	movsx	edx, dx	# D.9961, dy
	movsx	edi, WORD PTR [rbx+98]	# this_5(D)->pos.y, this_5(D)->pos.y
	add	edi, edx	# this_5(D)->pos.y, D.9961
	js	.L38	#,
	mov	WORD PTR [rbx+148], cx	# this_5(D)->stx, D.9973
	mov	WORD PTR [rbx+150], ax	# this_5(D)->sty, D.9970
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_5(D)].class, MEM[(struct coObject *)this_5(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9956_88->vtable, D.9956_88->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9955_89 + 8B], MEM[(const void * *)D.9955_89 + 8B]
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+24]]	# MEM[(struct IWidget *)D.9954_90].drag
	mov	r12d, 1	# s,
	jmp	.L38	#
.L52:
	mov	r12d, 0	# s,
.L38:
	mov	rax, QWORD PTR [rbp+80]	# screen_3(D)->pevent, screen_3(D)->pevent
	cmp	BYTE PTR [rax], 6	# D.9468_15->type,
	jne	.L55	#,
	mov	rdi, rbp	#, screen
	call	Screen_draw	#
	mov	BYTE PTR [rbx+158], 0	# this_5(D)->dragging,
	mov	rdi, rbx	#, this
	call	Widget_toString	#
	mov	rcx, rax	#, D.9472
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+162], 0	# this_5(D)->mouse_state,
	cmp	QWORD PTR [rbx+8], 0	# this_5(D)->click_handler,
	je	.L40	#,
	mov	BYTE PTR [rbp+169], 1	# screen_3(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rbx+8]]	# this_5(D)->click_handler
.L40:
	cmp	QWORD PTR [rbx+24], 0	# this_5(D)->release_handler,
	je	.L34	#,
	mov	BYTE PTR [rbp+169], 1	# screen_3(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rbx+24]]	# this_5(D)->release_handler
	jmp	.L34	#
.L55:
	mov	rdi, QWORD PTR [rbp+80]	# screen_3(D)->pevent, screen_3(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.9480
	.p2align 4,,2
	jne	.L42	#,
	test	r12b, r12b	# s
	je	.L58	#,
	mov	rdi, rbp	#, screen
	call	Screen_draw	#
.L58:
	cmp	BYTE PTR [rbx+158], 0	# this_5(D)->dragging,
	jne	.L55	#,
	jmp	.L59	#
.L35:
	cmp	BYTE PTR [rbx+160], 0	# this_5(D)->mevent,
	je	.L34	#,
	sub	edx, 3	# tmp127,
	cmp	dl, 4	# tmp127,
	ja	.L34	#,
	movzx	edx, dl	# tmp128, tmp127
	jmp	[QWORD PTR .L50[0+rdx*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L50:
	.quad	.L45
	.quad	.L46
	.quad	.L47
	.quad	.L48
	.quad	.L49
	.text
.L45:
	mov	rax, QWORD PTR [rbx+72]	# D.9488, this_5(D)->mevent_internal.mouse_enter
	test	rax, rax	# D.9488
	je	.L34	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9488
	jmp	.L34	#
.L46:
	mov	rax, QWORD PTR [rbx+80]	# D.9491, this_5(D)->mevent_internal.mouse_exit
	test	rax, rax	# D.9491
	je	.L34	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9491
	jmp	.L34	#
.L47:
	mov	rax, QWORD PTR [rbx+56]	# D.9494, this_5(D)->mevent_internal.press
	test	rax, rax	# D.9494
	je	.L34	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9494
	jmp	.L34	#
.L49:
	mov	rax, QWORD PTR [rbx+64]	# D.9497, this_5(D)->mevent_internal.release
	test	rax, rax	# D.9497
	je	.L34	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9497
	jmp	.L34	#
.L48:
	mov	rax, QWORD PTR [rbx+48]	# D.9500, this_5(D)->mevent_internal.click
	test	rax, rax	# D.9500
	je	.L34	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, this
	call	rax	# D.9500
	jmp	.L34	#
.L59:
	cmp	BYTE PTR [rbx+160], 0	# this_5(D)->mevent,
	jne	.L47	#,
.L34:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	Widget_mouseEvent, .-Widget_mouseEvent
	.globl	Widget_vmevent
	.type	Widget_vmevent, @function
Widget_vmevent:
.LFB124:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+8]	# D.9367, MEM[(struct Widget *)vthis_1(D)].click_handler
	test	rax, rax	# D.9367
	jne	.L62	#,
	cmp	QWORD PTR [rdi+16], 0	# MEM[(struct Widget *)vthis_1(D)].press_handler,
	jne	.L62	#,
	cmp	QWORD PTR [rdi+24], 0	# MEM[(struct Widget *)vthis_1(D)].release_handler,
	jne	.L62	#,
	cmp	QWORD PTR [rdi+32], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_enter_handler,
	jne	.L62	#,
	cmp	BYTE PTR [rdi+160], 0	# MEM[(struct Widget *)vthis_1(D)].mevent,
	jne	.L62	#,
	cmp	BYTE PTR [rdi+157], 0	# MEM[(struct Widget *)vthis_1(D)].draggable,
	je	.L61	#,
.L62:
	cmp	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	je	.L61	#,
	movzx	edx, BYTE PTR [rbp+8]	# screen_10(D)->event.type, screen_10(D)->event.type
	cmp	dl, 5	# screen_10(D)->event.type,
	je	.L65	#,
	cmp	dl, 6	# screen_10(D)->event.type,
	je	.L66	#,
	cmp	dl, 4	# screen_10(D)->event.type,
	jne	.L61	#,
	cmp	BYTE PTR [rbx+157], 0	# MEM[(struct Widget *)vthis_1(D)].draggable,
	jne	.L67	#,
	cmp	BYTE PTR [rbx+160], 0	# MEM[(struct Widget *)vthis_1(D)].mevent,
	je	.L68	#,
.L67:
	cmp	BYTE PTR [rbx+162], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_state,
	je	.L68	#,
	mov	edx, 2	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	jmp	.L61	#
.L68:
	cmp	BYTE PTR [rbx+164], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_move_listen,
	je	.L69	#,
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
.L69:
	cmp	BYTE PTR [rbx+163], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_over,
	jne	.L70	#,
	movzx	esi, WORD PTR [rbp+14]	# D.9393, screen_10(D)->event.motion.y
	movzx	eax, WORD PTR [rbp+12]	# D.9395, screen_10(D)->event.motion.x
	movzx	ecx, ax	# D.9395, D.9395
	movsx	edx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	ecx, edx	# D.9395, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L61	#,
	movzx	ecx, si	# D.9393, D.9393
	movsx	edx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	ecx, edx	# D.9393, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L61	#,
	cmp	ax, WORD PTR [rbx+144]	# D.9395, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L61	#,
	cmp	si, WORD PTR [rbx+146]	# D.9393, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L71	#,
	jmp	.L61	#
.L79:
	mov	BYTE PTR [rbp+169], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+32]]	# MEM[(struct Widget *)vthis_1(D)].mouse_enter_handler
	jmp	.L61	#
.L70:
	movzx	esi, WORD PTR [rbp+14]	# D.9393, screen_10(D)->event.motion.y
	movzx	eax, WORD PTR [rbp+12]	# D.9395, screen_10(D)->event.motion.x
	movzx	ecx, ax	# D.9395, D.9395
	movsx	edx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	ecx, edx	# D.9395, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L72	#,
	movzx	ecx, si	# D.9393, D.9393
	movsx	edx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	ecx, edx	# D.9393, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L72	#,
	cmp	ax, WORD PTR [rbx+144]	# D.9395, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L72	#,
	cmp	si, WORD PTR [rbx+146]	# D.9393, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L61	#,
	jmp	.L72	#
.L80:
	mov	BYTE PTR [rbp+169], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+40]]	# MEM[(struct Widget *)vthis_1(D)].mouse_exit_handler
	jmp	.L61	#
.L65:
	movzx	edi, WORD PTR [rbp+14]	# D.9413, screen_10(D)->event.button.y
	movzx	edx, WORD PTR [rbp+12]	# D.9415, screen_10(D)->event.button.x
	movzx	esi, dx	# D.9415, D.9415
	movsx	ecx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	esi, ecx	# D.9415, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L61	#,
	movzx	esi, di	# D.9413, D.9413
	movsx	ecx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	esi, ecx	# D.9413, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L61	#,
	cmp	dx, WORD PTR [rbx+144]	# D.9415, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L61	#,
	cmp	di, WORD PTR [rbx+146]	# D.9413, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L73	#,
	jmp	.L61	#
.L81:
	mov	BYTE PTR [rbp+169], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+16]]	# MEM[(struct Widget *)vthis_1(D)].press_handler
	jmp	.L74	#
.L84:
	test	rax, rax	# D.9367
	je	.L74	#,
	mov	BYTE PTR [rbp+169], 1	# screen_10(D)->event_handled,
.L74:
	mov	edx, 5	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	jmp	.L61	#
.L66:
	movzx	eax, BYTE PTR [rbx+162]	# D.9385, MEM[(struct Widget *)vthis_1(D)].mouse_state
	test	al, al	# D.9385
	je	.L61	#,
	movzx	edi, WORD PTR [rbp+14]	# D.9413, screen_10(D)->event.button.y
	movzx	edx, WORD PTR [rbp+12]	# D.9415, screen_10(D)->event.button.x
	movzx	esi, dx	# D.9415, D.9415
	movsx	ecx, WORD PTR [rbx+96]	# MEM[(const struct Widget *)vthis_1(D)].pos.x, MEM[(const struct Widget *)vthis_1(D)].pos.x
	cmp	esi, ecx	# D.9415, MEM[(const struct Widget *)vthis_1(D)].pos.x
	jl	.L75	#,
	movzx	esi, di	# D.9413, D.9413
	movsx	ecx, WORD PTR [rbx+98]	# MEM[(const struct Widget *)vthis_1(D)].pos.y, MEM[(const struct Widget *)vthis_1(D)].pos.y
	cmp	esi, ecx	# D.9413, MEM[(const struct Widget *)vthis_1(D)].pos.y
	jl	.L75	#,
	cmp	dx, WORD PTR [rbx+144]	# D.9415, MEM[(const struct Widget *)vthis_1(D)].maxx
	ja	.L75	#,
	cmp	di, WORD PTR [rbx+146]	# D.9413, MEM[(const struct Widget *)vthis_1(D)].maxy
	jbe	.L76	#,
	jmp	.L75	#
.L83:
	mov	edx, 6	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	mov	rsi, QWORD PTR [rbx+8]	# D.9367, MEM[(struct Widget *)vthis_1(D)].click_handler
	test	rsi, rsi	# D.9367
	je	.L77	#,
	cmp	BYTE PTR [rbx+156], 0	# MEM[(struct Widget *)vthis_1(D)].cparam_exist,
	je	.L78	#,
	cmp	QWORD PTR [rbx+120], 0	# MEM[(struct Widget *)vthis_1(D)].cparam,
	jne	.L78	#,
	lea	rdx, [rbx+120]	# tmp165,
	mov	rdi, rbp	#, screen
	call	Screen_getCParam	#
	mov	BYTE PTR [rbx+156], al	# MEM[(struct Widget *)vthis_1(D)].cparam_exist, D.9452
.L78:
	mov	BYTE PTR [rbp+169], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+8]]	# MEM[(struct Widget *)vthis_1(D)].click_handler
	jmp	.L75	#
.L77:
	cmp	QWORD PTR [rbx+16], 0	# MEM[(struct Widget *)vthis_1(D)].press_handler,
	je	.L75	#,
	mov	BYTE PTR [rbp+169], 1	# screen_10(D)->event_handled,
.L75:
	mov	edx, 7	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	mov	BYTE PTR [rbx+162], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_state,
	cmp	QWORD PTR [rbx+24], 0	# MEM[(struct Widget *)vthis_1(D)].release_handler,
	je	.L61	#,
	mov	BYTE PTR [rbp+169], 1	# screen_10(D)->event_handled,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rbx+24]]	# MEM[(struct Widget *)vthis_1(D)].release_handler
	jmp	.L61	#
.L71:
	mov	BYTE PTR [rbx+163], 1	# MEM[(struct Widget *)vthis_1(D)].mouse_over,
	mov	edx, 3	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	cmp	QWORD PTR [rbx+32], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_enter_handler,
	jne	.L79	#,
	jmp	.L61	#
.L72:
	mov	BYTE PTR [rbx+163], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_over,
	mov	edx, 4	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, vthis
	call	Widget_mouseEvent	#
	cmp	QWORD PTR [rbx+40], 0	# MEM[(struct Widget *)vthis_1(D)].mouse_exit_handler,
	jne	.L80	#,
	jmp	.L61	#
.L73:
	movzx	ecx, BYTE PTR [rbp+10]	# screen_10(D)->event.button.button, screen_10(D)->event.button.button
	sub	ecx, 1	# tmp169,
	mov	edx, 1	# tmp171,
	sal	edx, cl	# tmp170, tmp169
	or	BYTE PTR [rbx+162], dl	# MEM[(struct Widget *)vthis_1(D)].mouse_state, tmp170
	cmp	QWORD PTR [rbx+16], 0	# MEM[(struct Widget *)vthis_1(D)].press_handler,
	jne	.L81	#,
	jmp	.L84	#
.L76:
	movzx	eax, al	# D.9385, D.9385
	movzx	edx, BYTE PTR [rbp+10]	# screen_10(D)->event.button.button, screen_10(D)->event.button.button
	sub	edx, 1	# tmp174,
	bt	eax, edx	# D.9385, tmp174
	jnc	.L75	#,
	jmp	.L83	#
.L61:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE124:
	.size	Widget_vmevent, .-Widget_vmevent
	.globl	Widget_scale
	.type	Widget_scale, @function
Widget_scale:
.LFB115:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbx, rdi	# this, this
	mov	rdi, QWORD PTR [rdi+88]	# this_1(D)->surf, this_1(D)->surf
	mov	ecx, 317	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	call	wzoomSurface	#
	mov	rbp, rax	# surf,
	test	rax, rax	# surf
	je	.L86	#,
	mov	rdi, QWORD PTR [rbx+88]	# this_1(D)->surf, this_1(D)->surf
	mov	edx, 319	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+88], rbp	# this_1(D)->surf, surf
	mov	edx, DWORD PTR [rbp+16]	# surf_6->w, surf_6->w
	mov	WORD PTR [rbx+100], dx	# this_1(D)->pos.w, surf_6->w
	mov	eax, DWORD PTR [rbp+20]	# surf_6->h, surf_6->h
	mov	WORD PTR [rbx+102], ax	# this_1(D)->pos.h, surf_6->h
	add	dx, WORD PTR [rbx+96]	# tmp82, this_1(D)->pos.x
	sub	edx, 1	# tmp84,
	mov	WORD PTR [rbx+144], dx	# this_1(D)->maxx, tmp84
	add	ax, WORD PTR [rbx+98]	# tmp85, this_1(D)->pos.y
	sub	eax, 1	# tmp87,
	mov	WORD PTR [rbx+146], ax	# this_1(D)->maxy, tmp87
.L86:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	Widget_scale, .-Widget_scale
	.globl	Widget_contains
	.type	Widget_contains, @function
Widget_contains:
.LFB116:
	.cfi_startproc
	movzx	r8d, si	# x, x
	movsx	ecx, WORD PTR [rdi+96]	# this_4(D)->pos.x, this_4(D)->pos.x
	mov	eax, 0	# iftmp.13,
	cmp	r8d, ecx	# x, this_4(D)->pos.x
	jl	.L90	#,
	movzx	r8d, dx	# y, y
	movsx	ecx, WORD PTR [rdi+98]	# this_4(D)->pos.y, this_4(D)->pos.y
	cmp	r8d, ecx	# y, this_4(D)->pos.y
	jl	.L90	#,
	cmp	si, WORD PTR [rdi+144]	# x, this_4(D)->maxx
	ja	.L90	#,
	cmp	dx, WORD PTR [rdi+146]	# y, this_4(D)->maxy
	setbe	al	#, iftmp.13
	movzx	eax, al	# iftmp.13, iftmp.13
.L90:
	rep
	ret
	.cfi_endproc
.LFE116:
	.size	Widget_contains, .-Widget_contains
	.globl	Widget_setPosition
	.type	Widget_setPosition, @function
Widget_setPosition:
.LFB117:
	.cfi_startproc
	mov	WORD PTR [rdi+96], si	# this_3(D)->pos.x, minx
	mov	WORD PTR [rdi+98], dx	# this_3(D)->pos.y, miny
	movzx	eax, WORD PTR [rdi+100]	# this_3(D)->pos.w, this_3(D)->pos.w
	lea	esi, [rax-1+rsi]	# tmp74,
	mov	WORD PTR [rdi+144], si	# this_3(D)->maxx, tmp74
	movzx	eax, WORD PTR [rdi+102]	# this_3(D)->pos.h, this_3(D)->pos.h
	lea	edx, [rax-1+rdx]	# tmp77,
	mov	WORD PTR [rdi+146], dx	# this_3(D)->maxy, tmp77
	ret
	.cfi_endproc
.LFE117:
	.size	Widget_setPosition, .-Widget_setPosition
	.globl	Widget_setSize
	.type	Widget_setSize, @function
Widget_setSize:
.LFB118:
	.cfi_startproc
	mov	WORD PTR [rdi+100], si	# this_1(D)->pos.w, width
	mov	WORD PTR [rdi+102], dx	# this_1(D)->pos.h, height
	ret
	.cfi_endproc
.LFE118:
	.size	Widget_setSize, .-Widget_setSize
	.globl	Widget_setSizeUpdatePos
	.type	Widget_setSizeUpdatePos, @function
Widget_setSizeUpdatePos:
.LFB119:
	.cfi_startproc
	mov	WORD PTR [rdi+100], si	# this_1(D)->pos.w, width
	mov	WORD PTR [rdi+102], dx	# this_1(D)->pos.h, height
	movzx	eax, WORD PTR [rdi+96]	# this_1(D)->pos.x, this_1(D)->pos.x
	lea	esi, [rax-1+rsi]	# tmp74,
	mov	WORD PTR [rdi+144], si	# this_1(D)->maxx, tmp74
	movzx	eax, WORD PTR [rdi+98]	# this_1(D)->pos.y, this_1(D)->pos.y
	lea	edx, [rax-1+rdx]	# tmp77,
	mov	WORD PTR [rdi+146], dx	# this_1(D)->maxy, tmp77
	ret
	.cfi_endproc
.LFE119:
	.size	Widget_setSizeUpdatePos, .-Widget_setSizeUpdatePos
	.globl	Widget_setRect
	.type	Widget_setRect, @function
Widget_setRect:
.LFB120:
	.cfi_startproc
	mov	WORD PTR [rdi+96], si	# this_3(D)->pos.x, minx
	mov	WORD PTR [rdi+98], dx	# this_3(D)->pos.y, miny
	mov	WORD PTR [rdi+100], cx	# this_3(D)->pos.w, width
	mov	WORD PTR [rdi+102], r8w	# this_3(D)->pos.h, height
	lea	esi, [rsi-1+rcx]	# tmp75,
	mov	WORD PTR [rdi+144], si	# this_3(D)->maxx, tmp75
	lea	edx, [rdx-1+r8]	# tmp77,
	mov	WORD PTR [rdi+146], dx	# this_3(D)->maxy, tmp77
	ret
	.cfi_endproc
.LFE120:
	.size	Widget_setRect, .-Widget_setRect
	.globl	Widget_getCenter
	.type	Widget_getCenter, @function
Widget_getCenter:
.LFB121:
	.cfi_startproc
	test	rsi, rsi	# cx
	je	.L98	#,
	test	rdi, rdi	# this
	je	.L98	#,
	test	rdx, rdx	# cy
	je	.L98	#,
	movzx	eax, WORD PTR [rdi+100]	# tmp79, this_1(D)->pos.w
	shr	ax	# tmp79
	add	ax, WORD PTR [rdi+96]	# tmp81, this_1(D)->pos.x
	mov	WORD PTR [rsi], ax	# *cx_3(D), tmp81
	movzx	eax, WORD PTR [rdi+102]	# tmp83, this_1(D)->pos.h
	shr	ax	# tmp83
	add	ax, WORD PTR [rdi+98]	# tmp85, this_1(D)->pos.y
	mov	WORD PTR [rdx], ax	# *cy_6(D), tmp85
.L98:
	rep
	ret
	.cfi_endproc
.LFE121:
	.size	Widget_getCenter, .-Widget_getCenter
	.globl	Widget_setCenter
	.type	Widget_setCenter, @function
Widget_setCenter:
.LFB122:
	.cfi_startproc
	test	rdi, rdi	# this
	je	.L100	#,
	movzx	ecx, WORD PTR [rdi+100]	# D.9563, this_1(D)->pos.w
	mov	eax, ecx	# tmp76, D.9563
	shr	ax	# tmp76
	sub	esi, eax	# D.9565, tmp76
	mov	WORD PTR [rdi+96], si	# this_1(D)->pos.x, D.9565
	movzx	eax, WORD PTR [rdi+102]	# D.9567, this_1(D)->pos.h
	mov	r8d, eax	# tmp77, D.9567
	shr	r8w	# tmp77
	sub	edx, r8d	# D.9569, tmp77
	mov	WORD PTR [rdi+98], dx	# this_1(D)->pos.y, D.9569
	lea	esi, [rcx-1+rsi]	# tmp79,
	mov	WORD PTR [rdi+144], si	# this_1(D)->maxx, tmp79
	lea	edx, [rax-1+rdx]	# tmp81,
	mov	WORD PTR [rdi+146], dx	# this_1(D)->maxy, tmp81
.L100:
	rep
	ret
	.cfi_endproc
.LFE122:
	.size	Widget_setCenter, .-Widget_setCenter
	.globl	Widget_updateMaxXY
	.type	Widget_updateMaxXY, @function
Widget_updateMaxXY:
.LFB123:
	.cfi_startproc
	movzx	edx, WORD PTR [rdi+100]	# this_1(D)->pos.w, this_1(D)->pos.w
	movzx	eax, WORD PTR [rdi+96]	# this_1(D)->pos.x, this_1(D)->pos.x
	lea	eax, [rdx-1+rax]	# tmp72,
	mov	WORD PTR [rdi+144], ax	# this_1(D)->maxx, tmp72
	movzx	edx, WORD PTR [rdi+102]	# this_1(D)->pos.h, this_1(D)->pos.h
	movzx	eax, WORD PTR [rdi+98]	# this_1(D)->pos.y, this_1(D)->pos.y
	lea	eax, [rdx-1+rax]	# tmp76,
	mov	WORD PTR [rdi+146], ax	# this_1(D)->maxy, tmp76
	ret
	.cfi_endproc
.LFE123:
	.size	Widget_updateMaxXY, .-Widget_updateMaxXY
	.globl	Widget_class
	.data
	.align 8
	.type	Widget_class, @object
	.size	Widget_class, 8
Widget_class:
	.quad	type
	.section	.rodata.str1.1
.LC9:
	.string	"Widget"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	168
# name:
	.quad	.LC9
# vtable:
	.quad	vtable
	.local	str_id.9228
	.comm	str_id.9228,512,32
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
	.quad	Widget_vdestroy
# toString:
	.quad	Widget_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	Widget_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
