	.file	"GToolsMorph.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GToolsMorph.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/GToolsMorph.asm
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
	.string	"GToolsMorph_dilate3() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC1:
	.string	"GToolsMorph_dilate3() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC2:
	.string	"GToolsMorph_dilate3() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC3:
	.string	"GToolsMorph_dilate3() > Structuring element origin not exists or is outside of image.\n"
	.text
	.globl	GToolsMorph_dilate3
	.type	GToolsMorph_dilate3, @function
GToolsMorph_dilate3:
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 200	#,
	.cfi_def_cfa_offset 208
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
	mov	rax, QWORD PTR [rdi+8]	# D.10168, imgsrc_33(D)->format
	test	rax, rax	# D.10168
	je	.L2	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.10170, imgdst_35(D)->format
	test	rdx, rdx	# D.10170
	je	.L2	#,
	movzx	r13d, WORD PTR [rdi+24]	# D.10172, imgsrc_33(D)->pitch
	cmp	r13w, WORD PTR [rsi+24]	# D.10172, imgdst_35(D)->pitch
	jne	.L2	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rcx	#,
	jne	.L2	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.10182, D.10168_38->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.10182, D.10170_39->BytesPerPixel
	jne	.L2	#,
	mov	r8d, DWORD PTR [rdx+32]	#, D.10170_39->Amask
	cmp	DWORD PTR [rax+32], r8d	# D.10168_38->Amask,
	jne	.L2	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.10170_39->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.10168_38->Rmask,
	jne	.L2	#,
	mov	r8, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], r8	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.10170_39->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.10168_38->Ashift,
	jne	.L2	#,
	movzx	r8d, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], r8w	#,
	jne	.L2	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.10170_39->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.10168_38->Bshift,
	jne	.L2	#,
	cmp	QWORD PTR [rdi+32], 0	# imgsrc_33(D)->pixels,
	je	.L2	#,
	cmp	QWORD PTR [rsi+32], 0	# imgdst_35(D)->pixels,
	jne	.L3	#,
.L2:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 75	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	eax, -56	# D.10211,
	jmp	.L46	#
.L3:
	lea	eax, [r15-3]	# tmp308,
	cmp	al, 1	# tmp308,
	jbe	.L5	#,
	movzx	ecx, r15b	# D.10182, D.10182
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.10211,
	jmp	.L46	#
.L5:
	test	r12, r12	# str_elem
	je	.L6	#,
	movzx	edx, WORD PTR [r12+194]	# D.10221, str_elem_88(D)->actX
	mov	esi, DWORD PTR [rdi+16]	# D.10222, imgsrc_33(D)->w
	cmp	edx, esi	# D.10221, D.10222
	jge	.L7	#,
	movzx	eax, WORD PTR [r12+196]	# D.10225, str_elem_88(D)->actY
	mov	ecx, DWORD PTR [rdi+20]	# D.10226, imgsrc_33(D)->h
	cmp	eax, ecx	# D.10225, D.10226
	jl	.L8	#,
.L7:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	mov	eax, 1	# D.10211,
	jmp	.L46	#
.L8:
	movzx	edi, WORD PTR [r12+198]	# str_elem_88(D)->spec_pix_x, str_elem_88(D)->spec_pix_x
	cmp	esi, edi	# D.10222, str_elem_88(D)->spec_pix_x
	jle	.L9	#,
	movzx	esi, WORD PTR [r12+200]	# str_elem_88(D)->spec_pix_y, str_elem_88(D)->spec_pix_y
	cmp	ecx, esi	# D.10226, str_elem_88(D)->spec_pix_y
	jg	.L10	#,
.L9:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 86	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	mov	eax, 2	# D.10211,
	jmp	.L46	#
.L40:
	imul	eax, DWORD PTR [rsp+24]	# iftmp.64, %sfp
	mov	DWORD PTR [rsp+56], eax	# %sfp, iftmp.64
	movzx	ecx, r15b	# D.10245, D.10182
	mov	eax, DWORD PTR [rsp+24]	# tmp312, %sfp
	mov	edx, 0	# tmp313,
	div	ecx	# D.10245
	mov	edx, DWORD PTR [rbp+16]	# D.10247, imgsrc_33(D)->w
	mov	esi, eax	# tmp400, tmp312
	sub	esi, edx	# tmp400, D.10247
	cmp	eax, edx	# tmp312, D.10247
	mov	eax, 0	# tmp401,
	cmova	eax, esi	# tmp400,, sp
	imul	eax, ecx	# sp, D.10245
	mov	DWORD PTR [rsp+64], eax	# %sfp, sp
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L12	#,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L13	#,
.L12:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L13:
	mov	r8, QWORD PTR [rbx+32]	#, imgdst_35(D)->pixels
	mov	QWORD PTR [rsp+16], r8	# %sfp,
	movzx	eax, WORD PTR [rbx+24]	# imgdst_35(D)->pitch, imgdst_35(D)->pitch
	imul	eax, DWORD PTR [rbx+20]	# tmp317, imgdst_35(D)->h
	cdqe
	add	rax, r8	# tmp318,
	mov	QWORD PTR [rsp+48], rax	# %sfp, tmp318
	mov	rax, QWORD PTR [rbx+8]	# imgdst_35(D)->format, imgdst_35(D)->format
	movzx	eax, BYTE PTR [rax+9]	# D.10170_145->BytesPerPixel, D.10170_145->BytesPerPixel
	imul	eax, DWORD PTR [rbx+16]	#, imgdst_35(D)->w
	mov	QWORD PTR [rsp+40], rax	# %sfp,
	jmp	.L14	#
.L15:
	mov	rdx, QWORD PTR [rsp+40]	#, %sfp
	mov	esi, 255	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	memset	#
	movzx	eax, WORD PTR [rbx+24]	# imgdst_35(D)->pitch, imgdst_35(D)->pitch
	add	QWORD PTR [rsp+16], rax	# %sfp, imgdst_35(D)->pitch
.L14:
	mov	rax, QWORD PTR [rsp+48]	#, %sfp
	cmp	QWORD PTR [rsp+16], rax	# %sfp,
	jb	.L15	#,
	mov	rdx, QWORD PTR [rbx+32]	#, imgdst_35(D)->pixels
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	movzx	eax, WORD PTR [rbx+24]	# imgdst_35(D)->pitch, imgdst_35(D)->pitch
	imul	eax, DWORD PTR [rbx+20]	# tmp325, imgdst_35(D)->h
	cdqe
	add	rax, rdx	# tmp326,
	mov	QWORD PTR [rsp+48], rax	# %sfp, tmp326
	mov	rax, QWORD PTR [rbx+8]	# imgdst_35(D)->format, imgdst_35(D)->format
	movzx	eax, BYTE PTR [rax+9]	# D.10170_162->BytesPerPixel, D.10170_162->BytesPerPixel
	imul	eax, DWORD PTR [rbx+16]	# D.10170_162->BytesPerPixel, imgdst_35(D)->w
	mov	DWORD PTR [rsp+40], eax	# %sfp, D.10170_162->BytesPerPixel
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L16	#,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L18	#,
.L16:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
	jmp	.L18	#
.L19:
	mov	rdx, QWORD PTR [rsp+40]	#, %sfp
	mov	esi, 255	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	memset	#
	mov	rcx, QWORD PTR [rsp+72]	#, %sfp
	add	QWORD PTR [rsp+16], rcx	# %sfp,
	jmp	.L47	#
.L18:
	mov	r8d, DWORD PTR [rsp+40]	#, %sfp
	mov	QWORD PTR [rsp+40], r8	# %sfp,
	movzx	eax, r13w	#, D.10172
	mov	QWORD PTR [rsp+72], rax	# %sfp,
.L47:
	mov	rdx, QWORD PTR [rsp+48]	#, %sfp
	cmp	QWORD PTR [rsp+16], rdx	# %sfp,
	jb	.L19	#,
	mov	ecx, r14d	# tmp334, D.10215
	imul	ecx, DWORD PTR [rbp+16]	# tmp334, imgsrc_33(D)->w
	sub	ecx, DWORD PTR [rsp+32]	# wb, %sfp
	mov	rax, QWORD PTR [rbx+32]	# D.10209, imgdst_35(D)->pixels
	test	r12, r12	# str_elem
	je	.L20	#,
	movzx	esi, WORD PTR [r12+200]	# str_elem_88(D)->spec_pix_y, str_elem_88(D)->spec_pix_y
	imul	esi, DWORD PTR [rsp+24]	# tmp337, %sfp
	movzx	edx, WORD PTR [r12+198]	# str_elem_88(D)->spec_pix_x, str_elem_88(D)->spec_pix_x
	imul	edx, r14d	# tmp339, D.10215
	movsx	rdx, edx	# tmp340, tmp339
	add	rdx, rsi	# tmp341, tmp337
	lea	r11, [rax+rdx]	# off_dst,
	mov	r14, QWORD PTR [rbp+32]	# off_src, imgsrc_33(D)->pixels
	mov	edx, DWORD PTR [rbp+20]	# D.10226, imgsrc_33(D)->h
	movzx	eax, WORD PTR [r12+196]	# iftmp.68, str_elem_88(D)->actY
.L41:
	sub	edx, eax	# D.10226, iftmp.68
	mov	eax, edx	# tmp342, D.10226
	imul	eax, DWORD PTR [rsp+24]	# tmp344, %sfp
	add	rax, r14	#, off_src
	mov	QWORD PTR [rsp+48], rax	# %sfp,
	mov	DWORD PTR [rsp+16], 0	# %sfp,
	mov	ecx, ecx	#, wb
	mov	QWORD PTR [rsp+80], rcx	# %sfp,
	lea	rcx, [rsp+128]	#,
	mov	QWORD PTR [rsp+8], rcx	# %sfp,
	mov	r8d, DWORD PTR [rsp+56]	#, %sfp
	mov	QWORD PTR [rsp+88], r8	# %sfp,
	mov	edx, DWORD PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rsp+96], rdx	# %sfp,
	movzx	r8d, r15b	#, D.10182
	mov	QWORD PTR [rsp+24], r8	# %sfp,
	movzx	r13d, r13w	#, D.10172
	mov	QWORD PTR [rsp+104], r13	# %sfp,
	mov	eax, DWORD PTR [rsp+64]	#, %sfp
	add	eax, DWORD PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rsp+32], rax	# %sfp,
	mov	r13, rbx	# imgdst, imgdst
	mov	rbx, r12	# str_elem, str_elem
	mov	r12d, r15d	# D.10182, D.10182
	jmp	.L21	#
.L38:
	mov	rdx, QWORD PTR [rsp+80]	#, %sfp
	add	rdx, r14	#, off_src
	mov	QWORD PTR [rsp+56], rdx	# %sfp,
	jmp	.L22	#
.L37:
	mov	rdi, QWORD PTR [rsp+8]	# tmp347, %sfp
	mov	ecx, 3	# tmp349,
	mov	eax, 0	#,
	rep stosb
	mov	rsi, r14	# p_src_off, off_src
	mov	r10d, 0	# y,
	mov	rdx, QWORD PTR [rsp+88]	#, %sfp
	add	rdx, r14	#, off_src
	mov	QWORD PTR [rsp+72], rdx	# %sfp,
	jmp	.L23	#
