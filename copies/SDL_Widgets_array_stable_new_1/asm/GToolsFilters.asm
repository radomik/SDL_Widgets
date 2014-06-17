	.file	"GToolsFilters.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GToolsFilters.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/GToolsFilters.asm
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
	.string	"GToolsFilter_apply() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC1:
	.string	"GToolsFilter_apply() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC2:
	.string	"GToolsFilter_apply() > Input image to small [w=%hu, h=%hu] (below 3x3 pixels)\n"
	.text
	.globl	GToolsFilter_apply
	.type	GToolsFilter_apply, @function
GToolsFilter_apply:
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 280	#,
	.cfi_def_cfa_offset 288
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
	mov	rax, QWORD PTR [rdi+8]	# D.8470, imgsrc_56(D)->format
	test	rax, rax	# D.8470
	je	.L2	#,
	mov	r13d, edx	# type, type
	mov	rdx, QWORD PTR [rsi+8]	# D.8472, imgdst_58(D)->format
	test	rdx, rdx	# D.8472
	je	.L2	#,
	movzx	esi, WORD PTR [rdi+24]	# D.8474, imgsrc_56(D)->pitch
	cmp	si, WORD PTR [rbx+24]	# D.8474, imgdst_58(D)->pitch
	jne	.L2	#,
	mov	rcx, QWORD PTR [rbx+16]	#,
	cmp	QWORD PTR [rdi+16], rcx	#,
	jne	.L2	#,
	movzx	r12d, BYTE PTR [rax+9]	# D.8484, D.8470_61->BytesPerPixel
	cmp	r12b, BYTE PTR [rdx+9]	# D.8484, D.8472_62->BytesPerPixel
	jne	.L2	#,
	mov	edi, DWORD PTR [rdx+32]	#, D.8472_62->Amask
	cmp	DWORD PTR [rax+32], edi	# D.8470_61->Amask,
	jne	.L2	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.8472_62->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.8470_61->Rmask,
	jne	.L2	#,
	mov	rdi, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rdi	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.8472_62->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.8470_61->Ashift,
	jne	.L2	#,
	movzx	edi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], di	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.8472_62->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.8470_61->Bshift,
	jne	.L2	#,
	mov	rdi, QWORD PTR [rbp+32]	#, imgsrc_56(D)->pixels
	mov	QWORD PTR [rsp+24], rdi	# %sfp,
	test	rdi, rdi	#
	je	.L2	#,
	mov	rdx, QWORD PTR [rbx+32]	# D.8511, imgdst_58(D)->pixels
	test	rdx, rdx	# D.8511
	jne	.L3	#,
.L2:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 74	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	eax, -56	# D.8513,
	jmp	.L4	#
.L3:
	lea	eax, [r12-3]	# tmp527,
	cmp	al, 1	# tmp527,
	jbe	.L5	#,
	movzx	ecx, r12b	# D.8484, D.8484
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.8513,
	jmp	.L4	#
.L5:
	mov	ecx, DWORD PTR [rbp+16]	# D.8520, imgsrc_56(D)->w
	cmp	ecx, 2	# D.8520,
	jle	.L6	#,
	mov	eax, DWORD PTR [rbp+20]	# D.8522, imgsrc_56(D)->h
	cmp	eax, 2	# D.8522,
	jg	.L7	#,
.L6:
	mov	r8d, DWORD PTR [rbp+20]	#, imgsrc_56(D)->h
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 1	# D.8513,
	jmp	.L4	#
.L7:
	movzx	edi, si	#, D.8474
	mov	DWORD PTR [rsp+76], edi	# %sfp,
	movzx	esi, si	#, D.8474
	mov	QWORD PTR [rsp+48], rsi	# %sfp,
	movzx	esi, r12b	#, D.8484
	mov	QWORD PTR [rsp+32], rsi	# %sfp,
	add	rsi, QWORD PTR [rsp+48]	# tmp530, %sfp
	lea	r15, [rdx+rsi]	# off_dst,
	sub	eax, 3	# tmp531,
	imul	eax, edi	# tmp533,
	add	rax, QWORD PTR [rsp+24]	# tmp533, %sfp
	mov	QWORD PTR [rsp+80], rax	# %sfp, tmp533
	lea	r14d, [r12+r12]	# Bpp2,
	add	edi, edi	#
	mov	DWORD PTR [rsp+92], edi	# %sfp,
	movzx	esi, r12b	# D.8484, D.8484
	mov	edx, ecx	# tmp535, D.8520
	imul	edx, esi	# tmp535, D.8484
	movzx	eax, r14b	# Bpp2, Bpp2
	sub	edx, eax	# tmp535, Bpp2
	mov	DWORD PTR [rsp+96], edx	# %sfp, tmp535
	mov	eax, DWORD PTR [rsp+76]	# tmp538, %sfp
	mov	edx, 0	# tmp539,
	div	esi	# D.8484
	mov	edx, eax	# tmp761,
	sub	edx, ecx	# tmp761, D.8520
	cmp	eax, ecx	# tmp538, D.8520
	mov	eax, 0	# tmp762,
	cmova	eax, edx	# tmp761,, sp
	imul	eax, r12d	# sp, D.8484
	mov	BYTE PTR [rsp+103], al	# %sfp, sp
	cmp	DWORD PTR [rbx+40], 0	# imgdst_58(D)->offset,
	jne	.L9	#,
	test	DWORD PTR [rbx], 16389	# imgdst_58(D)->flags,
	je	.L10	#,
