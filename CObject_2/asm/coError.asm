	.file	"coError.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I include src/coError.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip asm/coError.asm -O1 -Wall -fverbose-asm
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"unknown error code"
	.text
	.globl	coGetStringError
	.type	coGetStringError, @function
coGetStringError:
.LFB60:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC0	# D.3481,
	cmp	edi, 30	# co_err,
	ja	.L2	#,
	mov	edi, edi	# co_err, co_err
	mov	rax, QWORD PTR names[0+rdi*8]	# D.3481, names
.L2:
	rep
	ret
	.cfi_endproc
.LFE60:
	.size	coGetStringError, .-coGetStringError
	.section	.rodata.str1.1
.LC1:
	.string	"CO_ERR_NO_ERROR=0"
.LC2:
	.string	"CO_ERR_INTRO_FAILED"
.LC3:
	.string	"CO_ERR_NULL_THIS_POINTER"
.LC4:
	.string	"CO_ERR_EXIT_REQUESTED"
.LC5:
	.string	"CO_ERR_NEW_FAILED"
.LC6:
	.string	"CO_ERR_BAD_ALLOC"
.LC7:
	.string	"CO_ERR_BAD_PATH"
.LC8:
	.string	"CO_ERR_CANNOT_OPEN_FILE"
.LC9:
	.string	"CO_ERR_CANNOT_SEEK_FILE"
.LC10:
	.string	"CO_ERR_CANNOT_GET_FILE_SIZE"
.LC11:
	.string	"CO_ERR_FILE_READ_FAILED"
.LC12:
	.string	"CO_ERR_PARENT_BAD_OR_NULL"
.LC13:
	.string	"CO_ERR_CHILD_BAD_OR_NULL"
.LC14:
	.string	"CO_ERR_IS_DESTROYED"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC15:
	.string	"CO_ERR_ARRAY_GROW_ZERO_DEF_SIZE"
	.align 8
.LC16:
	.string	"CO_ERR_ARRAY_GROW_INTRO_FAILED"
	.align 8
.LC17:
	.string	"CO_ERR_ARRAY_GROW_DEF_SIZE_ABOVE_MAX"
	.align 8
.LC18:
	.string	"CO_ERR_ARRAY_GROW_EXCEED_MAX_SIZE"
	.section	.rodata.str1.1
.LC19:
	.string	"CO_ERR_ARRAY_GROW_BAD_CALLOC"
.LC20:
	.string	"CO_ERR_ARRAY_GROW_BAD_REALLOC"
.LC21:
	.string	"CO_ERR_ARRAY_GROW_BAD_FLAG"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"CO_ERR_ARRAY_GROW_LAST_IND_ABOVE_SIZE"
	.align 8
.LC23:
	.string	"CO_ERR_ARRAY_GROW_NULL_RESULT_ARRAY"
	.section	.rodata.str1.1
.LC24:
	.string	"CO_ERR_INDEX_OUT_OF_RANGE"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"CO_ERR_OBJECT_failed_to_alloc_objlist"
	.section	.rodata.str1.1
.LC26:
	.string	"CO_ERR_MUTEX_FAILED"
.LC27:
	.string	"CO_ERR_MEMORY_LEAKS_DETECTED"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"CO_ERR_FAILED_ALLOC_MEMORY_INFO"
	.align 8
.LC29:
	.string	"CO_ERR_MEMORY_PASSED_NULL_INFO"
	.section	.rodata.str1.1
.LC30:
	.string	"CO_ERR_DELETED"
.LC31:
	.string	"CO_ERR_NOT_INITED"
	.section	.rodata
	.align 32
	.type	names, @object
	.size	names, 248
names:
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
