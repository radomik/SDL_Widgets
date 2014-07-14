	.file	"GToolsMorph.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GToolsMorph.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/GToolsMorph.asm
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
	.string	"GToolsMorph_dilate() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC1:
	.string	"GToolsMorph_dilate() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC2:
	.string	"GToolsMorph_dilate() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC3:
	.string	"GToolsMorph_dilate() > Structuring element origin not exists or is outside of image.\n"
	.text
	.globl	GToolsMorph_dilate
	.type	GToolsMorph_dilate, @function
GToolsMorph_dilate:
.LFB103:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 248	#,
	.cfi_def_cfa_offset 256
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
	mov	rax, QWORD PTR [rdi+8]	# D.10164, imgsrc_33(D)->format
	test	rax, rax	# D.10164
	je	.L2	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.10166, imgdst_35(D)->format
	test	rdx, rdx	# D.10166
	je	.L2	#,
	movzx	r13d, WORD PTR [rdi+24]	# D.10168, imgsrc_33(D)->pitch
	cmp	r13w, WORD PTR [rsi+24]	# D.10168, imgdst_35(D)->pitch
	jne	.L2	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rcx	#,
	jne	.L2	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.10178, D.10164_38->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.10178, D.10166_39->BytesPerPixel
	jne	.L2	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.10166_39->Amask
	cmp	DWORD PTR [rax+32], esi	# D.10164_38->Amask,
	jne	.L2	#,
	mov	edi, DWORD PTR [rdx+20]	#, D.10166_39->Rmask
	cmp	DWORD PTR [rax+20], edi	# D.10164_38->Rmask,
	jne	.L2	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.10166_39->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.10164_38->Ashift,
	jne	.L2	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.10166_39->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.10164_38->Bshift,
	jne	.L2	#,
	mov	rsi, QWORD PTR [rbp+32]	#, imgsrc_33(D)->pixels
	mov	QWORD PTR [rsp+48], rsi	# %sfp,
	test	rsi, rsi	#
	je	.L2	#,
	mov	r14, QWORD PTR [rbx+32]	# off_dst, imgdst_35(D)->pixels
	test	r14, r14	# off_dst
	jne	.L3	#,
.L2:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 74	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	eax, -56	# D.10207,
	jmp	.L40	#
.L3:
	lea	eax, [r15-3]	# tmp284,
	cmp	al, 1	# tmp284,
	jbe	.L5	#,
	movzx	ecx, r15b	# D.10178, D.10178
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.10207,
	jmp	.L40	#
.L5:
	test	r12, r12	# str_elem
	je	.L6	#,
	movzx	r8d, WORD PTR [r12+218]	# actX, str_elem_88(D)->actX
	mov	esi, DWORD PTR [rbp+16]	# D.10218, imgsrc_33(D)->w
	movzx	eax, r8w	# actX, actX
	cmp	eax, esi	# actX, D.10218
	jg	.L7	#,
	movzx	edi, WORD PTR [r12+220]	# actY, str_elem_88(D)->actY
	mov	eax, DWORD PTR [rbp+20]	# D.10222, imgsrc_33(D)->h
	movzx	edx, di	# actY, actY
	cmp	edx, eax	# actY, D.10222
	jle	.L8	#,
.L7:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 83	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	mov	eax, 1	# D.10207,
	jmp	.L40	#
.L8:
	movzx	r9d, WORD PTR [r12+222]	# specX, str_elem_88(D)->spec_pix_x
	movzx	edx, r9w	# specX, specX
	cmp	esi, edx	# D.10218, specX
	jle	.L9	#,
	movzx	r10d, WORD PTR [r12+224]	# specY, str_elem_88(D)->spec_pix_y
	movzx	edx, r10w	# specY, specY
	cmp	eax, edx	# D.10222, specY
	jg	.L10	#,
.L9:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 85	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	mov	eax, 2	# D.10207,
	jmp	.L40	#
.L35:
	movzx	r11d, r15b	# D.10178, D.10178
	mov	eax, ecx	# tmp291, pitch
	mov	edx, 0	# tmp292,
	div	r11d	# D.10178
	mov	edx, eax	# tmp368,
	sub	edx, esi	# tmp368, D.10218
	cmp	eax, esi	# tmp291, D.10218
	mov	eax, 0	# tmp369,
	cmova	eax, edx	# tmp368,, sp
	imul	eax, r15d	# sp, D.10178
	mov	BYTE PTR [rsp+24], al	# %sfp, sp
	movzx	eax, r8w	# actX, actX
	sub	eax, 1	# tmp294,
	movzx	edx, r15b	# D.10178, D.10178
	imul	edx, eax	# D.10178, tmp294
	mov	WORD PTR [rsp+32], dx	# %sfp, D.10178
	movzx	edi, di	# actY, actY
	lea	eax, [rdi-1]	# tmp297,
	mov	edi, r13d	#, D.10168
	imul	edi, eax	#, tmp297
	mov	WORD PTR [rsp+40], di	# %sfp,
	mov	eax, r11d	# D.10211, D.10178
	and	esi, 65535	# tmp298,
	imul	esi, r11d	# tmp298, D.10211
	mov	DWORD PTR [rsp+56], esi	# %sfp, tmp298
	mov	edx, ecx	#, pitch
	imul	edx, DWORD PTR [rbp+20]	# tmp300, imgsrc_33(D)->h
	add	rdx, QWORD PTR [rsp+48]	# tmp300, %sfp
	mov	QWORD PTR [rsp+72], rdx	# %sfp, tmp300
	movzx	edx, r10w	# specY, specY
	imul	edx, ecx	# tmp303, pitch
	mov	rsi, QWORD PTR [rsp+48]	#, %sfp
	sub	rsi, rdx	#, tmp303
	mov	QWORD PTR [rsp+16], rsi	# %sfp,
	movzx	r9d, r9w	# specX, specX
	imul	eax, r9d	# tmp305, specX
	cdqe
	sub	rsi, rax	#, tmp306
	mov	QWORD PTR [rsp+8], rsi	# %sfp,
	imul	ecx, DWORD PTR [rbx+20]	# tmp308, imgdst_35(D)->h
	add	rcx, r14	#, off_dst
	mov	QWORD PTR [rsp+80], rcx	# %sfp,
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L12	#,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L13	#,
.L12:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L13:
	mov	r11d, 0	# alpha,
	mov	edx, DWORD PTR [rsp+56]	#, %sfp
	mov	QWORD PTR [rsp+56], rdx	# %sfp,
	lea	rdi, [rsp+176]	#,
	mov	QWORD PTR [rsp], rdi	# %sfp,
	movzx	edx, WORD PTR [rsp+40]	#, %sfp
	mov	QWORD PTR [rsp+136], rdx	# %sfp,
	movzx	esi, WORD PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rsp+144], rsi	# %sfp,
	movzx	edx, r15b	#, D.10178
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	movzx	r10d, r13w	# D.10408, D.10168
	movzx	esi, BYTE PTR [rsp+24]	#, %sfp
	mov	QWORD PTR [rsp+64], rsi	# %sfp,
	mov	r13d, r15d	# D.10178, D.10178
	mov	QWORD PTR [rsp+152], rbx	# %sfp, imgdst
	mov	rax, r10	# D.10408, D.10408
	mov	r10, r12	# str_elem, str_elem
	mov	r12d, r11d	# alpha, alpha
	mov	r11, rax	# D.10408, D.10408
	jmp	.L14	#
.L33:
	mov	rdx, QWORD PTR [rsp+56]	#, %sfp
	add	rdx, r14	#, off_dst
	mov	QWORD PTR [rsp+88], rdx	# %sfp,
	mov	rcx, QWORD PTR [rsp+16]	#, %sfp
	mov	QWORD PTR [rsp+104], rcx	# %sfp,
	mov	rsi, QWORD PTR [rsp+56]	#, %sfp
	add	rsi, rcx	#,
	mov	QWORD PTR [rsp+112], rsi	# %sfp,
	jmp	.L15	#
