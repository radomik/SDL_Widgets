	.file	"FbpFileInfo.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT FbpFileInfo.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/FbpFileInfo.asm
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
	.type	FbpFileInfo_cmpIsDir, @function
FbpFileInfo_cmpIsDir:
.LFB115:
	.cfi_startproc
	movzx	eax, BYTE PTR [rsi+201]	# MEM[(struct FbpFileInfo *)b_1(D)].is_directory, MEM[(struct FbpFileInfo *)b_1(D)].is_directory
	movzx	edx, BYTE PTR [rdi+201]	# MEM[(struct FbpFileInfo *)a_4(D)].is_directory, MEM[(struct FbpFileInfo *)a_4(D)].is_directory
	sub	eax, edx	# tmp67, MEM[(struct FbpFileInfo *)a_4(D)].is_directory
	ret
	.cfi_endproc
.LFE115:
	.size	FbpFileInfo_cmpIsDir, .-FbpFileInfo_cmpIsDir
	.type	FbpFileInfo_cmpName, @function
FbpFileInfo_cmpName:
.LFB116:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rsi, QWORD PTR [rsi+168]	# MEM[(struct TextBlock *)b_1(D)].text, MEM[(struct TextBlock *)b_1(D)].text
	mov	rdi, QWORD PTR [rdi+168]	# MEM[(struct TextBlock *)a_3(D)].text, MEM[(struct TextBlock *)a_3(D)].text
	call	strcmp	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	FbpFileInfo_cmpName, .-FbpFileInfo_cmpName
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s @ %p: '%s'"
	.text
	.globl	FbpFileInfo_vtoString
	.type	FbpFileInfo_vtoString, @function
FbpFileInfo_vtoString:
.LFB108:
	.cfi_startproc
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	rax, QWORD PTR [rdi+168]	# MEM[(struct TextBlock *)vthis_1(D)].text, MEM[(struct TextBlock *)vthis_1(D)].text
	mov	QWORD PTR [rsp+8], rax	#, MEM[(struct TextBlock *)vthis_1(D)].text
	mov	QWORD PTR [rsp], rdi	#, vthis
	mov	r9, QWORD PTR type[rip+8]	#, type.name
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 4121	#,
	mov	edx, 1	#,
	mov	esi, 4121	#,
	mov	edi, OFFSET FLAT:str_id.9577	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9577	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	FbpFileInfo_vtoString, .-FbpFileInfo_vtoString
	.section	.rodata.str1.1
.LC1:
	.string	"%s: Deleting this: %s\n"
	.text
	.globl	FbpFileInfo_vdestroy
	.type	FbpFileInfo_vdestroy, @function
FbpFileInfo_vdestroy:
.LFB107:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	r8, QWORD PTR TO_STRING_NULL_THIS_STR[rip]	# iftmp.3, TO_STRING_NULL_THIS_STR
	test	rdi, rdi	# vthis
	je	.L8	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)vthis_2(D)].class, MEM[(struct coObject *)vthis_2(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9767_3->vtable, D.9767_3->vtable
	mov	rax, QWORD PTR [rax]	# *D.9768_4, *D.9768_4
	call	[QWORD PTR [rax+8]]	# MEM[(struct coIObject *)D.9769_5].toString
	mov	r8, rax	# iftmp.3,
.L8:
	mov	ecx, OFFSET FLAT:__FUNCTION__.9573	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, rbx	#, vthis
	call	TextBlock_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	FbpFileInfo_vdestroy, .-FbpFileInfo_vdestroy
	.globl	FbpFileInfo_getFilename
	.type	FbpFileInfo_getFilename, @function
FbpFileInfo_getFilename:
.LFB109:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+168]	# MEM[(struct TextBlock *)this_1(D)].text, MEM[(struct TextBlock *)this_1(D)].text
	ret
	.cfi_endproc
.LFE109:
	.size	FbpFileInfo_getFilename, .-FbpFileInfo_getFilename
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"%s: Within context: name(%s), is_directory(%s), font(%p)\n"
	.text
	.globl	FbpFileInfo_new
	.type	FbpFileInfo_new, @function
FbpFileInfo_new:
.LFB110:
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
	mov	r13, rsi	# name, name
	mov	rbp, rcx	# font, font
	mov	r12d, edx	# is_directory, is_directory
	test	rdi, rdi	# this
	jne	.L12	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9587	#,
	call	Static_nullThis2	#
	test	r12b, r12b	# is_directory
	mov	r9, QWORD PTR __true_str[rip]	# tmp76, __true_str
	cmove	r9, QWORD PTR __false_str[rip]	# tmp76,, iftmp.1, __false_str
	mov	QWORD PTR [rsp], rbp	#, font
	mov	r8, r13	#, name
	mov	ecx, OFFSET FLAT:__FUNCTION__.9587	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L15	#
.L12:
	call	TextBlock_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	test	rbp, rbp	# font
	je	.L16	#,
	mov	rsi, rbp	#, font
	mov	rdi, rbx	#, this
	call	TextBlock_setFont	#
.L16:
	mov	esi, 16774321	#,
	mov	rdi, rbx	#, this
	call	TextBlock_setBackgroundColor	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, this
	call	TextBlock_setForegroundColor	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_3(D)].class, MEM[(struct coObject *)this_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9749_11->vtable, D.9749_11->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9750_12 + 8B], MEM[(const void * *)D.9750_12 + 8B]
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9752_14].refresh
	mov	BYTE PTR [rbx+200], 0	# this_3(D)->is_selected,
	mov	BYTE PTR [rbx+201], r12b	# this_3(D)->is_directory, is_directory
	mov	BYTE PTR [rbx+202], 0	# this_3(D)->is_image,
