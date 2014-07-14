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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+168]	# MEM[(struct TextBlock *)vthis_1(D)].text, MEM[(struct TextBlock *)vthis_1(D)].text
	mov	edx, 120	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+168], 0	# MEM[(struct TextBlock *)vthis_1(D)].text,
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
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
.LFB103:
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
	mov	rsi, QWORD PTR [rdi+168]	# D.9328, MEM[(struct TextBlock *)vthis_2(D)].text
	test	rsi, rsi	# D.9328
	je	.L4	#,
	mov	rdi, QWORD PTR [rdi+176]	# D.9330, MEM[(struct TextBlock *)vthis_2(D)].font
	test	rdi, rdi	# D.9330
	jne	.L5	#,
.L4:
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9331_96->vtable, D.9331_96->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9332_97 + 8B], MEM[(const void * *)D.9332_97 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9334_99].setVisible
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
	mov	rcx, QWORD PTR [rbx+168]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, DWORD PTR [rsp+24]	# h, h
	mov	DWORD PTR [rsp], edx	#, h
	mov	r9d, DWORD PTR [rsp+28]	#, w
	mov	r8d, eax	#, et
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9331_91->vtable, D.9331_91->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9332_92 + 8B], MEM[(const void * *)D.9332_92 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9334_94].setVisible
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
	mov	edx, 81	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, bg_surf
	call	wSDL_FreeSurface	#
	movzx	esi, WORD PTR [rsp+24]	# tmp155, h
	movzx	edi, WORD PTR [rsp+28]	# tmp157, w
	call	Static_newSurface	#
	mov	rbp, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L10	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9356,
	mov	rcx, QWORD PTR [rbx+168]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9331_28->vtable, D.9331_28->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9332_29 + 8B], MEM[(const void * *)D.9332_29 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9334_31].setVisible
	jmp	.L3	#
.L10:
	mov	edx, DWORD PTR [rbx+192]	# MEM[(struct TextBlock *)vthis_2(D)].background, MEM[(struct TextBlock *)vthis_2(D)].background
	mov	esi, 0	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.9358
	je	.L11	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9361,
	mov	rcx, QWORD PTR [rbx+168]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L11:
	cmp	BYTE PTR [rbx+196], 0	# MEM[(struct TextBlock *)vthis_2(D)].foreground_changed,
	je	.L12	#,
	mov	r12d, DWORD PTR [rbx+188]	# D.9365, MEM[(struct TextBlock *)vthis_2(D)].foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+20]	# D.9368, D.9366_40->Rmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+14]	# D.9369_43->Rshift, D.9369_43->Rshift
	shr	r12d, cl	# tmp167, D.9369_43->Rshift
	mov	BYTE PTR [rbx+184], r12b	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor.r, tmp167
	mov	r12d, DWORD PTR [rbx+188]	# D.9365, MEM[(struct TextBlock *)vthis_2(D)].foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+24]	# D.9376, D.9374_49->Gmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+15]	# D.9377_52->Gshift, D.9377_52->Gshift
	shr	r12d, cl	# tmp169, D.9377_52->Gshift
	mov	BYTE PTR [rbx+185], r12b	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor.g, tmp169
	mov	r12d, DWORD PTR [rbx+188]	# D.9365, MEM[(struct TextBlock *)vthis_2(D)].foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+28]	# D.9384, D.9382_58->Bmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+16]	# D.9385_61->Bshift, D.9385_61->Bshift
	shr	r12d, cl	# tmp171, D.9385_61->Bshift
	mov	BYTE PTR [rbx+186], r12b	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor.b, tmp171
	mov	BYTE PTR [rbx+196], 0	# MEM[(struct TextBlock *)vthis_2(D)].foreground_changed,
.L12:
	mov	edx, DWORD PTR [rbx+184]	# MEM[(struct TextBlock *)vthis_2(D)].fgcolor, MEM[(struct TextBlock *)vthis_2(D)].fgcolor
	mov	rsi, QWORD PTR [rbx+168]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	rdi, QWORD PTR [rbx+176]	# MEM[(struct TextBlock *)vthis_2(D)].font, MEM[(struct TextBlock *)vthis_2(D)].font
	mov	r8d, 101	#,
	mov	ecx, OFFSET FLAT:.LC0	#,
	call	wTTF_RenderUTF8_Solid	#
	mov	r12, rax	# text_surf,
	test	rax, rax	# text_surf
	jne	.L13	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9392,
	mov	rcx, QWORD PTR [rbx+168]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
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
	test	eax, eax	# D.9393
	je	.L14	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9396,
	mov	rcx, QWORD PTR [rbx+168]	# MEM[(struct TextBlock *)vthis_2(D)].text, MEM[(struct TextBlock *)vthis_2(D)].text
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L14:
	mov	QWORD PTR [rbx+88], rbp	# MEM[(struct Widget *)vthis_2(D)].surf, bg_surf
	movzx	edx, WORD PTR [rsp+24]	# tmp177, h
	movzx	esi, WORD PTR [rsp+28]	# tmp179, w
	mov	rdi, rbx	#, vthis
	call	Widget_setSizeUpdatePos	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9331_82->vtable, D.9331_82->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9332_83 + 8B], MEM[(const void * *)D.9332_83 + 8B]
	mov	esi, 1	#,
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9334_85].setVisible
	mov	edx, 112	#,
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
.LFE103:
	.size	TextBlock_vrefresh, .-TextBlock_vrefresh
	.section	.rodata.str1.1