.L32:
	mov	rdi, QWORD PTR [rsp]	# tmp312, %sfp
	mov	ecx, 3	# tmp314,
	mov	eax, 0	#,
	rep stosb
	mov	r9, QWORD PTR [rsp+8]	# p_src_off, %sfp
	mov	rdx, QWORD PTR [rsp+112]	#, %sfp
	mov	QWORD PTR [rsp+32], rdx	# %sfp,
	mov	rcx, QWORD PTR [rsp+16]	#, %sfp
	mov	QWORD PTR [rsp+24], rcx	# %sfp,
	mov	ebx, 0	# y,
	mov	rsi, QWORD PTR [rsp+136]	#, %sfp
	add	rsi, r9	#,
	mov	QWORD PTR [rsp+128], rsi	# %sfp,
	jmp	.L16	#
.L27:
	cmp	rax, QWORD PTR [rsp+48]	# d_src_off, %sfp
	jb	.L17	#,
	cmp	rax, QWORD PTR [rsp+24]	# d_src_off, %sfp
	jb	.L17	#,
	cmp	rax, QWORD PTR [rsp+72]	# d_src_off, %sfp
	jae	.L17	#,
	test	r10, r10	# str_elem
	je	.L18	#,
	mov	rcx, QWORD PTR [r10+176]	# str_elem_88(D)->_super.items, str_elem_88(D)->_super.items
	movzx	edx, si	# x, x
	imul	rdx, rdx, 40	# tmp322, x,
	mov	rdi, QWORD PTR [rsp+96]	#, %sfp
	add	rdx, QWORD PTR [rcx+rdi]	# tmp323, *D.10340_204
	mov	rdx, QWORD PTR [rdx]	# D.10344_208->widget, D.10344_208->widget
	mov	edx, DWORD PTR [rdx+168]	# str_color, MEM[(const struct Rectangle *)D.10345_209].color
	cmp	edx, 16777215	# str_color,
	je	.L17	#,
	cmp	edx, 12189619	# str_color,
	jne	.L19	#,
	cmp	r13b, 4	# D.10178,
	jne	.L17	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, DWORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.10164_220->Amask
	jmp	.L17	#
.L19:
	cmp	r13b, 3	# D.10178,
	jne	.L20	#,
	movzx	edx, WORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	WORD PTR [rsp+160], dx	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	movzx	ecx, BYTE PTR [rax+2]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	BYTE PTR [rsp+162], cl	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	cmp	dl, BYTE PTR [rsp+176]	# D.10365, max
	jbe	.L21	#,
	mov	BYTE PTR [rsp+176], dl	# max, D.10365
.L21:
	movzx	edx, BYTE PTR [rsp+161]	# D.10369, color
	cmp	dl, BYTE PTR [rsp+177]	# D.10369, max
	jbe	.L22	#,
	mov	BYTE PTR [rsp+177], dl	# max, D.10369
.L22:
	movzx	edx, BYTE PTR [rsp+162]	# D.10373, color
	cmp	dl, BYTE PTR [rsp+178]	# D.10373, max
	jbe	.L17	#,
	mov	BYTE PTR [rsp+178], dl	# max, D.10373
	jmp	.L17	#
.L20:
	cmp	r13b, 4	# D.10178,
	jne	.L17	#,
	mov	edi, DWORD PTR [rax]	# col, MEM[base: d_src_off_24, offset: 0B]
	cmp	edx, 961024	# str_color,
	jne	.L23	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, edi	# alpha, col
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.10164_234->Amask
.L23:
	mov	rdx, QWORD PTR [rbp+8]	# D.10164, imgsrc_33(D)->format
	mov	r8d, edi	# tmp331, col
	and	r8d, DWORD PTR [rdx+20]	# tmp331, D.10164_237->Rmask
	movzx	ecx, BYTE PTR [rdx+14]	# D.10164_237->Rshift, D.10164_237->Rshift
	shr	r8d, cl	# tmp331, D.10164_237->Rshift
	mov	r15d, r8d	# D.10386, tmp333
	mov	BYTE PTR [rsp+160], r8b	# color, tmp333
	mov	r8d, edi	# tmp334, col
	and	r8d, DWORD PTR [rdx+24]	# tmp334, D.10164_237->Gmask
	movzx	ecx, BYTE PTR [rdx+15]	# D.10164_237->Gshift, D.10164_237->Gshift
	shr	r8d, cl	# tmp334, D.10164_237->Gshift
	mov	ecx, r8d	# tmp336, tmp334
	mov	BYTE PTR [rsp+161], cl	# color, tmp336
	and	edi, DWORD PTR [rdx+28]	# tmp337, D.10164_237->Bmask
	movzx	ecx, BYTE PTR [rdx+16]	# D.10164_237->Bshift, D.10164_237->Bshift
	shr	edi, cl	# tmp337, D.10164_237->Bshift
	mov	edx, edi	# D.10397, tmp339
	mov	BYTE PTR [rsp+162], dil	# color, tmp339
	cmp	r15b, BYTE PTR [rsp+176]	# D.10386, max
	jbe	.L24	#,
	mov	BYTE PTR [rsp+176], r15b	# max, D.10386
.L24:
	cmp	r8b, BYTE PTR [rsp+177]	# D.10392, max
	jbe	.L25	#,
	mov	BYTE PTR [rsp+177], r8b	# max, D.10392
.L25:
	cmp	dl, BYTE PTR [rsp+178]	# D.10397, max
	jbe	.L17	#,
	mov	BYTE PTR [rsp+178], dl	# max, D.10397
.L17:
	add	rax, QWORD PTR [rsp+40]	# d_src_off, %sfp
	add	esi, 1	# x,
.L29:
	mov	rdx, r9	# D.10646, p_src_off
	cmp	rax, QWORD PTR [rsp+120]	# d_src_off, %sfp
	ja	.L26	#,
	cmp	QWORD PTR [rsp+32], rax	# %sfp, d_src_off
	ja	.L27	#,
.L26:
	lea	r9, [r11+rdx]	# p_src_off,
	add	QWORD PTR [rsp+32], r11	# %sfp, D.10408
	add	QWORD PTR [rsp+24], r11	# %sfp, D.10408
	add	ebx, 1	# y,
.L16:
	mov	rax, QWORD PTR [rsp+8]	# D.10662, %sfp
	cmp	r9, QWORD PTR [rsp+128]	# p_src_off, %sfp
	ja	.L28	#,
	movzx	eax, bx	# y, y
	sal	rax, 3	#,
	mov	QWORD PTR [rsp+96], rax	# %sfp,
	mov	rax, r9	# d_src_off, p_src_off
	mov	esi, 0	# x,
	mov	rdx, QWORD PTR [rsp+144]	#, %sfp
	add	rdx, r9	#, p_src_off
	mov	QWORD PTR [rsp+120], rdx	# %sfp,
	jmp	.L29	#
.L28:
	mov	esi, r12d	# alpha, alpha
	cmp	r13b, 3	# D.10178,
	jne	.L30	#,
	movzx	edx, WORD PTR [rsp+176]	# MEM[(char * {ref-all})&max], MEM[(char * {ref-all})&max]
	mov	WORD PTR [r14], dx	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&max]
	movzx	edx, BYTE PTR [rsp+178]	# MEM[(char * {ref-all})&max], MEM[(char * {ref-all})&max]
	mov	BYTE PTR [r14+2], dl	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&max]
	jmp	.L31	#
