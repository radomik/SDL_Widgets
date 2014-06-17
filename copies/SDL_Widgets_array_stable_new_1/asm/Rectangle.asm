	.file	"Rectangle.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Rectangle.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Rectangle.asm
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
	.string	"Rectangle.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Rectangle_refresh:Rectangle > Failed to create empty surface SDL_CreateRGBSurface() (%s)\n"
	.align 8
.LC2:
	.string	"Rectangle_refresh:Rectangle> Failed to fill background surface (FillRect) (%s)\n"
	.text
	.globl	Rectangle_refresh
	.type	Rectangle_refresh, @function
Rectangle_refresh:
.LFB93:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# rectangle, rectangle
	mov	rdi, QWORD PTR [rdi+48]	# D.8735, MEM[(struct Widget *)rectangle_2(D)].surf
	test	rdi, rdi	# D.8735
	je	.L2	#,
	movzx	eax, WORD PTR [rbx+60]	# MEM[(struct Widget *)rectangle_2(D)].pos.w, MEM[(struct Widget *)rectangle_2(D)].pos.w
	cmp	DWORD PTR [rdi+16], eax	# D.8735_5->w, MEM[(struct Widget *)rectangle_2(D)].pos.w
	jl	.L3	#,
	movzx	eax, WORD PTR [rbx+62]	# MEM[(struct Widget *)rectangle_2(D)].pos.h, MEM[(struct Widget *)rectangle_2(D)].pos.h
	cmp	DWORD PTR [rdi+20], eax	# D.8735_5->h, MEM[(struct Widget *)rectangle_2(D)].pos.h
	jge	.L4	#,
.L3:
	mov	edx, 36	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	jmp	.L2	#
.L7:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8753
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)rectangle_2(D)].visible,
	jmp	.L1	#
.L4:
	mov	edx, DWORD PTR [rbx+144]	# rectangle_2(D)->color, rectangle_2(D)->color
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)rectangle_2(D)].surf, MEM[(struct Widget *)rectangle_2(D)].surf
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.8756
	je	.L6	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8759
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)rectangle_2(D)].visible,
	jmp	.L1	#
.L6:
	movzx	eax, WORD PTR [rbx+56]	# MEM[(struct Widget *)rectangle_2(D)].pos.x, MEM[(struct Widget *)rectangle_2(D)].pos.x
	add	ax, WORD PTR [rbx+60]	# tmp92, MEM[(struct Widget *)rectangle_2(D)].pos.w
	mov	WORD PTR [rbx+112], ax	# MEM[(struct Widget *)rectangle_2(D)].maxx, tmp92
	movzx	eax, WORD PTR [rbx+58]	# MEM[(struct Widget *)rectangle_2(D)].pos.y, MEM[(struct Widget *)rectangle_2(D)].pos.y
	add	ax, WORD PTR [rbx+62]	# tmp95, MEM[(struct Widget *)rectangle_2(D)].pos.h
	mov	WORD PTR [rbx+114], ax	# MEM[(struct Widget *)rectangle_2(D)].maxy, tmp95
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)rectangle_2(D)].visible,
	mov	BYTE PTR [rbx+132], 1	# MEM[(struct Widget *)rectangle_2(D)].need_reload,
	jmp	.L1	#
.L2:
	movzx	esi, WORD PTR [rbx+62]	# MEM[(struct Widget *)rectangle_2(D)].pos.h, MEM[(struct Widget *)rectangle_2(D)].pos.h
	movzx	edi, WORD PTR [rbx+60]	# MEM[(struct Widget *)rectangle_2(D)].pos.w, MEM[(struct Widget *)rectangle_2(D)].pos.w
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)rectangle_2(D)].surf, D.8750
	test	rax, rax	# D.8750
	jne	.L4	#,
	jmp	.L7	#
.L1:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,3
	ret
	.cfi_endproc
.LFE93:
	.size	Rectangle_refresh, .-Rectangle_refresh
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Rectangle_new: Passed NULL this pointer. rgb_color=%X\n"
	.section	.rodata.str1.1
.LC4:
	.string	"Rectangle"
	.text
	.globl	Rectangle_new
	.type	Rectangle_new, @function
Rectangle_new:
.LFB94:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# rgb_color, rgb_color
	test	rdi, rdi	# this
	jne	.L10	#,
	mov	ecx, esi	#, rgb_color
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L11	#
.L10:
	mov	ecx, OFFSET FLAT:.LC4	#,
	mov	edx, 0	#,
	mov	esi, 6	#,
	call	Widget_init_type	#
	mov	DWORD PTR [rbx+144], ebp	# this_2(D)->color, rgb_color
