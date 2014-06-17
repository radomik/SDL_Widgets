	.file	"Image.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Image.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Image.asm
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
	.string	"Image.c"
	.text
	.type	Image_vdestroy, @function
Image_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+144]	# MEM[(struct Image *)vthis_1(D)].path, MEM[(struct Image *)vthis_1(D)].path
	mov	edx, 45	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+144], 0	# MEM[(struct Image *)vthis_1(D)].path,
	mov	rdi, rbx	#, vthis
	call	Widget_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Image_vdestroy, .-Image_vdestroy
	.globl	Image_isExtSupported
	.type	Image_isExtSupported, @function
Image_isExtSupported:
.LFB93:
	.cfi_startproc
	mov	eax, 0	#,
	ret
	.cfi_endproc
.LFE93:
	.size	Image_isExtSupported, .-Image_isExtSupported
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Image_new: Passed NULL this pointer. img_path=%s, minx=%hu, miny=%hu\n"
	.section	.rodata.str1.1
.LC2:
	.string	"Image"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Image_new: File does not exist %s\n"
	.align 8
.LC4:
	.string	"Image_new: IMG_Load failed with error %s [path=%s]\n"
	.text
	.globl	Image_new
	.type	Image_new, @function
Image_new:
.LFB95:
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
	mov	rbp, rsi	# img_path, img_path
	mov	r12d, edx	# minx, minx
	mov	r13d, ecx	# miny, miny
	test	rdi, rdi	# this
	jne	.L5	#,
	movzx	r9d, cx	#, miny
	movzx	r8d, dx	#, minx
	mov	rcx, rsi	#, img_path
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L6	#
.L5:
	mov	ecx, OFFSET FLAT:.LC2	#,
	mov	edx, OFFSET FLAT:Image_vdestroy	#,
	mov	esi, 0	#,
	call	Widget_init_type	#
	mov	QWORD PTR [rbx+144], 0	# this_2(D)->path,
	test	rbp, rbp	# img_path
	jne	.L7	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	jmp	.L6	#
.L7:
	mov	rdi, rbp	#, img_path
	call	Static_fileExist	#
	test	al, al	# D.8687
	.p2align 4,,3
	jne	.L8	#,
	mov	rcx, rbp	#, img_path
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	jmp	.L6	#
.L8:
	mov	edx, 76	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, img_path
	call	wIMG_Load	#
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)this_2(D)].surf, D.8690
	test	rax, rax	# D.8690
	jne	.L9	#,
	call	SDL_GetError	#
	mov	r8, rbp	#, img_path
	mov	rcx, rax	#, D.8694
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	jmp	.L6	#
.L9:
	mov	rdi, rbp	# img_path, img_path
	mov	eax, 0	# tmp91,
	mov	rcx, -1	# tmp90,
	repnz scasb
	mov	rdi, rcx	# tmp88, tmp87
	not	rdi	# tmp88
	mov	ecx, 83	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+144], rax	# this_2(D)->path, D.8697
	test	rax, rax	# D.8697
	je	.L10	#,
	mov	rsi, rbp	#, img_path
	mov	rdi, rax	#, D.8697
	call	strcpy	#
.L10:
	mov	rax, QWORD PTR [rbx+48]	# D.8691, MEM[(struct Widget *)this_2(D)].surf
	movzx	edx, WORD PTR [rax+20]	# tmp93, D.8691_26->h
	movzx	esi, WORD PTR [rax+16]	# tmp95, D.8691_26->w
	mov	rdi, rbx	#, this
	call	Widget_setSize	#
	movzx	edx, r13w	# miny, miny
	movzx	esi, r12w	# minx, minx
	mov	rdi, rbx	#, this
	call	Widget_setPosition	#
	mov	esi, 1	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
.L6:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Image_new, .-Image_new
	.globl	Image_scale
	.type	Image_scale, @function
Image_scale:
.LFB96:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Widget_scale	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Image_scale, .-Image_scale
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Image_copy: Passed NULL: imgdest(%p) or imgsrc(%p)\n"
	.text
	.globl	Image_copy
	.type	Image_copy, @function
Image_copy:
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
	mov	rbx, rdi	# imgdest, imgdest
	mov	rbp, rsi	# imgsrc, imgsrc
	test	rsi, rsi	# imgsrc
	je	.L19	#,
	test	rdi, rdi	# imgdest
	jne	.L15	#,
.L19:
	mov	r8, rbp	#, imgsrc
	mov	rcx, rbx	#, imgdest
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# imgdest,
	jmp	.L17	#
.L15:
	movzx	edx, dl	# copy_pos, copy_pos
	mov	ecx, 1	#,
	call	Widget_copy	#
	mov	rdi, QWORD PTR [rbp+144]	# D.8661, imgsrc_4(D)->path
	test	rdi, rdi	# D.8661
	je	.L18	#,
	mov	eax, 0	# tmp84,
	mov	rcx, -1	# tmp83,
	repnz scasb
	mov	rdi, rcx	# tmp81, tmp80
	not	rdi	# tmp81
	mov	ecx, 107	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+144], rax	# imgdest_2(D)->path, D.8666
	mov	rsi, QWORD PTR [rbp+144]	# imgsrc_4(D)->path, imgsrc_4(D)->path
	mov	rdi, rax	#, D.8666
	call	strcpy	#
	jmp	.L17	#
.L18:
	mov	QWORD PTR [rbx+144], 0	# imgdest_2(D)->path,
.L17:
	mov	rax, rbx	#, imgdest
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	Image_copy, .-Image_copy
	.globl	Image_setPosition
	.type	Image_setPosition, @function
Image_setPosition:
.LFB98:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dx	# miny, miny
	movzx	esi, si	# minx, minx
	call	Widget_setPosition	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Image_setPosition, .-Image_setPosition
	.section	.rodata.str1.1
.LC6:
	.string	"image=NULL"
.LC7:
	.string	"%s"
	.text
	.globl	Image_toString
	.type	Image_toString, @function
Image_toString:
.LFB99:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC6	# D.8642,
	test	rdi, rdi	# image
	je	.L28	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR [rdi+144]	# image_2(D)->path, image_2(D)->path
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id	# D.8642,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L28:
	rep
	ret
	.cfi_endproc
.LFE99:
	.size	Image_toString, .-Image_toString
	.local	str_id
	.comm	str_id,128,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
