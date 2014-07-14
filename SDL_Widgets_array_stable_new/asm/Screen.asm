	.file	"Screen.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Screen.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Screen.asm
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

	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"%s: BASE_SURFACE_WIDTH(%hu), BASE_SURFACE_HEIGHT(%hu), BASE_SURFACE->w(%hu), BASE_SURFACE->h(%hu)\n"
	.align 8
.LC1:
	.string	"%s: From vinfo: width: %hu, height: %hu\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%s: sw(%hu), sh(%hu)\n"
	.text
	.type	Screen_reloadBgWidget, @function
Screen_reloadBgWidget:
.LFB113:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rbx	#,
	mov	QWORD PTR [rsp-32], rbp	#,
	mov	QWORD PTR [rsp-24], r12	#,
	mov	QWORD PTR [rsp-16], r13	#,
	mov	QWORD PTR [rsp-8], r14	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	je	.L1	#,
	mov	rax, QWORD PTR BASE_SURFACE[rip]	# BASE_SURFACE.10, BASE_SURFACE
	test	rax, rax	# BASE_SURFACE.10
	je	.L1	#,
	cmp	QWORD PTR [rdi+32], 0	# this_1(D)->background.bg_widget,
	je	.L1	#,
	movzx	r9d, WORD PTR BASE_SURFACE_HEIGHT[rip]	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT
	movzx	r8d, WORD PTR BASE_SURFACE_WIDTH[rip]	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH
	mov	edx, DWORD PTR [rax+20]	# BASE_SURFACE.10_2->h, BASE_SURFACE.10_2->h
	mov	DWORD PTR [rsp+8], edx	#, BASE_SURFACE.10_2->h
	mov	eax, DWORD PTR [rax+16]	# BASE_SURFACE.10_2->w, BASE_SURFACE.10_2->w
	mov	DWORD PTR [rsp], eax	#, BASE_SURFACE.10_2->w
	mov	ecx, OFFSET FLAT:__FUNCTION__.9570	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR vinfo[rip]	# vinfo.53, vinfo
	test	rax, rax	# vinfo.53
	je	.L9	#,
	movzx	r9d, WORD PTR [rax+20]	# D.9879, vinfo.53_69->current_h
	movzx	r8d, WORD PTR [rax+16]	# D.10213, vinfo.53_69->current_w
	jmp	.L3	#
.L9:
	mov	r9d, 0	# D.9879,
	mov	r8d, 0	# D.10213,
.L3:
	movzx	r8d, r8w	#, D.10213
	mov	ecx, OFFSET FLAT:__FUNCTION__.9570	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR BASE_SURFACE[rip]	# BASE_SURFACE.10, BASE_SURFACE
	mov	r8d, DWORD PTR [rax+16]	# D.9872, BASE_SURFACE.10_18->w
	mov	r13d, r8d	# BASE_SURFACE_WIDTH.14, D.9872
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], r8w	# BASE_SURFACE_WIDTH, D.9872
	mov	r9d, DWORD PTR [rax+20]	# D.9871, BASE_SURFACE.10_18->h
	mov	ebp, r9d	# BASE_SURFACE_HEIGHT.15, D.9871
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], r9w	# BASE_SURFACE_HEIGHT, D.9871
	mov	rax, QWORD PTR [rbx+32]	# D.9868, this_1(D)->background.bg_widget
	movzx	r14d, WORD PTR [rax+100]	# w, D.9868_26->pos.w
	movzx	r12d, WORD PTR [rax+102]	# h, D.9868_26->pos.h
	movzx	r9d, r9w	#, D.9871
	movzx	r8d, r8w	#, D.9872
	mov	ecx, OFFSET FLAT:__FUNCTION__.9570	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	eax, BYTE PTR [rbx+44]	# D.9886, this_1(D)->background.bg_mode
	test	al, al	# D.9886
	jne	.L4	#,
	cmp	bp, r12w	# BASE_SURFACE_HEIGHT.15, h
	jne	.L10	#,
	cmp	r13w, r14w	# BASE_SURFACE_WIDTH.14, w
	je	.L1	#,
.L10:
	movzx	ebp, bp	# BASE_SURFACE_HEIGHT.15, BASE_SURFACE_HEIGHT.15
	cvtsi2sd	xmm1, ebp	# tmp120, BASE_SURFACE_HEIGHT.15
	movzx	r12d, r12w	# h, h
	cvtsi2sd	xmm2, r12d	# tmp122, h
	movzx	r13d, r13w	# BASE_SURFACE_WIDTH.14, BASE_SURFACE_WIDTH.14
	cvtsi2sd	xmm0, r13d	# tmp125, BASE_SURFACE_WIDTH.14
	movzx	r14d, r14w	# w, w
	cvtsi2sd	xmm3, r14d	# tmp127, w
	divsd	xmm0, xmm3	# tmp129, tmp127
	mov	rdi, QWORD PTR [rbx+32]	# this_1(D)->background.bg_widget, this_1(D)->background.bg_widget
	mov	esi, 1	#,
	divsd	xmm1, xmm2	#, tmp122
	call	Widget_scale	#
	mov	rdi, QWORD PTR [rbx+32]	# this_1(D)->background.bg_widget, this_1(D)->background.bg_widget
	mov	edx, 0	#,
	mov	esi, 0	#,
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+45], 0	# this_1(D)->background.fillcolor,
	jmp	.L1	#
.L4:
	cmp	al, 1	# D.9886,
	jne	.L6	#,
	mov	edx, ebp	# tmp132, BASE_SURFACE_HEIGHT.15
	shr	dx	# tmp132
	movzx	edx, dx	# tmp133, tmp132
	mov	esi, r13d	# tmp134, BASE_SURFACE_WIDTH.14
	shr	si	# tmp134
	movzx	esi, si	# tmp135, tmp134
	mov	rdi, QWORD PTR [rbx+32]	# this_1(D)->background.bg_widget, this_1(D)->background.bg_widget
	call	Widget_setCenter	#
.L6:
	cmp	bp, r12w	# BASE_SURFACE_HEIGHT.15, h
	ja	.L11	#,
	cmp	r13w, r14w	# BASE_SURFACE_WIDTH.14, w
	jbe	.L7	#,
.L11:
	mov	BYTE PTR [rbx+45], 1	# this_1(D)->background.fillcolor,
	jmp	.L1	#
.L7:
	mov	BYTE PTR [rbx+45], 0	# this_1(D)->background.fillcolor,
.L1:
	mov	rbx, QWORD PTR [rsp+16]	#,
	mov	rbp, QWORD PTR [rsp+24]	#,
	mov	r12, QWORD PTR [rsp+32]	#,
	mov	r13, QWORD PTR [rsp+40]	#,
	mov	r14, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	Screen_reloadBgWidget, .-Screen_reloadBgWidget
	.section	.rodata.str1.1
.LC3:
	.string	"Screen.c"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Screen_destroy: NOTICE: Ending SDL session.\n"
	.text
	.globl	Screen_vdestroy
	.type	Screen_vdestroy, @function
Screen_vdestroy:
.LFB125:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+160]	# D.10029, MEM[(struct Screen *)vthis_1(D)].callback
	test	rdi, rdi	# D.10029
	je	.L14	#,
	call	delete	#
	mov	edx, 328	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rax	#, D.10032
	call	wfree	#
	mov	QWORD PTR [rbx+160], 0	# MEM[(struct Screen *)vthis_1(D)].callback,