.L9:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L10:
	mov	DWORD PTR [rsp+72], 0	# %sfp,
	lea	rdi, [rsp+144]	#,
	mov	QWORD PTR [rsp+16], rdi	# %sfp,
	movzx	r14d, r14b	#, Bpp2
	mov	QWORD PTR [rsp+64], r14	# %sfp,
	lea	rdi, [rsp+128]	#,
	mov	QWORD PTR [rsp+8], rdi	# %sfp,
	mov	r14d, r12d	# D.8484, D.8484
	mov	QWORD PTR [rsp+120], rbx	# %sfp, imgdst
	mov	DWORD PTR [rsp+88], r13d	# %sfp, type
	jmp	.L11	#
.L89:
	mov	eax, DWORD PTR [rsp+96]	# wb, %sfp
	add	rax, QWORD PTR [rsp+24]	# wb, %sfp
	mov	QWORD PTR [rsp+104], rax	# %sfp, wb
	mov	eax, DWORD PTR [rsp+92]	# pitch2, %sfp
	add	rax, QWORD PTR [rsp+24]	# pitch2, %sfp
	mov	QWORD PTR [rsp+56], rax	# %sfp, pitch2
	mov	r13d, 1	# first,
	jmp	.L12	#
.L88:
	cmp	DWORD PTR [rsp+88], 4	# %sfp,
	ja	.L13	#,
	mov	eax, DWORD PTR [rsp+88]	# type, %sfp
	jmp	[QWORD PTR .L19[0+rax*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L19:
	.quad	.L92
	.quad	.L15
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.text
.L23:
	cmp	r14b, 3	# D.8484,
	jne	.L20	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+32]	#, %sfp
	mov	rsi, rbx	#, d_src_off
	lea	rdi, [rsp+208]	#,
	call	__memcpy_chk	#
	movzx	eax, BYTE PTR [rsp+40]	# D.8552, %sfp
	movzx	edx, BYTE PTR [rsp+208]	# color, color
	mov	BYTE PTR [rsp+176+rax], dl	# w_col, color
	movzx	edx, BYTE PTR [rsp+209]	# color, color
	mov	BYTE PTR [rsp+185+rax], dl	# w_col, color
	movzx	edx, BYTE PTR [rsp+210]	# color, color
	mov	BYTE PTR [rsp+194+rax], dl	# w_col, color
	jmp	.L21	#
.L20:
	cmp	r14b, 4	# D.8484,
	jne	.L21	#,
	mov	edx, DWORD PTR [rbx]	# col, MEM[base: d_src_off_6, offset: 0B]
	cmp	BYTE PTR [rsp+40], 4	# %sfp,
	jne	.L22	#,
	mov	rax, QWORD PTR [rbp+8]	# imgsrc_56(D)->format, imgsrc_56(D)->format
	mov	eax, DWORD PTR [rax+32]	#, D.8470_172->Amask
	and	eax, edx	#, col
	mov	DWORD PTR [rsp+72], eax	# %sfp,
.L22:
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	movzx	esi, BYTE PTR [rsp+40]	# D.8552, %sfp
	mov	edi, edx	# tmp556, col
	and	edi, DWORD PTR [rax+20]	# tmp556, D.8470_176->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_176->Rshift, D.8470_176->Rshift
	shr	edi, cl	# tmp558, D.8470_176->Rshift
	mov	BYTE PTR [rsp+176+rsi], dil	# w_col, tmp558
	mov	edi, edx	# tmp560, col
	and	edi, DWORD PTR [rax+24]	# tmp560, D.8470_176->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_176->Gshift, D.8470_176->Gshift
	shr	edi, cl	# tmp562, D.8470_176->Gshift
	mov	BYTE PTR [rsp+185+rsi], dil	# w_col, tmp562
	and	edx, DWORD PTR [rax+28]	# tmp564, D.8470_176->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_176->Bshift, D.8470_176->Bshift
	shr	edx, cl	# tmp566, D.8470_176->Bshift
	mov	BYTE PTR [rsp+194+rsi], dl	# w_col, tmp566
.L21:
	add	BYTE PTR [rsp+40], 1	# %sfp,
	add	rbx, QWORD PTR [rsp+32]	# d_src_off, %sfp
	jmp	.L24	#
.L93:
	mov	rbx, r12	# d_src_off, p_src_off
	mov	rax, QWORD PTR [rsp+64]	#, %sfp
	add	rax, r12	#, p_src_off
	mov	QWORD PTR [rsp+112], rax	# %sfp,
.L24:
	cmp	rbx, QWORD PTR [rsp+112]	# d_src_off, %sfp
	jbe	.L23	#,
	add	r12, QWORD PTR [rsp+48]	# p_src_off, %sfp
	jmp	.L14	#
.L92:
	mov	r12, QWORD PTR [rsp+24]	# p_src_off, %sfp
	mov	BYTE PTR [rsp+40], 0	# %sfp,
.L14:
	cmp	r12, QWORD PTR [rsp+56]	# p_src_off, %sfp
	jbe	.L93	#,
	mov	r9d, DWORD PTR [rsp+72]	# a, %sfp
	mov	eax, 0	# ivtmp.23,
	jmp	.L25	#
.L27:
	movsx	r8, esi	# D.8581, D.8581
	movzx	r10d, BYTE PTR [r8-48+rdx]	# D.8582, w_col
	lea	r11d, [rsi+1]	# D.8583,
	movsx	r8, r11d	# D.8583, D.8583
	movzx	r8d, BYTE PTR [r8-48+rdx]	# D.8584, w_col
	cmp	r10b, r8b	# D.8582, D.8584
	jbe	.L26	#,
	movsx	r11, r11d	# D.8583, D.8583
	mov	BYTE PTR [r11-48+rdx], r10b	# w_col, D.8582
	movsx	rsi, esi	# D.8581, D.8581
	mov	BYTE PTR [rsi-48+rdx], r8b	# w_col, D.8584
.L26:
	add	edi, 1	# j,
.L29:
	movzx	esi, dil	# D.8581, j
	cmp	esi, ecx	# D.8581, ivtmp.21
	jl	.L27	#,
	sub	ecx, 1	# ivtmp.21,
	cmp	ecx, -1	# ivtmp.21,
	je	.L28	#,
.L31:
	mov	edi, 0	# j,
	jmp	.L29	#
.L28:
	add	eax, 1	# ivtmp.23,
	cmp	eax, 3	# ivtmp.23,
	je	.L30	#,
.L25:
	mov	ecx, 8	# ivtmp.21,
	movsx	rdx, eax	# D.8552, ivtmp.23
	imul	rdx, rdx, 9	# tmp794, D.8552,
	lea	rsi, [rsp+224]	#,
	add	rdx, rsi	# tmp795,
	jmp	.L31	#
.L30:
	cmp	r14b, 3	# D.8484,
	jne	.L32	#,
	test	r13b, r13b	# first
	je	.L33	#,
	movzx	eax, BYTE PTR [rsp+180]	# D.8594, w_col
	mov	BYTE PTR [r15-3], al	# MEM[(uchar *)off_dst_4 + -3B], D.8594
	mov	BYTE PTR [r15], al	# *off_dst_4, D.8594
	movzx	eax, BYTE PTR [rsp+189]	# D.8596, w_col
	mov	BYTE PTR [r15-2], al	# MEM[(uchar *)off_dst_4 + -2B], D.8596
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8596
	movzx	eax, BYTE PTR [rsp+198]	# D.8597, w_col
	mov	BYTE PTR [r15-1], al	# MEM[(uchar *)off_dst_4 + -1B], D.8597
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], D.8597
	add	r15, 3	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L33:
	movzx	eax, BYTE PTR [rsp+180]	# w_col, w_col
	mov	BYTE PTR [r15], al	# *off_dst_4, w_col
	movzx	eax, BYTE PTR [rsp+189]	# w_col, w_col
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], w_col
	movzx	eax, BYTE PTR [rsp+198]	# w_col, w_col
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], w_col
	add	r15, 3	# off_dst,
	jmp	.L13	#