.L32:
	test	rbx, rbx	# str_elem
	je	.L24	#,
	mov	rcx, QWORD PTR [rbx+160]	# str_elem_88(D)->grid.items, str_elem_88(D)->grid.items
	movzx	edx, di	# x, x
	imul	rdx, rdx, 40	# tmp353, x,
	mov	r8, QWORD PTR [rsp+64]	#, %sfp
	add	rdx, QWORD PTR [rcx+r8]	# tmp354, *D.10311_217
	mov	rdx, QWORD PTR [rdx]	# D.10315_221->widget, D.10315_221->widget
	mov	edx, DWORD PTR [rdx+144]	# str_color, MEM[(struct Rectangle *)D.10316_222].color
	cmp	edx, 16777215	# str_color,
	jne	.L42	#,
	jmp	.L25	#
.L45:
	mov	edx, 0	# str_color,
.L42:
	cmp	r12b, 3	# D.10182,
	jne	.L26	#,
	movzx	edx, WORD PTR [rax]	# MEM[base: d_src_off_4, offset: 0B], MEM[base: d_src_off_4, offset: 0B]
	mov	WORD PTR [rsp+112], dx	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_4, offset: 0B]
	movzx	edx, BYTE PTR [rax+2]	# MEM[base: d_src_off_4, offset: 0B], MEM[base: d_src_off_4, offset: 0B]
	mov	BYTE PTR [rsp+114], dl	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_4, offset: 0B]
	movzx	edx, BYTE PTR [rsp+112]	# D.10330, color
	cmp	dl, BYTE PTR [rsp+128]	# D.10330, max
	jbe	.L27	#,
	mov	BYTE PTR [rsp+128], dl	# max, D.10330
.L27:
	movzx	edx, BYTE PTR [rsp+113]	# D.10334, color
	cmp	dl, BYTE PTR [rsp+129]	# D.10334, max
	jbe	.L28	#,
	mov	BYTE PTR [rsp+129], dl	# max, D.10334
.L28:
	movzx	edx, BYTE PTR [rsp+114]	# D.10338, color
	cmp	dl, BYTE PTR [rsp+130]	# D.10338, max
	jbe	.L25	#,
	mov	BYTE PTR [rsp+130], dl	# max, D.10338
	jmp	.L25	#
.L26:
	cmp	r12b, 4	# D.10182,
	jne	.L25	#,
	mov	r8d, DWORD PTR [rax]	# col, MEM[base: d_src_off_4, offset: 0B]
	cmp	edx, 961024	# str_color,
	jne	.L29	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	edx, DWORD PTR [rdx+32]	#, D.10168_243->Amask
	and	edx, r8d	#, col
	mov	DWORD PTR [rsp+16], edx	# %sfp,
.L29:
	mov	rdx, QWORD PTR [rbp+8]	# D.10168, imgsrc_33(D)->format
	mov	r9d, r8d	# tmp359, col
	and	r9d, DWORD PTR [rdx+20]	# tmp359, D.10168_246->Rmask
	movzx	ecx, BYTE PTR [rdx+14]	# D.10168_246->Rshift, D.10168_246->Rshift
	shr	r9d, cl	# tmp359, D.10168_246->Rshift
	mov	r15d, r9d	# D.10351, tmp361
	mov	BYTE PTR [rsp+112], r9b	# color, tmp361
	mov	r9d, r8d	# tmp362, col
	and	r9d, DWORD PTR [rdx+24]	# tmp362, D.10168_246->Gmask
	movzx	ecx, BYTE PTR [rdx+15]	# D.10168_246->Gshift, D.10168_246->Gshift
	shr	r9d, cl	# tmp362, D.10168_246->Gshift
	mov	ecx, r9d	# tmp364, tmp362
	mov	BYTE PTR [rsp+113], cl	# color, tmp364
	and	r8d, DWORD PTR [rdx+28]	# tmp365, D.10168_246->Bmask
	movzx	ecx, BYTE PTR [rdx+16]	# D.10168_246->Bshift, D.10168_246->Bshift
	shr	r8d, cl	# tmp365, D.10168_246->Bshift
	mov	edx, r8d	# D.10362, tmp367
	mov	BYTE PTR [rsp+114], r8b	# color, tmp367
	cmp	r15b, BYTE PTR [rsp+128]	# D.10351, max
	jbe	.L30	#,
	mov	BYTE PTR [rsp+128], r15b	# max, D.10351
.L30:
	cmp	r9b, BYTE PTR [rsp+129]	# D.10357, max
	jbe	.L31	#,
	mov	BYTE PTR [rsp+129], r9b	# max, D.10357
.L31:
	cmp	dl, BYTE PTR [rsp+130]	# D.10362, max
	jbe	.L25	#,
	mov	BYTE PTR [rsp+130], dl	# max, D.10362
.L25:
	add	rax, QWORD PTR [rsp+24]	# d_src_off, %sfp
	add	edi, 1	# x,
.L34:
	mov	rdx, rsi	# D.10694, p_src_off
	cmp	rax, QWORD PTR [rsp+40]	# d_src_off, %sfp
	jbe	.L32	#,
	mov	rsi, QWORD PTR [rsp+104]	# p_src_off, %sfp
	add	rsi, rdx	# p_src_off, D.10694
	add	r10d, 1	# y,
.L23:
	mov	rdx, r14	# D.10710, off_src
	cmp	rsi, QWORD PTR [rsp+72]	# p_src_off, %sfp
	ja	.L33	#,
	movzx	eax, r10w	# y, y
	sal	rax, 3	#,
	mov	QWORD PTR [rsp+64], rax	# %sfp,
	mov	rax, rsi	# d_src_off, p_src_off
	mov	edi, 0	# x,
	mov	rdx, QWORD PTR [rsp+96]	#, %sfp
	add	rdx, rsi	#, p_src_off
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	jmp	.L34	#
.L33:
	mov	esi, DWORD PTR [rsp+16]	# alpha, %sfp
	cmp	r12b, 3	# D.10182,
	jne	.L35	#,
	movzx	eax, WORD PTR [rsp+128]	# MEM[(char * {ref-all})&max], MEM[(char * {ref-all})&max]
	mov	WORD PTR [r11], ax	# MEM[base: off_dst_7, offset: 0B], MEM[(char * {ref-all})&max]
	movzx	eax, BYTE PTR [rsp+130]	# MEM[(char * {ref-all})&max], MEM[(char * {ref-all})&max]
	mov	BYTE PTR [r11+2], al	# MEM[base: off_dst_7, offset: 0B], MEM[(char * {ref-all})&max]
	jmp	.L36	#
.L35:
	cmp	r12b, 4	# D.10182,
	jne	.L36	#,
	mov	rax, QWORD PTR [rbp+8]	# D.10168, imgsrc_33(D)->format
	movzx	edi, BYTE PTR [rsp+129]	# max, max
	movzx	ecx, BYTE PTR [rax+15]	# D.10168_288->Gshift, D.10168_288->Gshift
	sal	edi, cl	# tmp379, D.10168_288->Gshift
	movzx	r8d, BYTE PTR [rsp+128]	# max, max
	movzx	ecx, BYTE PTR [rax+14]	# D.10168_288->Rshift, D.10168_288->Rshift
	sal	r8d, cl	# tmp382, D.10168_288->Rshift
	or	edi, r8d	# tmp383, tmp382
	movzx	r8d, BYTE PTR [rsp+130]	# max, max
	movzx	ecx, BYTE PTR [rax+16]	# D.10168_288->Bshift, D.10168_288->Bshift
	sal	r8d, cl	# tmp386, D.10168_288->Bshift
	or	edi, r8d	# tmp387, tmp386
	or	esi, edi	# tmp388, tmp387
	mov	DWORD PTR [r11], esi	# MEM[base: off_dst_7, offset: 0B], tmp388
.L36:
	mov	r14, QWORD PTR [rsp+24]	# off_src, %sfp
	add	r14, rdx	# off_src, D.10710
	add	r11, QWORD PTR [rsp+24]	# off_dst, %sfp
.L22:
	cmp	r14, QWORD PTR [rsp+56]	# off_src, %sfp
	jb	.L37	#,
	add	r14, QWORD PTR [rsp+32]	# off_src, %sfp
	add	r11, QWORD PTR [rsp+32]	# off_dst, %sfp
.L21:
	cmp	r14, QWORD PTR [rsp+48]	# off_src, %sfp
	jbe	.L38	#,
	mov	rbx, r13	# imgdst, imgdst
	cmp	DWORD PTR [r13+40], 0	# imgdst_35(D)->offset,
	jne	.L39	#,
	mov	eax, 0	# D.10211,
	test	DWORD PTR [r13+0], 16389	# imgdst_35(D)->flags,
	je	.L46	#,
.L39:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.10211,
	jmp	.L46	#
.L6:
	movzx	eax, r13w	#, D.10172
	mov	DWORD PTR [rsp+24], eax	# %sfp,
	movzx	r14d, r15b	# D.10215, D.10182
	lea	edx, [r14+r14]	#,
	mov	DWORD PTR [rsp+32], edx	# %sfp,
	mov	eax, 2	# iftmp.64,
	jmp	.L40	#
.L10:
	movzx	ecx, r13w	#, D.10172
	mov	DWORD PTR [rsp+24], ecx	# %sfp,
	movzx	r14d, r15b	# D.10215, D.10182
	sub	edx, 1	# tmp392,
	imul	edx, r14d	# tmp392, D.10215
	mov	DWORD PTR [rsp+32], edx	# %sfp, tmp392
	sub	eax, 1	# iftmp.64,
	jmp	.L40	#
.L20:
	mov	edx, DWORD PTR [rsp+24]	# pitch, %sfp
	movsx	r14, r14d	# D.10215, D.10215
	add	rdx, r14	# tmp395, D.10215
	lea	r11, [rax+rdx]	# off_dst,
	mov	r14, QWORD PTR [rbp+32]	# off_src, imgsrc_33(D)->pixels
	mov	edx, DWORD PTR [rbp+20]	# D.10226, imgsrc_33(D)->h
	mov	eax, 3	# iftmp.68,
	jmp	.L41	#
.L24:
	cmp	di, 1	# x,
	jne	.L45	#,
	mov	edx, 961024	# str_color,
	cmp	r10w, 1	# y,
	je	.L42	#,
	jmp	.L45	#
.L46:
	mov	rbx, QWORD PTR [rsp+152]	#,
	mov	rbp, QWORD PTR [rsp+160]	#,
	mov	r12, QWORD PTR [rsp+168]	#,
	mov	r13, QWORD PTR [rsp+176]	#,
	mov	r14, QWORD PTR [rsp+184]	#,
	mov	r15, QWORD PTR [rsp+192]	#,
	add	rsp, 200	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	GToolsMorph_dilate3, .-GToolsMorph_dilate3
	.globl	GToolsMorph_dilate2
	.type	GToolsMorph_dilate2, @function