.L30:
	cmp	r13b, 4	# D.10178,
	jne	.L31	#,
	mov	rdx, QWORD PTR [rbp+8]	# D.10164, imgsrc_33(D)->format
	movzx	edi, BYTE PTR [rsp+177]	# max, max
	movzx	ecx, BYTE PTR [rdx+15]	# D.10164_283->Gshift, D.10164_283->Gshift
	sal	edi, cl	# tmp350, D.10164_283->Gshift
	movzx	r8d, BYTE PTR [rsp+176]	# max, max
	movzx	ecx, BYTE PTR [rdx+14]	# D.10164_283->Rshift, D.10164_283->Rshift
	sal	r8d, cl	# tmp353, D.10164_283->Rshift
	or	edi, r8d	# tmp354, tmp353
	movzx	r8d, BYTE PTR [rsp+178]	# max, max
	movzx	ecx, BYTE PTR [rdx+16]	# D.10164_283->Bshift, D.10164_283->Bshift
	sal	r8d, cl	# tmp357, D.10164_283->Bshift
	or	edi, r8d	# tmp358, tmp357
	or	esi, edi	# tmp359, tmp358
	mov	DWORD PTR [r14], esi	# MEM[base: off_dst_19, offset: 0B], tmp359
.L31:
	add	rax, QWORD PTR [rsp+40]	# D.10662, %sfp
	mov	QWORD PTR [rsp+8], rax	# %sfp, D.10662
	add	r14, QWORD PTR [rsp+40]	# off_dst, %sfp
.L15:
	cmp	r14, QWORD PTR [rsp+88]	# off_dst, %sfp
	jb	.L32	#,
	mov	rcx, QWORD PTR [rsp+104]	#, %sfp
	add	rcx, r11	#, D.10408
	mov	QWORD PTR [rsp+16], rcx	# %sfp,
	add	r14, QWORD PTR [rsp+64]	# off_dst, %sfp
	mov	rsi, QWORD PTR [rsp+64]	#, %sfp
	add	QWORD PTR [rsp+8], rsi	# %sfp,
.L14:
	cmp	r14, QWORD PTR [rsp+80]	# off_dst, %sfp
	jb	.L33	#,
	mov	rbx, QWORD PTR [rsp+152]	# imgdst, %sfp
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L34	#,
	mov	eax, 0	# D.10207,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L40	#,
.L34:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.10207,
	jmp	.L40	#
.L6:
	mov	esi, DWORD PTR [rbp+16]	# D.10218, imgsrc_33(D)->w
	movzx	ecx, r13w	# pitch, D.10168
	mov	r8d, 3	# actX,
	mov	r10d, 1	# specY,
	mov	r9d, 1	# specX,
	mov	edi, 3	# actY,
	jmp	.L35	#
.L10:
	movzx	ecx, r13w	# pitch, D.10168
	jmp	.L35	#
.L18:
	cmp	si, 1	# x,
	jne	.L39	#,
	mov	edx, 961024	# str_color,
	cmp	bx, 1	# y,
	je	.L19	#,
.L39:
	mov	edx, 0	# str_color,
	jmp	.L19	#
.L40:
	mov	rbx, QWORD PTR [rsp+200]	#,
	mov	rbp, QWORD PTR [rsp+208]	#,
	mov	r12, QWORD PTR [rsp+216]	#,
	mov	r13, QWORD PTR [rsp+224]	#,
	mov	r14, QWORD PTR [rsp+232]	#,
	mov	r15, QWORD PTR [rsp+240]	#,
	add	rsp, 248	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	GToolsMorph_dilate, .-GToolsMorph_dilate
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"GToolsMorph_erode() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC5:
	.string	"GToolsMorph_erode() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC6:
	.string	"GToolsMorph_erode() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC7:
	.string	"GToolsMorph_erode() > Structuring element origin not exists or is outside of image.\n"
	.text
	.globl	GToolsMorph_erode
	.type	GToolsMorph_erode, @function
GToolsMorph_erode:
.LFB104:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 248	#,
	.cfi_def_cfa_offset 256
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L43	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L43	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9874, imgsrc_33(D)->format
	test	rax, rax	# D.9874
	je	.L43	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.9876, imgdst_35(D)->format
	test	rdx, rdx	# D.9876
	je	.L43	#,
	movzx	r13d, WORD PTR [rdi+24]	# D.9878, imgsrc_33(D)->pitch
	cmp	r13w, WORD PTR [rsi+24]	# D.9878, imgdst_35(D)->pitch
	jne	.L43	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rcx	#,
	jne	.L43	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.9888, D.9874_38->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.9888, D.9876_39->BytesPerPixel
	jne	.L43	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9876_39->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9874_38->Amask,
	jne	.L43	#,
	mov	edi, DWORD PTR [rdx+20]	#, D.9876_39->Rmask
	cmp	DWORD PTR [rax+20], edi	# D.9874_38->Rmask,
	jne	.L43	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L43	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9876_39->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9874_38->Ashift,
	jne	.L43	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L43	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9876_39->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9874_38->Bshift,
	jne	.L43	#,
	mov	rsi, QWORD PTR [rbp+32]	#, imgsrc_33(D)->pixels
	mov	QWORD PTR [rsp+48], rsi	# %sfp,
	test	rsi, rsi	#
	je	.L43	#,
	mov	r14, QWORD PTR [rbx+32]	# off_dst, imgdst_35(D)->pixels
	test	r14, r14	# off_dst
	jne	.L44	#,
.L43:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 73	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	mov	eax, -56	# D.9917,
	jmp	.L81	#
.L44:
	lea	eax, [r15-3]	# tmp269,
	cmp	al, 1	# tmp269,
	jbe	.L46	#,
	movzx	ecx, r15b	# D.9888, D.9888
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9917,
	jmp	.L81	#
.L46:
	test	r12, r12	# str_elem
	je	.L47	#,
	movzx	r8d, WORD PTR [r12+218]	# actX, str_elem_88(D)->actX
	mov	esi, DWORD PTR [rbp+16]	# D.9928, imgsrc_33(D)->w
	movzx	eax, r8w	# actX, actX
	cmp	eax, esi	# actX, D.9928
	jg	.L48	#,
	movzx	edi, WORD PTR [r12+220]	# actY, str_elem_88(D)->actY
	mov	eax, DWORD PTR [rbp+20]	# D.9932, imgsrc_33(D)->h
	movzx	edx, di	# actY, actY
	cmp	edx, eax	# actY, D.9932
	jle	.L49	#,
.L48:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC6	#,
	call	fwrite	#
	mov	eax, 1	# D.9917,
	jmp	.L81	#
.L49:
	movzx	r9d, WORD PTR [r12+222]	# specX, str_elem_88(D)->spec_pix_x
	movzx	edx, r9w	# specX, specX
	cmp	esi, edx	# D.9928, specX
	jle	.L50	#,
	movzx	r10d, WORD PTR [r12+224]	# specY, str_elem_88(D)->spec_pix_y
	movzx	edx, r10w	# specY, specY
	cmp	eax, edx	# D.9932, specY
	jg	.L51	#,
.L50:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	fwrite	#
	mov	eax, 2	# D.9917,
	jmp	.L81	#