.L14:
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Screen *)vthis_1(D)].widget, MEM[(struct Screen *)vthis_1(D)].widget
	mov	edx, 333	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	call	wfree	#
	mov	QWORD PTR [rbx+48], 0	# MEM[(struct Screen *)vthis_1(D)].widget,
	mov	BYTE PTR [rbx+173], 0	# MEM[(struct Screen *)vthis_1(D)].need_reload,
	mov	eax, DWORD PTR SCREEN_COUNT[rip]	# SCREEN_COUNT.30, SCREEN_COUNT
	sub	eax, 1	# SCREEN_COUNT.30,
	mov	DWORD PTR SCREEN_COUNT[rip], eax	# SCREEN_COUNT, SCREEN_COUNT.30
	test	eax, eax	# SCREEN_COUNT.30
	jne	.L13	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 44	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	mov	edx, 102	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, QWORD PTR BASE_SURFACE[rip]	#, BASE_SURFACE
	call	wSDL_FreeSurface	#
	mov	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], 0	# BASE_SURFACE_FORMAT,
	mov	eax, 0	#,
	call	Static_quit	#
	call	TTF_Quit	#
	call	IMG_Quit	#
	.p2align 4,,5
	call	SDL_Quit	#
.L13:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE125:
	.size	Screen_vdestroy, .-Screen_vdestroy
	.globl	Screen_getWidth
	.type	Screen_getWidth, @function
Screen_getWidth:
.LFB107:
	.cfi_startproc
	mov	rax, QWORD PTR vinfo[rip]	# vinfo.55, vinfo
	test	rax, rax	# vinfo.55
	je	.L19	#,
	movzx	eax, WORD PTR [rax+16]	# D.10156, vinfo.55_2->current_w
	ret
.L19:
	mov	eax, 0	# D.10156,
	ret
	.cfi_endproc
.LFE107:
	.size	Screen_getWidth, .-Screen_getWidth
	.globl	Screen_getHeight
	.type	Screen_getHeight, @function
Screen_getHeight:
.LFB108:
	.cfi_startproc
	mov	rax, QWORD PTR vinfo[rip]	# vinfo.53, vinfo
	test	rax, rax	# vinfo.53
	je	.L22	#,
	movzx	eax, WORD PTR [rax+20]	# D.10148, vinfo.53_2->current_h
	ret
.L22:
	mov	eax, 0	# D.10148,
	ret
	.cfi_endproc
.LFE108:
	.size	Screen_getHeight, .-Screen_getHeight
	.globl	Screen_getBaseSurface
	.type	Screen_getBaseSurface, @function
Screen_getBaseSurface:
.LFB109:
	.cfi_startproc
	mov	rax, QWORD PTR BASE_SURFACE[rip]	#, BASE_SURFACE
	ret
	.cfi_endproc
.LFE109:
	.size	Screen_getBaseSurface, .-Screen_getBaseSurface
	.globl	Screen_getBaseSurfaceFormat
	.type	Screen_getBaseSurfaceFormat, @function
Screen_getBaseSurfaceFormat:
.LFB110:
	.cfi_startproc
	mov	rax, QWORD PTR BASE_SURFACE_FORMAT[rip]	#, BASE_SURFACE_FORMAT
	ret
	.cfi_endproc
.LFE110:
	.size	Screen_getBaseSurfaceFormat, .-Screen_getBaseSurfaceFormat
	.globl	Screen_buttonExitClicked
	.type	Screen_buttonExitClicked, @function
Screen_buttonExitClicked:
.LFB111:
	.cfi_startproc
	mov	BYTE PTR [rsi+168], 1	# screen_1(D)->has_exited,
	ret
	.cfi_endproc
.LFE111:
	.size	Screen_buttonExitClicked, .-Screen_buttonExitClicked
	.globl	Screen_flip
	.type	Screen_flip, @function
Screen_flip:
.LFB112:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rdi, QWORD PTR [rdi+72]	# this_1(D)->screen, this_1(D)->screen
	call	SDL_Flip	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	Screen_flip, .-Screen_flip
	.globl	Screen_setOptions
	.type	Screen_setOptions, @function
Screen_setOptions:
.LFB116:
	.cfi_startproc
	cmp	BYTE PTR [rdi+16], 0	# op_1(D)->fullscreen,
	je	.L29	#,
	mov	DWORD PTR BASE_SURFACE_FLAGS[rip], -1073741823	# BASE_SURFACE_FLAGS,
	movzx	eax, WORD PTR [rdi+12]	# BASE_SURFACE_WIDTH.44, op_1(D)->screen_maxwidth
	test	ax, ax	# BASE_SURFACE_WIDTH.44
	je	.L30	#,
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH.44
	mov	WORD PTR BASE_SURFACE_MAXWIDTH[rip], ax	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_WIDTH.44
	jmp	.L31	#
.L30:
	movzx	eax, WORD PTR BASE_SURFACE_MAXWIDTH[rip]	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_MAXWIDTH
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, BASE_SURFACE_MAXWIDTH
.L31:
	movzx	eax, WORD PTR [rdi+14]	# BASE_SURFACE_HEIGHT.47, op_1(D)->screen_maxheight
	test	ax, ax	# BASE_SURFACE_HEIGHT.47
	je	.L32	#,
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT.47
	mov	WORD PTR BASE_SURFACE_MAXHEIGHT[rip], ax	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_HEIGHT.47
	jmp	.L33	#
.L32:
	movzx	eax, WORD PTR BASE_SURFACE_MAXHEIGHT[rip]	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_MAXHEIGHT
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, BASE_SURFACE_MAXHEIGHT
.L33:
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], 1	# BASE_SURFACE_FULLSCR,
	movzx	eax, WORD PTR [rdi+8]	# PREV_WIDTH.50, op_1(D)->screen_width
	test	ax, ax	# PREV_WIDTH.50
	je	.L34	#,
	mov	WORD PTR PREV_WIDTH[rip], ax	# PREV_WIDTH, PREV_WIDTH.50
.L34:
	movzx	eax, WORD PTR [rdi+10]	# PREV_HEIGHT.51, op_1(D)->screen_height
	test	ax, ax	# PREV_HEIGHT.51
	je	.L28	#,
	mov	WORD PTR PREV_HEIGHT[rip], ax	# PREV_HEIGHT, PREV_HEIGHT.51
	ret
.L29:
	mov	DWORD PTR BASE_SURFACE_FLAGS[rip], 1073741841	# BASE_SURFACE_FLAGS,
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], 0	# BASE_SURFACE_FULLSCR,
	movzx	eax, WORD PTR [rdi+8]	# PREV_WIDTH.50, op_1(D)->screen_width
	test	ax, ax	# PREV_WIDTH.50
	je	.L36	#,
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, PREV_WIDTH.50
	mov	WORD PTR PREV_WIDTH[rip], ax	# PREV_WIDTH, PREV_WIDTH.50
.L36:
	movzx	eax, WORD PTR [rdi+10]	# PREV_HEIGHT.51, op_1(D)->screen_height
	test	ax, ax	# PREV_HEIGHT.51
	je	.L37	#,
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, PREV_HEIGHT.51
	mov	WORD PTR PREV_HEIGHT[rip], ax	# PREV_HEIGHT, PREV_HEIGHT.51
.L37:
	movzx	eax, WORD PTR [rdi+12]	# BASE_SURFACE_WIDTH.44, op_1(D)->screen_maxwidth
	test	ax, ax	# BASE_SURFACE_WIDTH.44
	je	.L38	#,
	mov	WORD PTR BASE_SURFACE_MAXWIDTH[rip], ax	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_WIDTH.44
.L38:
	movzx	eax, WORD PTR [rdi+14]	# BASE_SURFACE_HEIGHT.47, op_1(D)->screen_maxheight
	test	ax, ax	# BASE_SURFACE_HEIGHT.47
	je	.L28	#,
	mov	WORD PTR BASE_SURFACE_MAXHEIGHT[rip], ax	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_HEIGHT.47
.L28:
	rep
	ret
	.cfi_endproc
.LFE116:
	.size	Screen_setOptions, .-Screen_setOptions
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Screen:\n\twidget=%p\n\tc_widget=%u\n\tsize_widget=%u\n\tscreen=%p\n\tevent.type=%d\n\tpevent=%p(real %p)\n\tbackground.bg_widget=%p\n\tdrag_on=%d\n\tneed_reload=%d\n"
	.text
	.globl	Screen_vtoString
	.type	Screen_vtoString, @function
