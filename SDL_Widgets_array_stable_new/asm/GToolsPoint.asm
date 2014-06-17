	.file	"GToolsPoint.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GToolsPoint.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/GToolsPoint.asm
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
	.string	"GToolsPoint_apply_brightness_contrast() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC1:
	.string	"GToolsPoint_apply_brightness_contrast() > Unsupported BytesPerPixel format %d\n"
	.text
	.globl	GToolsPoint_apply_brightness_contrast
	.type	GToolsPoint_apply_brightness_contrast, @function
GToolsPoint_apply_brightness_contrast:
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L2	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L2	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9862, imgsrc_26(D)->format
	test	rax, rax	# D.9862
	je	.L2	#,
	mov	r13d, edx	# img_off, img_off
	mov	rdx, QWORD PTR [rsi+8]	# D.9864, imgdst_28(D)->format
	test	rdx, rdx	# D.9864
	je	.L2	#,
	movzx	edi, WORD PTR [rdi+24]	# D.9866, imgsrc_26(D)->pitch
	cmp	di, WORD PTR [rsi+24]	# D.9866, imgdst_28(D)->pitch
	jne	.L2	#,
	mov	r14d, ecx	# allow_overflow, allow_overflow
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rbp+16], rcx	#,
	jne	.L2	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.9876, D.9862_31->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.9876, D.9864_32->BytesPerPixel
	jne	.L2	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9864_32->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9862_31->Amask,
	jne	.L2	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.9864_32->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.9862_31->Rmask,
	jne	.L2	#,
	mov	rsi, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rsi	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9864_32->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9862_31->Ashift,
	jne	.L2	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9864_32->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9862_31->Bshift,
	jne	.L2	#,
	mov	rsi, QWORD PTR [rbp+32]	#, imgsrc_26(D)->pixels
	mov	QWORD PTR [rsp+24], rsi	# %sfp,
	test	rsi, rsi	#
	je	.L2	#,
	mov	rax, QWORD PTR [rbx+32]	#, imgdst_28(D)->pixels
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	test	rax, rax	#
	jne	.L3	#,
.L2:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 93	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	eax, -56	# D.9905,
	jmp	.L4	#
.L3:
	lea	eax, [r15-3]	# tmp267,
	cmp	al, 1	# tmp267,
	jbe	.L5	#,
	movzx	ecx, r15b	# D.9876, D.9876
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9905,
	jmp	.L4	#
.L5:
	movd	r12d, xmm0	# img_mul, img_mul
	movzx	edi, di	#, D.9866
	mov	DWORD PTR [rsp+40], edi	# %sfp,
	movzx	eax, r15b	# D.9876, D.9876
	imul	eax, DWORD PTR [rbp+16]	# D.9876, imgsrc_26(D)->w
	mov	DWORD PTR [rsp+20], eax	# %sfp, D.9876
	mov	eax, edi	#,
	imul	eax, DWORD PTR [rbx+20]	# tmp271, imgdst_28(D)->h
	add	rax, QWORD PTR [rsp+8]	# tmp271, %sfp
	mov	QWORD PTR [rsp+32], rax	# %sfp, tmp271
	cmp	DWORD PTR [rbx+40], 0	# imgdst_28(D)->offset,
	jne	.L6	#,
	test	DWORD PTR [rbx], 16389	# imgdst_28(D)->flags,
	je	.L7	#,
.L6:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L7:
	cmp	r15b, 3	# D.9876,
	jne	.L37	#,
	jmp	.L29	#
.L17:
	cmp	eax, DWORD PTR [rsp+20]	# pitches, %sfp
	.p2align 4,,3
	jne	.L11	#,
	.p2align 4,,7
	jmp	.L30	#
.L12:
	add	rax, 1	# ivtmp.41,
	.p2align 4,,3
	jmp	.L10	#
.L30:
	mov	eax, 0	# ivtmp.41,
.L10:
	lea	r8, [rdx+rax]	# pixels_dst,
	lea	rdi, [rsi+rax]	# pixels_src,
	mov	r9d, DWORD PTR [rsp+20]	# tmp274, %sfp
	add	r9d, eax	# tmp274, ivtmp.41
	cmp	DWORD PTR [rsp+40], r9d	# %sfp, tmp274
	ja	.L12	#,
	mov	rdx, r8	# pixels_dst, pixels_dst
	mov	rsi, rdi	# pixels_src, pixels_src
	mov	eax, 0	# pitches,
.L11:
	movzx	edi, BYTE PTR [rsi]	# *pixels_src_8, *pixels_src_8
	cvtsi2ss	xmm1, edi	# tmp276, *pixels_src_8
	movd	xmm0, r12d	#, img_mul
	mulss	xmm1, xmm0	# tmp277,
	cvtsi2ss	xmm0, r13d	# tmp278, img_off
	addss	xmm0, xmm1	# tmp280, tmp277
	cvttss2si	edi, xmm0	# value, tmp280
	test	r14b, r14b	# allow_overflow
	je	.L13	#,
	mov	BYTE PTR [rdx], dil	# *pixels_dst_14, value
	jmp	.L14	#
.L13:
	cmp	edi, 255	# value,
	jle	.L15	#,
	mov	BYTE PTR [rdx], -1	# *pixels_dst_14,
	jmp	.L14	#
.L15:
	test	edi, edi	# value
	cmovs	edi, ecx	# value,, tmp310, tmp313
	mov	BYTE PTR [rdx], dil	# *pixels_dst_14, tmp310
.L14:
	add	rsi, 1	# pixels_src,
	add	rdx, 1	# pixels_dst,
	add	eax, 1	# pitches,
	jmp	.L8	#
.L29:
	mov	eax, 0	# pitches,
	movsx	r13d, r13w	# img_off, img_off
	mov	ecx, 0	# tmp313,
	mov	rsi, QWORD PTR [rsp+24]	# pixels_src, %sfp
	mov	rdx, QWORD PTR [rsp+8]	# pixels_dst, %sfp
.L8:
	cmp	rdx, QWORD PTR [rsp+32]	# pixels_dst, %sfp
	jb	.L17	#,
	jmp	.L18	#
.L37:
	cmp	r15b, 4	# D.9876,
	jne	.L18	#,
	.p2align 4,,7
	jmp	.L31	#
.L27:
	cmp	r15d, DWORD PTR [rsp+20]	# pitches, %sfp
	.p2align 4,,2
	jne	.L21	#,
	.p2align 4,,6
	jmp	.L32	#
.L22:
	add	rax, 1	# ivtmp.58,
	.p2align 4,,2
	jmp	.L20	#
.L32:
	mov	eax, 0	# ivtmp.58,
.L20:
	lea	rsi, [r9+rax]	# pixels_dst,
	lea	rcx, [rdx+rax]	# pixels_src,
	mov	edi, DWORD PTR [rsp+20]	# tmp281, %sfp
	add	edi, eax	# tmp281, ivtmp.58
	cmp	DWORD PTR [rsp+40], edi	# %sfp, tmp281
	ja	.L22	#,
	mov	r9, rsi	# pixels_dst, pixels_dst
	mov	rdx, rcx	# pixels_src, pixels_src
	mov	r15d, 0	# pitches,
.L21:
	mov	r8d, DWORD PTR [rdx]	# col, MEM[(u32 *)pixels_src_11]
	mov	rax, QWORD PTR [rbp+8]	# D.9862, imgsrc_26(D)->format
	mov	esi, DWORD PTR [rax+32]	#, D.9862_123->Amask
	and	esi, r8d	#, col
	mov	DWORD PTR [rsp+8], esi	# %sfp,
	movzx	r11d, BYTE PTR [rax+14]	# D.9949, D.9862_123->Rshift
	movzx	ebx, BYTE PTR [rax+15]	# D.9953, D.9862_123->Gshift
	movzx	r12d, BYTE PTR [rax+16]	# D.9956, D.9862_123->Bshift
	cvtsi2ss	xmm0, DWORD PTR [rsp+44]	# D.9930, %sfp
	mov	esi, r8d	# tmp283, col
	and	esi, DWORD PTR [rax+20]	# tmp283, D.9862_123->Rmask
	mov	ecx, r11d	#,
	shr	esi, cl	# tmp284,
	cvtsi2ss	xmm1, esi	# tmp285, tmp284
	mulss	xmm1, xmm2	# tmp286, img_mul
	addss	xmm1, xmm0	# tmp287, D.9930
	cvttss2si	edi, xmm1	# rr, tmp287
	mov	esi, r8d	# tmp288, col
	and	esi, DWORD PTR [rax+24]	# tmp288, D.9862_123->Gmask
	mov	ecx, ebx	#,
	shr	esi, cl	# tmp289,
	cvtsi2ss	xmm1, esi	# tmp290, tmp289
	mulss	xmm1, xmm2	# tmp291, img_mul
	addss	xmm1, xmm0	# tmp292, D.9930
	cvttss2si	esi, xmm1	# gg, tmp292
	and	r8d, DWORD PTR [rax+28]	# tmp293, D.9862_123->Bmask
	mov	ecx, r12d	#,
	shr	r8d, cl	# tmp294,
	cvtsi2ss	xmm1, r8d	# tmp295, tmp294
	mulss	xmm1, xmm2	# tmp296, img_mul
	addss	xmm0, xmm1	# tmp297, tmp296
	cvttss2si	eax, xmm0	# bb, tmp297
	test	r14b, r14b	# allow_overflow
	je	.L23	#,
	and	edi, 255	# r,
	and	esi, 255	# g,
	and	eax, 255	# b,
	jmp	.L24	#
.L23:
	test	edi, edi	# rr
	js	.L33	#,
	cmp	edi, 255	# rr,
	cmovg	edi, r13d	# rr,, r, tmp315
	jmp	.L25	#
.L33:
	mov	edi, 0	# r,
.L25:
	test	esi, esi	# gg
	js	.L34	#,
	cmp	esi, 255	# gg,
	cmovg	esi, r13d	# gg,, g, tmp315
	jmp	.L26	#
.L34:
	mov	esi, 0	# g,
.L26:
	test	eax, eax	# bb
	js	.L35	#,
	cmp	eax, 255	# bb,
	cmovg	eax, r13d	# bb,, b, tmp315
	jmp	.L24	#
.L35:
	mov	eax, 0	# b,
.L24:
	mov	ecx, r11d	#,
	sal	edi, cl	# tmp301,
	mov	ecx, ebx	#,
	sal	esi, cl	# tmp302,
	or	edi, esi	# tmp303, tmp302
	mov	ebx, DWORD PTR [rsp+8]	# tmp304, %sfp
	or	ebx, edi	# tmp304, tmp303
	mov	ecx, r12d	#,
	sal	eax, cl	# tmp305,
	or	ebx, eax	# tmp306, tmp305
	mov	DWORD PTR [r9], ebx	# MEM[(u32 *)pixels_dst_17], tmp306
	add	rdx, 4	# pixels_src,
	add	r9, 4	# pixels_dst,
	add	r15d, 4	# pitches,
	jmp	.L19	#
.L31:
	mov	r15d, 0	# pitches,
	movsx	r13d, r13w	#, img_off
	mov	DWORD PTR [rsp+44], r13d	# %sfp,
	mov	r13d, 255	# tmp315,
	mov	rdx, QWORD PTR [rsp+24]	# pixels_src, %sfp
	mov	r9, QWORD PTR [rsp+8]	# pixels_dst, %sfp
	mov	r10, rbx	# imgdst, imgdst
	movd	xmm2, r12d	# img_mul, img_mul
.L19:
	cmp	r9, QWORD PTR [rsp+32]	# pixels_dst, %sfp
	jb	.L27	#,
	mov	rbx, r10	# imgdst, imgdst
.L18:
	cmp	DWORD PTR [rbx+40], 0	# imgdst_28(D)->offset,
	jne	.L28	#,
	mov	eax, 0	# D.9905,
	test	DWORD PTR [rbx], 16389	# imgdst_28(D)->flags,
	je	.L4	#,
.L28:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9905,
.L4:
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	GToolsPoint_apply_brightness_contrast, .-GToolsPoint_apply_brightness_contrast
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"GToolsPoint_desaturize_std() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC3:
	.string	"GToolsPoint_desaturize_std() > Unsupported BytesPerPixel format %d\n"
	.text
	.globl	GToolsPoint_desaturize_std
	.type	GToolsPoint_desaturize_std, @function
GToolsPoint_desaturize_std:
.LFB94:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L40	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L40	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9764, imgsrc_20(D)->format
	test	rax, rax	# D.9764
	je	.L40	#,
	mov	rdx, QWORD PTR [rsi+8]	# D.9766, imgdst_22(D)->format
	test	rdx, rdx	# D.9766
	je	.L40	#,
	movzx	edi, WORD PTR [rdi+24]	# D.9768, imgsrc_20(D)->pitch
	cmp	di, WORD PTR [rsi+24]	# D.9768, imgdst_22(D)->pitch
	jne	.L40	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rbp+16], rcx	#,
	jne	.L40	#,
	movzx	r12d, BYTE PTR [rax+9]	# D.9778, D.9764_25->BytesPerPixel
	cmp	r12b, BYTE PTR [rdx+9]	# D.9778, D.9766_26->BytesPerPixel
	jne	.L40	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9766_26->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9764_25->Amask,
	jne	.L40	#,
	mov	r11d, DWORD PTR [rdx+20]	#, D.9766_26->Rmask
	cmp	DWORD PTR [rax+20], r11d	# D.9764_25->Rmask,
	jne	.L40	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L40	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9766_26->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9764_25->Ashift,
	jne	.L40	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L40	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9766_26->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9764_25->Bshift,
	jne	.L40	#,
	mov	r14, QWORD PTR [rbp+32]	# pixels_src, imgsrc_20(D)->pixels
	test	r14, r14	# pixels_src
	je	.L40	#,
	mov	r13, QWORD PTR [rbx+32]	# pixels_dst, imgdst_22(D)->pixels
	test	r13, r13	# pixels_dst
	jne	.L41	#,
