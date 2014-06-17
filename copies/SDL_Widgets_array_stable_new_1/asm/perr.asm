	.file	"perr.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT perr.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/perr.asm
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
	.globl	perr_getName
	.type	perr_getName, @function
perr_getName:
.LFB14:
	.cfi_startproc
	cmp	edi, 33	# err_code,
	ja	.L3	#,
	mov	edi, edi	# err_code, err_code
	mov	rax, QWORD PTR names[0+rdi*8]	# D.2565, names
	ret
.L3:
	mov	eax, 0	# D.2565,
	ret
	.cfi_endproc
.LFE14:
	.size	perr_getName, .-perr_getName
	.globl	names_size
	.section	.rodata
	.align 8
	.type	names_size, @object
	.size	names_size, 8
names_size:
	.quad	34
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"E_NO_ERROR"
.LC1:
	.string	"E_INTRO_FAILED"
.LC2:
	.string	"E_NULL_THIS_POINTER"
.LC3:
	.string	"E_EXIT_REQUESTED"
.LC4:
	.string	"E_BAD_ALLOC"
.LC5:
	.string	"E_BAD_PATH"
.LC6:
	.string	"E_PARENT_BAD_OR_NULL"
.LC7:
	.string	"E_CHILD_BAD_OR_NULL"
.LC8:
	.string	"E_SURFACE_NULL"
.LC9:
	.string	"E_SURFACE_PIXELS_NULL"
.LC10:
	.string	"E_SURFACE_FORMAT_NULL"
.LC11:
	.string	"E_IS_DESTROYED"
.LC12:
	.string	"E_ARRAY_GROW_ZERO_DEF_SIZE"
.LC13:
	.string	"E_ARRAY_GROW_INTRO_FAILED"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC14:
	.string	"E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX"
	.section	.rodata.str1.1
.LC15:
	.string	"E_ARRAY_GROW_EXCEED_MAX_SIZE"
.LC16:
	.string	"E_ARRAY_GROW_BAD_ALLOC"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"E_ARRAY_GROW_LAST_IND_ABOVE_SIZE"
	.align 8
.LC18:
	.string	"E_ARRAY_GROW_NULL_RESULT_ARRAY"
	.section	.rodata.str1.1
.LC19:
	.string	"E_INDEX_OUT_OF_RANGE"
.LC20:
	.string	"E_CALLBACK_FUNCTION_NOT_FOUND"
.LC21:
	.string	"E_CALLBACK_ARRAY_NOT_EXIST"
.LC22:
	.string	"E_SDL__IMG_Load"
.LC23:
	.string	"E_SDL__zoomSurface"
.LC24:
	.string	"E_SDL__ConvertSurface"
.LC25:
	.string	"E_SDL__CreateRGBSurface"
.LC26:
	.string	"E_SDL__TTF_SizeUTF8"
.LC27:
	.string	"E_SDL__TTF_RenderUTF8_Solid"
.LC28:
	.string	"E_SDL__FillRect"
.LC29:
	.string	"E_SDL__BlitSurface"
.LC30:
	.string	"E_SDL__SDL_Init"
.LC31:
	.string	"E_SDL__SDL_SetVideoMode"
.LC32:
	.string	"E_SDL__TTF_Init"
.LC33:
	.string	"E_SDL__IMG_Init"
	.section	.rodata
	.align 32
	.type	names, @object
	.size	names, 272
names:
	.quad	.LC0
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
	.quad	.LC32
	.quad	.LC33
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
