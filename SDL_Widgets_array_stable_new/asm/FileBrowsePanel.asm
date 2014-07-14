	.file	"FileBrowsePanel.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT FileBrowsePanel.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/FileBrowsePanel.asm
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
	.type	FileBrowsePanel_butOkClicked, @function
FileBrowsePanel_butOkClicked:
.LFB113:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+112]	# sender_1(D)->void_parameter, sender_1(D)->void_parameter
	mov	eax, DWORD PTR [rax+12612]	# this_2->selIndex, this_2->selIndex
	sub	eax, 1	# tmp65,
	cmp	eax, -3	# tmp65,
	ja	.L1	#,
	mov	BYTE PTR [rsi+168], 1	# screen_5(D)->has_exited,
.L1:
	rep
	ret
	.cfi_endproc
.LFE113:
	.size	FileBrowsePanel_butOkClicked, .-FileBrowsePanel_butOkClicked
	.type	FileBrowsePanel_butCancelClicked, @function
FileBrowsePanel_butCancelClicked:
.LFB114:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+112]	# this, sender_1(D)->void_parameter
	mov	BYTE PTR [rsi+168], 1	# screen_3(D)->has_exited,
	mov	DWORD PTR [rax+12612], -1	# this_2->selIndex,
	ret
	.cfi_endproc
.LFE114:
	.size	FileBrowsePanel_butCancelClicked, .-FileBrowsePanel_butCancelClicked
	.type	FileBrowsePanel_deleteFileArray, @function
FileBrowsePanel_deleteFileArray:
.LFB108:
	.cfi_startproc
	cmp	QWORD PTR [rdi+368], 0	# this_1(D)->fileInfoArray,
	je	.L8	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, sil	# del_array, del_array
	mov	esi, DWORD PTR [rdi+12600]	# this_1(D)->fileInfoArraySize, this_1(D)->fileInfoArraySize
	add	rdi, 368	# tmp68,
	call	FbpFileInfo_arrayDelete	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L8:
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	FileBrowsePanel_deleteFileArray, .-FileBrowsePanel_deleteFileArray
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"."
.LC1:
	.string	"%s: Failed to open directory\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"%s: Failed to reallocate array\n"
	.section	.rodata.str1.1
.LC3:
	.string	".."
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"%s: Failed to open directory again\n"
	.section	.rodata.str1.1
.LC5:
	.string	"%s: Adding: '%s'\n"
	.text
	.type	FileBrowsePanel_getFolderContent, @function
FileBrowsePanel_getFolderContent:
.LFB109:
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
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 144
	mov	rbx, rdi	# this, this
	mov	rbp, QWORD PTR [rdi+368]	# fileInfoArray, this_4(D)->fileInfoArray
	lea	rdi, [rsp+48]	#,
	call	Directory_new	#
	mov	esi, OFFSET FLAT:.LC0	#,
	lea	rdi, [rsp+48]	#,
	call	Directory_open	#
	test	al, al	# D.10028
	jne	.L10	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9838	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	lea	rdi, [rsp+48]	#,
	call	delete	#
	mov	eax, 0	# D.10032,
	jmp	.L11	#
.L10:
	test	rbp, rbp	# fileInfoArray
	je	.L12	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	FileBrowsePanel_deleteFileArray	#
.L12:
	lea	rdi, [rsp+16]	#,
	call	DirFileInfo_new	#
	mov	r13d, 0	# fcount,
	jmp	.L34	#
.L16:
	lea	rdi, [rsp+16]	#,
	call	DirFileInfo_isHidden	#
	test	al, al	# D.10035
	jne	.L34	#,
	cmp	BYTE PTR [rsp+41], 0	# finfo.is_directory,
	jne	.L15	#,
	cmp	BYTE PTR [rsp+42], 0	# finfo.is_file,
	je	.L34	#,
	mov	rsi, QWORD PTR [rbx+384]	# this_4(D)->fileTypes, this_4(D)->fileTypes
	lea	rdi, [rsp+16]	#,
	call	DirFileInfo_checkExt	#
	test	al, al	# D.10045
	je	.L34	#,
.L15:
	add	r13d, 1	# fcount,
.L34:
	mov	edx, 1	#,
	lea	rsi, [rsp+16]	#,
	lea	rdi, [rsp+48]	#,
	call	Directory_getNext	#
	test	al, al	# D.10046
	jne	.L16	#,
	lea	rdi, [rsp+48]	#,
	call	Directory_close	#
	lea	r12d, [r13+1]	# fsize,
	mov	esi, r12d	#, fsize
	mov	rdi, rbp	#, fileInfoArray
	call	FbpFileInfo_arrayRealloc	#
	mov	rbp, rax	# fileInfoArray,
	test	rax, rax	# fileInfoArray
	jne	.L17	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9838	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	lea	rdi, [rsp+16]	#,
	call	delete	#
	lea	rdi, [rsp+48]	#,
	call	delete	#
	mov	eax, 0	# D.10032,
	jmp	.L11	#
.L17:
	mov	QWORD PTR [rbx+368], rax	# this_4(D)->fileInfoArray, fileInfoArray
	mov	DWORD PTR [rbx+12600], r12d	# this_4(D)->fileInfoArraySize, fsize
	mov	rcx, QWORD PTR [rbx+360]	# this_4(D)->font, this_4(D)->font
	mov	edx, 1	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, fileInfoArray
	call	FbpFileInfo_new	#
	mov	rdx, rbx	#, this
	mov	esi, OFFSET FLAT:FileBrowsePanel_fileClicked	#,
	mov	rdi, rbp	#, fileInfoArray
	call	FbpFileInfo_setClickHandler	#
	movzx	eax, WORD PTR [rbp+102]	# MEM[(struct Widget *)fileInfoArray_19].pos.h, MEM[(struct Widget *)fileInfoArray_19].pos.h
	mov	BYTE PTR [rbx+12628], al	# this_4(D)->nameHeight, MEM[(struct Widget *)fileInfoArray_19].pos.h
	test	r13d, r13d	# fcount
	jne	.L18	#,
	lea	rdi, [rsp+48]	#,
	call	delete	#
	lea	rdi, [rsp+16]	#,
	call	delete	#
	mov	eax, 1	# D.10032,
	jmp	.L11	#
.L18:
	mov	esi, OFFSET FLAT:.LC0	#,
	lea	rdi, [rsp+48]	#,
	call	Directory_open	#
	mov	r13d, 1	# i,
	test	al, al	# D.10054
	jne	.L29	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9838	#,
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	lea	rdi, [rsp+48]	#,
	call	delete	#
	lea	rdi, [rsp+16]	#,
	call	delete	#
	mov	eax, 0	# D.10032,
	jmp	.L11	#
