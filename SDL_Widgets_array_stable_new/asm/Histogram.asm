	.file	"Histogram.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Histogram.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Histogram.asm
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
	.string	"histogram data=%p"
	.text
	.globl	Histogram_vtoString
	.type	Histogram_vtoString, @function
Histogram_vtoString:
.LFB107:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	r9, QWORD PTR [rdi+168]	#, MEM[(struct Histogram *)vthis_1(D)].data
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 64	#,
	mov	edx, 1	#,
	mov	esi, 64	#,
	mov	edi, OFFSET FLAT:str_id.9245	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9245	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	Histogram_vtoString, .-Histogram_vtoString
	.section	.rodata.str1.1
.LC1:
	.string	"Histogram.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Histogram_vrefresh: CreateRGBSurface failed: %s\n"
	.align 8
.LC3:
	.string	"Histogram_vrefresh: Failed to fill background surface (FillRect)\n"
	.text
	.globl	Histogram_vrefresh
	.type	Histogram_vrefresh, @function
Histogram_vrefresh:
.LFB103:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	edx, 59	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wSDL_FreeSurface	#
	mov	esi, 180	#,
	mov	edi, 512	#,
	call	Static_newSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_4(D)].surf, D.9258
	test	rax, rax	# D.9258
	jne	.L4	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9261
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_4(D)].class, MEM[(struct coObject *)vthis_4(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9263_12->vtable, D.9263_12->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9264_13 + 8B], MEM[(const void * *)D.9264_13 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9266_15].setVisible
	jmp	.L3	#
.L4:
	mov	edx, 16777215	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, D.9258
	call	SDL_FillRect	#
	test	eax, eax	# D.9268
	je	.L6	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 65	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_4(D)].class, MEM[(struct coObject *)vthis_4(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9263_20->vtable, D.9263_20->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9264_21 + 8B], MEM[(const void * *)D.9264_21 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9266_23].setVisible
	jmp	.L3	#
.L6:
	mov	WORD PTR [rbx+100], 512	# MEM[(struct Widget *)vthis_4(D)].pos.w,
	mov	WORD PTR [rbx+102], 180	# MEM[(struct Widget *)vthis_4(D)].pos.h,
	movzx	eax, WORD PTR [rbx+96]	# tmp145, MEM[(struct Widget *)vthis_4(D)].pos.x
	add	ax, 512	# tmp145,
	mov	WORD PTR [rbx+144], ax	# MEM[(struct Widget *)vthis_4(D)].maxx, tmp145
	movzx	eax, WORD PTR [rbx+98]	# tmp147, MEM[(struct Widget *)vthis_4(D)].pos.y
	add	ax, 180	# tmp147,
	mov	WORD PTR [rbx+146], ax	# MEM[(struct Widget *)vthis_4(D)].maxy, tmp147
	mov	rcx, QWORD PTR [rbx+168]	# D.9277, MEM[(struct Histogram *)vthis_4(D)].data
	test	rcx, rcx	# D.9277
	je	.L7	#,
	mov	DWORD PTR [rbx+176], 0	# MEM[(struct Histogram *)vthis_4(D)].max_value,
	mov	DWORD PTR [rbx+180], -1	# MEM[(struct Histogram *)vthis_4(D)].min_value,
	mov	eax, 0	# ivtmp.36,
.L10:
	mov	edx, DWORD PTR [rcx+rax]	# D.9283, MEM[base: D.9277_31, index: ivtmp.36_47, offset: 0B]
	cmp	edx, DWORD PTR [rbx+176]	# D.9283, MEM[(struct Histogram *)vthis_4(D)].max_value
	jbe	.L8	#,
	mov	DWORD PTR [rbx+176], edx	# MEM[(struct Histogram *)vthis_4(D)].max_value, D.9283
.L8:
	mov	edx, DWORD PTR [rcx+rax]	# D.9283, MEM[base: D.9277_31, index: ivtmp.36_47, offset: 0B]
	cmp	edx, DWORD PTR [rbx+180]	# D.9283, MEM[(struct Histogram *)vthis_4(D)].min_value
	jae	.L9	#,
	mov	DWORD PTR [rbx+180], edx	# MEM[(struct Histogram *)vthis_4(D)].min_value, D.9283
.L9:
	add	rax, 4	# ivtmp.36,
	cmp	rax, 1024	# ivtmp.36,
	jne	.L10	#,
	cmp	DWORD PTR [rbx+176], 0	# MEM[(struct Histogram *)vthis_4(D)].max_value,
	je	.L3	#,
	mov	r12d, 0	# ivtmp.25,
	mov	ebp, 0	# ivtmp.24,
	mov	r14d, 180	# tmp166,
.L11:
	mov	rax, QWORD PTR [rbx+168]	# MEM[(struct Histogram *)vthis_4(D)].data, MEM[(struct Histogram *)vthis_4(D)].data
	imul	eax, DWORD PTR [rax+rbp], 180	# tmp150, *D.9282_66,
	mov	edx, 0	# tmp154,
	div	DWORD PTR [rbx+176]	# MEM[(struct Histogram *)vthis_4(D)].max_value
	mov	r13d, r14d	# tmp155, tmp166
	sub	r13d, eax	# tmp155, tmp153
	movsx	r13d, r13w	# D.9297, tmp155
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r13d	#, D.9297
	mov	edx, 180	#,
	mov	esi, r12d	#, ivtmp.25
	call	vlineColor	#
	lea	esi, [r12+1]	# tmp158,
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r13d	#, D.9297
	mov	edx, 180	#,
	call	vlineColor	#
	add	rbp, 4	# ivtmp.24,
	add	r12d, 2	# ivtmp.25,
	cmp	rbp, 1024	# ivtmp.24,
	jne	.L11	#,
.L7:
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_4(D)].class, MEM[(struct coObject *)vthis_4(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9263_90->vtable, D.9263_90->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9264_91 + 8B], MEM[(const void * *)D.9264_91 + 8B]
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9266_93].setVisible
.L3:
	pop	rbx	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	Histogram_vrefresh, .-Histogram_vrefresh
	.globl	Histogram_vdestroy
	.type	Histogram_vdestroy, @function
