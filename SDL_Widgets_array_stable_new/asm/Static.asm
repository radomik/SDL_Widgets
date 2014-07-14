	.file	"Static.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Static.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Static.asm
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

	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"%20s: this=%p, this.class.name: %20s, this.class.size: %5lu, this.class.vtable = %p\n"
	.text
	.globl	Static_printObj2
	.type	Static_printObj2, @function
Static_printObj2:
.LFB107:
	.cfi_startproc
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	r8, rdi	# vthis, vthis
	mov	rcx, rsi	# fname, fname
	mov	rax, QWORD PTR [rdi]	# D.9838, MEM[(struct coObject *)vthis_2(D)].class
	mov	r9, QWORD PTR [rax+8]	# D.9838_3->name, D.9838_3->name
	mov	rdx, QWORD PTR [rax+16]	# D.9838_3->vtable, D.9838_3->vtable
	mov	QWORD PTR [rsp+8], rdx	#, D.9838_3->vtable
	mov	rax, QWORD PTR [rax]	# D.9838_3->size, D.9838_3->size
	mov	QWORD PTR [rsp], rax	#, D.9838_3->size
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	Static_printObj2, .-Static_printObj2
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"%20s: Passed NULL this pointer"
	.text
	.globl	Static_nullThis2
	.type	Static_nullThis2, @function
Static_nullThis2:
.LFB108:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, rdi	# fname, fname
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	Static_nullThis2, .-Static_nullThis2
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"SDL_Surface: (w,h)=(%d,%d), pitch=%hu, format: Bpp=%d, (R,G,B,A)loss=[%d,%d,%d,%d], (R,G,B,A)shift=[%d,%d,%d,%d],  (R,G,B,A)mask=[0x%8X,0x%8X,0x%8x,0x%8X], colorkey=0x%8X, alpha=%d"
	.text
	.globl	Static_surfaceToString
	.type	Static_surfaceToString, @function
