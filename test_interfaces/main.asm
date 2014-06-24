	.file	"main.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  main.c -march=core2 -mcx16 -msahf -mno-movbe -mno-aes
# -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma -mno-fma4 -mno-xop
# -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2 -mno-sse4.2 -mno-sse4.1
# -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase --param l1-cache-size=32
# --param l1-cache-line-size=64 --param l2-cache-size=4096 -mtune=core2
# -msse3 -masm=intel -auxbase-strip main.asm -O1 -Wall -pedantic -ansi
# -fverbose-asm
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

	.text
	.globl	coIObject_destroy
	.type	coIObject_destroy, @function
coIObject_destroy:
.LFB19:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.2065_2->vtable, D.2065_2->vtable
	mov	rax, QWORD PTR [rax]	# *D.2066_3, *D.2066_3
	call	[QWORD PTR [rax]]	# MEM[(struct coIObject *)D.2067_4].destroy
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE19:
	.size	coIObject_destroy, .-coIObject_destroy
	.globl	coIObject_toString
	.type	coIObject_toString, @function
coIObject_toString:
.LFB20:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.2060_2->vtable, D.2060_2->vtable
	mov	rax, QWORD PTR [rax]	# *D.2061_3, *D.2061_3
	call	[QWORD PTR [rax+8]]	# MEM[(struct coIObject *)D.2062_4].toString
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE20:
	.size	coIObject_toString, .-coIObject_toString
	.globl	delete
	.type	delete, @function
delete:
.LFB21:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	test	rdi, rdi	# vthis
	je	.L6	#,
	mov	rax, QWORD PTR [rdi]	# __class, MEM[(struct coObject *)vthis_3(D)].class
	test	rax, rax	# __class
	je	.L6	#,
	mov	rax, QWORD PTR [rax]	# vtable, __class_4->vtable
	test	rax, rax	# vtable
	je	.L6	#,
	mov	rax, QWORD PTR [rax]	# D.2050, *vtable_7
	test	rax, rax	# D.2050
	je	.L6	#,
	call	[QWORD PTR [rax]]	# MEM[(struct coIObject *)D.2050_10].destroy
.L6:
	mov	rax, rbx	#, vthis
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE21:
	.size	delete, .-delete
	.globl	Widget_vdestroy
	.type	Widget_vdestroy, @function
Widget_vdestroy:
.LFB22:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE22:
	.size	Widget_vdestroy, .-Widget_vdestroy
	.globl	Widget_vtoString
	.type	Widget_vtoString, @function
Widget_vtoString:
.LFB23:
	.cfi_startproc
	mov	eax, OFFSET FLAT:buf.2030	#,
	ret
	.cfi_endproc
.LFE23:
	.size	Widget_vtoString, .-Widget_vtoString
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	mov	eax, 0	#,
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.local	buf.2030
	.comm	buf.2030,64,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