.L40:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	mov	eax, -56	# D.9807,
	jmp	.L42	#
.L41:
	lea	eax, [r12-3]	# tmp266,
	cmp	al, 1	# tmp266,
	jbe	.L43	#,
	movzx	ecx, r12b	# D.9778, D.9778
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9807,
	jmp	.L42	#
.L43:
	movzx	edi, di	#, D.9768
	mov	DWORD PTR [rsp+4], edi	# %sfp,
	movzx	r15d, r12b	# D.9778, D.9778
	imul	r15d, DWORD PTR [rbp+16]	# wb, imgsrc_20(D)->w
	mov	eax, edi	#,
	imul	eax, DWORD PTR [rbx+20]	# tmp270, imgdst_22(D)->h
	add	rax, r13	#, pixels_dst
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	cmp	DWORD PTR [rbx+40], 0	# imgdst_22(D)->offset,
	jne	.L44	#,
	test	DWORD PTR [rbx], 16389	# imgdst_22(D)->flags,
	je	.L45	#,
.L44:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L45:
	cmp	r12b, 3	# D.9778,
	jne	.L76	#,
	jmp	.L71	#
.L57:
	cmp	edx, r15d	# pitches, wb
	.p2align 4,,4
	jne	.L49	#,
	.p2align 4,,8
	jmp	.L72	#
.L50:
	add	rax, 1	# ivtmp.75,
	.p2align 4,,4
	jmp	.L48	#
.L72:
	mov	eax, 0	# ivtmp.75,
.L48:
	lea	rcx, [r13+0+rax]	# pixels_dst,
	lea	rdx, [r14+rax]	# pixels_src,
	lea	esi, [r15+rax]	# tmp273,
	cmp	DWORD PTR [rsp+4], esi	# %sfp, tmp273
	ja	.L50	#,
	mov	r13, rcx	# pixels_dst, pixels_dst
	mov	r14, rdx	# pixels_src, pixels_src
	mov	edx, 0	# pitches,
.L49:
	mov	ecx, DWORD PTR [r14]	# col, MEM[(u32 *)pixels_src_8]
	mov	rax, QWORD PTR [rbp+8]	# D.9764, imgsrc_20(D)->format
	mov	esi, ecx	# r, col
	and	esi, DWORD PTR [rax+20]	# r, D.9764_98->Rmask
	mov	r8d, ecx	# g, col
	and	r8d, DWORD PTR [rax+24]	# g, D.9764_98->Gmask
	mov	edi, ecx	# b, col
	and	edi, DWORD PTR [rax+28]	# b, D.9764_98->Bmask
	movzx	ecx, BYTE PTR [rax+14]	# D.9764_98->Rshift, D.9764_98->Rshift
	shr	esi, cl	# r, D.9764_98->Rshift
	mov	ecx, esi	# tmp277, tmp275
	cvtsi2sd	xmm3, rcx	# tmp276, tmp277
	mulsd	xmm3, xmm2	# D.9836, tmp343
	cvttsd2si	rsi, xmm3	# r, D.9836
	movzx	ecx, BYTE PTR [rax+15]	# D.9764_98->Gshift, D.9764_98->Gshift
	shr	r8d, cl	# g, D.9764_98->Gshift
	mov	ecx, r8d	# tmp286, tmp284
	cvtsi2sd	xmm3, rcx	# tmp285, tmp286
	mulsd	xmm3, xmm1	# D.9838, tmp344
	movzx	ecx, BYTE PTR [rax+16]	# D.9764_98->Bshift, D.9764_98->Bshift
	mov	eax, edi	# tmp292, b
	shr	eax, cl	# tmp292, D.9764_98->Bshift
	mov	eax, eax	# tmp294, tmp292
	cvtsi2sd	xmm4, rax	# tmp293, tmp294
	mulsd	xmm4, xmm0	# D.9840, tmp345
	cvttsd2si	rcx, xmm3	# tmp299, D.9838
	add	esi, ecx	# r, tmp299
	cvttsd2si	rax, xmm4	# tmp301, D.9840
	add	eax, esi	# tmp303, r
	movzx	ecx, al	# tmp305, tmp303
	imul	cx, cx, 257	# tmp306, tmp305,
	mov	WORD PTR [r13+0], cx	#* pixels_dst, tmp306
	mov	BYTE PTR [r13+2], al	#, tmp303
	add	edx, 3	# pitches,
	add	r14, 3	# pixels_src,
	add	r13, 3	# pixels_dst,
	jmp	.L46	#
.L71:
	mov	edx, 0	# pitches,
	movsd	xmm2, QWORD PTR .LC4[rip]	# tmp343,
	movsd	xmm1, QWORD PTR .LC5[rip]	# tmp344,
	movsd	xmm0, QWORD PTR .LC6[rip]	# tmp345,
.L46:
	cmp	r13, QWORD PTR [rsp+8]	# pixels_dst, %sfp
	jb	.L57	#,
	jmp	.L58	#
.L76:
	cmp	r12b, 4	# D.9778,
	jne	.L58	#,
	.p2align 4,,7
	jmp	.L73	#
.L69:
	cmp	edx, r15d	# pitches, wb
	.p2align 4,,4
	jne	.L61	#,
	.p2align 4,,8
	jmp	.L74	#
.L62:
	add	rax, 1	# ivtmp.91,
	.p2align 4,,4
	jmp	.L60	#
.L74:
	mov	eax, 0	# ivtmp.91,
.L60:
	lea	rcx, [r13+0+rax]	# pixels_dst,
	lea	rdx, [r14+rax]	# pixels_src,
	lea	esi, [r15+rax]	# tmp307,
	cmp	DWORD PTR [rsp+4], esi	# %sfp, tmp307
	ja	.L62	#,
	mov	r13, rcx	# pixels_dst, pixels_dst
	mov	r14, rdx	# pixels_src, pixels_src
	mov	edx, 0	# pitches,
.L61:
	mov	esi, DWORD PTR [r14]	# col, MEM[(u32 *)pixels_src_11]
	mov	rax, QWORD PTR [rbp+8]	# D.9764, imgsrc_20(D)->format
	mov	r11d, esi	# r, col
	and	r11d, DWORD PTR [rax+20]	# r, D.9764_143->Rmask
	mov	r12d, esi	# g, col
	and	r12d, DWORD PTR [rax+24]	# g, D.9764_143->Gmask
	mov	edi, esi	# b, col
	and	edi, DWORD PTR [rax+28]	# b, D.9764_143->Bmask
	movzx	r10d, BYTE PTR [rax+14]	# D.9831, D.9764_143->Rshift
	movzx	r9d, BYTE PTR [rax+15]	# D.9833, D.9764_143->Gshift
	movzx	r8d, BYTE PTR [rax+16]	# D.9834, D.9764_143->Bshift
	mov	ecx, r10d	#,
	shr	r11d, cl	# tmp308,
	mov	ecx, r11d	# tmp310, tmp308
	cvtsi2sd	xmm3, rcx	# tmp309, tmp310
	mulsd	xmm3, xmm2	# D.9836, tmp346
	cvttsd2si	r11, xmm3	# r, D.9836
	mov	ecx, r9d	#,
	shr	r12d, cl	# tmp316,
	mov	ecx, r12d	# tmp318, tmp316
	cvtsi2sd	xmm3, rcx	# tmp317, tmp318
	mulsd	xmm3, xmm1	# D.9838, tmp347
	mov	ecx, r8d	#,
	shr	edi, cl	# tmp323,
	mov	ecx, edi	# tmp325, tmp323
	cvtsi2sd	xmm4, rcx	# tmp324, tmp325
	mulsd	xmm4, xmm0	# D.9840, tmp348
	cvttsd2si	r12, xmm3	# tmp330, D.9838
	add	r11d, r12d	# r, tmp330
	cvttsd2si	rcx, xmm4	# tmp332, D.9840
	lea	edi, [r11+rcx]	# r,
	mov	r11d, edi	#, r
	mov	ecx, r10d	#,
	sal	r11d, cl	#,
	mov	r10d, r11d	# tmp334,
	mov	r11d, edi	#, r
	mov	ecx, r9d	#,
	sal	r11d, cl	#,
	or	r10d, r11d	# tmp336, tmp335
	and	esi, DWORD PTR [rax+32]	# tmp337, D.9764_143->Amask
	mov	eax, r10d	# D.9851, tmp336
	or	eax, esi	# D.9851, tmp337
	mov	ecx, r8d	#,
	sal	edi, cl	# tmp338,
	or	eax, edi	# tmp339, tmp338
	mov	DWORD PTR [r13+0], eax	# MEM[(u32 *)pixels_dst_17], tmp339
	add	edx, 4	# pitches,
	add	r14, 4	# pixels_src,
	add	r13, 4	# pixels_dst,
	jmp	.L59	#
.L73:
	mov	edx, 0	# pitches,
	movsd	xmm2, QWORD PTR .LC4[rip]	# tmp346,
	movsd	xmm1, QWORD PTR .LC5[rip]	# tmp347,
	movsd	xmm0, QWORD PTR .LC6[rip]	# tmp348,
.L59:
	cmp	r13, QWORD PTR [rsp+8]	# pixels_dst, %sfp
	jb	.L69	#,
.L58:
	cmp	DWORD PTR [rbx+40], 0	# imgdst_22(D)->offset,
	jne	.L70	#,
	mov	eax, 0	# D.9807,
	test	DWORD PTR [rbx], 16389	# imgdst_22(D)->flags,
	je	.L42	#,
.L70:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9807,
.L42:
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	mov	r14, QWORD PTR [rsp+56]	#,
	mov	r15, QWORD PTR [rsp+64]	#,
	add	rsp, 72	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	GToolsPoint_desaturize_std, .-GToolsPoint_desaturize_std
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"GToolsPoint_create_histograms() > Failed on assertion Check_surface(image)\n"
	.align 8
.LC8:
	.string	"GToolsPoint_create_histograms() > Unsupported BytesPerPixel format %d\n"
	.text
	.globl	GToolsPoint_create_histograms
	.type	GToolsPoint_create_histograms, @function
GToolsPoint_create_histograms:
.LFB95:
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
	mov	r8, rdi	# image, image
	test	rdi, rdi	# image
	je	.L79	#,
	mov	rdx, QWORD PTR [rdi+32]	# pixels_src, image_8(D)->pixels
	test	rdx, rdx	# pixels_src
	je	.L79	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9704, image_8(D)->format
	test	rax, rax	# D.9704
	jne	.L80	#,
.L79:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 75	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	fwrite	#
	mov	eax, -56	# D.9706,
	jmp	.L81	#
.L80:
	movzx	ebp, BYTE PTR [rax+9]	# Bpp, D.9704_10->BytesPerPixel
	lea	eax, [rbp-3]	# tmp138,
	cmp	al, 1	# tmp138,
	jbe	.L82	#,
	movzx	ecx, bpl	# Bpp, Bpp
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9706,
	jmp	.L81	#
.L82:
	movzx	r9d, WORD PTR [rdi+24]	# pitch, image_8(D)->pitch
	movzx	r11d, bpl	# Bpp, Bpp
	imul	r11d, DWORD PTR [rdi+16]	# wb, image_8(D)->w
	mov	ebx, r9d	#, pitch
	imul	ebx, DWORD PTR [rdi+20]	# tmp142, image_8(D)->h
	add	rbx, rdx	# pixels_src_end, pixels_src
	mov	rdi, QWORD PTR [rsi]	# *colors_30(D), *colors_30(D)
	mov	r10d, 1024	# tmp145,
	test	dil, 1	# *colors_30(D),
	je	.L83	#,
	mov	BYTE PTR [rdi], 0	#* *colors_30(D),
	add	rdi, 1	# *colors_30(D),
	mov	r10w, 1023	#,
.L83:
	test	dil, 2	# *colors_30(D),
	je	.L84	#,
	mov	WORD PTR [rdi], 0	#* *colors_30(D),
	add	rdi, 2	# *colors_30(D),
	sub	r10d, 2	# tmp145,
.L84:
	test	dil, 4	# *colors_30(D),
	je	.L85	#,
	mov	DWORD PTR [rdi], 0	#* *colors_30(D),
	add	rdi, 4	# *colors_30(D),
	sub	r10d, 4	# tmp145,
.L85:
	mov	ecx, r10d	# tmp150, tmp145
	shr	ecx, 3	# tmp150,
	mov	ecx, ecx	# tmp151, tmp150
	mov	eax, 0	# tmp146,
	rep stosq
	test	r10b, 4	# tmp145,
	je	.L86	#,
	mov	DWORD PTR [rdi], 0	#* *colors_30(D),
	add	rdi, 4	# *colors_30(D),