Static_surfaceToString:
.LFB109:
	.cfi_startproc
	sub	rsp, 152	#,
	.cfi_def_cfa_offset 160
	mov	rax, QWORD PTR [rdi+8]	# format, surf_1(D)->format
	mov	r9d, DWORD PTR [rdi+16]	# surf_1(D)->w, surf_1(D)->w
	movzx	edx, BYTE PTR [rax+40]	# format_2->alpha, format_2->alpha
	mov	DWORD PTR [rsp+128], edx	#, format_2->alpha
	mov	edx, DWORD PTR [rax+36]	# format_2->colorkey, format_2->colorkey
	mov	DWORD PTR [rsp+120], edx	#, format_2->colorkey
	mov	edx, DWORD PTR [rax+32]	# format_2->Amask, format_2->Amask
	mov	DWORD PTR [rsp+112], edx	#, format_2->Amask
	mov	edx, DWORD PTR [rax+28]	# format_2->Bmask, format_2->Bmask
	mov	DWORD PTR [rsp+104], edx	#, format_2->Bmask
	mov	edx, DWORD PTR [rax+24]	# format_2->Gmask, format_2->Gmask
	mov	DWORD PTR [rsp+96], edx	#, format_2->Gmask
	mov	edx, DWORD PTR [rax+20]	# format_2->Rmask, format_2->Rmask
	mov	DWORD PTR [rsp+88], edx	#, format_2->Rmask
	movzx	edx, BYTE PTR [rax+17]	# format_2->Ashift, format_2->Ashift
	mov	DWORD PTR [rsp+80], edx	#, format_2->Ashift
	movzx	edx, BYTE PTR [rax+16]	# format_2->Bshift, format_2->Bshift
	mov	DWORD PTR [rsp+72], edx	#, format_2->Bshift
	movzx	edx, BYTE PTR [rax+15]	# format_2->Gshift, format_2->Gshift
	mov	DWORD PTR [rsp+64], edx	#, format_2->Gshift
	movzx	edx, BYTE PTR [rax+14]	# format_2->Rshift, format_2->Rshift
	mov	DWORD PTR [rsp+56], edx	#, format_2->Rshift
	movzx	edx, BYTE PTR [rax+13]	# format_2->Aloss, format_2->Aloss
	mov	DWORD PTR [rsp+48], edx	#, format_2->Aloss
	movzx	edx, BYTE PTR [rax+12]	# format_2->Bloss, format_2->Bloss
	mov	DWORD PTR [rsp+40], edx	#, format_2->Bloss
	movzx	edx, BYTE PTR [rax+11]	# format_2->Gloss, format_2->Gloss
	mov	DWORD PTR [rsp+32], edx	#, format_2->Gloss
	movzx	edx, BYTE PTR [rax+10]	# format_2->Rloss, format_2->Rloss
	mov	DWORD PTR [rsp+24], edx	#, format_2->Rloss
	movzx	eax, BYTE PTR [rax+9]	# format_2->BytesPerPixel, format_2->BytesPerPixel
	mov	DWORD PTR [rsp+16], eax	#, format_2->BytesPerPixel
	movzx	eax, WORD PTR [rdi+24]	# surf_1(D)->pitch, surf_1(D)->pitch
	mov	DWORD PTR [rsp+8], eax	#, surf_1(D)->pitch
	mov	eax, DWORD PTR [rdi+20]	# surf_1(D)->h, surf_1(D)->h
	mov	DWORD PTR [rsp], eax	#, surf_1(D)->h
	mov	r8d, OFFSET FLAT:.LC2	#,
	mov	ecx, 256	#,
	mov	edx, 1	#,
	mov	esi, 256	#,
	mov	edi, OFFSET FLAT:str_id.9579	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9579	#,
	add	rsp, 152	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	Static_surfaceToString, .-Static_surfaceToString
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Static.c"
.LC4:
	.string	"fonts/impact.ttf"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Static_getDefaultFont:Static> Unable to open default font TTF_OpenFont: %s %s\n"
	.text
	.globl	Static_getDefaultFont
	.type	Static_getDefaultFont, @function
Static_getDefaultFont:
.LFB110:
	.cfi_startproc
	cmp	QWORD PTR DEFAULT_FONT[rip], 0	# DEFAULT_FONT,
	jne	.L10	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	ecx, 52	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 30	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	wTTF_OpenFont	#
	mov	QWORD PTR DEFAULT_FONT[rip], rax	# DEFAULT_FONT, DEFAULT_FONT.16
	test	rax, rax	# DEFAULT_FONT.16
	jne	.L8	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9799,
	mov	ecx, OFFSET FLAT:.LC4	#,
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L8:
	mov	rax, QWORD PTR DEFAULT_FONT[rip]	#, DEFAULT_FONT
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
.L10:
	mov	rax, QWORD PTR DEFAULT_FONT[rip]	#, DEFAULT_FONT
	ret
	.cfi_endproc
.LFE110:
	.size	Static_getDefaultFont, .-Static_getDefaultFont
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Static_getDefaultFont:Static> Unable to open font TTF_OpenFont: %s %s\n"
	.text
	.globl	Static_getFont
	.type	Static_getFont, @function
Static_getFont:
.LFB111:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# path, path
	movzx	esi, sil	# size, size
	mov	ecx, 59	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	call	wTTF_OpenFont	#
	test	rax, rax	# font
	jne	.L12	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.9789,
	mov	rcx, rbx	#, path
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	#,
	call	Static_getDefaultFont	#
.L12:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	Static_getFont, .-Static_getFont
	.globl	Static_copySurface
	.type	Static_copySurface, @function
Static_copySurface:
.LFB112:
	.cfi_startproc
	test	rdi, rdi	# src
	je	.L16	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rsi, QWORD PTR [rdi+8]	# src_2(D)->format, src_2(D)->format
	mov	r8d, 73	#,
	mov	ecx, OFFSET FLAT:.LC3	#,
	mov	edx, 1073741825	#,
	call	wSDL_ConvertSurface	#
	jmp	.L15	#