.L76:
	movzx	r11d, r15b	# D.9888, D.9888
	mov	eax, ecx	# tmp276, pitch
	mov	edx, 0	# tmp277,
	div	r11d	# D.9888
	mov	edx, eax	# tmp350,
	sub	edx, esi	# tmp350, D.9928
	cmp	eax, esi	# tmp276, D.9928
	mov	eax, 0	# tmp351,
	cmova	eax, edx	# tmp350,, sp
	imul	eax, r15d	# sp, D.9888
	mov	BYTE PTR [rsp+24], al	# %sfp, sp
	movzx	eax, r8w	# actX, actX
	sub	eax, 1	# tmp279,
	movzx	edx, r15b	# D.9888, D.9888
	imul	edx, eax	# D.9888, tmp279
	mov	WORD PTR [rsp+32], dx	# %sfp, D.9888
	movzx	edi, di	# actY, actY
	lea	eax, [rdi-1]	# tmp282,
	mov	edi, r13d	#, D.9878
	imul	edi, eax	#, tmp282
	mov	WORD PTR [rsp+40], di	# %sfp,
	mov	eax, r11d	# D.9921, D.9888
	and	esi, 65535	# tmp283,
	imul	esi, r11d	# tmp283, D.9921
	mov	DWORD PTR [rsp+56], esi	# %sfp, tmp283
	mov	edx, ecx	#, pitch
	imul	edx, DWORD PTR [rbp+20]	# tmp285, imgsrc_33(D)->h
	add	rdx, QWORD PTR [rsp+48]	# tmp285, %sfp
	mov	QWORD PTR [rsp+72], rdx	# %sfp, tmp285
	movzx	edx, r10w	# specY, specY
	imul	edx, ecx	# tmp288, pitch
	mov	rsi, QWORD PTR [rsp+48]	#, %sfp
	sub	rsi, rdx	#, tmp288
	mov	QWORD PTR [rsp+16], rsi	# %sfp,
	movzx	r9d, r9w	# specX, specX
	imul	eax, r9d	# tmp290, specX
	cdqe
	sub	rsi, rax	#, tmp291
	mov	QWORD PTR [rsp+8], rsi	# %sfp,
	imul	ecx, DWORD PTR [rbx+20]	# tmp293, imgdst_35(D)->h
	add	rcx, r14	#, off_dst
	mov	QWORD PTR [rsp+80], rcx	# %sfp,
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L53	#,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L54	#,
.L53:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L54:
	mov	r11d, 0	# alpha,
	mov	edi, DWORD PTR [rsp+56]	#, %sfp
	mov	QWORD PTR [rsp+56], rdi	# %sfp,
	movzx	eax, WORD PTR [rsp+40]	#, %sfp
	mov	QWORD PTR [rsp+136], rax	# %sfp,
	movzx	edx, WORD PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rsp+144], rdx	# %sfp,
	movzx	esi, r15b	#, D.9888
	mov	QWORD PTR [rsp+40], rsi	# %sfp,
	movzx	r10d, r13w	# D.10118, D.9878
	movzx	edi, BYTE PTR [rsp+24]	#, %sfp
	mov	QWORD PTR [rsp+64], rdi	# %sfp,
	mov	r13d, r15d	# D.9888, D.9888
	mov	QWORD PTR [rsp+152], rbx	# %sfp, imgdst
	mov	rax, r10	# D.10118, D.10118
	mov	r10, r12	# str_elem, str_elem
	mov	r12d, r11d	# alpha, alpha
	mov	r11, rax	# D.10118, D.10118
	jmp	.L55	#
.L74:
	mov	rax, QWORD PTR [rsp+56]	#, %sfp
	add	rax, r14	#, off_dst
	mov	QWORD PTR [rsp+88], rax	# %sfp,
	mov	rdx, QWORD PTR [rsp+16]	#, %sfp
	mov	QWORD PTR [rsp+104], rdx	# %sfp,
	mov	rsi, QWORD PTR [rsp+56]	#, %sfp
	add	rsi, rdx	#,
	mov	QWORD PTR [rsp+112], rsi	# %sfp,
	jmp	.L56	#
.L73:
	mov	WORD PTR [rsp+176], -1	# min,
	mov	BYTE PTR [rsp+178], -1	# min,
	mov	r9, QWORD PTR [rsp+8]	# p_src_off, %sfp
	mov	rdi, QWORD PTR [rsp+112]	#, %sfp
	mov	QWORD PTR [rsp+32], rdi	# %sfp,
	mov	rax, QWORD PTR [rsp+16]	#, %sfp
	mov	QWORD PTR [rsp+24], rax	# %sfp,
	mov	ebx, 0	# y,
	mov	rdx, QWORD PTR [rsp+136]	#, %sfp
	add	rdx, r9	#,
	mov	QWORD PTR [rsp+128], rdx	# %sfp,
	jmp	.L57	#
.L68:
	cmp	rax, QWORD PTR [rsp+48]	# d_src_off, %sfp
	jb	.L58	#,
	cmp	rax, QWORD PTR [rsp+24]	# d_src_off, %sfp
	jb	.L58	#,
	cmp	rax, QWORD PTR [rsp+72]	# d_src_off, %sfp
	jae	.L58	#,
	test	r10, r10	# str_elem
	je	.L59	#,
	mov	rcx, QWORD PTR [r10+176]	# str_elem_88(D)->_super.items, str_elem_88(D)->_super.items
	movzx	edx, si	# x, x
	imul	rdx, rdx, 40	# tmp304, x,
	mov	rdi, QWORD PTR [rsp+96]	#, %sfp
	add	rdx, QWORD PTR [rcx+rdi]	# tmp305, *D.10050_204
	mov	rdx, QWORD PTR [rdx]	# D.10054_208->widget, D.10054_208->widget
	mov	edx, DWORD PTR [rdx+168]	# str_color, MEM[(const struct Rectangle *)D.10055_209].color
	cmp	edx, 16777215	# str_color,
	je	.L58	#,
	cmp	edx, 12189619	# str_color,
	jne	.L60	#,
	cmp	r13b, 4	# D.9888,
	jne	.L58	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, DWORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.9874_220->Amask
	jmp	.L58	#
.L60:
	cmp	r13b, 3	# D.9888,
	jne	.L61	#,
	movzx	edx, WORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	WORD PTR [rsp+160], dx	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	movzx	edx, BYTE PTR [rax+2]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	BYTE PTR [rsp+162], dl	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	movzx	edx, BYTE PTR [rsp+160]	# D.10075, color
	cmp	dl, BYTE PTR [rsp+176]	# D.10075, min
	jae	.L62	#,
	mov	BYTE PTR [rsp+176], dl	# min, D.10075
.L62:
	movzx	edx, BYTE PTR [rsp+161]	# D.10079, color
	cmp	dl, BYTE PTR [rsp+177]	# D.10079, min
	jae	.L63	#,
	mov	BYTE PTR [rsp+177], dl	# min, D.10079
.L63:
	movzx	edx, BYTE PTR [rsp+162]	# D.10083, color
	cmp	dl, BYTE PTR [rsp+178]	# D.10083, min
	jae	.L58	#,
	mov	BYTE PTR [rsp+178], dl	# min, D.10083
	jmp	.L58	#
.L61:
	cmp	r13b, 4	# D.9888,
	jne	.L58	#,
	mov	edi, DWORD PTR [rax]	# col, MEM[base: d_src_off_24, offset: 0B]
	cmp	edx, 961024	# str_color,
	jne	.L64	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, edi	# alpha, col
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.9874_234->Amask
.L64:
	mov	rdx, QWORD PTR [rbp+8]	# D.9874, imgsrc_33(D)->format
	mov	r8d, edi	# tmp313, col
	and	r8d, DWORD PTR [rdx+20]	# tmp313, D.9874_237->Rmask
	movzx	ecx, BYTE PTR [rdx+14]	# D.9874_237->Rshift, D.9874_237->Rshift
	shr	r8d, cl	# tmp313, D.9874_237->Rshift
	mov	r15d, r8d	# D.10096, tmp315
	mov	BYTE PTR [rsp+160], r8b	# color, tmp315
	mov	r8d, edi	# tmp316, col
	and	r8d, DWORD PTR [rdx+24]	# tmp316, D.9874_237->Gmask
	movzx	ecx, BYTE PTR [rdx+15]	# D.9874_237->Gshift, D.9874_237->Gshift
	shr	r8d, cl	# tmp316, D.9874_237->Gshift
	mov	ecx, r8d	# tmp318, tmp316
	mov	BYTE PTR [rsp+161], cl	# color, tmp318
	and	edi, DWORD PTR [rdx+28]	# tmp319, D.9874_237->Bmask
	movzx	ecx, BYTE PTR [rdx+16]	# D.9874_237->Bshift, D.9874_237->Bshift
	shr	edi, cl	# tmp319, D.9874_237->Bshift
	mov	edx, edi	# D.10107, tmp321
	mov	BYTE PTR [rsp+162], dil	# color, tmp321
	cmp	r15b, BYTE PTR [rsp+176]	# D.10096, min
	jae	.L65	#,
	mov	BYTE PTR [rsp+176], r15b	# min, D.10096