.L86:
	test	r10b, 2	# tmp145,
	je	.L87	#,
	mov	WORD PTR [rdi], 0	#* *colors_30(D),
	add	rdi, 2	# *colors_30(D),
.L87:
	test	r10b, 1	# tmp145,
	je	.L88	#,
	mov	BYTE PTR [rdi], 0	#* *colors_30(D),
.L88:
	mov	rdi, QWORD PTR [rsi+8]	# MEM[(u32 * *)colors_30(D) + 8B], MEM[(u32 * *)colors_30(D) + 8B]
	mov	r10d, 1024	# tmp157,
	test	dil, 1	# MEM[(u32 * *)colors_30(D) + 8B],
	je	.L89	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 8B],
	add	rdi, 1	# MEM[(u32 * *)colors_30(D) + 8B],
	mov	r10w, 1023	#,
.L89:
	test	dil, 2	# MEM[(u32 * *)colors_30(D) + 8B],
	je	.L90	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 8B],
	add	rdi, 2	# MEM[(u32 * *)colors_30(D) + 8B],
	sub	r10d, 2	# tmp157,
.L90:
	test	dil, 4	# MEM[(u32 * *)colors_30(D) + 8B],
	je	.L91	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 8B],
	add	rdi, 4	# MEM[(u32 * *)colors_30(D) + 8B],
	sub	r10d, 4	# tmp157,
.L91:
	mov	ecx, r10d	# tmp162, tmp157
	shr	ecx, 3	# tmp162,
	mov	ecx, ecx	# tmp163, tmp162
	mov	eax, 0	# tmp158,
	rep stosq
	test	r10b, 4	# tmp157,
	je	.L92	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 8B],
	add	rdi, 4	# MEM[(u32 * *)colors_30(D) + 8B],
.L92:
	test	r10b, 2	# tmp157,
	je	.L93	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 8B],
	add	rdi, 2	# MEM[(u32 * *)colors_30(D) + 8B],
.L93:
	test	r10b, 1	# tmp157,
	je	.L94	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 8B],
.L94:
	mov	rdi, QWORD PTR [rsi+16]	# MEM[(u32 * *)colors_30(D) + 16B], MEM[(u32 * *)colors_30(D) + 16B]
	mov	r10d, 1024	# tmp169,
	test	dil, 1	# MEM[(u32 * *)colors_30(D) + 16B],
	je	.L95	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 16B],
	add	rdi, 1	# MEM[(u32 * *)colors_30(D) + 16B],
	mov	r10w, 1023	#,
.L95:
	test	dil, 2	# MEM[(u32 * *)colors_30(D) + 16B],
	je	.L96	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 16B],
	add	rdi, 2	# MEM[(u32 * *)colors_30(D) + 16B],
	sub	r10d, 2	# tmp169,
.L96:
	test	dil, 4	# MEM[(u32 * *)colors_30(D) + 16B],
	je	.L97	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 16B],
	add	rdi, 4	# MEM[(u32 * *)colors_30(D) + 16B],
	sub	r10d, 4	# tmp169,
.L97:
	mov	ecx, r10d	# tmp174, tmp169
	shr	ecx, 3	# tmp174,
	mov	ecx, ecx	# tmp175, tmp174
	mov	eax, 0	# tmp170,
	rep stosq
	test	r10b, 4	# tmp169,
	je	.L98	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 16B],
	add	rdi, 4	# MEM[(u32 * *)colors_30(D) + 16B],
.L98:
	test	r10b, 2	# tmp169,
	je	.L99	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 16B],
	add	rdi, 2	# MEM[(u32 * *)colors_30(D) + 16B],
.L99:
	test	r10b, 1	# tmp169,
	je	.L100	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_30(D) + 16B],
.L100:
	cmp	rdx, rbx	# pixels_src, pixels_src_end
	jae	.L104	#,
	mov	r10d, 0	# pitches,
	mov	r13d, r11d	# tmp205, wb
	not	r13d	# tmp205
	add	r13d, r9d	# tmp207, pitch
	add	r13, 1	# tmp208,
	movzx	r12d, bpl	# Bpp, Bpp
	movzx	ebp, bpl	# Bpp, Bpp
.L103:
	cmp	r10d, r11d	# pitches, wb
	jne	.L101	#,
	cmp	r9d, r11d	# pitch, wb
	jbe	.L105	#,
	mov	eax, r11d	# pitches, wb
.L102:
	add	eax, 1	# pitches,
	cmp	r9d, eax	# pitch, pitches
	ja	.L102	#,
	add	rdx, r13	# pixels_src, tmp208
	mov	r10d, 0	# pitches,
	jmp	.L101	#
.L105:
	mov	r10d, 0	# pitches,
.L101:
	mov	edi, DWORD PTR [rdx]	# col, MEM[(u32 *)pixels_src_5]
	mov	rax, QWORD PTR [r8+8]	# D.9704, image_8(D)->format
	mov	r15d, edi	# tmp183, col
	and	r15d, DWORD PTR [rax+24]	# tmp183, D.9704_40->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.9704_40->Gshift, D.9704_40->Gshift
	shr	r15d, cl	# g, D.9704_40->Gshift
	mov	r14d, edi	# tmp185, col
	and	r14d, DWORD PTR [rax+28]	# tmp185, D.9704_40->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.9704_40->Bshift, D.9704_40->Bshift
	shr	r14d, cl	# b, D.9704_40->Bshift
	and	edi, DWORD PTR [rax+20]	# tmp187, D.9704_40->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.9704_40->Rshift, D.9704_40->Rshift
	shr	edi, cl	# tmp189, D.9704_40->Rshift
	movzx	edi, dil	# tmp190, tmp189
	mov	rax, QWORD PTR [rsi]	# *colors_30(D), *colors_30(D)
	add	DWORD PTR [rax+rdi*4], 1	# *D.9740_65,
	movzx	ecx, r15b	# g, g
	mov	rax, QWORD PTR [rsi+8]	# MEM[(u32 * *)colors_30(D) + 8B], MEM[(u32 * *)colors_30(D) + 8B]
	add	DWORD PTR [rax+rcx*4], 1	# *D.9746_73,
	movzx	ecx, r14b	# b, b
	mov	rax, QWORD PTR [rsi+16]	# MEM[(u32 * *)colors_30(D) + 16B], MEM[(u32 * *)colors_30(D) + 16B]
	add	DWORD PTR [rax+rcx*4], 1	# *D.9752_81,
	add	rdx, r12	# pixels_src, Bpp
	add	r10d, ebp	# pitches, Bpp
	cmp	rbx, rdx	# pixels_src_end, pixels_src
	ja	.L103	#,
	mov	eax, 0	# D.9706,
	jmp	.L81	#
.L104:
	mov	eax, 0	# D.9706,
.L81:
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
.LFE95:
	.size	GToolsPoint_create_histograms, .-GToolsPoint_create_histograms
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"GToolsPoint_calculate_binary_threshold() Error. Calculated binarization threshold is above 255: %lu\n"
	.text
	.globl	GToolsPoint_calculate_binary_threshold
	.type	GToolsPoint_calculate_binary_threshold, @function
GToolsPoint_calculate_binary_threshold:
.LFB96:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 48
	mov	r12, rsi	# threshold, threshold
	mov	ebx, 100	# t,
	test	dl, dl	# t_algo
	je	.L111	#,
	jmp	.L123	#
.L112:
	mov	eax, edx	# k, k
	mov	ecx, DWORD PTR [rdi+rax*4]	# D.9669, *D.9668_36
	mov	eax, ecx	#, D.9669
	imul	eax, edx	# tmp139, k
	add	r11, rax	# t_cz, tmp139
	mov	ecx, ecx	# D.9669, D.9669
	add	r9, rcx	# tmp_t_cz, D.9669
	add	edx, 1	# k,
	cmp	edx, r8d	# k, m
	jbe	.L112	#,
	mov	rax, r11	# t_cz, t_cz
	test	r9, r9	# tmp_t_cz
	je	.L113	#,
	mov	edx, 0	# tmp142,
	div	r9	# tmp_t_cz
	mov	r11, rax	# t_cz, t_cz
.L113:
	lea	r13d, [r8+1]	# k,
	cmp	r13d, 255	# k,
	ja	.L114	#,
	mov	ecx, r13d	# k, k
	mov	r10d, 0	# tmp_t_b,
	mov	eax, 0	# t_b,
.L115:
	mov	edx, ecx	# k, k
	mov	r8d, DWORD PTR [rdi+rdx*4]	# D.9669, *D.9668_54
	mov	edx, r8d	#, D.9669
	imul	edx, ecx	# tmp145, k
	add	rax, rdx	# t_b, tmp145
	mov	r8d, r8d	# D.9669, D.9669
	add	r10, r8	# tmp_t_b, D.9669
	add	ecx, 1	# k,
	cmp	ecx, 256	# k,
	jne	.L115	#,
	test	r10, r10	# tmp_t_b
	je	.L114	#,
	mov	edx, 0	# tmp149,
	div	r10	# tmp_t_b
	sub	r11, rax	# D.9677, tmp148
	imul	r9, r10	# tmp150, tmp_t_b
	imul	r9, r11	# tmp151, D.9677
	imul	r11, r9	# tmp_t, tmp151
	cmp	r11, rbp	# tmp_t, tmp_t_2
	jbe	.L114	#,
	mov	rbx, rsi	# t, t
	mov	rbp, r11	# tmp_t_2, tmp_t
.L114:
	add	rsi, 1	# t,
	mov	r8d, r13d	# m, k
	cmp	r13d, 256	# k,
	jne	.L110	#,
	jmp	.L116	#
.L123:
	mov	esi, 0	# t,
	mov	r8d, 0	# m,
	mov	ebx, 0	# t,
	mov	ebp, 0	# tmp_t_2,
.L110:
	mov	edx, 0	# k,
	mov	r9d, 0	# tmp_t_cz,
	mov	r11d, 0	# t_cz,
	jmp	.L112	#
.L125:
	mov	rbx, rsi	# t, t
.L111:
	mov	ecx, 0	# D.9684,
	mov	edx, 0	# k,
	mov	r8d, 0	# tmp_t_cz,
	mov	esi, 0	# t_cz,
.L117:
	mov	ecx, DWORD PTR [rdi+rcx*4]	# D.9669, *D.9668_83
	mov	eax, edx	#, k
	imul	eax, ecx	# tmp153, D.9669
	add	rsi, rax	# t_cz, tmp153
	mov	ecx, ecx	# D.9669, D.9669
	add	r8, rcx	# tmp_t_cz, D.9669
	add	edx, 1	# k,
	mov	ecx, edx	# D.9684, k
	cmp	rbx, rcx	# t, D.9684
	jae	.L117	#,
	mov	rax, rsi	# t_cz, t_cz
	test	r8, r8	# tmp_t_cz
	je	.L118	#,
	mov	edx, 0	# tmp156,
	div	r8	# tmp_t_cz
	mov	rsi, rax	# t_cz, t_cz
.L118:
	lea	edx, [rbx+1]	# k,
	cmp	edx, 255	# k,
	ja	.L124	#,
	mov	r9d, 0	# tmp_t_b,
	mov	r8d, 0	# t_b,
.L120:
	mov	eax, edx	# k, k
	mov	ecx, DWORD PTR [rdi+rax*4]	# D.9669, *D.9668_102
	mov	eax, ecx	#, D.9669
	imul	eax, edx	# tmp159, k
	add	r8, rax	# t_b, tmp159
	mov	ecx, ecx	# D.9669, D.9669
	add	r9, rcx	# tmp_t_b, D.9669
	add	edx, 1	# k,
	cmp	edx, 255	# k,
	jbe	.L120	#,
	mov	rax, r8	# t_b, t_b
	test	r9, r9	# tmp_t_b
	je	.L119	#,
	mov	edx, 0	# tmp162,
	div	r9	# tmp_t_b
	mov	r8, rax	# t_b, t_b
	jmp	.L119	#
.L124:
	mov	r8d, 0	# t_b,
.L119:
	add	rsi, r8	# tmp163, t_b
	shr	rsi	# t
	cmp	rbx, rsi	# t, t
	jne	.L125	#,
.L116:
	cmp	rbx, 255	# t,
	jbe	.L121	#,
	mov	rcx, QWORD PTR [r12]	#, *threshold_117(D)
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.9697,
	jmp	.L122	#
.L121:
	mov	QWORD PTR [r12], rbx	# *threshold_117(D), t
	mov	eax, 0	# D.9697,
.L122:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 40
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	GToolsPoint_calculate_binary_threshold, .-GToolsPoint_calculate_binary_threshold
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"GToolsPoint_apply_bin_threshold() Error. Got threshold above 255: %lu\n"
	.align 8
.LC11:
	.string	"GToolsPoint_apply_bin_threshold() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC12:
	.string	"GToolsPoint_apply_bin_threshold() > Unsupported BytesPerPixel format %d\n"
	.text
	.globl	GToolsPoint_apply_bin_threshold
	.type	GToolsPoint_apply_bin_threshold, @function
GToolsPoint_apply_bin_threshold:
.LFB97:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbp, rdx	# threshold, threshold
	cmp	rdx, 255	# threshold,
	jbe	.L132	#,
	mov	rcx, rdx	#, threshold
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.9555,
	jmp	.L133	#