.L25:
	lea	rdi, [rsp+16]	#,
	call	DirFileInfo_isHidden	#
	test	al, al	# D.10057
	jne	.L30	#,
	lea	rdi, [rsp+16]	#,
	call	DirFileInfo_getName	#
	mov	r8, rax	# D.10060,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9838	#,
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	cmp	BYTE PTR [rsp+41], 0	# finfo.is_directory,
	jne	.L21	#,
	cmp	BYTE PTR [rsp+42], 0	# finfo.is_file,
	je	.L35	#,
	mov	rsi, QWORD PTR [rbx+384]	# this_4(D)->fileTypes, this_4(D)->fileTypes
	lea	rdi, [rsp+16]	#,
	call	DirFileInfo_checkExt	#
	test	al, al	# D.10065
	je	.L35	#,
.L21:
	mov	eax, r13d	# i, i
	lea	rdx, [rax+rax*2]	# tmp128,
	lea	r14, [rax+rdx*4]	# tmp130,
	sal	r14, 4	# tmp131,
	add	r14, rbp	# fbinfo, fileInfoArray
	add	r13d, 1	# i,
	mov	rax, QWORD PTR [rbx+360]	#, this_4(D)->font
	mov	QWORD PTR [rsp], rax	# %sfp,
	movzx	r15d, BYTE PTR [rsp+41]	# D.10068, finfo.is_directory
	lea	rdi, [rsp+16]	#,
	call	DirFileInfo_getName	#
	mov	rcx, QWORD PTR [rsp]	#, %sfp
	mov	edx, r15d	#, D.10068
	mov	rsi, rax	#, D.10069
	mov	rdi, r14	#, fbinfo
	call	FbpFileInfo_new	#
	mov	rdx, rbx	#, this
	mov	esi, OFFSET FLAT:FileBrowsePanel_fileClicked	#,
	mov	rdi, r14	#, fbinfo
	call	FbpFileInfo_setClickHandler	#
	cmp	BYTE PTR [rsp+42], 0	# finfo.is_file,
	je	.L23	#,
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	Image_isExtSupported	#
	mov	BYTE PTR [r14+202], al	# fbinfo_41->is_image, D.10072
.L23:
	movzx	eax, WORD PTR [r14+102]	# h, MEM[(struct Widget *)fbinfo_41].pos.h
	movzx	edx, BYTE PTR [rbx+12628]	# this_4(D)->nameHeight, this_4(D)->nameHeight
	cmp	ax, dx	# h, this_4(D)->nameHeight
	jbe	.L35	#,
	mov	BYTE PTR [rbx+12628], al	# this_4(D)->nameHeight, h
	jmp	.L35	#
.L29:
	lea	rax, [rsp+32]	#,
	mov	QWORD PTR [rsp+8], rax	# %sfp,
.L35:
	cmp	r12d, r13d	# fsize, i
	jbe	.L24	#,
.L30:
	mov	edx, 1	#,
	lea	rsi, [rsp+16]	#,
	lea	rdi, [rsp+48]	#,
	call	Directory_getNext	#
	test	al, al	# D.10079
	jne	.L25	#,
.L24:
	lea	rdi, [rsp+16]	#,
	call	delete	#
	lea	rdi, [rsp+48]	#,
	call	delete	#
	mov	esi, r12d	#, fsize
	mov	rdi, rbp	#, fileInfoArray
	call	FbpFileInfo_arraySort	#
	mov	esi, r12d	#, fsize
	mov	rdi, rbp	#, fileInfoArray
	call	FbpFileInfo_arrayUpdateIds	#
	mov	eax, 1	# D.10032,
.L11:
	add	rsp, 88	#,
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
.LFE109:
	.size	FileBrowsePanel_getFolderContent, .-FileBrowsePanel_getFolderContent
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"%s: Failed to load preview image for file: '%s'\n"
	.text
	.type	FileBrowsePanel_fileClicked, @function
FileBrowsePanel_fileClicked:
.LFB111:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	r13, rsi	# screen, screen
	mov	rbx, QWORD PTR [rdi+112]	# this, sender_1(D)->void_parameter
	mov	ebp, DWORD PTR [rdi+152]	# j, sender_1(D)->id
	mov	rdx, QWORD PTR [rbx+368]	# fileInfoArray, this_2->fileInfoArray
	mov	eax, ebp	# j, j
	lea	rcx, [rax+rax*2]	# tmp121,
	lea	r12, [rax+rcx*4]	# tmp123,
	sal	r12, 4	# tmp124,
	add	r12, rdx	# fbinfo_j, fileInfoArray
	cmp	DWORD PTR [rbx+12616], ebp	# this_2->prevClicked, j
	jne	.L38	#,
	cmp	BYTE PTR [r12+201], 0	# fbinfo_j_7->is_directory,
	je	.L39	#,
	mov	QWORD PTR [rbx+376], r12	# this_2->changeDirItem, fbinfo_j
	jmp	.L37	#
.L39:
	mov	BYTE PTR [rsi+168], 1	# screen_10(D)->has_exited,
	jmp	.L37	#
.L38:
	mov	DWORD PTR [rbx+12616], ebp	# this_2->prevClicked, j
	mov	eax, DWORD PTR [rbx+12612]	# D.10098, this_2->selIndex
	cmp	eax, -1	# D.10098,
	je	.L41	#,
	mov	eax, eax	# D.10098, D.10098
	lea	rcx, [rax+rax*2]	# tmp128,
	lea	rdi, [rax+rcx*4]	# tmp130,
	sal	rdi, 4	# tmp131,
	add	rdi, rdx	# tmp132, fileInfoArray
	call	FbpFileInfo_unselect	#
