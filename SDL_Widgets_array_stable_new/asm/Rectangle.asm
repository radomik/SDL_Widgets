	.file	"Rectangle.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Rectangle.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Rectangle.asm
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
	.string	"Rectangle_refresh: Failed to create empty surface SDL_CreateRGBSurface() (%s)\n"
	.align 8
.LC2:
	.string	"Rectangle_refresh: Failed to fill background surface (FillRect) (%s)\n"
	.text
	.globl	Rectangle_vrefresh
	.type	Rectangle_vrefresh, @function
Rectangle_vrefresh:
.LFB93:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+88]	# D.9077, MEM[(struct Widget *)vthis_2(D)].surf
	test	rdi, rdi	# D.9077
	je	.L2	#,
	movzx	eax, WORD PTR [rbx+100]	# MEM[(struct Widget *)vthis_2(D)].pos.w, MEM[(struct Widget *)vthis_2(D)].pos.w
	cmp	DWORD PTR [rdi+16], eax	# D.9077_5->w, MEM[(struct Widget *)vthis_2(D)].pos.w
	jl	.L3	#,
	movzx	eax, WORD PTR [rbx+102]	# MEM[(struct Widget *)vthis_2(D)].pos.h, MEM[(struct Widget *)vthis_2(D)].pos.h
	cmp	DWORD PTR [rdi+20], eax	# D.9077_5->h, MEM[(struct Widget *)vthis_2(D)].pos.h
	jge	.L4	#,
.L3:
	mov	edx, 49	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	jmp	.L2	#
.L7:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9095
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L1	#
.L4:
	mov	edx, DWORD PTR [rbx+176]	# MEM[(struct Rectangle *)vthis_2(D)].color, MEM[(struct Rectangle *)vthis_2(D)].color
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_2(D)].surf, MEM[(struct Widget *)vthis_2(D)].surf
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.9098
	je	.L6	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9101
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L1	#
.L6:
	movzx	eax, WORD PTR [rbx+96]	# MEM[(struct Widget *)vthis_2(D)].pos.x, MEM[(struct Widget *)vthis_2(D)].pos.x
	add	ax, WORD PTR [rbx+100]	# tmp92, MEM[(struct Widget *)vthis_2(D)].pos.w
	mov	WORD PTR [rbx+152], ax	# MEM[(struct Widget *)vthis_2(D)].maxx, tmp92
	movzx	eax, WORD PTR [rbx+98]	# MEM[(struct Widget *)vthis_2(D)].pos.y, MEM[(struct Widget *)vthis_2(D)].pos.y
	add	ax, WORD PTR [rbx+102]	# tmp95, MEM[(struct Widget *)vthis_2(D)].pos.h
	mov	WORD PTR [rbx+154], ax	# MEM[(struct Widget *)vthis_2(D)].maxy, tmp95
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	mov	BYTE PTR [rbx+169], 1	# MEM[(struct Widget *)vthis_2(D)].need_reload,
	jmp	.L1	#
.L2:
	movzx	esi, WORD PTR [rbx+102]	# MEM[(struct Widget *)vthis_2(D)].pos.h, MEM[(struct Widget *)vthis_2(D)].pos.h
	movzx	edi, WORD PTR [rbx+100]	# MEM[(struct Widget *)vthis_2(D)].pos.w, MEM[(struct Widget *)vthis_2(D)].pos.w
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_2(D)].surf, D.9092
	test	rax, rax	# D.9092
	jne	.L4	#,
	jmp	.L7	#
.L1:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,3
	ret
	.cfi_endproc
.LFE93:
	.size	Rectangle_vrefresh, .-Rectangle_vrefresh
	.globl	Rectangle_vdestroy
	.type	Rectangle_vdestroy, @function
Rectangle_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8979	#,
	call	Static_printObj2	#
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Rectangle_vdestroy, .-Rectangle_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"%20s:\tWithin context: rgb_color=0x%08X\n"
	.text
	.globl	Rectangle_new
	.type	Rectangle_new, @function
Rectangle_new:
.LFB95:
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
	jne	.L12	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8984	#,
	call	Static_nullThis2	#
	mov	r8d, ebp	#, rgb_color
	mov	ecx, OFFSET FLAT:__FUNCTION__.8984	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L13	#
.L12:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8984	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	DWORD PTR [rbx+176], ebp	# this_2(D)->color, rgb_color
.L13:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Rectangle_new, .-Rectangle_new
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Rectangle_copy: Passed NULL: this(%p) or src(%p)\n"
	.text
	.globl	Rectangle_copy
	.type	Rectangle_copy, @function