.L16:
	.cfi_def_cfa_offset 8
	mov	eax, 0	# D.9779,
	ret
.L15:
	.cfi_def_cfa_offset 16
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	.p2align 4,,3
	ret
	.cfi_endproc
.LFE112:
	.size	Static_copySurface, .-Static_copySurface
	.globl	getpixel
	.type	getpixel, @function
getpixel:
.LFB113:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+8]	# surface_2(D)->format, surface_2(D)->format
	movzx	eax, BYTE PTR [rax+9]	# D.9749, D.9748_3->BytesPerPixel
	movzx	ecx, WORD PTR [rdi+24]	# surface_2(D)->pitch, surface_2(D)->pitch
	imul	edx, ecx	# tmp90, surface_2(D)->pitch
	movsx	rdx, edx	# tmp91, tmp90
	movzx	ecx, al	# D.9749, D.9749
	imul	esi, ecx	# tmp93, D.9749
	movsx	rsi, esi	# tmp94, tmp93
	add	rdx, rsi	# tmp95, tmp94
	add	rdx, QWORD PTR [rdi+32]	# p, surface_2(D)->pixels
	cmp	al, 2	# D.9749,
	je	.L22	#,
	cmp	al, 2	# D.9749,
	ja	.L25	#,
	cmp	al, 1	# D.9749,
	jne	.L26	#,
	.p2align 4,,7
	jmp	.L21	#
.L25:
	cmp	al, 3	# D.9749,
	.p2align 4,,7
	je	.L23	#,
	cmp	al, 4	# D.9749,
	.p2align 4,,7
	jne	.L26	#,
	.p2align 4,,7
	jmp	.L24	#
.L21:
	movzx	eax, BYTE PTR [rdx]	# D.9758, *p_16
	.p2align 4,,6
	ret
.L22:
	movzx	eax, WORD PTR [rdx]	# D.9758, MEM[(Uint16 *)p_16]
	.p2align 4,,6
	ret
.L23:
	movzx	ecx, BYTE PTR [rdx+1]	# MEM[(Uint8 *)p_16 + 1B], MEM[(Uint8 *)p_16 + 1B]
	sal	ecx, 8	# tmp98,
	movzx	eax, BYTE PTR [rdx+2]	# MEM[(Uint8 *)p_16 + 2B], MEM[(Uint8 *)p_16 + 2B]
	sal	eax, 16	# tmp100,
	or	eax, ecx	# tmp101, tmp98
	movzx	edx, BYTE PTR [rdx]	# *p_16, *p_16
	or	eax, edx	# D.9758, *p_16
	ret
.L24:
	mov	eax, DWORD PTR [rdx]	# D.9758, MEM[(Uint32 *)p_16]
	ret
.L26:
	mov	eax, 0	# D.9758,
	ret
	.cfi_endproc
.LFE113:
	.size	getpixel, .-getpixel
	.section	.rodata.str1.1
.LC7:
	.string	"0x%X%X"
.LC8:
	.string	"0x%X"
	.text
	.globl	Static_u64toHexString
	.type	Static_u64toHexString, @function
Static_u64toHexString:
.LFB114:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	eax, 4294967295	# tmp65,
	cmp	rdi, rax	# value, tmp65
	jbe	.L28	#,
	mov	r9d, edi	#, value
	mov	r8, rdi	#, value
	shr	r8, 32	#,
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	edx, 19	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:s.9607	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	jmp	.L29	#
.L28:
	mov	r8d, edi	#, value
	mov	ecx, OFFSET FLAT:.LC8	#,
	mov	edx, 19	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:s.9607	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
.L29:
	mov	eax, OFFSET FLAT:s.9607	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	Static_u64toHexString, .-Static_u64toHexString
	.globl	Static_growArray
	.type	Static_growArray, @function