.L41:
	mov	DWORD PTR [rbx+12612], ebp	# this_2->selIndex, j
	mov	rdi, r12	#, fbinfo_j
	call	FbpFileInfo_select	#
	cmp	BYTE PTR [r12+202], 0	# fbinfo_j_7->is_image,
	je	.L42	#,
	lea	rbp, [rbx+12424]	# wtImgPrev,
	mov	rdi, rbp	#, wtImgPrev
	call	delete	#
	movzx	r15d, WORD PTR [rbx+12622]	# D.10497, this_2->p_y
	movzx	r14d, WORD PTR [rbx+12620]	# D.10495, this_2->p_x
	mov	rdi, r12	#, fbinfo_j
	call	FbpFileInfo_getFilename	#
	mov	ecx, r15d	#, D.10497
	mov	edx, r14d	#, D.10495
	mov	rsi, rax	#, D.10494
	mov	rdi, rbp	#, wtImgPrev
	call	Image_new	#
	cmp	BYTE PTR [rbx+12583], 0	# MEM[(struct Widget *)this_2 + 12424B].visible,
	jne	.L43	#,
	mov	rdi, r12	#, fbinfo_j
	call	FbpFileInfo_getFilename	#
	mov	r8, rax	# D.10492,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9851	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L44	#
.L43:
	movzx	eax, WORD PTR [rbx+12524]	# D.10490, MEM[(struct Widget *)this_2 + 12424B].pos.w
	movzx	edx, WORD PTR [rbx+12526]	# D.10489, MEM[(struct Widget *)this_2 + 12424B].pos.h
	cmp	ax, dx	# D.10490, D.10489
	jbe	.L45	#,
	movzx	ecx, WORD PTR [rbx+12624]	# D.10488, this_2->p_w
	cmp	ax, cx	# D.10490, D.10488
	jbe	.L46	#,
	movzx	ecx, cx	# D.10488, D.10488
	cvtsi2sd	xmm0, ecx	# tmp133, D.10488
	movzx	eax, ax	# D.10490, D.10490
	cvtsi2sd	xmm1, eax	# tmp135, D.10490
	divsd	xmm0, xmm1	# scale, tmp135
	mov	esi, 1	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, wtImgPrev
	call	Widget_scale	#
	jmp	.L47	#
.L46:
	movzx	eax, WORD PTR [rbx+12626]	# D.10485, this_2->p_h
	cmp	dx, ax	# D.10489, D.10485
	jbe	.L47	#,
	movzx	eax, ax	# D.10485, D.10485
	cvtsi2sd	xmm0, eax	# tmp137, D.10485
	movzx	edx, dx	# D.10489, D.10489
	cvtsi2sd	xmm1, edx	# tmp139, D.10489
	divsd	xmm0, xmm1	# scale, tmp139
	mov	esi, 1	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, wtImgPrev
	call	Widget_scale	#
	jmp	.L47	#
.L45:
	movzx	ecx, WORD PTR [rbx+12626]	# D.10485, this_2->p_h
	cmp	dx, cx	# D.10489, D.10485
	jbe	.L48	#,
	movzx	ecx, cx	# D.10485, D.10485
	cvtsi2sd	xmm0, ecx	# tmp141, D.10485
	movzx	edx, dx	# D.10489, D.10489
	cvtsi2sd	xmm1, edx	# tmp143, D.10489
	divsd	xmm0, xmm1	# scale, tmp143
	mov	esi, 1	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, wtImgPrev
	call	Widget_scale	#
	jmp	.L47	#
.L48:
	movzx	edx, WORD PTR [rbx+12624]	# D.10488, this_2->p_w
	cmp	ax, dx	# D.10490, D.10488
	jbe	.L47	#,
	movzx	edx, dx	# D.10488, D.10488
	cvtsi2sd	xmm0, edx	# tmp145, D.10488
	movzx	eax, ax	# D.10490, D.10490
	cvtsi2sd	xmm1, eax	# tmp147, D.10490
	divsd	xmm0, xmm1	# scale, tmp147
	mov	esi, 1	#,
	movapd	xmm1, xmm0	#, scale
	mov	rdi, rbp	#, wtImgPrev
	call	Widget_scale	#
.L47:
	movzx	edx, WORD PTR [rbx+12626]	# this_2->p_h, this_2->p_h
	movzx	eax, WORD PTR [rbx+12526]	# MEM[(struct Widget *)this_2 + 12424B].pos.h, MEM[(struct Widget *)this_2 + 12424B].pos.h
	sub	edx, eax	# tmp151, MEM[(struct Widget *)this_2 + 12424B].pos.h
	sar	edx	# tmp152
	add	dx, WORD PTR [rbx+12522]	# tmp153, MEM[(struct Widget *)this_2 + 12424B].pos.y
	movzx	edx, dx	# tmp155, tmp153
	movzx	esi, WORD PTR [rbx+12524]	# tmp156, MEM[(struct Widget *)this_2 + 12424B].pos.w
	shr	si	# tmp156
	add	si, WORD PTR [rbx+12520]	# tmp158, MEM[(struct Widget *)this_2 + 12424B].pos.x
	movzx	esi, si	# tmp160, tmp158
	mov	rdi, rbp	#, wtImgPrev
	call	Widget_setPosition	#
	jmp	.L44	#
.L42:
	mov	BYTE PTR [rbx+12583], 0	# MEM[(struct Widget *)this_2 + 12424B].visible,
.L44:
	mov	BYTE PTR [r13+173], 1	# screen_10(D)->need_reload,
.L37:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	mov	r14, QWORD PTR [rsp+40]	#,
	mov	r15, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	FileBrowsePanel_fileClicked, .-FileBrowsePanel_fileClicked
	.type	FileBrowsePanel_keyUp, @function
FileBrowsePanel_keyUp:
.LFB115:
	.cfi_startproc
	cmp	esi, 283	# key,
	jne	.L54	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	esi, DWORD PTR [rdx+12600]	# MEM[(const struct FileBrowsePanel *)vthis_2(D)].fileInfoArraySize, MEM[(const struct FileBrowsePanel *)vthis_2(D)].fileInfoArraySize
	mov	rdi, QWORD PTR [rdx+368]	# MEM[(const struct FileBrowsePanel *)vthis_2(D)].fileInfoArray, MEM[(const struct FileBrowsePanel *)vthis_2(D)].fileInfoArray
	mov	rdx, QWORD PTR stderr[rip]	#, stderr
	call	FbpFileInfo_arrayShow	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L54:
	rep
	ret
	.cfi_endproc
.LFE115:
	.size	FileBrowsePanel_keyUp, .-FileBrowsePanel_keyUp
	.type	FileBrowsePanel_wheelEvent, @function
