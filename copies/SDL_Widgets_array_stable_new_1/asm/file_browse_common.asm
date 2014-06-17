	.file	"file_browse_common.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT file_browse_common.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/file_browse_common.asm
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
	.globl	cmpDir
	.type	cmpDir, @function
cmpDir:
.LFB110:
	.cfi_startproc
	movzx	eax, BYTE PTR [rsi+177]	# MEM[(struct fileInfo *)b_1(D)].is_directory, MEM[(struct fileInfo *)b_1(D)].is_directory
	movzx	edx, BYTE PTR [rdi+177]	# MEM[(struct fileInfo *)a_4(D)].is_directory, MEM[(struct fileInfo *)a_4(D)].is_directory
	sub	eax, edx	# tmp67, MEM[(struct fileInfo *)a_4(D)].is_directory
	ret
	.cfi_endproc
.LFE110:
	.size	cmpDir, .-cmpDir
	.globl	cmpName
	.type	cmpName, @function
cmpName:
.LFB111:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rsi, QWORD PTR [rsi+144]	# MEM[(struct fileInfo *)b_1(D)].text_block.text, MEM[(struct fileInfo *)b_1(D)].text_block.text
	mov	rdi, QWORD PTR [rdi+144]	# MEM[(struct fileInfo *)a_3(D)].text_block.text, MEM[(struct fileInfo *)a_3(D)].text_block.text
	call	strcmp	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	cmpName, .-cmpName
	.globl	getFileExtension
	.type	getFileExtension, @function
getFileExtension:
.LFB107:
	.cfi_startproc
	mov	r8, rdi	# fname, fname
	mov	eax, 0	# D.9400,
	test	rsi, rsi	# ext
	je	.L25	#,
	mov	QWORD PTR [rsi], 0	#* ext,
	mov	BYTE PTR [rsi+8], 0	#,
	test	rdi, rdi	# fname
	je	.L19	#,
	mov	rcx, -1	# tmp164,
	repnz scasb
	not	rcx	# tmp162
	sub	rcx, 1	# flen,
	je	.L25	#,
	lea	rdx, [r8-1+rcx]	# sc,
	movzx	eax, BYTE PTR [rdx]	# D.9407, *sc_16
	cmp	al, 9	# D.9407,
	je	.L24	#,
	cmp	al, 32	# D.9407,
	jne	.L6	#,
.L24:
	cmp	r8, rdx	# fname, sc
	jne	.L27	#,
	.p2align 4,,6
	jmp	.L6	#
.L11:
	cmp	r8, rdx	# fname, sc
	.p2align 4,,5
	jne	.L27	#,
	.p2align 4,,8
	jmp	.L6	#
.L17:
	mov	BYTE PTR [rsi+7], al	# MEM[(char *)ext_8(D) + 7B], D.9414
	cmp	r8, rdx	# fname, sc
	.p2align 4,,2
	je	.L21	#,
	lea	rdi, [rsi+6]	# ivtmp.32,
	lea	rax, [rdx-8]	# D.9539,
	mov	r9d, 8	# i,
	jmp	.L10	#
.L27:
	sub	rdx, 1	# sc,
	movzx	eax, BYTE PTR [rdx]	# D.9407, MEM[base: sc_21, offset: 0B]
	cmp	al, 9	# D.9407,
	je	.L11	#,
	cmp	al, 32	# D.9407,
	je	.L11	#,
	jmp	.L6	#
.L13:
	mov	BYTE PTR [rdi], cl	# MEM[base: D.9538_38, offset: 0B], D.9414
	sub	rdi, 1	# ivtmp.32,
	cmp	r8, rdx	# fname, sc
	je	.L9	#,
.L10:
	sub	rdx, 1	# sc,
	sub	r9d, 1	# i,
	movzx	ecx, BYTE PTR [rdx]	# D.9414, MEM[base: sc_27, offset: 0B]
	cmp	cl, 46	# D.9414,
	je	.L12	#,
	cmp	rdx, rax	# sc, D.9539
	jne	.L13	#,
	mov	eax, 0	# D.9400,
	ret
.L21:
	mov	r9d, 8	# i,