Rectangle_copy:
.LFB96:
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
	mov	rbp, rsi	# src, src
	test	rsi, rsi	# src
	je	.L19	#,
	test	rdi, rdi	# this
	jne	.L16	#,
.L19:
	mov	r8, rbp	#, src
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# this,
	jmp	.L18	#
.L16:
	movzx	edx, dl	# copy_pos, copy_pos
	mov	ecx, 1	#,
	call	Widget_copy	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8990	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	eax, DWORD PTR [rbp+176]	# D.9068, src_4(D)->color
	mov	DWORD PTR [rbx+176], eax	# this_2(D)->color, D.9068
.L18:
	mov	rax, rbx	#, this
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Rectangle_copy, .-Rectangle_copy
	.globl	Rectangle_setColor
	.type	Rectangle_setColor, @function
Rectangle_setColor:
.LFB97:
	.cfi_startproc
	mov	DWORD PTR [rdi+176], esi	# this_1(D)->color, rgb_color
	ret
	.cfi_endproc
.LFE97:
	.size	Rectangle_setColor, .-Rectangle_setColor
	.globl	Rectangle_setSize
	.type	Rectangle_setSize, @function
Rectangle_setSize:
.LFB98:
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
.LFE98:
	.size	Rectangle_setSize, .-Rectangle_setSize
	.globl	Rectangle_setPosition
	.type	Rectangle_setPosition, @function
Rectangle_setPosition:
.LFB99:
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
.LFE99:
	.size	Rectangle_setPosition, .-Rectangle_setPosition
	.globl	Rectangle_getCenter
	.type	Rectangle_getCenter, @function
Rectangle_getCenter:
.LFB100:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_getCenter	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Rectangle_getCenter, .-Rectangle_getCenter
	.globl	Rectangle_setCenter
	.type	Rectangle_setCenter, @function
Rectangle_setCenter:
.LFB101:
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
.LFE101:
	.size	Rectangle_setCenter, .-Rectangle_setCenter
	.globl	Rectangle_contains
	.type	Rectangle_contains, @function
Rectangle_contains:
.LFB102:
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
.LFE102:
	.size	Rectangle_contains, .-Rectangle_contains
	.globl	Rectangle_setRect
	.type	Rectangle_setRect, @function
Rectangle_setRect:
.LFB103:
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
.LFE103:
	.size	Rectangle_setRect, .-Rectangle_setRect
	.globl	Rectangle_scale
	.type	Rectangle_scale, @function
Rectangle_scale:
.LFB104:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_scale	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Rectangle_scale, .-Rectangle_scale
	.section	.rodata.str1.1
.LC5:
	.string	"rectangle=NULL"
.LC6:
	.string	"Rectangle color: 0x%X"
	.text
	.globl	Rectangle_toString
	.type	Rectangle_toString, @function
Rectangle_toString:
.LFB105:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC5	# D.9040,
	test	rdi, rdi	# this
	je	.L41	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	r9d, DWORD PTR [rdi+176]	#, this_2(D)->color
	mov	r8d, OFFSET FLAT:.LC6	#,
	mov	ecx, 32	#,
	mov	edx, 1	#,
	mov	esi, 32	#,
	mov	edi, OFFSET FLAT:str_id.9036	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9036	# D.9040,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L41:
	rep
	ret
	.cfi_endproc
.LFE105:
	.size	Rectangle_toString, .-Rectangle_toString
	.globl	Rectangle_class
	.data
	.align 8
	.type	Rectangle_class, @object
	.size	Rectangle_class, 8
Rectangle_class:
	.quad	type
	.section	.rodata.str1.1
.LC7:
	.string	"Rectangle"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	184
# name:
	.quad	.LC7
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8979, @object
	.size	__FUNCTION__.8979, 19
__FUNCTION__.8979:
	.string	"Rectangle_vdestroy"
	.type	__FUNCTION__.8984, @object
	.size	__FUNCTION__.8984, 14
__FUNCTION__.8984:
	.string	"Rectangle_new"
	.type	__FUNCTION__.8990, @object
	.size	__FUNCTION__.8990, 15
__FUNCTION__.8990:
	.string	"Rectangle_copy"
	.local	str_id.9036
	.comm	str_id.9036,32,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	Widget_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	Rectangle_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