FileBrowsePanel_wheelEvent:
.LFB116:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rsi	# screen, screen
	mov	rbp, QWORD PTR [rdi+112]	# this, sender_1(D)->void_parameter
	mov	rdi, rsi	#, screen
	call	Screen_getEventButtonIndex	#
	cmp	al, 5	# butInd,
	jne	.L56	#,
	mov	eax, DWORD PTR [rbp+12600]	# tmp70, this_2->fileInfoArraySize
	sub	eax, 1	# tmp70,
	cmp	DWORD PTR [rbp+12608], eax	# this_2->lastScreenIndex, tmp70
	jae	.L55	#,
	add	DWORD PTR [rbp+12604], 1	# this_2->firstScreenIndex,
	mov	BYTE PTR [rbx+173], 1	# screen_3(D)->need_reload,
	jmp	.L55	#
.L56:
	cmp	al, 4	# butInd,
	jne	.L55	#,
	mov	eax, DWORD PTR [rbp+12604]	# D.10258, this_2->firstScreenIndex
	test	eax, eax	# D.10258
	je	.L55	#,
	sub	eax, 1	# tmp72,
	mov	DWORD PTR [rbp+12604], eax	# this_2->firstScreenIndex, tmp72
	mov	BYTE PTR [rbx+173], 1	# screen_3(D)->need_reload,
.L55:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	FileBrowsePanel_wheelEvent, .-FileBrowsePanel_wheelEvent
	.section	.rodata.str1.1
.LC7:
	.string	"%s: .fileInfoArray is NULL\n"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"%s: Failed to get current folder content\n"
	.align 8
.LC9:
	.string	"%s: Failed to change directory to '%s' [%s]\n"
	.text
	.type	FileBrowsePanel_screenMouseDownUp, @function
FileBrowsePanel_screenMouseDownUp:
.LFB112:
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
	mov	r13, rsi	# vthis, vthis
	mov	rax, QWORD PTR [rsi+368]	# fileInfoArray, MEM[(struct FileBrowsePanel *)vthis_2(D)].fileInfoArray
	mov	edx, DWORD PTR [rsi+12600]	# fileInfoArraySize, MEM[(struct FileBrowsePanel *)vthis_2(D)].fileInfoArraySize
	test	rax, rax	# fileInfoArray
	je	.L60	#,
	test	edx, edx	# fileInfoArraySize
	jne	.L61	#,
	jmp	.L59	#
.L60:
	mov	ecx, OFFSET FLAT:__FUNCTION__.9870	#,
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L59	#
.L61:
	mov	rbp, rdi	# screen, screen
	mov	rbx, rax	# ivtmp.40, fileInfoArray
	sub	edx, 1	# tmp115,
	lea	rcx, [rdx+rdx*2]	# tmp118,
	lea	rdx, [rdx+rcx*4]	# tmp120,
	sal	rdx, 4	# tmp121,
	lea	r12, [rax+208+rdx]	# D.10520,
	lea	r14, [rsi+8584]	# tmp131,
.L67:
	mov	rdi, rbp	#, screen
	call	Screen_getEventButtonIndex	#
	cmp	al, 1	# D.10165,
	jne	.L63	#,
	mov	rax, QWORD PTR [rbx]	# MEM[base: fbinfo_10, offset: 0B], MEM[base: fbinfo_10, offset: 0B]
	mov	rax, QWORD PTR [rax+16]	# D.10168_13->vtable, D.10168_13->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10169_14 + 8B], MEM[(const void * *)D.10169_14 + 8B]
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, ivtmp.40
	call	[QWORD PTR [rax]]	# MEM[(struct IWidget *)D.10171_16].mevent
	cmp	BYTE PTR [rbp+169], 0	# screen_11(D)->event_handled,
	je	.L64	#,
	mov	rbx, QWORD PTR [r13+376]	# D.10176, MEM[(struct FileBrowsePanel *)vthis_2(D)].changeDirItem
	test	rbx, rbx	# D.10176
	je	.L59	#,
	mov	QWORD PTR [r13+376], 0	# MEM[(struct FileBrowsePanel *)vthis_2(D)].changeDirItem,
	mov	rdi, rbx	#, D.10176
	call	FbpFileInfo_getFilename	#
	mov	rdi, rax	#, D.10179
	call	chdir	#
	test	eax, eax	# D.10180
	jne	.L65	#,
	mov	rdi, r13	#, vthis
	call	FileBrowsePanel_getFolderContent	#
	test	al, al	# D.10183
	jne	.L66	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9870	#,
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	jmp	.L59	#
.L66:
	mov	DWORD PTR [r13+12604], 0	# MEM[(struct FileBrowsePanel *)vthis_2(D)].firstScreenIndex,
	mov	DWORD PTR [r13+12616], -1	# MEM[(struct FileBrowsePanel *)vthis_2(D)].prevClicked,
	mov	BYTE PTR [rbp+173], 1	# screen_11(D)->need_reload,
	jmp	.L59	#
.L65:
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.10188_25
	call	strerror	#
	mov	rbp, rax	# D.10190,
	mov	rdi, rbx	#, D.10176
	call	FbpFileInfo_getFilename	#
	mov	r8, rax	# D.10191,
	mov	r9, rbp	#, D.10190
	mov	ecx, OFFSET FLAT:__FUNCTION__.9870	#,
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L59	#
.L63:
	mov	rax, QWORD PTR [r13+8584]	# MEM[(struct coObject *)vthis_2(D) + 8584B].class, MEM[(struct coObject *)vthis_2(D) + 8584B].class
	mov	rax, QWORD PTR [rax+16]	# D.10194_31->vtable, D.10194_31->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10195_32 + 8B], MEM[(const void * *)D.10195_32 + 8B]
	mov	rsi, rbp	#, screen
	mov	rdi, r14	#, tmp131
	call	[QWORD PTR [rax]]	# MEM[(struct IWidget *)D.10197_34].mevent
	cmp	BYTE PTR [rbp+169], 0	# screen_11(D)->event_handled,
	jne	.L59	#,
.L64:
	add	rbx, 208	# ivtmp.40,
	cmp	rbx, r12	# ivtmp.40, D.10520
	jne	.L67	#,
.L59:
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
.LFE112:
	.size	FileBrowsePanel_screenMouseDownUp, .-FileBrowsePanel_screenMouseDownUp
	.type	FileBrowsePanel_afterPaint, @function
