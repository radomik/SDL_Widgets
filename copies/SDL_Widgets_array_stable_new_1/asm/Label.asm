	.file	"Label.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Label.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Label.asm
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
	.type	Label_vdestroy, @function
Label_vdestroy:
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
	.size	Label_vdestroy, .-Label_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Label_refresh: Inner TextBlock is still not visible after refresh\n"
	.align 8
.LC1:
	.string	"Label_refresh:Label> Failed to create base SDL_Surface bg_surf\n"
	.align 8
.LC2:
	.string	"Label_refresh:Label> Failed to fill background surface with border color (FillRect)\n"
	.align 8
.LC3:
	.string	"Label_refresh:Label> Failed to fill background surface with background color (FillRect)\n"
	.align 8
.LC4:
	.string	"Label_refresh:Label> SDL_BlitSurface(label->text_block.widget.surf, NULL, bg_surf, &bgr) failed: %s\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"Label.c"
	.text
	.globl	Label_refresh
	.type	Label_refresh, @function
Label_refresh:
.LFB93:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	sub	rsp, 16	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# label, label
	cmp	QWORD PTR [rdi+288], 0	# MEM[(struct TextBlock *)label_3(D) + 144B].text,
	jne	.L4	#,
	mov	BYTE PTR [rdi+130], 0	# MEM[(struct Widget *)label_3(D)].visible,
	jmp	.L3	#
.L4:
	lea	rdi, [rdi+144]	# tmp138,
	call	TextBlock_refresh	#
	movzx	r12d, BYTE PTR [rbx+274]	# child_visible, MEM[(struct Widget *)label_3(D) + 144B].visible
	test	r12b, r12b	# child_visible
	jne	.L6	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 66	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	eax, 10	# th,
	mov	edx, 10	# tw,
	jmp	.L7	#
.L6:
	movzx	edx, WORD PTR [rbx+204]	# tw, MEM[(struct Widget *)label_3(D) + 144B].pos.w
	movzx	eax, WORD PTR [rbx+206]	# th, MEM[(struct Widget *)label_3(D) + 144B].pos.h
.L7:
	cmp	BYTE PTR [rbx+338], 0	# label_3(D)->fixed_width,
	jne	.L8	#,
	movzx	ecx, WORD PTR [rbx+332]	# D.8759, label_3(D)->border_width
	mov	esi, ecx	# tmp139, D.8759
	add	si, WORD PTR [rbx+334]	# tmp139, label_3(D)->padx
	lea	esi, [rdx+rsi*2]	# tmp142,
	mov	WORD PTR [rbx+60], si	# MEM[(struct Widget *)label_3(D)].pos.w, tmp142
	add	cx, WORD PTR [rbx+336]	# tmp143, label_3(D)->pady
	lea	ecx, [rax+rcx*2]	# tmp146,
	mov	WORD PTR [rbx+62], cx	# MEM[(struct Widget *)label_3(D)].pos.h, tmp146
.L8:
	movzx	edi, WORD PTR [rbx+60]	# D.8770, MEM[(struct Widget *)label_3(D)].pos.w
	movzx	edx, dx	# tw, tw
	mov	ecx, edi	#, D.8770
	sub	ecx, edx	#, tw
	mov	edx, ecx	# tmp148,
	sar	edx	# tmp149
	add	dx, WORD PTR [rbx+56]	# tmp150, MEM[(struct Widget *)label_3(D)].pos.x
	mov	WORD PTR [rbx+200], dx	# MEM[(struct Widget *)label_3(D) + 144B].pos.x, tmp150
	movzx	esi, WORD PTR [rbx+62]	# D.8780, MEM[(struct Widget *)label_3(D)].pos.h
	movzx	eax, ax	# th, th
	mov	edx, esi	#, D.8780
	sub	edx, eax	#, th
	mov	eax, edx	# tmp153,
	sar	eax	# tmp154
	add	ax, WORD PTR [rbx+58]	# tmp155, MEM[(struct Widget *)label_3(D)].pos.y
	mov	WORD PTR [rbx+202], ax	# MEM[(struct Widget *)label_3(D) + 144B].pos.y, tmp155
	call	Static_NewSurface	#
	mov	rbp, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L9	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 63	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)label_3(D)].visible,
	jmp	.L3	#
.L9:
	mov	edx, DWORD PTR [rbx+328]	# label_3(D)->border, label_3(D)->border
	mov	esi, 0	#,
	mov	rdi, rax	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.8790
	je	.L10	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)label_3(D)].visible,
	jmp	.L3	#