Static_growArray:
.LFB115:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	r12, rdi	# e, e
	mov	rbp, rdx	# ext_size, ext_size
	mov	edx, DWORD PTR [rsp+64]	# max_size, max_size
	test	rbp, rbp	# ext_size
	je	.L32	#,
	mov	r14, rsi	# array, array
	mov	esi, DWORD PTR [rbp+0]	# new_size, *ext_size_3(D)
	cmp	esi, ecx	# new_size, new_pos
	ja	.L32	#,
	cmp	QWORD PTR [rsp+72], 0	# item_size,
	je	.L32	#,
	test	r9d, r9d	# def_size
	jne	.L41	#,
.L32:
	test	r12, r12	# e
	je	.L42	#,
	mov	DWORD PTR [r12], 13	# *e_14(D),
	mov	r15d, 0	# _array,
	jmp	.L35	#
.L41:
	mov	r13d, r8d	# curr_count, curr_count
	mov	ebx, esi	# new_size, new_size
.L33:
	test	ebx, ebx	# new_size
	jne	.L36	#,
	cmp	r9d, edx	# def_size, max_size
	jbe	.L43	#,
	test	r12, r12	# e
	je	.L44	#,
	mov	DWORD PTR [r12], 14	# *e_14(D),
	mov	r15d, 0	# _array,
	jmp	.L35	#
.L36:
	lea	eax, [rbx+rbx]	# new_size,
	cmp	esi, eax	# new_size, new_size
	jae	.L38	#,
	cmp	ebx, eax	# new_size, new_size
	jae	.L38	#,
	cmp	edx, eax	# max_size, new_size
	.p2align 4,,2
	jae	.L45	#,
.L38:
	test	r12, r12	# e
	.p2align 4,,4
	je	.L46	#,
	mov	DWORD PTR [r12], 15	# *e_14(D),
	mov	r15d, 0	# _array,
	jmp	.L35	#
.L43:
	mov	ebx, r9d	# new_size, def_size
	jmp	.L37	#
.L45:
	mov	ebx, eax	# new_size, new_size
.L37:
	cmp	ecx, ebx	# new_pos, new_size
	jae	.L33	#,
	mov	edi, ebx	# new_size, new_size
	mov	ecx, 187	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	rsi, QWORD PTR [rsp+72]	#, item_size
	call	wcalloc	#
	mov	r15, rax	# _array,
	test	rax, rax	# _array
	jne	.L39	#,
	test	r12, r12	# e
	je	.L35	#,
	mov	DWORD PTR [r12], 16	# *e_14(D),
	jmp	.L35	#
.L39:
	test	r13d, r13d	# curr_count
	je	.L40	#,
	test	r14, r14	# array
	je	.L40	#,
	mov	edx, r13d	# curr_count, curr_count
	imul	rdx, QWORD PTR [rsp+72]	# tmp98, item_size
	mov	rsi, r14	#, array
	mov	rdi, rax	#, _array
	call	memcpy	#
	mov	edx, 197	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, r14	#, array
	call	wfree	#
.L40:
	mov	DWORD PTR [rbp+0], ebx	# *ext_size_3(D), new_size
	test	r12, r12	# e
	je	.L35	#,
	mov	DWORD PTR [r12], 0	# *e_14(D),
	jmp	.L35	#
.L42:
	mov	r15d, 0	# _array,
	jmp	.L35	#
.L44:
	mov	r15d, 0	# _array,
	jmp	.L35	#
.L46:
	mov	r15d, 0	# _array,
.L35:
	mov	rax, r15	#, _array
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	mov	r14, QWORD PTR [rsp+40]	#,
	mov	r15, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	Static_growArray, .-Static_growArray
	.globl	Static_newSurface
	.type	Static_newSurface, @function