GToolsMorph_dilate2:
.LFB94:
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
	mov	r12d, -6	# ivtmp.158,
	mov	r11d, 0	# off_dst,
	mov	eax, -33	# off_src,
.L59:
	lea	ebx, [r11+24]	# off_dst_xend,
	mov	ebp, r12d	# last_xsrc, ivtmp.158
	mov	r10d, eax	# p_src_off, off_src
	cmp	bx, r11w	# off_dst_xend, off_dst
	jg	.L60	#,
	jmp	.L51	#
.L62:
	lea	eax, [rdx+3]	# D.10743,
	mov	edx, eax	# d_src_off, D.10743
	movsx	ecx, ax	# d_src_off, D.10743
	cmp	ecx, edi	# d_src_off, D.10142
	jg	.L52	#,
	cmp	si, ax	# last_xsrc_pom, D.10743
	jg	.L62	#,
.L52:
	lea	edi, [r8+30]	# D.10754,
	mov	r8d, edi	# d_src_off, D.10754
	add	esi, 30	# last_xsrc_pom,
	movsx	edi, di	# D.10128, D.10754
	cmp	edi, r9d	# D.10128, D.10150
	jg	.L55	#,
.L61:
	add	edi, 6	# D.10142,
	movsx	eax, r8w	# d_src_off, d_src_off
	cmp	eax, edi	# d_src_off, D.10142
	jg	.L52	#,
	mov	edx, r8d	# d_src_off, d_src_off
	cmp	r8w, si	# d_src_off, last_xsrc_pom
	jl	.L62	#,
	jmp	.L52	#
.L55:
	add	r10d, 3	# p_src_off,
	lea	eax, [r11+3]	# D.10770,
	mov	r11d, eax	# off_dst, D.10770
	cmp	ax, bx	# D.10770, off_dst_xend
	jl	.L60	#,
	mov	eax, r10d	# off_src, p_src_off
	jmp	.L51	#
.L60:
	movsx	edi, r10w	# D.10128, p_src_off
	lea	r9d, [rdi+90]	# D.10150,
	mov	esi, ebp	# last_xsrc_pom, last_xsrc_pom
	mov	r8d, r10d	# d_src_off, p_src_off
	cmp	edi, r9d	# D.10128, D.10150
	jle	.L61	#,
	jmp	.L55	#
.L51:
	lea	edx, [r11+6]	# D.10158,
	mov	r11d, edx	# off_dst, D.10158
	add	eax, 6	# off_src,
	add	r12d, 30	# ivtmp.158,
	cmp	dx, 179	# D.10158,
	jle	.L59	#,
	mov	eax, 0	#,
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	GToolsMorph_dilate2, .-GToolsMorph_dilate2
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"GToolsMorph_dilate() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC5:
	.string	"GToolsMorph_dilate() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC6:
	.string	"GToolsMorph_dilate() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC7:
	.string	"GToolsMorph_dilate() > Structuring element origin not exists or is outside of image.\n"
	.text
	.globl	GToolsMorph_dilate
	.type	GToolsMorph_dilate, @function
GToolsMorph_dilate:
.LFB95:
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
	je	.L69	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L69	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9802, imgsrc_33(D)->format
	test	rax, rax	# D.9802
	je	.L69	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.9804, imgdst_35(D)->format
	test	rdx, rdx	# D.9804
	je	.L69	#,
	movzx	r13d, WORD PTR [rdi+24]	# D.9806, imgsrc_33(D)->pitch
	cmp	r13w, WORD PTR [rsi+24]	# D.9806, imgdst_35(D)->pitch
	jne	.L69	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rcx	#,
	jne	.L69	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.9816, D.9802_38->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.9816, D.9804_39->BytesPerPixel
	jne	.L69	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9804_39->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9802_38->Amask,
	jne	.L69	#,
	mov	edi, DWORD PTR [rdx+20]	#, D.9804_39->Rmask
	cmp	DWORD PTR [rax+20], edi	# D.9802_38->Rmask,
	jne	.L69	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L69	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9804_39->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9802_38->Ashift,
	jne	.L69	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L69	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9804_39->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9802_38->Bshift,
	jne	.L69	#,
	mov	rsi, QWORD PTR [rbp+32]	#, imgsrc_33(D)->pixels
	mov	QWORD PTR [rsp+48], rsi	# %sfp,
	test	rsi, rsi	#
	je	.L69	#,
	mov	r14, QWORD PTR [rbx+32]	# off_dst, imgdst_35(D)->pixels
	test	r14, r14	# off_dst
	jne	.L70	#,
.L69:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 74	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	mov	eax, -56	# D.9845,
	jmp	.L107	#
.L70:
	lea	eax, [r15-3]	# tmp269,
	cmp	al, 1	# tmp269,
	jbe	.L72	#,
	movzx	ecx, r15b	# D.9816, D.9816
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9845,
	jmp	.L107	#
.L72:
	test	r12, r12	# str_elem
	je	.L73	#,
	movzx	r8d, WORD PTR [r12+194]	# actX, str_elem_88(D)->actX
	mov	esi, DWORD PTR [rbp+16]	# D.9856, imgsrc_33(D)->w
	movzx	eax, r8w	# actX, actX
	cmp	eax, esi	# actX, D.9856
	jg	.L74	#,
	movzx	edi, WORD PTR [r12+196]	# actY, str_elem_88(D)->actY
	mov	eax, DWORD PTR [rbp+20]	# D.9860, imgsrc_33(D)->h
	movzx	edx, di	# actY, actY
	cmp	edx, eax	# actY, D.9860
	jle	.L75	#,
.L74:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 83	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC6	#,
	call	fwrite	#
	mov	eax, 1	# D.9845,
	jmp	.L107	#
.L75:
	movzx	r9d, WORD PTR [r12+198]	# specX, str_elem_88(D)->spec_pix_x
	movzx	edx, r9w	# specX, specX
	cmp	esi, edx	# D.9856, specX
	jle	.L76	#,
	movzx	r10d, WORD PTR [r12+200]	# specY, str_elem_88(D)->spec_pix_y
	movzx	edx, r10w	# specY, specY
	cmp	eax, edx	# D.9860, specY
	jg	.L77	#,
.L76:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 85	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	fwrite	#
	mov	eax, 2	# D.9845,
	jmp	.L107	#
.L102:
	movzx	r11d, r15b	# D.9816, D.9816
	mov	eax, ecx	# tmp276, pitch
	mov	edx, 0	# tmp277,
	div	r11d	# D.9816
	mov	edx, eax	# tmp353,
	sub	edx, esi	# tmp353, D.9856
	cmp	eax, esi	# tmp276, D.9856
	mov	eax, 0	# tmp354,
	cmova	eax, edx	# tmp353,, sp
	imul	eax, r15d	# sp, D.9816
	mov	BYTE PTR [rsp+24], al	# %sfp, sp
	movzx	eax, r8w	# actX, actX
	sub	eax, 1	# tmp279,
	movzx	edx, r15b	# D.9816, D.9816
	imul	edx, eax	# D.9816, tmp279
	mov	WORD PTR [rsp+32], dx	# %sfp, D.9816
	movzx	edi, di	# actY, actY
	lea	eax, [rdi-1]	# tmp282,
	mov	edi, r13d	#, D.9806
	imul	edi, eax	#, tmp282
	mov	WORD PTR [rsp+40], di	# %sfp,
	mov	eax, r11d	# D.9849, D.9816
	and	esi, 65535	# tmp283,
	imul	esi, r11d	# tmp283, D.9849
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
	jne	.L79	#,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L80	#,
.L79:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L80:
	mov	r11d, 0	# alpha,
	mov	edx, DWORD PTR [rsp+56]	#, %sfp
	mov	QWORD PTR [rsp+56], rdx	# %sfp,
	lea	rdi, [rsp+176]	#,
	mov	QWORD PTR [rsp], rdi	# %sfp,
	movzx	edx, WORD PTR [rsp+40]	#, %sfp
	mov	QWORD PTR [rsp+136], rdx	# %sfp,
	movzx	esi, WORD PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rsp+144], rsi	# %sfp,
	movzx	edx, r15b	#, D.9816
	mov	QWORD PTR [rsp+40], rdx	# %sfp,
	movzx	r10d, r13w	# D.10046, D.9806
	movzx	esi, BYTE PTR [rsp+24]	#, %sfp
	mov	QWORD PTR [rsp+64], rsi	# %sfp,
	mov	r13d, r15d	# D.9816, D.9816
	mov	QWORD PTR [rsp+152], rbx	# %sfp, imgdst
	mov	rax, r10	# D.10046, D.10046
	mov	r10, r12	# str_elem, str_elem
	mov	r12d, r11d	# alpha, alpha
	mov	r11, rax	# D.10046, D.10046
	jmp	.L81	#
.L100:
	mov	rdx, QWORD PTR [rsp+56]	#, %sfp
	add	rdx, r14	#, off_dst
	mov	QWORD PTR [rsp+88], rdx	# %sfp,
	mov	rcx, QWORD PTR [rsp+16]	#, %sfp
	mov	QWORD PTR [rsp+104], rcx	# %sfp,
	mov	rsi, QWORD PTR [rsp+56]	#, %sfp
	add	rsi, rcx	#,
	mov	QWORD PTR [rsp+112], rsi	# %sfp,
	jmp	.L82	#
.L99:
	mov	rdi, QWORD PTR [rsp]	# tmp297, %sfp
	mov	ecx, 3	# tmp299,
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
	jmp	.L83	#
.L94:
	cmp	rax, QWORD PTR [rsp+48]	# d_src_off, %sfp
	jb	.L84	#,
	cmp	rax, QWORD PTR [rsp+24]	# d_src_off, %sfp
	jb	.L84	#,
	cmp	rax, QWORD PTR [rsp+72]	# d_src_off, %sfp
	jae	.L84	#,
	test	r10, r10	# str_elem
	je	.L85	#,
	mov	rcx, QWORD PTR [r10+160]	# str_elem_88(D)->grid.items, str_elem_88(D)->grid.items
	movzx	edx, si	# x, x
	imul	rdx, rdx, 40	# tmp307, x,
	mov	rdi, QWORD PTR [rsp+96]	#, %sfp
	add	rdx, QWORD PTR [rcx+rdi]	# tmp308, *D.9978_204
	mov	rdx, QWORD PTR [rdx]	# D.9982_208->widget, D.9982_208->widget
	mov	edx, DWORD PTR [rdx+144]	# str_color, MEM[(struct Rectangle *)D.9983_209].color
	cmp	edx, 16777215	# str_color,
	je	.L84	#,
	cmp	edx, 12189619	# str_color,
	jne	.L86	#,
	cmp	r13b, 4	# D.9816,
	jne	.L84	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, DWORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.9802_220->Amask
	jmp	.L84	#
.L86:
	cmp	r13b, 3	# D.9816,
	jne	.L87	#,
	movzx	edx, WORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	WORD PTR [rsp+160], dx	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	movzx	ecx, BYTE PTR [rax+2]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	BYTE PTR [rsp+162], cl	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	cmp	dl, BYTE PTR [rsp+176]	# D.10003, max
	jbe	.L88	#,
	mov	BYTE PTR [rsp+176], dl	# max, D.10003
