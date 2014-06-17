	.file	"TextBlock.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT TextBlock.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/TextBlock.asm
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
	.type	TextBlock_vdestroy, @function
TextBlock_vdestroy:
.LFB95:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+144]	# MEM[(struct TextBlock *)vthis_1(D)].text, MEM[(struct TextBlock *)vthis_1(D)].text
	mov	edx, 176	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+144], 0	# MEM[(struct TextBlock *)vthis_1(D)].text,
	mov	rdi, rbx	#, vthis
	call	Widget_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
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
	.globl	TextBlock_refresh
	.type	TextBlock_refresh, @function
TextBlock_refresh:
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# text_block, text_block
	mov	rsi, QWORD PTR [rdi+144]	# D.8820, text_block_2(D)->text
	test	rsi, rsi	# D.8820
	je	.L4	#,
	mov	rdi, QWORD PTR [rdi+152]	# D.8822, text_block_2(D)->font
	test	rdi, rdi	# D.8822
	jne	.L5	#,
.L4:
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)text_block_2(D)].visible,
	jmp	.L3	#
.L5:
	mov	rbp, QWORD PTR [rbx+48]	# bg_surf, MEM[(struct Widget *)text_block_2(D)].surf
	mov	DWORD PTR [rsp+28], 0	# w,
	mov	DWORD PTR [rsp+24], 0	# h,
	lea	rcx, [rsp+24]	#,
	lea	rdx, [rsp+28]	#,
	call	TTF_SizeUTF8	#
	mov	r8d, eax	# et,
	cmp	eax, -1	# et,
	je	.L7	#,
	mov	ecx, DWORD PTR [rsp+28]	# w.11, w
	test	ecx, ecx	# w.11
	jle	.L7	#,
	mov	eax, DWORD PTR [rsp+24]	# h.12, h
	test	eax, eax	# h.12
	jle	.L7	#,
	cmp	ecx, 3000	# w.11,
	jg	.L7	#,
	cmp	eax, 3000	# h.12,
	jle	.L8	#,
.L7:
	mov	rcx, QWORD PTR [rbx+144]	# text_block_2(D)->text, text_block_2(D)->text
	mov	eax, DWORD PTR [rsp+24]	# h, h
	mov	DWORD PTR [rsp], eax	#, h
	mov	r9d, DWORD PTR [rsp+28]	#, w
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)text_block_2(D)].visible,
	jmp	.L3	#
.L8:
	test	rbp, rbp	# bg_surf
	je	.L9	#,
	cmp	ecx, DWORD PTR [rbp+16]	# w.11, bg_surf_6->w
	jg	.L9	#,
	cmp	eax, DWORD PTR [rbp+20]	# h.12, bg_surf_6->h
	.p2align 4,,2
	jle	.L10	#,
.L9:
	mov	edx, 52	#,
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
	mov	r8, rax	# D.8845,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_2(D)->text, text_block_2(D)->text
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)text_block_2(D)].visible,
	jmp	.L3	#
.L10:
	mov	edx, DWORD PTR [rbx+168]	# text_block_2(D)->background, text_block_2(D)->background
	mov	esi, 0	#,
	mov	rdi, rbp	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.8847
	je	.L11	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8850,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_2(D)->text, text_block_2(D)->text
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L11:
	cmp	BYTE PTR [rbx+172], 0	# text_block_2(D)->foreground_changed,
	je	.L12	#,
	mov	r12d, DWORD PTR [rbx+164]	# D.8854, text_block_2(D)->foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+20]	# D.8857, D.8855_36->Rmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+14]	# D.8858_39->Rshift, D.8858_39->Rshift
	shr	r12d, cl	# tmp139, D.8858_39->Rshift
	mov	BYTE PTR [rbx+160], r12b	# text_block_2(D)->fgcolor.r, tmp139
	mov	r12d, DWORD PTR [rbx+164]	# D.8854, text_block_2(D)->foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+24]	# D.8865, D.8863_45->Gmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+15]	# D.8866_48->Gshift, D.8866_48->Gshift
	shr	r12d, cl	# tmp141, D.8866_48->Gshift
	mov	BYTE PTR [rbx+161], r12b	# text_block_2(D)->fgcolor.g, tmp141
	mov	r12d, DWORD PTR [rbx+164]	# D.8854, text_block_2(D)->foreground
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	and	r12d, DWORD PTR [rax+28]	# D.8873, D.8871_54->Bmask
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	movzx	ecx, BYTE PTR [rax+16]	# D.8874_57->Bshift, D.8874_57->Bshift
	shr	r12d, cl	# tmp143, D.8874_57->Bshift
	mov	BYTE PTR [rbx+162], r12b	# text_block_2(D)->fgcolor.b, tmp143
	mov	BYTE PTR [rbx+172], 0	# text_block_2(D)->foreground_changed,