.LC6:
	.string	"%s"
	.text
	.globl	TextBlock_vtoString
	.type	TextBlock_vtoString, @function
TextBlock_vtoString:
.LFB110:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR [rdi+168]	# MEM[(struct TextBlock *)vthis_1(D)].text, MEM[(struct TextBlock *)vthis_1(D)].text
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 512	#,
	mov	edi, OFFSET FLAT:str_id.9272	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.9272	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	TextBlock_vtoString, .-TextBlock_vtoString
	.globl	TextBlock_setText
	.type	TextBlock_setText, @function
TextBlock_setText:
.LFB106:
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
	mov	r8, QWORD PTR [rbp+168]	# D.9293, this_5(D)->text
	test	r8, r8	# D.9293
	je	.L20	#,
	mov	rdi, r8	# D.9293, D.9293
	mov	rcx, -1	# tmp77,
	repnz scasb
	not	rcx	# tmp75
	sub	rcx, 1	# D.9296,
	cmp	dx, cx	# l, D.9296
	ja	.L21	#,
.L23:
	mov	rsi, rbx	#, text
	mov	rdi, r8	#, D.9293
	call	strcpy	#
	jmp	.L19	#
.L21:
	mov	edx, 165	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r8	#, D.9293
	call	wfree	#
.L24:
	mov	edx, 166	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbx	#, text
	call	wstrdup	#
	mov	QWORD PTR [rbp+168], rax	# this_5(D)->text, D.9303
	jmp	.L19	#
.L20:
	test	dx, dx	# l
	jne	.L24	#,
	jmp	.L23	#
.L19:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE106:
	.size	TextBlock_setText, .-TextBlock_setText
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"%20s:\tWithin context: text='%s'\n"
	.section	.rodata.str1.1
.LC8:
	.string	"fonts/impact.ttf"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"TextBlock_new: Failed to set default font %s\n"
	.text
	.globl	TextBlock_new
	.type	TextBlock_new, @function
TextBlock_new:
.LFB105:
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
	jne	.L27	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9250	#,
	call	Static_nullThis2	#
	mov	r8, rbp	#, text
	mov	ecx, OFFSET FLAT:__FUNCTION__.9250	#,
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L28	#
.L27:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	QWORD PTR [rbx+168], 0	# this_2(D)->text,
	test	rbp, rbp	# text
	je	.L29	#,
	mov	rsi, rbp	#, text
	mov	rdi, rbx	#, this
	call	TextBlock_setText	#
.L29:
	mov	eax, 0	#,
	call	Static_getDefaultFont	#
	mov	QWORD PTR [rbx+176], rax	# this_2(D)->font, D.9313
	test	rax, rax	# D.9313
	jne	.L30	#,
	mov	ecx, OFFSET FLAT:.LC8	#,
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_2(D)].class, MEM[(struct coObject *)this_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9317_9->vtable, D.9317_9->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9318_10 + 8B], MEM[(const void * *)D.9318_10 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9320_12].setVisible
	jmp	.L28	#
.L30:
	mov	DWORD PTR [rbx+188], 0	# this_2(D)->foreground,
	mov	DWORD PTR [rbx+192], 15592683	# this_2(D)->background,
	mov	BYTE PTR [rbx+196], 1	# this_2(D)->foreground_changed,
.L28:
	mov	rax, rbx	#, this
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	TextBlock_new, .-TextBlock_new
	.globl	TextBlock_setFont
	.type	TextBlock_setFont, @function
TextBlock_setFont:
.LFB107:
	.cfi_startproc
	test	rsi, rsi	# font
	je	.L32	#,
	test	rdi, rdi	# this
	je	.L32	#,
	mov	QWORD PTR [rdi+176], rsi	# this_3(D)->font, font
.L32:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	TextBlock_setFont, .-TextBlock_setFont
	.globl	TextBlock_setForegroundColor
	.type	TextBlock_setForegroundColor, @function
TextBlock_setForegroundColor:
.LFB108:
	.cfi_startproc
	mov	DWORD PTR [rdi+188], esi	# this_1(D)->foreground, rgb
	mov	BYTE PTR [rdi+196], 1	# this_1(D)->foreground_changed,
	ret
	.cfi_endproc
.LFE108:
	.size	TextBlock_setForegroundColor, .-TextBlock_setForegroundColor
	.globl	TextBlock_setBackgroundColor
	.type	TextBlock_setBackgroundColor, @function
TextBlock_setBackgroundColor:
.LFB109:
	.cfi_startproc
	mov	DWORD PTR [rdi+192], esi	# this_1(D)->background, rgb
	ret
	.cfi_endproc
.LFE109:
	.size	TextBlock_setBackgroundColor, .-TextBlock_setBackgroundColor
	.globl	TextBlock_staticGetTextSize
	.type	TextBlock_staticGetTextSize, @function
TextBlock_staticGetTextSize:
.LFB111:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	TTF_SizeUTF8	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	TextBlock_staticGetTextSize, .-TextBlock_staticGetTextSize
	.globl	TextBlock_class
	.data
	.align 8
	.type	TextBlock_class, @object
	.size	TextBlock_class, 8
TextBlock_class:
	.quad	type
	.section	.rodata.str1.1
.LC10:
	.string	"TextBlock"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	200
# name:
	.quad	.LC10
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.9250, @object
	.size	__FUNCTION__.9250, 14
__FUNCTION__.9250:
	.string	"TextBlock_new"
	.local	str_id.9272
	.comm	str_id.9272,512,32
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
	.quad	TextBlock_vdestroy
# toString:
	.quad	TextBlock_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	TextBlock_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
