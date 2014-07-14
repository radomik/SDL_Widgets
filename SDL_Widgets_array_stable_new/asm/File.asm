	.file	"File.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT File.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/File.asm
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
	.globl	File_exists
	.type	File_exists, @function
File_exists:
.LFB107:
	.cfi_startproc
	mov	eax, 0	# D.9261,
	test	rdi, rdi	# path
	je	.L6	#,
	sub	rsp, 152	#,
	.cfi_def_cfa_offset 160
	mov	rdx, rsp	#,
	mov	rsi, rdi	#, path
	mov	edi, 1	#,
	call	__xstat	#
	test	eax, eax	# D.9275
	sete	al	#, D.9261
	add	rsp, 152	#,
	.cfi_def_cfa_offset 8
.L6:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	File_exists, .-File_exists
	.globl	File_onExtMask
	.type	File_onExtMask, @function
File_onExtMask:
.LFB108:
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
	mov	rbp, rsi	# file_mask, file_mask
	test	rsi, rsi	# file_mask
	je	.L10	#,
	mov	r12, rdi	# ext, ext
	test	rdi, rdi	# ext
	je	.L10	#,
	cmp	BYTE PTR [rsi], 0	# *file_mask_5(D),
	je	.L11	#,
	mov	ebx, 0	# i,
.L9:
	mov	eax, ebx	# i, i
	lea	rsi, [rax+rax*8]	# tmp81,
	add	rsi, rbp	# tmp82, file_mask
	mov	rdi, r12	#, ext
	call	strcmp	#
	test	eax, eax	# D.9179
	je	.L12	#,
	add	ebx, 1	# i,
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*8]	# tmp87,
	cmp	BYTE PTR [rbp+0+rax], 0	# *file_mask_5(D),
	jne	.L9	#,
	mov	eax, 0	# D.9253,
	jmp	.L8	#
.L10:
	mov	eax, 0	# D.9253,
	jmp	.L8	#
.L11:
	mov	eax, 0	# D.9253,
	jmp	.L8	#
.L12:
	mov	eax, 1	# D.9253,
.L8:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	File_onExtMask, .-File_onExtMask
	.globl	File_getExtension
	.type	File_getExtension, @function
File_getExtension:
.LFB109:
	.cfi_startproc
	mov	r8, rdi	# fname, fname
	test	rsi, rsi	# ext
	je	.L29	#,
	test	rdi, rdi	# fname
	je	.L29	#,
	mov	QWORD PTR [rsi], 0	#* ext,
	mov	BYTE PTR [rsi+8], 0	#,
	mov	eax, 0	# tmp170,
	mov	rcx, -1	# tmp169,
	repnz scasb
	not	rcx	# tmp167
	sub	rcx, 1	# flen,
	je	.L35	#,
	lea	rdx, [r8-1+rcx]	# sc,
	movzx	eax, BYTE PTR [rdx]	# D.9212, *sc_19
	cmp	al, 9	# D.9212,
	je	.L34	#,
	cmp	al, 32	# D.9212,
	jne	.L17	#,
.L34:
	cmp	r8, rdx	# fname, sc
	jne	.L37	#,
	.p2align 4,,6
	jmp	.L17	#
.L22:
	cmp	r8, rdx	# fname, sc
	.p2align 4,,5
	jne	.L37	#,
	.p2align 4,,8
	jmp	.L17	#
.L28:
	mov	BYTE PTR [rsi+7], al	# MEM[(char *)ext_8(D) + 7B], D.9212
	cmp	r8, rdx	# fname, sc
	.p2align 4,,2
	je	.L31	#,
	lea	rdi, [rsi+6]	# ivtmp.28,
	lea	rax, [rdx-8]	# D.9319,
	mov	r9d, 8	# i,
	jmp	.L21	#
.L37:
	sub	rdx, 1	# sc,
	movzx	eax, BYTE PTR [rdx]	# D.9212, MEM[base: sc_25, offset: 0B]
	cmp	al, 9	# D.9212,
	je	.L22	#,
	cmp	al, 32	# D.9212,
	je	.L22	#,
	jmp	.L17	#
.L24:
	mov	BYTE PTR [rdi], cl	# MEM[base: D.9318_42, offset: 0B], D.9212
	sub	rdi, 1	# ivtmp.28,
	cmp	r8, rdx	# fname, sc
	je	.L20	#,
.L21:
	sub	rdx, 1	# sc,
	sub	r9d, 1	# i,
	movzx	ecx, BYTE PTR [rdx]	# D.9212, MEM[base: sc_31, offset: 0B]
	cmp	cl, 46	# D.9212,
	je	.L23	#,
	cmp	rdx, rax	# sc, D.9319
	jne	.L24	#,
	mov	eax, 0	# D.9207,
	ret
.L31:
	mov	r9d, 8	# i,
.L20:
	mov	eax, 0	# D.9207,
	cmp	BYTE PTR [rdx], 46	# *sc_88,
	jne	.L35	#,
.L23:
	cmp	r9b, 8	# i,
	ja	.L33	#,
	mov	rdx, rsi	# ivtmp.19, ext
	mov	eax, r9d	# k, i
.L27:
	movzx	ecx, al	# k, k
	movzx	ecx, BYTE PTR [rsi+rcx]	# D.9225, *D.9224_37
	lea	edi, [rcx-65]	# tmp181,
	cmp	dil, 25	# tmp181,
	ja	.L25	#,
	add	ecx, 32	# tmp182,
	mov	BYTE PTR [rdx], cl	# MEM[base: D.9305_71, offset: 0B], tmp182
	jmp	.L26	#
.L25:
	mov	BYTE PTR [rdx], cl	# MEM[base: D.9306_57, offset: 0B], D.9225
.L26:
	add	eax, 1	# k,
	add	rdx, 1	# ivtmp.19,
	cmp	al, 9	# k,
	jne	.L27	#,
	mov	eax, 1	# D.9207,
	ret
.L29:
	mov	eax, 0	# D.9207,
	ret
.L33:
	mov	eax, 1	# D.9207,
	ret
.L17:
	movzx	eax, BYTE PTR [rdx]	# D.9212, *sc_75
	mov	r9d, 8	# i,
	cmp	al, 46	# D.9212,
	je	.L23	#,
	jmp	.L28	#
.L35:
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	File_getExtension, .-File_getExtension
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