.L12:
	mov	edx, DWORD PTR [rbx+160]	# text_block_2(D)->fgcolor, text_block_2(D)->fgcolor
	mov	rsi, QWORD PTR [rbx+144]	# text_block_2(D)->text, text_block_2(D)->text
	mov	rdi, QWORD PTR [rbx+152]	# text_block_2(D)->font, text_block_2(D)->font
	mov	r8d, 73	#,
	mov	ecx, OFFSET FLAT:.LC0	#,
	call	wTTF_RenderUTF8_Solid	#
	mov	r12, rax	# text_surf,
	test	rax, rax	# text_surf
	jne	.L13	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8881,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_2(D)->text, text_block_2(D)->text
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
	test	eax, eax	# D.8882
	je	.L14	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8885,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_2(D)->text, text_block_2(D)->text
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L14:
	mov	QWORD PTR [rbx+48], rbp	# MEM[(struct Widget *)text_block_2(D)].surf, bg_surf
	movzx	edx, WORD PTR [rsp+24]	# tmp149, h
	movzx	esi, WORD PTR [rsp+28]	# tmp151, w
	mov	rdi, rbx	#, text_block
	call	Widget_setSizeUpdatePos	#
	mov	esi, 1	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	edx, 84	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r12	#, text_surf
	call	wSDL_FreeSurface	#
.L3:
	mov	rbx, QWORD PTR [rsp+32]	#,
	mov	rbp, QWORD PTR [rsp+40]	#,
	mov	r12, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	TextBlock_refresh, .-TextBlock_refresh
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"TextBlock_refresh[%s] Passed NULL parameter: text_block(%p), or screen(%p), or text_block->text(%p) or text_block->font(%p)\n"
	.align 8
.LC7:
	.string	"TextBlock_refresh[%s] Got NULL screen->screen->format (note: screen->screen is %p)\n"
	.align 8
.LC8:
	.string	"TextBlock_refresh[%s] Failed to determine font size or invalid size (exit_code=%d[%s], w=%d, h=%d)\n"
	.align 8
.LC9:
	.string	"TextBlock_refresh[%s] Notice: Surface already exists. Does not creating new one.\n"
	.align 8
.LC10:
	.string	"TextBlock_refresh[%s] SDL_BlitSurface(text_surf, NULL, bg_surf, NULL) failed: %s\n"
	.text
	.globl	TextBlock_refresh2
	.type	TextBlock_refresh2, @function
TextBlock_refresh2:
.LFB94:
	.cfi_startproc
	mov	QWORD PTR [rsp-32], rbx	#,
	mov	QWORD PTR [rsp-24], rbp	#,
	mov	QWORD PTR [rsp-16], r12	#,
	mov	QWORD PTR [rsp-8], r13	#,
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	mov	rbx, rdi	# text_block, text_block
	mov	r9, rsi	# screen, screen
	test	rsi, rsi	# screen
	je	.L18	#,
	test	rdi, rdi	# text_block
	je	.L18	#,
	mov	rsi, QWORD PTR [rdi+144]	# D.8728, text_block_7(D)->text
	test	rsi, rsi	# D.8728
	je	.L18	#,
	mov	rdi, QWORD PTR [rdi+152]	# D.8730, text_block_7(D)->font
	test	rdi, rdi	# D.8730
	jne	.L19	#,
.L18:
	test	rbx, rbx	# text_block
	je	.L20	#,
	mov	rcx, QWORD PTR [rbx+144]	# iftmp.5, text_block_7(D)->text
	mov	rax, QWORD PTR [rbx+152]	# text_block_7(D)->font, text_block_7(D)->font
	mov	QWORD PTR [rsp+8], rax	#, text_block_7(D)->font
	mov	QWORD PTR [rsp], rcx	#, iftmp.5
	mov	r8, rbx	#, text_block
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	eax, 1	# D.8747,
	jmp	.L32	#