Static_newSurface:
.LFB116:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 64
	mov	ebx, edi	# w, w
	mov	ebp, esi	# h, h
	mov	eax, 0	#,
	call	Screen_getBaseSurfaceFormat	#
	test	rax, rax	# spx
	je	.L51	#,
	mov	r9d, DWORD PTR [rax+24]	# spx_2->Gmask, spx_2->Gmask
	mov	r8d, DWORD PTR [rax+20]	# spx_2->Rmask, spx_2->Rmask
	movzx	ecx, BYTE PTR [rax+8]	# spx_2->BitsPerPixel, spx_2->BitsPerPixel
	movzx	edx, bp	# h, h
	movzx	esi, bx	# w, w
	mov	DWORD PTR [rsp+24], 211	#,
	mov	QWORD PTR [rsp+16], OFFSET FLAT:.LC3	#,
	mov	edi, DWORD PTR [rax+32]	# spx_2->Amask, spx_2->Amask
	mov	DWORD PTR [rsp+8], edi	#, spx_2->Amask
	mov	eax, DWORD PTR [rax+28]	# spx_2->Bmask, spx_2->Bmask
	mov	DWORD PTR [rsp], eax	#, spx_2->Bmask
	mov	edi, 1073741825	#,
	call	wSDL_CreateRGBSurface	#
	jmp	.L50	#
.L51:
	mov	eax, 0	# D.9683,
.L50:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	Static_newSurface, .-Static_newSurface
	.section	.rodata.str1.1
.LC9:
	.string	"img/arrow-up.png"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"%s: ButtonImage_new() returned NULL pointer\n"
	.text
	.globl	Static_getArrowUpButton
	.type	Static_getArrowUpButton, @function
Static_getArrowUpButton:
.LFB117:
	.cfi_startproc
	cmp	QWORD PTR bt_arrow_up[rip], 0	# bt_arrow_up,
	jne	.L58	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	edx, 219	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rax, QWORD PTR ButtonImage_class[rip]	# ButtonImage_class, ButtonImage_class
	mov	rdi, QWORD PTR [rax]	#, ButtonImage_class.9_3->size
	call	wmalloc	#
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	rdi, rax	#, D.9673
	call	ButtonImage_new	#
	mov	QWORD PTR bt_arrow_up[rip], rax	# bt_arrow_up, bt_arrow_up.10
	test	rax, rax	# bt_arrow_up.10
	jne	.L55	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9635	#,
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	eax, 0	# D.9679,
	jmp	.L56	#
.L55:
	mov	r9d, 0	#,
	mov	r8d, 2	#,
	mov	ecx, 4	#,
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, bt_arrow_up.10
	call	ButtonImage_applyDefaultStyle3	#
	mov	esi, 1	#,
	movsd	xmm1, QWORD PTR .LC11[rip]	#,
	movsd	xmm0, QWORD PTR .LC12[rip]	#,
	mov	rdi, QWORD PTR bt_arrow_up[rip]	#, bt_arrow_up
	call	ButtonImage_scale	#
	mov	rax, QWORD PTR bt_arrow_up[rip]	# D.9679, bt_arrow_up
.L56:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
.L58:
	mov	rax, QWORD PTR bt_arrow_up[rip]	# D.9679, bt_arrow_up
	ret
	.cfi_endproc
.LFE117:
	.size	Static_getArrowUpButton, .-Static_getArrowUpButton
	.section	.rodata.str1.1
.LC13:
	.string	"img/arrow-down.png"
	.text
	.globl	Static_getArrowDnButton
	.type	Static_getArrowDnButton, @function