Screen_vtoString:
.LFB118:
	.cfi_startproc
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	mov	r9, QWORD PTR [rdi+48]	# MEM[(struct Screen *)vthis_1(D)].widget, MEM[(struct Screen *)vthis_1(D)].widget
	movzx	eax, BYTE PTR [rdi+173]	# MEM[(struct Screen *)vthis_1(D)].need_reload, MEM[(struct Screen *)vthis_1(D)].need_reload
	mov	DWORD PTR [rsp+64], eax	#, MEM[(struct Screen *)vthis_1(D)].need_reload
	movzx	eax, BYTE PTR [rdi+172]	# MEM[(struct Screen *)vthis_1(D)].drag_on, MEM[(struct Screen *)vthis_1(D)].drag_on
	mov	DWORD PTR [rsp+56], eax	#, MEM[(struct Screen *)vthis_1(D)].drag_on
	mov	rax, QWORD PTR [rdi+32]	# MEM[(struct Screen *)vthis_1(D)].background.bg_widget, MEM[(struct Screen *)vthis_1(D)].background.bg_widget
	mov	QWORD PTR [rsp+48], rax	#, MEM[(struct Screen *)vthis_1(D)].background.bg_widget
	lea	rax, [rdi+8]	# tmp78,
	mov	QWORD PTR [rsp+40], rax	#, tmp78
	mov	rax, QWORD PTR [rdi+80]	# MEM[(struct Screen *)vthis_1(D)].pevent, MEM[(struct Screen *)vthis_1(D)].pevent
	mov	QWORD PTR [rsp+32], rax	#, MEM[(struct Screen *)vthis_1(D)].pevent
	movzx	eax, BYTE PTR [rdi+8]	# MEM[(struct Screen *)vthis_1(D)].event.type, MEM[(struct Screen *)vthis_1(D)].event.type
	mov	DWORD PTR [rsp+24], eax	#, MEM[(struct Screen *)vthis_1(D)].event.type
	mov	rax, QWORD PTR [rdi+72]	# MEM[(struct Screen *)vthis_1(D)].screen, MEM[(struct Screen *)vthis_1(D)].screen
	mov	QWORD PTR [rsp+16], rax	#, MEM[(struct Screen *)vthis_1(D)].screen
	mov	eax, DWORD PTR [rdi+68]	# MEM[(struct Screen *)vthis_1(D)].size_widget, MEM[(struct Screen *)vthis_1(D)].size_widget
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Screen *)vthis_1(D)].size_widget
	mov	eax, DWORD PTR [rdi+64]	# MEM[(struct Screen *)vthis_1(D)].c_widget, MEM[(struct Screen *)vthis_1(D)].c_widget
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Screen *)vthis_1(D)].c_widget
	mov	r8d, OFFSET FLAT:.LC5	#,
	mov	ecx, 380	#,
	mov	edx, 1	#,
	mov	esi, 380	#,
	mov	edi, OFFSET FLAT:str_id.9601	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9601	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	Screen_vtoString, .-Screen_vtoString
	.section	.rodata.str1.1
.LC6:
	.string	"SDL_NOEVENT"
.LC7:
	.string	"SDL_ACTIVEEVENT"
.LC8:
	.string	"SDL_KEYDOWN"
.LC9:
	.string	"SDL_KEYUP"
.LC10:
	.string	"SDL_MOUSEMOTION"
.LC11:
	.string	"SDL_MOUSEBUTTONDOWN"
.LC12:
	.string	"SDL_MOUSEBUTTONUP"
.LC13:
	.string	"SDL_JOYAXISMOTION"
.LC14:
	.string	"SDL_JOYBALLMOTION"
.LC15:
	.string	"SDL_JOYHATMOTION"
.LC16:
	.string	"SDL_JOYBUTTONDOWN"
.LC17:
	.string	"SDL_JOYBUTTONUP"
.LC18:
	.string	"SDL_QUIT"
.LC19:
	.string	"SDL_SYSWMEVENT"
.LC20:
	.string	"SDL_EVENT_RESERVEDA"
.LC21:
	.string	"SDL_EVENT_RESERVEDB"
.LC22:
	.string	"SDL_VIDEORESIZE"
.LC23:
	.string	"SDL_VIDEOEXPOSE"
.LC24:
	.string	"SDL_EVENT_RESERVED2"
.LC25:
	.string	"SDL_EVENT_RESERVED3"
.LC26:
	.string	"SDL_EVENT_RESERVED4"
.LC27:
	.string	"SDL_EVENT_RESERVED5"
.LC28:
	.string	"SDL_EVENT_RESERVED6"
.LC29:
	.string	"SDL_EVENT_RESERVED7"
.LC30:
	.string	"SDL_USEREVENT"
.LC31:
	.string	"SDL_NUMEVENTS"
.LC32:
	.string	"UNKNOWN"
	.text
	.globl	Screen_getEventName
	.type	Screen_getEventName, @function