FileBrowsePanel_afterPaint:
.LFB118:
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
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
	mov	r14, rdi	# screen, screen
	mov	r13, rsi	# vthis, vthis
	mov	eax, 0	#,
	call	Screen_getHeight	#
	movzx	ecx, ax	# D.10202, D.10202
	add	ecx, ecx	# tmp125
	mov	esi, 1431655766	# tmp127,
	mov	eax, ecx	#, tmp125
	imul	esi	# tmp127
	mov	ecx, edx	# D.10205,
	lea	eax, [rdx-50]	# tmp130,
	movzx	esi, BYTE PTR [r13+12628]	# MEM[(struct FileBrowsePanel *)vthis_1(D)].nameHeight, MEM[(struct FileBrowsePanel *)vthis_1(D)].nameHeight
	mov	edx, eax	# tmp133, tmp130
	sar	edx, 31	# tmp133,
	idiv	esi	# MEM[(struct FileBrowsePanel *)vthis_1(D)].nameHeight
	sub	ecx, edx	# height, tmp133
	mov	WORD PTR [r13+8686], cx	# MEM[(struct Widget *)vthis_1(D) + 8584B].pos.h, height
	add	ecx, 10	# tmp135,
	mov	WORD PTR [r13+8862], cx	# MEM[(struct Widget *)vthis_1(D) + 8760B].pos.h, tmp135
	lea	rbx, [r13+8584]	# D.10212,
	mov	rax, QWORD PTR [r13+8584]	# MEM[(struct coObject *)vthis_1(D) + 8584B].class, MEM[(struct coObject *)vthis_1(D) + 8584B].class
	mov	rax, QWORD PTR [rax+16]	# D.10216_21->vtable, D.10216_21->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10217_22 + 8B], MEM[(const void * *)D.10217_22 + 8B]
	mov	rdi, rbx	#, D.10212
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10219_24].refresh
	lea	rbp, [r13+8760]	# D.10213,
	mov	rax, QWORD PTR [r13+8760]	# MEM[(struct coObject *)vthis_1(D) + 8760B].class, MEM[(struct coObject *)vthis_1(D) + 8760B].class
	mov	rax, QWORD PTR [rax+16]	# D.10221_28->vtable, D.10221_28->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10222_29 + 8B], MEM[(const void * *)D.10222_29 + 8B]
	mov	rdi, rbp	#, D.10213
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10224_31].refresh
	mov	rax, QWORD PTR [r13+8760]	# MEM[(struct coObject *)vthis_1(D) + 8760B].class, MEM[(struct coObject *)vthis_1(D) + 8760B].class
	mov	rax, QWORD PTR [rax+16]	# D.10221_35->vtable, D.10221_35->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10222_36 + 8B], MEM[(const void * *)D.10222_36 + 8B]
	mov	edx, 0	#,
	mov	rsi, r14	#, screen
	mov	rdi, rbp	#, D.10213
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.10224_38].draw
	mov	rax, QWORD PTR [r13+8584]	# MEM[(struct coObject *)vthis_1(D) + 8584B].class, MEM[(struct coObject *)vthis_1(D) + 8584B].class
	mov	rax, QWORD PTR [rax+16]	# D.10216_43->vtable, D.10216_43->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10217_44 + 8B], MEM[(const void * *)D.10217_44 + 8B]
	mov	edx, 0	#,
	mov	rsi, r14	#, screen
	mov	rdi, rbx	#, D.10212
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.10219_46].draw
	mov	rax, QWORD PTR [r13+368]	#, MEM[(struct FileBrowsePanel *)vthis_1(D)].fileInfoArray
	mov	QWORD PTR [rsp], rax	# %sfp,
	movsx	ebp, WORD PTR [r13+8682]	# MEM[(struct Widget *)vthis_1(D) + 8584B].pos.y, MEM[(struct Widget *)vthis_1(D) + 8584B].pos.y
	add	ebp, 50	# y,
	movsx	eax, WORD PTR [r13+8680]	# MEM[(struct Widget *)vthis_1(D) + 8584B].pos.x, MEM[(struct Widget *)vthis_1(D) + 8584B].pos.x
	add	eax, 5	# D.10547,
	mov	ebx, DWORD PTR [r13+12604]	# i, MEM[(struct FileBrowsePanel *)vthis_1(D)].firstScreenIndex
	mov	r15d, DWORD PTR [r13+12600]	# fileInfoArraySize, MEM[(struct FileBrowsePanel *)vthis_1(D)].fileInfoArraySize
	cmp	ebx, r15d	# i, fileInfoArraySize
	jae	.L71	#,
	movzx	edx, WORD PTR [r13+8730]	# MEM[(struct Widget *)vthis_1(D) + 8584B].maxy, MEM[(struct Widget *)vthis_1(D) + 8584B].maxy
	cmp	ebp, edx	# y, MEM[(struct Widget *)vthis_1(D) + 8584B].maxy
	jae	.L71	#,
	and	eax, 65535	#,
	mov	DWORD PTR [rsp+12], eax	# %sfp,
.L73:
	mov	eax, ebx	# i, i
	lea	rdx, [rax+rax*2]	# tmp158,
	lea	r12, [rax+rdx*4]	# tmp160,
	sal	r12, 4	# tmp161,
	add	r12, QWORD PTR [rsp]	# widget, %sfp
	movzx	edx, bp	# tmp162, y
	mov	esi, DWORD PTR [rsp+12]	#, %sfp
	mov	rdi, r12	#, widget
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)widget_72].class, MEM[(struct coObject *)widget_72].class
	mov	rax, QWORD PTR [rax+16]	# D.10540_77->vtable, D.10540_77->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10539_78 + 8B], MEM[(const void * *)D.10539_78 + 8B]
	mov	edx, 0	#,
	mov	rsi, r14	#, screen
	mov	rdi, r12	#, widget
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.10538_79].draw
	add	ebx, 1	# i,
	movzx	eax, BYTE PTR [r13+12628]	# MEM[(struct FileBrowsePanel *)vthis_1(D)].nameHeight, MEM[(struct FileBrowsePanel *)vthis_1(D)].nameHeight
	add	ebp, eax	# y, MEM[(struct FileBrowsePanel *)vthis_1(D)].nameHeight
	cmp	r15d, ebx	# fileInfoArraySize, i
	jbe	.L71	#,
	movzx	eax, WORD PTR [r13+8730]	# MEM[(struct Widget *)vthis_1(D) + 8584B].maxy, MEM[(struct Widget *)vthis_1(D) + 8584B].maxy
	cmp	ebp, eax	# y, MEM[(struct Widget *)vthis_1(D) + 8584B].maxy
	jb	.L73	#,
.L71:
	sub	ebx, 1	# tmp170,
	mov	DWORD PTR [r13+12608], ebx	# MEM[(struct FileBrowsePanel *)vthis_1(D)].lastScreenIndex, tmp170
	mov	rdi, r14	#, screen
	call	Screen_flip	#
	add	rsp, 24	#,
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
.LFE118:
	.size	FileBrowsePanel_afterPaint, .-FileBrowsePanel_afterPaint
	.section	.rodata.str1.1