.L32:
	cmp	r14b, 4	# D.8484,
	jne	.L13	#,
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	movzx	edx, BYTE PTR [rsp+189]	# w_col, w_col
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_257->Gshift, D.8470_257->Gshift
	sal	edx, cl	# tmp598, D.8470_257->Gshift
	movzx	esi, BYTE PTR [rsp+180]	# w_col, w_col
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_257->Rshift, D.8470_257->Rshift
	sal	esi, cl	# tmp601, D.8470_257->Rshift
	or	edx, esi	# tmp602, tmp601
	movzx	esi, BYTE PTR [rsp+198]	# w_col, w_col
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_257->Bshift, D.8470_257->Bshift
	mov	eax, esi	# tmp605, w_col
	sal	eax, cl	# tmp605, D.8470_257->Bshift
	or	eax, edx	# tmp606, tmp602
	or	eax, r9d	# col, a
	test	r13b, r13b	# first
	je	.L34	#,
	mov	DWORD PTR [r15-16], eax	# MEM[(unsigned int *)off_dst_4 + -16B], col
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
	jmp	.L35	#
.L34:
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
.L35:
	add	r15, 4	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L15:
	mov	ecx, 3	# tmp610,
	mov	eax, 0	# tmp609,
	mov	rdi, QWORD PTR [rsp+8]	# tmp608, %sfp
	rep stosd
	mov	r12, QWORD PTR [rsp+24]	# p_src_off, %sfp
	jmp	.L36	#
.L40:
	cmp	r14b, 3	# D.8484,
	jne	.L37	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+32]	#, %sfp
	mov	rsi, rbx	#, d_src_off
	lea	rdi, [rsp+208]	#,
	call	__memcpy_chk	#
	movzx	eax, BYTE PTR [rsp+208]	# color, color
	add	DWORD PTR [rsp+128], eax	# wu_col, color
	movzx	eax, BYTE PTR [rsp+209]	# color, color
	add	DWORD PTR [rsp+132], eax	# wu_col, color
	movzx	eax, BYTE PTR [rsp+210]	# color, color
	add	DWORD PTR [rsp+136], eax	# wu_col, color
	jmp	.L38	#
.L37:
	cmp	r14b, 4	# D.8484,
	jne	.L38	#,
	mov	edx, DWORD PTR [rbx]	# col, MEM[base: d_src_off_7, offset: 0B]
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	mov	esi, edx	# tmp616, col
	and	esi, DWORD PTR [rax+20]	# tmp616, D.8470_304->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_304->Rshift, D.8470_304->Rshift
	shr	esi, cl	# tmp618, D.8470_304->Rshift
	add	DWORD PTR [rsp+128], esi	# wu_col, tmp618
	mov	esi, edx	# tmp619, col
	and	esi, DWORD PTR [rax+24]	# tmp619, D.8470_304->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_304->Gshift, D.8470_304->Gshift
	shr	esi, cl	# tmp621, D.8470_304->Gshift
	add	DWORD PTR [rsp+132], esi	# wu_col, tmp621
	and	edx, DWORD PTR [rax+28]	# tmp622, D.8470_304->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_304->Bshift, D.8470_304->Bshift
	shr	edx, cl	# tmp624, D.8470_304->Bshift
	add	DWORD PTR [rsp+136], edx	# wu_col, tmp624