Screen_getEventName:
.LFB119:
	.cfi_startproc
	cmp	dil, 32	# sdl_event_type,
	ja	.L42	#,
	movzx	edi, dil	# sdl_event_type, sdl_event_type
	jmp	[QWORD PTR .L69[0+rdi*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L69:
	.quad	.L43
	.quad	.L70
	.quad	.L45
	.quad	.L46
	.quad	.L47
	.quad	.L48
	.quad	.L49
	.quad	.L50
	.quad	.L51
	.quad	.L52
	.quad	.L53
	.quad	.L54
	.quad	.L55
	.quad	.L56
	.quad	.L57
	.quad	.L58
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.quad	.L65
	.quad	.L66
	.quad	.L67
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L42
	.quad	.L68
	.text
.L43:
	mov	eax, OFFSET FLAT:.LC6	# D.10063,
	ret
.L45:
	mov	eax, OFFSET FLAT:.LC8	# D.10063,
	ret
.L46:
	mov	eax, OFFSET FLAT:.LC9	# D.10063,
	ret
.L47:
	mov	eax, OFFSET FLAT:.LC10	# D.10063,
	ret
.L48:
	mov	eax, OFFSET FLAT:.LC11	# D.10063,
	ret
.L49:
	mov	eax, OFFSET FLAT:.LC12	# D.10063,
	ret
.L50:
	mov	eax, OFFSET FLAT:.LC13	# D.10063,
	ret
.L51:
	mov	eax, OFFSET FLAT:.LC14	# D.10063,
	ret
.L52:
	mov	eax, OFFSET FLAT:.LC15	# D.10063,
	ret
.L53:
	mov	eax, OFFSET FLAT:.LC16	# D.10063,
	ret
.L54:
	mov	eax, OFFSET FLAT:.LC17	# D.10063,
	ret
.L55:
	mov	eax, OFFSET FLAT:.LC18	# D.10063,
	ret
.L56:
	mov	eax, OFFSET FLAT:.LC19	# D.10063,
	ret
.L57:
	mov	eax, OFFSET FLAT:.LC20	# D.10063,
	ret
.L58:
	mov	eax, OFFSET FLAT:.LC21	# D.10063,
	ret
.L59:
	mov	eax, OFFSET FLAT:.LC22	# D.10063,
	ret
.L60:
	mov	eax, OFFSET FLAT:.LC23	# D.10063,
	ret
.L61:
	mov	eax, OFFSET FLAT:.LC24	# D.10063,
	ret
.L62:
	mov	eax, OFFSET FLAT:.LC25	# D.10063,
	ret
.L63:
	mov	eax, OFFSET FLAT:.LC26	# D.10063,
	ret
.L64:
	mov	eax, OFFSET FLAT:.LC27	# D.10063,
	ret
.L65:
	mov	eax, OFFSET FLAT:.LC28	# D.10063,
	ret
.L66:
	mov	eax, OFFSET FLAT:.LC29	# D.10063,
	ret
.L67:
	mov	eax, OFFSET FLAT:.LC30	# D.10063,
	ret
.L68:
	mov	eax, OFFSET FLAT:.LC31	# D.10063,
	ret
.L42:
	mov	eax, OFFSET FLAT:.LC32	# D.10063,
	ret
.L70:
	mov	eax, OFFSET FLAT:.LC7	# D.10063,
	ret
	.cfi_endproc
.LFE119:
	.size	Screen_getEventName, .-Screen_getEventName
	.globl	Screen_currentEventName
	.type	Screen_currentEventName, @function
Screen_currentEventName:
.LFB120:
	.cfi_startproc
	movzx	edi, BYTE PTR [rdi+8]	# this_1(D)->event.type, this_1(D)->event.type
	call	Screen_getEventName	#
	rep
	ret
	.cfi_endproc
.LFE120:
	.size	Screen_currentEventName, .-Screen_currentEventName
	.globl	Screen_getEventButtonIndex
	.type	Screen_getEventButtonIndex, @function
Screen_getEventButtonIndex:
.LFB121:
	.cfi_startproc
	movzx	eax, BYTE PTR [rdi+10]	# this_1(D)->event.button.button, this_1(D)->event.button.button
	ret
	.cfi_endproc
.LFE121:
	.size	Screen_getEventButtonIndex, .-Screen_getEventButtonIndex
	.globl	Screen_setBackgroundWidget
	.type	Screen_setBackgroundWidget, @function
Screen_setBackgroundWidget:
.LFB122:
	.cfi_startproc
	mov	QWORD PTR [rdi+32], rsi	# this_1(D)->background.bg_widget, bg_widget
	mov	BYTE PTR [rdi+44], dl	# this_1(D)->background.bg_mode, mode
	mov	BYTE PTR [rdi+173], 1	# this_1(D)->need_reload,
	test	rsi, rsi	# bg_widget
	je	.L77	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Screen_reloadBgWidget	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L77:
	rep
	ret
	.cfi_endproc
.LFE122:
	.size	Screen_setBackgroundWidget, .-Screen_setBackgroundWidget
	.globl	Screen_setBackgroundColor
	.type	Screen_setBackgroundColor, @function
Screen_setBackgroundColor:
.LFB123:
	.cfi_startproc
	mov	DWORD PTR [rdi+40], esi	# this_1(D)->background.bgcolor, rgb
	mov	BYTE PTR [rdi+173], 1	# this_1(D)->need_reload,
	ret
	.cfi_endproc
.LFE123:
	.size	Screen_setBackgroundColor, .-Screen_setBackgroundColor
	.section	.rodata.str1.1
.LC33:
	.string	"(no widgets)"
	.text
	.globl	Screen_lastWidgetToString
	.type	Screen_lastWidgetToString, @function
Screen_lastWidgetToString:
.LFB124:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+64]	# D.10042, this_2(D)->c_widget
	mov	eax, OFFSET FLAT:.LC33	# D.10040,
	test	edx, edx	# D.10042
	je	.L84	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	sub	edx, 1	# tmp70,
	mov	rax, QWORD PTR [rdi+48]	# this_2(D)->widget, this_2(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# *D.10049_9, *D.10049_9
	call	Widget_toString	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L84:
	rep
	ret
	.cfi_endproc
.LFE124:
	.size	Screen_lastWidgetToString, .-Screen_lastWidgetToString
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"%20s:\tWithin context: e=%p, size_widget=%u\n"
	.align 8
.LC35:
	.string	"%s[this=%p]: NOTICE: Starting SDL session.\n"
	.align 8
.LC36:
	.string	"%s: Failed to SDL_Init() [%s]\n"
	.align 8
.LC37:
	.string	"%s: Failed to SDL_SetVideoMode() [%s]\n"
	.align 8
.LC38:
	.string	"%s: Failed to TTF_Init() [%s]\n"
	.align 8
.LC39:
	.string	"%s: Failed to IMG_Init() [%s]\n"
	.section	.rodata.str1.1
.LC40:
	.string	"SDL Widgets"
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"%s: Screen_MainInit() failed with error: %s\n"
	.text
	.globl	Screen_new
	.type	Screen_new, @function
Screen_new:
.LFB126:
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
	mov	r12, rsi	# e, e
	mov	ebp, edx	# size_widget, size_widget
	test	rdi, rdi	# this
	jne	.L86	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9659	#,
	call	Static_nullThis2	#
	mov	r9d, ebp	#, size_widget
	mov	r8, r12	#, e
	mov	ecx, OFFSET FLAT:__FUNCTION__.9659	#,
	mov	edx, OFFSET FLAT:.LC34	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r12, r12	# e
	je	.L96	#,
	mov	DWORD PTR [r12], 2	# *e_4(D),
	jmp	.L96	#
.L86:
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	lea	rax, [rbx+8]	# D.9974,
	mov	QWORD PTR [rbx+8], 0	#,
	mov	QWORD PTR [rbx+16], 0	#,
	mov	QWORD PTR [rbx+24], 0	#,
	mov	QWORD PTR [rbx+32], 0	# this_2(D)->background.bg_widget,
	mov	DWORD PTR [rbx+40], 0	# this_2(D)->background.bgcolor,
	mov	BYTE PTR [rbx+44], 0	# this_2(D)->background.bg_mode,
	mov	BYTE PTR [rbx+45], 1	# this_2(D)->background.fillcolor,
	mov	QWORD PTR [rbx+48], 0	# this_2(D)->widget,
	mov	QWORD PTR [rbx+56], 0	# this_2(D)->widget_ontop,
	mov	DWORD PTR [rbx+64], 0	# this_2(D)->c_widget,
	mov	DWORD PTR [rbx+68], 0	# this_2(D)->size_widget,
	mov	QWORD PTR [rbx+72], 0	# this_2(D)->screen,
	mov	QWORD PTR [rbx+80], rax	# this_2(D)->pevent, D.9974
	mov	QWORD PTR [rbx+88], 0	# this_2(D)->key_up,
	mov	QWORD PTR [rbx+112], 0	# this_2(D)->before_paint,
	mov	QWORD PTR [rbx+120], 0	# this_2(D)->after_paint,
	mov	QWORD PTR [rbx+128], 0	# this_2(D)->mouse_down,
	mov	QWORD PTR [rbx+136], 0	# this_2(D)->mouse_up,
	mov	QWORD PTR [rbx+144], 0	# this_2(D)->mouse_move,
	mov	QWORD PTR [rbx+96], 0	# this_2(D)->toogle_drag_on,
	mov	QWORD PTR [rbx+104], 0	# this_2(D)->user_event,
	mov	QWORD PTR [rbx+160], 0	# this_2(D)->callback,
	mov	BYTE PTR [rbx+168], 0	# this_2(D)->has_exited,
	mov	BYTE PTR [rbx+169], 0	# this_2(D)->event_handled,
	mov	BYTE PTR [rbx+170], 0	# this_2(D)->pool_events,
	mov	BYTE PTR [rbx+171], 0	# this_2(D)->disable_auto_flip,
	mov	BYTE PTR [rbx+172], 1	# this_2(D)->drag_on,
	mov	BYTE PTR [rbx+173], 0	# this_2(D)->need_reload,
	cmp	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	jne	.L88	#,
	mov	r8, rbx	#, this
	mov	ecx, OFFSET FLAT:__FUNCTION__.9659	#,
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edi, 65535	#,
	call	SDL_Init	#
	test	eax, eax	# D.10416
	jns	.L89	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.10415,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9581	#,
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ebp, 30	# ee,
	jmp	.L90	#
.L89:
	movzx	esi, WORD PTR BASE_SURFACE_HEIGHT[rip]	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT
	movzx	edi, WORD PTR BASE_SURFACE_WIDTH[rip]	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH
	mov	r9d, 122	#,
	mov	r8d, OFFSET FLAT:.LC3	#,
	mov	ecx, DWORD PTR BASE_SURFACE_FLAGS[rip]	#, BASE_SURFACE_FLAGS
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	mov	r13, rax	# sdl_screen,
	test	rax, rax	# sdl_screen
	jne	.L91	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.10407,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9581	#,
	mov	edx, OFFSET FLAT:.LC37	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	call	SDL_Quit	#
	mov	ebp, 31	# ee,
	jmp	.L90	#
.L91:
	call	TTF_Init	#
	test	eax, eax	# D.10406
	je	.L92	#,
	.p2align 4,,6
	call	SDL_GetError	#
	mov	r8, rax	# D.10405,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9581	#,
	mov	edx, OFFSET FLAT:.LC38	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edx, 133	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, r13	#, sdl_screen
	call	wSDL_FreeSurface	#
	call	SDL_Quit	#
	mov	ebp, 32	# ee,
	jmp	.L90	#
.L92:
	mov	edi, 3	#,
	call	IMG_Init	#
	and	eax, 3	# tmp99,
	cmp	eax, 3	# tmp99,
	je	.L93	#,
	call	SDL_GetError	#
	mov	r8, rax	# D.10403,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9581	#,
	mov	edx, OFFSET FLAT:.LC39	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edx, 143	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, r13	#, sdl_screen
	call	wSDL_FreeSurface	#
	call	TTF_Quit	#
	call	SDL_Quit	#
	mov	ebp, 33	# ee,
	jmp	.L90	#
.L93:
	mov	esi, 0	#,
	mov	edi, OFFSET FLAT:.LC40	#,
	call	SDL_WM_SetCaption	#
	mov	edi, 0	#,
	call	time	#
	mov	edi, eax	#, D.10402
	call	srand	#
	mov	QWORD PTR BASE_SURFACE[rip], r13	# BASE_SURFACE, sdl_screen
	mov	rax, QWORD PTR [r13+8]	# sdl_screen_92->format, sdl_screen_92->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rax	# BASE_SURFACE_FORMAT, sdl_screen_92->format
	call	SDL_GetVideoInfo	#
	mov	QWORD PTR vinfo[rip], rax	# vinfo, vinfo.28
	jmp	.L88	#
.L95:
	mov	DWORD PTR [r12], ebp	# *e_4(D), ee
	jmp	.L96	#
.L88:
	mov	rax, QWORD PTR BASE_SURFACE[rip]	# BASE_SURFACE, BASE_SURFACE
	mov	QWORD PTR [rbx+72], rax	# this_2(D)->screen, BASE_SURFACE
	test	ebp, ebp	# size_widget
	je	.L94	#,
	mov	edi, ebp	# size_widget, size_widget
	mov	ecx, 402	#,
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+48], rax	# this_2(D)->widget, D.9986
	mov	DWORD PTR [rbx+68], ebp	# this_2(D)->size_widget, size_widget
