	.file	"Directory.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Directory.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Directory.asm
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
	.globl	Directory_new
	.type	Directory_new, @function
Directory_new:
.LFB107:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L2	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9286	#,
	call	Static_nullThis2	#
	jmp	.L3	#
.L2:
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	QWORD PTR [rbx+8], 0	# this_2(D)->d,
	mov	QWORD PTR [rbx+16], 0	# this_2(D)->dir,
	mov	QWORD PTR [rbx+24], 0	# this_2(D)->path,
.L3:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	Directory_new, .-Directory_new
	.globl	Directory_isOpened
	.type	Directory_isOpened, @function
Directory_isOpened:
.LFB109:
	.cfi_startproc
	cmp	QWORD PTR [rdi+8], 0	# this_1(D)->d,
	setne	al	#, tmp65
	ret
	.cfi_endproc
.LFE109:
	.size	Directory_isOpened, .-Directory_isOpened
	.globl	Directory_close
	.type	Directory_close, @function
Directory_close:
.LFB110:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	rdi, QWORD PTR [rdi+8]	# this_1(D)->d, this_1(D)->d
	call	closedir	#
	mov	QWORD PTR [rbx+8], 0	# this_1(D)->d,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	Directory_close, .-Directory_close
	.globl	Directory_vdestroy
	.type	Directory_vdestroy, @function
Directory_vdestroy:
.LFB108:
	.cfi_startproc
	cmp	QWORD PTR [rdi+8], 0	# MEM[(const struct Directory *)vthis_1(D)].d,
	je	.L12	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Directory_close	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L12:
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	Directory_vdestroy, .-Directory_vdestroy
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%20s: path is NULL\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"%20s: Failed to open directory [%s]\n"
	.text
	.globl	Directory_open
	.type	Directory_open, @function
Directory_open:
.LFB111:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	test	rsi, rsi	# path
	jne	.L14	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9300	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	sil, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9325,
	jmp	.L15	#
.L14:
	mov	rbx, rdi	# this, this
	mov	QWORD PTR [rdi+24], rsi	# this_5(D)->path, path
	cmp	QWORD PTR [rdi+8], 0	# MEM[(const struct Directory *)this_5(D)].d,
	je	.L16	#,
	call	Directory_close	#
.L16:
	mov	rdi, QWORD PTR [rbx+24]	# this_5(D)->path, this_5(D)->path
	call	opendir	#
	mov	rdx, rax	# D.9330,
	mov	QWORD PTR [rbx+8], rax	# this_5(D)->d, D.9330
	mov	eax, 1	# D.9325,
	test	rdx, rdx	# D.9330
	jne	.L15	#,
	call	__errno_location	#
	mov	edi, DWORD PTR [rax]	#, *D.9334_10
	call	strerror	#
	mov	r8, rax	# D.9336,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9300	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9325,
.L15:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	Directory_open, .-Directory_open
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"%20s: Directory is not opened\n"
	.text
	.globl	Directory_getNext
	.type	Directory_getNext, @function
Directory_getNext:
.LFB112:
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
	mov	rdi, QWORD PTR [rdi+8]	# D.9386, MEM[(const struct Directory *)this_2(D)].d
	test	rdi, rdi	# D.9386
	jne	.L20	#,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9306	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9312,
	jmp	.L21	#
.L20:
	mov	rbp, rsi	# finfo, finfo
	mov	r12d, edx	# exec_stat, exec_stat
	call	readdir	#
	mov	rsi, rax	# D.9314,
	mov	QWORD PTR [rbx+16], rax	# this_2(D)->dir, D.9314
	mov	eax, 0	# D.9312,
	test	rsi, rsi	# D.9314
	je	.L21	#,
	movzx	edx, r12b	# exec_stat, exec_stat
	mov	rdi, rbp	#, finfo
	call	DirFileInfo_setInfo	#
	mov	eax, 1	# D.9312,
.L21:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	Directory_getNext, .-Directory_getNext
	.globl	Directory_class
	.data
	.align 8
	.type	Directory_class, @object
	.size	Directory_class, 8
Directory_class:
	.quad	type
	.section	.rodata
	.type	__FUNCTION__.9286, @object
	.size	__FUNCTION__.9286, 14
__FUNCTION__.9286:
	.string	"Directory_new"
	.section	.rodata.str1.1
.LC3:
	.string	"Directory"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	32
# name:
	.quad	.LC3
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.9300, @object
	.size	__FUNCTION__.9300, 15
__FUNCTION__.9300:
	.string	"Directory_open"
	.align 16
	.type	__FUNCTION__.9306, @object
	.size	__FUNCTION__.9306, 18
__FUNCTION__.9306:
	.string	"Directory_getNext"
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
	.quad	Directory_vdestroy
# toString:
	.quad	coObject_coIObject_vtoString
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