.L88:
	movzx	edx, BYTE PTR [rsp+161]	# D.10007, color
	cmp	dl, BYTE PTR [rsp+177]	# D.10007, max
	jbe	.L89	#,
	mov	BYTE PTR [rsp+177], dl	# max, D.10007
.L89:
	movzx	edx, BYTE PTR [rsp+162]	# D.10011, color
	cmp	dl, BYTE PTR [rsp+178]	# D.10011, max
	jbe	.L84	#,
	mov	BYTE PTR [rsp+178], dl	# max, D.10011
	jmp	.L84	#
.L87:
	cmp	r13b, 4	# D.9816,
	jne	.L84	#,
	mov	edi, DWORD PTR [rax]	# col, MEM[base: d_src_off_24, offset: 0B]
	cmp	edx, 961024	# str_color,
	jne	.L90	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, edi	# alpha, col
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.9802_234->Amask
.L90:
	mov	rdx, QWORD PTR [rbp+8]	# D.9802, imgsrc_33(D)->format
	mov	r8d, edi	# tmp316, col
	and	r8d, DWORD PTR [rdx+20]	# tmp316, D.9802_237->Rmask
	movzx	ecx, BYTE PTR [rdx+14]	# D.9802_237->Rshift, D.9802_237->Rshift
	shr	r8d, cl	# tmp316, D.9802_237->Rshift
	mov	r15d, r8d	# D.10024, tmp318
	mov	BYTE PTR [rsp+160], r8b	# color, tmp318
	mov	r8d, edi	# tmp319, col
	and	r8d, DWORD PTR [rdx+24]	# tmp319, D.9802_237->Gmask
	movzx	ecx, BYTE PTR [rdx+15]	# D.9802_237->Gshift, D.9802_237->Gshift
	shr	r8d, cl	# tmp319, D.9802_237->Gshift
	mov	ecx, r8d	# tmp321, tmp319
	mov	BYTE PTR [rsp+161], cl	# color, tmp321
	and	edi, DWORD PTR [rdx+28]	# tmp322, D.9802_237->Bmask
	movzx	ecx, BYTE PTR [rdx+16]	# D.9802_237->Bshift, D.9802_237->Bshift
	shr	edi, cl	# tmp322, D.9802_237->Bshift
	mov	edx, edi	# D.10035, tmp324
	mov	BYTE PTR [rsp+162], dil	# color, tmp324
	cmp	r15b, BYTE PTR [rsp+176]	# D.10024, max
	jbe	.L91	#,
	mov	BYTE PTR [rsp+176], r15b	# max, D.10024
.L91:
	cmp	r8b, BYTE PTR [rsp+177]	# D.10030, max
	jbe	.L92	#,
	mov	BYTE PTR [rsp+177], r8b	# max, D.10030
.L92:
	cmp	dl, BYTE PTR [rsp+178]	# D.10035, max
	jbe	.L84	#,
	mov	BYTE PTR [rsp+178], dl	# max, D.10035
.L84:
	add	rax, QWORD PTR [rsp+40]	# d_src_off, %sfp
	add	esi, 1	# x,
.L96:
	mov	rdx, r9	# D.10814, p_src_off
	cmp	rax, QWORD PTR [rsp+120]	# d_src_off, %sfp
	ja	.L93	#,
	cmp	QWORD PTR [rsp+32], rax	# %sfp, d_src_off
	ja	.L94	#,
.L93:
	lea	r9, [r11+rdx]	# p_src_off,
	add	QWORD PTR [rsp+32], r11	# %sfp, D.10046
	add	QWORD PTR [rsp+24], r11	# %sfp, D.10046
	add	ebx, 1	# y,
.L83:
	mov	rax, QWORD PTR [rsp+8]	# D.10830, %sfp
	cmp	r9, QWORD PTR [rsp+128]	# p_src_off, %sfp
	ja	.L95	#,
	movzx	eax, bx	# y, y
	sal	rax, 3	#,
	mov	QWORD PTR [rsp+96], rax	# %sfp,
	mov	rax, r9	# d_src_off, p_src_off
	mov	esi, 0	# x,
	mov	rdx, QWORD PTR [rsp+144]	#, %sfp
	add	rdx, r9	#, p_src_off
	mov	QWORD PTR [rsp+120], rdx	# %sfp,
	jmp	.L96	#
.L95:
	mov	esi, r12d	# alpha, alpha
	cmp	r13b, 3	# D.9816,
	jne	.L97	#,
	movzx	edx, WORD PTR [rsp+176]	# MEM[(char * {ref-all})&max], MEM[(char * {ref-all})&max]
	mov	WORD PTR [r14], dx	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&max]
	movzx	edx, BYTE PTR [rsp+178]	# MEM[(char * {ref-all})&max], MEM[(char * {ref-all})&max]
	mov	BYTE PTR [r14+2], dl	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&max]
	jmp	.L98	#
.L97:
	cmp	r13b, 4	# D.9816,
	jne	.L98	#,
	mov	rdx, QWORD PTR [rbp+8]	# D.9802, imgsrc_33(D)->format
	movzx	edi, BYTE PTR [rsp+177]	# max, max
	movzx	ecx, BYTE PTR [rdx+15]	# D.9802_283->Gshift, D.9802_283->Gshift
	sal	edi, cl	# tmp335, D.9802_283->Gshift
	movzx	r8d, BYTE PTR [rsp+176]	# max, max
	movzx	ecx, BYTE PTR [rdx+14]	# D.9802_283->Rshift, D.9802_283->Rshift
	sal	r8d, cl	# tmp338, D.9802_283->Rshift
	or	edi, r8d	# tmp339, tmp338
	movzx	r8d, BYTE PTR [rsp+178]	# max, max
	movzx	ecx, BYTE PTR [rdx+16]	# D.9802_283->Bshift, D.9802_283->Bshift
	sal	r8d, cl	# tmp342, D.9802_283->Bshift
	or	edi, r8d	# tmp343, tmp342
	or	esi, edi	# tmp344, tmp343
	mov	DWORD PTR [r14], esi	# MEM[base: off_dst_19, offset: 0B], tmp344
.L98:
	add	rax, QWORD PTR [rsp+40]	# D.10830, %sfp
	mov	QWORD PTR [rsp+8], rax	# %sfp, D.10830
	add	r14, QWORD PTR [rsp+40]	# off_dst, %sfp
.L82:
	cmp	r14, QWORD PTR [rsp+88]	# off_dst, %sfp
	jb	.L99	#,
	mov	rcx, QWORD PTR [rsp+104]	#, %sfp
	add	rcx, r11	#, D.10046
	mov	QWORD PTR [rsp+16], rcx	# %sfp,
	add	r14, QWORD PTR [rsp+64]	# off_dst, %sfp
	mov	rsi, QWORD PTR [rsp+64]	#, %sfp
	add	QWORD PTR [rsp+8], rsi	# %sfp,
.L81:
	cmp	r14, QWORD PTR [rsp+80]	# off_dst, %sfp
	jb	.L100	#,
	mov	rbx, QWORD PTR [rsp+152]	# imgdst, %sfp
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L101	#,
	mov	eax, 0	# D.9845,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L107	#,
.L101:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9845,
	jmp	.L107	#
.L73:
	mov	esi, DWORD PTR [rbp+16]	# D.9856, imgsrc_33(D)->w
	movzx	ecx, r13w	# pitch, D.9806
	mov	r8d, 3	# actX,
	mov	r10d, 1	# specY,
	mov	r9d, 1	# specX,
	mov	edi, 3	# actY,
	jmp	.L102	#
.L77:
	movzx	ecx, r13w	# pitch, D.9806
	jmp	.L102	#
.L85:
	cmp	si, 1	# x,
	jne	.L106	#,
	mov	edx, 961024	# str_color,
	cmp	bx, 1	# y,
	je	.L86	#,
.L106:
	mov	edx, 0	# str_color,
	jmp	.L86	#
.L107:
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
.LFE95:
	.size	GToolsMorph_dilate, .-GToolsMorph_dilate
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"GToolsMorph_erode() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC9:
	.string	"GToolsMorph_erode() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC10:
	.string	"GToolsMorph_erode() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC11:
	.string	"GToolsMorph_erode() > Structuring element origin not exists or is outside of image.\n"
	.text
	.globl	GToolsMorph_erode
	.type	GToolsMorph_erode, @function
GToolsMorph_erode:
.LFB96:
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
	je	.L110	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L110	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9512, imgsrc_33(D)->format
	test	rax, rax	# D.9512
	je	.L110	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.9514, imgdst_35(D)->format
	test	rdx, rdx	# D.9514
	je	.L110	#,
	movzx	r13d, WORD PTR [rdi+24]	# D.9516, imgsrc_33(D)->pitch
	cmp	r13w, WORD PTR [rsi+24]	# D.9516, imgdst_35(D)->pitch
	jne	.L110	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rcx	#,
	jne	.L110	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.9526, D.9512_38->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.9526, D.9514_39->BytesPerPixel
	jne	.L110	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9514_39->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9512_38->Amask,
	jne	.L110	#,
	mov	edi, DWORD PTR [rdx+20]	#, D.9514_39->Rmask
	cmp	DWORD PTR [rax+20], edi	# D.9512_38->Rmask,
	jne	.L110	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L110	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9514_39->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9512_38->Ashift,
	jne	.L110	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L110	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9514_39->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9512_38->Bshift,
	jne	.L110	#,
	mov	rsi, QWORD PTR [rbp+32]	#, imgsrc_33(D)->pixels
	mov	QWORD PTR [rsp+48], rsi	# %sfp,
	test	rsi, rsi	#
	je	.L110	#,
	mov	r14, QWORD PTR [rbx+32]	# off_dst, imgdst_35(D)->pixels
	test	r14, r14	# off_dst
	jne	.L111	#,
.L110:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 73	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	mov	eax, -56	# D.9555,
	jmp	.L148	#
.L111:
	lea	eax, [r15-3]	# tmp269,
	cmp	al, 1	# tmp269,
	jbe	.L113	#,
	movzx	ecx, r15b	# D.9526, D.9526
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9555,
	jmp	.L148	#
.L113:
	test	r12, r12	# str_elem
	je	.L114	#,
	movzx	r8d, WORD PTR [r12+194]	# actX, str_elem_88(D)->actX
	mov	esi, DWORD PTR [rbp+16]	# D.9566, imgsrc_33(D)->w
	movzx	eax, r8w	# actX, actX
	cmp	eax, esi	# actX, D.9566
	jg	.L115	#,
	movzx	edi, WORD PTR [r12+196]	# actY, str_elem_88(D)->actY
	mov	eax, DWORD PTR [rbp+20]	# D.9570, imgsrc_33(D)->h
	movzx	edx, di	# actY, actY
	cmp	edx, eax	# actY, D.9570
	jle	.L116	#,
.L115:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC10	#,
	call	fwrite	#
	mov	eax, 1	# D.9555,
	jmp	.L148	#
