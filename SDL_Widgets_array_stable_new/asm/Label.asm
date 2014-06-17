	.file	"Label.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Label.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Label.asm
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
	.globl	Label_vdestroy
	.type	Label_vdestroy, @function
Label_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.9016	#,
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
	.size	Label_vdestroy, .-Label_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Label_refresh: Inner TextBlock .text is NULL\n"
	.align 8
.LC1:
	.string	"Label_refresh: Inner TextBlock is still not visible after refresh\n"
	.align 8
.LC2:
	.string	"Label_refresh: Failed to create base SDL_Surface bg_surf\n"
	.align 8
.LC3:
	.string	"Label_refresh: Failed to fill background surface with border color (FillRect)\n"
	.align 8
.LC4:
	.string	"Label_refresh: Failed to fill background surface with background color (FillRect)\n"
	.align 8
.LC5:
	.string	"Label_refresh: SDL_BlitSurface(label->text_block.widget.surf, NULL, bg_surf, &bgr) failed: %s\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"Label.c"
	.text
	.globl	Label_vrefresh
	.type	Label_vrefresh, @function
Label_vrefresh:
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
	mov	rbx, rdi	# vthis, vthis
	lea	rdi, [rdi+176]	# tb,
	cmp	QWORD PTR [rbx+352], 0	# MEM[(struct TextBlock *)vthis_3(D) + 176B].text,
	jne	.L4	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 45	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L4:
	call	Widget_refresh	#
	movzx	r12d, BYTE PTR [rbx+343]	# child_visible, MEM[(struct Widget *)vthis_3(D) + 176B].visible
	test	r12b, r12b	# child_visible
	jne	.L6	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 66	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	eax, 10	# th,
	mov	edx, 10	# tw,
	jmp	.L7	#
.L6:
	movzx	edx, WORD PTR [rbx+276]	# tw, MEM[(struct Widget *)vthis_3(D) + 176B].pos.w
	movzx	eax, WORD PTR [rbx+278]	# th, MEM[(struct Widget *)vthis_3(D) + 176B].pos.h
.L7:
	cmp	BYTE PTR [rbx+402], 0	# MEM[(struct Label *)vthis_3(D)].fixed_width,
	jne	.L8	#,
	movzx	ecx, WORD PTR [rbx+396]	# D.9099, MEM[(struct Label *)vthis_3(D)].border_width
	mov	esi, ecx	# tmp139, D.9099
	add	si, WORD PTR [rbx+398]	# tmp139, MEM[(struct Label *)vthis_3(D)].padx
	lea	esi, [rdx+rsi*2]	# tmp142,
	mov	WORD PTR [rbx+100], si	# MEM[(struct Widget *)vthis_3(D)].pos.w, tmp142
	add	cx, WORD PTR [rbx+400]	# tmp143, MEM[(struct Label *)vthis_3(D)].pady
	lea	ecx, [rax+rcx*2]	# tmp146,
	mov	WORD PTR [rbx+102], cx	# MEM[(struct Widget *)vthis_3(D)].pos.h, tmp146
