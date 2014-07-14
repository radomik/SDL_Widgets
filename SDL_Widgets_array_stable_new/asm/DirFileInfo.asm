	.file	"DirFileInfo.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT DirFileInfo.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/DirFileInfo.asm
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
	.globl	DirFileInfo_vdestroy
	.type	DirFileInfo_vdestroy, @function
DirFileInfo_vdestroy:
.LFB109:
	.cfi_startproc
	mov	QWORD PTR [rdi+8], 0	# MEM[(struct DirFileInfo *)vthis_1(D)].info,
	ret
	.cfi_endproc
.LFE109:
	.size	DirFileInfo_vdestroy, .-DirFileInfo_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"%20s: Failed to get real path of file: '%s' [%s]\n"
	.align 8
.LC1:
	.string	"%20s: Failed to stat on symlink target: symlink='%s' target='%s' [%s]\n"
	.align 8
.LC2:
	.string	"%20s: Failed to execute stat on file: '%s' [%s]\n"
	.text
	.globl	DirFileInfo_stat
	.type	DirFileInfo_stat, @function
DirFileInfo_stat:
.LFB107:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 4256	#,
	.cfi_def_cfa_offset 4272
	mov	rbx, rdi	# this, this
	mov	rsi, QWORD PTR [rdi+8]	# D.9409, MEM[(const struct DirFileInfo *)this_3(D)].info
	test	rsi, rsi	# D.9409
	je	.L17	#,
	mov	BYTE PTR [rdi+25], 0	# this_3(D)->is_directory,
	mov	BYTE PTR [rdi+26], 0	# this_3(D)->is_file,
	mov	BYTE PTR [rdi+28], 0	# this_3(D)->is_symlink,
	mov	BYTE PTR [rdi+16], 0	# this_3(D)->ext,
	add	rsi, 19	# tmp92,
	lea	rdx, [rsp+4112]	#,
	mov	edi, 1	#,
	call	__xstat	#
	test	eax, eax	# D.9417
	jne	.L4	#,
	mov	eax, DWORD PTR [rsp+4136]	# D.9349, st.st_mode
	and	eax, 61440	# D.9349,
	cmp	eax, 16384	# D.9349,
	jne	.L5	#,
	mov	BYTE PTR [rbx+25], 1	# this_3(D)->is_directory,
	mov	eax, 1	# D.9343,
	jmp	.L3	#
.L5:
	cmp	eax, 32768	# D.9349,
	jne	.L6	#,
	mov	BYTE PTR [rbx+26], 1	# this_3(D)->is_file,
	mov	eax, 1	# D.9343,
	jmp	.L3	#
.L6:
	cmp	eax, 40960	# D.9349,
	jne	.L7	#,
	mov	BYTE PTR [rbx+28], 1	# this_3(D)->is_symlink,
	mov	rax, QWORD PTR [rbx+8]	# D.9421, MEM[(const struct DirFileInfo *)this_3(D)].info
	lea	rdi, [rax+19]	# tmp100,
	test	rax, rax	# D.9421
	mov	eax, 0	# tmp101,
	cmove	rdi, rax	# tmp100,, D.9420, tmp101
	mov	edx, 4096	#,
	lea	rsi, [rsp+16]	#,
	call	__realpath_chk	#
	test	rax, rax	# D.9425
	jne	.L9	#,
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.9360_18
	call	strerror	#
	mov	r9, rax	# D.9362,
	mov	rdx, QWORD PTR [rbx+8]	# D.9431, MEM[(const struct DirFileInfo *)this_3(D)].info
	lea	r8, [rdx+19]	# tmp102,
	test	rdx, rdx	# D.9431
	mov	eax, 0	# tmp103,
	cmove	r8, rax	# tmp102,, D.9430, tmp103
	mov	ecx, OFFSET FLAT:__FUNCTION__.9268	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	eax, 0	# D.9343,
	jmp	.L3	#