.L9:
	mov	eax, 0	# D.9400,
	cmp	BYTE PTR [rdx], 46	# *sc_85,
	jne	.L25	#,
.L12:
	cmp	r9b, 8	# i,
	ja	.L23	#,
	mov	rdx, rsi	# ivtmp.22, ext
	mov	eax, r9d	# k, i
.L16:
	movzx	ecx, al	# k, k
	movzx	ecx, BYTE PTR [rsi+rcx]	# D.9421, *D.9420_33
	lea	edi, [rcx-65]	# tmp176,
	cmp	dil, 25	# tmp176,
	ja	.L14	#,
	add	ecx, 32	# tmp177,
	mov	BYTE PTR [rdx], cl	# MEM[base: D.9525_68, offset: 0B], tmp177
	jmp	.L15	#
.L14:
	mov	BYTE PTR [rdx], cl	# MEM[base: D.9526_53, offset: 0B], D.9421
.L15:
	add	eax, 1	# k,
	add	rdx, 1	# ivtmp.22,
	cmp	al, 9	# k,
	jne	.L16	#,
	mov	eax, 1	# D.9400,
	ret
.L19:
	mov	eax, 0	# D.9400,
	ret
.L23:
	mov	eax, 1	# D.9400,
	ret
.L6:
	movzx	eax, BYTE PTR [rdx]	# D.9414, *sc_72
	mov	r9d, 8	# i,
	cmp	al, 46	# D.9414,
	je	.L12	#,
	jmp	.L17	#
.L25:
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	getFileExtension, .-getFileExtension
	.globl	fileOnMask
	.type	fileOnMask, @function
fileOnMask:
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
	mov	r12, rdi	# ext, ext
	test	rdi, rdi	# ext
	je	.L31	#,
	mov	rbp, rsi	# file_mask, file_mask
	cmp	BYTE PTR [rsi], 0	# *file_mask_7(D),
	je	.L32	#,
	mov	eax, 0	# D.9391,
	mov	ebx, 0	# i,
.L30:
	cdqe
	lea	rsi, [rax+rax*8]	# tmp74,
	add	rsi, rbp	# tmp75, file_mask
	mov	rdi, r12	#, ext
	call	strcmp	#
	test	eax, eax	# D.9157
	je	.L33	#,
	add	ebx, 1	# i,
	movzx	eax, bl	# D.9391, i
	movsx	rdx, eax	# D.9391, D.9391
	lea	rdx, [rdx+rdx*8]	# tmp80,
	cmp	BYTE PTR [rbp+0+rdx], 0	# *file_mask_7(D),
	jne	.L30	#,
	mov	eax, 0	# D.9390,
	jmp	.L29	#
.L31:
	mov	eax, 0	# D.9390,
	jmp	.L29	#
.L32:
	mov	eax, 0	# D.9390,
	jmp	.L29	#
.L33:
	mov	eax, 1	# D.9390,
.L29:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	fileOnMask, .-fileOnMask
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"file_browse_common.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"%s::%s@%d realpath() returned NULL [%s]\n"
	.text
	.globl	validFile
	.type	validFile, @function
validFile:
.LFB109:
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
	sub	rsp, 432	#,
	.cfi_def_cfa_offset 464
	mov	r12, rsi	# path, path
	test	rsi, rsi	# path
	je	.L56	#,
	mov	rbx, rdi	# finfo, finfo
	mov	rbp, rdx	# file_mask, file_mask
	test	rdi, rdi	# finfo
	je	.L38	#,
	mov	BYTE PTR [rdi+179], 0	# finfo_5(D)->is_audio,
	mov	BYTE PTR [rdi+178], 0	# finfo_5(D)->is_image,
	mov	BYTE PTR [rdi+177], 0	# finfo_5(D)->is_directory,
	mov	BYTE PTR [rdi+176], 0	# finfo_5(D)->is_selected,