.L38:
	add	rbx, QWORD PTR [rsp+32]	# d_src_off, %sfp
	jmp	.L41	#
.L95:
	mov	rbx, r12	# d_src_off, p_src_off
	mov	rdi, QWORD PTR [rsp+64]	#, %sfp
	add	rdi, r12	#, p_src_off
	mov	QWORD PTR [rsp+40], rdi	# %sfp,
.L41:
	cmp	rbx, QWORD PTR [rsp+40]	# d_src_off, %sfp
	jbe	.L40	#,
	add	r12, QWORD PTR [rsp+48]	# p_src_off, %sfp
.L36:
	cmp	r12, QWORD PTR [rsp+56]	# p_src_off, %sfp
	jbe	.L95	#,
	mov	r8d, DWORD PTR [rsp+72]	# a, %sfp
	mov	eax, DWORD PTR [rsp+128]	# wu_col, wu_col
	mov	ecx, 9	# tmp630,
	mov	edx, 0	# tmp629,
	div	ecx	# tmp630
	mov	esi, eax	# tmp628, wu_col
	mov	DWORD PTR [rsp+128], eax	# wu_col, tmp628
	mov	eax, DWORD PTR [rsp+132]	# wu_col, wu_col
	mov	edx, 0	# tmp633,
	div	ecx	# tmp630
	mov	edi, eax	# tmp632, wu_col
	mov	DWORD PTR [rsp+132], eax	# wu_col, tmp632
	mov	eax, DWORD PTR [rsp+136]	# wu_col, wu_col
	mov	edx, 0	# tmp637,
	div	ecx	# tmp630
	mov	DWORD PTR [rsp+136], eax	# wu_col, tmp636
	cmp	r14b, 3	# D.8484,
	jne	.L42	#,
	test	r13b, r13b	# first
	je	.L43	#,
	mov	BYTE PTR [r15-3], sil	# MEM[(uchar *)off_dst_4 + -3B], tmp628
	mov	BYTE PTR [r15], sil	# *off_dst_4, tmp628
	mov	eax, DWORD PTR [rsp+132]	# wu_col, wu_col
	mov	BYTE PTR [r15-2], al	# MEM[(uchar *)off_dst_4 + -2B], wu_col
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], wu_col
	mov	eax, DWORD PTR [rsp+136]	# wu_col, wu_col
	mov	BYTE PTR [r15-1], al	# MEM[(uchar *)off_dst_4 + -1B], wu_col
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], wu_col
	add	r15, 3	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L43:
	mov	BYTE PTR [r15], sil	# *off_dst_4, tmp628
	mov	eax, DWORD PTR [rsp+132]	# wu_col, wu_col
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], wu_col
	mov	eax, DWORD PTR [rsp+136]	# wu_col, wu_col
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], wu_col
	add	r15, 3	# off_dst,
	jmp	.L13	#
.L42:
	cmp	r14b, 4	# D.8484,
	jne	.L13	#,
	mov	rdx, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	movzx	ecx, BYTE PTR [rdx+14]	# D.8470_367->Rshift, D.8470_367->Rshift
	sal	esi, cl	# D.8645, D.8470_367->Rshift
	mov	DWORD PTR [rsp+128], esi	# wu_col, D.8645
	movzx	ecx, BYTE PTR [rdx+15]	# D.8470_367->Gshift, D.8470_367->Gshift
	sal	edi, cl	# D.8646, D.8470_367->Gshift
	mov	DWORD PTR [rsp+132], edi	# wu_col, D.8646
	movzx	ecx, BYTE PTR [rdx+16]	# D.8470_367->Bshift, D.8470_367->Bshift
	sal	eax, cl	# D.8647, D.8470_367->Bshift
	mov	DWORD PTR [rsp+136], eax	# wu_col, D.8647
	or	esi, edi	# tmp646, D.8646
	or	eax, esi	# tmp647, tmp646
	or	eax, r8d	# col, a
	test	r13b, r13b	# first
	je	.L44	#,
	mov	DWORD PTR [r15-16], eax	# MEM[(unsigned int *)off_dst_4 + -16B], col
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
	jmp	.L45	#
.L44:
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
.L45:
	add	r15, 4	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L16:
	mov	WORD PTR [rsp+160], -1	# min,
	mov	BYTE PTR [rsp+162], -1	# min,
	mov	r12, QWORD PTR [rsp+24]	# p_src_off, %sfp
	jmp	.L46	#
.L53:
	cmp	r14b, 3	# D.8484,
	jne	.L47	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+32]	#, %sfp
	mov	rsi, rbx	#, d_src_off
	lea	rdi, [rsp+208]	#,
	call	__memcpy_chk	#
	jmp	.L48	#