.LC10:
	.string	"FileBrowsePanel.c"
	.text
	.globl	FileBrowsePanel_vdestroy
	.type	FileBrowsePanel_vdestroy, @function
FileBrowsePanel_vdestroy:
.LFB119:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, 1	#,
	call	FileBrowsePanel_deleteFileArray	#
	lea	rdi, [rbx+8584]	# tmp68,
	call	delete	#
	lea	rdi, [rbx+8760]	# tmp69,
	call	delete	#
	lea	rdi, [rbx+8936]	# tmp70,
	call	delete	#
	lea	rdi, [rbx+10680]	# tmp71,
	call	delete	#
	lea	rdi, [rbx+12424]	# tmp72,
	call	delete	#
	lea	rdi, [rbx+184]	# tmp73,
	call	delete	#
	mov	rdi, QWORD PTR [rbx+360]	# D.10331, MEM[(struct FileBrowsePanel *)vthis_1(D)].font
	test	rdi, rdi	# D.10331
	je	.L77	#,
	mov	edx, 441	#,
	mov	esi, OFFSET FLAT:.LC10	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR [rbx+360], 0	# MEM[(struct FileBrowsePanel *)vthis_1(D)].font,
.L77:
	lea	rdi, [rbx+8]	# tmp74,
	call	delete	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	FileBrowsePanel_vdestroy, .-FileBrowsePanel_vdestroy
	.section	.rodata.str1.1
.LC11:
	.string	"%s: Not initialized\n"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"%s: Failed to get real path of selected file: '%s' [%s]\n"
	.align 8
.LC13:
	.string	"%s: Failed to change directory to previous: '%s' [%s]\n"
	.align 8
.LC14:
	.string	"%s: Ended with selected path: '%s'\n"
	.text
	.globl	FileBrowsePanel_show
	.type	FileBrowsePanel_show, @function
FileBrowsePanel_show:
.LFB120:
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
	cmp	BYTE PTR [rdi+12630], 0	# this_4(D)->is_inited,
	jne	.L80	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9925	#,
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebp, 0	# sel_path,
	jmp	.L81	#
.L80:
	mov	r12d, esi	# sel_files, sel_files
	mov	r13d, edx	# sel_directories, sel_directories
	lea	rdi, [rdi+8]	# tmp91,
	call	Screen_MainStart	#
	mov	eax, DWORD PTR [rbx+12612]	# D.10288, this_4(D)->selIndex
	mov	ebp, 0	# sel_path,
	cmp	eax, -1	# D.10288,
	je	.L82	#,
	mov	eax, eax	# D.10288, D.10288
	lea	rdx, [rax+rax*2]	# tmp95,
	lea	rdi, [rax+rdx*4]	# tmp97,
	sal	rdi, 4	# tmp98,
	add	rdi, QWORD PTR [rbx+368]	# sel_info, this_4(D)->fileInfoArray
	test	r12b, r12b	# sel_files
	je	.L83	#,
	cmp	BYTE PTR [rdi+201], 0	# sel_info_14->is_directory,
	je	.L84	#,
.L83:
	mov	ebp, 0	# sel_path,
	test	r13b, r13b	# sel_directories
	je	.L82	#,
	cmp	BYTE PTR [rdi+201], 0	# sel_info_14->is_directory,
	je	.L82	#,
	cmp	DWORD PTR [rdi+152], 0	# MEM[(struct Widget *)sel_info_14].id,
	je	.L82	#,
.L84:
	call	FbpFileInfo_getFilename	#
	mov	r12, rax	# sel_fname,
	lea	rbp, [rbx+4488]	# sel_path,
	mov	edx, 4096	#,
	mov	rsi, rbp	#, sel_path
	mov	rdi, rax	#, sel_fname
	call	__realpath_chk	#
	test	rax, rax	# D.10411
	jne	.L82	#,
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.10306_23
	call	strerror	#
	mov	r9, rax	# D.10308,
	mov	r8, r12	#, sel_fname
	mov	ecx, OFFSET FLAT:__FUNCTION__.9925	#,
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebp, 0	# sel_path,
.L82:
	cmp	BYTE PTR [rbx+392], 0	# this_4(D)->prevDirPath,
	je	.L85	#,
	add	rbx, 392	# D.10313,
	mov	rdi, rbx	#, D.10313
	call	chdir	#
	test	eax, eax	# D.10314
	je	.L85	#,
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.10306_31
	call	strerror	#
	mov	r9, rax	# D.10317,
	mov	r8, rbx	#, D.10313
	mov	ecx, OFFSET FLAT:__FUNCTION__.9925	#,
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L85:
	mov	r8, rbp	#, sel_path
	mov	ecx, OFFSET FLAT:__FUNCTION__.9925	#,
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L81:
	mov	rax, rbp	#, sel_path
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE120:
	.size	FileBrowsePanel_show, .-FileBrowsePanel_show
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"%s: Failed to set background image\n"
	.text
	.globl	FileBrowsePanel_setBgImage
	.type	FileBrowsePanel_setBgImage, @function
FileBrowsePanel_setBgImage:
.LFB121:
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
	mov	r12, rsi	# imagePath, imagePath
	mov	r13d, edx	# mode, mode
	cmp	BYTE PTR [rdi+12630], 0	# this_2(D)->is_inited,
	je	.L92	#,
	lea	rdi, [rdi+184]	# tmp72,
	call	delete	#
.L92:
	lea	rbp, [rbx+184]	# D.10273,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, r12	#, imagePath
	mov	rdi, rbp	#, D.10273
	call	Image_new	#
	cmp	BYTE PTR [rbx+343], 0	# MEM[(struct Widget *)this_2(D) + 184B].visible,
	je	.L93	#,
	movzx	edx, r13b	# mode, mode
	lea	rdi, [rbx+8]	# tmp74,
	mov	rsi, rbp	#, D.10273
	call	Screen_setBackgroundWidget	#
	mov	eax, 1	# D.10279,
	jmp	.L94	#
.L93:
	mov	ecx, OFFSET FLAT:__FUNCTION__.9933	#,
	mov	edx, OFFSET FLAT:.LC15	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.10279,
.L94:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE121:
	.size	FileBrowsePanel_setBgImage, .-FileBrowsePanel_setBgImage
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"%s: Screen_new failed with error %s\n"
	.align 8
