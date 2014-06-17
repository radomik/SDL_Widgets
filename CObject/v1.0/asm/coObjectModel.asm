	.file	"coObjectModel.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coObjectModel.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coObjectModel.asm
# -Wall -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcommon -fdebug-types-section
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffunction-cse -fgcse-lm -fgnu-runtime
# -fident -finline-atomics -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
# -fmerge-debug-strings -fmove-loop-invariants -fpeephole
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fstrict-volatile-bitfields -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-pta -ftree-reassoc -ftree-scev-cprop
# -ftree-slp-vectorize -ftree-vect-loop-version -funit-at-a-time
# -funwind-tables -fvect-cost-model -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mglibc -mieee-fp
# -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

	.text
	.globl	delete
	.type	delete, @function
delete:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# vthis, vthis
	mov	rax, QWORD PTR [rbp-24]	# tmp64, vthis
	mov	rdi, rax	#, tmp64
	call	vtableof	#
	mov	QWORD PTR [rbp-8], rax	# vtable, tmp65
	cmp	QWORD PTR [rbp-8], 0	# vtable,
	je	.L2	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp66, vtable
	mov	rax, QWORD PTR [rax]	# D.2982, *vtable_2
	test	rax, rax	# D.2982
	je	.L2	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp67, vtable
	mov	rax, QWORD PTR [rax]	# D.2985, *vtable_2
	mov	rdx, QWORD PTR [rbp-24]	# tmp68, vthis
	mov	rdi, rdx	#, tmp68
	call	rax	# D.2986
.L2:
	mov	rax, QWORD PTR [rbp-24]	# D.2987, vthis
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	delete, .-delete
	.globl	classof
	.type	classof, @function
classof:
.LFB3:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# vthis, vthis
	cmp	QWORD PTR [rbp-8], 0	# vthis,
	je	.L5	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp62, vthis
	mov	rax, QWORD PTR [rax]	# iftmp.3, MEM[(struct coObject *)vthis_2(D)].class
	jmp	.L6	#
.L5:
	mov	eax, 0	# iftmp.3,
.L6:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	classof, .-classof
	.globl	vtableof
	.type	vtableof, @function
vtableof:
.LFB4:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 24	#,
	mov	QWORD PTR [rbp-24], rdi	# vthis, vthis
	mov	rax, QWORD PTR [rbp-24]	# tmp62, vthis
	mov	rdi, rax	#, tmp62
	call	classof	#
	mov	QWORD PTR [rbp-8], rax	# class, tmp63
	cmp	QWORD PTR [rbp-8], 0	# class,
	je	.L9	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp64, class
	mov	rax, QWORD PTR [rax]	# iftmp.2, class_3->vtable
	jmp	.L10	#
.L9:
	mov	eax, 0	# iftmp.2,
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	vtableof, .-vtableof
	.globl	vptrof
	.type	vptrof, @function
vptrof:
.LFB5:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# vthis, vthis
	mov	DWORD PTR [rbp-28], esi	# index, index
	mov	rax, QWORD PTR [rbp-24]	# tmp65, vthis
	mov	rdi, rax	#, tmp65
	call	vtableof	#
	mov	QWORD PTR [rbp-8], rax	# vtable, tmp66
	cmp	QWORD PTR [rbp-8], 0	# vtable,
	je	.L13	#,
	mov	eax, DWORD PTR [rbp-28]	# D.2963, index
	lea	rdx, [0+rax*8]	# D.2964,
	mov	rax, QWORD PTR [rbp-8]	# tmp67, vtable
	add	rax, rdx	# D.2965, D.2964
	mov	rax, QWORD PTR [rax]	# iftmp.1, *D.2965_7
	jmp	.L14	#
.L13:
	mov	eax, 0	# iftmp.1,
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	vptrof, .-vptrof
	.section	.rodata
.LC0:
	.string	"(null class)"
	.text
	.globl	classname
	.type	classname, @function
classname:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 24	#,
	mov	QWORD PTR [rbp-24], rdi	# vthis, vthis
	mov	rax, QWORD PTR [rbp-24]	# tmp62, vthis
	mov	rdi, rax	#, tmp62
	call	classof	#
	mov	QWORD PTR [rbp-8], rax	# class, tmp63
	cmp	QWORD PTR [rbp-8], 0	# class,
	je	.L17	#,
	mov	rax, QWORD PTR [rbp-8]	# tmp64, class
	mov	rax, QWORD PTR [rax+16]	# iftmp.0, class_3->name
	jmp	.L18	#
.L17:
	mov	eax, OFFSET FLAT:.LC0	# iftmp.0,
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	classname, .-classname
	.globl	vptrof_fast_fun
	.type	vptrof_fast_fun, @function
vptrof_fast_fun:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-8], rdi	# vthis, vthis
	mov	DWORD PTR [rbp-12], esi	# index, index
	mov	rax, QWORD PTR [rbp-8]	# tmp66, vthis
	mov	rax, QWORD PTR [rax]	# D.2947, MEM[(struct coObject *)vthis_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.2948, D.2947_2->vtable
	mov	edx, DWORD PTR [rbp-12]	# D.2949, index
	sal	rdx, 3	# D.2950,
	add	rax, rdx	# D.2951, D.2950
	mov	rax, QWORD PTR [rax]	# D.2946, *D.2951_7
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	vptrof_fast_fun, .-vptrof_fast_fun
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