.L94:
	mov	BYTE PTR [rbx+173], 1	# this_2(D)->need_reload,
	add	DWORD PTR SCREEN_COUNT[rip], 1	# SCREEN_COUNT,
	jmp	.L96	#
.L90:
	mov	edi, ebp	#, ee
	call	perr_getName	#
	mov	r8, rax	# D.9980,
	mov	ecx, OFFSET FLAT:__FUNCTION__.9659	#,
	mov	edx, OFFSET FLAT:.LC41	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r12, r12	# e
	jne	.L95	#,
.L96:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE126:
	.size	Screen_new, .-Screen_new
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"Screen_addWidget: Fatal error occured while creating/growing this.widget array. Method Static_growArray exited with error %s\n"
	.text
	.globl	Screen_addWidget
	.type	Screen_addWidget, @function
Screen_addWidget:
.LFB127:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# widget, widget
	mov	ecx, DWORD PTR [rdi+64]	# D.9949, this_2(D)->c_widget
	cmp	ecx, DWORD PTR [rdi+68]	# D.9949, this_2(D)->size_widget
	jb	.L99	#,
	lea	rdx, [rdi+68]	# tmp78,
	mov	rsi, QWORD PTR [rdi+48]	# this_2(D)->widget, this_2(D)->widget
	mov	QWORD PTR [rsp+8], 8	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 64	#,
	mov	r8d, ecx	#, D.9949
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L100	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.9958
	mov	edx, OFFSET FLAT:.LC42	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.9960, e
	jmp	.L101	#
.L100:
	mov	QWORD PTR [rbx+48], rax	# this_2(D)->widget, new_array
.L99:
	mov	edx, DWORD PTR [rbx+64]	# this_2(D)->c_widget, this_2(D)->c_widget
	mov	rax, QWORD PTR [rbx+48]	# this_2(D)->widget, this_2(D)->widget
	mov	QWORD PTR [rax+rdx*8], rbp	# *D.9963_18, widget
	add	DWORD PTR [rbx+64], 1	# this_2(D)->c_widget,
	mov	eax, 0	# D.9960,
.L101:
	mov	rbx, QWORD PTR [rsp+40]	#,
	mov	rbp, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE127:
	.size	Screen_addWidget, .-Screen_addWidget
	.globl	Screen_draw
	.type	Screen_draw, @function
Screen_draw:
.LFB128:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbx, rdi	# this, this
	mov	rax, QWORD PTR [rdi+32]	# D.9914, this_4(D)->background.bg_widget
	test	rax, rax	# D.9914
	je	.L104	#,
	cmp	QWORD PTR [rax+88], 0	# D.9914_5->surf,
	je	.L104	#,
	cmp	BYTE PTR [rax+159], 0	# D.9914_5->visible,
	jne	.L105	#,
	jmp	.L104	#
.L112:
	mov	rax, QWORD PTR [rbx+32]	# D.9914, this_4(D)->background.bg_widget
	lea	rcx, [rax+96]	# tmp95,
	mov	rdx, QWORD PTR [rbx+72]	# this_4(D)->screen, this_4(D)->screen
	mov	rdi, QWORD PTR [rax+88]	# D.9914_16->surf, D.9914_16->surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
.L113:
	cmp	DWORD PTR [rbx+64], 0	# this_4(D)->c_widget,
	je	.L106	#,
	mov	ebp, 0	# i,
.L108:
	mov	edx, ebp	# i, i
	mov	rax, QWORD PTR [rbx+48]	# this_4(D)->widget, this_4(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# widget, *D.9932_25
	test	rdi, rdi	# widget
	je	.L107	#,
	cmp	QWORD PTR [rbx+56], rdi	# this_4(D)->widget_ontop, widget
	je	.L107	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)widget_26].class, MEM[(struct coObject *)widget_26].class
	mov	rax, QWORD PTR [rax+16]	# D.9938_28->vtable, D.9938_28->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9939_29 + 8B], MEM[(const void * *)D.9939_29 + 8B]
	mov	edx, 0	#,
	mov	rsi, rbx	#, this
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9941_31].draw
.L107:
	add	ebp, 1	# i,
	cmp	DWORD PTR [rbx+64], ebp	# this_4(D)->c_widget, i
	ja	.L108	#,
.L106:
	mov	rdi, QWORD PTR [rbx+56]	# widget, this_4(D)->widget_ontop
	test	rdi, rdi	# widget
	je	.L109	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)widget_34].class, MEM[(struct coObject *)widget_34].class
	mov	rax, QWORD PTR [rax+16]	# D.9938_35->vtable, D.9938_35->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9939_36 + 8B], MEM[(const void * *)D.9939_36 + 8B]
	mov	edx, 0	#,
	mov	rsi, rbx	#, this
	call	[QWORD PTR [rax+8]]	# MEM[(struct IWidget *)D.9941_38].draw
.L109:
	cmp	BYTE PTR [rbx+171], 0	# this_4(D)->disable_auto_flip,
	jne	.L110	#,
	mov	rdi, QWORD PTR [rbx+72]	# this_4(D)->screen, this_4(D)->screen
	call	SDL_Flip	#