.LC17:
	.string	"img/green-design-background.jpg"
	.section	.rodata.str1.1
.LC18:
	.string	"fonts/ariblk.ttf"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"%s: Failed to obtain current working directory [%s]\n"
	.section	.rodata.str1.1
.LC20:
	.string	"OK"
.LC21:
	.string	"Anuluj"
	.text
	.globl	FileBrowsePanel_new
	.type	FileBrowsePanel_new, @function
FileBrowsePanel_new:
.LFB122:
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
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 80
	mov	rbx, rdi	# this, this
	mov	DWORD PTR [rsp+28], 0	# e,
	test	rdi, rdi	# this
	jne	.L97	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9940	#,
	call	Static_nullThis2	#
	jmp	.L98	#
.L97:
	mov	rbp, rsi	# fileTypes, fileTypes
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	BYTE PTR [rbx+12630], 0	# this_2(D)->is_inited,
	mov	QWORD PTR [rbx+368], 0	# this_2(D)->fileInfoArray,
	mov	DWORD PTR [rbx+12600], 0	# this_2(D)->fileInfoArraySize,
	mov	QWORD PTR [rbx+376], 0	# this_2(D)->changeDirItem,
	mov	DWORD PTR [rbx+12616], -1	# this_2(D)->prevClicked,
	mov	DWORD PTR [rbx+12604], 0	# this_2(D)->firstScreenIndex,
	mov	DWORD PTR [rbx+12612], -1	# this_2(D)->selIndex,
	mov	DWORD PTR [rbx+12608], 0	# this_2(D)->lastScreenIndex,
	mov	BYTE PTR [rbx+12628], 0	# this_2(D)->nameHeight,
	mov	BYTE PTR [rbx+392], 0	# this_2(D)->prevDirPath,
	mov	BYTE PTR [rbx+4488], 0	# this_2(D)->sel_path,
	mov	BYTE PTR [rbx+12629], 0	# this_2(D)->sel,
	mov	QWORD PTR [rbx+384], rbp	# this_2(D)->fileTypes, fileTypes
	mov	QWORD PTR [rbx+360], 0	# this_2(D)->font,
	lea	rbp, [rbx+8]	# D.9945,
	mov	edx, 0	#,
	lea	rsi, [rsp+28]	#,
	mov	rdi, rbp	#, D.9945
	call	Screen_new	#
	mov	edi, DWORD PTR [rsp+28]	# e.0, e
	test	edi, edi	# e.0
	je	.L99	#,
	call	perr_getName	#
	mov	r8, rax	# D.9949,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9940	#,
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L98	#
.L99:
	mov	BYTE PTR [rbx+180], 0	# this_2(D)->screen.drag_on,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, rbx	#, this
	call	FileBrowsePanel_setBgImage	#
	mov	esi, 20	#,
	mov	edi, OFFSET FLAT:.LC18	#,
	call	Static_getFont	#
	mov	QWORD PTR [rbx+360], rax	# this_2(D)->font, D.9951
	lea	rdi, [rbx+392]	# tmp116,
	mov	esi, 4096	#,
	call	getcwd	#
	test	rax, rax	# D.10441
	jne	.L100	#,
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.9956_14
	call	strerror	#
	mov	r8, rax	# D.9958,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9940	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+392], 0	# this_2(D)->prevDirPath,