.L9:
	lea	rdx, [rsp+4112]	#,
	lea	rsi, [rsp+16]	#,
	mov	edi, 1	#,
	call	__xstat	#
	test	eax, eax	# D.9439
	jne	.L12	#,
	mov	eax, DWORD PTR [rsp+4136]	# D.9349, st.st_mode
	and	eax, 61440	# D.9349,
	cmp	eax, 16384	# D.9349,
	jne	.L13	#,
	mov	BYTE PTR [rbx+25], 1	# this_3(D)->is_directory,
	mov	eax, 1	# D.9343,
	jmp	.L3	#
.L13:
	cmp	eax, 32768	# D.9349,
	jne	.L14	#,
	mov	BYTE PTR [rbx+26], 1	# this_3(D)->is_file,
	mov	eax, 1	# D.9343,
	jmp	.L3	#
.L14:
	mov	BYTE PTR [rbx+27], 1	# this_3(D)->is_unknown,
	mov	eax, 1	# D.9343,
	jmp	.L3	#
.L12:
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.9360_32
	call	strerror	#
	mov	rdx, QWORD PTR [rbx+8]	# D.9443, MEM[(const struct DirFileInfo *)this_3(D)].info
	lea	r8, [rdx+19]	# tmp104,
	test	rdx, rdx	# D.9443
	mov	edx, 0	# tmp105,
	cmove	r8, rdx	# tmp104,, D.9442, tmp105
	mov	QWORD PTR [rsp], rax	#, D.9372
	lea	r9, [rsp+16]	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9268	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9343,
	jmp	.L3	#
.L7:
	mov	BYTE PTR [rbx+27], 1	# this_3(D)->is_unknown,
	mov	eax, 1	# D.9343,
	jmp	.L3	#
.L4:
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.9360_39
	call	strerror	#
	mov	r9, rax	# D.9374,
	mov	rdx, QWORD PTR [rbx+8]	# D.9451, MEM[(const struct DirFileInfo *)this_3(D)].info
	lea	r8, [rdx+19]	# tmp106,
	test	rdx, rdx	# D.9451
	mov	eax, 0	# tmp107,
	cmove	r8, rax	# tmp106,, D.9450, tmp107
	mov	ecx, OFFSET FLAT:__FUNCTION__.9268	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	eax, 0	# D.9343,
	jmp	.L3	#
.L17:
	mov	eax, 0	# D.9343,
.L3:
	add	rsp, 4256	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	DirFileInfo_stat, .-DirFileInfo_stat
	.globl	DirFileInfo_new
	.type	DirFileInfo_new, @function
DirFileInfo_new:
.LFB108:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L24	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9272	#,
	call	Static_nullThis2	#
	jmp	.L25	#
.L24:
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	QWORD PTR [rbx+8], 0	# this_2(D)->info,
	mov	BYTE PTR [rbx+16], 0	# this_2(D)->ext,
	mov	BYTE PTR [rbx+25], 0	# this_2(D)->is_directory,
	mov	BYTE PTR [rbx+26], 0	# this_2(D)->is_file,
	mov	BYTE PTR [rbx+28], 0	# this_2(D)->is_symlink,
.L25:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	DirFileInfo_new, .-DirFileInfo_new
	.globl	DirFileInfo_isValid
	.type	DirFileInfo_isValid, @function
DirFileInfo_isValid:
.LFB110:
	.cfi_startproc
	cmp	QWORD PTR [rdi+8], 0	# this_1(D)->info,
	setne	al	#, tmp65
	ret
	.cfi_endproc
.LFE110:
	.size	DirFileInfo_isValid, .-DirFileInfo_isValid
	.globl	DirFileInfo_setInfo
	.type	DirFileInfo_setInfo, @function
DirFileInfo_setInfo:
.LFB111:
	.cfi_startproc
	mov	QWORD PTR [rdi+8], rsi	# this_1(D)->info, info
	test	dl, dl	# exec_stat
	je	.L32	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	DirFileInfo_stat	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L32:
	rep
	ret
	.cfi_endproc