.L38:
	lea	rdx, [rsp+288]	#,
	mov	rsi, r12	#, path
	mov	edi, 1	#,
	call	__xstat	#
	test	eax, eax	# D.9474
	jne	.L57	#,
	mov	edx, DWORD PTR [rsp+312]	# D.9304, st.st_mode
	and	edx, 61440	# D.9304,
	cmp	edx, 16384	# D.9304,
	jne	.L39	#,
	test	rbx, rbx	# finfo
	je	.L58	#,
	mov	BYTE PTR [rbx+177], 1	# finfo_5(D)->is_directory,
	mov	al, 1	#,
	jmp	.L73	#
.L39:
	cmp	edx, 32768	# D.9304,
	jne	.L40	#,
	test	rbp, rbp	# file_mask
	jne	.L41	#,
	mov	eax, 3	# D.9294,
	test	rbx, rbx	# finfo
	je	.L73	#,
	lea	rdi, [rsp+272]	#,
	call	Image_isExtSupported	#
	test	al, al	# D.9315
	je	.L42	#,
	mov	BYTE PTR [rbx+178], 1	# finfo_5(D)->is_image,
.L42:
	lea	rdi, [rsp+272]	#,
	call	CMPlayer_isExtSupported	#
	mov	edx, eax	# D.9318,
	mov	eax, 3	# D.9294,
	test	dl, dl	# D.9318
	je	.L73	#,
	mov	BYTE PTR [rbx+179], 1	# finfo_5(D)->is_audio,
	jmp	.L73	#
.L41:
	lea	rsi, [rsp+272]	#,
	mov	rdi, r12	#, path
	call	getFileExtension	#
	mov	edx, eax	# D.9321,
	mov	eax, -6	# D.9294,
	test	dl, dl	# D.9321
	je	.L73	#,
	cmp	BYTE PTR [rbp+0], 0	# *file_mask_15(D),
	je	.L62	#,
	mov	r12d, 0	# i,
	mov	eax, 0	# D.9568,
.L44:
	cdqe
	lea	rsi, [rax+rax*8]	# tmp110,
	add	rsi, rbp	# tmp111, file_mask
	lea	rdi, [rsp+272]	#,
	call	strcmp	#
	test	eax, eax	# D.9567
	je	.L43	#,
	add	r12d, 1	# i,
	movzx	eax, r12b	# D.9568, i
	movsx	rdx, eax	# D.9568, D.9568
	lea	rdx, [rdx+rdx*8]	# tmp117,
	cmp	BYTE PTR [rbp+0+rdx], 0	# *file_mask_15(D),
	jne	.L44	#,
	mov	eax, 0	# D.9294,
	jmp	.L73	#
.L54:
	lea	rdi, [rsp+272]	#,
	call	Image_isExtSupported	#
	test	al, al	# D.9329
	je	.L45	#,
	mov	BYTE PTR [rbx+178], 1	# finfo_5(D)->is_image,
.L45:
	lea	rdi, [rsp+272]	#,
	call	CMPlayer_isExtSupported	#
	mov	edx, eax	# D.9332,
	mov	eax, 3	# D.9294,
	test	dl, dl	# D.9332
	je	.L73	#,
	mov	BYTE PTR [rbx+179], 1	# finfo_5(D)->is_audio,
	jmp	.L73	#
.L40:
	mov	eax, -4	# D.9294,
	cmp	edx, 40960	# D.9304,
	jne	.L73	#,
	mov	edx, 255	#,
	lea	rsi, [rsp+16]	#,
	mov	rdi, r12	#, path
	call	__realpath_chk	#
	test	rax, rax	# D.9478
	jne	.L46	#,
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.9340_29
	call	strerror	#
	mov	QWORD PTR [rsp], rax	#, D.9342
	mov	r9d, 205	#,
	mov	r8d, OFFSET FLAT:__FUNCTION__.9169	#,
	mov	ecx, OFFSET FLAT:.LC0	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L46:
	lea	rdx, [rsp+288]	#,
	lea	rsi, [rsp+16]	#,
	mov	edi, 1	#,
	call	__xstat	#
	mov	edx, eax	# D.9488,
	mov	eax, -3	# D.9294,
	test	edx, edx	# D.9488
	jne	.L73	#,
	mov	edx, DWORD PTR [rsp+312]	# D.9304, st.st_mode
	and	edx, 61440	# D.9304,
	cmp	edx, 16384	# D.9304,
	jne	.L48	#,
	test	rbx, rbx	# finfo
	je	.L66	#,
	mov	BYTE PTR [rbx+177], 1	# finfo_5(D)->is_directory,
	mov	eax, 2	# D.9294,
	jmp	.L73	#