.L65:
	cmp	r8b, BYTE PTR [rsp+177]	# D.10102, min
	jae	.L66	#,
	mov	BYTE PTR [rsp+177], r8b	# min, D.10102
.L66:
	cmp	dl, BYTE PTR [rsp+178]	# D.10107, min
	jae	.L58	#,
	mov	BYTE PTR [rsp+178], dl	# min, D.10107
.L58:
	add	rax, QWORD PTR [rsp+40]	# d_src_off, %sfp
	add	esi, 1	# x,
.L70:
	mov	rdx, r9	# D.10726, p_src_off
	cmp	rax, QWORD PTR [rsp+120]	# d_src_off, %sfp
	ja	.L67	#,
	cmp	QWORD PTR [rsp+32], rax	# %sfp, d_src_off
	ja	.L68	#,
.L67:
	lea	r9, [r11+rdx]	# p_src_off,
	add	QWORD PTR [rsp+32], r11	# %sfp, D.10118
	add	QWORD PTR [rsp+24], r11	# %sfp, D.10118
	add	ebx, 1	# y,
.L57:
	mov	rax, QWORD PTR [rsp+8]	# D.10742, %sfp
	cmp	r9, QWORD PTR [rsp+128]	# p_src_off, %sfp
	ja	.L69	#,
	movzx	eax, bx	# y, y
	sal	rax, 3	#,
	mov	QWORD PTR [rsp+96], rax	# %sfp,
	mov	rax, r9	# d_src_off, p_src_off
	mov	esi, 0	# x,
	mov	rdx, QWORD PTR [rsp+144]	#, %sfp
	add	rdx, r9	#, p_src_off
	mov	QWORD PTR [rsp+120], rdx	# %sfp,
	jmp	.L70	#
.L69:
	mov	esi, r12d	# alpha, alpha
	cmp	r13b, 3	# D.9888,
	jne	.L71	#,
	movzx	edx, WORD PTR [rsp+176]	# MEM[(char * {ref-all})&min], MEM[(char * {ref-all})&min]
	mov	WORD PTR [r14], dx	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&min]
	movzx	edx, BYTE PTR [rsp+178]	# MEM[(char * {ref-all})&min], MEM[(char * {ref-all})&min]
	mov	BYTE PTR [r14+2], dl	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&min]
	jmp	.L72	#
.L71:
	cmp	r13b, 4	# D.9888,
	jne	.L72	#,
	mov	rdx, QWORD PTR [rbp+8]	# D.9874, imgsrc_33(D)->format
	movzx	edi, BYTE PTR [rsp+177]	# min, min
	movzx	ecx, BYTE PTR [rdx+15]	# D.9874_283->Gshift, D.9874_283->Gshift
	sal	edi, cl	# tmp332, D.9874_283->Gshift
	movzx	r8d, BYTE PTR [rsp+176]	# min, min
	movzx	ecx, BYTE PTR [rdx+14]	# D.9874_283->Rshift, D.9874_283->Rshift
	sal	r8d, cl	# tmp335, D.9874_283->Rshift
	or	edi, r8d	# tmp336, tmp335
	movzx	r8d, BYTE PTR [rsp+178]	# min, min
	movzx	ecx, BYTE PTR [rdx+16]	# D.9874_283->Bshift, D.9874_283->Bshift
	sal	r8d, cl	# tmp339, D.9874_283->Bshift
	or	edi, r8d	# tmp340, tmp339
	or	esi, edi	# tmp341, tmp340
	mov	DWORD PTR [r14], esi	# MEM[base: off_dst_19, offset: 0B], tmp341
.L72:
	add	rax, QWORD PTR [rsp+40]	# D.10742, %sfp
	mov	QWORD PTR [rsp+8], rax	# %sfp, D.10742
	add	r14, QWORD PTR [rsp+40]	# off_dst, %sfp
.L56:
	cmp	r14, QWORD PTR [rsp+88]	# off_dst, %sfp
	jb	.L73	#,
	mov	rcx, QWORD PTR [rsp+104]	#, %sfp
	add	rcx, r11	#, D.10118
	mov	QWORD PTR [rsp+16], rcx	# %sfp,
	add	r14, QWORD PTR [rsp+64]	# off_dst, %sfp
	mov	rsi, QWORD PTR [rsp+64]	#, %sfp
	add	QWORD PTR [rsp+8], rsi	# %sfp,
.L55:
	cmp	r14, QWORD PTR [rsp+80]	# off_dst, %sfp
	jb	.L74	#,
	mov	rbx, QWORD PTR [rsp+152]	# imgdst, %sfp
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L75	#,
	mov	eax, 0	# D.9917,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L81	#,
.L75:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9917,
	jmp	.L81	#
.L47:
	mov	esi, DWORD PTR [rbp+16]	# D.9928, imgsrc_33(D)->w
	movzx	ecx, r13w	# pitch, D.9878
	mov	r8d, 3	# actX,
	mov	r10d, 1	# specY,
	mov	r9d, 1	# specX,
	mov	edi, 3	# actY,
	jmp	.L76	#
.L51:
	movzx	ecx, r13w	# pitch, D.9878
	jmp	.L76	#
.L59:
	cmp	si, 1	# x,
	jne	.L80	#,
	mov	edx, 961024	# str_color,
	cmp	bx, 1	# y,
	je	.L60	#,
.L80:
	mov	edx, 0	# str_color,
	jmp	.L60	#
.L81:
	mov	rbx, QWORD PTR [rsp+200]	#,
	mov	rbp, QWORD PTR [rsp+208]	#,
	mov	r12, QWORD PTR [rsp+216]	#,
	mov	r13, QWORD PTR [rsp+224]	#,
	mov	r14, QWORD PTR [rsp+232]	#,
	mov	r15, QWORD PTR [rsp+240]	#,
	add	rsp, 248	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	GToolsMorph_erode, .-GToolsMorph_erode
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"GToolsMorph_open() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC9:
	.string	"GToolsMorph_open() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC10:
	.string	"GToolsMorph_open() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC11:
	.string	"GToolsMorph_open() > Structuring element origin not exists or is outside of image.\n"
	.align 8
.LC12:
	.string	"GToolsMorph_open> Failed to create temporary surface SDL_ConvertSurface: %s\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC13:
	.string	"GToolsMorph.c"
	.text
	.globl	GToolsMorph_open
	.type	GToolsMorph_open, @function