.L47:
	cmp	r14b, 4	# D.8484,
	jne	.L48	#,
	mov	edx, DWORD PTR [rbx]	# col, MEM[base: d_src_off_8, offset: 0B]
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	mov	esi, edx	# tmp651, col
	and	esi, DWORD PTR [rax+20]	# tmp651, D.8470_402->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_402->Rshift, D.8470_402->Rshift
	shr	esi, cl	# tmp653, D.8470_402->Rshift
	mov	BYTE PTR [rsp+208], sil	# color, tmp653
	mov	esi, edx	# tmp654, col
	and	esi, DWORD PTR [rax+24]	# tmp654, D.8470_402->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_402->Gshift, D.8470_402->Gshift
	shr	esi, cl	# tmp656, D.8470_402->Gshift
	mov	BYTE PTR [rsp+209], sil	# color, tmp656
	and	edx, DWORD PTR [rax+28]	# tmp657, D.8470_402->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_402->Bshift, D.8470_402->Bshift
	shr	edx, cl	# tmp659, D.8470_402->Bshift
	mov	BYTE PTR [rsp+210], dl	# color, tmp659
.L48:
	movzx	eax, BYTE PTR [rsp+208]	# D.8553, color
	cmp	al, BYTE PTR [rsp+160]	# D.8553, min
	jae	.L50	#,
	mov	BYTE PTR [rsp+160], al	# min, D.8553
.L50:
	movzx	eax, BYTE PTR [rsp+209]	# D.8554, color
	cmp	al, BYTE PTR [rsp+161]	# D.8554, min
	jae	.L51	#,
	mov	BYTE PTR [rsp+161], al	# min, D.8554
.L51:
	movzx	eax, BYTE PTR [rsp+210]	# D.8555, color
	cmp	al, BYTE PTR [rsp+162]	# D.8555, min
	jae	.L52	#,
	mov	BYTE PTR [rsp+162], al	# min, D.8555
.L52:
	add	rbx, QWORD PTR [rsp+32]	# d_src_off, %sfp
	jmp	.L54	#
.L96:
	mov	rbx, r12	# d_src_off, p_src_off
	mov	rax, QWORD PTR [rsp+64]	#, %sfp
	add	rax, r12	#, p_src_off
	mov	QWORD PTR [rsp+40], rax	# %sfp,
.L54:
	cmp	rbx, QWORD PTR [rsp+40]	# d_src_off, %sfp
	jbe	.L53	#,
	add	r12, QWORD PTR [rsp+48]	# p_src_off, %sfp
.L46:
	cmp	r12, QWORD PTR [rsp+56]	# p_src_off, %sfp
	jbe	.L96	#,
	mov	edx, DWORD PTR [rsp+72]	# a, %sfp
	cmp	r14b, 3	# D.8484,
	jne	.L55	#,
	test	r13b, r13b	# first
	je	.L56	#,
	movzx	eax, BYTE PTR [rsp+160]	# D.8660, min
	mov	BYTE PTR [r15-3], al	# MEM[(uchar *)off_dst_4 + -3B], D.8660
	mov	BYTE PTR [r15], al	# *off_dst_4, D.8660
	movzx	eax, BYTE PTR [rsp+161]	# D.8663, min
	mov	BYTE PTR [r15-2], al	# MEM[(uchar *)off_dst_4 + -2B], D.8663
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8663
	movzx	eax, BYTE PTR [rsp+162]	# D.8666, min
	mov	BYTE PTR [r15-1], al	# MEM[(uchar *)off_dst_4 + -1B], D.8666
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], D.8666
	add	r15, 3	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L56:
	movzx	eax, BYTE PTR [rsp+160]	# D.8660, min
	mov	BYTE PTR [r15], al	# *off_dst_4, D.8660
	movzx	eax, BYTE PTR [rsp+161]	# D.8663, min
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8663
	movzx	eax, BYTE PTR [rsp+162]	# D.8666, min
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], D.8666
	add	r15, 3	# off_dst,
	jmp	.L13	#
.L55:
	cmp	r14b, 4	# D.8484,
	jne	.L13	#,
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	movzx	esi, BYTE PTR [rsp+161]	# min, min
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_461->Gshift, D.8470_461->Gshift
	sal	esi, cl	# tmp664, D.8470_461->Gshift
	movzx	edi, BYTE PTR [rsp+160]	# min, min
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_461->Rshift, D.8470_461->Rshift
	sal	edi, cl	# tmp667, D.8470_461->Rshift
	or	esi, edi	# tmp668, tmp667
	movzx	edi, BYTE PTR [rsp+162]	# min, min
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_461->Bshift, D.8470_461->Bshift
	mov	eax, edi	# tmp671, min
	sal	eax, cl	# tmp671, D.8470_461->Bshift
	or	eax, esi	# tmp672, tmp668
	or	eax, edx	# col, a
	test	r13b, r13b	# first
	je	.L57	#,
	mov	DWORD PTR [r15-16], eax	# MEM[(unsigned int *)off_dst_4 + -16B], col
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
	jmp	.L58	#
.L57:
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
.L58:
	add	r15, 4	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L17:
	mov	ecx, 3	# tmp676,
	mov	eax, 0	# tmp675,
	mov	rdi, QWORD PTR [rsp+16]	# tmp674, %sfp
	rep stosb
	mov	r12, QWORD PTR [rsp+24]	# p_src_off, %sfp
	jmp	.L59	#
.L66:
	cmp	r14b, 3	# D.8484,
	jne	.L60	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+32]	#, %sfp
	mov	rsi, rbx	#, d_src_off
	lea	rdi, [rsp+208]	#,
	call	__memcpy_chk	#
	jmp	.L61	#