.L19:
	mov	r8, QWORD PTR [r9+80]	# D.8749, screen_9(D)->screen
	test	r8, r8	# D.8749
	je	.L22	#,
	mov	rbp, QWORD PTR [r8+8]	# scr_format, D.8749_15->format
	mov	r12, QWORD PTR [rbx+48]	# bg_surf, MEM[(struct Widget *)text_block_7(D)].surf
	test	rbp, rbp	# scr_format
	jne	.L23	#,
.L22:
	mov	rcx, rsi	#, D.8728
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	eax, 10	# D.8747,
	jmp	.L32	#
.L23:
	mov	DWORD PTR [rsp+28], 0	# w,
	mov	DWORD PTR [rsp+24], 0	# h,
	lea	rcx, [rsp+24]	#,
	lea	rdx, [rsp+28]	#,
	call	TTF_SizeUTF8	#
	mov	r13d, eax	# et,
	test	eax, eax	# et
	js	.L24	#,
	mov	eax, DWORD PTR [rsp+28]	# w.9, w
	test	eax, eax	# w.9
	jle	.L24	#,
	mov	edx, DWORD PTR [rsp+24]	# h.10, h
	test	edx, edx	# h.10
	jle	.L24	#,
	cmp	eax, 3000	# w.9,
	jg	.L24	#,
	cmp	edx, 3000	# h.10,
	jle	.L25	#,
.L24:
	mov	r12d, DWORD PTR [rsp+24]	# h.10, h
	mov	ebp, DWORD PTR [rsp+28]	# w.9, w
	call	SDL_GetError	#
	mov	r9, rax	# D.8763,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_7(D)->text, text_block_7(D)->text
	mov	DWORD PTR [rsp+8], r12d	#, h.10
	mov	DWORD PTR [rsp], ebp	#, w.9
	mov	r8d, r13d	#, et
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	eax, 26	# D.8747,
	jmp	.L32	#
.L25:
	test	r12, r12	# bg_surf
	je	.L26	#,
	cmp	eax, DWORD PTR [r12+16]	# w.9, bg_surf_20->w
	jg	.L26	#,
	cmp	edx, DWORD PTR [r12+20]	# h.10, bg_surf_20->h
	jg	.L26	#,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_7(D)->text, text_block_7(D)->text
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L27	#
.L26:
	mov	edx, 123	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r12	#, bg_surf
	call	wSDL_FreeSurface	#
	movzx	esi, WORD PTR [rsp+24]	# tmp145, h
	movzx	edi, WORD PTR [rsp+28]	# tmp147, w
	call	Static_NewSurface	#
	mov	r12, rax	# bg_surf,
	test	rax, rax	# bg_surf
	jne	.L27	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8777,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_7(D)->text, text_block_7(D)->text
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	eax, 25	# D.8747,
	jmp	.L32	#
.L27:
	mov	edx, DWORD PTR [rbx+168]	# text_block_7(D)->background, text_block_7(D)->background
	mov	esi, 0	#,
	mov	rdi, r12	#, bg_surf
	call	SDL_FillRect	#
	test	eax, eax	# D.8779
	je	.L28	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8782,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_7(D)->text, text_block_7(D)->text
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	eax, 28	# D.8747,
	jmp	.L32	#
.L28:
	cmp	BYTE PTR [rbx+172], 0	# text_block_7(D)->foreground_changed,
	je	.L29	#,
	mov	eax, DWORD PTR [rbx+164]	# D.8786, text_block_7(D)->foreground
	mov	edx, eax	# tmp152, D.8786
	and	edx, DWORD PTR [rbp+20]	# tmp152, scr_format_17->Rmask
	movzx	ecx, BYTE PTR [rbp+14]	# scr_format_17->Rshift, scr_format_17->Rshift
	shr	edx, cl	# tmp154, scr_format_17->Rshift
	mov	BYTE PTR [rbx+160], dl	# text_block_7(D)->fgcolor.r, tmp154
	mov	edx, eax	# tmp155, D.8786
	and	edx, DWORD PTR [rbp+24]	# tmp155, scr_format_17->Gmask
	movzx	ecx, BYTE PTR [rbp+15]	# scr_format_17->Gshift, scr_format_17->Gshift
	shr	edx, cl	# tmp157, scr_format_17->Gshift
	mov	BYTE PTR [rbx+161], dl	# text_block_7(D)->fgcolor.g, tmp157
	and	eax, DWORD PTR [rbp+28]	# tmp158, scr_format_17->Bmask
	movzx	ecx, BYTE PTR [rbp+16]	# scr_format_17->Bshift, scr_format_17->Bshift
	shr	eax, cl	# tmp160, scr_format_17->Bshift
	mov	BYTE PTR [rbx+162], al	# text_block_7(D)->fgcolor.b, tmp160
	mov	BYTE PTR [rbx+172], 0	# text_block_7(D)->foreground_changed,