.L15:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	FbpFileInfo_new, .-FbpFileInfo_new
	.globl	FbpFileInfo_setClickHandler
	.type	FbpFileInfo_setClickHandler, @function
FbpFileInfo_setClickHandler:
.LFB111:
	.cfi_startproc
	mov	QWORD PTR [rdi+8], rsi	# MEM[(struct Widget *)this_1(D)].click_handler, func
	mov	QWORD PTR [rdi+112], rdx	# MEM[(struct Widget *)this_1(D)].void_parameter, param
	ret
	.cfi_endproc
.LFE111:
	.size	FbpFileInfo_setClickHandler, .-FbpFileInfo_setClickHandler
	.globl	FbpFileInfo_setBackgroundColor
	.type	FbpFileInfo_setBackgroundColor, @function
FbpFileInfo_setBackgroundColor:
.LFB112:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	TextBlock_setBackgroundColor	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	FbpFileInfo_setBackgroundColor, .-FbpFileInfo_setBackgroundColor
	.globl	FbpFileInfo_select
	.type	FbpFileInfo_select, @function
FbpFileInfo_select:
.LFB113:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+200], 0	# this_1(D)->is_selected,
	jne	.L21	#,
	mov	BYTE PTR [rdi+200], 1	# this_1(D)->is_selected,
	mov	esi, 16745561	#,
	call	TextBlock_setBackgroundColor	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9733_3->vtable, D.9733_3->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9734_4 + 8B], MEM[(const void * *)D.9734_4 + 8B]
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9736_6].refresh
.L21:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	FbpFileInfo_select, .-FbpFileInfo_select
	.globl	FbpFileInfo_unselect
	.type	FbpFileInfo_unselect, @function
FbpFileInfo_unselect:
.LFB114:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+200], 0	# this_1(D)->is_selected,
	je	.L24	#,
	mov	BYTE PTR [rdi+200], 0	# this_1(D)->is_selected,
	mov	esi, 16774321	#,
	call	TextBlock_setBackgroundColor	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9724_3->vtable, D.9724_3->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9725_4 + 8B], MEM[(const void * *)D.9725_4 + 8B]
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9727_6].refresh
.L24:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	FbpFileInfo_unselect, .-FbpFileInfo_unselect
	.globl	FbpFileInfo_arraySort
	.type	FbpFileInfo_arraySort, @function
FbpFileInfo_arraySort:
.LFB117:
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
	mov	r12, rdi	# fileInfoArray, fileInfoArray
	mov	ebp, esi	# fsize, fsize
	lea	r14d, [rsi-1]	# fcount,
	mov	r15d, r14d	# D.9695, fcount
	lea	r13, [rdi+208]	# D.9696,
	mov	ecx, OFFSET FLAT:FbpFileInfo_cmpIsDir	#,
	mov	edx, 208	#,
	mov	rsi, r15	#, D.9695
	mov	rdi, r13	#, D.9696
	call	qsort	#
	cmp	ebp, 1	# fsize,
	jbe	.L28	#,
	cmp	BYTE PTR [r12+409], 0	# MEM[(struct FbpFileInfo *)fileInfoArray_5(D) + 208B].is_directory,
	je	.L28	#,
	mov	rax, r12	# ivtmp.39, fileInfoArray
	mov	ebx, 1	# i,