Histogram_vdestroy:
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
	.size	Histogram_vdestroy, .-Histogram_vdestroy
	.globl	Histogram_new
	.type	Histogram_new, @function
Histogram_new:
.LFB105:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L18	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9237	#,
	call	Static_nullThis2	#
	jmp	.L19	#
.L18:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	QWORD PTR [rbx+168], 0	# this_2(D)->data,
	mov	DWORD PTR [rbx+176], 0	# this_2(D)->max_value,
	mov	DWORD PTR [rbx+180], 0	# this_2(D)->min_value,
	mov	DWORD PTR [rbx+184], 0	# this_2(D)->color,
.L19:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	Histogram_new, .-Histogram_new
	.globl	Histogram_setColor
	.type	Histogram_setColor, @function
Histogram_setColor:
.LFB106:
	.cfi_startproc
	sal	esi, 8	# color_rgb,
	or	sil, -1	# tmp63,
	mov	DWORD PTR [rdi+184], esi	# this_4(D)->color, tmp63
	ret
	.cfi_endproc
.LFE106:
	.size	Histogram_setColor, .-Histogram_setColor
	.globl	Histogram_class
	.data
	.align 8
	.type	Histogram_class, @object
	.size	Histogram_class, 8
Histogram_class:
	.quad	type
	.section	.rodata.str1.1
.LC4:
	.string	"Histogram"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	192
# name:
	.quad	.LC4
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.9237, @object
	.size	__FUNCTION__.9237, 14
__FUNCTION__.9237:
	.string	"Histogram_new"
	.local	str_id.9245
	.comm	str_id.9245,64,32
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
	.quad	Histogram_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	Histogram_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
