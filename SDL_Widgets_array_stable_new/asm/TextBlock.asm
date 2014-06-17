	.file	"TextBlock.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT TextBlock.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/TextBlock.asm
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
	.string	"TextBlock.c"
	.text
	.globl	TextBlock_vdestroy
	.type	TextBlock_vdestroy, @function
TextBlock_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8968	#,
	call	Static_printObj2	#
	mov	rdi, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_1(D)].text, MEM[(struct TextBlock *)vthis_1(D)].text
	mov	edx, 109	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+176], 0	# MEM[(struct TextBlock *)vthis_1(D)].text,
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	TextBlock_vdestroy, .-TextBlock_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"TextBlock_refresh[%s] Failed to determine font size or invalid size (exit_code=%d, w=%d, h=%d)\n"
	.align 8
.LC2:
	.string	"TextBlock_refresh[%s] CreateRGBSurface (bg_surf) failed: %s\n"
	.align 8
.LC3:
	.string	"TextBlock_refresh[%s] Failed to fill background surface (FillRect): %s\n"
	.align 8
.LC4:
	.string	"TextBlock_refresh[%s] TTF_RenderUTF8_Solid (text_surf) failed [%s]\n"
	.align 8
.LC5:
	.string	"TextBlock_refresh[%s] SDL_BlitSurface(bg_surf, NULL, text_surf, NULL) failed: %s\n"
	.text
	.globl	TextBlock_vrefresh
	.type	TextBlock_vrefresh, @function
TextBlock_vrefresh:
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
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 64
	mov	rbx, rdi	# vthis, vthis
	mov	rsi, QWORD PTR [rdi+176]	# D.9051, MEM[(struct TextBlock *)vthis_2(D)].text
	test	rsi, rsi	# D.9051
	je	.L4	#,
	mov	rdi, QWORD PTR [rdi+184]	# D.9053, MEM[(struct TextBlock *)vthis_2(D)].font
	test	rdi, rdi	# D.9053
	jne	.L5	#,
.L4:
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L5:
	mov	rbp, QWORD PTR [rbx+88]	# bg_surf, MEM[(struct Widget *)vthis_2(D)].surf
	mov	DWORD PTR [rsp+28], 0	# w,
	mov	DWORD PTR [rsp+24], 0	# h,
	lea	rcx, [rsp+24]	#,
	lea	rdx, [rsp+28]	#,
	call	TTF_SizeUTF8	#
	cmp	eax, -1	# et,
	je	.L7	#,
	mov	edx, DWORD PTR [rsp+28]	# w.2, w
	test	edx, edx	# w.2
	jle	.L7	#,
	mov	ecx, DWORD PTR [rsp+24]	# h.3, h
	test	ecx, ecx	# h.3
	jg	.L8	#,
.L7:
	mov	rcx, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, DWORD PTR [rsp+24]	# h, h
	mov	DWORD PTR [rsp], edx	#, h
	mov	r9d, DWORD PTR [rsp+28]	#, w
	mov	r8d, eax	#, et
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L8:
	test	rbp, rbp	# bg_surf
	je	.L9	#,
	cmp	edx, DWORD PTR [rbp+16]	# w.2, bg_surf_7->w
	.p2align 4,,5
	jg	.L9	#,
	cmp	ecx, DWORD PTR [rbp+20]	# h.3, bg_surf_7->h
	.p2align 4,,2
	jle	.L10	#,
.L9:
	mov	edx, 70	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, bg_surf
	call	wSDL_FreeSurface	#
	movzx	esi, WORD PTR [rsp+24]	# tmp131, h
	movzx	edi, WORD PTR [rsp+28]	# tmp133, w
	call	Static_NewSurface	#
	mov	rbp, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L10	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9074,
	mov	rcx, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L3	#