.L100:
	mov	rdi, rbx	#, this
	call	FileBrowsePanel_getFolderContent	#
	lea	r13, [rbx+8584]	# D.9959,
	mov	esi, 14873555	#,
	mov	rdi, r13	#, D.9959
	call	Rectangle_new	#
	lea	r12, [rbx+8760]	# D.9960,
	mov	esi, 3059200	#,
	mov	rdi, r12	#, D.9960
	call	Rectangle_new	#
	mov	eax, 0	#,
	call	Screen_getHeight	#
	movzx	ecx, ax	# D.9961, D.9961
	add	ecx, ecx	# tmp118
	mov	esi, 1431655766	# tmp120,
	mov	eax, ecx	#, tmp118
	imul	esi	# tmp120
	mov	ecx, edx	# D.9964,
	lea	eax, [rdx-50]	# tmp123,
	movzx	esi, BYTE PTR [rbx+12628]	# this_2(D)->nameHeight, this_2(D)->nameHeight
	mov	edx, eax	# tmp126, tmp123
	sar	edx, 31	# tmp126,
	idiv	esi	# this_2(D)->nameHeight
	sub	ecx, edx	# height, tmp126
	mov	WORD PTR [rbx+8682], 100	# MEM[(struct Widget *)this_2(D) + 8584B].pos.y,
	mov	WORD PTR [rbx+8684], 850	# MEM[(struct Widget *)this_2(D) + 8584B].pos.w,
	mov	WORD PTR [rbx+8680], 100	# MEM[(struct Widget *)this_2(D) + 8584B].pos.x,
	mov	WORD PTR [rbx+8686], cx	# MEM[(struct Widget *)this_2(D) + 8584B].pos.h, height
	mov	WORD PTR [rbx+8858], 95	# MEM[(struct Widget *)this_2(D) + 8760B].pos.y,
	mov	WORD PTR [rbx+8860], 95	# MEM[(struct Widget *)this_2(D) + 8760B].pos.w,
	mov	WORD PTR [rbx+8856], 860	# MEM[(struct Widget *)this_2(D) + 8760B].pos.x,
	add	ecx, 10	# tmp128,
	mov	WORD PTR [rbx+8862], cx	# MEM[(struct Widget *)this_2(D) + 8760B].pos.h, tmp128
	mov	rax, QWORD PTR [rbx+8584]	# MEM[(struct coObject *)this_2(D) + 8584B].class, MEM[(struct coObject *)this_2(D) + 8584B].class
	mov	rax, QWORD PTR [rax+16]	# D.9983_57->vtable, D.9983_57->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9984_58 + 8B], MEM[(const void * *)D.9984_58 + 8B]
	mov	rdi, r13	#, D.9959
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9986_60].refresh
	mov	rax, QWORD PTR [rbx+8760]	# MEM[(struct coObject *)this_2(D) + 8760B].class, MEM[(struct coObject *)this_2(D) + 8760B].class
	mov	rax, QWORD PTR [rax+16]	# D.9988_64->vtable, D.9988_64->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9989_65 + 8B], MEM[(const void * *)D.9989_65 + 8B]
	mov	rdi, r12	#, D.9960
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9991_67].refresh
	movzx	eax, WORD PTR [rbx+8904]	# tmp137, MEM[(struct Widget *)this_2(D) + 8760B].maxx
	add	eax, 10	# tmp137,
	mov	WORD PTR [rbx+12620], ax	# this_2(D)->p_x, tmp137
	movzx	eax, WORD PTR [rbx+8858]	# tmp139, MEM[(struct Widget *)this_2(D) + 8760B].pos.y
	add	eax, 10	# tmp139,
	mov	WORD PTR [rbx+12622], ax	# this_2(D)->p_y, tmp139
	mov	eax, 0	#,
	call	Screen_getWidth	#
	mov	edx, -20	# tmp142,
	sub	dx, WORD PTR [rbx+8860]	# tmp141, MEM[(struct Widget *)this_2(D) + 8760B].pos.w
	sub	dx, WORD PTR [rbx+8856]	# tmp143, MEM[(struct Widget *)this_2(D) + 8760B].pos.x
	add	eax, edx	# tmp144, tmp143
	mov	WORD PTR [rbx+12624], ax	# this_2(D)->p_w, tmp144
	movzx	eax, WORD PTR [rbx+8862]	# tmp145, MEM[(struct Widget *)this_2(D) + 8760B].pos.h
	sub	eax, 20	# tmp145,
	mov	WORD PTR [rbx+12626], ax	# this_2(D)->p_h, tmp145
	lea	r13, [rbx+8936]	# D.10007,
	mov	esi, OFFSET FLAT:.LC20	#,
	mov	rdi, r13	#, D.10007
	call	Button_new	#
	lea	r12, [rbx+10680]	# D.10008,
	mov	esi, OFFSET FLAT:.LC21	#,
	mov	rdi, r12	#, D.10008
	call	Button_new	#
	mov	rcx, QWORD PTR [rbx+360]	# this_2(D)->font, this_2(D)->font
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 50	#,
	mov	edx, 874	#,
	mov	esi, 879	#,
	mov	rdi, r13	#, D.10007
	call	Button_applyDefaultStyle	#
	mov	rcx, QWORD PTR [rbx+360]	# this_2(D)->font, this_2(D)->font
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 33	#,
	mov	edx, 874	#,
	mov	esi, 1061	#,
	mov	rdi, r12	#, D.10008
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbx+8944], OFFSET FLAT:FileBrowsePanel_butOkClicked	# MEM[(struct Widget *)this_2(D) + 8936B].click_handler,
	mov	QWORD PTR [rbx+10688], OFFSET FLAT:FileBrowsePanel_butCancelClicked	# MEM[(struct Widget *)this_2(D) + 10680B].click_handler,
	mov	QWORD PTR [rbx+8600], OFFSET FLAT:FileBrowsePanel_wheelEvent	# MEM[(struct Widget *)this_2(D) + 8584B].press_handler,
	mov	QWORD PTR [rbx+9048], rbx	# MEM[(struct Widget *)this_2(D) + 8936B].void_parameter, this
	mov	QWORD PTR [rbx+10792], rbx	# MEM[(struct Widget *)this_2(D) + 10680B].void_parameter, this
	mov	QWORD PTR [rbx+8696], rbx	# MEM[(struct Widget *)this_2(D) + 8584B].void_parameter, this
	lea	r14, [rbx+12424]	# D.10010,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, r14	#, D.10010
	call	Image_new	#
	mov	rsi, r13	#, D.10007
	mov	rdi, rbp	#, D.9945
	call	Screen_addWidget	#
	mov	rsi, r12	#, D.10008
	mov	rdi, rbp	#, D.9945
	call	Screen_addWidget	#
	mov	rsi, r14	#, D.10010
	mov	rdi, rbp	#, D.9945
	call	Screen_addWidget	#
	mov	BYTE PTR [rbx+179], 1	# this_2(D)->screen.disable_auto_flip,
	mov	QWORD PTR [rbx+128], OFFSET FLAT:FileBrowsePanel_afterPaint	# this_2(D)->screen.after_paint,
	mov	QWORD PTR [rbx+136], OFFSET FLAT:FileBrowsePanel_screenMouseDownUp	# this_2(D)->screen.mouse_down,
	mov	QWORD PTR [rbx+144], OFFSET FLAT:FileBrowsePanel_screenMouseDownUp	# this_2(D)->screen.mouse_up,
	mov	QWORD PTR [rbx+160], rbx	# this_2(D)->screen.param, this
	mov	QWORD PTR [rbx+96], OFFSET FLAT:FileBrowsePanel_keyUp	# this_2(D)->screen.key_up,
	mov	BYTE PTR [rbx+12630], 1	# this_2(D)->is_inited,
.L98:
	mov	rax, rbx	#, this
	add	rsp, 32	#,
	.cfi_def_cfa_offset 48
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
.LFE122:
	.size	FileBrowsePanel_new, .-FileBrowsePanel_new
	.globl	FileBrowsePanel_class
	.data
	.align 8
	.type	FileBrowsePanel_class, @object
	.size	FileBrowsePanel_class, 8
FileBrowsePanel_class:
	.quad	type
	.comm	IMAGE_SUPPORTED_FILES,8,8
	.section	.rodata.str1.1
.LC22:
	.string	"FileBrowsePanel"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	12632
# name:
	.quad	.LC22
# vtable:
	.quad	vtable
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9925, @object
	.size	__FUNCTION__.9925, 21
__FUNCTION__.9925:
	.string	"FileBrowsePanel_show"
	.align 16
	.type	__FUNCTION__.9933, @object
	.size	__FUNCTION__.9933, 27
__FUNCTION__.9933:
	.string	"FileBrowsePanel_setBgImage"
	.align 16
	.type	__FUNCTION__.9940, @object
	.size	__FUNCTION__.9940, 20
__FUNCTION__.9940:
	.string	"FileBrowsePanel_new"
	.align 32
	.type	__FUNCTION__.9870, @object
	.size	__FUNCTION__.9870, 34
__FUNCTION__.9870:
	.string	"FileBrowsePanel_screenMouseDownUp"
	.align 32
	.type	__FUNCTION__.9838, @object
	.size	__FUNCTION__.9838, 33
__FUNCTION__.9838:
	.string	"FileBrowsePanel_getFolderContent"
	.align 32
	.type	__FUNCTION__.9851, @object
	.size	__FUNCTION__.9851, 35
__FUNCTION__.9851:
	.string	"FileBrowsePanel_createPreviewImage"
	.data
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
	.quad	FileBrowsePanel_vdestroy
# toString:
	.quad	coObject_coIObject_vtoString
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
