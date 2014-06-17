	.file	"coError.c"
	.intel_syntax noprefix
# GNU C (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) version 4.7.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.7.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
# warning: GMP header version 5.1.2 differs from library version 5.1.3.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
# coError.c -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/asm/coError.asm
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

	.section	.rodata
.LC0:
	.string	"CO_ERR_NO_ERROR"
.LC1:
	.string	"CO_ERR_INTRO_FAILED"
.LC2:
	.string	"CO_ERR_NULL_THIS_POINTER"
.LC3:
	.string	"CO_ERR_EXIT_REQUESTED"
.LC4:
	.string	"CO_ERR_NEW_FAILED"
.LC5:
	.string	"CO_ERR_BAD_ALLOC"
.LC6:
	.string	"CO_ERR_BAD_PATH"
.LC7:
	.string	"CO_ERR_CANNOT_OPEN_FILE"
.LC8:
	.string	"CO_ERR_CANNOT_SEEK_FILE"
.LC9:
	.string	"CO_ERR_CANNOT_GET_FILE_SIZE"
.LC10:
	.string	"CO_ERR_FILE_READ_FAILED"
.LC11:
	.string	"CO_ERR_PARENT_BAD_OR_NULL"
.LC12:
	.string	"CO_ERR_CHILD_BAD_OR_NULL"
.LC13:
	.string	"CO_ERR_SURFACE_NULL"
.LC14:
	.string	"CO_ERR_SURFACE_PIXELS_NULL"
.LC15:
	.string	"CO_ERR_SURFACE_FORMAT_NULL"
.LC16:
	.string	"CO_ERR_IS_DESTROYED"
	.align 8
.LC17:
	.string	"CO_ERR_ARRAY_GROW_ZERO_DEF_SIZE"
	.align 8
.LC18:
	.string	"CO_ERR_ARRAY_GROW_INTRO_FAILED"
	.align 8
.LC19:
	.string	"CO_ERR_ARRAY_GROW_DEF_SIZE_ABOVE_MAX"
	.align 8
.LC20:
	.string	"CO_ERR_ARRAY_GROW_EXCEED_MAX_SIZE"
.LC21:
	.string	"CO_ERR_ARRAY_GROW_BAD_CALLOC"
.LC22:
	.string	"CO_ERR_ARRAY_GROW_BAD_REALLOC"
.LC23:
	.string	"CO_ERR_ARRAY_GROW_BAD_FLAG"
	.align 8
.LC24:
	.string	"CO_ERR_ARRAY_GROW_LAST_IND_ABOVE_SIZE"
	.align 8
.LC25:
	.string	"CO_ERR_ARRAY_GROW_NULL_RESULT_ARRAY"
.LC26:
	.string	"CO_ERR_INDEX_OUT_OF_RANGE"
	.align 8
.LC27:
	.string	"CO_ERR_CALLBACK_FUNCTION_NOT_FOUND"
	.align 8
.LC28:
	.string	"CO_ERR_CALLBACK_ARRAY_NOT_EXIST"
	.align 8
.LC29:
	.string	"CO_ERR_SETWIDGETTOP__passed_null_widget"
	.align 8
.LC30:
	.string	"CO_ERR_SETWIDGETTOP__have_no_widgets"
	.align 8
.LC31:
	.string	"CO_ERR_SETWIDGETTOP__screen_not_contain_widget"
	.align 8
.LC32:
	.string	"CO_ERR_SETWIDGETTOP__screen_not_contain_widget_2"
	.align 8
.LC33:
	.string	"CO_ERR_OBJECT_failed_to_alloc_objlist"
	.align 8
.LC34:
	.string	"CO_ERR_OBJECT_failed_to_create_mutex"
.LC35:
	.string	"CO_ERR_SDL__IMG_Load"
.LC36:
	.string	"CO_ERR_SDL__zoomSurface"
.LC37:
	.string	"CO_ERR_SDL__ConvertSurface"
.LC38:
	.string	"CO_ERR_SDL__CreateRGBSurface"
.LC39:
	.string	"CO_ERR_SDL__TTF_SizeUTF8"
	.align 8
.LC40:
	.string	"CO_ERR_SDL__TTF_RenderUTF8_Solid"
.LC41:
	.string	"CO_ERR_SDL__FillRect"
.LC42:
	.string	"CO_ERR_SDL__BlitSurface"
.LC43:
	.string	"CO_ERR_SDL__SDL_Init"
.LC44:
	.string	"CO_ERR_SDL__FE_Init"
.LC45:
	.string	"CO_ERR_SDL__SDL_SetVideoMode"
.LC46:
	.string	"CO_ERR_SDL__TTF_Init"
.LC47:
	.string	"CO_ERR_SDL__IMG_Init"
.LC48:
	.string	"CO_ERR_MUTEX_FAILED"
.LC49:
	.string	"CO_ERR_MEMORY_LEAKS_DETECTED"
	.align 8
.LC50:
	.string	"CO_ERR_FAILED_ALLOC_MEMORY_INFO"
	.align 8
.LC51:
	.string	"CO_ERR_MEMORY_PASSED_NULL_INFO"
.LC52:
	.string	"CO_ERR_DELETED"
.LC53:
	.string	"CO_ERR_NOT_INITED"
	.data
	.align 32
	.type	names, @object
	.size	names, 432
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
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.section	.rodata
	.align 8
	.type	names_size, @object
	.size	names_size, 8
names_size:
	.quad	54
	.text
	.globl	coGetStringError
	.type	coGetStringError, @function
coGetStringError:
.LFB2:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi	# co_err, co_err
	mov	edx, DWORD PTR [rbp-4]	# D.2915, co_err
	mov	rax, QWORD PTR names_size[rip]	# names_size.1, names_size
	cmp	rdx, rax	# D.2915, names_size.1
	jae	.L2	#,
	mov	eax, DWORD PTR [rbp-4]	# tmp64, co_err
	mov	rax, QWORD PTR names[0+rax*8]	# iftmp.0, names
	jmp	.L3	#
.L2:
	mov	eax, 0	# iftmp.0,
.L3:
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coGetStringError, .-coGetStringError
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