GToolsMorph_open:
.LFB105:
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
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L84	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L84	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9792, imgsrc_2(D)->format
	test	rax, rax	# D.9792
	je	.L84	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.9794, imgdst_4(D)->format
	test	rdx, rdx	# D.9794
	je	.L84	#,
	movzx	ecx, WORD PTR [rsi+24]	#, imgdst_4(D)->pitch
	cmp	WORD PTR [rdi+24], cx	# imgsrc_2(D)->pitch,
	jne	.L84	#,
	mov	rsi, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rsi	#,
	jne	.L84	#,
	movzx	edi, BYTE PTR [rax+9]	# D.9806, D.9792_7->BytesPerPixel
	cmp	dil, BYTE PTR [rdx+9]	# D.9806, D.9794_8->BytesPerPixel
	jne	.L84	#,
	mov	ecx, DWORD PTR [rdx+32]	#, D.9794_8->Amask
	cmp	DWORD PTR [rax+32], ecx	# D.9792_7->Amask,
	jne	.L84	#,
	mov	esi, DWORD PTR [rdx+20]	#, D.9794_8->Rmask
	cmp	DWORD PTR [rax+20], esi	# D.9792_7->Rmask,
	jne	.L84	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L84	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9794_8->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9792_7->Ashift,
	jne	.L84	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L84	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9794_8->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9792_7->Bshift,
	jne	.L84	#,
	cmp	QWORD PTR [rbp+32], 0	# imgsrc_2(D)->pixels,
	je	.L84	#,
	cmp	QWORD PTR [rbx+32], 0	# imgdst_4(D)->pixels,
	jne	.L85	#,
.L84:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 72	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	mov	eax, -56	# D.9835,
	jmp	.L86	#
.L85:
	lea	eax, [rdi-3]	# tmp124,
	cmp	al, 1	# tmp124,
	jbe	.L87	#,
	movzx	ecx, dil	# D.9806, D.9806
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9835,
	jmp	.L86	#
.L87:
	test	r12, r12	# str_elem
	je	.L88	#,
	mov	edx, DWORD PTR [rbp+16]	# D.9846, imgsrc_2(D)->w
	movzx	eax, WORD PTR [r12+218]	# str_elem_57(D)->actX, str_elem_57(D)->actX
	cmp	eax, edx	# str_elem_57(D)->actX, D.9846
	jge	.L89	#,
	mov	eax, DWORD PTR [rbp+20]	# D.9850, imgsrc_2(D)->h
	movzx	ecx, WORD PTR [r12+220]	# str_elem_57(D)->actY, str_elem_57(D)->actY
	cmp	ecx, eax	# str_elem_57(D)->actY, D.9850
	jl	.L90	#,
.L89:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 81	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC10	#,
	call	fwrite	#
	mov	eax, 1	# D.9835,
	jmp	.L86	#
.L90:
	movzx	ecx, WORD PTR [r12+222]	# str_elem_57(D)->spec_pix_x, str_elem_57(D)->spec_pix_x
	cmp	edx, ecx	# D.9846, str_elem_57(D)->spec_pix_x
	jle	.L91	#,
	movzx	edx, WORD PTR [r12+224]	# str_elem_57(D)->spec_pix_y, str_elem_57(D)->spec_pix_y
	cmp	eax, edx	# D.9850, str_elem_57(D)->spec_pix_y
	jg	.L88	#,
.L91:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 83	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	fwrite	#
	mov	eax, 2	# D.9835,
	jmp	.L86	#
.L88:
	movzx	esi, WORD PTR [rbp+20]	# tmp130, imgsrc_2(D)->h
	movzx	edi, WORD PTR [rbp+16]	# tmp132, imgsrc_2(D)->w
	call	Static_newSurface	#
	mov	r13, rax	# temp_surface,
	test	rax, rax	# temp_surface
	jne	.L92	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9864
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 3	# D.9835,
	jmp	.L86	#
.L92:
	mov	rdx, r12	#, str_elem
	mov	rsi, rax	#, temp_surface
	mov	rdi, rbp	#, imgsrc
	call	GToolsMorph_erode	#
	mov	rdx, r12	#, str_elem
	mov	rsi, rbx	#, imgdst
	mov	rdi, r13	#, temp_surface
	call	GToolsMorph_dilate	#
	mov	edx, 723	#,
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, r13	#, temp_surface
	call	wSDL_FreeSurface	#
	mov	eax, 0	# D.9835,
.L86:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	GToolsMorph_open, .-GToolsMorph_open
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"GToolsMorph_close() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC15:
	.string	"GToolsMorph_close() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC16:
	.string	"GToolsMorph_close() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC17:
	.string	"GToolsMorph_close() > Structuring element origin not exists or is outside of image.\n"
	.align 8
.LC18:
	.string	"GToolsMorph_close() Failed to create temporary surface SDL_ConvertSurface: %s\n"
	.text
	.globl	GToolsMorph_close
	.type	GToolsMorph_close, @function
GToolsMorph_close:
.LFB106:
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
	mov	rbx, rsi	# imgdst, imgdst
	test	rsi, rsi	# imgdst
	je	.L95	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L95	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9710, imgsrc_2(D)->format
	test	rax, rax	# D.9710
	je	.L95	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.9712, imgdst_4(D)->format
	test	rdx, rdx	# D.9712
	je	.L95	#,
	movzx	ecx, WORD PTR [rsi+24]	#, imgdst_4(D)->pitch
	cmp	WORD PTR [rdi+24], cx	# imgsrc_2(D)->pitch,
	jne	.L95	#,
	mov	rsi, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rsi	#,
	jne	.L95	#,
	movzx	edi, BYTE PTR [rax+9]	# D.9724, D.9710_7->BytesPerPixel
	cmp	dil, BYTE PTR [rdx+9]	# D.9724, D.9712_8->BytesPerPixel
	jne	.L95	#,
	mov	ecx, DWORD PTR [rdx+32]	#, D.9712_8->Amask
	cmp	DWORD PTR [rax+32], ecx	# D.9710_7->Amask,
	jne	.L95	#,
	mov	esi, DWORD PTR [rdx+20]	#, D.9712_8->Rmask
	cmp	DWORD PTR [rax+20], esi	# D.9710_7->Rmask,
	jne	.L95	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L95	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9712_8->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9710_7->Ashift,
	jne	.L95	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L95	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9712_8->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9710_7->Bshift,
	jne	.L95	#,
	cmp	QWORD PTR [rbp+32], 0	# imgsrc_2(D)->pixels,
	je	.L95	#,
	cmp	QWORD PTR [rbx+32], 0	# imgdst_4(D)->pixels,
	jne	.L96	#,
.L95:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 73	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC14	#,
	call	fwrite	#
	mov	eax, -56	# D.9753,
	jmp	.L97	#
.L96:
	lea	eax, [rdi-3]	# tmp124,
	cmp	al, 1	# tmp124,
	jbe	.L98	#,
	movzx	ecx, dil	# D.9724, D.9724
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9753,
	jmp	.L97	#
.L98:
	test	r12, r12	# str_elem
	je	.L99	#,
	mov	edx, DWORD PTR [rbp+16]	# D.9764, imgsrc_2(D)->w
	movzx	eax, WORD PTR [r12+218]	# str_elem_57(D)->actX, str_elem_57(D)->actX
	cmp	eax, edx	# str_elem_57(D)->actX, D.9764
	jge	.L100	#,
	mov	eax, DWORD PTR [rbp+20]	# D.9768, imgsrc_2(D)->h
	movzx	ecx, WORD PTR [r12+220]	# str_elem_57(D)->actY, str_elem_57(D)->actY
	cmp	ecx, eax	# str_elem_57(D)->actY, D.9768
	jl	.L101	#,
.L100:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC16	#,
	call	fwrite	#
	mov	eax, 1	# D.9753,
	jmp	.L97	#
.L101:
	movzx	ecx, WORD PTR [r12+222]	# str_elem_57(D)->spec_pix_x, str_elem_57(D)->spec_pix_x
	cmp	edx, ecx	# D.9764, str_elem_57(D)->spec_pix_x
	jle	.L102	#,
	movzx	edx, WORD PTR [r12+224]	# str_elem_57(D)->spec_pix_y, str_elem_57(D)->spec_pix_y
	cmp	eax, edx	# D.9768, str_elem_57(D)->spec_pix_y
	jg	.L99	#,
