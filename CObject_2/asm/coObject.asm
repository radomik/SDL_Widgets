	.file	"coObject.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I include src/coObject.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip asm/coObject.asm -O1 -Wall -fverbose-asm
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
	.globl	coObject_coIObject_vdestroy
	.type	coObject_coIObject_vdestroy, @function
coObject_coIObject_vdestroy:
.LFB60:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE60:
	.size	coObject_coIObject_vdestroy, .-coObject_coIObject_vdestroy
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s @ %p"
	.text
	.globl	coObject_coIObject_vtoString
	.type	coObject_coIObject_vtoString, @function
coObject_coIObject_vtoString:
.LFB61:
	.cfi_startproc
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	r9, QWORD PTR [rax+8]	# D.3481_2->name, D.3481_2->name
	mov	QWORD PTR [rsp], rdi	#, vthis
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 64	#,
	mov	edx, 1	#,
	mov	esi, 64	#,
	mov	edi, OFFSET FLAT:buf.3468	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:buf.3468	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	coObject_coIObject_vtoString, .-coObject_coIObject_vtoString
	.globl	coObject_new
	.type	coObject_new, @function
coObject_new:
.LFB62:
	.cfi_startproc
	mov	rax, rdi	# this, this
	mov	QWORD PTR [rdi], OFFSET FLAT:type	# this_1(D)->class,
	ret
	.cfi_endproc
.LFE62:
	.size	coObject_new, .-coObject_new
	.globl	coObject_copy
	.type	coObject_copy, @function
coObject_copy:
.LFB63:
	.cfi_startproc
	mov	rax, rdi	# this, this
	mov	QWORD PTR [rdi], OFFSET FLAT:type	# this_1(D)->class,
	ret
	.cfi_endproc
.LFE63:
	.size	coObject_copy, .-coObject_copy
	.globl	coObject_class
	.data
	.align 8
	.type	coObject_class, @object
	.size	coObject_class, 8
coObject_class:
	.quad	type
	.section	.rodata.str1.1
.LC1:
	.string	"coObject"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	8
# name:
	.quad	.LC1
# vtable:
	.quad	vtable
	.local	buf.3468
	.comm	buf.3468,64,32
	.align 8
	.type	vtable, @object
	.size	vtable, 8
vtable:
	.quad	override_coIObject
	.section	.rodata
	.align 16
	.type	override_coIObject, @object
	.size	override_coIObject, 16
override_coIObject:
# destroy:
	.quad	coObject_coIObject_vdestroy
# toString:
	.quad	coObject_coIObject_vtoString
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
