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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
	.string	"Rectangle color: 0x%X"
	.text
	.globl	Rectangle_vtoString
	.type	Rectangle_vtoString, @function
Rectangle_vtoString:
.LFB115:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	r9d, DWORD PTR [rdi+168]	#, MEM[(struct Rectangle *)vthis_1(D)].color
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 32	#,
	mov	edx, 1	#,
	mov	esi, 32	#,
	mov	edi, OFFSET FLAT:str_id.9312	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9312	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	Rectangle_vtoString, .-Rectangle_vtoString
	.section	.rodata.str1.1
.LC1:
	.string	"Rectangle.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Rectangle_refresh: Failed to create empty surface SDL_CreateRGBSurface() (%s)\n"
	.align 8
.LC3:
	.string	"Rectangle_refresh: Failed to fill background surface (FillRect) (%s)\n"
	.text
	.globl	Rectangle_vrefresh
	.type	Rectangle_vrefresh, @function
Rectangle_vrefresh:
.LFB103:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+88]	# D.9351, MEM[(struct Widget *)vthis_2(D)].surf
	test	rdi, rdi	# D.9351
	je	.L4	#,
	movzx	eax, WORD PTR [rbx+100]	# MEM[(struct Widget *)vthis_2(D)].pos.w, MEM[(struct Widget *)vthis_2(D)].pos.w
	cmp	DWORD PTR [rdi+16], eax	# D.9351_5->w, MEM[(struct Widget *)vthis_2(D)].pos.w
	jl	.L5	#,
	movzx	eax, WORD PTR [rbx+102]	# MEM[(struct Widget *)vthis_2(D)].pos.h, MEM[(struct Widget *)vthis_2(D)].pos.h
	cmp	DWORD PTR [rdi+20], eax	# D.9351_5->h, MEM[(struct Widget *)vthis_2(D)].pos.h
	jge	.L6	#,
.L5:
	mov	edx, 60	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wSDL_FreeSurface	#
	jmp	.L4	#
.L9:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9369
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9371_24->vtable, D.9371_24->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9372_25 + 8B], MEM[(const void * *)D.9372_25 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9374_27].setVisible
	jmp	.L3	#
.L6:
	mov	edx, DWORD PTR [rbx+168]	# MEM[(struct Rectangle *)vthis_2(D)].color, MEM[(struct Rectangle *)vthis_2(D)].color
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_2(D)].surf, MEM[(struct Widget *)vthis_2(D)].surf
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.9377
	je	.L8	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9380
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9371_34->vtable, D.9371_34->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9372_35 + 8B], MEM[(const void * *)D.9372_35 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9374_37].setVisible
	jmp	.L3	#
.L8:
	mov	rdi, rbx	#, vthis
	call	Widget_updateMaxXY	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9371_39->vtable, D.9371_39->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9372_40 + 8B], MEM[(const void * *)D.9372_40 + 8B]
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9374_42].setVisible
	mov	BYTE PTR [rbx+161], 1	# MEM[(struct Widget *)vthis_2(D)].need_reload,
	jmp	.L3	#
.L4:
	movzx	esi, WORD PTR [rbx+102]	# MEM[(struct Widget *)vthis_2(D)].pos.h, MEM[(struct Widget *)vthis_2(D)].pos.h
	movzx	edi, WORD PTR [rbx+100]	# MEM[(struct Widget *)vthis_2(D)].pos.w, MEM[(struct Widget *)vthis_2(D)].pos.w
	call	Static_newSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_2(D)].surf, D.9366
	test	rax, rax	# D.9366
	jne	.L6	#,
	jmp	.L9	#
.L3:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,3
	ret
	.cfi_endproc
.LFE103:
	.size	Rectangle_vrefresh, .-Rectangle_vrefresh
	.globl	Rectangle_vdestroy
	.type	Rectangle_vdestroy, @function
