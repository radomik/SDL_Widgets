	.file	"LabelImage.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT LabelImage.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/LabelImage.asm
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
	.globl	LabelImage_vdestroy
	.type	LabelImage_vdestroy, @function
LabelImage_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8997	#,
	call	Static_printObj2	#
	lea	rdi, [rbx+176]	# tmp61,
	call	delete	#
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	LabelImage_vdestroy, .-LabelImage_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"LabelImage_refresh: Failed to create base SDL_Surface bg_surf [%s]\n"
	.align 8
.LC1:
	.string	"LabelImage_refresh: Failed to fill background surface with border color (FillRect) [%s]\n"
	.align 8
.LC2:
	.string	"LabelImage_refresh: Failed to fill background surface with background color (FillRect) [%s]\n"
	.align 8
.LC3:
	.string	"LabelImage_refresh: SDL_BlitSurface(labelimage->image.widget.surf, NULL, bg_surf, &bgr) failed: [%s]\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"LabelImage.c"
	.text
	.globl	LabelImage_vrefresh
	.type	LabelImage_vrefresh, @function
LabelImage_vrefresh:
.LFB93:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# vthis, vthis
	movzx	edx, WORD PTR [rdi+276]	# iw, MEM[(struct Widget *)vthis_1(D) + 176B].pos.w
	movzx	eax, WORD PTR [rdi+278]	# ih, MEM[(struct Widget *)vthis_1(D) + 176B].pos.h
	cmp	BYTE PTR [rdi+374], 0	# MEM[(struct LabelImage *)vthis_1(D)].fixed_width,
	jne	.L4	#,
	movzx	ecx, WORD PTR [rdi+368]	# D.9095, MEM[(struct LabelImage *)vthis_1(D)].border_width
	mov	esi, ecx	# tmp137, D.9095
	add	si, WORD PTR [rdi+370]	# tmp137, MEM[(struct LabelImage *)vthis_1(D)].padx
	lea	esi, [rdx+rsi*2]	# tmp140,
	mov	WORD PTR [rdi+100], si	# MEM[(struct Widget *)vthis_1(D)].pos.w, tmp140
	add	cx, WORD PTR [rdi+372]	# tmp141, MEM[(struct LabelImage *)vthis_1(D)].pady
	lea	ecx, [rax+rcx*2]	# tmp144,
	mov	WORD PTR [rdi+102], cx	# MEM[(struct Widget *)vthis_1(D)].pos.h, tmp144