.L110:
	mov	BYTE PTR [rbx+173], 0	# this_4(D)->need_reload,
	jmp	.L115	#
.L105:
	cmp	BYTE PTR [rdi+45], 0	# this_4(D)->background.fillcolor,
	jne	.L111	#,
	jmp	.L112	#
.L104:
	mov	edx, DWORD PTR [rbx+40]	# this_4(D)->background.bgcolor, this_4(D)->background.bgcolor
	mov	rdi, QWORD PTR [rbx+72]	# this_4(D)->screen, this_4(D)->screen
	mov	esi, 0	#,
	call	SDL_FillRect	#
	jmp	.L113	#
.L111:
	mov	edx, DWORD PTR [rdi+40]	# this_4(D)->background.bgcolor, this_4(D)->background.bgcolor
	mov	rdi, QWORD PTR [rdi+72]	# this_4(D)->screen, this_4(D)->screen
	mov	esi, 0	#,
	call	SDL_FillRect	#
	jmp	.L112	#
.L115:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE128:
	.size	Screen_draw, .-Screen_draw
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"Screen_switchFullscreen: Failed to switch to fullscreen mode: %s\n"
	.align 8
.LC44:
	.string	"Screen_switchFullscreen: Failed to switch to window mode: %s\n"
	.text
	.globl	Screen_switchFullscreen
	.type	Screen_switchFullscreen, @function
Screen_switchFullscreen:
.LFB117:
	.cfi_startproc
	cmp	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	je	.L124	#,
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
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR BASE_SURFACE_FULLSCR[rip], 0	# BASE_SURFACE_FULLSCR,
	sete	bpl	#, base_surface_fullscr
	jne	.L119	#,
	movzx	r13d, WORD PTR BASE_SURFACE_WIDTH[rip]	# prev_width, BASE_SURFACE_WIDTH
	movzx	r12d, WORD PTR BASE_SURFACE_HEIGHT[rip]	# prev_height, BASE_SURFACE_HEIGHT
	movzx	esi, WORD PTR BASE_SURFACE_MAXHEIGHT[rip]	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_MAXHEIGHT
	movzx	edi, WORD PTR BASE_SURFACE_MAXWIDTH[rip]	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_MAXWIDTH
	mov	r9d, 207	#,
	mov	r8d, OFFSET FLAT:.LC3	#,
	mov	ecx, -1073741823	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_screen
	je	.L120	#,
	mov	r14, QWORD PTR BASE_SURFACE[rip]	# old_surf, BASE_SURFACE
	mov	rdx, QWORD PTR [rax+8]	# sdl_screen_13->format, sdl_screen_13->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rdx	# BASE_SURFACE_FORMAT, sdl_screen_13->format
	mov	edx, DWORD PTR [rax+16]	# sdl_screen_13->w, sdl_screen_13->w
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], dx	# BASE_SURFACE_WIDTH, sdl_screen_13->w
	mov	edx, DWORD PTR [rax+20]	# sdl_screen_13->h, sdl_screen_13->h
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], dx	# BASE_SURFACE_HEIGHT, sdl_screen_13->h
	mov	WORD PTR PREV_WIDTH[rip], r13w	# PREV_WIDTH, prev_width
	mov	WORD PTR PREV_HEIGHT[rip], r12w	# PREV_HEIGHT, prev_height
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], bpl	# BASE_SURFACE_FULLSCR, base_surface_fullscr
	mov	QWORD PTR BASE_SURFACE[rip], rax	# BASE_SURFACE, sdl_screen
	mov	rdi, rbx	#, this
	call	Screen_reloadBgWidget	#
	mov	rdi, rbx	#, this
	call	Screen_draw	#
	mov	edx, 220	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, r14	#, old_surf
	call	wSDL_FreeSurface	#
	jmp	.L117	#
.L120:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.10102
	mov	edx, OFFSET FLAT:.LC43	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L117	#
.L119:
	movzx	esi, WORD PTR PREV_HEIGHT[rip]	# PREV_HEIGHT, PREV_HEIGHT
	movzx	edi, WORD PTR PREV_WIDTH[rip]	# PREV_WIDTH, PREV_WIDTH
	mov	r9d, 229	#,
	mov	r8d, OFFSET FLAT:.LC3	#,
	mov	ecx, 1073741841	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_screen
	je	.L121	#,
	mov	rbp, QWORD PTR BASE_SURFACE[rip]	# old_surf, BASE_SURFACE
	mov	rdx, QWORD PTR [rax+8]	# sdl_screen_28->format, sdl_screen_28->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rdx	# BASE_SURFACE_FORMAT, sdl_screen_28->format
	movzx	edx, WORD PTR PREV_WIDTH[rip]	# PREV_WIDTH, PREV_WIDTH
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], dx	# BASE_SURFACE_WIDTH, PREV_WIDTH
	movzx	edx, WORD PTR PREV_HEIGHT[rip]	# PREV_HEIGHT, PREV_HEIGHT
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], dx	# BASE_SURFACE_HEIGHT, PREV_HEIGHT
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], 0	# BASE_SURFACE_FULLSCR,
	mov	QWORD PTR BASE_SURFACE[rip], rax	# BASE_SURFACE, sdl_screen
	mov	rdi, rbx	#, this
	call	Screen_reloadBgWidget	#
	mov	rdi, rbx	#, this
	call	Screen_draw	#
	mov	edx, 240	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rbp	#, old_surf
	call	wSDL_FreeSurface	#
	jmp	.L117	#
.L121:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.10112
	mov	edx, OFFSET FLAT:.LC44	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L117:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_restore 14
	.cfi_restore 13
	.cfi_restore 12
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L124:
	rep
	ret
	.cfi_endproc
.LFE117:
	.size	Screen_switchFullscreen, .-Screen_switchFullscreen
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"Screen_MainStart:Screen > Exiting. Screen appears to be not initialized SDL_Surface *.screen==NULL\n"
	.align 8
.LC46:
	.string	"Screen_MainStart: Unhandled user event of code %d\n"
	.align 8
.LC47:
	.string	"Screen_MainStart[this=%p]: Failed to resize window: %s\n"
	.text
	.globl	Screen_MainStart
	.type	Screen_MainStart, @function
Screen_MainStart:
.LFB129:
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
	mov	rbx, rdi	# this, this
	cmp	QWORD PTR [rdi+72], 0	# this_2(D)->screen,
	jne	.L126	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 99	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC45	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+168], 1	# this_2(D)->has_exited,
	jmp	.L125	#
.L126:
	mov	BYTE PTR [rdi+173], 1	# this_2(D)->need_reload,
	mov	BYTE PTR [rdi+168], 0	# this_2(D)->has_exited,
	call	Screen_reloadBgWidget	#
	lea	r12, [rbx+8]	# tmp172,
	jmp	.L128	#
.L158:
	mov	rax, QWORD PTR BASE_SURFACE[rip]	# BASE_SURFACE.5, BASE_SURFACE
	movzx	edx, WORD PTR BASE_SURFACE_WIDTH[rip]	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH
	cmp	edx, DWORD PTR [rax+16]	# BASE_SURFACE_WIDTH, BASE_SURFACE.5_8->w
	jne	.L129	#,
	movzx	edx, WORD PTR BASE_SURFACE_HEIGHT[rip]	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT
	cmp	edx, DWORD PTR [rax+20]	# BASE_SURFACE_HEIGHT, BASE_SURFACE.5_8->h
	je	.L130	#,
.L129:
	mov	rdi, rbx	#, this
	call	Screen_reloadBgWidget	#
.L130:
	cmp	BYTE PTR [rbx+173], 0	# this_2(D)->need_reload,
	je	.L165	#,
	mov	rax, QWORD PTR [rbx+112]	# D.9776, this_2(D)->before_paint
	test	rax, rax	# D.9776
	je	.L132	#,
	mov	rsi, QWORD PTR [rbx+152]	# this_2(D)->param, this_2(D)->param
	mov	rdi, rbx	#, this
	call	rax	# D.9776