.L116:
	movzx	r9d, WORD PTR [r12+198]	# specX, str_elem_88(D)->spec_pix_x
	movzx	edx, r9w	# specX, specX
	cmp	esi, edx	# D.9566, specX
	jle	.L117	#,
	movzx	r10d, WORD PTR [r12+200]	# specY, str_elem_88(D)->spec_pix_y
	movzx	edx, r10w	# specY, specY
	cmp	eax, edx	# D.9570, specY
	jg	.L118	#,
.L117:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	fwrite	#
	mov	eax, 2	# D.9555,
	jmp	.L148	#
.L143:
	movzx	r11d, r15b	# D.9526, D.9526
	mov	eax, ecx	# tmp276, pitch
	mov	edx, 0	# tmp277,
	div	r11d	# D.9526
	mov	edx, eax	# tmp350,
	sub	edx, esi	# tmp350, D.9566
	cmp	eax, esi	# tmp276, D.9566
	mov	eax, 0	# tmp351,
	cmova	eax, edx	# tmp350,, sp
	imul	eax, r15d	# sp, D.9526
	mov	BYTE PTR [rsp+24], al	# %sfp, sp
	movzx	eax, r8w	# actX, actX
	sub	eax, 1	# tmp279,
	movzx	edx, r15b	# D.9526, D.9526
	imul	edx, eax	# D.9526, tmp279
	mov	WORD PTR [rsp+32], dx	# %sfp, D.9526
	movzx	edi, di	# actY, actY
	lea	eax, [rdi-1]	# tmp282,
	mov	edi, r13d	#, D.9516
	imul	edi, eax	#, tmp282
	mov	WORD PTR [rsp+40], di	# %sfp,
	mov	eax, r11d	# D.9559, D.9526
	and	esi, 65535	# tmp283,
	imul	esi, r11d	# tmp283, D.9559
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
	jne	.L120	#,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L121	#,
.L120:
	mov	rdi, rbx	#, imgdst
	call	SDL_LockSurface	#
.L121:
	mov	r11d, 0	# alpha,
	mov	edi, DWORD PTR [rsp+56]	#, %sfp
	mov	QWORD PTR [rsp+56], rdi	# %sfp,
	movzx	eax, WORD PTR [rsp+40]	#, %sfp
	mov	QWORD PTR [rsp+136], rax	# %sfp,
	movzx	edx, WORD PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rsp+144], rdx	# %sfp,
	movzx	esi, r15b	#, D.9526
	mov	QWORD PTR [rsp+40], rsi	# %sfp,
	movzx	r10d, r13w	# D.9756, D.9516
	movzx	edi, BYTE PTR [rsp+24]	#, %sfp
	mov	QWORD PTR [rsp+64], rdi	# %sfp,
	mov	r13d, r15d	# D.9526, D.9526
	mov	QWORD PTR [rsp+152], rbx	# %sfp, imgdst
	mov	rax, r10	# D.9756, D.9756
	mov	r10, r12	# str_elem, str_elem
	mov	r12d, r11d	# alpha, alpha
	mov	r11, rax	# D.9756, D.9756
	jmp	.L122	#
.L141:
	mov	rax, QWORD PTR [rsp+56]	#, %sfp
	add	rax, r14	#, off_dst
	mov	QWORD PTR [rsp+88], rax	# %sfp,
	mov	rdx, QWORD PTR [rsp+16]	#, %sfp
	mov	QWORD PTR [rsp+104], rdx	# %sfp,
	mov	rsi, QWORD PTR [rsp+56]	#, %sfp
	add	rsi, rdx	#,
	mov	QWORD PTR [rsp+112], rsi	# %sfp,
	jmp	.L123	#
.L140:
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
	jmp	.L124	#
.L135:
	cmp	rax, QWORD PTR [rsp+48]	# d_src_off, %sfp
	jb	.L125	#,
	cmp	rax, QWORD PTR [rsp+24]	# d_src_off, %sfp
	jb	.L125	#,
	cmp	rax, QWORD PTR [rsp+72]	# d_src_off, %sfp
	jae	.L125	#,
	test	r10, r10	# str_elem
	je	.L126	#,
	mov	rcx, QWORD PTR [r10+160]	# str_elem_88(D)->grid.items, str_elem_88(D)->grid.items
	movzx	edx, si	# x, x
	imul	rdx, rdx, 40	# tmp304, x,
	mov	rdi, QWORD PTR [rsp+96]	#, %sfp
	add	rdx, QWORD PTR [rcx+rdi]	# tmp305, *D.9688_204
	mov	rdx, QWORD PTR [rdx]	# D.9692_208->widget, D.9692_208->widget
	mov	edx, DWORD PTR [rdx+144]	# str_color, MEM[(struct Rectangle *)D.9693_209].color
	cmp	edx, 16777215	# str_color,
	je	.L125	#,
	cmp	edx, 12189619	# str_color,
	jne	.L127	#,
	cmp	r13b, 4	# D.9526,
	jne	.L125	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, DWORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.9512_220->Amask
	jmp	.L125	#
.L127:
	cmp	r13b, 3	# D.9526,
	jne	.L128	#,
	movzx	edx, WORD PTR [rax]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	WORD PTR [rsp+160], dx	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	movzx	edx, BYTE PTR [rax+2]	# MEM[base: d_src_off_24, offset: 0B], MEM[base: d_src_off_24, offset: 0B]
	mov	BYTE PTR [rsp+162], dl	# MEM[(char * {ref-all})&color], MEM[base: d_src_off_24, offset: 0B]
	movzx	edx, BYTE PTR [rsp+160]	# D.9713, color
	cmp	dl, BYTE PTR [rsp+176]	# D.9713, min
	jae	.L129	#,
	mov	BYTE PTR [rsp+176], dl	# min, D.9713
.L129:
	movzx	edx, BYTE PTR [rsp+161]	# D.9717, color
	cmp	dl, BYTE PTR [rsp+177]	# D.9717, min
	jae	.L130	#,
	mov	BYTE PTR [rsp+177], dl	# min, D.9717
.L130:
	movzx	edx, BYTE PTR [rsp+162]	# D.9721, color
	cmp	dl, BYTE PTR [rsp+178]	# D.9721, min
	jae	.L125	#,
	mov	BYTE PTR [rsp+178], dl	# min, D.9721
	jmp	.L125	#
.L128:
	cmp	r13b, 4	# D.9526,
	jne	.L125	#,
	mov	edi, DWORD PTR [rax]	# col, MEM[base: d_src_off_24, offset: 0B]
	cmp	edx, 961024	# str_color,
	jne	.L131	#,
	mov	rdx, QWORD PTR [rbp+8]	# imgsrc_33(D)->format, imgsrc_33(D)->format
	mov	r12d, edi	# alpha, col
	and	r12d, DWORD PTR [rdx+32]	# alpha, D.9512_234->Amask
.L131:
	mov	rdx, QWORD PTR [rbp+8]	# D.9512, imgsrc_33(D)->format
	mov	r8d, edi	# tmp313, col
	and	r8d, DWORD PTR [rdx+20]	# tmp313, D.9512_237->Rmask
	movzx	ecx, BYTE PTR [rdx+14]	# D.9512_237->Rshift, D.9512_237->Rshift
	shr	r8d, cl	# tmp313, D.9512_237->Rshift
	mov	r15d, r8d	# D.9734, tmp315
	mov	BYTE PTR [rsp+160], r8b	# color, tmp315
	mov	r8d, edi	# tmp316, col
	and	r8d, DWORD PTR [rdx+24]	# tmp316, D.9512_237->Gmask
	movzx	ecx, BYTE PTR [rdx+15]	# D.9512_237->Gshift, D.9512_237->Gshift
	shr	r8d, cl	# tmp316, D.9512_237->Gshift
	mov	ecx, r8d	# tmp318, tmp316
	mov	BYTE PTR [rsp+161], cl	# color, tmp318
	and	edi, DWORD PTR [rdx+28]	# tmp319, D.9512_237->Bmask
	movzx	ecx, BYTE PTR [rdx+16]	# D.9512_237->Bshift, D.9512_237->Bshift
	shr	edi, cl	# tmp319, D.9512_237->Bshift
	mov	edx, edi	# D.9745, tmp321
	mov	BYTE PTR [rsp+162], dil	# color, tmp321
	cmp	r15b, BYTE PTR [rsp+176]	# D.9734, min
	jae	.L132	#,
	mov	BYTE PTR [rsp+176], r15b	# min, D.9734
.L132:
	cmp	r8b, BYTE PTR [rsp+177]	# D.9740, min
	jae	.L133	#,
	mov	BYTE PTR [rsp+177], r8b	# min, D.9740
.L133:
	cmp	dl, BYTE PTR [rsp+178]	# D.9745, min
	jae	.L125	#,
	mov	BYTE PTR [rsp+178], dl	# min, D.9745
.L125:
	add	rax, QWORD PTR [rsp+40]	# d_src_off, %sfp
	add	esi, 1	# x,
.L137:
	mov	rdx, r9	# D.10893, p_src_off
	cmp	rax, QWORD PTR [rsp+120]	# d_src_off, %sfp
	ja	.L134	#,
	cmp	QWORD PTR [rsp+32], rax	# %sfp, d_src_off
	ja	.L135	#,
.L134:
	lea	r9, [r11+rdx]	# p_src_off,
	add	QWORD PTR [rsp+32], r11	# %sfp, D.9756
	add	QWORD PTR [rsp+24], r11	# %sfp, D.9756
	add	ebx, 1	# y,
.L124:
	mov	rax, QWORD PTR [rsp+8]	# D.10909, %sfp
	cmp	r9, QWORD PTR [rsp+128]	# p_src_off, %sfp
	ja	.L136	#,
	movzx	eax, bx	# y, y
	sal	rax, 3	#,
	mov	QWORD PTR [rsp+96], rax	# %sfp,
	mov	rax, r9	# d_src_off, p_src_off
	mov	esi, 0	# x,
	mov	rdx, QWORD PTR [rsp+144]	#, %sfp
	add	rdx, r9	#, p_src_off
	mov	QWORD PTR [rsp+120], rdx	# %sfp,
	jmp	.L137	#
.L136:
	mov	esi, r12d	# alpha, alpha
	cmp	r13b, 3	# D.9526,
	jne	.L138	#,
	movzx	edx, WORD PTR [rsp+176]	# MEM[(char * {ref-all})&min], MEM[(char * {ref-all})&min]
	mov	WORD PTR [r14], dx	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&min]
	movzx	edx, BYTE PTR [rsp+178]	# MEM[(char * {ref-all})&min], MEM[(char * {ref-all})&min]
	mov	BYTE PTR [r14+2], dl	# MEM[base: off_dst_19, offset: 0B], MEM[(char * {ref-all})&min]
	jmp	.L139	#