.L29:
	add	ebx, 1	# i,
	cmp	ebx, ebp	# i, fsize
	je	.L28	#,
	add	rax, 208	# ivtmp.39,
	cmp	BYTE PTR [rax+409], 0	# MEM[base: D.9867_32, offset: 409B],
	jne	.L29	#,
	cmp	ebp, ebx	# fsize, i
	je	.L28	#,
	cmp	ebx, 1	# i,
	jne	.L30	#,
.L28:
	mov	ecx, OFFSET FLAT:FbpFileInfo_cmpName	#,
	mov	edx, 208	#,
	mov	rsi, r15	#, D.9695
	mov	rdi, r13	#, D.9696
	call	qsort	#
	jmp	.L27	#
.L30:
	lea	eax, [rbx-1]	# dir_count,
	sub	r14d, eax	# file_count, dir_count
	mov	esi, eax	# dir_count, dir_count
	mov	ecx, OFFSET FLAT:FbpFileInfo_cmpName	#,
	mov	edx, 208	#,
	mov	rdi, r13	#, D.9696
	call	qsort	#
	mov	esi, r14d	# file_count, file_count
	mov	ebx, ebx	# i, i
	lea	rax, [rbx+rbx*2]	# tmp110,
	lea	rdi, [rbx+rax*4]	# tmp112,
	sal	rdi, 4	# tmp113,
	add	rdi, r12	# tmp114, fileInfoArray
	mov	ecx, OFFSET FLAT:FbpFileInfo_cmpName	#,
	mov	edx, 208	#,
	call	qsort	#
.L27:
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
.LFE117:
	.size	FbpFileInfo_arraySort, .-FbpFileInfo_arraySort
	.globl	FbpFileInfo_arrayUpdateIds
	.type	FbpFileInfo_arrayUpdateIds, @function
FbpFileInfo_arrayUpdateIds:
.LFB118:
	.cfi_startproc
	test	esi, esi	# fsize
	je	.L35	#,
	mov	eax, 0	# i,
.L37:
	mov	DWORD PTR [rdi+152], eax	# MEM[base: D.9875_17, offset: 152B], i
	add	eax, 1	# i,
	add	rdi, 208	# ivtmp.47,
	cmp	eax, esi	# i, fsize
	jne	.L37	#,
.L35:
	rep
	ret
	.cfi_endproc
.LFE118:
	.size	FbpFileInfo_arrayUpdateIds, .-FbpFileInfo_arrayUpdateIds
	.section	.rodata.str1.1
.LC3:
	.string	"%s: Debug list:\n"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"   Widget(%s) @ %p [%u/%u] id=%u filename=%s\n"
	.text
	.globl	FbpFileInfo_arrayShow
	.type	FbpFileInfo_arrayShow, @function
FbpFileInfo_arrayShow:
.LFB119:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 80
	mov	rbx, rdi	# fileInfoArray, fileInfoArray
	mov	r12d, esi	# fsize, fsize
	mov	r13, rdx	# file, file
	mov	ecx, OFFSET FLAT:__FUNCTION__.9648	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, file
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r12d, r12d	# fsize
	je	.L39	#,
	mov	ebp, 0	# i,
.L41:
	mov	rax, QWORD PTR [rbx]	# MEM[base: wt_8, offset: 0B], MEM[base: wt_8, offset: 0B]
	mov	rcx, QWORD PTR [rax+8]	# D.9690_11->name, D.9690_11->name
	mov	rax, QWORD PTR [rbx+168]	# MEM[base: wt_8, offset: 168B], MEM[base: wt_8, offset: 168B]
	mov	QWORD PTR [rsp+16], rax	#, MEM[base: wt_8, offset: 168B]
	mov	eax, DWORD PTR [rbx+152]	# MEM[base: wt_8, offset: 152B], MEM[base: wt_8, offset: 152B]
	mov	DWORD PTR [rsp+8], eax	#, MEM[base: wt_8, offset: 152B]
	mov	DWORD PTR [rsp], r12d	#, fsize
	mov	r9d, ebp	#, i
	mov	r8, rbx	#, ivtmp.54
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, file
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	ebp, 1	# i,
	add	rbx, 208	# ivtmp.54,
	cmp	ebp, r12d	# i, fsize
	jne	.L41	#,
.L39:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 40
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE119:
	.size	FbpFileInfo_arrayShow, .-FbpFileInfo_arrayShow
	.section	.rodata.str1.1
.LC5:
	.string	"FbpFileInfo.c"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"%s: Failed to reallocate array(%p) to size %u items [%s]\n"
	.text
	.globl	FbpFileInfo_arrayRealloc
	.type	FbpFileInfo_arrayRealloc, @function