Static_getArrowDnButton:
.LFB118:
	.cfi_startproc
	cmp	QWORD PTR bt_arrow_dn[rip], 0	# bt_arrow_dn,
	jne	.L64	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	edx, 233	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rax, QWORD PTR ButtonImage_class[rip]	# ButtonImage_class, ButtonImage_class
	mov	rdi, QWORD PTR [rax]	#, ButtonImage_class.4_3->size
	call	wmalloc	#
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, rax	#, D.9658
	call	ButtonImage_new	#
	mov	QWORD PTR bt_arrow_dn[rip], rax	# bt_arrow_dn, bt_arrow_dn.5
	test	rax, rax	# bt_arrow_dn.5
	jne	.L61	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9638	#,
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	eax, 0	# D.9664,
	jmp	.L62	#
.L61:
	mov	r9d, 0	#,
	mov	r8d, 2	#,
	mov	ecx, 4	#,
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, bt_arrow_dn.5
	call	ButtonImage_applyDefaultStyle3	#
	mov	esi, 1	#,
	movsd	xmm1, QWORD PTR .LC11[rip]	#,
	movsd	xmm0, QWORD PTR .LC12[rip]	#,
	mov	rdi, QWORD PTR bt_arrow_dn[rip]	#, bt_arrow_dn
	call	ButtonImage_scale	#
	mov	rax, QWORD PTR bt_arrow_dn[rip]	# D.9664, bt_arrow_dn
.L62:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
.L64:
	mov	rax, QWORD PTR bt_arrow_dn[rip]	# D.9664, bt_arrow_dn
	ret
	.cfi_endproc
.LFE118:
	.size	Static_getArrowDnButton, .-Static_getArrowDnButton
	.globl	Static_quit
	.type	Static_quit, @function
Static_quit:
.LFB119:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rdi, QWORD PTR DEFAULT_FONT[rip]	# DEFAULT_FONT.0, DEFAULT_FONT
	test	rdi, rdi	# DEFAULT_FONT.0
	je	.L66	#,
	mov	edx, 245	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR DEFAULT_FONT[rip], 0	# DEFAULT_FONT,
.L66:
	mov	rdi, QWORD PTR bt_arrow_up[rip]	# bt_arrow_up.1, bt_arrow_up
	test	rdi, rdi	# bt_arrow_up.1
	je	.L67	#,
	call	delete	#
	mov	edx, 246	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, D.9648
	call	wfree	#
	mov	QWORD PTR bt_arrow_up[rip], 0	# bt_arrow_up,
.L67:
	mov	rdi, QWORD PTR bt_arrow_dn[rip]	# bt_arrow_dn.2, bt_arrow_dn
	test	rdi, rdi	# bt_arrow_dn.2
	je	.L65	#,
	call	delete	#
	mov	edx, 247	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, D.9652
	call	wfree	#
	mov	QWORD PTR bt_arrow_dn[rip], 0	# bt_arrow_dn,
.L65:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	Static_quit, .-Static_quit
	.globl	__false_str
	.section	.rodata.str1.1
.LC14:
	.string	"false"
	.data
	.align 8
	.type	__false_str, @object
	.size	__false_str, 8
__false_str:
	.quad	.LC14
	.globl	__true_str
	.section	.rodata.str1.1
.LC15:
	.string	"true"
	.data
	.align 8
	.type	__true_str, @object
	.size	__true_str, 8
__true_str:
	.quad	.LC15
	.comm	IMAGE_SUPPORTED_FILES,8,8
	.local	str_id.9579
	.comm	str_id.9579,256,32
	.local	DEFAULT_FONT
	.comm	DEFAULT_FONT,8,8
	.local	s.9607
	.comm	s.9607,19,16
	.local	bt_arrow_up
	.comm	bt_arrow_up,8,8
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9635, @object
	.size	__FUNCTION__.9635, 24
__FUNCTION__.9635:
	.string	"Static_getArrowUpButton"
	.local	bt_arrow_dn
	.comm	bt_arrow_dn,8,8
	.align 16
	.type	__FUNCTION__.9638, @object
	.size	__FUNCTION__.9638, 24
__FUNCTION__.9638:
	.string	"Static_getArrowDnButton"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC11:
	.long	1030792151
	.long	1072420618
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