Rectangle_vdestroy:
.LFB104:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_vdestroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Rectangle_vdestroy, .-Rectangle_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"%20s:\tWithin context: rgb_color=0x%08X\n"
	.text
	.globl	Rectangle_new
	.type	Rectangle_new, @function
Rectangle_new:
.LFB105:
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
	jne	.L14	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9261	#,
	call	Static_nullThis2	#
	mov	r8d, ebp	#, rgb_color
	mov	ecx, OFFSET FLAT:__FUNCTION__.9261	#,
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L15	#
.L14:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	DWORD PTR [rbx+168], ebp	# this_2(D)->color, rgb_color
.L15:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	Rectangle_new, .-Rectangle_new
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Rectangle_copy: Passed NULL: this(%p) or src(%p)\n"
	.text
	.globl	Rectangle_copy
	.type	Rectangle_copy, @function
Rectangle_copy:
.LFB106:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# src, src
	test	rsi, rsi	# src
	je	.L21	#,
	test	rdi, rdi	# this
	jne	.L18	#,
.L21:
	mov	r8, rbp	#, src
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# this,
	jmp	.L20	#
.L18:
	movzx	edx, dl	# copy_pos, copy_pos
	mov	ecx, 1	#,
	call	Widget_copy	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	eax, DWORD PTR [rbp+168]	# D.9342, src_4(D)->color
	mov	DWORD PTR [rbx+168], eax	# this_2(D)->color, D.9342
.L20:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	Rectangle_copy, .-Rectangle_copy
	.globl	Rectangle_setColor
	.type	Rectangle_setColor, @function
Rectangle_setColor:
.LFB107:
	.cfi_startproc
	mov	DWORD PTR [rdi+168], esi	# this_1(D)->color, rgb_color
	ret
	.cfi_endproc
.LFE107:
	.size	Rectangle_setColor, .-Rectangle_setColor
	.globl	Rectangle_setSize
	.type	Rectangle_setSize, @function
Rectangle_setSize:
.LFB108:
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
.LFE108:
	.size	Rectangle_setSize, .-Rectangle_setSize
	.globl	Rectangle_setPosition
	.type	Rectangle_setPosition, @function
Rectangle_setPosition:
.LFB109:
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
.LFE109:
	.size	Rectangle_setPosition, .-Rectangle_setPosition
	.globl	Rectangle_getCenter
	.type	Rectangle_getCenter, @function
Rectangle_getCenter:
.LFB110:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_getCenter	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	Rectangle_getCenter, .-Rectangle_getCenter
	.globl	Rectangle_setCenter
	.type	Rectangle_setCenter, @function
Rectangle_setCenter:
.LFB111:
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
.LFE111:
	.size	Rectangle_setCenter, .-Rectangle_setCenter
	.globl	Rectangle_contains
	.type	Rectangle_contains, @function
Rectangle_contains:
.LFB112:
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
.LFE112:
	.size	Rectangle_contains, .-Rectangle_contains
	.globl	Rectangle_setRect
	.type	Rectangle_setRect, @function
Rectangle_setRect:
.LFB113:
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
.LFE113:
	.size	Rectangle_setRect, .-Rectangle_setRect
	.globl	Rectangle_scale
	.type	Rectangle_scale, @function
Rectangle_scale:
.LFB114:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_scale	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	Rectangle_scale, .-Rectangle_scale
	.globl	Rectangle_class
	.data
	.align 8
	.type	Rectangle_class, @object
	.size	Rectangle_class, 8
Rectangle_class:
	.quad	type
	.section	.rodata.str1.1
.LC6:
	.string	"Rectangle"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	176
# name:
	.quad	.LC6
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.9261, @object
	.size	__FUNCTION__.9261, 14
__FUNCTION__.9261:
	.string	"Rectangle_new"
	.local	str_id.9312
	.comm	str_id.9312,32,32
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
	.quad	Widget_vdestroy
# toString:
	.quad	Rectangle_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	Rectangle_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
