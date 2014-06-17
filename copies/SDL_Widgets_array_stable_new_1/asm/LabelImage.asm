	.file	"LabelImage.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT LabelImage.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/LabelImage.asm
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
	.type	LabelImage_vdestroy, @function
LabelImage_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	lea	rdi, [rdi+144]	# tmp61,
	call	delete	#
	mov	rdi, rbx	#, vthis
	call	Widget_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	LabelImage_vdestroy, .-LabelImage_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"LabelImage_refresh:LabelImage> Failed to create base SDL_Surface bg_surf\n"
	.align 8
.LC1:
	.string	"LabelImage_refresh:LabelImage> Failed to fill background surface with border color (FillRect)\n"
	.align 8
.LC2:
	.string	"LabelImage_refresh:LabelImage> Failed to fill background surface with background color (FillRect)\n"
	.align 8
.LC3:
	.string	"LabelImage_refresh:LabelImage> SDL_BlitSurface(labelimage->image.widget.surf, NULL, bg_surf, &bgr) failed: %s\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"LabelImage.c"
	.text
	.globl	LabelImage_refresh
	.type	LabelImage_refresh, @function
LabelImage_refresh:
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
	mov	rbx, rdi	# labelimage, labelimage
	movzx	edx, WORD PTR [rdi+204]	# iw, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.w
	movzx	eax, WORD PTR [rdi+206]	# ih, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.h
	cmp	BYTE PTR [rdi+310], 0	# labelimage_1(D)->fixed_width,
	jne	.L4	#,
	movzx	ecx, WORD PTR [rdi+304]	# D.8767, labelimage_1(D)->border_width
	mov	esi, ecx	# tmp134, D.8767
	add	si, WORD PTR [rdi+306]	# tmp134, labelimage_1(D)->padx
	lea	esi, [rdx+rsi*2]	# tmp137,
	mov	WORD PTR [rdi+60], si	# MEM[(struct Widget *)labelimage_1(D)].pos.w, tmp137
	add	cx, WORD PTR [rdi+308]	# tmp138, labelimage_1(D)->pady
	lea	ecx, [rax+rcx*2]	# tmp141,
	mov	WORD PTR [rdi+62], cx	# MEM[(struct Widget *)labelimage_1(D)].pos.h, tmp141
.L4:
	movzx	edi, WORD PTR [rbx+60]	# D.8778, MEM[(struct Widget *)labelimage_1(D)].pos.w
	movzx	edx, dx	# iw, iw
	mov	ecx, edi	#, D.8778
	sub	ecx, edx	#, iw
	mov	edx, ecx	# tmp143,
	sar	edx	# tmp144
	add	dx, WORD PTR [rbx+56]	# tmp145, MEM[(struct Widget *)labelimage_1(D)].pos.x
	mov	WORD PTR [rbx+200], dx	# MEM[(struct Widget *)labelimage_1(D) + 144B].pos.x, tmp145
	movzx	esi, WORD PTR [rbx+62]	# D.8788, MEM[(struct Widget *)labelimage_1(D)].pos.h
	movzx	eax, ax	# ih, ih
	mov	edx, esi	#, D.8788
	sub	edx, eax	#, ih
	mov	eax, edx	# tmp148,
	sar	eax	# tmp149
	add	ax, WORD PTR [rbx+58]	# tmp150, MEM[(struct Widget *)labelimage_1(D)].pos.y
	mov	WORD PTR [rbx+202], ax	# MEM[(struct Widget *)labelimage_1(D) + 144B].pos.y, tmp150
	call	Static_NewSurface	#
	mov	rbp, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L5	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 73	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)labelimage_1(D)].visible,
	jmp	.L3	#
.L5:
	mov	edx, DWORD PTR [rbx+296]	# labelimage_1(D)->border, labelimage_1(D)->border
	mov	esi, 0	#,
	mov	rdi, rax	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.8799
	je	.L7	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 94	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)labelimage_1(D)].visible,
	jmp	.L3	#
.L7:
	movzx	eax, WORD PTR [rbx+304]	# iw, labelimage_1(D)->border_width
	lea	edx, [rax+rax]	# ih,
	mov	WORD PTR [rsp], ax	# bgr.x, iw
	mov	WORD PTR [rsp+2], ax	# bgr.y, iw
	movzx	eax, WORD PTR [rbx+60]	# tmp153, MEM[(struct Widget *)labelimage_1(D)].pos.w
	sub	eax, edx	# tmp153, ih
	mov	WORD PTR [rsp+4], ax	# bgr.w, tmp153
	movzx	eax, WORD PTR [rbx+62]	# tmp155, MEM[(struct Widget *)labelimage_1(D)].pos.h
	sub	eax, edx	# tmp155, ih
	mov	WORD PTR [rsp+6], ax	# bgr.h, tmp155
	mov	edx, DWORD PTR [rbx+300]	# labelimage_1(D)->background, labelimage_1(D)->background
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.8806
	je	.L8	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 98	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)labelimage_1(D)].visible,
	jmp	.L3	#