.L132:
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L134	#,
	mov	r12, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L134	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9562, imgsrc_26(D)->format
	test	rax, rax	# D.9562
	je	.L134	#,
	mov	rdx, QWORD PTR [rsi+8]	# D.9564, imgdst_28(D)->format
	test	rdx, rdx	# D.9564
	je	.L134	#,
	movzx	edi, WORD PTR [rdi+24]	# D.9566, imgsrc_26(D)->pitch
	cmp	di, WORD PTR [rsi+24]	# D.9566, imgdst_28(D)->pitch
	jne	.L134	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [r12+16], rcx	#,
	jne	.L134	#,
	movzx	r13d, BYTE PTR [rax+9]	# D.9576, D.9562_31->BytesPerPixel
	cmp	r13b, BYTE PTR [rdx+9]	# D.9576, D.9564_32->BytesPerPixel
	jne	.L134	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9564_32->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9562_31->Amask,
	jne	.L134	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.9564_32->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.9562_31->Rmask,
	jne	.L134	#,
	mov	rsi, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rsi	#,
	jne	.L134	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9564_32->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9562_31->Ashift,
	jne	.L134	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L134	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9564_32->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9562_31->Bshift,
	jne	.L134	#,
	mov	r15, QWORD PTR [r12+32]	# pixels_src, imgsrc_26(D)->pixels
	test	r15, r15	# pixels_src
	je	.L134	#,
	mov	r14, QWORD PTR [rbx+32]	# pixels_dst, imgdst_28(D)->pixels
	test	r14, r14	# pixels_dst
	jne	.L135	#,
.L134:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 87	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	fwrite	#
	mov	eax, -56	# D.9555,
	jmp	.L133	#
.L135:
	lea	eax, [r13-3]	# tmp236,
	cmp	al, 1	# tmp236,
	jbe	.L136	#,
	movzx	ecx, r13b	# D.9576, D.9576
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9555,
	jmp	.L133	#
.L136:
	movzx	edi, di	#, D.9566
	mov	DWORD PTR [rsp+4], edi	# %sfp,
	movzx	eax, r13b	# D.9576, D.9576
	imul	eax, DWORD PTR [r12+16]	# D.9576, imgsrc_26(D)->w
	mov	DWORD PTR [rsp], eax	# %sfp, D.9576
	mov	eax, edi	#,
	imul	eax, DWORD PTR [rbx+20]	# tmp240, imgdst_28(D)->h
	add	rax, r14	#, pixels_dst
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	cmp	DWORD PTR [rbx+40], 0	# imgdst_28(D)->offset,
	jne	.L137	#,
	test	DWORD PTR [rbx], 16389	# imgdst_28(D)->flags,
	je	.L138	#,
.L137:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L138:
	cmp	r13b, 3	# D.9576,
	jne	.L165	#,
	jmp	.L157	#
.L146:
	cmp	eax, DWORD PTR [rsp]	# pitches, %sfp
	.p2align 4,,4
	jne	.L142	#,
	.p2align 4,,8
	jmp	.L158	#
.L143:
	add	rax, 1	# ivtmp.139,
	.p2align 4,,4
	jmp	.L141	#
.L158:
	mov	eax, 0	# ivtmp.139,
.L141:
	lea	rcx, [r14+rax]	# pixels_dst,
	lea	rdx, [r15+rax]	# pixels_src,
	mov	esi, DWORD PTR [rsp]	# tmp243, %sfp
	add	esi, eax	# tmp243, ivtmp.139
	cmp	DWORD PTR [rsp+4], esi	# %sfp, tmp243
	ja	.L143	#,
	mov	r14, rcx	# pixels_dst, pixels_dst
	mov	r15, rdx	# pixels_src, pixels_src
	mov	eax, 0	# pitches,
.L142:
	movzx	edx, BYTE PTR [r15]	# *pixels_src_11, *pixels_src_11
	cmp	rbp, rdx	# threshold, *pixels_src_11
	sbb	edx, edx	# tmp262
	mov	BYTE PTR [r14], dl	# *pixels_dst_17, tmp262
	add	r15, 1	# pixels_src,
	add	r14, 1	# pixels_dst,
	add	eax, 1	# pitches,
	jmp	.L139	#
.L157:
	mov	eax, 0	# pitches,
.L139:
	cmp	r14, QWORD PTR [rsp+8]	# pixels_dst, %sfp
	jb	.L146	#,
	jmp	.L147	#
.L165:
	cmp	r13b, 4	# D.9576,
	jne	.L147	#,
	.p2align 4,,7
	jmp	.L159	#
.L155:
	cmp	r13d, DWORD PTR [rsp]	# pitches, %sfp
	.p2align 4,,3
	jne	.L150	#,
	.p2align 4,,7
	jmp	.L160	#
.L151:
	add	rax, 1	# ivtmp.155,
	.p2align 4,,3
	jmp	.L149	#
.L160:
	mov	eax, 0	# ivtmp.155,
.L149:
	lea	rcx, [r14+rax]	# pixels_dst,
	lea	rdx, [r15+rax]	# pixels_src,
	mov	esi, DWORD PTR [rsp]	# tmp245, %sfp
	add	esi, eax	# tmp245, ivtmp.155
	cmp	DWORD PTR [rsp+4], esi	# %sfp, tmp245
	ja	.L151	#,
	mov	r14, rcx	# pixels_dst, pixels_dst
	mov	r15, rdx	# pixels_src, pixels_src
	mov	r13d, 0	# pitches,
.L150:
	mov	edx, DWORD PTR [r15]	# col, MEM[(u32 *)pixels_src_14]
	mov	rax, QWORD PTR [r12+8]	# D.9562, imgsrc_26(D)->format
	mov	r9d, edx	# a, col
	and	r9d, DWORD PTR [rax+32]	# a, D.9562_113->Amask
	movzx	r8d, BYTE PTR [rax+14]	# D.9636, D.9562_113->Rshift
	movzx	edi, BYTE PTR [rax+15]	# D.9640, D.9562_113->Gshift
	mov	r11d, edx	# tmp246, col
	and	r11d, DWORD PTR [rax+24]	# tmp246, D.9562_113->Gmask
	mov	ecx, edi	#,
	shr	r11d, cl	# g,
	movzx	esi, BYTE PTR [rax+16]	# D.9643, D.9562_113->Bshift
	mov	r10d, edx	# tmp247, col
	and	r10d, DWORD PTR [rax+28]	# tmp247, D.9562_113->Bmask
	mov	ecx, esi	#,
	shr	r10d, cl	# b,
	and	edx, DWORD PTR [rax+20]	# tmp248, D.9562_113->Rmask
	mov	eax, edx	# tmp249, tmp248
	mov	ecx, r8d	#,
	shr	eax, cl	# tmp249,
	mov	eax, eax	# tmp250, tmp249
	cmp	rbp, rax	# threshold, tmp250
	sbb	edx, edx	# r
	and	edx, 255	# r,
	mov	r11d, r11d	# g, g
	cmp	rbp, r11	# threshold, g
	sbb	r11d, r11d	# g
	and	r11d, 255	# g,
	mov	r10d, r10d	# b, b
	cmp	rbp, r10	# threshold, b
	sbb	eax, eax	# b
	and	eax, 255	# b,
	sal	edx, cl	# tmp253,
	or	r9d, edx	# tmp254, tmp253
	mov	edx, r11d	# tmp255, g
	mov	ecx, edi	#,
	sal	edx, cl	# tmp255,
	or	edx, r9d	# tmp256, tmp254
	mov	ecx, esi	#,
	sal	eax, cl	# tmp257,
	or	edx, eax	# tmp258, tmp257
	mov	DWORD PTR [r14], edx	# MEM[(u32 *)pixels_dst_20], tmp258
	add	r14, 4	# pixels_dst,
	add	r15, 4	# pixels_src,
	add	r13d, 4	# pitches,
	jmp	.L148	#
.L159:
	mov	r13d, 0	# pitches,
.L148:
	cmp	r14, QWORD PTR [rsp+8]	# pixels_dst, %sfp
	jb	.L155	#,
.L147:
	cmp	DWORD PTR [rbx+40], 0	# imgdst_28(D)->offset,
	jne	.L156	#,
	mov	eax, 0	# D.9555,
	test	DWORD PTR [rbx], 16389	# imgdst_28(D)->flags,
	je	.L133	#,
.L156:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9555,
.L133:
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	mov	r14, QWORD PTR [rsp+56]	#,
	mov	r15, QWORD PTR [rsp+64]	#,
	add	rsp, 72	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	GToolsPoint_apply_bin_threshold, .-GToolsPoint_apply_bin_threshold
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"GToolsPoint_negative() > Failed on assertion Check_surface(imgdst)\n"
	.align 8
.LC14:
	.string	"GToolsPoint_negative() > Unsupported BytesPerPixel format %d\n"
	.text
	.globl	GToolsPoint_negative
	.type	GToolsPoint_negative, @function
GToolsPoint_negative:
.LFB98:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbp, rdi	# imgdst, imgdst
	test	rdi, rdi	# imgdst
	je	.L168	#,
	mov	rbx, QWORD PTR [rdi+32]	# pixels_dst, imgdst_14(D)->pixels
	test	rbx, rbx	# pixels_dst
	je	.L168	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9500, imgdst_14(D)->format
	test	rax, rax	# D.9500
	jne	.L169	#,
.L168:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 67	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC13	#,
	call	fwrite	#
	mov	eax, -56	# D.9502,
	jmp	.L170	#
.L169:
	movzx	r14d, BYTE PTR [rax+9]	# Bpp, D.9500_16->BytesPerPixel
	lea	eax, [r14-3]	# tmp144,
	cmp	al, 1	# tmp144,
	jbe	.L171	#,
	movzx	ecx, r14b	# Bpp, Bpp
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9502,
	jmp	.L170	#
.L171:
	movzx	r12d, WORD PTR [rdi+24]	# pitch, imgdst_14(D)->pitch
	movzx	r13d, r14b	# Bpp, Bpp
	imul	r13d, DWORD PTR [rdi+16]	# wb, imgdst_14(D)->w
	mov	eax, r12d	#, pitch
	imul	eax, DWORD PTR [rdi+20]	# tmp148, imgdst_14(D)->h
	add	rax, rbx	#, pixels_dst
	mov	QWORD PTR [rsp+16], rax	# %sfp,
	cmp	DWORD PTR [rdi+40], 0	# imgdst_14(D)->offset,
	jne	.L172	#,
	test	DWORD PTR [rdi], 16389	# imgdst_14(D)->flags,
	je	.L173	#,
.L172:
	mov	rdi, rbp	#, imgdst
	call	SDL_LockSurface	#
.L173:
	cmp	r14b, 3	# Bpp,
	jne	.L174	#,
	cmp	rbx, QWORD PTR [rsp+16]	# pixels_dst, %sfp
	jae	.L175	#,
	mov	eax, 0	# pitches,
	mov	edx, r13d	# tmp174, wb
	not	edx	# tmp174
	add	edx, r12d	# tmp176, pitch
	add	rdx, 1	# tmp177,
	mov	rcx, QWORD PTR [rsp+16]	# pixels_dst_end, %sfp
.L178:
	cmp	eax, r13d	# pitches, wb
	jne	.L176	#,
	cmp	r12d, r13d	# pitch, wb
	jbe	.L183	#,
	mov	eax, r13d	# pitches, wb
.L177:
	add	eax, 1	# pitches,
	cmp	r12d, eax	# pitch, pitches
	ja	.L177	#,
	add	rbx, rdx	# pixels_dst, tmp177
	mov	eax, 0	# pitches,
	jmp	.L176	#
.L183:
	mov	eax, 0	# pitches,
.L176:
	not	BYTE PTR [rbx]	# *pixels_dst_8
	add	rbx, 1	# pixels_dst,
	add	eax, 1	# pitches,
	cmp	rcx, rbx	# pixels_dst_end, pixels_dst
	ja	.L178	#,
	jmp	.L175	#
.L174:
	cmp	r14b, 4	# Bpp,
	jne	.L175	#,
	cmp	rbx, QWORD PTR [rsp+16]	# pixels_dst, %sfp
	.p2align 4,,2
	jae	.L175	#,
	mov	esi, 0	# pitches,
	mov	eax, r13d	# tmp178, wb
	not	eax	# tmp178
	add	eax, r12d	# tmp180, pitch
	add	rax, 1	#,
	mov	QWORD PTR [rsp+24], rax	# %sfp,
	mov	edi, 255	# tmp182,
.L181:
	cmp	esi, r13d	# pitches, wb
	jne	.L179	#,
	cmp	r12d, r13d	# pitch, wb
	jbe	.L184	#,
	mov	eax, r13d	# pitches, wb
.L180:
	add	eax, 1	# pitches,
	cmp	r12d, eax	# pitch, pitches
	ja	.L180	#,
	add	rbx, QWORD PTR [rsp+24]	# pixels_dst, %sfp
	mov	esi, 0	# pitches,
	jmp	.L179	#
.L184:
	mov	esi, 0	# pitches,
