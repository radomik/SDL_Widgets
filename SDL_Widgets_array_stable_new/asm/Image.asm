	.file	"Image.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Image.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Image.asm
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
	.globl	Image_vdestroy
	.type	Image_vdestroy, @function
Image_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8945	#,
	call	Static_printObj2	#
	mov	rdi, QWORD PTR [rbx+176]	# MEM[(struct Image *)vthis_1(D)].path, MEM[(struct Image *)vthis_1(D)].path
	mov	edx, 56	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+176], 0	# MEM[(struct Image *)vthis_1(D)].path,
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
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
	.string	"%20s:\tWithin context: img_path=%s, minx=%hu, miny=%hu\n"
	.align 8
.LC2:
	.string	"Image_new: File does not exist %s\n"
	.align 8
.LC3:
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
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
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
	mov	edi, OFFSET FLAT:__FUNCTION__.8952	#,
	call	Static_nullThis2	#
	movzx	r13d, r13w	# miny, miny
	mov	DWORD PTR [rsp], r13d	#, miny
	movzx	r9d, r12w	#, minx
	mov	r8, rbp	#, img_path
	mov	ecx, OFFSET FLAT:__FUNCTION__.8952	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L6	#
.L5:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8952	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	QWORD PTR [rbx+176], 0	# this_2(D)->path,
	test	rbp, rbp	# img_path
	jne	.L7	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	jmp	.L6	#
.L7:
	mov	rdi, rbp	#, img_path
	call	Static_fileExist	#
	test	al, al	# D.8996
	.p2align 4,,3
	jne	.L8	#,
	mov	rcx, rbp	#, img_path
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	jmp	.L6	#
.L8:
	mov	edx, 90	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, img_path
	call	wIMG_Load	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)this_2(D)].surf, D.8999
	test	rax, rax	# D.8999
	jne	.L9	#,
	call	SDL_GetError	#
	mov	r8, rbp	#, img_path
	mov	rcx, rax	#, D.9003
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	Widget_setVisible	#
	jmp	.L6	#
.L9:
	mov	rdi, rbp	#, img_path
	call	coCopyCstr	#
	mov	QWORD PTR [rbx+176], rax	# this_2(D)->path, D.9004
	mov	rax, QWORD PTR [rbx+88]	# D.9000, MEM[(struct Widget *)this_2(D)].surf
	movzx	edx, WORD PTR [rax+20]	# tmp84, D.9000_20->h
	movzx	esi, WORD PTR [rax+16]	# tmp86, D.9000_20->w
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
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Image_new, .-Image_new
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Image_copy: Passed NULL: this(%p) or src(%p)\n"
	.text
	.globl	Image_copy
	.type	Image_copy, @function
Image_copy:
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
	mov	rbp, rsi	# src, src
	test	rsi, rsi	# src
	je	.L16	#,
	test	rdi, rdi	# this
	jne	.L12	#,
.L16:
	mov	r8, rbp	#, src
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebx, 0	# this,
	jmp	.L14	#
.L12:
	movzx	edx, dl	# copy_pos, copy_pos
	mov	ecx, 1	#,
	call	Widget_copy	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8958	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	rdi, QWORD PTR [rbp+176]	# D.8980, src_4(D)->path
	test	rdi, rdi	# D.8980
	je	.L15	#,
	call	coCopyCstr	#
	mov	QWORD PTR [rbx+176], rax	# this_2(D)->path, D.8983
	jmp	.L14	#
.L15:
	mov	QWORD PTR [rbx+176], 0	# this_2(D)->path,
.L14:
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
	.size	Image_copy, .-Image_copy
	.section	.rodata.str1.1
.LC5:
	.string	"image=NULL"
.LC6:
	.string	"%s"
	.text
	.globl	Image_toString
	.type	Image_toString, @function
Image_toString:
.LFB97:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC5	# D.8966,
	test	rdi, rdi	# this
	je	.L23	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR [rdi+176]	# this_2(D)->path, this_2(D)->path
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 128	#,
	mov	edi, OFFSET FLAT:str_id.8962	#,
	mov	eax, 0	#,
	call	snprintf	#
	mov	eax, OFFSET FLAT:str_id.8962	# D.8966,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L23:
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	Image_toString, .-Image_toString
	.globl	Image_class
	.data
	.align 8
	.type	Image_class, @object
	.size	Image_class, 8
Image_class:
	.quad	type
	.section	.rodata.str1.1
.LC7:
	.string	"Image"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	184
# name:
	.quad	.LC7
	.section	.rodata
	.type	__FUNCTION__.8945, @object
	.size	__FUNCTION__.8945, 15
__FUNCTION__.8945:
	.string	"Image_vdestroy"
	.type	__FUNCTION__.8952, @object
	.size	__FUNCTION__.8952, 10
__FUNCTION__.8952:
	.string	"Image_new"
	.type	__FUNCTION__.8958, @object
	.size	__FUNCTION__.8958, 11
__FUNCTION__.8958:
	.string	"Image_copy"
	.local	str_id.8962
	.comm	str_id.8962,128,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	Image_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	Widget_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