.L8:
	movzx	edi, WORD PTR [rbx+100]	# D.9110, MEM[(struct Widget *)vthis_3(D)].pos.w
	movzx	edx, dx	# tw, tw
	mov	ecx, edi	#, D.9110
	sub	ecx, edx	#, tw
	mov	edx, ecx	# tmp148,
	sar	edx	# tmp149
	add	dx, WORD PTR [rbx+96]	# tmp150, MEM[(struct Widget *)vthis_3(D)].pos.x
	mov	WORD PTR [rbx+272], dx	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.x, tmp150
	movzx	esi, WORD PTR [rbx+102]	# D.9120, MEM[(struct Widget *)vthis_3(D)].pos.h
	movzx	eax, ax	# th, th
	mov	edx, esi	#, D.9120
	sub	edx, eax	#, th
	mov	eax, edx	# tmp153,
	sar	eax	# tmp154
	add	ax, WORD PTR [rbx+98]	# tmp155, MEM[(struct Widget *)vthis_3(D)].pos.y
	mov	WORD PTR [rbx+274], ax	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.y, tmp155
	call	Static_NewSurface	#
	mov	rbp, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L9	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 57	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L9:
	mov	edx, DWORD PTR [rbx+392]	# MEM[(struct Label *)vthis_3(D)].border, MEM[(struct Label *)vthis_3(D)].border
	mov	esi, 0	#,
	mov	rdi, rax	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9130
	je	.L10	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 78	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L10:
	movzx	eax, WORD PTR [rbx+396]	# tw, MEM[(struct Label *)vthis_3(D)].border_width
	lea	edx, [rax+rax]	# th,
	mov	WORD PTR [rsp], ax	# bgr.x, tw
	mov	WORD PTR [rsp+2], ax	# bgr.y, tw
	movzx	eax, WORD PTR [rbx+100]	# tmp158, MEM[(struct Widget *)vthis_3(D)].pos.w
	sub	eax, edx	# tmp158, th
	mov	WORD PTR [rsp+4], ax	# bgr.w, tmp158
	movzx	eax, WORD PTR [rbx+102]	# tmp160, MEM[(struct Widget *)vthis_3(D)].pos.h
	sub	eax, edx	# tmp160, th
	mov	WORD PTR [rsp+6], ax	# bgr.h, tmp160
	mov	edx, DWORD PTR [rbx+376]	# MEM[(struct TextBlock *)vthis_3(D) + 176B].background, MEM[(struct TextBlock *)vthis_3(D) + 176B].background
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9137
	je	.L11	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L11:
	test	r12b, r12b	# child_visible
	je	.L12	#,
	movzx	eax, WORD PTR [rbx+272]	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.x, MEM[(struct Widget *)vthis_3(D) + 176B].pos.x
	sub	ax, WORD PTR [rbx+96]	# tmp165, MEM[(struct Widget *)vthis_3(D)].pos.x
	mov	WORD PTR [rsp], ax	# bgr.x, tmp165
	movzx	eax, WORD PTR [rbx+276]	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.w, MEM[(struct Widget *)vthis_3(D) + 176B].pos.w
	mov	WORD PTR [rsp+4], ax	# bgr.w, MEM[(struct Widget *)vthis_3(D) + 176B].pos.w
	movzx	eax, WORD PTR [rbx+274]	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.y, MEM[(struct Widget *)vthis_3(D) + 176B].pos.y
	sub	ax, WORD PTR [rbx+98]	# tmp169, MEM[(struct Widget *)vthis_3(D)].pos.y
	mov	WORD PTR [rsp+2], ax	# bgr.y, tmp169
	movzx	eax, WORD PTR [rbx+278]	# MEM[(struct Widget *)vthis_3(D) + 176B].pos.h, MEM[(struct Widget *)vthis_3(D) + 176B].pos.h
	mov	WORD PTR [rsp+6], ax	# bgr.h, MEM[(struct Widget *)vthis_3(D) + 176B].pos.h
	mov	rdi, QWORD PTR [rbx+264]	# MEM[(struct Widget *)vthis_3(D) + 176B].surf, MEM[(struct Widget *)vthis_3(D) + 176B].surf
	mov	rcx, rsp	#,
	mov	rdx, rbp	#, bg_surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9153
	je	.L12	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9156
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L12:
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_3(D)].surf, MEM[(struct Widget *)vthis_3(D)].surf
	mov	edx, 129	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbx+88], rbp	# MEM[(struct Widget *)vthis_3(D)].surf, bg_surf
	movzx	eax, WORD PTR [rbx+96]	# MEM[(struct Widget *)vthis_3(D)].pos.x, MEM[(struct Widget *)vthis_3(D)].pos.x
	add	ax, WORD PTR [rbx+100]	# tmp176, MEM[(struct Widget *)vthis_3(D)].pos.w
	mov	WORD PTR [rbx+152], ax	# MEM[(struct Widget *)vthis_3(D)].maxx, tmp176
	movzx	eax, WORD PTR [rbx+98]	# MEM[(struct Widget *)vthis_3(D)].pos.y, MEM[(struct Widget *)vthis_3(D)].pos.y
	add	ax, WORD PTR [rbx+102]	# tmp179, MEM[(struct Widget *)vthis_3(D)].pos.h
	mov	WORD PTR [rbx+154], ax	# MEM[(struct Widget *)vthis_3(D)].maxy, tmp179
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
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
	.size	Label_vrefresh, .-Label_vrefresh
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"%20s:\tWithin context: text=%s\n"
	.text
	.globl	Label_new
	.type	Label_new, @function