.L10:
	mov	edx, DWORD PTR [rbx+200]	# MEM[(struct TextBlock *)vthis_2(D)].background, MEM[(struct TextBlock *)vthis_2(D)].background
	mov	esi, 0	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9076
	je	.L11	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9079,
	mov	rcx, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L11:
	cmp	BYTE PTR [rbx+204], 0	# MEM[(struct TextBlock *)vthis_2(D)].foreground_changed,
	je	.L12	#,
	mov	r12d, DWORD PTR [rbx+196]	# D.9083, MEM[(struct TextBlock *)vthis_2(D)].foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+20]	# D.9086, D.9084_35->Rmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+14]	# D.9087_38->Rshift, D.9087_38->Rshift
	shr	r12d, cl	# tmp139, D.9087_38->Rshift
	mov	BYTE PTR [rbx+192], r12b	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor.r, tmp139
	mov	r12d, DWORD PTR [rbx+196]	# D.9083, MEM[(struct TextBlock *)vthis_2(D)].foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+24]	# D.9094, D.9092_44->Gmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+15]	# D.9095_47->Gshift, D.9095_47->Gshift
	shr	r12d, cl	# tmp141, D.9095_47->Gshift
	mov	BYTE PTR [rbx+193], r12b	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor.g, tmp141
	mov	r12d, DWORD PTR [rbx+196]	# D.9083, MEM[(struct TextBlock *)vthis_2(D)].foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+28]	# D.9102, D.9100_53->Bmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+16]	# D.9103_56->Bshift, D.9103_56->Bshift
	shr	r12d, cl	# tmp143, D.9103_56->Bshift
	mov	BYTE PTR [rbx+194], r12b	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor.b, tmp143
	mov	BYTE PTR [rbx+204], 0	# MEM[(struct TextBlock *)vthis_2(D)].foreground_changed,
.L12:
	mov	edx, DWORD PTR [rbx+192]	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor, MEM[(struct TextBlock *)vthis_2(D)].fgcolor
	mov	rsi, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	rdi, QWORD PTR [rbx+184]	# MEM[(struct TextBlock *)vthis_2(D)].font, MEM[(struct TextBlock *)vthis_2(D)].font
	mov	r8d, 90	#,
	mov	ecx, OFFSET FLAT:.LC0	#,
	call	wTTF_RenderUTF8_Solid	#
	mov	r12, rax	# text_surf,
	test	rax, rax	# text_surf
	jne	.L13	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9110,
	mov	rcx, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L13:
	mov	ecx, 0	#,
	mov	rdx, rbp	#, bg_surf
	mov	esi, 0	#,
	mov	rdi, r12	#, text_surf
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9111
	je	.L14	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9114,
	mov	rcx, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L14:
	mov	QWORD PTR [rbx+88], rbp	# MEM[(struct Widget *)vthis_2(D)].surf, bg_surf
	movzx	edx, WORD PTR [rsp+24]	# tmp149, h
	movzx	esi, WORD PTR [rsp+28]	# tmp151, w
	mov	rdi, rbx	#, vthis
	call	Widget_setSizeUpdatePos	#
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	mov	edx, 101	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r12	#, text_surf
	call	wSDL_FreeSurface	#
.L3:
	add	rsp, 32	#,
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
	.size	TextBlock_vrefresh, .-TextBlock_vrefresh
	.globl	TextBlock_setText
	.type	TextBlock_setText, @function
TextBlock_setText:
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
	mov	rbp, rdi	# this, this
	mov	rbx, rsi	# text, text
	mov	rdi, rsi	# text, text
	mov	eax, 0	# tmp72,
	mov	rcx, -1	# tmp71,
	repnz scasb
	not	rcx	# tmp69
	lea	edx, [rcx-1]	# l,
	mov	r8, QWORD PTR [rbp+176]	# D.9021, this_5(D)->text
	test	r8, r8	# D.9021
	je	.L18	#,
	mov	rdi, r8	# D.9021, D.9021
	mov	rcx, -1	# tmp77,
	repnz scasb
	not	rcx	# tmp75
	sub	rcx, 1	# D.9024,
	cmp	dx, cx	# l, D.9024
	ja	.L19	#,
.L21:
	mov	rsi, rbx	#, text
	mov	rdi, r8	#, D.9021
	call	strcpy	#
	jmp	.L17	#
.L19:
	mov	edx, 154	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r8	#, D.9021
	call	wfree	#
.L22:
	mov	rdi, rbx	#, text
	call	__strdup	#
	mov	QWORD PTR [rbp+176], rax	# this_5(D)->text, tmp79
	jmp	.L17	#
.L18:
	test	dx, dx	# l
	jne	.L22	#,
	jmp	.L21	#
.L17:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE96:
	.size	TextBlock_setText, .-TextBlock_setText
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"%20s:\tWithin context: text='%s'\n"
	.section	.rodata.str1.1