.L48:
	mov	eax, -5	# D.9294,
	cmp	edx, 32768	# D.9304,
	jne	.L73	#,
	test	rbp, rbp	# file_mask
	jne	.L49	#,
	mov	eax, 4	# D.9294,
	test	rbx, rbx	# finfo
	je	.L73	#,
	lea	rdi, [rsp+272]	#,
	call	Image_isExtSupported	#
	test	al, al	# D.9357
	je	.L50	#,
	mov	BYTE PTR [rbx+178], 1	# finfo_5(D)->is_image,
.L50:
	lea	rdi, [rsp+272]	#,
	call	CMPlayer_isExtSupported	#
	mov	edx, eax	# D.9360,
	mov	eax, 4	# D.9294,
	test	dl, dl	# D.9360
	je	.L73	#,
	mov	BYTE PTR [rbx+179], 1	# finfo_5(D)->is_audio,
	jmp	.L73	#
.L49:
	lea	rsi, [rsp+272]	#,
	lea	rdi, [rsp+16]	#,
	call	getFileExtension	#
	mov	edx, eax	# D.9363,
	mov	eax, -7	# D.9294,
	test	dl, dl	# D.9363
	je	.L73	#,
	cmp	BYTE PTR [rbp+0], 0	# *file_mask_15(D),
	je	.L71	#,
	mov	r12d, 0	# i,
	mov	eax, 0	# D.9577,
.L52:
	cdqe
	lea	rsi, [rax+rax*8]	# tmp133,
	add	rsi, rbp	# tmp134, file_mask
	lea	rdi, [rsp+272]	#,
	call	strcmp	#
	test	eax, eax	# D.9576
	je	.L51	#,
	add	r12d, 1	# i,
	movzx	eax, r12b	# D.9577, i
	movsx	rdx, eax	# D.9577, D.9577
	lea	rdx, [rdx+rdx*8]	# tmp140,
	cmp	BYTE PTR [rbp+0+rdx], 0	# *file_mask_15(D),
	jne	.L52	#,
	mov	eax, 0	# D.9294,
	jmp	.L73	#
.L55:
	lea	rdi, [rsp+272]	#,
	call	Image_isExtSupported	#
	test	al, al	# D.9371
	je	.L53	#,
	mov	BYTE PTR [rbx+178], 1	# finfo_5(D)->is_image,
.L53:
	lea	rdi, [rsp+272]	#,
	call	CMPlayer_isExtSupported	#
	mov	edx, eax	# D.9374,
	mov	eax, 4	# D.9294,
	test	dl, dl	# D.9374
	je	.L73	#,
	mov	BYTE PTR [rbx+179], 1	# finfo_5(D)->is_audio,
	jmp	.L73	#
.L66:
	mov	eax, 2	# D.9294,
	jmp	.L73	#
.L71:
	mov	eax, 0	# D.9294,
	jmp	.L73	#
.L56:
	mov	eax, -1	# D.9294,
	jmp	.L73	#
.L57:
	mov	eax, -2	# D.9294,
	jmp	.L73	#
.L58:
	mov	eax, 1	# D.9294,
	jmp	.L73	#
.L62:
	mov	eax, 0	# D.9294,
	jmp	.L73	#
.L43:
	mov	eax, 3	# D.9294,
	test	rbx, rbx	# finfo
	je	.L73	#,
	jmp	.L54	#
.L51:
	test	rbx, rbx	# finfo
	jne	.L55	#,
	mov	eax, 4	# D.9294,
.L73:
	add	rsp, 432	#,
	.cfi_def_cfa_offset 32
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	validFile, .-validFile
	.section	.rodata.str1.1
.LC2:
	.string	"."
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"getCurrentFolderContent: Delete TextBlock %u, %s\n"
	.align 8
.LC4:
	.string	"getCurrentFolderContent: [1] %40s, validFile: %d\n"
	.section	.rodata.str1.1
