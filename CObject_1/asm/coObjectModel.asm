	.file	"coObjectModel.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I include src/coObjectModel.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip asm/coObjectModel.asm -O1 -Wall -pedantic -ansi
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
	.globl	delete
	.type	delete, @function
delete:
.LFB39:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	test	rdi, rdi	# vthis
	je	.L2	#,
	mov	rax, QWORD PTR [rdi]	# __class, MEM[(struct coObject *)vthis_3(D)].class
	test	rax, rax	# __class
	je	.L2	#,
	mov	rax, QWORD PTR [rax]	# vtable, __class_4->vtable
	test	rax, rax	# vtable
	je	.L2	#,
	mov	rax, QWORD PTR [rax]	# D.2423, *vtable_7
	test	rax, rax	# D.2423
	je	.L2	#,
	call	rax	# D.2423
.L2:
	mov	rax, rbx	#, vthis
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE39:
	.size	delete, .-delete
	.globl	classof
	.type	classof, @function
classof:
.LFB40:
	.cfi_startproc
	test	rdi, rdi	# vthis
	je	.L6	#,
	mov	rax, QWORD PTR [rdi]	# D.2407, MEM[(struct coObject *)vthis_2(D)].class
	ret
.L6:
	mov	eax, 0	# D.2407,
	ret
	.cfi_endproc
.LFE40:
	.size	classof, .-classof
	.globl	vtableof
	.type	vtableof, @function
vtableof:
.LFB41:
	.cfi_startproc
	test	rdi, rdi	# vthis
	je	.L9	#,
	mov	rax, QWORD PTR [rdi]	# __class, MEM[(struct coObject *)vthis_3(D)].class
	test	rax, rax	# __class
	je	.L10	#,
	mov	rax, QWORD PTR [rax]	# vtable, __class_4->vtable
	ret
.L9:
	mov	eax, 0	# vtable,
	ret
.L10:
	mov	eax, 0	# vtable,
	ret
	.cfi_endproc
.LFE41:
	.size	vtableof, .-vtableof
	.globl	vptrof
	.type	vptrof, @function
vptrof:
.LFB42:
	.cfi_startproc
	test	rdi, rdi	# vthis
	je	.L13	#,
	mov	rax, QWORD PTR [rdi]	# __class, MEM[(struct coObject *)vthis_4(D)].class
	test	rax, rax	# __class
	je	.L14	#,
	mov	rax, QWORD PTR [rax]	# vtable, __class_5->vtable
	test	rax, rax	# vtable
	je	.L15	#,
	mov	esi, esi	# index, index
	mov	rax, QWORD PTR [rax+rsi*8]	# D.2388, *D.2394_14
	ret
.L13:
	mov	eax, 0	# D.2388,
	ret
.L14:
	mov	eax, 0	# D.2388,
	ret
.L15:
	mov	eax, 0	# D.2388,
	ret
	.cfi_endproc
.LFE42:
	.size	vptrof, .-vptrof
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"(null class)"
	.text
	.globl	classname
	.type	classname, @function
classname:
.LFB43:
	.cfi_startproc
	test	rdi, rdi	# vthis
	je	.L18	#,
	mov	rax, QWORD PTR [rdi]	# class, MEM[(struct coObject *)vthis_3(D)].class
	test	rax, rax	# class
	je	.L19	#,
	mov	rax, QWORD PTR [rax+16]	# D.2374, class_4->name
	ret
.L18:
	mov	eax, OFFSET FLAT:.LC0	# D.2374,
	ret
.L19:
	mov	eax, OFFSET FLAT:.LC0	# D.2374,
	ret
	.cfi_endproc
.LFE43:
	.size	classname, .-classname
	.globl	vptrof_fast_fun
	.type	vptrof_fast_fun, @function
vptrof_fast_fun:
.LFB44:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)vthis_1(D)].class, MEM[(struct coObject *)vthis_1(D)].class
	mov	esi, esi	# index, index
	mov	rax, QWORD PTR [rax]	# D.2364_2->vtable, D.2364_2->vtable
	mov	rax, QWORD PTR [rax+rsi*8]	# *D.2368_7, *D.2368_7
	ret
	.cfi_endproc
.LFE44:
	.size	vptrof_fast_fun, .-vptrof_fast_fun
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
