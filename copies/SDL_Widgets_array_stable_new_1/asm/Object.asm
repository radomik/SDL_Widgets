	.file	"Object.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Object.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Object.asm
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

	.text
	.type	Object_vdestroy, @function
Object_vdestroy:
.LFB94:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE94:
	.size	Object_vdestroy, .-Object_vdestroy
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"(null)"
	.text
	.globl	Object_getType
	.type	Object_getType, @function
Object_getType:
.LFB93:
	.cfi_startproc
	test	rdi, rdi	# this
	je	.L4	#,
	mov	rax, QWORD PTR [rdi+8]	# iftmp.7, this_3(D)->type
	test	rax, rax	# iftmp.7
	mov	edx, OFFSET FLAT:.LC0	# tmp63,
	cmove	rax, rdx	# iftmp.7,, iftmp.7, tmp63
	ret
.L4:
	mov	eax, OFFSET FLAT:.LC0	# iftmp.7,
	ret
	.cfi_endproc
.LFE93:
	.size	Object_getType, .-Object_getType
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Object_init_type: Passed NULL this pointer\n"
	.text
	.globl	Object_init_type
	.type	Object_init_type, @function
Object_init_type:
.LFB95:
	.cfi_startproc
	test	rdi, rdi	# this
	je	.L6	#,
	test	rsi, rsi	# vdestroy
	mov	eax, OFFSET FLAT:Object_vdestroy	# tmp63,
	cmove	rsi, rax	# vdestroy,, vdestroy, tmp63
	mov	QWORD PTR [rdi], rsi	# this_2(D)->vdestroy, vdestroy
	mov	QWORD PTR [rdi+8], rdx	# this_2(D)->type, type
	ret
.L6:
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 43	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Object_init_type, .-Object_init_type
	.globl	Object_copy
	.type	Object_copy, @function
Object_copy:
.LFB96:
	.cfi_startproc
	mov	rax, QWORD PTR [rsi]	# D.8366, object_src_1(D)->vdestroy
	mov	QWORD PTR [rdi], rax	# object_dst_3(D)->vdestroy, D.8366
	mov	rax, QWORD PTR [rsi+8]	# D.8367, object_src_1(D)->type
	mov	QWORD PTR [rdi+8], rax	# object_dst_3(D)->type, D.8367
	ret
	.cfi_endproc
.LFE96:
	.size	Object_copy, .-Object_copy
	.globl	Object_destroy
	.type	Object_destroy, @function
Object_destroy:
.LFB97:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	Object_destroy, .-Object_destroy
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"delete: vthis(%p) or vthis->vdestroy(%p) is NULL\n"
	.text
	.globl	delete
	.type	delete, @function
delete:
.LFB98:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	test	rdi, rdi	# vthis
	je	.L13	#,
	mov	rax, QWORD PTR [rdi]	# D.8347, MEM[(struct Object *)vthis_2(D)].vdestroy
	test	rax, rax	# D.8347
	je	.L13	#,
	call	rax	# D.8347
	.p2align 4,,5
	jmp	.L14	#
.L13:
	mov	r8d, 0	#,
	mov	rcx, rbx	#, vthis
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L14:
	mov	rax, rbx	#, vthis
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	delete, .-delete
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