.LC5:
	.string	".."
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"getCurrentFolderContent: [2] %40s, validFile: %d, is_dir=%d, is_image=%d, is_audio=%d\n"
	.align 8
.LC7:
	.string	"getCurrentFolderContent:        [i=%2u] dir->d_name=%s[%p], text_block=%p, text=%s[%p]\n"
	.align 8
.LC8:
	.string	"getCurrentFolderContent() After sort id=%u, text_block=%p, text=%s[%p]\n"
	.text
	.globl	getCurrentFolderContent
	.type	getCurrentFolderContent, @function
getCurrentFolderContent:
.LFB112:
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
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 128
	mov	QWORD PTR [rsp+32], rdi	# %sfp, content
	mov	r15, rsi	# contentLength, contentLength
	mov	QWORD PTR [rsp+40], rcx	# %sfp, font
	mov	DWORD PTR [rsp+52], r8d	# %sfp, bgcolor
	mov	DWORD PTR [rsp+56], r9d	# %sfp, fgcolor
	mov	r14, QWORD PTR [rdi]	# local_content, *content_6(D)
	mov	edi, OFFSET FLAT:.LC2	#,
	call	opendir	#
	mov	r12, rax	# d,
	mov	r13d, DWORD PTR [r15]	# fsize, *contentLength_10(D)
	test	r14, r14	# local_content
	je	.L78	#,
	test	r13d, r13d	# fsize
	je	.L79	#,
	mov	rbp, r14	# ivtmp.78, local_content
	mov	ebx, 0	# i,
.L80:
	mov	r8, QWORD PTR [rbp+144]	#, MEM[base: D.9232_15, offset: 144B]
	mov	ecx, ebx	#, i
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, rbp	#, ivtmp.78
	call	delete	#
	add	ebx, 1	# i,
	add	rbp, 184	# ivtmp.78,
	cmp	ebx, r13d	# i, fsize
	jne	.L80	#,
.L79:
	mov	edx, 317	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r14	#, local_content
	call	wfree	#
.L78:
	mov	r13d, 0	# fcount,
	jmp	.L104	#
.L84:
	cmp	BYTE PTR [rax+19], 46	# dir_20->d_name,
	je	.L104	#,
	lea	rbp, [rax+19]	# D.9238,
	mov	rdx, QWORD PTR [rsp+128]	#, file_mask
	mov	rsi, rbp	#, D.9238
	mov	edi, 0	#,
	call	validFile	#
	mov	ebx, eax	# t,
	mov	r8d, eax	#, t
	mov	rcx, rbp	#, D.9238
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	ebx, ebx	# t
	setg	al	#, tmp189
	movzx	eax, al	# tmp189, tmp189
	add	r13d, eax	# fcount, tmp189
.L104:
	mov	rdi, r12	#, d
	call	readdir	#
	test	rax, rax	# dir
	jne	.L84	#,
	mov	rdi, r12	#, d
	call	closedir	#
	lea	ebx, [r13+1]	# D.9241,
	mov	DWORD PTR [r15], ebx	# *contentLength_10(D), D.9241
	mov	edi, ebx	# D.9241, D.9241
	mov	ecx, 334	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 184	#,
	call	wcalloc	#
	mov	rbp, rax	# D.9243,
	mov	rax, QWORD PTR [rsp+32]	#, %sfp
	mov	QWORD PTR [rax], rbp	# *content_6(D), D.9243
	mov	esi, OFFSET FLAT:.LC5	#,
	mov	rdi, rbp	#, D.9243
	call	TextBlock_new	#
	mov	rsi, QWORD PTR [rsp+40]	#, %sfp
	mov	rdi, rbp	#, D.9243
	call	TextBlock_setFont	#
	mov	esi, DWORD PTR [rsp+52]	#, %sfp
	mov	rdi, rbp	#, D.9243
	call	TextBlock_setBackgroundColor	#
	mov	esi, DWORD PTR [rsp+56]	#, %sfp
	mov	rdi, rbp	#, D.9243
	call	TextBlock_setForegroundColor	#
	mov	rdi, rbp	#, D.9243
	call	TextBlock_refresh	#
	mov	rdx, QWORD PTR [rsp+144]	#, filename_textblock_click_handle
	mov	QWORD PTR [rbp+16], rdx	# MEM[(struct Widget *)D.9243_31].click_handler,
	mov	rcx, QWORD PTR [rsp+152]	#, click_parameter
	mov	QWORD PTR [rbp+72], rcx	# MEM[(struct Widget *)D.9243_31].void_parameter,
	mov	BYTE PTR [rbp+131], 1	# MEM[(struct Widget *)D.9243_31].mevent,
	mov	DWORD PTR [rbp+116], 0	# MEM[(struct Widget *)D.9243_31].id,
	movzx	eax, WORD PTR [rbp+62]	# MEM[(struct Widget *)D.9243_31].pos.h, MEM[(struct Widget *)D.9243_31].pos.h
	mov	rdx, QWORD PTR [rsp+136]	#, nameHeight
	mov	BYTE PTR [rdx], al	# *nameHeight_42(D), MEM[(struct Widget *)D.9243_31].pos.h
	test	r13d, r13d	# fcount
	je	.L77	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	opendir	#
	mov	r14, rax	# d,
	mov	r15d, 1	# i,
	mov	DWORD PTR [rsp+60], r13d	# %sfp, fcount
	mov	QWORD PTR [rsp+32], rbp	# %sfp, D.9243
	jmp	.L86	#