.LFE111:
	.size	DirFileInfo_setInfo, .-DirFileInfo_setInfo
	.globl	DirFileInfo_getName
	.type	DirFileInfo_getName, @function
DirFileInfo_getName:
.LFB112:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+8]	# D.9325, this_2(D)->info
	test	rax, rax	# D.9325
	je	.L35	#,
	add	rax, 19	# D.9323,
	ret
.L35:
	mov	eax, 0	# D.9323,
	ret
	.cfi_endproc
.LFE112:
	.size	DirFileInfo_getName, .-DirFileInfo_getName
	.globl	DirFileInfo_isHidden
	.type	DirFileInfo_isHidden, @function
DirFileInfo_isHidden:
.LFB113:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+8]	# D.9318, this_2(D)->info
	test	rax, rax	# D.9318
	je	.L38	#,
	cmp	BYTE PTR [rax+19], 46	# D.9318_3->d_name,
	sete	al	#, iftmp.1
	movzx	eax, al	# iftmp.1, iftmp.1
	ret
.L38:
	mov	eax, 0	# iftmp.1,
	ret
	.cfi_endproc
.LFE113:
	.size	DirFileInfo_isHidden, .-DirFileInfo_isHidden
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"%20s: Failed to get extension of file: '%s'\n"
	.text
	.globl	DirFileInfo_checkExt
	.type	DirFileInfo_checkExt, @function
DirFileInfo_checkExt:
.LFB114:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# this, this
	mov	eax, 0	# D.9301,
	cmp	BYTE PTR [rdi+26], 0	# this_2(D)->is_file,
	je	.L40	#,
	mov	rax, QWORD PTR [rdi+8]	# D.9466, MEM[(const struct DirFileInfo *)this_2(D)].info
	test	rax, rax	# D.9466
	je	.L44	#,
	mov	rbp, rsi	# file_mask, file_mask
	lea	r12, [rdi+16]	# D.9302,
	lea	rdi, [rax+19]	# tmp71,
	mov	rsi, r12	#, D.9302
	call	File_getExtension	#
	test	al, al	# D.9304
	jne	.L41	#,
	mov	rax, QWORD PTR [rbx+8]	# D.9474, MEM[(const struct DirFileInfo *)this_2(D)].info
	lea	r8, [rax+19]	# tmp73,
	test	rax, rax	# D.9474
	mov	eax, 0	# tmp74,
	cmove	r8, rax	# tmp73,, D.9473, tmp74
	mov	ecx, OFFSET FLAT:__FUNCTION__.9294	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
	mov	eax, 0	# D.9301,
	jmp	.L40	#
.L41:
	mov	eax, 0	# D.9301,
	test	rbp, rbp	# file_mask
	je	.L40	#,
	mov	rsi, rbp	#, file_mask
	mov	rdi, r12	#, D.9302
	call	File_onExtMask	#
	jmp	.L40	#
.L44:
	mov	eax, 0	# D.9301,
.L40:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	DirFileInfo_checkExt, .-DirFileInfo_checkExt
	.globl	DirFileInfo_class
	.data
	.align 8
	.type	DirFileInfo_class, @object
	.size	DirFileInfo_class, 8
DirFileInfo_class:
	.quad	type
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9268, @object
	.size	__FUNCTION__.9268, 17
__FUNCTION__.9268:
	.string	"DirFileInfo_stat"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"DirFileInfo"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	32
# name:
	.quad	.LC4
# vtable:
	.quad	vtable
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9272, @object
	.size	__FUNCTION__.9272, 16
__FUNCTION__.9272:
	.string	"DirFileInfo_new"
	.align 16
	.type	__FUNCTION__.9294, @object
	.size	__FUNCTION__.9294, 21
__FUNCTION__.9294:
	.string	"DirFileInfo_checkExt"
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
	.quad	DirFileInfo_vdestroy
# toString:
	.quad	coObject_coIObject_vtoString
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
