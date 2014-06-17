	.file	"Histogram.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Histogram.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Histogram.asm
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
	.string	"Histogram.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Histogram_refresh:Histogram> CreateRGBSurface failed: %s\n"
	.align 8
.LC2:
	.string	"Histogram_refresh:Histogram> Failed to fill background surface (FillRect)\n"
	.text
	.globl	Histogram_refresh
	.type	Histogram_refresh, @function
Histogram_refresh:
.LFB93:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbx, rdi	# histogram, histogram
	mov	rdi, QWORD PTR [rdi+48]	# MEM[(struct Widget *)histogram_4(D)].surf, MEM[(struct Widget *)histogram_4(D)].surf
	mov	edx, 35	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	mov	esi, 180	#,
	mov	edi, 512	#,
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)histogram_4(D)].surf, D.8640
	test	rax, rax	# D.8640
	jne	.L2	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8643
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)histogram_4(D)].visible,
	jmp	.L1	#
.L2:
	mov	edx, 16777215	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, D.8640
	call	SDL_FillRect	#
	test	eax, eax	# D.8645
	je	.L4	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 74	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)histogram_4(D)].visible,
	jmp	.L1	#
.L4:
	mov	WORD PTR [rbx+60], 512	# MEM[(struct Widget *)histogram_4(D)].pos.w,
	mov	WORD PTR [rbx+62], 180	# MEM[(struct Widget *)histogram_4(D)].pos.h,
	movzx	eax, WORD PTR [rbx+56]	# tmp125, MEM[(struct Widget *)histogram_4(D)].pos.x
	add	ax, 512	# tmp125,
	mov	WORD PTR [rbx+112], ax	# MEM[(struct Widget *)histogram_4(D)].maxx, tmp125
	movzx	eax, WORD PTR [rbx+58]	# tmp127, MEM[(struct Widget *)histogram_4(D)].pos.y
	add	ax, 180	# tmp127,
	mov	WORD PTR [rbx+114], ax	# MEM[(struct Widget *)histogram_4(D)].maxy, tmp127
	mov	rcx, QWORD PTR [rbx+144]	# D.8654, histogram_4(D)->data
	test	rcx, rcx	# D.8654
	je	.L5	#,
	mov	DWORD PTR [rbx+152], 0	# histogram_4(D)->max_value,
	mov	DWORD PTR [rbx+156], -1	# histogram_4(D)->min_value,
	mov	eax, 0	# ivtmp.36,
.L8:
	mov	edx, DWORD PTR [rcx+rax]	# D.8660, MEM[base: D.8654_20, index: ivtmp.36_116, offset: 0B]
	cmp	edx, DWORD PTR [rbx+152]	# D.8660, histogram_4(D)->max_value
	jbe	.L6	#,
	mov	DWORD PTR [rbx+152], edx	# histogram_4(D)->max_value, D.8660
.L6:
	mov	edx, DWORD PTR [rcx+rax]	# D.8660, MEM[base: D.8654_20, index: ivtmp.36_116, offset: 0B]
	cmp	edx, DWORD PTR [rbx+156]	# D.8660, histogram_4(D)->min_value
	jae	.L7	#,
	mov	DWORD PTR [rbx+156], edx	# histogram_4(D)->min_value, D.8660
.L7:
	add	rax, 4	# ivtmp.36,
	cmp	rax, 1024	# ivtmp.36,
	jne	.L8	#,
	cmp	DWORD PTR [rbx+152], 0	# histogram_4(D)->max_value,
	je	.L1	#,
	mov	r12d, 0	# ivtmp.25,
	mov	ebp, 0	# ivtmp.24,
	mov	r14d, 180	# tmp142,
.L9:
	mov	rax, QWORD PTR [rbx+144]	# histogram_4(D)->data, histogram_4(D)->data
	imul	eax, DWORD PTR [rax+rbp], 180	# tmp130, *D.8659_55,
	mov	edx, 0	# tmp134,
	div	DWORD PTR [rbx+152]	# histogram_4(D)->max_value
	mov	r13d, r14d	# tmp135, tmp142
	sub	r13d, eax	# tmp135, tmp133
	movsx	r13d, r13w	# D.8674, tmp135
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)histogram_4(D)].surf, MEM[(struct Widget *)histogram_4(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r13d	#, D.8674
	mov	edx, 180	#,
	mov	esi, r12d	#, ivtmp.25
	call	vlineColor	#
	lea	esi, [r12+1]	# tmp138,
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)histogram_4(D)].surf, MEM[(struct Widget *)histogram_4(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r13d	#, D.8674
	mov	edx, 180	#,
	call	vlineColor	#
	add	rbp, 4	# ivtmp.24,
	add	r12d, 2	# ivtmp.25,
	cmp	rbp, 1024	# ivtmp.24,
	jne	.L9	#,
.L5:
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)histogram_4(D)].visible,
.L1:
	pop	rbx	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Histogram_refresh, .-Histogram_refresh
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Histogram_new: Passed NULL this pointer.\n"
	.section	.rodata.str1.1
.LC4:
	.string	"Histogram"
	.text
	.globl	Histogram_new
	.type	Histogram_new, @function
Histogram_new:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L14	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 41	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	jmp	.L15	#
.L14:
	mov	ecx, OFFSET FLAT:.LC4	#,
	mov	edx, 0	#,
	mov	esi, 7	#,
	call	Widget_init_type	#
	mov	QWORD PTR [rbx+144], 0	# this_2(D)->data,
.L15:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Histogram_new, .-Histogram_new
	.globl	Histogram_setColor
	.type	Histogram_setColor, @function
Histogram_setColor:
.LFB95:
	.cfi_startproc
	sal	esi, 8	# color_rgb,
	or	sil, -1	# tmp63,
	mov	DWORD PTR [rdi+160], esi	# histogram_4(D)->color, tmp63
	ret
	.cfi_endproc
.LFE95:
	.size	Histogram_setColor, .-Histogram_setColor
	.section	.rodata.str1.1
.LC5:
	.string	"histogram data=%p"
	.text
	.globl	Histogram_toString
	.type	Histogram_toString, @function
Histogram_toString:
.LFB96:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	r9, QWORD PTR [rdi+144]	#, histogram_1(D)->data
	mov	r8d, OFFSET FLAT:.LC5	#,
	mov	ecx, 64	#,
	mov	edx, 1	#,
	mov	esi, 64	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Histogram_toString, .-Histogram_toString
	.local	str_id
	.comm	str_id,64,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