.L132:
	mov	rdi, rbx	#, this
	call	Screen_draw	#
	mov	rax, QWORD PTR [rbx+120]	# D.9780, this_2(D)->after_paint
	test	rax, rax	# D.9780
	je	.L165	#,
	mov	rsi, QWORD PTR [rbx+152]	# this_2(D)->param, this_2(D)->param
	mov	rdi, rbx	#, this
	call	rax	# D.9780
.L165:
	mov	BYTE PTR [rbx+169], 0	# this_2(D)->event_handled,
	cmp	BYTE PTR [rbx+170], 0	# this_2(D)->pool_events,
	je	.L134	#,
	mov	rdi, QWORD PTR [rbx+80]	# this_2(D)->pevent, this_2(D)->pevent
	call	SDL_PollEvent	#
	jmp	.L135	#
.L134:
	mov	rdi, QWORD PTR [rbx+80]	# this_2(D)->pevent, this_2(D)->pevent
	call	SDL_WaitEvent	#
.L135:
	movzx	eax, BYTE PTR [rbx+8]	# tmp142, this_2(D)->event.type
	sub	eax, 3	# tmp142,
	cmp	al, 21	# tmp142,
	ja	.L165	#,
	movzx	eax, al	# tmp144, tmp142
	jmp	[QWORD PTR .L143[0+rax*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L143:
	.quad	.L136
	.quad	.L137
	.quad	.L138
	.quad	.L139
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L140
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L141
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L165
	.quad	.L142
	.text
.L142:
	mov	rax, QWORD PTR [rbx+104]	# D.9790, this_2(D)->user_event
	test	rax, rax	# D.9790
	je	.L144	#,
	mov	rsi, r12	#, tmp172
	mov	rdi, rbx	#, this
	call	rax	# D.9790
	jmp	.L145	#
.L144:
	mov	ecx, DWORD PTR [rbx+12]	# this_2(D)->event.user.code, this_2(D)->event.user.code
	mov	edx, OFFSET FLAT:.LC46	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L145	#
.L140:
	mov	BYTE PTR [rbx+168], 1	# this_2(D)->has_exited,
	jmp	.L125	#
.L141:
	mov	esi, DWORD PTR [rbx+16]	# this_2(D)->event.resize.h, this_2(D)->event.resize.h
	mov	edi, DWORD PTR [rbx+12]	# this_2(D)->event.resize.w, this_2(D)->event.resize.w
	mov	r9d, 503	#,
	mov	r8d, OFFSET FLAT:.LC3	#,
	mov	ecx, 1073741841	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_surface
	je	.L146	#,
	mov	rbp, QWORD PTR BASE_SURFACE[rip]	# old_surface, BASE_SURFACE
	mov	edx, DWORD PTR [rbx+12]	# this_2(D)->event.resize.w, this_2(D)->event.resize.w
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], dx	# BASE_SURFACE_WIDTH, this_2(D)->event.resize.w
	mov	edx, DWORD PTR [rbx+16]	# this_2(D)->event.resize.h, this_2(D)->event.resize.h
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], dx	# BASE_SURFACE_HEIGHT, this_2(D)->event.resize.h
	mov	rdx, QWORD PTR [rbp+8]	# old_surface_34->format, old_surface_34->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rdx	# BASE_SURFACE_FORMAT, old_surface_34->format
	mov	QWORD PTR BASE_SURFACE[rip], rax	# BASE_SURFACE, sdl_surface
	cmp	QWORD PTR [rbx+32], 0	# this_2(D)->background.bg_widget,
	je	.L147	#,
	mov	rdi, rbx	#, this
	call	Screen_reloadBgWidget	#
.L147:
	mov	rdi, rbx	#, this
	call	Screen_draw	#
	mov	edx, 514	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rdi, rbp	#, old_surface
	call	wSDL_FreeSurface	#
	jmp	.L145	#
.L146:
	call	SDL_GetError	#
	mov	r8, rax	# D.9807,
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC47	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L145	#
.L136:
	mov	eax, DWORD PTR [rbx+16]	# this_2(D)->event.key.keysym.sym, this_2(D)->event.key.keysym.sym
	cmp	eax, 282	# this_2(D)->event.key.keysym.sym,
	je	.L150	#,
	cmp	eax, 292	# this_2(D)->event.key.keysym.sym,
	je	.L151	#,
	cmp	eax, 27	# this_2(D)->event.key.keysym.sym,
	jne	.L148	#,
	mov	BYTE PTR [rbx+168], 1	# this_2(D)->has_exited,
	jmp	.L125	#
.L150:
	cmp	BYTE PTR [rbx+172], 0	# this_2(D)->drag_on,
	sete	BYTE PTR [rbx+172]	#, this_2(D)->drag_on
	mov	rax, QWORD PTR [rbx+96]	# D.9812, this_2(D)->toogle_drag_on
	test	rax, rax	# D.9812
	je	.L148	#,
	mov	rdi, rbx	#, this
	call	rax	# D.9812
	jmp	.L148	#
.L151:
	mov	rdi, rbx	#, this
	.p2align 4,,5
	call	Screen_switchFullscreen	#
.L148:
	mov	rax, QWORD PTR [rbx+88]	# D.9815, this_2(D)->key_up
	test	rax, rax	# D.9815
	je	.L145	#,
	mov	rdx, QWORD PTR [rbx+152]	# this_2(D)->param, this_2(D)->param
	mov	esi, DWORD PTR [rbx+16]	# this_2(D)->event.key.keysym.sym, this_2(D)->event.key.keysym.sym
	mov	rdi, rbx	#, this
	call	rax	# D.9815
	jmp	.L145	#
.L138:
	mov	rax, QWORD PTR [rbx+128]	# D.9818, this_2(D)->mouse_down
	test	rax, rax	# D.9818
	je	.L139	#,
	mov	rsi, QWORD PTR [rbx+152]	# this_2(D)->param, this_2(D)->param
	mov	rdi, rbx	#, this
	call	rax	# D.9818
	cmp	BYTE PTR [rbx+169], 0	# this_2(D)->event_handled,
	jne	.L145	#,
.L139:
	mov	rax, QWORD PTR [rbx+136]	# D.9823, this_2(D)->mouse_up
	test	rax, rax	# D.9823
	je	.L137	#,
	cmp	BYTE PTR [rbx+8], 6	# this_2(D)->event.type,
	jne	.L137	#,
	mov	rsi, QWORD PTR [rbx+152]	# this_2(D)->param, this_2(D)->param
	mov	rdi, rbx	#, this
	call	rax	# D.9823
	cmp	BYTE PTR [rbx+169], 0	# this_2(D)->event_handled,
	jne	.L145	#,
.L137:
	mov	rax, QWORD PTR [rbx+144]	# D.9829, this_2(D)->mouse_move
	test	rax, rax	# D.9829
	je	.L152	#,
	cmp	BYTE PTR [rbx+8], 4	# this_2(D)->event.type,
	jne	.L152	#,
	mov	rsi, QWORD PTR [rbx+152]	# this_2(D)->param, this_2(D)->param
	mov	rdi, rbx	#, this
	call	rax	# D.9829
	cmp	BYTE PTR [rbx+169], 0	# this_2(D)->event_handled,
	jne	.L145	#,
.L152:
	mov	rdi, QWORD PTR [rbx+56]	# D.9835, this_2(D)->widget_ontop
	test	rdi, rdi	# D.9835
	jne	.L153	#,
.L155:
	mov	ebp, 0	# i,
	cmp	DWORD PTR [rbx+64], 0	# this_2(D)->c_widget,
	jne	.L162	#,
	jmp	.L145	#