.L8:
	movzx	eax, WORD PTR [rbx+200]	# MEM[(struct Widget *)labelimage_1(D) + 144B].pos.x, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.x
	sub	ax, WORD PTR [rbx+56]	# tmp160, MEM[(struct Widget *)labelimage_1(D)].pos.x
	mov	WORD PTR [rsp], ax	# bgr.x, tmp160
	movzx	eax, WORD PTR [rbx+204]	# MEM[(struct Widget *)labelimage_1(D) + 144B].pos.w, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.w
	mov	WORD PTR [rsp+4], ax	# bgr.w, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.w
	movzx	eax, WORD PTR [rbx+202]	# MEM[(struct Widget *)labelimage_1(D) + 144B].pos.y, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.y
	sub	ax, WORD PTR [rbx+58]	# tmp164, MEM[(struct Widget *)labelimage_1(D)].pos.y
	mov	WORD PTR [rsp+2], ax	# bgr.y, tmp164
	movzx	eax, WORD PTR [rbx+206]	# MEM[(struct Widget *)labelimage_1(D) + 144B].pos.h, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.h
	mov	WORD PTR [rsp+6], ax	# bgr.h, MEM[(struct Widget *)labelimage_1(D) + 144B].pos.h
	mov	rdi, QWORD PTR [rbx+192]	# MEM[(struct Widget *)labelimage_1(D) + 144B].surf, MEM[(struct Widget *)labelimage_1(D) + 144B].surf
	mov	rcx, rsp	#,
	mov	rdx, rbp	#, bg_surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.8820
	je	.L9	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8823
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)labelimage_1(D)].visible,
	jmp	.L3	#
.L9:
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)labelimage_1(D)].surf, MEM[(struct Widget *)labelimage_1(D)].surf
	mov	edx, 93	#,
	mov	esi, OFFSET FLAT:.LC4	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+48], rbp	# MEM[(struct Widget *)labelimage_1(D)].surf, bg_surf
	movzx	eax, WORD PTR [rbx+56]	# MEM[(struct Widget *)labelimage_1(D)].pos.x, MEM[(struct Widget *)labelimage_1(D)].pos.x
	add	ax, WORD PTR [rbx+60]	# tmp171, MEM[(struct Widget *)labelimage_1(D)].pos.w
	mov	WORD PTR [rbx+112], ax	# MEM[(struct Widget *)labelimage_1(D)].maxx, tmp171
	movzx	eax, WORD PTR [rbx+58]	# MEM[(struct Widget *)labelimage_1(D)].pos.y, MEM[(struct Widget *)labelimage_1(D)].pos.y
	add	ax, WORD PTR [rbx+62]	# tmp174, MEM[(struct Widget *)labelimage_1(D)].pos.h
	mov	WORD PTR [rbx+114], ax	# MEM[(struct Widget *)labelimage_1(D)].maxy, tmp174
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)labelimage_1(D)].visible,
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
	.size	LabelImage_refresh, .-LabelImage_refresh
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"LabelImage_new: Passed NULL this pointer. img_path=%s\n"
	.section	.rodata.str1.1
.LC6:
	.string	"LabelImage"
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
	mov	rcx, rsi	#, img_path
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L14	#
.L13:
	mov	ecx, OFFSET FLAT:.LC6	#,
	mov	edx, OFFSET FLAT:LabelImage_vdestroy	#,
	mov	esi, 4	#,
	call	Widget_init_type	#
	lea	rdi, [rbx+144]	# tmp64,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, rbp	#, img_path
	call	Image_new	#
	mov	BYTE PTR [rbx+310], 0	# this_2(D)->fixed_width,
	mov	WORD PTR [rbx+306], 5	# this_2(D)->padx,
	mov	WORD PTR [rbx+308], 5	# this_2(D)->pady,
	mov	WORD PTR [rbx+304], 1	# this_2(D)->border_width,
	mov	DWORD PTR [rbx+296], 187	# this_2(D)->border,
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
.LC7:
	.string	"LabelImage_copy: Passed NULL: labelimage_dest(%p) or labelimage_src(%p)\n"
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
	mov	rbx, rdi	# labelimage_dest, labelimage_dest
	mov	rbp, rsi	# labelimage_src, labelimage_src
	test	rsi, rsi	# labelimage_src
	je	.L20	#,
	test	rdi, rdi	# labelimage_dest
	jne	.L17	#,