.L29:
	mov	edx, DWORD PTR [rbx+160]	# text_block_7(D)->fgcolor, text_block_7(D)->fgcolor
	mov	rsi, QWORD PTR [rbx+144]	# text_block_7(D)->text, text_block_7(D)->text
	mov	rdi, QWORD PTR [rbx+152]	# text_block_7(D)->font, text_block_7(D)->font
	mov	r8d, 146	#,
	mov	ecx, OFFSET FLAT:.LC0	#,
	call	wTTF_RenderUTF8_Solid	#
	mov	rbp, rax	# text_surf,
	test	rax, rax	# text_surf
	jne	.L30	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8807,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_7(D)->text, text_block_7(D)->text
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	eax, 27	# D.8747,
	jmp	.L32	#
.L30:
	mov	ecx, 0	#,
	mov	rdx, r12	#, bg_surf
	mov	esi, 0	#,
	mov	rdi, rax	#, text_surf
	call	SDL_UpperBlit	#
	test	eax, eax	# D.8808
	je	.L31	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.8811,
	mov	rcx, QWORD PTR [rbx+144]	# text_block_7(D)->text, text_block_7(D)->text
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edx, 155	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, text_surf
	call	wSDL_FreeSurface	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	eax, 29	# D.8747,
	jmp	.L32	#
.L31:
	mov	QWORD PTR [rbx+48], r12	# MEM[(struct Widget *)text_block_7(D)].surf, bg_surf
	movzx	edx, WORD PTR [rsp+24]	# tmp166, h
	movzx	esi, WORD PTR [rsp+28]	# tmp168, w
	mov	rdi, rbx	#, text_block
	call	Widget_setSizeUpdatePos	#
	mov	esi, 1	#,
	mov	rdi, rbx	#, text_block
	call	Widget_setVisible	#
	mov	edx, 163	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, text_surf
	call	wSDL_FreeSurface	#
	mov	eax, 0	# D.8747,
	jmp	.L32	#
.L20:
	mov	QWORD PTR [rsp+8], 0	#,
	mov	QWORD PTR [rsp], 0	#,
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8747,
.L32:
	mov	rbx, QWORD PTR [rsp+40]	#,
	mov	rbp, QWORD PTR [rsp+48]	#,
	mov	r12, QWORD PTR [rsp+56]	#,
	mov	r13, QWORD PTR [rsp+64]	#,
	add	rsp, 72	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	TextBlock_refresh2, .-TextBlock_refresh2
	.globl	TextBlock_setText
	.type	TextBlock_setText, @function
TextBlock_setText:
.LFB97:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# text_block, text_block
	mov	rbx, rsi	# text, text
	mov	rdi, rsi	# text, text
	mov	eax, 0	# tmp74,
	mov	rcx, -1	# tmp73,
	repnz scasb
	not	rcx	# tmp71
	lea	edx, [rcx-1]	# l,
	mov	r8, QWORD PTR [rbp+144]	# D.8684, text_block_5(D)->text
	test	r8, r8	# D.8684
	je	.L35	#,
	mov	rdi, r8	# D.8684, D.8684
	mov	rcx, -1	# tmp79,
	repnz scasb
	not	rcx	# tmp77
	sub	rcx, 1	# D.8687,
	cmp	dx, cx	# l, D.8687
	ja	.L36	#,
.L38:
	mov	rsi, rbx	#, text
	mov	rdi, r8	#, D.8684
	call	strcpy	#
	jmp	.L34	#
.L36:
	mov	edx, 218	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r8	#, D.8684
	call	wfree	#
.L39:
	mov	rdi, rbx	# text, text
	mov	eax, 0	# tmp86,
	mov	rcx, -1	# tmp85,
	repnz scasb
	mov	rdi, rcx	# tmp83, tmp82
	not	rdi	# tmp83
	mov	ecx, 219	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+144], rax	# text_block_5(D)->text, D.8696
	mov	rsi, rbx	#, text
	mov	rdi, rax	#, D.8696
	call	strcpy	#
	jmp	.L34	#