.L11:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Rectangle_new, .-Rectangle_new
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Rectangle_copy: Passed NULL: rectdest(%p) or rectsrc(%p)\n"
	.text
	.globl	Rectangle_copy
	.type	Rectangle_copy, @function
Rectangle_copy:
.LFB95:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# rectdest, rectdest
	mov	rbp, rsi	# rectsrc, rectsrc
	test	rsi, rsi	# rectsrc
	je	.L17	#,
	test	rdi, rdi	# rectdest
	jne	.L14	#,
.L17:
	mov	r8, rbp	#, rectsrc
	mov	rcx, rbx	#, rectdest
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# rectdest,
	jmp	.L16	#
.L14:
	movzx	edx, dl	# copy_pos, copy_pos
	mov	ecx, 1	#,
	call	Widget_copy	#
	mov	eax, DWORD PTR [rbp+144]	# D.8722, rectsrc_4(D)->color
	mov	DWORD PTR [rbx+144], eax	# rectdest_2(D)->color, D.8722
.L16:
	mov	rax, rbx	#, rectdest
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Rectangle_copy, .-Rectangle_copy
	.globl	Rectangle_setColor
	.type	Rectangle_setColor, @function
Rectangle_setColor:
.LFB96:
	.cfi_startproc
	mov	DWORD PTR [rdi+144], esi	# rectangle_1(D)->color, rgb_color
	ret
	.cfi_endproc
.LFE96:
	.size	Rectangle_setColor, .-Rectangle_setColor
	.globl	Rectangle_setSize
	.type	Rectangle_setSize, @function
Rectangle_setSize:
.LFB97:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dx	# height, height
	movzx	esi, si	# width, width
	call	Widget_setSize	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	Rectangle_setSize, .-Rectangle_setSize
	.globl	Rectangle_setPosition
	.type	Rectangle_setPosition, @function
Rectangle_setPosition:
.LFB98:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dx	# miny, miny
	movzx	esi, si	# minx, minx
	call	Widget_setPosition	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Rectangle_setPosition, .-Rectangle_setPosition
	.globl	Rectangle_getCenter
	.type	Rectangle_getCenter, @function
Rectangle_getCenter:
.LFB99:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_getCenter	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Rectangle_getCenter, .-Rectangle_getCenter
	.globl	Rectangle_setCenter
	.type	Rectangle_setCenter, @function
Rectangle_setCenter:
.LFB100:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dx	# cy, cy
	movzx	esi, si	# cx, cx
	call	Widget_setCenter	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Rectangle_setCenter, .-Rectangle_setCenter
	.globl	Rectangle_contains
	.type	Rectangle_contains, @function
Rectangle_contains:
.LFB101:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dx	# y, y
	movzx	esi, si	# x, x
	call	Widget_contains	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	Rectangle_contains, .-Rectangle_contains
	.globl	Rectangle_setRect
	.type	Rectangle_setRect, @function
Rectangle_setRect:
.LFB102:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, cx	# width, width
	movzx	edx, dx	# miny, miny
	movzx	esi, si	# minx, minx
	movzx	r8d, r8w	#, height
	call	Widget_setRect	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	Rectangle_setRect, .-Rectangle_setRect
	.globl	Rectangle_scale
	.type	Rectangle_scale, @function
Rectangle_scale:
.LFB103:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_scale	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	Rectangle_scale, .-Rectangle_scale
	.section	.rodata.str1.1
.LC6:
	.string	"rectangle=NULL"
.LC7:
	.string	"Rectangle color: 0x%X"
	.text
	.globl	Rectangle_toString
	.type	Rectangle_toString, @function
Rectangle_toString:
.LFB104:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC6	# D.8691,
	test	rdi, rdi	# rectangle
	je	.L39	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	r9d, DWORD PTR [rdi+144]	#, rectangle_2(D)->color
	mov	r8d, OFFSET FLAT:.LC7	#,
	mov	ecx, 32	#,
	mov	edx, 1	#,
	mov	esi, 32	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.8691,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L39:
	rep
	ret
	.cfi_endproc
.LFE104:
	.size	Rectangle_toString, .-Rectangle_toString
	.local	str_id
	.comm	str_id,32,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