.L4:
	movzx	edi, WORD PTR [rbx+100]	# D.9106, MEM[(struct Widget *)vthis_1(D)].pos.w
	movzx	edx, dx	# iw, iw
	mov	ecx, edi	#, D.9106
	sub	ecx, edx	#, iw
	mov	edx, ecx	# tmp146,
	sar	edx	# tmp147
	add	dx, WORD PTR [rbx+96]	# tmp148, MEM[(struct Widget *)vthis_1(D)].pos.x
	mov	WORD PTR [rbx+272], dx	# MEM[(struct Widget *)vthis_1(D) + 176B].pos.x, tmp148
	movzx	esi, WORD PTR [rbx+102]	# D.9116, MEM[(struct Widget *)vthis_1(D)].pos.h
	movzx	eax, ax	# ih, ih
	mov	edx, esi	#, D.9116
	sub	edx, eax	#, ih
	mov	eax, edx	# tmp151,
	sar	eax	# tmp152
	add	ax, WORD PTR [rbx+98]	# tmp153, MEM[(struct Widget *)vthis_1(D)].pos.y
	mov	WORD PTR [rbx+274], ax	# MEM[(struct Widget *)vthis_1(D) + 176B].pos.y, tmp153
	call	Static_NewSurface	#
	mov	rbp, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L5	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9125
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L5:
	mov	edx, DWORD PTR [rbx+360]	# MEM[(struct LabelImage *)vthis_1(D)].border, MEM[(struct LabelImage *)vthis_1(D)].border
	mov	esi, 0	#,
	mov	rdi, rax	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9128
	je	.L7	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9131
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L7:
	movzx	eax, WORD PTR [rbx+368]	# iw, MEM[(struct LabelImage *)vthis_1(D)].border_width
	lea	edx, [rax+rax]	# ih,
	mov	WORD PTR [rsp], ax	# bgr.x, iw
	mov	WORD PTR [rsp+2], ax	# bgr.y, iw
	movzx	eax, WORD PTR [rbx+100]	# tmp156, MEM[(struct Widget *)vthis_1(D)].pos.w
	sub	eax, edx	# tmp156, ih
	mov	WORD PTR [rsp+4], ax	# bgr.w, tmp156
	movzx	eax, WORD PTR [rbx+102]	# tmp158, MEM[(struct Widget *)vthis_1(D)].pos.h
	sub	eax, edx	# tmp158, ih
	mov	WORD PTR [rsp+6], ax	# bgr.h, tmp158
	mov	edx, DWORD PTR [rbx+364]	# MEM[(struct LabelImage *)vthis_1(D)].background, MEM[(struct LabelImage *)vthis_1(D)].background
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9136
	je	.L8	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9139
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L8:
	movzx	eax, WORD PTR [rbx+272]	# MEM[(struct Widget *)vthis_1(D) + 176B].pos.x, MEM[(struct Widget *)vthis_1(D) + 176B].pos.x
	sub	ax, WORD PTR [rbx+96]	# tmp163, MEM[(struct Widget *)vthis_1(D)].pos.x
	mov	WORD PTR [rsp], ax	# bgr.x, tmp163
	movzx	eax, WORD PTR [rbx+276]	# MEM[(struct Widget *)vthis_1(D) + 176B].pos.w, MEM[(struct Widget *)vthis_1(D) + 176B].pos.w
	mov	WORD PTR [rsp+4], ax	# bgr.w, MEM[(struct Widget *)vthis_1(D) + 176B].pos.w
	movzx	eax, WORD PTR [rbx+274]	# MEM[(struct Widget *)vthis_1(D) + 176B].pos.y, MEM[(struct Widget *)vthis_1(D) + 176B].pos.y
	sub	ax, WORD PTR [rbx+98]	# tmp167, MEM[(struct Widget *)vthis_1(D)].pos.y
	mov	WORD PTR [rsp+2], ax	# bgr.y, tmp167
	movzx	eax, WORD PTR [rbx+278]	# MEM[(struct Widget *)vthis_1(D) + 176B].pos.h, MEM[(struct Widget *)vthis_1(D) + 176B].pos.h
	mov	WORD PTR [rsp+6], ax	# bgr.h, MEM[(struct Widget *)vthis_1(D) + 176B].pos.h
	mov	rdi, QWORD PTR [rbx+264]	# MEM[(struct Widget *)vthis_1(D) + 176B].surf, MEM[(struct Widget *)vthis_1(D) + 176B].surf
	mov	rcx, rsp	#,
	mov	rdx, rbp	#, bg_surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9151
	je	.L9	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9154
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L9:
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	edx, 106	#,
	mov	esi, OFFSET FLAT:.LC4	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+88], rbp	# MEM[(struct Widget *)vthis_1(D)].surf, bg_surf
	movzx	eax, WORD PTR [rbx+96]	# MEM[(struct Widget *)vthis_1(D)].pos.x, MEM[(struct Widget *)vthis_1(D)].pos.x
	add	ax, WORD PTR [rbx+100]	# tmp174, MEM[(struct Widget *)vthis_1(D)].pos.w
	mov	WORD PTR [rbx+152], ax	# MEM[(struct Widget *)vthis_1(D)].maxx, tmp174
	movzx	eax, WORD PTR [rbx+98]	# MEM[(struct Widget *)vthis_1(D)].pos.y, MEM[(struct Widget *)vthis_1(D)].pos.y
	add	ax, WORD PTR [rbx+102]	# tmp177, MEM[(struct Widget *)vthis_1(D)].pos.h
	mov	WORD PTR [rbx+154], ax	# MEM[(struct Widget *)vthis_1(D)].maxy, tmp177
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
.L3:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	LabelImage_vrefresh, .-LabelImage_vrefresh
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"%20s:\tWithin context: img_path=%s\n"
	.text
	.globl	LabelImage_new
	.type	LabelImage_new, @function