.L35:
	test	dx, dx	# l
	jne	.L39	#,
	.p2align 4,,8
	jmp	.L38	#
.L34:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE97:
	.size	TextBlock_setText, .-TextBlock_setText
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"TextBlock_new: Passed NULL this pointer. text=%s\n"
	.section	.rodata.str1.1
.LC12:
	.string	"TextBlock"
.LC13:
	.string	"fonts/impact.ttf"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"TextBlock_new: Failed to set default font %s\n"
	.text
	.globl	TextBlock_new
	.type	TextBlock_new, @function
TextBlock_new:
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
	mov	rbp, rsi	# text, text
	test	rdi, rdi	# this
	jne	.L42	#,
	mov	rcx, rsi	#, text
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L43	#
.L42:
	mov	ecx, OFFSET FLAT:.LC12	#,
	mov	edx, OFFSET FLAT:TextBlock_vdestroy	#,
	mov	esi, 2	#,
	call	Widget_init_type	#
	mov	QWORD PTR [rbx+144], 0	# this_2(D)->text,
	test	rbp, rbp	# text
	je	.L44	#,
	mov	rsi, rbp	#, text
	mov	rdi, rbx	#, this
	call	TextBlock_setText	#
.L44:
	mov	eax, 0	#,
	call	Static_getDefaultFont	#
	mov	QWORD PTR [rbx+152], rax	# this_2(D)->font, D.8710
	test	rax, rax	# D.8710
	jne	.L45	#,
	mov	BYTE PTR [rbx+130], 0	# this_2(D)->widget.visible,
	mov	ecx, OFFSET FLAT:.LC13	#,
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	jmp	.L43	#
.L45:
	mov	DWORD PTR [rbx+164], 0	# this_2(D)->foreground,
	mov	DWORD PTR [rbx+168], 15592683	# this_2(D)->background,
	mov	BYTE PTR [rbx+172], 1	# this_2(D)->foreground_changed,
.L43:
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
	.size	TextBlock_new, .-TextBlock_new
	.globl	TextBlock_setFont
	.type	TextBlock_setFont, @function
TextBlock_setFont:
.LFB98:
	.cfi_startproc
	test	rsi, rsi	# font
	je	.L47	#,
	test	rdi, rdi	# text_block
	je	.L47	#,
	mov	QWORD PTR [rdi+152], rsi	# text_block_3(D)->font, font
.L47:
	rep
	ret
	.cfi_endproc
.LFE98:
	.size	TextBlock_setFont, .-TextBlock_setFont
	.globl	TextBlock_setForegroundColor
	.type	TextBlock_setForegroundColor, @function
TextBlock_setForegroundColor:
.LFB99:
	.cfi_startproc
	mov	DWORD PTR [rdi+164], esi	# text_block_1(D)->foreground, rgb
	mov	BYTE PTR [rdi+172], 1	# text_block_1(D)->foreground_changed,
	ret
	.cfi_endproc
.LFE99:
	.size	TextBlock_setForegroundColor, .-TextBlock_setForegroundColor
	.globl	TextBlock_setBackgroundColor
	.type	TextBlock_setBackgroundColor, @function
TextBlock_setBackgroundColor:
.LFB100:
	.cfi_startproc
	mov	DWORD PTR [rdi+168], esi	# text_block_1(D)->background, rgb
	ret
	.cfi_endproc
.LFE100:
	.size	TextBlock_setBackgroundColor, .-TextBlock_setBackgroundColor
	.section	.rodata.str1.1
.LC15:
	.string	"text_block=NULL"
.LC16:
	.string	"%s"
	.text
	.globl	TextBlock_toString
	.type	TextBlock_toString, @function
TextBlock_toString:
.LFB101:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC15	# D.8671,
	test	rdi, rdi	# text_block
	je	.L56	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR [rdi+144]	# text_block_2(D)->text, text_block_2(D)->text
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id	# D.8671,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L56:
	rep
	ret
	.cfi_endproc
.LFE101:
	.size	TextBlock_toString, .-TextBlock_toString
	.globl	TextBlock_staticGetTextSize
	.type	TextBlock_staticGetTextSize, @function
TextBlock_staticGetTextSize:
.LFB102:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	TTF_SizeUTF8	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	TextBlock_staticGetTextSize, .-TextBlock_staticGetTextSize
	.local	str_id
	.comm	str_id,128,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