.L10:
	movzx	eax, WORD PTR [rbx+332]	# tw, label_3(D)->border_width
	lea	edx, [rax+rax]	# th,
	mov	WORD PTR [rsp], ax	# bgr.x, tw
	mov	WORD PTR [rsp+2], ax	# bgr.y, tw
	movzx	eax, WORD PTR [rbx+60]	# tmp158, MEM[(struct Widget *)label_3(D)].pos.w
	sub	eax, edx	# tmp158, th
	mov	WORD PTR [rsp+4], ax	# bgr.w, tmp158
	movzx	eax, WORD PTR [rbx+62]	# tmp160, MEM[(struct Widget *)label_3(D)].pos.h
	sub	eax, edx	# tmp160, th
	mov	WORD PTR [rsp+6], ax	# bgr.h, tmp160
	mov	edx, DWORD PTR [rbx+312]	# MEM[(struct TextBlock *)label_3(D) + 144B].background, MEM[(struct TextBlock *)label_3(D) + 144B].background
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.8797
	je	.L11	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 88	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)label_3(D)].visible,
	jmp	.L3	#
.L11:
	test	r12b, r12b	# child_visible
	je	.L12	#,
	movzx	eax, WORD PTR [rbx+200]	# MEM[(struct Widget *)label_3(D) + 144B].pos.x, MEM[(struct Widget *)label_3(D) + 144B].pos.x
	sub	ax, WORD PTR [rbx+56]	# tmp165, MEM[(struct Widget *)label_3(D)].pos.x
	mov	WORD PTR [rsp], ax	# bgr.x, tmp165
	movzx	eax, WORD PTR [rbx+204]	# MEM[(struct Widget *)label_3(D) + 144B].pos.w, MEM[(struct Widget *)label_3(D) + 144B].pos.w
	mov	WORD PTR [rsp+4], ax	# bgr.w, MEM[(struct Widget *)label_3(D) + 144B].pos.w
	movzx	eax, WORD PTR [rbx+202]	# MEM[(struct Widget *)label_3(D) + 144B].pos.y, MEM[(struct Widget *)label_3(D) + 144B].pos.y
	sub	ax, WORD PTR [rbx+58]	# tmp169, MEM[(struct Widget *)label_3(D)].pos.y
	mov	WORD PTR [rsp+2], ax	# bgr.y, tmp169
	movzx	eax, WORD PTR [rbx+206]	# MEM[(struct Widget *)label_3(D) + 144B].pos.h, MEM[(struct Widget *)label_3(D) + 144B].pos.h
	mov	WORD PTR [rsp+6], ax	# bgr.h, MEM[(struct Widget *)label_3(D) + 144B].pos.h
	mov	rdi, QWORD PTR [rbx+192]	# MEM[(struct Widget *)label_3(D) + 144B].surf, MEM[(struct Widget *)label_3(D) + 144B].surf
	mov	rcx, rsp	#,
	mov	rdx, rbp	#, bg_surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.8813
	je	.L12	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8816
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)label_3(D)].visible,
	jmp	.L3	#
.L12:
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)label_3(D)].surf, MEM[(struct Widget *)label_3(D)].surf
	mov	edx, 111	#,
	mov	esi, OFFSET FLAT:.LC5	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+48], rbp	# MEM[(struct Widget *)label_3(D)].surf, bg_surf
	movzx	eax, WORD PTR [rbx+56]	# MEM[(struct Widget *)label_3(D)].pos.x, MEM[(struct Widget *)label_3(D)].pos.x
	add	ax, WORD PTR [rbx+60]	# tmp176, MEM[(struct Widget *)label_3(D)].pos.w
	mov	WORD PTR [rbx+112], ax	# MEM[(struct Widget *)label_3(D)].maxx, tmp176
	movzx	eax, WORD PTR [rbx+58]	# MEM[(struct Widget *)label_3(D)].pos.y, MEM[(struct Widget *)label_3(D)].pos.y
	add	ax, WORD PTR [rbx+62]	# tmp179, MEM[(struct Widget *)label_3(D)].pos.h
	mov	WORD PTR [rbx+114], ax	# MEM[(struct Widget *)label_3(D)].maxy, tmp179
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)label_3(D)].visible,
.L3:
	add	rsp, 16	#,
	.cfi_def_cfa_offset 32
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Label_refresh, .-Label_refresh
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Label_new: Passed NULL this pointer. text=%s\n"
	.section	.rodata.str1.1
.LC7:
	.string	"Label"
	.text
	.globl	Label_new
	.type	Label_new, @function