.L153:
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)D.9835_68].class, MEM[(struct coObject *)D.9835_68].class
	mov	rax, QWORD PTR [rax+16]	# D.9838_70->vtable, D.9838_70->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9839_71 + 8B], MEM[(const void * *)D.9839_71 + 8B]
	mov	rsi, rbx	#, this
	call	[QWORD PTR [rax]]	# MEM[(struct IWidget *)D.9841_73].mevent
	cmp	BYTE PTR [rbx+169], 0	# this_2(D)->event_handled,
	jne	.L145	#,
	jmp	.L155	#
.L162:
	mov	edx, ebp	# i, i
	mov	rax, QWORD PTR [rbx+48]	# this_2(D)->widget, this_2(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# widget, *D.9847_82
	test	rdi, rdi	# widget
	je	.L156	#,
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)widget_83].class, MEM[(struct coObject *)widget_83].class
	mov	rax, QWORD PTR [rax+16]	# D.9850_84->vtable, D.9850_84->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9851_85 + 8B], MEM[(const void * *)D.9851_85 + 8B]
	mov	rsi, rbx	#, this
	call	[QWORD PTR [rax]]	# MEM[(struct IWidget *)D.9853_87].mevent
	cmp	BYTE PTR [rbx+169], 0	# this_2(D)->event_handled,
	jne	.L145	#,
.L156:
	add	ebp, 1	# i,
	cmp	DWORD PTR [rbx+64], ebp	# this_2(D)->c_widget, i
	ja	.L162	#,
.L145:
	cmp	BYTE PTR [rbx+168], 0	# this_2(D)->has_exited,
	jne	.L125	#,
	cmp	BYTE PTR [rbx+173], 0	# this_2(D)->need_reload,
	je	.L165	#,
.L128:
	cmp	BYTE PTR [rbx+168], 0	# this_2(D)->has_exited,
	je	.L158	#,
.L125:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE129:
	.size	Screen_MainStart, .-Screen_MainStart
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"Screen_CallbackCreate[this=%p]: Callback object already exists: this->callback=%p\n"
	.align 8
.LC49:
	.string	"Screen_CallbackCreate[this=%p]: Failed to allocate this->callback object\n"
	.text
	.globl	Screen_CallbackCreate
	.type	Screen_CallbackCreate, @function
Screen_CallbackCreate:
.LFB130:
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
	mov	r8, QWORD PTR [rdi+160]	# D.9748, this_1(D)->callback
	test	r8, r8	# D.9748
	je	.L168	#,
	mov	rcx, rdi	#, this
	mov	edx, OFFSET FLAT:.LC48	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L167	#
.L168:
	mov	rbp, rsi	# click_handler, click_handler
	mov	r12d, edx	# size, size
	mov	edx, 589	#,
	mov	esi, OFFSET FLAT:.LC3	#,
	mov	rax, QWORD PTR Callback_class[rip]	# Callback_class, Callback_class
	mov	rdi, QWORD PTR [rax]	#, Callback_class.2_5->size
	call	wmalloc	#
	mov	edx, r12d	#, size
	mov	rsi, rbp	#, click_handler
	mov	rdi, rax	#, D.9755
	call	Callback_new	#
	mov	QWORD PTR [rbx+160], rax	# this_1(D)->callback, D.9756
	test	rax, rax	# D.9756
	jne	.L167	#,
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC49	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
.L167:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE130:
	.size	Screen_CallbackCreate, .-Screen_CallbackCreate
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"Screen_addCParam: Passed NULL this object\n"
	.align 8
.LC51:
	.string	"Screen_addCParam: Callback array doesn't exist. To add cparameters first create Callback array with Screen_CallbackCreate()\n"
	.align 8
.LC52:
	.string	"Screen_addCParam: Failed to add parameter. Callback_addParameter exited with error %s\n"
	.text
	.globl	Screen_addCParam
	.type	Screen_addCParam, @function
Screen_addCParam:
.LFB131:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	test	rdi, rdi	# this
	jne	.L172	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 42	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC50	#,
	call	fwrite	#
	mov	ebx, 1	# e,
	jmp	.L173	#
.L172:
	mov	rdi, QWORD PTR [rdi+160]	# D.9739, this_2(D)->callback
	test	rdi, rdi	# D.9739
	jne	.L174	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 124	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC51	#,
	call	fwrite	#
	mov	ebx, 21	# e,
	jmp	.L173	#
.L174:
	call	Callback_addParameter	#
	mov	ebx, eax	# e,
	test	eax, eax	# e
	je	.L173	#,
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.9744
	mov	edx, OFFSET FLAT:.LC52	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L173:
	mov	eax, ebx	#, e
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE131:
	.size	Screen_addCParam, .-Screen_addCParam
	.globl	Screen_getCParam
	.type	Screen_getCParam, @function
Screen_getCParam:
.LFB132:
	.cfi_startproc
	mov	rdi, QWORD PTR [rdi+160]	# D.9730, this_2(D)->callback
	mov	eax, 0	# t,
	test	rdi, rdi	# D.9730
	je	.L181	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Callback_getCParam	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L181:
	rep
	ret
	.cfi_endproc
.LFE132:
	.size	Screen_getCParam, .-Screen_getCParam
	.globl	Screen_class
	.data
	.align 8
	.type	Screen_class, @object
	.size	Screen_class, 8
Screen_class:
	.quad	type
	.comm	IMAGE_SUPPORTED_FILES,8,8
	.local	vinfo
	.comm	vinfo,8,8
	.local	BASE_SURFACE
	.comm	BASE_SURFACE,8,8
	.local	BASE_SURFACE_FORMAT
	.comm	BASE_SURFACE_FORMAT,8,8
	.section	.rodata.str1.1
.LC53:
	.string	"Screen"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	176
# name:
	.quad	.LC53
# vtable:
	.quad	vtable
	.align 4
	.type	BASE_SURFACE_FLAGS, @object
	.size	BASE_SURFACE_FLAGS, 4
BASE_SURFACE_FLAGS:
	.long	1073741841
	.align 2
	.type	BASE_SURFACE_WIDTH, @object
	.size	BASE_SURFACE_WIDTH, 2
BASE_SURFACE_WIDTH:
	.value	1920
	.align 2
	.type	BASE_SURFACE_MAXWIDTH, @object
	.size	BASE_SURFACE_MAXWIDTH, 2
BASE_SURFACE_MAXWIDTH:
	.value	1920
	.align 2
	.type	BASE_SURFACE_HEIGHT, @object
	.size	BASE_SURFACE_HEIGHT, 2
BASE_SURFACE_HEIGHT:
	.value	600
	.align 2
	.type	BASE_SURFACE_MAXHEIGHT, @object
	.size	BASE_SURFACE_MAXHEIGHT, 2
BASE_SURFACE_MAXHEIGHT:
	.value	1200
	.local	BASE_SURFACE_FULLSCR
	.comm	BASE_SURFACE_FULLSCR,1,1
	.align 2
	.type	PREV_WIDTH, @object
	.size	PREV_WIDTH, 2
PREV_WIDTH:
	.value	1920
	.align 2
	.type	PREV_HEIGHT, @object
	.size	PREV_HEIGHT, 2
PREV_HEIGHT:
	.value	600
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9570, @object
	.size	__FUNCTION__.9570, 22
__FUNCTION__.9570:
	.string	"Screen_reloadBgWidget"
	.local	str_id.9601
	.comm	str_id.9601,380,32
	.local	SCREEN_COUNT
	.comm	SCREEN_COUNT,4,4
	.type	__FUNCTION__.9659, @object
	.size	__FUNCTION__.9659, 11
__FUNCTION__.9659:
	.string	"Screen_new"
	.align 16
	.type	__FUNCTION__.9581, @object
	.size	__FUNCTION__.9581, 16
__FUNCTION__.9581:
	.string	"Screen_MainInit"
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
	.quad	Screen_vdestroy
# toString:
	.quad	coObject_coIObject_vtoString
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
