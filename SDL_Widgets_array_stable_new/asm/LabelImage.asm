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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB108:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	lea	rdi, [rdi+168]	# tmp61,
	call	delete	#
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
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
.LFB107:
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
	movzx	edx, WORD PTR [rdi+268]	# iw, MEM[(struct Widget *)vthis_1(D) + 168B].pos.w
	movzx	eax, WORD PTR [rdi+270]	# ih, MEM[(struct Widget *)vthis_1(D) + 168B].pos.h
	cmp	BYTE PTR [rdi+358], 0	# MEM[(struct LabelImage *)vthis_1(D)].fixed_width,
	jne	.L4	#,
	movzx	ecx, WORD PTR [rdi+352]	# D.9668, MEM[(struct LabelImage *)vthis_1(D)].border_width
	mov	esi, ecx	# tmp149, D.9668
	add	si, WORD PTR [rdi+354]	# tmp149, MEM[(struct LabelImage *)vthis_1(D)].padx
	lea	esi, [rdx+rsi*2]	# tmp152,
	mov	WORD PTR [rdi+100], si	# MEM[(struct Widget *)vthis_1(D)].pos.w, tmp152
	add	cx, WORD PTR [rdi+356]	# tmp153, MEM[(struct LabelImage *)vthis_1(D)].pady
	lea	ecx, [rax+rcx*2]	# tmp156,
	mov	WORD PTR [rdi+102], cx	# MEM[(struct Widget *)vthis_1(D)].pos.h, tmp156
.L4:
	movzx	edi, WORD PTR [rbx+100]	# D.9679, MEM[(struct Widget *)vthis_1(D)].pos.w
	movzx	edx, dx	# iw, iw
	mov	ecx, edi	#, D.9679
	sub	ecx, edx	#, iw
	mov	edx, ecx	# tmp158,
	sar	edx	# tmp159
	add	dx, WORD PTR [rbx+96]	# tmp160, MEM[(struct Widget *)vthis_1(D)].pos.x
	mov	WORD PTR [rbx+264], dx	# MEM[(struct Widget *)vthis_1(D) + 168B].pos.x, tmp160
	movzx	esi, WORD PTR [rbx+102]	# D.9689, MEM[(struct Widget *)vthis_1(D)].pos.h
	movzx	eax, ax	# ih, ih
	mov	edx, esi	#, D.9689
	sub	edx, eax	#, ih
	mov	eax, edx	# tmp163,
	sar	eax	# tmp164
	add	ax, WORD PTR [rbx+98]	# tmp165, MEM[(struct Widget *)vthis_1(D)].pos.y
	mov	WORD PTR [rbx+266], ax	# MEM[(struct Widget *)vthis_1(D) + 168B].pos.y, tmp165
	call	Static_newSurface	#
	mov	rbp, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L5	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9698
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9700_46->vtable, D.9700_46->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9701_47 + 8B], MEM[(const void * *)D.9701_47 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9703_49].setVisible
	jmp	.L3	#
.L5:
	mov	edx, DWORD PTR [rbx+344]	# MEM[(struct LabelImage *)vthis_1(D)].border, MEM[(struct LabelImage *)vthis_1(D)].border
	mov	esi, 0	#,
	mov	rdi, rax	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9706
	je	.L7	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9709
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9700_55->vtable, D.9700_55->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9701_56 + 8B], MEM[(const void * *)D.9701_56 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9703_58].setVisible
	jmp	.L3	#
.L7:
	movzx	eax, WORD PTR [rbx+352]	# iw, MEM[(struct LabelImage *)vthis_1(D)].border_width
	lea	edx, [rax+rax]	# ih,
	mov	WORD PTR [rsp], ax	# bgr.x, iw
	mov	WORD PTR [rsp+2], ax	# bgr.y, iw
	movzx	eax, WORD PTR [rbx+100]	# tmp176, MEM[(struct Widget *)vthis_1(D)].pos.w
	sub	eax, edx	# tmp176, ih
	mov	WORD PTR [rsp+4], ax	# bgr.w, tmp176
	movzx	eax, WORD PTR [rbx+102]	# tmp178, MEM[(struct Widget *)vthis_1(D)].pos.h
	sub	eax, edx	# tmp178, ih
	mov	WORD PTR [rsp+6], ax	# bgr.h, tmp178
	mov	edx, DWORD PTR [rbx+348]	# MEM[(struct LabelImage *)vthis_1(D)].background, MEM[(struct LabelImage *)vthis_1(D)].background
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9714
	je	.L8	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9717
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9700_73->vtable, D.9700_73->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9701_74 + 8B], MEM[(const void * *)D.9701_74 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9703_76].setVisible
	jmp	.L3	#