.LC7:
	.string	"fonts/impact.ttf"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"TextBlock_new: Failed to set default font %s\n"
	.text
	.globl	TextBlock_new
	.type	TextBlock_new, @function
TextBlock_new:
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
	jne	.L25	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8973	#,
	call	Static_nullThis2	#
	mov	r8, rbp	#, text
	mov	ecx, OFFSET FLAT:__FUNCTION__.8973	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L26	#
.L25:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8973	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	QWORD PTR [rbx+176], 0	# this_2(D)->text,
	test	rbp, rbp	# text
	je	.L27	#,
	mov	rsi, rbp	#, text
	mov	rdi, rbx	#, this
	call	TextBlock_setText	#
.L27:
	mov	eax, 0	#,
	call	Static_getDefaultFont	#
	mov	QWORD PTR [rbx+184], rax	# this_2(D)->font, D.9041
	test	rax, rax	# D.9041
	jne	.L28	#,
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	jmp	.L26	#
.L28:
	mov	DWORD PTR [rbx+196], 0	# this_2(D)->foreground,
	mov	DWORD PTR [rbx+200], 15592683	# this_2(D)->background,
	mov	BYTE PTR [rbx+204], 1	# this_2(D)->foreground_changed,
.L26:
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
	.size	TextBlock_new, .-TextBlock_new
	.globl	TextBlock_setFont
	.type	TextBlock_setFont, @function
TextBlock_setFont:
.LFB97:
	.cfi_startproc
	test	rsi, rsi	# font
	je	.L30	#,
	test	rdi, rdi	# this
	je	.L30	#,
	mov	QWORD PTR [rdi+184], rsi	# this_3(D)->font, font
.L30:
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	TextBlock_setFont, .-TextBlock_setFont
	.globl	TextBlock_setForegroundColor
	.type	TextBlock_setForegroundColor, @function
TextBlock_setForegroundColor:
.LFB98:
	.cfi_startproc
	mov	DWORD PTR [rdi+196], esi	# this_1(D)->foreground, rgb
	mov	BYTE PTR [rdi+204], 1	# this_1(D)->foreground_changed,
	ret
	.cfi_endproc
.LFE98:
	.size	TextBlock_setForegroundColor, .-TextBlock_setForegroundColor
	.globl	TextBlock_setBackgroundColor
	.type	TextBlock_setBackgroundColor, @function
TextBlock_setBackgroundColor:
.LFB99:
	.cfi_startproc
	mov	DWORD PTR [rdi+200], esi	# this_1(D)->background, rgb
	ret
	.cfi_endproc
.LFE99:
	.size	TextBlock_setBackgroundColor, .-TextBlock_setBackgroundColor
	.section	.rodata.str1.1
.LC9:
	.string	"text_block=NULL"
.LC10:
	.string	"%s"
	.text
	.globl	TextBlock_toString
	.type	TextBlock_toString, @function
TextBlock_toString:
.LFB100:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC9	# D.9008,
	test	rdi, rdi	# this
	je	.L39	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR [rdi+176]	# this_2(D)->text, this_2(D)->text
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.8998	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.8998	# D.9008,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L39:
	rep
	ret
	.cfi_endproc
.LFE100:
	.size	TextBlock_toString, .-TextBlock_toString
	.globl	TextBlock_staticGetTextSize
	.type	TextBlock_staticGetTextSize, @function
TextBlock_staticGetTextSize:
.LFB101:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	TTF_SizeUTF8	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	TextBlock_staticGetTextSize, .-TextBlock_staticGetTextSize
	.globl	TextBlock_class
	.data
	.align 8
	.type	TextBlock_class, @object
	.size	TextBlock_class, 8
TextBlock_class:
	.quad	type
	.section	.rodata.str1.1
.LC11:
	.string	"TextBlock"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	208
# name:
	.quad	.LC11
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8968, @object
	.size	__FUNCTION__.8968, 19
__FUNCTION__.8968:
	.string	"TextBlock_vdestroy"
	.type	__FUNCTION__.8973, @object
	.size	__FUNCTION__.8973, 14
__FUNCTION__.8973:
	.string	"TextBlock_new"
	.local	str_id.8998
	.comm	str_id.8998,128,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	TextBlock_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	TextBlock_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