.L138:
	cmp	r13b, 4	# D.9526,
	jne	.L139	#,
	mov	rdx, QWORD PTR [rbp+8]	# D.9512, imgsrc_33(D)->format
	movzx	edi, BYTE PTR [rsp+177]	# min, min
	movzx	ecx, BYTE PTR [rdx+15]	# D.9512_283->Gshift, D.9512_283->Gshift
	sal	edi, cl	# tmp332, D.9512_283->Gshift
	movzx	r8d, BYTE PTR [rsp+176]	# min, min
	movzx	ecx, BYTE PTR [rdx+14]	# D.9512_283->Rshift, D.9512_283->Rshift
	sal	r8d, cl	# tmp335, D.9512_283->Rshift
	or	edi, r8d	# tmp336, tmp335
	movzx	r8d, BYTE PTR [rsp+178]	# min, min
	movzx	ecx, BYTE PTR [rdx+16]	# D.9512_283->Bshift, D.9512_283->Bshift
	sal	r8d, cl	# tmp339, D.9512_283->Bshift
	or	edi, r8d	# tmp340, tmp339
	or	esi, edi	# tmp341, tmp340
	mov	DWORD PTR [r14], esi	# MEM[base: off_dst_19, offset: 0B], tmp341
.L139:
	add	rax, QWORD PTR [rsp+40]	# D.10909, %sfp
	mov	QWORD PTR [rsp+8], rax	# %sfp, D.10909
	add	r14, QWORD PTR [rsp+40]	# off_dst, %sfp
.L123:
	cmp	r14, QWORD PTR [rsp+88]	# off_dst, %sfp
	jb	.L140	#,
	mov	rcx, QWORD PTR [rsp+104]	#, %sfp
	add	rcx, r11	#, D.9756
	mov	QWORD PTR [rsp+16], rcx	# %sfp,
	add	r14, QWORD PTR [rsp+64]	# off_dst, %sfp
	mov	rsi, QWORD PTR [rsp+64]	#, %sfp
	add	QWORD PTR [rsp+8], rsi	# %sfp,
.L122:
	cmp	r14, QWORD PTR [rsp+80]	# off_dst, %sfp
	jb	.L141	#,
	mov	rbx, QWORD PTR [rsp+152]	# imgdst, %sfp
	cmp	DWORD PTR [rbx+40], 0	# imgdst_35(D)->offset,
	jne	.L142	#,
	mov	eax, 0	# D.9555,
	test	DWORD PTR [rbx], 16389	# imgdst_35(D)->flags,
	je	.L148	#,
.L142:
	mov	rdi, rbx	#, imgdst
	call	SDL_UnlockSurface	#
	mov	eax, 0	# D.9555,
	jmp	.L148	#
.L114:
	mov	esi, DWORD PTR [rbp+16]	# D.9566, imgsrc_33(D)->w
	movzx	ecx, r13w	# pitch, D.9516
	mov	r8d, 3	# actX,
	mov	r10d, 1	# specY,
	mov	r9d, 1	# specX,
	mov	edi, 3	# actY,
	jmp	.L143	#
.L118:
	movzx	ecx, r13w	# pitch, D.9516
	jmp	.L143	#
.L126:
	cmp	si, 1	# x,
	jne	.L147	#,
	mov	edx, 961024	# str_color,
	cmp	bx, 1	# y,
	je	.L127	#,
.L147:
	mov	edx, 0	# str_color,
	jmp	.L127	#
.L148:
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
.LFE96:
	.size	GToolsMorph_erode, .-GToolsMorph_erode
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"GToolsMorph_open() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC13:
	.string	"GToolsMorph_open() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC14:
	.string	"GToolsMorph_open() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC15:
	.string	"GToolsMorph_open() > Structuring element origin not exists or is outside of image.\n"
	.align 8
.LC16:
	.string	"GToolsMorph_open> Failed to create temporary surface SDL_ConvertSurface: %s\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	"GToolsMorph.c"
	.text
	.globl	GToolsMorph_open
	.type	GToolsMorph_open, @function
GToolsMorph_open:
.LFB97:
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
	je	.L151	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L151	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9434, imgsrc_2(D)->format
	test	rax, rax	# D.9434
	je	.L151	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.9436, imgdst_4(D)->format
	test	rdx, rdx	# D.9436
	je	.L151	#,
	movzx	ecx, WORD PTR [rsi+24]	#, imgdst_4(D)->pitch
	cmp	WORD PTR [rdi+24], cx	# imgsrc_2(D)->pitch,
	jne	.L151	#,
	mov	rsi, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rsi	#,
	jne	.L151	#,
	movzx	edi, BYTE PTR [rax+9]	# D.9448, D.9434_7->BytesPerPixel
	cmp	dil, BYTE PTR [rdx+9]	# D.9448, D.9436_8->BytesPerPixel
	jne	.L151	#,
	mov	ecx, DWORD PTR [rdx+32]	#, D.9436_8->Amask
	cmp	DWORD PTR [rax+32], ecx	# D.9434_7->Amask,
	jne	.L151	#,
	mov	esi, DWORD PTR [rdx+20]	#, D.9436_8->Rmask
	cmp	DWORD PTR [rax+20], esi	# D.9434_7->Rmask,
	jne	.L151	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L151	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9436_8->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9434_7->Ashift,
	jne	.L151	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L151	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9436_8->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9434_7->Bshift,
	jne	.L151	#,
	cmp	QWORD PTR [rbp+32], 0	# imgsrc_2(D)->pixels,
	je	.L151	#,
	cmp	QWORD PTR [rbx+32], 0	# imgdst_4(D)->pixels,
	jne	.L152	#,
.L151:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 72	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC12	#,
	call	fwrite	#
	mov	eax, -56	# D.9477,
	jmp	.L153	#
.L152:
	lea	eax, [rdi-3]	# tmp120,
	cmp	al, 1	# tmp120,
	jbe	.L154	#,
	movzx	ecx, dil	# D.9448, D.9448
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9477,
	jmp	.L153	#
.L154:
	test	r12, r12	# str_elem
	je	.L155	#,
	mov	edx, DWORD PTR [rbp+16]	# D.9488, imgsrc_2(D)->w
	movzx	eax, WORD PTR [r12+194]	# str_elem_57(D)->actX, str_elem_57(D)->actX
	cmp	eax, edx	# str_elem_57(D)->actX, D.9488
	jge	.L156	#,
	mov	eax, DWORD PTR [rbp+20]	# D.9492, imgsrc_2(D)->h
	movzx	ecx, WORD PTR [r12+196]	# str_elem_57(D)->actY, str_elem_57(D)->actY
	cmp	ecx, eax	# str_elem_57(D)->actY, D.9492
	jl	.L157	#,
.L156:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 81	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC14	#,
	call	fwrite	#
	mov	eax, 1	# D.9477,
	jmp	.L153	#
.L157:
	movzx	ecx, WORD PTR [r12+198]	# str_elem_57(D)->spec_pix_x, str_elem_57(D)->spec_pix_x
	cmp	edx, ecx	# D.9488, str_elem_57(D)->spec_pix_x
	jle	.L158	#,
	movzx	edx, WORD PTR [r12+200]	# str_elem_57(D)->spec_pix_y, str_elem_57(D)->spec_pix_y
	cmp	eax, edx	# D.9492, str_elem_57(D)->spec_pix_y
	jg	.L155	#,
.L158:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 83	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC15	#,
	call	fwrite	#
	mov	eax, 2	# D.9477,
	jmp	.L153	#
.L155:
	mov	rdi, rbp	#, imgsrc
	call	Static_CopySurface	#
	mov	r13, rax	# temp_surface,
	test	rax, rax	# temp_surface
	jne	.L159	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9502
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 3	# D.9477,
	jmp	.L153	#
.L159:
	mov	rdx, r12	#, str_elem
	mov	rsi, rax	#, temp_surface
	mov	rdi, rbp	#, imgsrc
	call	GToolsMorph_erode	#
	mov	rdx, r12	#, str_elem
	mov	rsi, rbx	#, imgdst
	mov	rdi, r13	#, temp_surface
	call	GToolsMorph_dilate	#
	mov	edx, 597	#,
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, r13	#, temp_surface
	call	wSDL_FreeSurface	#
	mov	eax, 0	# D.9477,
.L153:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	GToolsMorph_open, .-GToolsMorph_open
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"GToolsMorph_close() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC19:
	.string	"GToolsMorph_close() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC20:
	.string	"GToolsMorph_close() > Structuring element size should be smaller than image size.\n"
	.align 8
.LC21:
	.string	"GToolsMorph_close() > Structuring element origin not exists or is outside of image.\n"
	.align 8
.LC22:
	.string	"GToolsMorph_close() Failed to create temporary surface SDL_ConvertSurface: %s\n"
	.text
	.globl	GToolsMorph_close
	.type	GToolsMorph_close, @function
GToolsMorph_close:
.LFB98:
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
	je	.L162	#,
	mov	rbp, rdi	# imgsrc, imgsrc
	test	rdi, rdi	# imgsrc
	je	.L162	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9356, imgsrc_2(D)->format
	test	rax, rax	# D.9356
	je	.L162	#,
	mov	r12, rdx	# str_elem, str_elem
	mov	rdx, QWORD PTR [rsi+8]	# D.9358, imgdst_4(D)->format
	test	rdx, rdx	# D.9358
	je	.L162	#,
	movzx	ecx, WORD PTR [rsi+24]	#, imgdst_4(D)->pitch
	cmp	WORD PTR [rdi+24], cx	# imgsrc_2(D)->pitch,
	jne	.L162	#,
	mov	rsi, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rdi+16], rsi	#,
	jne	.L162	#,
	movzx	edi, BYTE PTR [rax+9]	# D.9370, D.9356_7->BytesPerPixel
	cmp	dil, BYTE PTR [rdx+9]	# D.9370, D.9358_8->BytesPerPixel
	jne	.L162	#,
	mov	ecx, DWORD PTR [rdx+32]	#, D.9358_8->Amask
	cmp	DWORD PTR [rax+32], ecx	# D.9356_7->Amask,
	jne	.L162	#,
	mov	esi, DWORD PTR [rdx+20]	#, D.9358_8->Rmask
	cmp	DWORD PTR [rax+20], esi	# D.9356_7->Rmask,
	jne	.L162	#,
	mov	rcx, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rcx	#,
	jne	.L162	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9358_8->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9356_7->Ashift,
	jne	.L162	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L162	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9358_8->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9356_7->Bshift,
	jne	.L162	#,
	cmp	QWORD PTR [rbp+32], 0	# imgsrc_2(D)->pixels,
	je	.L162	#,
	cmp	QWORD PTR [rbx+32], 0	# imgdst_4(D)->pixels,
	jne	.L163	#,
.L162:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 73	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC18	#,
	call	fwrite	#
	mov	eax, -56	# D.9399,
	jmp	.L164	#
.L163:
	lea	eax, [rdi-3]	# tmp120,
	cmp	al, 1	# tmp120,
	jbe	.L165	#,
	movzx	ecx, dil	# D.9370, D.9370
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9399,
	jmp	.L164	#
.L165:
	test	r12, r12	# str_elem
	je	.L166	#,
	mov	edx, DWORD PTR [rbp+16]	# D.9410, imgsrc_2(D)->w
	movzx	eax, WORD PTR [r12+194]	# str_elem_57(D)->actX, str_elem_57(D)->actX
	cmp	eax, edx	# str_elem_57(D)->actX, D.9410
	jge	.L167	#,
	mov	eax, DWORD PTR [rbp+20]	# D.9414, imgsrc_2(D)->h
	movzx	ecx, WORD PTR [r12+196]	# str_elem_57(D)->actY, str_elem_57(D)->actY
	cmp	ecx, eax	# str_elem_57(D)->actY, D.9414
	jl	.L168	#,