.L8:
	movzx	eax, WORD PTR [rbx+264]	# MEM[(struct Widget *)vthis_1(D) + 168B].pos.x, MEM[(struct Widget *)vthis_1(D) + 168B].pos.x
	sub	ax, WORD PTR [rbx+96]	# tmp187, MEM[(struct Widget *)vthis_1(D)].pos.x
	mov	WORD PTR [rsp], ax	# bgr.x, tmp187
	movzx	eax, WORD PTR [rbx+268]	# MEM[(struct Widget *)vthis_1(D) + 168B].pos.w, MEM[(struct Widget *)vthis_1(D) + 168B].pos.w
	mov	WORD PTR [rsp+4], ax	# bgr.w, MEM[(struct Widget *)vthis_1(D) + 168B].pos.w
	movzx	eax, WORD PTR [rbx+266]	# MEM[(struct Widget *)vthis_1(D) + 168B].pos.y, MEM[(struct Widget *)vthis_1(D) + 168B].pos.y
	sub	ax, WORD PTR [rbx+98]	# tmp191, MEM[(struct Widget *)vthis_1(D)].pos.y
	mov	WORD PTR [rsp+2], ax	# bgr.y, tmp191
	movzx	eax, WORD PTR [rbx+270]	# MEM[(struct Widget *)vthis_1(D) + 168B].pos.h, MEM[(struct Widget *)vthis_1(D) + 168B].pos.h
	mov	WORD PTR [rsp+6], ax	# bgr.h, MEM[(struct Widget *)vthis_1(D) + 168B].pos.h
	mov	rdi, QWORD PTR [rbx+256]	# MEM[(struct Widget *)vthis_1(D) + 168B].surf, MEM[(struct Widget *)vthis_1(D) + 168B].surf
	mov	rcx, rsp	#,
	mov	rdx, rbp	#, bg_surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9729
	je	.L9	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9732
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9700_96->vtable, D.9700_96->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9701_97 + 8B], MEM[(const void * *)D.9701_97 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9703_99].setVisible
	jmp	.L3	#
.L9:
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	edx, 114	#,
	mov	esi, OFFSET FLAT:.LC4	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+88], rbp	# MEM[(struct Widget *)vthis_1(D)].surf, bg_surf
	mov	rdi, rbx	#, vthis
	call	Widget_updateMaxXY	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9700_102->vtable, D.9700_102->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9701_103 + 8B], MEM[(const void * *)D.9701_103 + 8B]
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9703_105].setVisible
.L3:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	LabelImage_vrefresh, .-LabelImage_vrefresh
	.section	.rodata.str1.1
.LC5:
	.string	"%s"
	.text
	.globl	LabelImage_vtoString
	.type	LabelImage_vtoString, @function
LabelImage_vtoString:
.LFB117:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR TO_STRING_NULL_THIS_STR[rip]	# iftmp.0, TO_STRING_NULL_THIS_STR
	mov	rax, rdi	# D.9615, vthis
	add	rax, 168	# D.9615,
	je	.L14	#,
	mov	rdx, QWORD PTR [rdi+168]	# MEM[(struct coObject *)vthis_2(D) + 168B].class, MEM[(struct coObject *)vthis_2(D) + 168B].class
	mov	rdx, QWORD PTR [rdx+16]	# D.9618_5->vtable, D.9618_5->vtable
	mov	rdx, QWORD PTR [rdx]	# *D.9619_6, *D.9619_6
	mov	rdi, rax	#, D.9615
	call	[QWORD PTR [rdx+8]]	# MEM[(struct coIObject *)D.9620_7].toString
	mov	rcx, rax	# iftmp.0,
.L14:
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.9612	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.9612	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	LabelImage_vtoString, .-LabelImage_vtoString
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"%20s:\tWithin context: img_path=%s\n"
	.text
	.globl	LabelImage_new
	.type	LabelImage_new, @function
LabelImage_new:
.LFB109:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# img_path, img_path
	test	rdi, rdi	# this
	jne	.L17	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9571	#,
	call	Static_nullThis2	#
	mov	r8, rbp	#, img_path
	mov	ecx, OFFSET FLAT:__FUNCTION__.9571	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L18	#
.L17:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	lea	rdi, [rbx+168]	# tmp64,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, rbp	#, img_path
	call	Image_new	#
	mov	BYTE PTR [rbx+358], 0	# this_2(D)->fixed_width,
	mov	WORD PTR [rbx+354], 5	# this_2(D)->padx,
	mov	WORD PTR [rbx+356], 5	# this_2(D)->pady,
	mov	WORD PTR [rbx+352], 1	# this_2(D)->border_width,
	mov	DWORD PTR [rbx+344], 187	# this_2(D)->border,
.L18:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	LabelImage_new, .-LabelImage_new
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"LabelImage_copy: Passed NULL: this(%p) or src(%p)\n"
	.text
	.globl	LabelImage_copy
	.type	LabelImage_copy, @function
LabelImage_copy:
.LFB110:
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
	je	.L24	#,
	test	rdi, rdi	# this
	jne	.L21	#,
.L24:
	mov	r8, rbp	#, src
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# this,
	jmp	.L23	#