.L60:
	cmp	r14b, 4	# D.8484,
	jne	.L61	#,
	mov	edx, DWORD PTR [rbx]	# col, MEM[base: d_src_off_9, offset: 0B]
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	mov	esi, edx	# tmp679, col
	and	esi, DWORD PTR [rax+20]	# tmp679, D.8470_495->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_495->Rshift, D.8470_495->Rshift
	shr	esi, cl	# tmp681, D.8470_495->Rshift
	mov	BYTE PTR [rsp+208], sil	# color, tmp681
	mov	esi, edx	# tmp682, col
	and	esi, DWORD PTR [rax+24]	# tmp682, D.8470_495->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_495->Gshift, D.8470_495->Gshift
	shr	esi, cl	# tmp684, D.8470_495->Gshift
	mov	BYTE PTR [rsp+209], sil	# color, tmp684
	and	edx, DWORD PTR [rax+28]	# tmp685, D.8470_495->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_495->Bshift, D.8470_495->Bshift
	shr	edx, cl	# tmp687, D.8470_495->Bshift
	mov	BYTE PTR [rsp+210], dl	# color, tmp687
.L61:
	movzx	eax, BYTE PTR [rsp+208]	# D.8553, color
	cmp	al, BYTE PTR [rsp+144]	# D.8553, max
	jbe	.L63	#,
	mov	BYTE PTR [rsp+144], al	# max, D.8553
.L63:
	movzx	eax, BYTE PTR [rsp+209]	# D.8554, color
	cmp	al, BYTE PTR [rsp+145]	# D.8554, max
	jbe	.L64	#,
	mov	BYTE PTR [rsp+145], al	# max, D.8554
.L64:
	movzx	eax, BYTE PTR [rsp+210]	# D.8555, color
	cmp	al, BYTE PTR [rsp+146]	# D.8555, max
	jbe	.L65	#,
	mov	BYTE PTR [rsp+146], al	# max, D.8555
.L65:
	add	rbx, QWORD PTR [rsp+32]	# d_src_off, %sfp
	jmp	.L67	#
.L97:
	mov	rbx, r12	# d_src_off, p_src_off
	mov	rcx, QWORD PTR [rsp+64]	#, %sfp
	add	rcx, r12	#, p_src_off
	mov	QWORD PTR [rsp+40], rcx	# %sfp,
.L67:
	cmp	rbx, QWORD PTR [rsp+40]	# d_src_off, %sfp
	jbe	.L66	#,
	add	r12, QWORD PTR [rsp+48]	# p_src_off, %sfp
.L59:
	cmp	r12, QWORD PTR [rsp+56]	# p_src_off, %sfp
	jbe	.L97	#,
	mov	edx, DWORD PTR [rsp+72]	# a, %sfp
	cmp	r14b, 3	# D.8484,
	jne	.L68	#,
	test	r13b, r13b	# first
	je	.L69	#,
	movzx	eax, BYTE PTR [rsp+144]	# D.8690, max
	mov	BYTE PTR [r15-3], al	# MEM[(uchar *)off_dst_4 + -3B], D.8690
	mov	BYTE PTR [r15], al	# *off_dst_4, D.8690
	movzx	eax, BYTE PTR [rsp+145]	# D.8693, max
	mov	BYTE PTR [r15-2], al	# MEM[(uchar *)off_dst_4 + -2B], D.8693
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8693
	movzx	eax, BYTE PTR [rsp+146]	# D.8696, max
	mov	BYTE PTR [r15-1], al	# MEM[(uchar *)off_dst_4 + -1B], D.8696
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], D.8696
	add	r15, 3	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L69:
	movzx	eax, BYTE PTR [rsp+144]	# D.8690, max
	mov	BYTE PTR [r15], al	# *off_dst_4, D.8690
	movzx	eax, BYTE PTR [rsp+145]	# D.8693, max
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8693
	movzx	eax, BYTE PTR [rsp+146]	# D.8696, max
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], D.8696
	add	r15, 3	# off_dst,
	jmp	.L13	#
.L68:
	cmp	r14b, 4	# D.8484,
	jne	.L13	#,
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	movzx	esi, BYTE PTR [rsp+145]	# max, max
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_554->Gshift, D.8470_554->Gshift
	sal	esi, cl	# tmp692, D.8470_554->Gshift
	movzx	edi, BYTE PTR [rsp+144]	# max, max
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_554->Rshift, D.8470_554->Rshift
	sal	edi, cl	# tmp695, D.8470_554->Rshift
	or	esi, edi	# tmp696, tmp695
	movzx	edi, BYTE PTR [rsp+146]	# max, max
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_554->Bshift, D.8470_554->Bshift
	mov	eax, edi	# tmp699, max
	sal	eax, cl	# tmp699, D.8470_554->Bshift
	or	eax, esi	# tmp700, tmp696
	or	eax, edx	# col, a
	test	r13b, r13b	# first
	je	.L70	#,
	mov	DWORD PTR [r15-16], eax	# MEM[(unsigned int *)off_dst_4 + -16B], col
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
	jmp	.L71	#
.L70:
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
.L71:
	add	r15, 4	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L18:
	mov	ecx, 3	# tmp704,
	mov	eax, 0	# tmp703,
	mov	rdi, QWORD PTR [rsp+16]	# tmp702, %sfp
	rep stosb
	mov	WORD PTR [rsp+160], -1	# min,
	mov	BYTE PTR [rsp+162], -1	# min,
	mov	r12, QWORD PTR [rsp+24]	# p_src_off, %sfp
	jmp	.L72	#