Label_new:
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
	mov	rbp, rsi	# text, text
	test	rdi, rdi	# this
	jne	.L16	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9021	#,
	call	Static_nullThis2	#
	mov	r8, rbp	#, text
	mov	ecx, OFFSET FLAT:__FUNCTION__.9021	#,
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L17	#
.L16:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9021	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	lea	rdi, [rbx+176]	# tmp64,
	mov	rsi, rbp	#, text
	call	TextBlock_new	#
	mov	BYTE PTR [rbx+402], 0	# this_2(D)->fixed_width,
	mov	WORD PTR [rbx+398], 5	# this_2(D)->padx,
	mov	WORD PTR [rbx+400], 5	# this_2(D)->pady,
	mov	WORD PTR [rbx+396], 1	# this_2(D)->border_width,
	mov	DWORD PTR [rbx+392], 187	# this_2(D)->border,
.L17:
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
	.size	Label_new, .-Label_new
	.globl	Label_setBorder
	.type	Label_setBorder, @function
Label_setBorder:
.LFB96:
	.cfi_startproc
	mov	WORD PTR [rdi+396], si	# this_1(D)->border_width, bord_width
	mov	DWORD PTR [rdi+392], edx	# this_1(D)->border, rgb
	ret
	.cfi_endproc
.LFE96:
	.size	Label_setBorder, .-Label_setBorder
	.globl	Label_setPadding
	.type	Label_setPadding, @function
Label_setPadding:
.LFB97:
	.cfi_startproc
	mov	WORD PTR [rdi+398], si	# this_1(D)->padx, padx
	mov	WORD PTR [rdi+400], dx	# this_1(D)->pady, pady
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
	add	rdi, 176	# tmp62,
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
	add	rdi, 176	# tmp62,
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
	add	rdi, 176	# tmp62,
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
	add	rdi, 176	# tmp62,
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
	mov	r13, rcx	# font2, font2
	mov	r12d, DWORD PTR [rsp+48]	# fixed_width, fixed_width
	mov	WORD PTR [rdi+96], si	# MEM[(struct Widget *)this_3(D)].pos.x, posx
	mov	WORD PTR [rdi+98], dx	# MEM[(struct Widget *)this_3(D)].pos.y, posy
	movzx	edx, r9w	# pady, pady
	movzx	esi, r8w	# padx, padx
	call	Label_setPadding	#
	lea	rbp, [rbx+176]	# D.9269,
	mov	rsi, r13	#, font2
	mov	rdi, rbp	#, D.9269
	call	TextBlock_setFont	#
	mov	esi, 16353	#,
	mov	rdi, rbp	#, D.9269
	call	TextBlock_setForegroundColor	#
	mov	esi, 16775591	#,
	mov	rdi, rbp	#, D.9269
	call	TextBlock_setBackgroundColor	#
	mov	edx, 16711788	#,
	mov	esi, 4	#,
	mov	rdi, rbx	#, this
	call	Label_setBorder	#
	mov	rdi, rbx	#, this
	call	Widget_refresh	#
	mov	BYTE PTR [rbx+402], r12b	# this_3(D)->fixed_width, fixed_width
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
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
	mov	eax, OFFSET FLAT:.LC8	# D.9064,
	test	rdi, rdi	# this
	je	.L36	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	add	rdi, 176	# tmp64,
	call	TextBlock_toString	#
	mov	rcx, rax	#, D.9066
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.9060	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.9060	# D.9064,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L36:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	Label_toString, .-Label_toString
	.globl	Label_class
	.data
	.align 8
	.type	Label_class, @object
	.size	Label_class, 8
Label_class:
	.quad	type
	.section	.rodata.str1.1
.LC10:
	.string	"Label"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	408
# name:
	.quad	.LC10
	.section	.rodata
	.type	__FUNCTION__.9016, @object
	.size	__FUNCTION__.9016, 15
__FUNCTION__.9016:
	.string	"Label_vdestroy"
	.type	__FUNCTION__.9021, @object
	.size	__FUNCTION__.9021, 10
__FUNCTION__.9021:
	.string	"Label_new"
	.local	str_id.9060
	.comm	str_id.9060,128,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	Label_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	Label_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