.L167:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC20	#,
	call	fwrite	#
	mov	eax, 1	# D.9399,
	jmp	.L164	#
.L168:
	movzx	ecx, WORD PTR [r12+198]	# str_elem_57(D)->spec_pix_x, str_elem_57(D)->spec_pix_x
	cmp	edx, ecx	# D.9410, str_elem_57(D)->spec_pix_x
	jle	.L169	#,
	movzx	edx, WORD PTR [r12+200]	# str_elem_57(D)->spec_pix_y, str_elem_57(D)->spec_pix_y
	cmp	eax, edx	# D.9414, str_elem_57(D)->spec_pix_y
	jg	.L166	#,
.L169:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 84	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC21	#,
	call	fwrite	#
	mov	eax, 2	# D.9399,
	jmp	.L164	#
.L166:
	mov	rdi, rbp	#, imgsrc
	call	Static_CopySurface	#
	mov	r13, rax	# temp_surface,
	test	rax, rax	# temp_surface
	jne	.L170	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9424
	mov	edx, OFFSET FLAT:.LC22	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 3	# D.9399,
	jmp	.L164	#
.L170:
	mov	rdx, r12	#, str_elem
	mov	rsi, rax	#, temp_surface
	mov	rdi, rbp	#, imgsrc
	call	GToolsMorph_dilate	#
	mov	rdx, r12	#, str_elem
	mov	rsi, rbx	#, imgdst
	mov	rdi, r13	#, temp_surface
	call	GToolsMorph_erode	#
	mov	edx, 632	#,
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, r13	#, temp_surface
	call	wSDL_FreeSurface	#
	mov	eax, 0	# D.9399,
.L164:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	GToolsMorph_close, .-GToolsMorph_close
	.section	.rodata.str1.1
.LC23:
	.string	"%2X  "
.LC24:
	.string	"%2X.%2X.%2X  "
.LC25:
	.string	"%2X.%2X.%2X.%2X  "
	.text
	.globl	GToolsMorph_printSurf
	.type	GToolsMorph_printSurf, @function
GToolsMorph_printSurf:
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
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 112
	mov	rax, QWORD PTR [rdi+8]	# surf_4(D)->format, surf_4(D)->format
	movzx	ebp, BYTE PTR [rax+9]	# Bpp, D.9311_5->BytesPerPixel
	mov	rbx, QWORD PTR [rdi+32]	# off_src, surf_4(D)->pixels
	movzx	eax, WORD PTR [rdi+24]	# D.9314, surf_4(D)->pitch
	mov	r14d, eax	# tmp106, D.9314
	imul	r14d, DWORD PTR [rdi+20]	# tmp106, surf_4(D)->h
	movsx	r14, r14d	# tmp107, tmp106
	add	r14, rbx	# off_src_end, off_src
	movzx	ecx, bpl	# D.9318, Bpp
	mov	edx, eax	# tmp109, D.9314
	sar	edx, 31	# tmp109,
	idiv	ecx	# D.9318
	mov	edx, DWORD PTR [rdi+16]	# D.9320, surf_4(D)->w
	mov	esi, eax	# tmp124, tmp108
	sub	esi, edx	# tmp124, D.9320
	cmp	eax, edx	# tmp108, D.9320
	mov	eax, 0	# tmp125,
	cmovle	esi, eax	# tmp124,, sp, tmp125
	mov	eax, ecx	# Bpp, D.9318
	imul	eax, esi	# sp, sp
	imul	edx, ecx	# wb, D.9318
	cmp	rbx, r14	# off_src, off_src_end
	jae	.L172	#,
	mov	r15d, edx	# wb, wb
	movzx	r12d, bpl	# Bpp, Bpp
	mov	eax, eax	#, sp
	mov	QWORD PTR [rsp+24], rax	# %sfp,
.L182:
	lea	r13, [rbx+r15]	# off_line_end,
	cmp	r13, rbx	# off_line_end, off_src
	jbe	.L175	#,
.L183:
	cmp	bpl, 1	# Bpp,
	jne	.L176	#,
	movzx	ecx, BYTE PTR [rbx]	# MEM[base: off_src_94, offset: 0B], MEM[base: off_src_94, offset: 0B]
	mov	edx, OFFSET FLAT:.LC23	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L177	#
.L176:
	mov	ecx, 4	#,
	mov	rdx, r12	#, Bpp
	mov	rsi, rbx	#, off_src
	lea	rdi, [rsp+32]	#,
	call	__memcpy_chk	#
	cmp	bpl, 3	# Bpp,
	jne	.L178	#,
	movzx	ecx, BYTE PTR [rsp+32]	# col, col
	movzx	r9d, BYTE PTR [rsp+34]	#, col
	movzx	r8d, BYTE PTR [rsp+33]	#, col
	mov	edx, OFFSET FLAT:.LC24	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L177	#
.L178:
	cmp	bpl, 4	# Bpp,
	jne	.L177	#,
	movzx	r9d, BYTE PTR [rsp+34]	# col, col
	movzx	r8d, BYTE PTR [rsp+33]	# col, col
	movzx	ecx, BYTE PTR [rsp+32]	# col, col
	movzx	eax, BYTE PTR [rsp+35]	# col, col
	mov	DWORD PTR [rsp], eax	#, col
	mov	edx, OFFSET FLAT:.LC25	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L177:
	lea	rax, [rbx+r12]	# D.10956,
	mov	rbx, rax	# off_src, D.10956
	cmp	r13, rax	# off_line_end, D.10956
	ja	.L183	#,
.L175:
	mov	rsi, QWORD PTR stderr[rip]	#, stderr
	mov	edi, 10	#,
	call	fputc	#
	add	rbx, QWORD PTR [rsp+24]	# off_src, %sfp
	cmp	r14, rbx	# off_src_end, off_src
	ja	.L182	#,
.L172:
	add	rsp, 56	#,
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
	.size	GToolsMorph_printSurf, .-GToolsMorph_printSurf
	.globl	GToolsMorph_fillSurf2
	.type	GToolsMorph_fillSurf2, @function
GToolsMorph_fillSurf2:
.LFB100:
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
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 112
	mov	rax, QWORD PTR [rdi+8]	# surf_5(D)->format, surf_5(D)->format
	movzx	ebp, BYTE PTR [rax+9]	# Bpp, D.9287_6->BytesPerPixel
	mov	r13, QWORD PTR [rdi+32]	# off_src, surf_5(D)->pixels
	movzx	eax, WORD PTR [rdi+24]	# D.9290, surf_5(D)->pitch
	mov	edx, eax	# tmp93, D.9290
	imul	edx, DWORD PTR [rdi+20]	# tmp93, surf_5(D)->h
	movsx	rdx, edx	# tmp94, tmp93
	add	rdx, r13	#, off_src
	mov	QWORD PTR [rsp+8], rdx	# %sfp,
	movzx	ecx, bpl	# D.9294, Bpp
	mov	edx, eax	# tmp96, D.9290
	sar	edx, 31	# tmp96,
	idiv	ecx	# D.9294
	mov	edx, DWORD PTR [rdi+16]	# D.9296, surf_5(D)->w
	mov	esi, eax	# tmp117, tmp95
	sub	esi, edx	# tmp117, D.9296
	cmp	eax, edx	# tmp95, D.9296
	mov	eax, 0	# tmp118,
	cmovle	esi, eax	# tmp117,, sp, tmp118
	mov	eax, ecx	# Bpp, D.9294
	imul	eax, esi	# sp, sp
	imul	edx, ecx	# wb, D.9294
	cmp	r13, QWORD PTR [rsp+8]	# off_src, %sfp
	jae	.L187	#,
	mov	edx, edx	#, wb
	mov	QWORD PTR [rsp+16], rdx	# %sfp,
	mov	r12d, -2139062143	# tmp123,
	movzx	r14d, bpl	# D.9308, Bpp
	mov	eax, eax	#, sp
	mov	QWORD PTR [rsp+24], rax	# %sfp,
.L197:
	mov	r15, QWORD PTR [rsp+16]	# off_line_end, %sfp
	add	r15, r13	# off_line_end, off_src
	cmp	r15, r13	# off_line_end, off_src
	ja	.L201	#,
	jmp	.L191	#
.L198:
	call	rand	#
	mov	ecx, eax	# D.9305,
	imul	r12d	# tmp123
	add	edx, ecx	# tmp103, D.9305
	sar	edx, 7	# tmp104,
	mov	eax, ecx	# tmp105, D.9305
	sar	eax, 31	# tmp105,
	sub	edx, eax	# tmp100, tmp105
	mov	eax, edx	# tmp107, tmp100
	sal	eax, 8	# tmp107,
	sub	eax, edx	# tmp108, tmp100
	sub	ecx, eax	# tmp109, tmp108
	mov	BYTE PTR [rsp+32+rbx], cl	# MEM[symbol: col, index: ivtmp.237_50, offset: 0B], tmp109
	add	rbx, 1	# ivtmp.237,
	cmp	bpl, bl	# Bpp, ivtmp.237
	ja	.L198	#,
.L193:
	mov	rdx, r14	#, D.9308
	lea	rsi, [rsp+32]	#,
	mov	rdi, r13	#, off_src
	call	memcpy	#
	lea	rax, [r13+0+r14]	# D.10975,
	mov	r13, rax	# off_src, D.10975
	cmp	rax, r15	# D.10975, off_line_end
	jae	.L191	#,
.L201:
	mov	ebx, 0	# ivtmp.237,
	test	bpl, bpl	# Bpp
	jne	.L198	#,
	jmp	.L193	#
.L191:
	add	r13, QWORD PTR [rsp+24]	# off_src, %sfp
	cmp	QWORD PTR [rsp+8], r13	# %sfp, off_src
	ja	.L197	#,
.L187:
	add	rsp, 56	#,
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
.LFE100:
	.size	GToolsMorph_fillSurf2, .-GToolsMorph_fillSurf2
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"Morph::Morph_main() Please set DEBUG_FROM_MAIN to true to debug morphologic methods from this method.\n"
	.text
	.globl	GToolsMorph_main
	.type	GToolsMorph_main, @function
GToolsMorph_main:
.LFB101:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 102	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC26	#,
	call	fwrite	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	GToolsMorph_main, .-GToolsMorph_main
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"GToolsMorph_reconstruction() > Failed on assertion Check_surfaces(imgsrc, imgdst)\n"
	.align 8
.LC28:
	.string	"GToolsMorph_reconstruction() > Unsupported BytesPerPixel format %d\n"
	.align 8
.LC29:
	.string	"GToolsMorph_reconstruction(): GToolsMorph_dilate() exited with code %d\n"
	.text
	.globl	GToolsMorph_reconstruction
	.type	GToolsMorph_reconstruction, @function