.L82:
	cmp	r14b, 3	# D.8484,
	jne	.L73	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+32]	#, %sfp
	mov	rsi, rbx	#, d_src_off
	lea	rdi, [rsp+208]	#,
	call	__memcpy_chk	#
	jmp	.L74	#
.L73:
	cmp	r14b, 4	# D.8484,
	jne	.L74	#,
	mov	edx, DWORD PTR [rbx]	# col, MEM[base: d_src_off_10, offset: 0B]
	mov	rax, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	mov	esi, edx	# tmp708, col
	and	esi, DWORD PTR [rax+20]	# tmp708, D.8470_588->Rmask
	movzx	ecx, BYTE PTR [rax+14]	# D.8470_588->Rshift, D.8470_588->Rshift
	shr	esi, cl	# tmp710, D.8470_588->Rshift
	mov	BYTE PTR [rsp+208], sil	# color, tmp710
	mov	esi, edx	# tmp711, col
	and	esi, DWORD PTR [rax+24]	# tmp711, D.8470_588->Gmask
	movzx	ecx, BYTE PTR [rax+15]	# D.8470_588->Gshift, D.8470_588->Gshift
	shr	esi, cl	# tmp713, D.8470_588->Gshift
	mov	BYTE PTR [rsp+209], sil	# color, tmp713
	and	edx, DWORD PTR [rax+28]	# tmp714, D.8470_588->Bmask
	movzx	ecx, BYTE PTR [rax+16]	# D.8470_588->Bshift, D.8470_588->Bshift
	shr	edx, cl	# tmp716, D.8470_588->Bshift
	mov	BYTE PTR [rsp+210], dl	# color, tmp716
.L74:
	movzx	ecx, BYTE PTR [rsp+208]	# D.8553, color
	cmp	cl, BYTE PTR [rsp+144]	# D.8553, max
	movzx	eax, BYTE PTR [rsp+144]	# tmp770, max
	cmova	eax, ecx	# D.8553,, tmp769
	mov	BYTE PTR [rsp+144], al	# max, tmp769
	movzx	eax, BYTE PTR [rsp+209]	# D.8554, color
	cmp	al, BYTE PTR [rsp+145]	# D.8554, max
	movzx	edx, BYTE PTR [rsp+145]	# tmp831, max
	cmova	edx, eax	# D.8554,, tmp830
	mov	BYTE PTR [rsp+145], dl	# max, tmp830
	movzx	edx, BYTE PTR [rsp+210]	# D.8555, color
	cmp	dl, BYTE PTR [rsp+146]	# D.8555, max
	movzx	esi, BYTE PTR [rsp+146]	# tmp772, max
	cmova	esi, edx	# D.8555,, tmp771
	mov	BYTE PTR [rsp+146], sil	# max, tmp771
	cmp	cl, BYTE PTR [rsp+160]	# D.8553, min
	jae	.L79	#,
	mov	BYTE PTR [rsp+160], cl	# min, D.8553
.L79:
	cmp	al, BYTE PTR [rsp+161]	# D.8554, min
	jae	.L80	#,
	mov	BYTE PTR [rsp+161], al	# min, D.8554
.L80:
	cmp	dl, BYTE PTR [rsp+162]	# D.8555, min
	jae	.L81	#,
	mov	BYTE PTR [rsp+162], dl	# min, D.8555
.L81:
	add	rbx, QWORD PTR [rsp+32]	# d_src_off, %sfp
	jmp	.L83	#
.L98:
	mov	rbx, r12	# d_src_off, p_src_off
	mov	rsi, QWORD PTR [rsp+64]	#, %sfp
	add	rsi, r12	#, p_src_off
	mov	QWORD PTR [rsp+40], rsi	# %sfp,
.L83:
	cmp	rbx, QWORD PTR [rsp+40]	# d_src_off, %sfp
	jbe	.L82	#,
	add	r12, QWORD PTR [rsp+48]	# p_src_off, %sfp
.L72:
	cmp	r12, QWORD PTR [rsp+56]	# p_src_off, %sfp
	jbe	.L98	#,
	mov	edi, DWORD PTR [rsp+72]	# a, %sfp
	movzx	eax, BYTE PTR [rsp+144]	# max, max
	sub	eax, DWORD PTR [rsp+160]	# D.8732, min
	mov	BYTE PTR [rsp+144], al	# max, D.8732
	movzx	ecx, BYTE PTR [rsp+145]	# max, max
	sub	cl, BYTE PTR [rsp+161]	# D.8733, min
	mov	BYTE PTR [rsp+145], cl	# max, D.8733
	movzx	esi, BYTE PTR [rsp+146]	# max, max
	sub	sil, BYTE PTR [rsp+162]	# D.8734, min
	mov	BYTE PTR [rsp+146], sil	# max, D.8734
	cmp	r14b, 3	# D.8484,
	jne	.L84	#,
	test	r13b, r13b	# first
	je	.L85	#,
	mov	BYTE PTR [r15-3], al	# MEM[(uchar *)off_dst_4 + -3B], D.8732
	mov	BYTE PTR [r15], al	# *off_dst_4, D.8732
	movzx	eax, BYTE PTR [rsp+145]	# D.8693, max
	mov	BYTE PTR [r15-2], al	# MEM[(uchar *)off_dst_4 + -2B], D.8693
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8693
	movzx	eax, BYTE PTR [rsp+146]	# D.8696, max
	mov	BYTE PTR [r15-1], al	# MEM[(uchar *)off_dst_4 + -1B], D.8696
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], D.8696
	add	r15, 3	# off_dst,
	mov	r13d, 0	# first,
	jmp	.L13	#