.L90:
	cmp	BYTE PTR [rax+19], 46	# dir_45->d_name,
	je	.L105	#,
	lea	r12, [rax+19]	# D.9238,
	mov	rdx, QWORD PTR [rsp+128]	#, file_mask
	mov	rsi, r12	#, D.9238
	mov	rdi, rbp	#, finfo
	call	validFile	#
	mov	r13d, eax	# t,
	movzx	r9d, BYTE PTR [rbp+177]	# finfo_49->is_directory, finfo_49->is_directory
	movzx	eax, BYTE PTR [rbp+179]	# finfo_49->is_audio, finfo_49->is_audio
	mov	DWORD PTR [rsp+8], eax	#, finfo_49->is_audio
	movzx	eax, BYTE PTR [rbp+178]	# finfo_49->is_image, finfo_49->is_image
	mov	DWORD PTR [rsp], eax	#, finfo_49->is_image
	mov	r8d, r13d	#, t
	mov	rcx, r12	#, D.9238
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r13d, r13d	# t
	jle	.L105	#,
	mov	rsi, r12	#, D.9238
	mov	rdi, rbp	#, finfo
	call	TextBlock_new	#
	mov	rsi, QWORD PTR [rsp+40]	#, %sfp
	mov	rdi, rbp	#, finfo
	call	TextBlock_setFont	#
	mov	esi, DWORD PTR [rsp+52]	#, %sfp
	mov	rdi, rbp	#, finfo
	call	TextBlock_setBackgroundColor	#
	mov	esi, DWORD PTR [rsp+56]	#, %sfp
	mov	rdi, rbp	#, finfo
	call	TextBlock_setForegroundColor	#
	mov	rdi, rbp	#, finfo
	call	TextBlock_refresh	#
	mov	rax, QWORD PTR [rbp+144]	# D.9233, MEM[(struct TextBlock *)finfo_49].text
	mov	QWORD PTR [rsp+16], rax	#, D.9233
	mov	QWORD PTR [rsp+8], rax	#, D.9233
	mov	QWORD PTR [rsp], rbp	#, finfo
	mov	r9, r12	#, D.9238
	mov	r8, r12	#, D.9238
	mov	ecx, r15d	#, i
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rcx, QWORD PTR [rsp+144]	#, filename_textblock_click_handle
	mov	QWORD PTR [rbp+16], rcx	# MEM[(struct Widget *)finfo_49].click_handler,
	mov	rax, QWORD PTR [rsp+152]	#, click_parameter
	mov	QWORD PTR [rbp+72], rax	# MEM[(struct Widget *)finfo_49].void_parameter,
	mov	BYTE PTR [rbp+131], 1	# MEM[(struct Widget *)finfo_49].mevent,
	movzx	eax, BYTE PTR [rbp+62]	# h, MEM[(struct Widget *)finfo_49].pos.h
	mov	rcx, QWORD PTR [rsp+136]	#, nameHeight
	movzx	edx, BYTE PTR [rcx]	# *nameHeight_42(D), *nameHeight_42(D)
	cmp	dl, al	#, h
	cmovae	eax, edx	# *nameHeight_42(D),, tmp174
	mov	BYTE PTR [rcx], al	# *nameHeight_42(D), tmp174
	add	r15d, 1	# i,