.L102:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC17	#,
	call	fwrite	#
	mov	eax, 2	# D.9753,
	jmp	.L97	#
.L99:
	movzx	esi, WORD PTR [rbp+20]	# tmp130, imgsrc_2(D)->h
	movzx	edi, WORD PTR [rbp+16]	# tmp132, imgsrc_2(D)->w
	call	Static_newSurface	#
	mov	r13, rax	# temp_surface,
	test	rax, rax	# temp_surface
	jne	.L103	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9782
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 3	# D.9753,
	jmp	.L97	#
.L103:
	mov	rdx, r12	#, str_elem
	mov	rsi, rax	#, temp_surface
	mov	rdi, rbp	#, imgsrc
	call	GToolsMorph_dilate	#
	mov	rdx, r12	#, str_elem
	mov	rsi, rbx	#, imgdst
	mov	rdi, r13	#, temp_surface
	call	GToolsMorph_erode	#
	mov	edx, 758	#,
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, r13	#, temp_surface
	call	wSDL_FreeSurface	#
	mov	eax, 0	# D.9753,
.L97:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	GToolsMorph_close, .-GToolsMorph_close
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"GToolsMorph_reconstruction() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC20:
	.string	"GToolsMorph_reconstruction() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC21:
	.string	"GToolsMorph_reconstruction(): GToolsMorph_dilate() exited with code %d\n"
	.text
	.globl	GToolsMorph_reconstruction
	.type	GToolsMorph_reconstruction, @function
GToolsMorph_reconstruction:
.LFB107:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 184	#,
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rsi	# imgmarker, imgmarker
	test	rsi, rsi	# imgmarker
	je	.L106	#,
	mov	rbp, rdi	# imgmask, imgmask
	test	rdi, rdi	# imgmask
	je	.L106	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9550, imgmask_16(D)->format
	test	rax, rax	# D.9550
	je	.L106	#,
	mov	r12d, edx	# limit_iter, limit_iter
	mov	rdx, QWORD PTR [rsi+8]	# D.9552, imgmarker_18(D)->format
	test	rdx, rdx	# D.9552
	je	.L106	#,
	movzx	edi, WORD PTR [rdi+24]	# D.9554, imgmask_16(D)->pitch
	cmp	di, WORD PTR [rsi+24]	# D.9554, imgmarker_18(D)->pitch
	jne	.L106	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rbp+16], rcx	#,
	jne	.L106	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.9564, D.9550_21->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.9564, D.9552_22->BytesPerPixel
	jne	.L106	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9552_22->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9550_21->Amask,
	jne	.L106	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.9552_22->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.9550_21->Rmask,
	jne	.L106	#,
	mov	rsi, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rsi	#,
	jne	.L106	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9552_22->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9550_21->Ashift,
	jne	.L106	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L106	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9552_22->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9550_21->Bshift,
	jne	.L106	#,
	cmp	QWORD PTR [rbp+32], 0	# imgmask_16(D)->pixels,
	je	.L106	#,
	cmp	QWORD PTR [rbx+32], 0	# imgmarker_18(D)->pixels,
	jne	.L107	#,
.L106:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC19	#,
	call	fwrite	#
	mov	eax, -56	# D.9593,
	jmp	.L108	#
.L107:
	lea	eax, [r15-3]	# tmp259,
	cmp	al, 1	# tmp259,
	jbe	.L109	#,
	movzx	ecx, r15b	# D.9564, D.9564
	mov	edx, OFFSET FLAT:.LC20	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9593,
	jmp	.L108	#
.L109:
	movzx	edi, di	#, D.9554
	mov	DWORD PTR [rsp+32], edi	# %sfp,
	movzx	eax, r15b	# D.9564, D.9564
	imul	eax, DWORD PTR [rbp+16]	# D.9564, imgmask_16(D)->w
	mov	DWORD PTR [rsp+36], eax	# %sfp, D.9564
	mov	rdi, rbp	#, imgmask
	call	Static_copySurface	#
	mov	QWORD PTR [rsp+16], rax	# %sfp,
	mov	rsi, QWORD PTR [rbp+32]	#, imgmask_16(D)->pixels
	mov	QWORD PTR [rsp+40], rsi	# %sfp,
	mov	rax, QWORD PTR [rax+32]	#, imgtmp_78->pixels
	mov	QWORD PTR [rsp+48], rax	# %sfp,
	mov	rcx, QWORD PTR [rbx+32]	#, imgmarker_18(D)->pixels
	mov	QWORD PTR [rsp+56], rcx	# %sfp,
	mov	eax, DWORD PTR [rsp+32]	#, %sfp
	imul	eax, DWORD PTR [rbp+20]	# tmp263, imgmask_16(D)->h
	add	rax, rsi	# tmp263,
	mov	QWORD PTR [rsp+64], rax	# %sfp, tmp263
	cmp	DWORD PTR [rbx+40], 0	# imgmarker_18(D)->offset,
	jne	.L110	#,
	test	DWORD PTR [rbx], 16389	# imgmarker_18(D)->flags,
	je	.L111	#,
.L110:
	mov	rdi, rbx	#, imgmarker
	call	SDL_LockSurface	#
.L111:
	mov	WORD PTR [rsp+72], 0	# %sfp,
	mov	DWORD PTR [rsp+12], 0	# %sfp,
	movzx	esi, r15b	#, D.9564
	mov	QWORD PTR [rsp+24], rsi	# %sfp,
	movzx	eax, r15b	#, D.9564
	mov	DWORD PTR [rsp+76], eax	# %sfp,
	mov	BYTE PTR [rsp+75], r15b	# %sfp, D.9564
.L127:
	mov	edx, 0	#,
	mov	rsi, QWORD PTR [rsp+16]	#, %sfp
	mov	rdi, rbx	#, imgmarker
	call	GToolsMorph_dilate	#
	test	al, al	# s
	je	.L123	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC21	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L113	#
.L119:
	mov	ecx, DWORD PTR [rsp+36]	#, %sfp
	cmp	DWORD PTR [rsp+12], ecx	# %sfp,
	jne	.L115	#,
	.p2align 4,,3
	jmp	.L124	#
.L116:
	add	rcx, 1	# ivtmp.144,
	jmp	.L114	#
.L124:
	mov	ecx, 0	# ivtmp.144,
.L114:
	lea	r9, [r8+rcx]	# px_tmp,
	lea	rdi, [rdx+rcx]	# px_marker,
	lea	rsi, [rax+rcx]	# px_mask,
	mov	r10d, DWORD PTR [rsp+36]	# tmp267, %sfp
	add	r10d, ecx	# tmp267, ivtmp.144
	cmp	DWORD PTR [rsp+32], r10d	# %sfp, tmp267
	ja	.L116	#,
	mov	r8, r9	# px_tmp, px_tmp
	mov	rdx, rdi	# px_marker, px_marker
	mov	rax, rsi	# px_mask, px_mask
	mov	DWORD PTR [rsp+12], 0	# %sfp,