LabelImage_new:
.LFB95:
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
	mov	rbp, rsi	# img_path, img_path
	test	rdi, rdi	# this
	jne	.L13	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9002	#,
	call	Static_nullThis2	#
	mov	r8, rbp	#, img_path
	mov	ecx, OFFSET FLAT:__FUNCTION__.9002	#,
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L14	#
.L13:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9002	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	lea	rdi, [rbx+176]	# tmp64,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, rbp	#, img_path
	call	Image_new	#
	mov	BYTE PTR [rbx+374], 0	# this_2(D)->fixed_width,
	mov	WORD PTR [rbx+370], 5	# this_2(D)->padx,
	mov	WORD PTR [rbx+372], 5	# this_2(D)->pady,
	mov	WORD PTR [rbx+368], 1	# this_2(D)->border_width,
	mov	DWORD PTR [rbx+360], 187	# this_2(D)->border,
.L14:
	mov	rax, rbx	#, this
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	LabelImage_new, .-LabelImage_new
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"LabelImage_copy: Passed NULL: this(%p) or src(%p)\n"
	.text
	.globl	LabelImage_copy
	.type	LabelImage_copy, @function
LabelImage_copy:
.LFB96:
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
	mov	rbp, rsi	# src, src
	test	rsi, rsi	# src
	je	.L20	#,
	test	rdi, rdi	# this
	jne	.L17	#,
.L20:
	mov	r8, rbp	#, src
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# this,
	jmp	.L19	#
.L17:
	movzx	r12d, dl	# D.9072, copy_pos
	mov	ecx, 1	#,
	mov	edx, r12d	#, D.9072
	call	Widget_copy	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9008	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	lea	rsi, [rbp+176]	# tmp81,
	lea	rdi, [rbx+176]	# tmp82,
	mov	edx, r12d	#, D.9072
	call	Image_copy	#
	mov	eax, DWORD PTR [rbp+360]	# D.9075, src_4(D)->border
	mov	DWORD PTR [rbx+360], eax	# this_2(D)->border, D.9075
	mov	eax, DWORD PTR [rbp+364]	# D.9076, src_4(D)->background
	mov	DWORD PTR [rbx+364], eax	# this_2(D)->background, D.9076
	movzx	eax, WORD PTR [rbp+368]	# D.9077, src_4(D)->border_width
	mov	WORD PTR [rbx+368], ax	# this_2(D)->border_width, D.9077
	movzx	eax, WORD PTR [rbp+370]	# D.9078, src_4(D)->padx
	mov	WORD PTR [rbx+370], ax	# this_2(D)->padx, D.9078
	movzx	eax, WORD PTR [rbp+372]	# D.9079, src_4(D)->pady
	mov	WORD PTR [rbx+372], ax	# this_2(D)->pady, D.9079
	movzx	eax, BYTE PTR [rbp+374]	# D.9080, src_4(D)->fixed_width
	mov	BYTE PTR [rbx+374], al	# this_2(D)->fixed_width, D.9080
.L19:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	LabelImage_copy, .-LabelImage_copy
	.globl	LabelImage_setBorder
	.type	LabelImage_setBorder, @function
LabelImage_setBorder:
.LFB97:
	.cfi_startproc
	mov	WORD PTR [rdi+368], si	# this_1(D)->border_width, bord_width
	mov	DWORD PTR [rdi+360], edx	# this_1(D)->border, rgb
	ret
	.cfi_endproc
.LFE97:
	.size	LabelImage_setBorder, .-LabelImage_setBorder
	.globl	LabelImage_setPadding
	.type	LabelImage_setPadding, @function