.L85:
	mov	BYTE PTR [r15], al	# *off_dst_4, D.8732
	movzx	eax, BYTE PTR [rsp+145]	# D.8693, max
	mov	BYTE PTR [r15+1], al	# MEM[(uchar *)off_dst_4 + 1B], D.8693
	movzx	eax, BYTE PTR [rsp+146]	# D.8696, max
	mov	BYTE PTR [r15+2], al	# MEM[(uchar *)off_dst_4 + 2B], D.8696
	add	r15, 3	# off_dst,
	jmp	.L13	#
.L84:
	cmp	r14b, 4	# D.8484,
	jne	.L13	#,
	mov	rdx, QWORD PTR [rbp+8]	# D.8470, imgsrc_56(D)->format
	movzx	r8d, cl	# D.8733, D.8733
	movzx	ecx, BYTE PTR [rdx+15]	# D.8470_665->Gshift, D.8470_665->Gshift
	sal	r8d, cl	# tmp727, D.8470_665->Gshift
	movzx	eax, al	# D.8732, D.8732
	movzx	ecx, BYTE PTR [rdx+14]	# D.8470_665->Rshift, D.8470_665->Rshift
	sal	eax, cl	# tmp730, D.8470_665->Rshift
	or	eax, r8d	# tmp731, tmp727
	movzx	esi, sil	# D.8734, D.8734
	movzx	ecx, BYTE PTR [rdx+16]	# D.8470_665->Bshift, D.8470_665->Bshift
	sal	esi, cl	# tmp734, D.8470_665->Bshift
	or	eax, esi	# tmp735, tmp734
	or	eax, edi	# col, a
	test	r13b, r13b	# first
	je	.L86	#,
	mov	DWORD PTR [r15-16], eax	# MEM[(unsigned int *)off_dst_4 + -16B], col
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
	jmp	.L87	#
.L86:
	mov	DWORD PTR [r15], eax	# MEM[(unsigned int *)off_dst_4], col
.L87:
	add	r15, 4	# off_dst,
	mov	r13d, 0	# first,
.L13:
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	add	QWORD PTR [rsp+24], rdi	# %sfp,
	add	QWORD PTR [rsp+56], rdi	# %sfp,
.L12:
	mov	rax, QWORD PTR [rsp+104]	#, %sfp
	cmp	QWORD PTR [rsp+24], rax	# %sfp,
	jb	.L88	#,
	mov	rsi, r15	# tmp736, off_dst
	sub	rsi, QWORD PTR [rsp+32]	# tmp736, %sfp
	mov	rdx, QWORD PTR [rsp+32]	#, %sfp
	mov	rdi, r15	#, off_dst
	call	memcpy	#
	mov	rdx, QWORD PTR [rsp+24]	# off_src, %sfp
	add	rdx, QWORD PTR [rsp+64]	# off_src, %sfp
	movzx	eax, BYTE PTR [rsp+103]	# D.8749, %sfp
	add	r15, rax	# off_dst, D.8749
	add	r15, QWORD PTR [rsp+64]	# off_dst, %sfp
	add	rax, rdx	#, off_src
	mov	QWORD PTR [rsp+24], rax	# %sfp,
.L11:
	mov	rcx, QWORD PTR [rsp+80]	#, %sfp
	cmp	QWORD PTR [rsp+24], rcx	# %sfp,
	jbe	.L89	#,
	mov	rbx, QWORD PTR [rsp+120]	# imgdst, %sfp
	mov	rdi, QWORD PTR [rbx+32]	# D.8511, imgdst_58(D)->pixels
	mov	ebp, DWORD PTR [rbx+20]	# tmp742, imgdst_58(D)->h
	sub	ebp, 1	# tmp742,
	imul	ebp, DWORD PTR [rsp+76]	# tmp745, %sfp
	add	rbp, rdi	# d_src_off, D.8511
	mov	rsi, QWORD PTR [rsp+48]	# tmp746, %sfp
	add	rsi, rdi	# tmp746, D.8511
	mov	rdx, QWORD PTR [rsp+48]	#, %sfp
	call	memcpy	#
	mov	rsi, rbp	# tmp752, d_src_off
	sub	rsi, QWORD PTR [rsp+48]	# tmp752, %sfp
	mov	rdx, QWORD PTR [rsp+48]	#, %sfp
	mov	rdi, rbp	#, d_src_off
	call	memcpy	#
	cmp	DWORD PTR [rbx+40], 0	# imgdst_58(D)->offset,
	jne	.L90	#,
	mov	eax, 0	# D.8513,
	test	DWORD PTR [rbx], 16389	# imgdst_58(D)->flags,
	je	.L4	#,
.L90:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.8513,
.L4:
	mov	rbx, QWORD PTR [rsp+232]	#,
	mov	rbp, QWORD PTR [rsp+240]	#,
	mov	r12, QWORD PTR [rsp+248]	#,
	mov	r13, QWORD PTR [rsp+256]	#,
	mov	r14, QWORD PTR [rsp+264]	#,
	mov	r15, QWORD PTR [rsp+272]	#,
	add	rsp, 280	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	GToolsFilter_apply, .-GToolsFilter_apply
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