.L21:
	movzx	r12d, dl	# D.9645, copy_pos
	mov	ecx, 1	#,
	mov	edx, r12d	#, D.9645
	call	Widget_copy	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	lea	rsi, [rbp+168]	# tmp81,
	lea	rdi, [rbx+168]	# tmp82,
	mov	edx, r12d	#, D.9645
	call	Image_copy	#
	mov	eax, DWORD PTR [rbp+344]	# D.9648, src_4(D)->border
	mov	DWORD PTR [rbx+344], eax	# this_2(D)->border, D.9648
	mov	eax, DWORD PTR [rbp+348]	# D.9649, src_4(D)->background
	mov	DWORD PTR [rbx+348], eax	# this_2(D)->background, D.9649
	movzx	eax, WORD PTR [rbp+352]	# D.9650, src_4(D)->border_width
	mov	WORD PTR [rbx+352], ax	# this_2(D)->border_width, D.9650
	movzx	eax, WORD PTR [rbp+354]	# D.9651, src_4(D)->padx
	mov	WORD PTR [rbx+354], ax	# this_2(D)->padx, D.9651
	movzx	eax, WORD PTR [rbp+356]	# D.9652, src_4(D)->pady
	mov	WORD PTR [rbx+356], ax	# this_2(D)->pady, D.9652
	movzx	eax, BYTE PTR [rbp+358]	# D.9653, src_4(D)->fixed_width
	mov	BYTE PTR [rbx+358], al	# this_2(D)->fixed_width, D.9653
.L23:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	LabelImage_copy, .-LabelImage_copy
	.globl	LabelImage_setBorder
	.type	LabelImage_setBorder, @function
LabelImage_setBorder:
.LFB111:
	.cfi_startproc
	mov	WORD PTR [rdi+352], si	# this_1(D)->border_width, bord_width
	mov	DWORD PTR [rdi+344], edx	# this_1(D)->border, rgb
	ret
	.cfi_endproc
.LFE111:
	.size	LabelImage_setBorder, .-LabelImage_setBorder
	.globl	LabelImage_setPadding
	.type	LabelImage_setPadding, @function
LabelImage_setPadding:
.LFB112:
	.cfi_startproc
	mov	WORD PTR [rdi+354], si	# this_1(D)->padx, padx
	mov	WORD PTR [rdi+356], dx	# this_1(D)->pady, pady
	ret
	.cfi_endproc
.LFE112:
	.size	LabelImage_setPadding, .-LabelImage_setPadding
	.globl	LabelImage_setBgColor
	.type	LabelImage_setBgColor, @function
LabelImage_setBgColor:
.LFB113:
	.cfi_startproc
	mov	DWORD PTR [rdi+348], esi	# this_1(D)->background, rgb
	ret
	.cfi_endproc
.LFE113:
	.size	LabelImage_setBgColor, .-LabelImage_setBgColor
	.globl	LabelImage_setImageFromFile
	.type	LabelImage_setImageFromFile, @function
LabelImage_setImageFromFile:
.LFB114:
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
	movzx	r12d, WORD PTR [rdi+264]	# posx, MEM[(struct Widget *)this_1(D) + 168B].pos.x
	movzx	r13d, WORD PTR [rdi+266]	# posy, MEM[(struct Widget *)this_1(D) + 168B].pos.y
	lea	rbx, [rdi+168]	# D.9633,
	mov	rdi, rbx	#, D.9633
	call	delete	#
	movzx	ecx, r13w	# posy, posy
	movzx	edx, r12w	# posx, posx
	mov	rsi, rbp	#, img_path
	mov	rdi, rbx	#, D.9633
	call	Image_new	#
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	LabelImage_setImageFromFile, .-LabelImage_setImageFromFile
	.globl	LabelImage_setImage
	.type	LabelImage_setImage, @function
LabelImage_setImage:
.LFB115:
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
	movzx	ebp, WORD PTR [rdi+264]	# posx, MEM[(struct Widget *)this_1(D) + 168B].pos.x
	movzx	r12d, WORD PTR [rdi+266]	# posy, MEM[(struct Widget *)this_1(D) + 168B].pos.y
	lea	rbx, [rdi+168]	# D.9628,
	mov	rdi, rbx	#, D.9628
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, r13	#, image
	mov	rdi, rbx	#, D.9628
	call	Image_copy	#
	movzx	edx, r12w	# posy, posy
	movzx	esi, bp	# posx, posx
	mov	rdi, rbx	#, D.9628
	call	Widget_setPosition	#
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	LabelImage_setImage, .-LabelImage_setImage
	.globl	LabelImage_scale
	.type	LabelImage_scale, @function
LabelImage_scale:
.LFB116:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_scale	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	LabelImage_scale, .-LabelImage_scale
	.globl	LabelImage_class
	.data
	.align 8
	.type	LabelImage_class, @object
	.size	LabelImage_class, 8
LabelImage_class:
	.quad	type
	.comm	IMAGE_SUPPORTED_FILES,8,8
	.section	.rodata.str1.1
.LC8:
	.string	"LabelImage"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	360
# name:
	.quad	.LC8
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.9571, @object
	.size	__FUNCTION__.9571, 15
__FUNCTION__.9571:
	.string	"LabelImage_new"
	.local	str_id.9612
	.comm	str_id.9612,128,32
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
	.quad	LabelImage_vdestroy
# toString:
	.quad	LabelImage_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	LabelImage_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