.L20:
	mov	r8, rbp	#, labelimage_src
	mov	rcx, rbx	#, labelimage_dest
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# labelimage_dest,
	jmp	.L19	#
.L17:
	movzx	r12d, dl	# D.8733, copy_pos
	mov	ecx, 1	#,
	mov	edx, r12d	#, D.8733
	call	Widget_copy	#
	lea	rsi, [rbp+144]	# tmp81,
	lea	rdi, [rbx+144]	# tmp82,
	mov	edx, r12d	#, D.8733
	call	Image_copy	#
	mov	eax, DWORD PTR [rbp+296]	# D.8739, labelimage_src_4(D)->border
	mov	DWORD PTR [rbx+296], eax	# labelimage_dest_2(D)->border, D.8739
	mov	eax, DWORD PTR [rbp+300]	# D.8740, labelimage_src_4(D)->background
	mov	DWORD PTR [rbx+300], eax	# labelimage_dest_2(D)->background, D.8740
	movzx	eax, WORD PTR [rbp+304]	# D.8741, labelimage_src_4(D)->border_width
	mov	WORD PTR [rbx+304], ax	# labelimage_dest_2(D)->border_width, D.8741
	movzx	eax, WORD PTR [rbp+306]	# D.8742, labelimage_src_4(D)->padx
	mov	WORD PTR [rbx+306], ax	# labelimage_dest_2(D)->padx, D.8742
	movzx	eax, WORD PTR [rbp+308]	# D.8743, labelimage_src_4(D)->pady
	mov	WORD PTR [rbx+308], ax	# labelimage_dest_2(D)->pady, D.8743
	movzx	eax, BYTE PTR [rbp+310]	# D.8744, labelimage_src_4(D)->fixed_width
	mov	BYTE PTR [rbx+310], al	# labelimage_dest_2(D)->fixed_width, D.8744
.L19:
	mov	rax, rbx	#, labelimage_dest
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
	mov	WORD PTR [rdi+304], si	# labelimage_1(D)->border_width, bord_width
	mov	DWORD PTR [rdi+296], edx	# labelimage_1(D)->border, rgb
	ret
	.cfi_endproc
.LFE97:
	.size	LabelImage_setBorder, .-LabelImage_setBorder
	.globl	LabelImage_setPadding
	.type	LabelImage_setPadding, @function
LabelImage_setPadding:
.LFB98:
	.cfi_startproc
	mov	WORD PTR [rdi+306], si	# labelimage_1(D)->padx, padx
	mov	WORD PTR [rdi+308], dx	# labelimage_1(D)->pady, pady
	ret
	.cfi_endproc
.LFE98:
	.size	LabelImage_setPadding, .-LabelImage_setPadding
	.globl	LabelImage_setBgColor
	.type	LabelImage_setBgColor, @function
LabelImage_setBgColor:
.LFB99:
	.cfi_startproc
	mov	DWORD PTR [rdi+300], esi	# labelimage_1(D)->background, rgb
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
	movzx	r12d, WORD PTR [rdi+200]	# posx, labelimage_1(D)->image.widget.pos.x
	movzx	r13d, WORD PTR [rdi+202]	# posy, labelimage_1(D)->image.widget.pos.y
	lea	rbx, [rdi+144]	# D.8723,
	mov	rdi, rbx	#, D.8723
	call	delete	#
	movzx	ecx, r13w	# posy, posy
	movzx	edx, r12w	# posx, posx
	mov	rsi, rbp	#, img_path
	mov	rdi, rbx	#, D.8723
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
	movzx	ebp, WORD PTR [rdi+200]	# posx, labelimage_1(D)->image.widget.pos.x
	movzx	r12d, WORD PTR [rdi+202]	# posy, labelimage_1(D)->image.widget.pos.y
	lea	rbx, [rdi+144]	# D.8717,
	mov	rdi, rbx	#, D.8717
	call	delete	#
	mov	edx, 0	#,
	mov	rsi, r13	#, image
	mov	rdi, rbx	#, D.8717
	call	Image_copy	#
	movzx	edx, r12w	# posy, posy
	movzx	esi, bp	# posx, posx
	mov	rdi, rbx	#, D.8717
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
.LC8:
	.string	"labelimage=NULL"
.LC9:
	.string	"%s"
	.text
	.globl	LabelImage_toString
	.type	LabelImage_toString, @function
LabelImage_toString:
.LFB103:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC8	# D.8708,
	test	rdi, rdi	# labelimage
	je	.L36	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp64,
	call	Image_toString	#
	mov	rcx, rax	#, D.8710
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id	# D.8708,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L36:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	LabelImage_toString, .-LabelImage_toString
	.local	str_id
	.comm	str_id,128,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