.L86:
	mov	ebp, r15d	# i, i
	imul	rbp, rbp, 184	# tmp177, i,
	add	rbp, QWORD PTR [rsp+32]	# finfo, %sfp
.L105:
	mov	rdi, r14	#, d
	call	readdir	#
	test	rax, rax	# dir
	je	.L89	#,
	cmp	ebx, r15d	# D.9241, i
	ja	.L90	#,
.L89:
	mov	r13d, DWORD PTR [rsp+60]	# fcount, %sfp
	mov	rbp, QWORD PTR [rsp+32]	# D.9243, %sfp
	mov	rdi, r14	#, d
	call	closedir	#
	mov	r13d, r13d	# D.9262, fcount
	lea	r12, [rbp+184]	# D.9263,
	mov	ecx, OFFSET FLAT:cmpDir	#,
	mov	edx, 184	#,
	mov	rsi, r13	#, D.9262
	mov	rdi, r12	#, D.9263
	call	qsort	#
	cmp	ebx, 1	# D.9241,
	jbe	.L91	#,
	cmp	BYTE PTR [rbp+361], 0	# MEM[(struct fileInfo *)D.9243_31 + 184B].is_directory,
	je	.L91	#,
	mov	rax, rbp	# ivtmp.70, D.9243
	mov	r14d, 1	# i,
.L92:
	add	r14d, 1	# i,
	cmp	ebx, r14d	# D.9241, i
	je	.L91	#,
	add	rax, 184	# ivtmp.70,
	cmp	BYTE PTR [rax+361], 0	# MEM[base: D.9617_176, offset: 361B],
	jne	.L92	#,
	cmp	ebx, r14d	# D.9241, i
	je	.L91	#,
	cmp	r14d, 1	# i,
	jne	.L93	#,
.L91:
	mov	ecx, OFFSET FLAT:cmpName	#,
	mov	edx, 184	#,
	mov	rsi, r13	#, D.9262
	mov	rdi, r12	#, D.9263
	call	qsort	#
	cmp	ebx, 1	# D.9241,
	ja	.L95	#,
	jmp	.L77	#
.L93:
	lea	esi, [r14-1]	# tmp183,
	mov	ecx, OFFSET FLAT:cmpName	#,
	mov	edx, 184	#,
	mov	rdi, r12	#, D.9263
	call	qsort	#
	mov	esi, ebx	#, D.9241
	sub	esi, r14d	# tmp185, i
	mov	edi, r14d	# i, i
	imul	rdi, rdi, 184	# tmp187, i,
	add	rdi, rbp	# tmp188, D.9243
	mov	ecx, OFFSET FLAT:cmpName	#,
	mov	edx, 184	#,
	call	qsort	#
.L95:
	mov	ebp, 1	# i,
.L96:
	mov	DWORD PTR [r12+116], ebp	# MEM[base: D.9232_97, offset: 116B], i
	mov	r9, QWORD PTR [r12+144]	# D.9233, MEM[base: D.9232_97, offset: 144B]
	mov	QWORD PTR [rsp], r9	#, D.9233
	mov	r8, r12	#, ivtmp.59
	mov	ecx, ebp	#, i
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	ebp, 1	# i,
	add	r12, 184	# ivtmp.59,
	cmp	ebx, ebp	# D.9241, i
	jne	.L96	#,
.L77:
	add	rsp, 72	#,
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
.LFE112:
	.size	getCurrentFolderContent, .-getCurrentFolderContent
	.section	.rodata
	.type	__FUNCTION__.9169, @object
	.size	__FUNCTION__.9169, 10
__FUNCTION__.9169:
	.string	"validFile"
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