Label_new:
.LFB95:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# text, text
	test	rdi, rdi	# this
	jne	.L16	#,
	mov	rcx, rsi	#, text
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L17	#
.L16:
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	edx, OFFSET FLAT:Label_vdestroy	#,
	mov	esi, 3	#,
	call	Widget_init_type	#
	lea	rdi, [rbx+144]	# tmp64,
	mov	rsi, rbp	#, text
	call	TextBlock_new	#
	mov	BYTE PTR [rbx+338], 0	# this_2(D)->fixed_width,
	mov	WORD PTR [rbx+334], 5	# this_2(D)->padx,
	mov	WORD PTR [rbx+336], 5	# this_2(D)->pady,
	mov	WORD PTR [rbx+332], 1	# this_2(D)->border_width,
	mov	DWORD PTR [rbx+328], 187	# this_2(D)->border,
.L17:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Label_new, .-Label_new
	.globl	Label_setBorder
	.type	Label_setBorder, @function
Label_setBorder:
.LFB96:
	.cfi_startproc
	mov	WORD PTR [rdi+332], si	# label_1(D)->border_width, bord_width
	mov	DWORD PTR [rdi+328], edx	# label_1(D)->border, rgb
	ret
	.cfi_endproc
.LFE96:
	.size	Label_setBorder, .-Label_setBorder
	.globl	Label_setPadding
	.type	Label_setPadding, @function
Label_setPadding:
.LFB97:
	.cfi_startproc
	mov	WORD PTR [rdi+334], si	# label_1(D)->padx, padx
	mov	WORD PTR [rdi+336], dx	# label_1(D)->pady, pady
	ret
	.cfi_endproc
.LFE97:
	.size	Label_setPadding, .-Label_setPadding
	.globl	Label_setFont
	.type	Label_setFont, @function
Label_setFont:
.LFB98:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp62,
	call	TextBlock_setFont	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Label_setFont, .-Label_setFont
	.globl	Label_setFontColor
	.type	Label_setFontColor, @function
Label_setFontColor:
.LFB99:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp62,
	call	TextBlock_setForegroundColor	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Label_setFontColor, .-Label_setFontColor
	.globl	Label_setBgColor
	.type	Label_setBgColor, @function
Label_setBgColor:
.LFB100:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp62,
	call	TextBlock_setBackgroundColor	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Label_setBgColor, .-Label_setBgColor
	.globl	Label_setText
	.type	Label_setText, @function
Label_setText:
.LFB101:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp62,
	call	TextBlock_setText	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	Label_setText, .-Label_setText
	.globl	Label_applyDefaultStyle
	.type	Label_applyDefaultStyle, @function
Label_applyDefaultStyle:
.LFB102:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# label, label
	mov	r12d, DWORD PTR [rsp+32]	# fixed_width, fixed_width
	mov	WORD PTR [rdi+56], si	# MEM[(struct Widget *)label_3(D)].pos.x, posx
	mov	WORD PTR [rdi+58], dx	# MEM[(struct Widget *)label_3(D)].pos.y, posy
	mov	WORD PTR [rdi+334], r8w	# label_3(D)->padx, padx
	mov	WORD PTR [rdi+336], r9w	# label_3(D)->pady, pady
	lea	rbp, [rdi+144]	# D.8931,
	mov	rsi, rcx	#, font2
	mov	rdi, rbp	#, D.8931
	call	TextBlock_setFont	#
	mov	esi, 16353	#,
	mov	rdi, rbp	#, D.8931
	call	TextBlock_setForegroundColor	#
	mov	esi, 16775591	#,
	mov	rdi, rbp	#, D.8931
	call	TextBlock_setBackgroundColor	#
	mov	WORD PTR [rbx+332], 4	# label_3(D)->border_width,
	mov	DWORD PTR [rbx+328], 16711788	# label_3(D)->border,
	mov	rdi, rbx	#, label
	call	Label_refresh	#
	mov	BYTE PTR [rbx+338], r12b	# label_3(D)->fixed_width, fixed_width
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	Label_applyDefaultStyle, .-Label_applyDefaultStyle
	.section	.rodata.str1.1
.LC8:
	.string	"label=NULL"
.LC9:
	.string	"%s"
	.text
	.globl	Label_toString
	.type	Label_toString, @function
Label_toString:
.LFB103:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC8	# D.8716,
	test	rdi, rdi	# label
	je	.L36	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 144	# tmp64,
	call	TextBlock_toString	#
	mov	rcx, rax	#, D.8718
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id	# D.8716,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L36:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	Label_toString, .-Label_toString
	.local	str_id
	.comm	str_id,128,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