GToolsMorph_reconstruction:
.LFB102:
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
	je	.L206	#,
	mov	rbp, rdi	# imgmask, imgmask
	test	rdi, rdi	# imgmask
	je	.L206	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9102, imgmask_16(D)->format
	test	rax, rax	# D.9102
	je	.L206	#,
	mov	r12d, edx	# limit_iter, limit_iter
	mov	rdx, QWORD PTR [rsi+8]	# D.9104, imgmarker_18(D)->format
	test	rdx, rdx	# D.9104
	je	.L206	#,
	movzx	edi, WORD PTR [rdi+24]	# D.9106, imgmask_16(D)->pitch
	cmp	di, WORD PTR [rsi+24]	# D.9106, imgmarker_18(D)->pitch
	jne	.L206	#,
	mov	rcx, QWORD PTR [rsi+16]	#,
	cmp	QWORD PTR [rbp+16], rcx	#,
	jne	.L206	#,
	movzx	r15d, BYTE PTR [rax+9]	# D.9116, D.9102_21->BytesPerPixel
	cmp	r15b, BYTE PTR [rdx+9]	# D.9116, D.9104_22->BytesPerPixel
	jne	.L206	#,
	mov	esi, DWORD PTR [rdx+32]	#, D.9104_22->Amask
	cmp	DWORD PTR [rax+32], esi	# D.9102_21->Amask,
	jne	.L206	#,
	mov	ecx, DWORD PTR [rdx+20]	#, D.9104_22->Rmask
	cmp	DWORD PTR [rax+20], ecx	# D.9102_21->Rmask,
	jne	.L206	#,
	mov	rsi, QWORD PTR [rdx+24]	#,
	cmp	QWORD PTR [rax+24], rsi	#,
	jne	.L206	#,
	movzx	ecx, BYTE PTR [rdx+17]	#, D.9104_22->Ashift
	cmp	BYTE PTR [rax+17], cl	# D.9102_21->Ashift,
	jne	.L206	#,
	movzx	esi, WORD PTR [rdx+14]	#,
	cmp	WORD PTR [rax+14], si	#,
	jne	.L206	#,
	movzx	ecx, BYTE PTR [rdx+16]	#, D.9104_22->Bshift
	cmp	BYTE PTR [rax+16], cl	# D.9102_21->Bshift,
	jne	.L206	#,
	cmp	QWORD PTR [rbp+32], 0	# imgmask_16(D)->pixels,
	je	.L206	#,
	cmp	QWORD PTR [rbx+32], 0	# imgmarker_18(D)->pixels,
	jne	.L207	#,
.L206:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC27	#,
	call	fwrite	#
	mov	eax, -56	# D.9145,
	jmp	.L208	#
.L207:
	lea	eax, [r15-3]	# tmp259,
	cmp	al, 1	# tmp259,
	jbe	.L209	#,
	movzx	ecx, r15b	# D.9116, D.9116
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 100	# D.9145,
	jmp	.L208	#
.L209:
	movzx	edi, di	#, D.9106
	mov	DWORD PTR [rsp+32], edi	# %sfp,
	movzx	eax, r15b	# D.9116, D.9116
	imul	eax, DWORD PTR [rbp+16]	# D.9116, imgmask_16(D)->w
	mov	DWORD PTR [rsp+36], eax	# %sfp, D.9116
	mov	rdi, rbp	#, imgmask
	call	Static_CopySurface	#
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
	jne	.L210	#,
	test	DWORD PTR [rbx], 16389	# imgmarker_18(D)->flags,
	je	.L211	#,
.L210:
	mov	rdi, rbx	#, imgmarker
	call	SDL_LockSurface	#
.L211:
	mov	WORD PTR [rsp+76], 0	# %sfp,
	mov	DWORD PTR [rsp+12], 0	# %sfp,
	movzx	esi, r15b	#, D.9116
	mov	QWORD PTR [rsp+24], rsi	# %sfp,
	movzx	eax, r15b	#, D.9116
	mov	DWORD PTR [rsp+72], eax	# %sfp,
	mov	BYTE PTR [rsp+79], r15b	# %sfp, D.9116
.L227:
	mov	edx, 0	#,
	mov	rsi, QWORD PTR [rsp+16]	#, %sfp
	mov	rdi, rbx	#, imgmarker
	call	GToolsMorph_dilate	#
	test	al, al	# s
	je	.L223	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC29	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L213	#
.L219:
	mov	ecx, DWORD PTR [rsp+36]	#, %sfp
	cmp	DWORD PTR [rsp+12], ecx	# %sfp,
	jne	.L215	#,
	.p2align 4,,3
	jmp	.L224	#
.L216:
	add	rcx, 1	# ivtmp.252,
	jmp	.L214	#
.L224:
	mov	ecx, 0	# ivtmp.252,
.L214:
	lea	r9, [r8+rcx]	# px_tmp,
	lea	rdi, [rdx+rcx]	# px_marker,
	lea	rsi, [rax+rcx]	# px_mask,
	mov	r10d, DWORD PTR [rsp+36]	# tmp267, %sfp
	add	r10d, ecx	# tmp267, ivtmp.252
	cmp	DWORD PTR [rsp+32], r10d	# %sfp, tmp267
	ja	.L216	#,
	mov	r8, r9	# px_tmp, px_tmp
	mov	rdx, rdi	# px_marker, px_marker
	mov	rax, rsi	# px_mask, px_mask
	mov	DWORD PTR [rsp+12], 0	# %sfp,
.L215:
	cmp	BYTE PTR [rsp+79], 3	# %sfp,
	jne	.L217	#,
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
	jmp	.L218	#
.L217:
	mov	r9d, DWORD PTR [rax]	# D.9182, MEM[(unsigned int *)px_mask_6]
	mov	rsi, QWORD PTR [rbp+8]	# D.9102, imgmask_16(D)->format
	mov	r11d, DWORD PTR [r8]	# D.9198, MEM[(unsigned int *)px_tmp_12]
	mov	rcx, QWORD PTR [rsp+16]	#, %sfp
	mov	rdi, QWORD PTR [rcx+8]	# D.9200, imgtmp_78->format
	mov	r10, QWORD PTR [rbx+8]	# D.9104, imgmarker_18(D)->format
	mov	r13d, r11d	# tmp287, D.9198
	and	r13d, DWORD PTR [rdi+20]	# tmp287, D.9200_147->Rmask
	movzx	ecx, BYTE PTR [rdi+14]	# D.9200_147->Rshift, D.9200_147->Rshift
	shr	r13d, cl	# tmp289, D.9200_147->Rshift
	mov	r14d, r9d	# tmp290, D.9182
	and	r14d, DWORD PTR [rsi+20]	# tmp290, D.9102_117->Rmask
	movzx	ecx, BYTE PTR [rsi+14]	# D.9102_117->Rshift, D.9102_117->Rshift
	shr	r14d, cl	# tmp292, D.9102_117->Rshift
	cmp	r13d, r14d	# tmp289, tmp292
	cmova	r13d, r14d	# tmp289,, tmp286, tmp292
	movzx	ecx, BYTE PTR [r10+14]	# D.9104_180->Rshift, D.9104_180->Rshift
	mov	r14d, r13d	# tmp294, tmp286
	sal	r14d, cl	# tmp294, D.9104_180->Rshift
	mov	r13d, r11d	# tmp296, D.9198
	and	r13d, DWORD PTR [rdi+24]	# tmp296, D.9200_147->Gmask
	movzx	ecx, BYTE PTR [rdi+15]	# D.9200_147->Gshift, D.9200_147->Gshift
	shr	r13d, cl	# tmp298, D.9200_147->Gshift
	mov	r15d, r9d	# tmp299, D.9182
	and	r15d, DWORD PTR [rsi+24]	# tmp299, D.9102_117->Gmask
	movzx	ecx, BYTE PTR [rsi+15]	# D.9102_117->Gshift, D.9102_117->Gshift
	shr	r15d, cl	# tmp301, D.9102_117->Gshift
	cmp	r13d, r15d	# tmp298, tmp301
	cmova	r13d, r15d	# tmp298,, tmp295, tmp301
	movzx	ecx, BYTE PTR [r10+15]	# D.9104_180->Gshift, D.9104_180->Gshift
	sal	r13d, cl	# tmp303, D.9104_180->Gshift
	or	r13d, r14d	# tmp304, tmp294
	movzx	ecx, BYTE PTR [rsi+17]	# D.9102_117->Ashift, D.9102_117->Ashift
	and	ecx, r9d	# tmp306, D.9182
	or	r13d, ecx	# tmp307, tmp306
	and	r11d, DWORD PTR [rdi+28]	# tmp309, D.9200_147->Bmask
	movzx	ecx, BYTE PTR [rdi+16]	# D.9200_147->Bshift, D.9200_147->Bshift
	shr	r11d, cl	# tmp311, D.9200_147->Bshift
	and	r9d, DWORD PTR [rsi+28]	# tmp312, D.9102_117->Bmask
	movzx	ecx, BYTE PTR [rsi+16]	# D.9102_117->Bshift, D.9102_117->Bshift
	shr	r9d, cl	# tmp312, D.9102_117->Bshift
	cmp	r11d, r9d	# tmp311, tmp314
	cmova	r11d, r9d	# tmp311,, tmp308, tmp314
	movzx	ecx, BYTE PTR [r10+16]	# D.9104_180->Bshift, D.9104_180->Bshift
	sal	r11d, cl	# tmp316, D.9104_180->Bshift
	or	r13d, r11d	# tmp317, tmp316
	mov	DWORD PTR [rdx], r13d	# MEM[(unsigned int *)px_marker_9], tmp317
.L218:
	add	rax, QWORD PTR [rsp+24]	# px_mask, %sfp
	add	rdx, QWORD PTR [rsp+24]	# px_marker, %sfp
	add	r8, QWORD PTR [rsp+24]	# px_tmp, %sfp
	mov	esi, DWORD PTR [rsp+72]	#, %sfp
	add	DWORD PTR [rsp+12], esi	# %sfp,
	jmp	.L212	#
.L223:
	mov	r8, QWORD PTR [rsp+48]	# px_tmp, %sfp
	mov	rdx, QWORD PTR [rsp+56]	# px_marker, %sfp
	mov	rax, QWORD PTR [rsp+40]	# px_mask, %sfp
.L212:
	cmp	rax, QWORD PTR [rsp+64]	# px_mask, %sfp
	jb	.L219	#,
	add	WORD PTR [rsp+76], 1	# %sfp,
	cmp	WORD PTR [rsp+76], r12w	# %sfp, limit_iter
	jne	.L227	#,
	test	r12w, r12w	# limit_iter
	je	.L227	#,
.L213:
	cmp	DWORD PTR [rbx+40], 0	# imgmarker_18(D)->offset,
	jne	.L221	#,
	test	DWORD PTR [rbx], 16389	# imgmarker_18(D)->flags,
	je	.L222	#,
.L221:
	mov	rdi, rbx	#, imgmarker
	call	SDL_UnlockSurface	#
.L222:
	mov	edx, 846	#,
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	call	wSDL_FreeSurface	#
	mov	eax, 0	# D.9145,
.L208:
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
.LFE102:
	.size	GToolsMorph_reconstruction, .-GToolsMorph_reconstruction
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