.L179:
	mov	edx, DWORD PTR [rbx]	# col, MEM[(u32 *)pixels_dst_11]
	mov	rax, QWORD PTR [rbp+8]	# D.9500, imgdst_14(D)->format
	movzx	r10d, BYTE PTR [rax+14]	# D.9535, D.9500_51->Rshift
	mov	r14d, edx	# tmp159, col
	and	r14d, DWORD PTR [rax+20]	# tmp159, D.9500_51->Rmask
	mov	ecx, r10d	#,
	shr	r14d, cl	# r,
	movzx	r9d, BYTE PTR [rax+15]	# D.9539, D.9500_51->Gshift
	mov	r11d, edx	# tmp160, col
	and	r11d, DWORD PTR [rax+24]	# tmp160, D.9500_51->Gmask
	mov	ecx, r9d	#,
	shr	r11d, cl	# g,
	movzx	r8d, BYTE PTR [rax+16]	# D.9543, D.9500_51->Bshift
	mov	r15d, edx	# tmp161, col
	and	r15d, DWORD PTR [rax+28]	# tmp161, D.9500_51->Bmask
	mov	ecx, r8d	#,
	shr	r15d, cl	# tmp161,
	mov	DWORD PTR [rsp+12], r15d	# %sfp, tmp161
	mov	r15d, edi	# r, tmp182
	sub	r15d, r14d	# r, r
	mov	r14d, edi	# g, tmp182
	sub	r14d, r11d	# g, g
	mov	r11d, edi	# b, tmp182
	sub	r11d, DWORD PTR [rsp+12]	# b, %sfp
	mov	ecx, r10d	#,
	sal	r15d, cl	# r,
	mov	r10d, r15d	# tmp165, r
	mov	ecx, r9d	#,
	sal	r14d, cl	# g,
	or	r10d, r14d	# tmp167, tmp166
	and	edx, DWORD PTR [rax+32]	# tmp168, D.9500_51->Amask
	or	r10d, edx	# D.9545, tmp168
	mov	ecx, r8d	#,
	sal	r11d, cl	# b,
	or	r10d, r11d	# tmp170, tmp169
	mov	DWORD PTR [rbx], r10d	# MEM[(u32 *)pixels_dst_11], tmp170
	add	rbx, 4	# pixels_dst,
	add	esi, 4	# pitches,
	cmp	QWORD PTR [rsp+16], rbx	# %sfp, pixels_dst
	ja	.L181	#,
.L175:
	cmp	DWORD PTR [rbp+40], 0	# imgdst_14(D)->offset,
	jne	.L182	#,
	mov	eax, 0	# D.9502,
	test	DWORD PTR [rbp+0], 16389	# imgdst_14(D)->flags,
	je	.L170	#,
.L182:
	mov	rdi, rbp	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9502,
.L170:
	mov	rbx, QWORD PTR [rsp+40]	#,
	mov	rbp, QWORD PTR [rsp+48]	#,
	mov	r12, QWORD PTR [rsp+56]	#,
	mov	r13, QWORD PTR [rsp+64]	#,
	mov	r14, QWORD PTR [rsp+72]	#,
	mov	r15, QWORD PTR [rsp+80]	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	GToolsPoint_negative, .-GToolsPoint_negative
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"GToolsPoint_histEqualize() > Failed on assertion Check_surface(imgdst)\n"
	.align 8
.LC16:
	.string	"GToolsPoint_histEqualize() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC17:
	.string	"GToolsPoint_histEqualize() > NULL pointer at colors parameter\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC18:
	.string	"GToolsPoint.c"
.LC19:
	.string	"width*height = %u\n"
.LC20:
	.string	"mian = {%5.3f, %5.3f, %5.3f}\n"
	.text
	.globl	GToolsPoint_histEqualize
	.type	GToolsPoint_histEqualize, @function
GToolsPoint_histEqualize:
.LFB99:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 200	#,
	.cfi_def_cfa_offset 256
	mov	r14, rdi	# imgdst, imgdst
	test	rdi, rdi	# imgdst
	je	.L192	#,
	mov	r12, QWORD PTR [rdi+32]	# pixels_dst, imgdst_14(D)->pixels
	test	r12, r12	# pixels_dst
	je	.L192	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9325, imgdst_14(D)->format
	test	rax, rax	# D.9325
	jne	.L193	#,
.L192:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 71	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC15	#,
	call	fwrite	#
	mov	eax, -56	# D.9327,
	jmp	.L250	#
.L193:
	movzx	r13d, BYTE PTR [rax+9]	# Bpp, D.9325_16->BytesPerPixel
	lea	eax, [r13-3]	# tmp306,
	cmp	al, 1	# tmp306,
	jbe	.L195	#,
	movzx	ecx, r13b	# Bpp, Bpp
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9327,
	jmp	.L250	#
.L195:
	mov	rbx, rsi	# colors, colors
	test	rsi, rsi	# colors
	jne	.L196	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 62	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC17	#,
	call	fwrite	#
	mov	eax, 1	# D.9327,
	jmp	.L250	#
.L196:
	movzx	r15d, WORD PTR [rdi+24]	# pitch, imgdst_14(D)->pitch
	movzx	eax, r13b	# Bpp, Bpp
	imul	eax, DWORD PTR [rdi+16]	# Bpp, imgdst_14(D)->w
	mov	DWORD PTR [rsp+40], eax	# %sfp, Bpp
	mov	eax, r15d	#, pitch
	imul	eax, DWORD PTR [rdi+20]	# tmp310, imgdst_14(D)->h
	add	rax, r12	#, pixels_dst
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	mov	edx, 518	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	edi, 24	#,
	call	wmalloc	#
	mov	rbp, rax	# dystrybuanta,
	mov	ecx, 520	#,
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+0], rax	# *dystrybuanta_40, D.9341
	mov	ecx, 521	#,
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+8], rax	# MEM[(u32 * *)dystrybuanta_40 + 8B], D.9343
	mov	ecx, 522	#,
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR [rbp+16], rax	# MEM[(u32 * *)dystrybuanta_40 + 16B], D.9345
	mov	QWORD PTR [rsp+128], 0	# sum,
	mov	QWORD PTR [rsp+136], 0	# sum,
	mov	QWORD PTR [rsp+144], 0	# sum,
	mov	BYTE PTR [rsp+112], 0	# found,
	mov	BYTE PTR [rsp+113], 0	# found,
	mov	BYTE PTR [rsp+114], 0	# found,
	mov	ecx, 0	# ivtmp.232,
	jmp	.L197	#
.L201:
	cmp	BYTE PTR [rsp+112+rdx], 0	# MEM[symbol: found, index: ivtmp.211_377, offset: 0B],
	jne	.L198	#,
	mov	rsi, QWORD PTR [rbx+rax]	# MEM[base: colors_23(D), index: ivtmp.219_371, offset: 0B], MEM[base: colors_23(D), index: ivtmp.219_371, offset: 0B]
	mov	esi, DWORD PTR [rsi+rcx]	# D.9357, *D.9356_56
	test	esi, esi	# D.9357
	je	.L199	#,
	mov	BYTE PTR [rsp+112+rdx], 1	# MEM[symbol: found, index: ivtmp.211_377, offset: 0B],
	mov	BYTE PTR [rsp+160+rdx], sil	# MEM[symbol: min_col, index: ivtmp.211_377, offset: 0B], D.9357
.L198:
	mov	rdi, QWORD PTR [rsp+128+rax]	# D.9361, MEM[symbol: sum, index: ivtmp.219_371, offset: 0B]
	mov	rsi, QWORD PTR [rbx+rax]	# MEM[base: colors_23(D), index: ivtmp.219_371, offset: 0B], MEM[base: colors_23(D), index: ivtmp.219_371, offset: 0B]
	mov	esi, DWORD PTR [rsi+rcx]	# *D.9356_78, *D.9356_78
	add	rsi, rdi	# D.9363, D.9361
	cmp	rdi, rsi	# D.9361, D.9363
	jae	.L200	#,
	mov	QWORD PTR [rsp+128+rax], rsi	# MEM[symbol: sum, index: ivtmp.219_371, offset: 0B], D.9363
.L200:
	mov	rdi, QWORD PTR [rbp+0+rax]	# MEM[base: dystrybuanta_40, index: ivtmp.219_371, offset: 0B], MEM[base: dystrybuanta_40, index: ivtmp.219_371, offset: 0B]
	mov	DWORD PTR [rdi+rcx], esi	# *D.9369_94, D.9363
	add	rdx, 1	# ivtmp.211,
	add	rax, 8	# ivtmp.219,
	cmp	rdx, 3	# ivtmp.211,
	jne	.L201	#,
	add	rcx, 4	# ivtmp.232,
	cmp	rcx, 1024	# ivtmp.232,
	je	.L202	#,
.L197:
	mov	eax, 0	# ivtmp.219,
	mov	edx, 0	# ivtmp.211,
	jmp	.L201	#
.L202:
	mov	rdi, QWORD PTR [rbx]	# *colors_23(D), *colors_23(D)
	mov	edx, 1024	# tmp322,
	test	dil, 1	# *colors_23(D),
	je	.L203	#,
	mov	BYTE PTR [rdi], 0	#* *colors_23(D),
	add	rdi, 1	# *colors_23(D),
	mov	dx, 1023	#,
.L203:
	test	dil, 2	# *colors_23(D),
	je	.L204	#,
	mov	WORD PTR [rdi], 0	#* *colors_23(D),
	add	rdi, 2	# *colors_23(D),
	sub	edx, 2	# tmp322,
.L204:
	test	dil, 4	# *colors_23(D),
	je	.L205	#,
	mov	DWORD PTR [rdi], 0	#* *colors_23(D),
	add	rdi, 4	# *colors_23(D),
	sub	edx, 4	# tmp322,
.L205:
	mov	ecx, edx	# tmp327, tmp322
	shr	ecx, 3	# tmp327,
	mov	ecx, ecx	# tmp328, tmp327
	mov	eax, 0	# tmp323,
	rep stosq
	test	dl, 4	# tmp322,
	je	.L206	#,
	mov	DWORD PTR [rdi], 0	#* *colors_23(D),
	add	rdi, 4	# *colors_23(D),
.L206:
	test	dl, 2	# tmp322,
	je	.L207	#,
	mov	WORD PTR [rdi], 0	#* *colors_23(D),
	add	rdi, 2	# *colors_23(D),
.L207:
	test	dl, 1	# tmp322,
	je	.L208	#,
	mov	BYTE PTR [rdi], 0	#* *colors_23(D),
.L208:
	mov	rdi, QWORD PTR [rbx+8]	# MEM[(u32 * *)colors_23(D) + 8B], MEM[(u32 * *)colors_23(D) + 8B]
	mov	edx, 1024	# tmp334,
	test	dil, 1	# MEM[(u32 * *)colors_23(D) + 8B],
	je	.L209	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 8B],
	add	rdi, 1	# MEM[(u32 * *)colors_23(D) + 8B],
	mov	dx, 1023	#,
.L209:
	test	dil, 2	# MEM[(u32 * *)colors_23(D) + 8B],
	je	.L210	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 8B],
	add	rdi, 2	# MEM[(u32 * *)colors_23(D) + 8B],
	sub	edx, 2	# tmp334,
.L210:
	test	dil, 4	# MEM[(u32 * *)colors_23(D) + 8B],
	je	.L211	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 8B],
	add	rdi, 4	# MEM[(u32 * *)colors_23(D) + 8B],
	sub	edx, 4	# tmp334,
.L211:
	mov	ecx, edx	# tmp339, tmp334
	shr	ecx, 3	# tmp339,
	mov	ecx, ecx	# tmp340, tmp339
	mov	eax, 0	# tmp335,
	rep stosq
	test	dl, 4	# tmp334,
	je	.L212	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 8B],
	add	rdi, 4	# MEM[(u32 * *)colors_23(D) + 8B],
.L212:
	test	dl, 2	# tmp334,
	je	.L213	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 8B],
	add	rdi, 2	# MEM[(u32 * *)colors_23(D) + 8B],
.L213:
	test	dl, 1	# tmp334,
	je	.L214	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 8B],
.L214:
	mov	rdi, QWORD PTR [rbx+16]	# MEM[(u32 * *)colors_23(D) + 16B], MEM[(u32 * *)colors_23(D) + 16B]
	mov	edx, 1024	# tmp346,
	test	dil, 1	# MEM[(u32 * *)colors_23(D) + 16B],
	je	.L215	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 16B],
	add	rdi, 1	# MEM[(u32 * *)colors_23(D) + 16B],
	mov	dx, 1023	#,
.L215:
	test	dil, 2	# MEM[(u32 * *)colors_23(D) + 16B],
	je	.L216	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 16B],
	add	rdi, 2	# MEM[(u32 * *)colors_23(D) + 16B],
	sub	edx, 2	# tmp346,
.L216:
	test	dil, 4	# MEM[(u32 * *)colors_23(D) + 16B],
	je	.L217	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 16B],
	add	rdi, 4	# MEM[(u32 * *)colors_23(D) + 16B],
	sub	edx, 4	# tmp346,
.L217:
	mov	ecx, edx	# tmp351, tmp346
	shr	ecx, 3	# tmp351,
	mov	ecx, ecx	# tmp352, tmp351
	mov	eax, 0	# tmp347,
	rep stosq
	test	dl, 4	# tmp346,
	je	.L218	#,
	mov	DWORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 16B],
	add	rdi, 4	# MEM[(u32 * *)colors_23(D) + 16B],