.L115:
	cmp	BYTE PTR [rsp+75], 3	# %sfp,
	jne	.L117	#,
	movzx	ecx, WORD PTR [rax]	# tmp269,* px_mask
	mov	WORD PTR [rsp+112], cx	# col_src1, tmp269
	movzx	ecx, BYTE PTR [rax+2]	# tmp270,
	mov	BYTE PTR [rsp+114], cl	# col_src1, tmp270
	movzx	ecx, WORD PTR [r8]	# tmp272,* px_tmp
	mov	WORD PTR [rsp+96], cx	# col_src2, tmp272
	movzx	ecx, BYTE PTR [r8+2]	# tmp273,
	mov	BYTE PTR [rsp+98], cl	# col_src2, tmp273
	movzx	esi, BYTE PTR [rsp+96]	# col_src2, col_src2
	cmp	BYTE PTR [rsp+112], sil	# col_src1, col_src2
	movzx	edi, BYTE PTR [rsp+112]	# col_src1, col_src1
	cmovbe	esi, edi	# col_src1,, tmp274
	mov	BYTE PTR [rsp+80], sil	# col_dst, tmp274
	movzx	esi, BYTE PTR [rsp+97]	# col_src2, col_src2
	cmp	BYTE PTR [rsp+113], sil	# col_src1, col_src2
	movzx	edi, BYTE PTR [rsp+113]	# col_src1, col_src1
	cmovbe	esi, edi	# col_src1,, tmp277
	mov	BYTE PTR [rsp+81], sil	# col_dst, tmp277
	cmp	BYTE PTR [rsp+114], cl	# col_src1, col_src2
	movzx	esi, BYTE PTR [rsp+114]	# col_src1, col_src1
	cmovbe	ecx, esi	# col_src1,, tmp280
	mov	BYTE PTR [rsp+82], cl	# col_dst, tmp280
	movzx	ecx, WORD PTR [rsp+80]	# col_dst, col_dst
	mov	WORD PTR [rdx], cx	#* px_marker, col_dst
	movzx	ecx, BYTE PTR [rsp+82]	# col_dst, col_dst
	mov	BYTE PTR [rdx+2], cl	#, col_dst
	jmp	.L118	#
.L117:
	cmp	BYTE PTR [rsp+75], 4	# %sfp,
	jne	.L118	#,
	mov	r9d, DWORD PTR [rax]	# D.9630, MEM[(uint *)px_mask_6]
	mov	rsi, QWORD PTR [rbp+8]	# D.9550, imgmask_16(D)->format
	mov	r11d, DWORD PTR [r8]	# D.9646, MEM[(uint *)px_tmp_12]
	mov	rcx, QWORD PTR [rsp+16]	#, %sfp
	mov	rdi, QWORD PTR [rcx+8]	# D.9648, imgtmp_78->format
	mov	r10, QWORD PTR [rbx+8]	# D.9552, imgmarker_18(D)->format
	mov	r13d, r11d	# tmp287, D.9646
	and	r13d, DWORD PTR [rdi+20]	# tmp287, D.9648_147->Rmask
	movzx	ecx, BYTE PTR [rdi+14]	# D.9648_147->Rshift, D.9648_147->Rshift
	shr	r13d, cl	# tmp289, D.9648_147->Rshift
	mov	r14d, r9d	# tmp290, D.9630
	and	r14d, DWORD PTR [rsi+20]	# tmp290, D.9550_117->Rmask
	movzx	ecx, BYTE PTR [rsi+14]	# D.9550_117->Rshift, D.9550_117->Rshift
	shr	r14d, cl	# tmp292, D.9550_117->Rshift
	cmp	r13d, r14d	# tmp289, tmp292
	cmova	r13d, r14d	# tmp289,, tmp286, tmp292
	movzx	ecx, BYTE PTR [r10+14]	# D.9552_180->Rshift, D.9552_180->Rshift
	mov	r14d, r13d	# tmp294, tmp286
	sal	r14d, cl	# tmp294, D.9552_180->Rshift
	mov	r13d, r11d	# tmp296, D.9646
	and	r13d, DWORD PTR [rdi+24]	# tmp296, D.9648_147->Gmask
	movzx	ecx, BYTE PTR [rdi+15]	# D.9648_147->Gshift, D.9648_147->Gshift
	shr	r13d, cl	# tmp298, D.9648_147->Gshift
	mov	r15d, r9d	# tmp299, D.9630
	and	r15d, DWORD PTR [rsi+24]	# tmp299, D.9550_117->Gmask
	movzx	ecx, BYTE PTR [rsi+15]	# D.9550_117->Gshift, D.9550_117->Gshift
	shr	r15d, cl	# tmp301, D.9550_117->Gshift
	cmp	r13d, r15d	# tmp298, tmp301
	cmova	r13d, r15d	# tmp298,, tmp295, tmp301
	movzx	ecx, BYTE PTR [r10+15]	# D.9552_180->Gshift, D.9552_180->Gshift
	sal	r13d, cl	# tmp303, D.9552_180->Gshift
	or	r13d, r14d	# tmp304, tmp294
	movzx	ecx, BYTE PTR [rsi+17]	# D.9550_117->Ashift, D.9550_117->Ashift
	and	ecx, r9d	# tmp306, D.9630
	or	r13d, ecx	# tmp307, tmp306
	and	r11d, DWORD PTR [rdi+28]	# tmp309, D.9648_147->Bmask
	movzx	ecx, BYTE PTR [rdi+16]	# D.9648_147->Bshift, D.9648_147->Bshift
	shr	r11d, cl	# tmp311, D.9648_147->Bshift
	and	r9d, DWORD PTR [rsi+28]	# tmp312, D.9550_117->Bmask
	movzx	ecx, BYTE PTR [rsi+16]	# D.9550_117->Bshift, D.9550_117->Bshift
	shr	r9d, cl	# tmp312, D.9550_117->Bshift
	cmp	r11d, r9d	# tmp311, tmp314
	cmova	r11d, r9d	# tmp311,, tmp308, tmp314
	movzx	ecx, BYTE PTR [r10+16]	# D.9552_180->Bshift, D.9552_180->Bshift
	sal	r11d, cl	# tmp316, D.9552_180->Bshift
	or	r13d, r11d	# tmp317, tmp316
	mov	DWORD PTR [rdx], r13d	# MEM[(uint *)px_marker_9], tmp317
.L118:
	add	rax, QWORD PTR [rsp+24]	# px_mask, %sfp
	add	rdx, QWORD PTR [rsp+24]	# px_marker, %sfp
	add	r8, QWORD PTR [rsp+24]	# px_tmp, %sfp
	mov	esi, DWORD PTR [rsp+76]	#, %sfp
	add	DWORD PTR [rsp+12], esi	# %sfp,
	jmp	.L112	#
.L123:
	mov	r8, QWORD PTR [rsp+48]	# px_tmp, %sfp
	mov	rdx, QWORD PTR [rsp+56]	# px_marker, %sfp
	mov	rax, QWORD PTR [rsp+40]	# px_mask, %sfp
.L112:
	cmp	rax, QWORD PTR [rsp+64]	# px_mask, %sfp
	jb	.L119	#,
	add	WORD PTR [rsp+72], 1	# %sfp,
	cmp	WORD PTR [rsp+72], r12w	# %sfp, limit_iter
	jne	.L127	#,
	test	r12w, r12w	# limit_iter
	je	.L127	#,
.L113:
	cmp	DWORD PTR [rbx+40], 0	# imgmarker_18(D)->offset,
	jne	.L121	#,
	test	DWORD PTR [rbx], 16389	# imgmarker_18(D)->flags,
	je	.L122	#,
.L121:
	mov	rdi, rbx	#, imgmarker
	call	SDL_UnlockSurface	#
.L122:
	mov	edx, 850	#,
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	wSDL_FreeSurface	#
	mov	eax, 0	# D.9593,
.L108:
	mov	rbx, QWORD PTR [rsp+136]	#,
	mov	rbp, QWORD PTR [rsp+144]	#,
	mov	r12, QWORD PTR [rsp+152]	#,
	mov	r13, QWORD PTR [rsp+160]	#,
	mov	r14, QWORD PTR [rsp+168]	#,
	mov	r15, QWORD PTR [rsp+176]	#,
	add	rsp, 184	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	GToolsMorph_reconstruction, .-GToolsMorph_reconstruction
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