FbpFileInfo_arrayRealloc:
.LFB120:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbp, rdi	# fileInfoArray, fileInfoArray
	mov	r12d, esi	# fsize, fsize
	mov	eax, esi	# fsize, fsize
	lea	rdx, [rax+rax*2]	# tmp72,
	lea	rsi, [rax+rdx*4]	# tmp74,
	sal	rsi, 4	# tmp75,
	mov	ecx, 155	#,
	mov	edx, OFFSET FLAT:.LC5	#,
	call	wrealloc	#
	mov	rbx, rax	# newFileInfoArray,
	test	rax, rax	# newFileInfoArray
	jne	.L45	#,
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.9678_6
	call	strerror	#
	mov	QWORD PTR [rsp], rax	#, D.9680
	mov	r9d, r12d	#, fsize
	mov	r8, rbp	#, fileInfoArray
	mov	ecx, OFFSET FLAT:__FUNCTION__.9657	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L45:
	mov	rax, rbx	#, newFileInfoArray
	mov	rbx, QWORD PTR [rsp+16]	#,
	mov	rbp, QWORD PTR [rsp+24]	#,
	mov	r12, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE120:
	.size	FbpFileInfo_arrayRealloc, .-FbpFileInfo_arrayRealloc
	.globl	FbpFileInfo_arrayDelete
	.type	FbpFileInfo_arrayDelete, @function
FbpFileInfo_arrayDelete:
.LFB121:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rbx	#,
	mov	QWORD PTR [rsp-32], rbp	#,
	mov	QWORD PTR [rsp-24], r12	#,
	mov	QWORD PTR [rsp-16], r13	#,
	mov	QWORD PTR [rsp-8], r14	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	mov	r13, rdi	# p_fileInfoArray, p_fileInfoArray
	mov	r14d, edx	# del_array, del_array
	mov	r12, QWORD PTR [rdi]	# fileInfoArray, *p_fileInfoArray_2(D)
	test	esi, esi	# fsize
	je	.L48	#,
	mov	rbx, r12	# ivtmp.62, fileInfoArray
	sub	esi, 1	# tmp73,
	lea	rax, [rsi+rsi*2]	# tmp76,
	lea	rax, [rsi+rax*4]	# tmp78,
	sal	rax, 4	# tmp79,
	lea	rbp, [r12+208+rax]	# D.9904,
.L49:
	mov	rdi, rbx	#, ivtmp.62
	call	delete	#
	add	rbx, 208	# ivtmp.62,
	cmp	rbx, rbp	# ivtmp.62, D.9904
	jne	.L49	#,
.L48:
	test	r14b, r14b	# del_array
	je	.L47	#,
	mov	edx, 173	#,
	mov	esi, OFFSET FLAT:.LC5	#,
	mov	rdi, r12	#, fileInfoArray
	call	wfree	#
	mov	QWORD PTR [r13+0], 0	# *p_fileInfoArray_2(D),
.L47:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE121:
	.size	FbpFileInfo_arrayDelete, .-FbpFileInfo_arrayDelete
	.globl	FbpFileInfo_class
	.data
	.align 8
	.type	FbpFileInfo_class, @object
	.size	FbpFileInfo_class, 8
FbpFileInfo_class:
	.quad	type
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9573, @object
	.size	__FUNCTION__.9573, 21
__FUNCTION__.9573:
	.string	"FbpFileInfo_vdestroy"
	.section	.rodata.str1.1
.LC7:
	.string	"FbpFileInfo"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	208
# name:
	.quad	.LC7
# vtable:
	.quad	vtable
	.local	str_id.9577
	.comm	str_id.9577,4121,32
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9587, @object
	.size	__FUNCTION__.9587, 16
__FUNCTION__.9587:
	.string	"FbpFileInfo_new"
	.align 16
	.type	__FUNCTION__.9648, @object
	.size	__FUNCTION__.9648, 22
__FUNCTION__.9648:
	.string	"FbpFileInfo_arrayShow"
	.align 16
	.type	__FUNCTION__.9657, @object
	.size	__FUNCTION__.9657, 25
__FUNCTION__.9657:
	.string	"FbpFileInfo_arrayRealloc"
	.data
	.align 16
	.type	vtable, @object
	.size	vtable, 16
vtable:
	.quad	override_coIObject
	.quad	override_IWidget
	.section	.rodata
	.align 16
	.type	override_coIObject, @object
	.size	override_coIObject, 16
override_coIObject:
# destroy:
	.quad	FbpFileInfo_vdestroy
# toString:
	.quad	FbpFileInfo_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	TextBlock_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