.L218:
	test	dl, 2	# tmp346,
	je	.L219	#,
	mov	WORD PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 16B],
	add	rdi, 2	# MEM[(u32 * *)colors_23(D) + 16B],
.L219:
	test	dl, 1	# tmp346,
	je	.L220	#,
	mov	BYTE PTR [rdi], 0	#* MEM[(u32 * *)colors_23(D) + 16B],
.L220:
	mov	ecx, DWORD PTR [r14+16]	# imgdst_14(D)->w, imgdst_14(D)->w
	imul	ecx, DWORD PTR [r14+20]	# wh, imgdst_14(D)->h
	movzx	eax, BYTE PTR [rsp+160]	# min_col, min_col
	mov	edx, ecx	#, wh
	sub	edx, eax	#, min_col
	cvtsi2sd	xmm0, rdx	#, tmp359
	movsd	QWORD PTR [rsp+16], xmm0	# %sfp,
	movsd	QWORD PTR [rsp+48], xmm0	# mian,
	movzx	eax, BYTE PTR [rsp+161]	# min_col, min_col
	mov	edx, ecx	#, wh
	sub	edx, eax	#, min_col
	cvtsi2sd	xmm0, rdx	#, tmp365
	movsd	QWORD PTR [rsp+24], xmm0	# %sfp,
	movsd	QWORD PTR [rsp+56], xmm0	# mian,
	movzx	eax, BYTE PTR [rsp+162]	# min_col, min_col
	mov	edx, ecx	#, wh
	sub	edx, eax	#, min_col
	cvtsi2sd	xmm0, rdx	#, tmp371
	movsd	QWORD PTR [rsp+32], xmm0	# %sfp,
	movsd	QWORD PTR [rsp+64], xmm0	# mian,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movsd	xmm2, QWORD PTR [rsp+32]	#, %sfp
	movsd	xmm1, QWORD PTR [rsp+24]	#, %sfp
	movsd	xmm0, QWORD PTR [rsp+16]	#, %sfp
	mov	edx, OFFSET FLAT:.LC20	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 3	#,
	call	__fprintf_chk	#
	cmp	DWORD PTR [r14+40], 0	# imgdst_14(D)->offset,
	jne	.L227	#,
	test	DWORD PTR [r14], 16389	# imgdst_14(D)->flags,
	je	.L228	#,
.L227:
	mov	rdi, r14	#, imgdst
	call	SDL_LockSurface	#
.L228:
	cmp	r12, QWORD PTR [rsp+8]	# pixels_dst, %sfp
	jae	.L229	#,
	mov	edi, 0	# pitches,
	mov	esi, DWORD PTR [rsp+40]	# tmp460, %sfp
	not	esi	# tmp460
	add	esi, r15d	# tmp462, pitch
	add	rsi, 1	# tmp463,
	movsd	xmm3, QWORD PTR .LC21[rip]	# tmp464,
	movsd	xmm2, QWORD PTR .LC22[rip]	# tmp465,
	movsd	xmm4, QWORD PTR .LC23[rip]	# tmp466,
	mov	r10d, DWORD PTR [rsp+44]	# a, %sfp
	mov	r8d, DWORD PTR [rsp+40]	# wb, %sfp
	mov	r9, QWORD PTR [rsp+8]	# pixels_dst_end, %sfp
.L242:
	cmp	edi, r8d	# pitches, wb
	jne	.L230	#,
	cmp	r15d, r8d	# pitch, wb
	jbe	.L245	#,
	mov	eax, r8d	# pitches, wb
.L231:
	add	eax, 1	# pitches,
	cmp	r15d, eax	# pitch, pitches
	ja	.L231	#,
	add	r12, rsi	# pixels_dst, tmp463
	mov	edi, 0	# pitches,
	jmp	.L230	#
.L245:
	mov	edi, 0	# pitches,
.L230:
	cmp	r13b, 3	# Bpp,
	jne	.L232	#,
	movzx	edx, BYTE PTR [r12+1]	# MEM[(u8 *)pixels_dst_9 + 1B], MEM[(u8 *)pixels_dst_9 + 1B]
	sal	edx, 8	# tmp382,
	movzx	eax, BYTE PTR [r12+2]	# MEM[(u8 *)pixels_dst_9 + 2B], MEM[(u8 *)pixels_dst_9 + 2B]
	sal	eax, 16	# tmp384,
	or	edx, eax	# tmp385, tmp384
	movzx	eax, BYTE PTR [r12]	# *pixels_dst_9, *pixels_dst_9
	or	edx, eax	# clr, *pixels_dst_9
	jmp	.L233	#
.L232:
	mov	edx, DWORD PTR [r12]	# clr, MEM[(u32 *)pixels_dst_9]
.L233:
	mov	rax, QWORD PTR [r14+8]	# D.9325, imgdst_14(D)->format
	mov	r11d, edx	# tmp387, clr
	and	r11d, DWORD PTR [rax+20]	# tmp387, D.9325_147->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.9325_147->Rshift, D.9325_147->Rshift
	shr	r11d, cl	# tmp389, D.9325_147->Rshift
	mov	DWORD PTR [rsp+176], r11d	# col, tmp389
	mov	r11d, edx	# tmp390, clr
	and	r11d, DWORD PTR [rax+24]	# tmp390, D.9325_147->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.9325_147->Gshift, D.9325_147->Gshift
	shr	r11d, cl	# tmp392, D.9325_147->Gshift
	mov	DWORD PTR [rsp+180], r11d	# col, tmp392
	mov	r11d, edx	# tmp393, clr
	and	r11d, DWORD PTR [rax+28]	# tmp393, D.9325_147->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.9325_147->Bshift, D.9325_147->Bshift
	shr	r11d, cl	# tmp395, D.9325_147->Bshift
	mov	DWORD PTR [rsp+184], r11d	# col, tmp395
	cmp	r13b, 4	# Bpp,
	jne	.L234	#,
	mov	r10d, edx	# a, clr
	and	r10d, DWORD PTR [rax+32]	# a, D.9325_147->Amask
.L234:
	mov	eax, 0	# ivtmp.186,
.L239:
	mov	r11d, DWORD PTR [rsp+176+rax*4]	# MEM[symbol: col, index: ivtmp.186_323, step: 4, offset: 0B], MEM[symbol: col, index: ivtmp.186_323, step: 4, offset: 0B]
	mov	rdx, QWORD PTR [rbp+0+rax*8]	# MEM[base: dystrybuanta_40, index: ivtmp.186_323, step: 8, offset: 0B], MEM[base: dystrybuanta_40, index: ivtmp.186_323, step: 8, offset: 0B]
	movzx	ecx, BYTE PTR [rsp+160+rax]	# MEM[symbol: min_col, index: ivtmp.186_323, offset: 0B], MEM[symbol: min_col, index: ivtmp.186_323, offset: 0B]
	mov	edx, DWORD PTR [rdx+r11*4]	# *D.9436_181, *D.9436_181
	sub	edx, ecx	# tmp404, MEM[symbol: min_col, index: ivtmp.186_323, offset: 0B]
	cvtsi2sd	xmm0, rdx	# tmp403, tmp404
	mulsd	xmm0, xmm3	# tmp408, tmp464
	divsd	xmm0, QWORD PTR [rsp+48+rax*8]	# D.9445, MEM[symbol: mian, index: ivtmp.186_323, step: 8, offset: 0B]
	cvttsd2si	edx, xmm0	# tmp411, D.9445
	movzx	edx, dl	# tmp414, tmp411
	cvtsi2sd	xmm1, edx	# tmp415, tmp414
	movapd	xmm5, xmm0	#, D.9445
	subsd	xmm5, xmm1	#, tmp415
	ucomisd	xmm5, xmm2	# tmp416, tmp465
	ja	.L237	#,
	movsd	QWORD PTR [rsp+80+rax*8], xmm0	# MEM[symbol: v, index: ivtmp.186_323, step: 8, offset: 0B], D.9445
	jmp	.L238	#
.L237:
	addsd	xmm0, xmm4	# tmp420, tmp466
	movsd	QWORD PTR [rsp+80+rax*8], xmm0	# MEM[symbol: v, index: ivtmp.186_323, step: 8, offset: 0B], tmp420
.L238:
	cvttsd2si	ecx, QWORD PTR [rsp+80+rax*8]	# D.9447, MEM[symbol: v, index: ivtmp.186_323, step: 8, offset: 0B]
	movzx	edx, cl	# D.9447, D.9447
	mov	DWORD PTR [rsp+176+rax*4], edx	# MEM[symbol: col, index: ivtmp.186_323, step: 4, offset: 0B], D.9447
	movzx	ecx, cl	# D.9447, D.9447
	mov	rdx, QWORD PTR [rbx+rax*8]	# MEM[base: colors_23(D), index: ivtmp.186_323, step: 8, offset: 0B], MEM[base: colors_23(D), index: ivtmp.186_323, step: 8, offset: 0B]
	add	DWORD PTR [rdx+rcx*4], 1	# *D.9455_220,
	add	rax, 1	# ivtmp.186,
	cmp	rax, 3	# ivtmp.186,
	jne	.L239	#,
	mov	rax, QWORD PTR [r14+8]	# D.9325, imgdst_14(D)->format
	movzx	ecx, BYTE PTR [rax+15]	# D.9325_225->Gshift, D.9325_225->Gshift
	mov	r11d, DWORD PTR [rsp+180]	# tmp431, col
	sal	r11d, cl	# tmp431, D.9325_225->Gshift
	movzx	ecx, BYTE PTR [rax+14]	# D.9325_225->Rshift, D.9325_225->Rshift
	mov	edx, DWORD PTR [rsp+176]	# tmp434, col
	sal	edx, cl	# tmp434, D.9325_225->Rshift
	or	edx, r11d	# tmp436, tmp431
	movzx	ecx, BYTE PTR [rax+16]	# D.9325_225->Bshift, D.9325_225->Bshift
	mov	eax, DWORD PTR [rsp+184]	# tmp438, col
	sal	eax, cl	# tmp438, D.9325_225->Bshift
	or	eax, edx	# clr, tmp436
	cmp	r13b, 4	# Bpp,
	jne	.L240	#,
	or	eax, r10d	# tmp440, a
	mov	DWORD PTR [r12], eax	# MEM[(u32 *)pixels_dst_9], tmp440
	jmp	.L241	#
.L240:
	mov	BYTE PTR [r12], al	# *pixels_dst_9, clr
	mov	edx, eax	# tmp441, clr
	shr	edx, 8	# tmp441,
	mov	BYTE PTR [r12+1], dl	# MEM[(u8 *)pixels_dst_9 + 1B], tmp441
	shr	eax, 16	# tmp442,
	mov	BYTE PTR [r12+2], al	# MEM[(u8 *)pixels_dst_9 + 2B], tmp442
.L241:
	movzx	eax, r13b	# Bpp, Bpp
	add	r12, rax	# pixels_dst, Bpp
	movzx	eax, r13b	# Bpp, Bpp
	add	edi, eax	# pitches, Bpp
	cmp	r9, r12	# pixels_dst_end, pixels_dst
	ja	.L242	#,
.L229:
	cmp	DWORD PTR [r14+40], 0	# imgdst_14(D)->offset,
	jne	.L243	#,
	test	DWORD PTR [r14], 16389	# imgdst_14(D)->flags,
	je	.L244	#,
.L243:
	mov	rdi, r14	#, imgdst
	call	SDL_UnlockSurface	#
.L244:
	mov	edx, 634	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, QWORD PTR [rbp+0]	#, *dystrybuanta_40
	call	wfree	#
	mov	rdi, QWORD PTR [rbp+8]	# MEM[(u32 * *)dystrybuanta_40 + 8B], MEM[(u32 * *)dystrybuanta_40 + 8B]
	mov	edx, 635	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	call	wfree	#
	mov	rdi, QWORD PTR [rbp+16]	# MEM[(u32 * *)dystrybuanta_40 + 16B], MEM[(u32 * *)dystrybuanta_40 + 16B]
	mov	edx, 636	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	call	wfree	#
	mov	edx, 637	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, rbp	#, dystrybuanta
	call	wfree	#
	mov	eax, 0	# D.9327,
	jmp	.L250	#
.L199:
	mov	rsi, QWORD PTR [rbx+rax]	# MEM[base: colors_23(D), index: ivtmp.219_371, offset: 0B], MEM[base: colors_23(D), index: ivtmp.219_371, offset: 0B]
	mov	esi, DWORD PTR [rsi+rcx]	# *D.9356_269, *D.9356_269
	add	rsi, QWORD PTR [rsp+128+rax]	# D.9363, MEM[symbol: sum, index: ivtmp.219_371, offset: 0B]
	jmp	.L200	#
.L250:
	add	rsp, 200	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	GToolsPoint_histEqualize, .-GToolsPoint_histEqualize
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"GToolsPoint_replace_pixels() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC25:
	.string	"GToolsPoint_replace_pixels() > Unsupported BytesPerPixel format %d\n"
	.text
	.globl	GToolsPoint_replace_pixels
	.type	GToolsPoint_replace_pixels, @function