LabelImage_setPadding:
.LFB98:
	.cfi_startproc
	mov	WORD PTR [rdi+370], si	# this_1(D)->padx, padx
	mov	WORD PTR [rdi+372], dx	# this_1(D)->pady, pady
	ret
	.cfi_endproc
.LFE98:
	.size	LabelImage_setPadding, .-LabelImage_setPadding
	.globl	LabelImage_setBgColor
	.type	LabelImage_setBgColor, @function
LabelImage_setBgColor:
.LFB99:
	.cfi_startproc
	mov	DWORD PTR [rdi+364], esi	# this_1(D)->background, rgb
	ret
	.cfi_endproc
.LFE99:
	.size	LabelImage_setBgColor, .-LabelImage_setBgColor
	.globl	LabelImage_setImageFromFile
	.type	LabelImage_setImageFromFile, @function
LabelImage_setImageFromFile:
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
	mov	rbp, rsi	# img_path, img_path
	movzx	r12d, WORD PTR [rdi+272]	# posx, MEM[(struct Widget *)this_1(D) + 176B].pos.x
	movzx	r13d, WORD PTR [rdi+274]	# posy, MEM[(struct Widget *)this_1(D) + 176B].pos.y
	lea	rbx, [rdi+176]	# D.9060,
	mov	rdi, rbx	#, D.9060
	call	delete	#
	movzx	ecx, r13w	# posy, posy
	movzx	edx, r12w	# posx, posx
	mov	rsi, rbp	#, img_path
	mov	rdi, rbx	#, D.9060
	call	Image_new	#
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	LabelImage_setImageFromFile, .-LabelImage_setImageFromFile
	.globl	LabelImage_setImage
	.type	LabelImage_setImage, @function
LabelImage_setImage:
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
	mov	r13, rsi	# image, image
	movzx	ebp, WORD PTR [rdi+272]	# posx, MEM[(struct Widget *)this_1(D) + 176B].pos.x
	movzx	r12d, WORD PTR [rdi+274]	# posy, MEM[(struct Widget *)this_1(D) + 176B].pos.y
	lea	rbx, [rdi+176]	# D.9055,
	mov	rdi, rbx	#, D.9055
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, r13	#, image
	mov	rdi, rbx	#, D.9055
	call	Image_copy	#
	movzx	edx, r12w	# posy, posy
	movzx	esi, bp	# posx, posx
	mov	rdi, rbx	#, D.9055
	call	Widget_setPosition	#
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	LabelImage_setImage, .-LabelImage_setImage
	.globl	LabelImage_scale
	.type	LabelImage_scale, @function
LabelImage_scale:
.LFB102:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_scale	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	LabelImage_scale, .-LabelImage_scale
	.section	.rodata.str1.1
.LC7:
	.string	"labelimage=NULL"
.LC8:
	.string	"%s"
	.text
	.globl	LabelImage_toString
	.type	LabelImage_toString, @function
LabelImage_toString:
.LFB103:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC7	# D.9048,
	test	rdi, rdi	# this
	je	.L36	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 176	# tmp64,
	call	Image_toString	#
	mov	rcx, rax	#, D.9050
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.9044	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.9044	# D.9048,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L36:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	LabelImage_toString, .-LabelImage_toString
	.globl	LabelImage_class
	.data
	.align 8
	.type	LabelImage_class, @object
	.size	LabelImage_class, 8
LabelImage_class:
	.quad	type
	.section	.rodata.str1.1
.LC9:
	.string	"LabelImage"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	376
# name:
	.quad	.LC9
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8997, @object
	.size	__FUNCTION__.8997, 20
__FUNCTION__.8997:
	.string	"LabelImage_vdestroy"
	.type	__FUNCTION__.9002, @object
	.size	__FUNCTION__.9002, 15
__FUNCTION__.9002:
	.string	"LabelImage_new"
	.align 16
	.type	__FUNCTION__.9008, @object
	.size	__FUNCTION__.9008, 16
__FUNCTION__.9008:
	.string	"LabelImage_copy"
	.local	str_id.9044
	.comm	str_id.9044,128,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	LabelImage_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	LabelImage_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