GToolsPoint_replace_pixels:
.LFB100:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L253	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L253	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9183, imgsrc_19(D)->format
	test	rax, rax	# D.9183
	je	.L253	#,
	mov	r13d, edx	# cond, cond
	mov	rdx, QWORD PTR [rsi+8]	# D.9185, imgdst_21(D)->format
	test	rdx, rdx	# D.9185
	je	.L253	#,
	movzx	esi, WORD PTR [rdi+24]	# D.9187, imgsrc_19(D)->pitch
	cmp	si, WORD PTR [rbx+24]	# D.9187, imgdst_21(D)->pitch
	jne	.L253	#,
	mov	r12d, ecx	# threshold, threshold
	mov	rcx, QWORD PTR [rbx+16]	#,
	cmp	QWORD PTR [rdi+16], rcx	#,
	jne	.L253	#,
	movzx	r14d, BYTE PTR [rax+9]	# D.9197, D.9183_24->BytesPerPixel
	cmp	r14b, BYTE PTR [rdx+9]	# D.9197, D.9185_25->BytesPerPixel
	jne	.L253	#,
	mov	ecx, DWORD PTR [rdx+32]	#, D.9185_25->Amask
	cmp	DWORD PTR [rax+32], ecx	# D.9183_24->Amask,
	jne	.L253	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.9185_25->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.9183_24->Rmask,
	jne	.L253	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L253	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9185_25->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9183_24->Ashift,
	jne	.L253	#,
	movzx	ecx, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], cx	#,
	jne	.L253	#,
	movzx	edi, BYTE PTR [rax+16]	# D.9219, D.9183_24->Bshift
	cmp	dil, BYTE PTR [rdx+16]	# D.9219, D.9185_25->Bshift
	jne	.L253	#,
	mov	rdx, QWORD PTR [rbp+32]	#, imgsrc_19(D)->pixels
	mov	QWORD PTR [rsp], rdx	# %sfp,
	test	rdx, rdx	#
	je	.L253	#,
	mov	r15, QWORD PTR [rbx+32]	# pixels_dst, imgdst_21(D)->pixels
	test	r15, r15	# pixels_dst
	jne	.L254	#,
.L253:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC24	#,
	call	fwrite	#
	mov	eax, -56	# D.9226,
	jmp	.L255	#
.L254:
	lea	edx, [r14-3]	# tmp221,
	cmp	dl, 1	# tmp221,
	jbe	.L256	#,
	movzx	ecx, r14b	# D.9197, D.9197
	mov	edx, OFFSET FLAT:.LC25	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9226,
	jmp	.L255	#
.L256:
	movzx	esi, si	#, D.9187
	mov	DWORD PTR [rsp+28], esi	# %sfp,
	movzx	edx, r14b	# D.9197, D.9197
	imul	edx, DWORD PTR [rbp+16]	# D.9197, imgsrc_19(D)->w
	mov	DWORD PTR [rsp+40], edx	# %sfp, D.9197
	movzx	edx, BYTE PTR [r8]	# *new_color_81(D), *new_color_81(D)
	movzx	ecx, BYTE PTR [rax+14]	# D.9183_24->Rshift, D.9183_24->Rshift
	sal	edx, cl	# *new_color_81(D), D.9183_24->Rshift
	mov	DWORD PTR [rsp+8], edx	# %sfp, *new_color_81(D)
	movzx	edx, BYTE PTR [r8+1]	# MEM[(const u8 *)new_color_81(D) + 1B], MEM[(const u8 *)new_color_81(D) + 1B]
	movzx	ecx, BYTE PTR [rax+15]	# D.9183_24->Gshift, D.9183_24->Gshift
	sal	edx, cl	# MEM[(const u8 *)new_color_81(D) + 1B], D.9183_24->Gshift
	mov	DWORD PTR [rsp+20], edx	# %sfp, MEM[(const u8 *)new_color_81(D) + 1B]
	movzx	eax, BYTE PTR [r8+2]	# MEM[(const u8 *)new_color_81(D) + 2B], MEM[(const u8 *)new_color_81(D) + 2B]
	mov	ecx, edi	#, D.9219
	sal	eax, cl	# MEM[(const u8 *)new_color_81(D) + 2B],
	mov	DWORD PTR [rsp+24], eax	# %sfp, MEM[(const u8 *)new_color_81(D) + 2B]
	mov	eax, esi	#,
	imul	eax, DWORD PTR [rbx+20]	# tmp231, imgdst_21(D)->h
	add	rax, r15	#, pixels_dst
	mov	QWORD PTR [rsp+32], rax	# %sfp,
	cmp	DWORD PTR [rbx+40], 0	# imgdst_21(D)->offset,
	jne	.L257	#,
	test	DWORD PTR [rbx], 16389	# imgdst_21(D)->flags,
	je	.L258	#,
.L257:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L258:
	mov	r11d, DWORD PTR [rsp+20]	# tmp234, %sfp
	or	r11d, DWORD PTR [rsp+8]	# tmp234, %sfp
	or	r11d, DWORD PTR [rsp+24]	# col, %sfp
	mov	eax, r11d	#, col
	shr	eax, 8	#,
	mov	BYTE PTR [rsp+20], al	# %sfp,
	mov	edx, r11d	#, col
	shr	edx, 16	#,
	mov	BYTE PTR [rsp+24], dl	# %sfp,
	mov	esi, 0	# res,
	mov	r10d, 0	# pitches,
	movzx	eax, r14b	#, D.9197
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	movzx	edx, r14b	#, D.9197
	mov	DWORD PTR [rsp+44], edx	# %sfp,
	jmp	.L259	#
.L283:
	cmp	r10d, DWORD PTR [rsp+40]	# pitches, %sfp
	jne	.L261	#,
	jmp	.L285	#
.L262:
	add	rax, 1	# ivtmp.237,
	.p2align 4,,2
	jmp	.L260	#
.L285:
	mov	eax, 0	# ivtmp.237,
.L260:
	lea	rcx, [r15+rax]	# pixels_dst,
	mov	rdx, QWORD PTR [rsp]	# pixels_src, %sfp
	add	rdx, rax	# pixels_src, ivtmp.237
	mov	edi, DWORD PTR [rsp+40]	# tmp237, %sfp
	add	edi, eax	# tmp237, ivtmp.237
	cmp	edi, DWORD PTR [rsp+28]	# tmp237, %sfp
	jb	.L262	#,
	mov	r15, rcx	# pixels_dst, pixels_dst
	mov	QWORD PTR [rsp], rdx	# %sfp, pixels_src
	mov	r10d, 0	# pitches,
.L261:
	mov	rcx, QWORD PTR [rsp]	#, %sfp
	mov	eax, DWORD PTR [rcx]	# col, MEM[(const u32 *)pixels_src_5]
	mov	rdi, QWORD PTR [rbp+8]	# D.9183, imgsrc_19(D)->format
	mov	r9d, eax	# tmp238, col
	and	r9d, DWORD PTR [rdi+20]	# tmp238, D.9183_119->Rmask
	movzx	ecx, BYTE PTR [rdi+14]	# D.9183_119->Rshift, D.9183_119->Rshift
	shr	r9d, cl	# r, D.9183_119->Rshift
	mov	r8d, eax	# tmp240, col
	and	r8d, DWORD PTR [rdi+24]	# tmp240, D.9183_119->Gmask
	movzx	ecx, BYTE PTR [rdi+15]	# D.9183_119->Gshift, D.9183_119->Gshift
	shr	r8d, cl	# g, D.9183_119->Gshift
	mov	edx, eax	# tmp242, col
	and	edx, DWORD PTR [rdi+28]	# tmp242, D.9183_119->Bmask
	movzx	ecx, BYTE PTR [rdi+16]	# D.9183_119->Bshift, D.9183_119->Bshift
	shr	edx, cl	# b, D.9183_119->Bshift
	cmp	r9d, r8d	# r, g
	jae	.L263	#,
	cmp	r9d, edx	# r, b
	mov	ecx, edx	# min,
	cmovbe	ecx, r9d	# r,, min
	jmp	.L265	#
.L263:
	cmp	r8d, edx	# g, b
	mov	ecx, edx	# min,
	cmovbe	ecx, r8d	# g,, min
.L265:
	cmp	r9d, r8d	# r, g
	jbe	.L267	#,
	cmp	r9d, edx	# r, b
	cmovae	edx, r9d	# r,, max
	jmp	.L269	#
.L267:
	cmp	r8d, edx	# g, b
	cmovae	edx, r8d	# g,, max
.L269:
	sub	edx, ecx	# max, min
	cmp	r13d, 5	# cond,
	ja	.L271	#,
	mov	ecx, r13d	# cond, cond
	jmp	[QWORD PTR .L278[0+rcx*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L278:
	.quad	.L272
	.quad	.L273
	.quad	.L274
	.quad	.L275
	.quad	.L276
	.quad	.L277
	.text
.L272:
	cmp	dl, r12b	# max, threshold
	setb	sil	#, res
	jmp	.L271	#
.L274:
	cmp	dl, r12b	# max, threshold
	setbe	sil	#, res
	jmp	.L271	#
.L273:
	cmp	dl, r12b	# max, threshold
	seta	sil	#, res
	jmp	.L271	#
.L275:
	cmp	dl, r12b	# max, threshold
	setae	sil	#, res
	jmp	.L271	#
.L276:
	cmp	dl, r12b	# max, threshold
	sete	sil	#, res
	jmp	.L271	#
.L277:
	cmp	dl, r12b	# max, threshold
	setne	sil	#, res
.L271:
	test	sil, sil	# res
	je	.L279	#,
	cmp	r14b, 3	# D.9197,
	jne	.L280	#,
	mov	BYTE PTR [r15], r11b	# *pixels_dst_8, col
	movzx	eax, BYTE PTR [rsp+20]	#, %sfp
	mov	BYTE PTR [r15+1], al	# MEM[(u8 *)pixels_dst_8 + 1B],
	movzx	edx, BYTE PTR [rsp+24]	#, %sfp
	mov	BYTE PTR [r15+2], dl	# MEM[(u8 *)pixels_dst_8 + 2B],
	jmp	.L281	#
.L280:
	cmp	r14b, 4	# D.9197,
	jne	.L281	#,
	and	eax, DWORD PTR [rdi+32]	# a, D.9183_119->Amask
	or	eax, r11d	# tmp253, col
	mov	DWORD PTR [r15], eax	# MEM[(u32 *)pixels_dst_8], tmp253
	jmp	.L281	#
.L279:
	cmp	r14b, 3	# D.9197,
	jne	.L282	#,
	mov	BYTE PTR [r15], al	# *pixels_dst_8, col
	mov	edx, eax	# tmp254, col
	shr	edx, 8	# tmp254,
	mov	BYTE PTR [r15+1], dl	# MEM[(u8 *)pixels_dst_8 + 1B], tmp254
	shr	eax, 16	# tmp255,
	mov	BYTE PTR [r15+2], al	# MEM[(u8 *)pixels_dst_8 + 2B], tmp255
	jmp	.L281	#
.L282:
	mov	DWORD PTR [r15], eax	# MEM[(u32 *)pixels_dst_8], col
.L281:
	mov	rax, QWORD PTR [rsp+8]	#, %sfp
	add	QWORD PTR [rsp], rax	# %sfp,
	add	r15, rax	# pixels_dst,
	add	r10d, DWORD PTR [rsp+44]	# pitches, %sfp
.L259:
	cmp	r15, QWORD PTR [rsp+32]	# pixels_dst, %sfp
	jb	.L283	#,
	cmp	DWORD PTR [rbx+40], 0	# imgdst_21(D)->offset,
	jne	.L284	#,
	mov	eax, 0	# D.9226,
	test	DWORD PTR [rbx], 16389	# imgdst_21(D)->flags,
	je	.L255	#,
.L284:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9226,
.L255:
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	GToolsPoint_replace_pixels, .-GToolsPoint_replace_pixels
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"GToolsPoint_histogram_stretching() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC27:
	.string	"GToolsPoint_histogram_stretching() > Unsupported BytesPerPixel format %d\n"
	.text
	.globl	GToolsPoint_histogram_stretching
	.type	GToolsPoint_histogram_stretching, @function
GToolsPoint_histogram_stretching:
.LFB101:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 136	#,
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L289	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L289	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9037, imgsrc_13(D)->format
	test	rax, rax	# D.9037
	je	.L289	#,
	mov	r13, rdx	# x, x
	mov	rdx, QWORD PTR [rsi+8]	# D.9039, imgdst_15(D)->format
	test	rdx, rdx	# D.9039
	je	.L289	#,
	movzx	edi, WORD PTR [rdi+24]	# D.9041, imgsrc_13(D)->pitch
	cmp	di, WORD PTR [rsi+24]	# D.9041, imgdst_15(D)->pitch
	jne	.L289	#,
	mov	r12, rcx	# y, y
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rbp+16], rcx	#,
	jne	.L289	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.9051, D.9037_18->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.9051, D.9039_19->BytesPerPixel
	jne	.L289	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9039_19->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9037_18->Amask,
	jne	.L289	#,
	mov	r11d, DWORD PTR [rdx+20]	#, D.9039_19->Rmask
	cmp	DWORD PTR [rax+20], r11d	# D.9037_18->Rmask,
	jne	.L289	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L289	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9039_19->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9037_18->Ashift,
	jne	.L289	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L289	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9039_19->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9037_18->Bshift,
	jne	.L289	#,
	mov	rsi, QWORD PTR [rbp+32]	#, imgsrc_13(D)->pixels
	mov	QWORD PTR [rsp+8], rsi	# %sfp,
	test	rsi, rsi	#
	je	.L289	#,
	mov	r11, QWORD PTR [rbx+32]	#, imgdst_15(D)->pixels
	mov	QWORD PTR [rsp], r11	# %sfp,
	test	r11, r11	#
	jne	.L290	#,
.L289:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 88	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC26	#,
	call	fwrite	#
	mov	eax, -56	# D.9080,
	jmp	.L291	#
.L290:
	lea	eax, [r15-3]	# tmp247,
	cmp	al, 1	# tmp247,
	jbe	.L292	#,
	movzx	ecx, r15b	# D.9051, D.9051
	mov	edx, OFFSET FLAT:.LC27	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9080,
	jmp	.L291	#
.L292:
	mov	r14d, r8d	# size, size
	movzx	edi, di	#, D.9041
	mov	DWORD PTR [rsp+28], edi	# %sfp,
	movzx	eax, r15b	# D.9051, D.9051
	imul	eax, DWORD PTR [rbp+16]	# D.9051, imgsrc_13(D)->w
	mov	DWORD PTR [rsp+32], eax	# %sfp, D.9051
	mov	eax, edi	#,
	imul	eax, DWORD PTR [rbx+20]	# tmp251, imgdst_15(D)->h
	add	rax, QWORD PTR [rsp]	# tmp251, %sfp
	mov	QWORD PTR [rsp+48], rax	# %sfp, tmp251
	cmp	DWORD PTR [rbx+40], 0	# imgdst_15(D)->offset,
	jne	.L293	#,
	test	DWORD PTR [rbx], 16389	# imgdst_15(D)->flags,
	je	.L294	#,
.L293:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L294:
	mov	DWORD PTR [rsp+20], 0	# %sfp,
	movzx	esi, r15b	#, D.9051
	mov	QWORD PTR [rsp+40], rsi	# %sfp,
	movzx	r11d, r15b	#, D.9051
	mov	DWORD PTR [rsp+60], r11d	# %sfp,
	mov	rsi, QWORD PTR [rsp]	# pixels_dst, %sfp
	jmp	.L295	#
.L310:
	mov	eax, DWORD PTR [rsp+32]	#, %sfp
	cmp	DWORD PTR [rsp+20], eax	# %sfp,
	jne	.L297	#,
	jmp	.L312	#
.L298:
	add	rax, 1	# ivtmp.275,
	jmp	.L296	#
.L312:
	mov	eax, 0	# ivtmp.275,
.L296:
	lea	rcx, [rsi+rax]	# pixels_dst,
	mov	rdx, QWORD PTR [rsp+8]	# pixels_src, %sfp
	add	rdx, rax	# pixels_src, ivtmp.275
	mov	edi, DWORD PTR [rsp+32]	# tmp254, %sfp
	add	edi, eax	# tmp254, ivtmp.275
	cmp	DWORD PTR [rsp+28], edi	# %sfp, tmp254
	ja	.L298	#,
	mov	rsi, rcx	# pixels_dst, pixels_dst
	mov	QWORD PTR [rsp+8], rdx	# %sfp, pixels_src
	mov	DWORD PTR [rsp+20], 0	# %sfp,
.L297:
	mov	rcx, QWORD PTR [rsp+8]	#, %sfp
	mov	edx, DWORD PTR [rcx]	# col, MEM[(u32 *)pixels_src_7]
	mov	rax, QWORD PTR [rbp+8]	# D.9037, imgsrc_13(D)->format
	movzx	ecx, BYTE PTR [rax+14]	#, D.9037_91->Rshift
	mov	DWORD PTR [rsp], ecx	# %sfp,
	mov	edi, edx	# tmp255, col
	and	edi, DWORD PTR [rax+20]	# tmp255, D.9037_91->Rmask
	shr	edi, cl	# tmp256,
	mov	DWORD PTR [rsp+64], edi	# c, tmp256
	movzx	ecx, BYTE PTR [rax+15]	#, D.9037_91->Gshift
	mov	DWORD PTR [rsp+36], ecx	# %sfp,
	mov	edi, edx	# tmp257, col
	and	edi, DWORD PTR [rax+24]	# tmp257, D.9037_91->Gmask
	shr	edi, cl	# tmp258,
	mov	DWORD PTR [rsp+68], edi	# c, tmp258
	movzx	ecx, BYTE PTR [rax+16]	#, D.9037_91->Bshift
	mov	DWORD PTR [rsp+56], ecx	# %sfp,
	mov	edi, edx	# tmp259, col
	and	edi, DWORD PTR [rax+28]	# tmp259, D.9037_91->Bmask
	shr	edi, cl	# tmp260,
	mov	DWORD PTR [rsp+72], edi	# c, tmp260
	cmp	r15b, 4	# D.9051,
	jne	.L299	#,
	and	edx, DWORD PTR [rax+32]	# tmp261, D.9037_91->Amask
	mov	DWORD PTR [rsp+76], edx	# c, tmp261
.L299:
	mov	ecx, 0	# ivtmp.263,
	jmp	.L300	#
.L306:
	mov	eax, DWORD PTR [rsp+64+rcx*4]	# D.9116, MEM[symbol: c, index: ivtmp.263_230, step: 4, offset: 0B]
	movzx	edx, r8b	# D.9117, i
	lea	r9, [rdx+rdx]	# D.9118,
	movzx	r11d, WORD PTR [r13+0+rdx*2]	# D.9120, *D.9119_124
	movzx	r10d, r11w	# D.9121, D.9120
	cmp	eax, r10d	# D.9116, D.9121
	jbe	.L301	#,
	add	r8d, 1	# i,
	jmp	.L302	#
.L301:
	mov	WORD PTR [rsp+18], r11w	# %sfp, D.9120
	sub	rdx, 1	# tmp263,
	movzx	r8d, WORD PTR [r13+0+rdx*2]	# D.9128, *D.9127_133
	movzx	r11d, r8w	#, D.9128
	cmp	eax, r11d	# D.9116,
	jne	.L303	#,
	movsx	rdi, ecx	# D.9115, D.9115
	movzx	eax, WORD PTR [r12+rdx*2]	# *D.9132_141, *D.9132_141
	mov	DWORD PTR [rsp+64+rdi*4], eax	# c, *D.9132_141
	jmp	.L304	#
.L303:
	cmp	eax, r10d	# D.9116, D.9121
	jne	.L305	#,
	movsx	rdi, ecx	# D.9115, D.9115
	movzx	eax, WORD PTR [r12+r9]	# *D.9137_154, *D.9137_154
	mov	DWORD PTR [rsp+64+rdi*4], eax	# c, *D.9137_154
	jmp	.L304	#
.L305:
	movzx	r10d, WORD PTR [r12+rdx*2]	# D.9141, *D.9132_165
	movzx	r9d, WORD PTR [r12+r9]	# *D.9137_159, *D.9137_159
	sub	r9d, r10d	# licz, D.9141
	movzx	edx, r8w	# D.9143, D.9128
	sub	eax, edx	# tmp270, D.9143
	imul	eax, r9d	# licz, licz
	movzx	r8d, WORD PTR [rsp+18]	# D.9120, %sfp
	sub	r8d, edx	# tmp272, D.9143
	mov	edx, eax	# tmp274, licz
	sar	edx, 31	# tmp274,
	idiv	r8d	# tmp272
	movsx	rdi, ecx	# D.9115, D.9115
	add	eax, r10d	# tmp276, D.9141
	mov	DWORD PTR [rsp+64+rdi*4], eax	# c, tmp276
	jmp	.L304	#
.L302:
	movzx	eax, r8b	# i, i
	cmp	ax, r14w	# i, size
	jb	.L306	#,
.L304:
	add	rcx, 1	# ivtmp.263,
	cmp	rcx, 3	# ivtmp.263,
	je	.L307	#,
.L300:
	mov	r8d, 1	# i,
	jmp	.L302	#
.L307:
	mov	edx, DWORD PTR [rsp+64]	# D.9148, c
	movzx	ecx, BYTE PTR [rsp]	#, %sfp
	sal	edx, cl	# D.9148,
	mov	DWORD PTR [rsp+64], edx	# c, D.9148
	mov	eax, DWORD PTR [rsp+68]	# D.9150, c
	movzx	ecx, BYTE PTR [rsp+36]	#, %sfp
	sal	eax, cl	# D.9150,
	mov	DWORD PTR [rsp+68], eax	# c, D.9150
	mov	edi, DWORD PTR [rsp+72]	# D.9152, c
	movzx	ecx, BYTE PTR [rsp+56]	#, %sfp
	sal	edi, cl	# D.9152,
	mov	DWORD PTR [rsp+72], edi	# c, D.9152
	cmp	r15b, 3	# D.9051,
	jne	.L308	#,
	or	eax, edx	# tmp281, D.9148
	mov	ecx, edi	# col, D.9152
	or	ecx, eax	# col, tmp281
	mov	BYTE PTR [rsi], cl	# *pixels_dst_10, col
	mov	eax, ecx	# tmp282, col
	shr	eax, 8	# tmp282,
	mov	BYTE PTR [rsi+1], al	# MEM[(u8 *)pixels_dst_10 + 1B], tmp282
	shr	ecx, 16	# tmp283,
	mov	BYTE PTR [rsi+2], cl	# MEM[(u8 *)pixels_dst_10 + 2B], tmp283
	jmp	.L309	#
.L308:
	cmp	r15b, 4	# D.9051,
	jne	.L309	#,
	or	eax, edx	# tmp284, D.9148
	or	eax, DWORD PTR [rsp+76]	# tmp285, c
	mov	ecx, edi	# tmp286, D.9152
	or	ecx, eax	# tmp286, tmp285
	mov	DWORD PTR [rsi], ecx	# MEM[(u32 *)pixels_dst_10], tmp286
.L309:
	mov	r11, QWORD PTR [rsp+40]	#, %sfp
	add	QWORD PTR [rsp+8], r11	# %sfp,
	add	rsi, r11	# pixels_dst,
	mov	r11d, DWORD PTR [rsp+60]	#, %sfp
	add	DWORD PTR [rsp+20], r11d	# %sfp,
.L295:
	cmp	rsi, QWORD PTR [rsp+48]	# pixels_dst, %sfp
	jb	.L310	#,
	cmp	DWORD PTR [rbx+40], 0	# imgdst_15(D)->offset,
	jne	.L311	#,
	mov	eax, 0	# D.9080,
	test	DWORD PTR [rbx], 16389	# imgdst_15(D)->flags,
	je	.L291	#,
.L311:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9080,
.L291:
	mov	rbx, QWORD PTR [rsp+88]	#,
	mov	rbp, QWORD PTR [rsp+96]	#,
	mov	r12, QWORD PTR [rsp+104]	#,
	mov	r13, QWORD PTR [rsp+112]	#,
	mov	r14, QWORD PTR [rsp+120]	#,
	mov	r15, QWORD PTR [rsp+128]	#,
	add	rsp, 136	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	GToolsPoint_histogram_stretching, .-GToolsPoint_histogram_stretching
	.globl	COND_SYM
	.section	.rodata.str1.1
.LC28:
	.string	"<"
.LC29:
	.string	">"
.LC30:
	.string	"\342\211\244"
.LC31:
	.string	"\342\211\245"
.LC32:
	.string	"="
.LC33:
	.string	"\342\211\240"
	.data
	.align 32
	.type	COND_SYM, @object
	.size	COND_SYM, 48
COND_SYM:
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.globl	NOT_EQUAL_SYM
	.align 8
	.type	NOT_EQUAL_SYM, @object
	.size	NOT_EQUAL_SYM, 8
NOT_EQUAL_SYM:
	.quad	.LC33
	.globl	EQUAL_SYM
	.align 8
	.type	EQUAL_SYM, @object
	.size	EQUAL_SYM, 8
EQUAL_SYM:
	.quad	.LC32
	.globl	GREATER_EQUAL_SYM
	.align 8
	.type	GREATER_EQUAL_SYM, @object
	.size	GREATER_EQUAL_SYM, 8
GREATER_EQUAL_SYM:
	.quad	.LC31
	.globl	LOWER_EQUAL_SYM
	.align 8
	.type	LOWER_EQUAL_SYM, @object
	.size	LOWER_EQUAL_SYM, 8
LOWER_EQUAL_SYM:
	.quad	.LC30
	.globl	GREATER_SYM
	.align 8
	.type	GREATER_SYM, @object
	.size	GREATER_SYM, 8
GREATER_SYM:
	.quad	.LC29
	.globl	LOWER_SYM
	.align 8
	.type	LOWER_SYM, @object
	.size	LOWER_SYM, 8
LOWER_SYM:
	.quad	.LC28
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	858993459
	.long	1070805811
	.align 8
.LC5:
	.long	2920577761
	.long	1071833415
	.align 8
.LC6:
	.long	3264175145
	.long	1069295861
	.align 8
.LC21:
	.long	0
	.long	1081073664
	.align 8
.LC22:
	.long	0
	.long	1071644672
	.align 8
.LC23:
	.long	0
	.long	1072693248
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
