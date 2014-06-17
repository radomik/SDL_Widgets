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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
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

	.text
	.type	Screen_reloadBgWidget, @function
Screen_reloadBgWidget:
.LFB99:
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
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	je	.L1	#,
	cmp	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	je	.L1	#,
	mov	rdi, QWORD PTR [rdi+32]	# D.9252, this_1(D)->background.bg_widget
	test	rdi, rdi	# D.9252
	je	.L1	#,
	movzx	r13d, WORD PTR BASE_SURFACE_WIDTH[rip]	# sw, BASE_SURFACE_WIDTH
	movzx	ebp, WORD PTR BASE_SURFACE_HEIGHT[rip]	# sh, BASE_SURFACE_HEIGHT
	movzx	r14d, WORD PTR [rdi+100]	# w, D.9252_3->pos.w
	movzx	r12d, WORD PTR [rdi+102]	# h, D.9252_3->pos.h
	movzx	eax, BYTE PTR [rbx+44]	# D.9255, this_1(D)->background.bg_mode
	test	al, al	# D.9255
	jne	.L3	#,
	cmp	r12w, bp	# h, sh
	jne	.L8	#,
	cmp	r14w, r13w	# w, sw
	je	.L1	#,
.L8:
	movzx	ebp, bp	# sh, sh
	cvtsi2sd	xmm1, ebp	# tmp88, sh
	movzx	r12d, r12w	# h, h
	cvtsi2sd	xmm2, r12d	# tmp90, h
	movzx	r13d, r13w	# sw, sw
	cvtsi2sd	xmm0, r13d	# tmp93, sw
	movzx	r14d, r14w	# w, w
	cvtsi2sd	xmm3, r14d	# tmp95, w
	divsd	xmm0, xmm3	# tmp97, tmp95
	mov	esi, 1	#,
	divsd	xmm1, xmm2	#, tmp90
	call	Widget_scale	#
	mov	rdi, QWORD PTR [rbx+32]	# this_1(D)->background.bg_widget, this_1(D)->background.bg_widget
	mov	edx, 0	#,
	mov	esi, 0	#,
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+45], 0	# this_1(D)->background.fillcolor,
	jmp	.L1	#
.L3:
	cmp	al, 1	# D.9255,
	jne	.L5	#,
	mov	edx, ebp	# tmp99, sh
	shr	dx	# tmp99
	movzx	edx, dx	# tmp100, tmp99
	mov	esi, r13d	# tmp101, sw
	shr	si	# tmp101
	movzx	esi, si	# tmp102, tmp101
	call	Widget_setCenter	#
.L5:
	cmp	r12w, bp	# h, sh
	jb	.L9	#,
	cmp	r14w, r13w	# w, sw
	jae	.L6	#,
.L9:
	mov	BYTE PTR [rbx+45], 1	# this_1(D)->background.fillcolor,
	jmp	.L1	#
.L6:
	mov	BYTE PTR [rbx+45], 0	# this_1(D)->background.fillcolor,
.L1:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Screen_reloadBgWidget, .-Screen_reloadBgWidget
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Screen.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Screen_destroy: NOTICE: Ending SDL session.\n"
	.text
	.globl	Screen_vdestroy
	.type	Screen_vdestroy, @function
Screen_vdestroy:
.LFB109:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.9076	#,
	call	Static_printObj2	#
	mov	rdi, QWORD PTR [rbx+112]	# D.9385, MEM[(struct Screen *)vthis_1(D)].callback
	test	rdi, rdi	# D.9385
	je	.L12	#,
	call	delete	#
	mov	edx, 303	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rax	#, D.9388
	call	wfree	#
	mov	QWORD PTR [rbx+112], 0	# MEM[(struct Screen *)vthis_1(D)].callback,
.L12:
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Screen *)vthis_1(D)].widget, MEM[(struct Screen *)vthis_1(D)].widget
	mov	edx, 308	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+48], 0	# MEM[(struct Screen *)vthis_1(D)].widget,
	mov	BYTE PTR [rbx+124], 0	# MEM[(struct Screen *)vthis_1(D)].need_reload,
	mov	eax, DWORD PTR SCREEN_COUNT[rip]	# SCREEN_COUNT.22, SCREEN_COUNT
	sub	eax, 1	# SCREEN_COUNT.22,
	mov	DWORD PTR SCREEN_COUNT[rip], eax	# SCREEN_COUNT, SCREEN_COUNT.22
	test	eax, eax	# SCREEN_COUNT.22
	jne	.L11	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 44	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	edx, 92	#,
	mov	esi, OFFSET FLAT:.LC0	#,
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
.L11:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,4
	ret
	.cfi_endproc
.LFE109:
	.size	Screen_vdestroy, .-Screen_vdestroy
	.globl	Screen_getWidth
	.type	Screen_getWidth, @function
Screen_getWidth:
.LFB93:
	.cfi_startproc
	mov	rax, QWORD PTR vinfo[rip]	# vinfo.47, vinfo
	test	rax, rax	# vinfo.47
	je	.L17	#,
	movzx	eax, WORD PTR [rax+16]	# D.9506, vinfo.47_2->current_w
	ret
.L17:
	mov	eax, 0	# D.9506,
	ret
	.cfi_endproc
.LFE93:
	.size	Screen_getWidth, .-Screen_getWidth
	.globl	Screen_getHeight
	.type	Screen_getHeight, @function
Screen_getHeight:
.LFB94:
	.cfi_startproc
	mov	rax, QWORD PTR vinfo[rip]	# vinfo.45, vinfo
	test	rax, rax	# vinfo.45
	je	.L20	#,
	movzx	eax, WORD PTR [rax+20]	# D.9498, vinfo.45_2->current_h
	ret
.L20:
	mov	eax, 0	# D.9498,
	ret
	.cfi_endproc
.LFE94:
	.size	Screen_getHeight, .-Screen_getHeight
	.globl	Screen_getBaseSurface
	.type	Screen_getBaseSurface, @function
Screen_getBaseSurface:
.LFB95:
	.cfi_startproc
	mov	rax, QWORD PTR BASE_SURFACE[rip]	#, BASE_SURFACE
	ret
	.cfi_endproc
.LFE95:
	.size	Screen_getBaseSurface, .-Screen_getBaseSurface
	.globl	Screen_getBaseSurfaceFormat
	.type	Screen_getBaseSurfaceFormat, @function
Screen_getBaseSurfaceFormat:
.LFB96:
	.cfi_startproc
	mov	rax, QWORD PTR BASE_SURFACE_FORMAT[rip]	#, BASE_SURFACE_FORMAT
	ret
	.cfi_endproc
.LFE96:
	.size	Screen_getBaseSurfaceFormat, .-Screen_getBaseSurfaceFormat
	.globl	Screen_buttonExitClicked
	.type	Screen_buttonExitClicked, @function
Screen_buttonExitClicked:
.LFB97:
	.cfi_startproc
	mov	BYTE PTR [rsi+120], 1	# screen_1(D)->has_exited,
	ret
	.cfi_endproc
.LFE97:
	.size	Screen_buttonExitClicked, .-Screen_buttonExitClicked
	.globl	Screen_flip
	.type	Screen_flip, @function
Screen_flip:
.LFB98:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rdi, QWORD PTR [rdi+72]	# this_1(D)->screen, this_1(D)->screen
	call	SDL_Flip	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Screen_flip, .-Screen_flip
	.globl	Screen_setOptions
	.type	Screen_setOptions, @function
Screen_setOptions:
.LFB102:
	.cfi_startproc
	cmp	BYTE PTR [rdi+16], 0	# op_1(D)->fullscreen,
	je	.L27	#,
	mov	DWORD PTR BASE_SURFACE_FLAGS[rip], -1073741823	# BASE_SURFACE_FLAGS,
	movzx	eax, WORD PTR [rdi+12]	# BASE_SURFACE_WIDTH.36, op_1(D)->screen_maxwidth
	test	ax, ax	# BASE_SURFACE_WIDTH.36
	je	.L28	#,
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH.36
	mov	WORD PTR BASE_SURFACE_MAXWIDTH[rip], ax	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_WIDTH.36
	jmp	.L29	#
.L28:
	movzx	eax, WORD PTR BASE_SURFACE_MAXWIDTH[rip]	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_MAXWIDTH
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, BASE_SURFACE_MAXWIDTH
.L29:
	movzx	eax, WORD PTR [rdi+14]	# BASE_SURFACE_HEIGHT.39, op_1(D)->screen_maxheight
	test	ax, ax	# BASE_SURFACE_HEIGHT.39
	je	.L30	#,
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT.39
	mov	WORD PTR BASE_SURFACE_MAXHEIGHT[rip], ax	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_HEIGHT.39
	jmp	.L31	#
.L30:
	movzx	eax, WORD PTR BASE_SURFACE_MAXHEIGHT[rip]	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_MAXHEIGHT
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, BASE_SURFACE_MAXHEIGHT
.L31:
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], 1	# BASE_SURFACE_FULLSCR,
	movzx	eax, WORD PTR [rdi+8]	# PREV_WIDTH.42, op_1(D)->screen_width
	test	ax, ax	# PREV_WIDTH.42
	je	.L32	#,
	mov	WORD PTR PREV_WIDTH[rip], ax	# PREV_WIDTH, PREV_WIDTH.42
.L32:
	movzx	eax, WORD PTR [rdi+10]	# PREV_HEIGHT.43, op_1(D)->screen_height
	test	ax, ax	# PREV_HEIGHT.43
	je	.L26	#,
	mov	WORD PTR PREV_HEIGHT[rip], ax	# PREV_HEIGHT, PREV_HEIGHT.43
	ret
.L27:
	mov	DWORD PTR BASE_SURFACE_FLAGS[rip], 1073741841	# BASE_SURFACE_FLAGS,
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], 0	# BASE_SURFACE_FULLSCR,
	movzx	eax, WORD PTR [rdi+8]	# PREV_WIDTH.42, op_1(D)->screen_width
	test	ax, ax	# PREV_WIDTH.42
	je	.L34	#,
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, PREV_WIDTH.42
	mov	WORD PTR PREV_WIDTH[rip], ax	# PREV_WIDTH, PREV_WIDTH.42
.L34:
	movzx	eax, WORD PTR [rdi+10]	# PREV_HEIGHT.43, op_1(D)->screen_height
	test	ax, ax	# PREV_HEIGHT.43
	je	.L35	#,
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, PREV_HEIGHT.43
	mov	WORD PTR PREV_HEIGHT[rip], ax	# PREV_HEIGHT, PREV_HEIGHT.43
.L35:
	movzx	eax, WORD PTR [rdi+12]	# BASE_SURFACE_WIDTH.36, op_1(D)->screen_maxwidth
	test	ax, ax	# BASE_SURFACE_WIDTH.36
	je	.L36	#,
	mov	WORD PTR BASE_SURFACE_MAXWIDTH[rip], ax	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_WIDTH.36
.L36:
	movzx	eax, WORD PTR [rdi+14]	# BASE_SURFACE_HEIGHT.39, op_1(D)->screen_maxheight
	test	ax, ax	# BASE_SURFACE_HEIGHT.39
	je	.L26	#,
	mov	WORD PTR BASE_SURFACE_MAXHEIGHT[rip], ax	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_HEIGHT.39
.L26:
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	Screen_setOptions, .-Screen_setOptions
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Screen:\n\twidget=%p\n\tc_widget=%u\n\tsize_widget=%u\n\tscreen=%p\n\tevent.type=%d\n\tpevent=%p(real %p)\n\tbackground.bg_widget=%p\n\tdrag_on=%d\n\tneed_reload=%d\n"
	.text
	.globl	Screen_toString
	.type	Screen_toString, @function
Screen_toString:
.LFB104:
	.cfi_startproc
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	mov	r9, QWORD PTR [rdi+48]	# this_1(D)->widget, this_1(D)->widget
	movzx	eax, BYTE PTR [rdi+124]	# this_1(D)->need_reload, this_1(D)->need_reload
	mov	DWORD PTR [rsp+64], eax	#, this_1(D)->need_reload
	movzx	eax, BYTE PTR [rdi+123]	# this_1(D)->drag_on, this_1(D)->drag_on
	mov	DWORD PTR [rsp+56], eax	#, this_1(D)->drag_on
	mov	rax, QWORD PTR [rdi+32]	# this_1(D)->background.bg_widget, this_1(D)->background.bg_widget
	mov	QWORD PTR [rsp+48], rax	#, this_1(D)->background.bg_widget
	lea	rax, [rdi+8]	# tmp78,
	mov	QWORD PTR [rsp+40], rax	#, tmp78
	mov	rax, QWORD PTR [rdi+80]	# this_1(D)->pevent, this_1(D)->pevent
	mov	QWORD PTR [rsp+32], rax	#, this_1(D)->pevent
	movzx	eax, BYTE PTR [rdi+8]	# this_1(D)->event.type, this_1(D)->event.type
	mov	DWORD PTR [rsp+24], eax	#, this_1(D)->event.type
	mov	rax, QWORD PTR [rdi+72]	# this_1(D)->screen, this_1(D)->screen
	mov	QWORD PTR [rsp+16], rax	#, this_1(D)->screen
	mov	eax, DWORD PTR [rdi+68]	# this_1(D)->size_widget, this_1(D)->size_widget
	mov	DWORD PTR [rsp+8], eax	#, this_1(D)->size_widget
	mov	eax, DWORD PTR [rdi+64]	# this_1(D)->c_widget, this_1(D)->c_widget
	mov	DWORD PTR [rsp], eax	#, this_1(D)->c_widget
	mov	r8d, OFFSET FLAT:.LC2	#,
	mov	ecx, 380	#,
	mov	edx, 1	#,
	mov	esi, 380	#,
	mov	edi, OFFSET FLAT:str_id.9030	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9030	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Screen_toString, .-Screen_toString
	.section	.rodata.str1.1
.LC3:
	.string	"SDL_NOEVENT"
.LC4:
	.string	"SDL_ACTIVEEVENT"
.LC5:
	.string	"SDL_KEYDOWN"
.LC6:
	.string	"SDL_KEYUP"
.LC7:
	.string	"SDL_MOUSEMOTION"
.LC8:
	.string	"SDL_MOUSEBUTTONDOWN"
.LC9:
	.string	"SDL_MOUSEBUTTONUP"
.LC10:
	.string	"SDL_JOYAXISMOTION"
.LC11:
	.string	"SDL_JOYBALLMOTION"
.LC12:
	.string	"SDL_JOYHATMOTION"
.LC13:
	.string	"SDL_JOYBUTTONDOWN"
.LC14:
	.string	"SDL_JOYBUTTONUP"
.LC15:
	.string	"SDL_QUIT"
.LC16:
	.string	"SDL_SYSWMEVENT"
.LC17:
	.string	"SDL_EVENT_RESERVEDA"
.LC18:
	.string	"SDL_EVENT_RESERVEDB"
.LC19:
	.string	"SDL_VIDEORESIZE"
.LC20:
	.string	"SDL_VIDEOEXPOSE"
.LC21:
	.string	"SDL_EVENT_RESERVED2"
.LC22:
	.string	"SDL_EVENT_RESERVED3"
.LC23:
	.string	"SDL_EVENT_RESERVED4"
.LC24:
	.string	"SDL_EVENT_RESERVED5"
.LC25:
	.string	"SDL_EVENT_RESERVED6"
.LC26:
	.string	"SDL_EVENT_RESERVED7"
.LC27:
	.string	"SDL_USEREVENT"
.LC28:
	.string	"SDL_NUMEVENTS"
.LC29:
	.string	"UNKNOWN"
	.text
	.globl	Screen_getEventName
	.type	Screen_getEventName, @function
Screen_getEventName:
.LFB105:
	.cfi_startproc
	cmp	dil, 32	# sdl_event_type,
	ja	.L40	#,
	movzx	edi, dil	# sdl_event_type, sdl_event_type
	jmp	[QWORD PTR .L67[0+rdi*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L67:
	.quad	.L41
	.quad	.L68
	.quad	.L43
	.quad	.L44
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
	.quad	.L40
	.quad	.L40
	.quad	.L40
	.quad	.L40
	.quad	.L40
	.quad	.L40
	.quad	.L40
	.quad	.L66
	.text
.L41:
	mov	eax, OFFSET FLAT:.LC3	# D.9413,
	ret
.L43:
	mov	eax, OFFSET FLAT:.LC5	# D.9413,
	ret
.L44:
	mov	eax, OFFSET FLAT:.LC6	# D.9413,
	ret
.L45:
	mov	eax, OFFSET FLAT:.LC7	# D.9413,
	ret
.L46:
	mov	eax, OFFSET FLAT:.LC8	# D.9413,
	ret
.L47:
	mov	eax, OFFSET FLAT:.LC9	# D.9413,
	ret
.L48:
	mov	eax, OFFSET FLAT:.LC10	# D.9413,
	ret
.L49:
	mov	eax, OFFSET FLAT:.LC11	# D.9413,
	ret
.L50:
	mov	eax, OFFSET FLAT:.LC12	# D.9413,
	ret
.L51:
	mov	eax, OFFSET FLAT:.LC13	# D.9413,
	ret
.L52:
	mov	eax, OFFSET FLAT:.LC14	# D.9413,
	ret
.L53:
	mov	eax, OFFSET FLAT:.LC15	# D.9413,
	ret
.L54:
	mov	eax, OFFSET FLAT:.LC16	# D.9413,
	ret
.L55:
	mov	eax, OFFSET FLAT:.LC17	# D.9413,
	ret
.L56:
	mov	eax, OFFSET FLAT:.LC18	# D.9413,
	ret
.L57:
	mov	eax, OFFSET FLAT:.LC19	# D.9413,
	ret
.L58:
	mov	eax, OFFSET FLAT:.LC20	# D.9413,
	ret
.L59:
	mov	eax, OFFSET FLAT:.LC21	# D.9413,
	ret
.L60:
	mov	eax, OFFSET FLAT:.LC22	# D.9413,
	ret
.L61:
	mov	eax, OFFSET FLAT:.LC23	# D.9413,
	ret
.L62:
	mov	eax, OFFSET FLAT:.LC24	# D.9413,
	ret
.L63:
	mov	eax, OFFSET FLAT:.LC25	# D.9413,
	ret
.L64:
	mov	eax, OFFSET FLAT:.LC26	# D.9413,
	ret
.L65:
	mov	eax, OFFSET FLAT:.LC27	# D.9413,
	ret
.L66:
	mov	eax, OFFSET FLAT:.LC28	# D.9413,
	ret
.L40:
	mov	eax, OFFSET FLAT:.LC29	# D.9413,
	ret
.L68:
	mov	eax, OFFSET FLAT:.LC4	# D.9413,
	ret
	.cfi_endproc
.LFE105:
	.size	Screen_getEventName, .-Screen_getEventName
	.globl	Screen_setBackgroundWidget
	.type	Screen_setBackgroundWidget, @function
Screen_setBackgroundWidget:
.LFB106:
	.cfi_startproc
	mov	QWORD PTR [rdi+32], rsi	# this_1(D)->background.bg_widget, bg_widget
	mov	BYTE PTR [rdi+44], dl	# this_1(D)->background.bg_mode, mode
	mov	BYTE PTR [rdi+124], 1	# this_1(D)->need_reload,
	test	rsi, rsi	# bg_widget
	je	.L73	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Screen_reloadBgWidget	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L73:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	Screen_setBackgroundWidget, .-Screen_setBackgroundWidget
	.globl	Screen_setBackgroundColor
	.type	Screen_setBackgroundColor, @function
Screen_setBackgroundColor:
.LFB107:
	.cfi_startproc
	mov	DWORD PTR [rdi+40], esi	# this_1(D)->background.bgcolor, rgb
	mov	BYTE PTR [rdi+124], 1	# this_1(D)->need_reload,
	ret
	.cfi_endproc
.LFE107:
	.size	Screen_setBackgroundColor, .-Screen_setBackgroundColor
	.section	.rodata.str1.1
.LC30:
	.string	"(no widgets)"
	.text
	.globl	Screen_lastWidgetToString
	.type	Screen_lastWidgetToString, @function
Screen_lastWidgetToString:
.LFB108:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+64]	# D.9398, this_2(D)->c_widget
	mov	eax, OFFSET FLAT:.LC30	# D.9396,
	test	edx, edx	# D.9398
	je	.L80	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	sub	edx, 1	# tmp70,
	mov	rax, QWORD PTR [rdi+48]	# this_2(D)->widget, this_2(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# *D.9405_9, *D.9405_9
	call	Widget_toString	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L80:
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	Screen_lastWidgetToString, .-Screen_lastWidgetToString
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"%20s:\tWithin context: e=%p, size_widget=%u\n"
	.align 8
.LC32:
	.string	"Screen_init[this=%p]: NOTICE: Starting SDL session.\n"
	.section	.rodata.str1.1
.LC33:
	.string	"SDL Widgets"
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"Screen_init: Screen_MainInit() failed with error: %s\n"
	.text
	.globl	Screen_new
	.type	Screen_new, @function
Screen_new:
.LFB110:
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
	jne	.L82	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9082	#,
	call	Static_nullThis2	#
	mov	r9d, ebp	#, size_widget
	mov	r8, r12	#, e
	mov	ecx, OFFSET FLAT:__FUNCTION__.9082	#,
	mov	edx, OFFSET FLAT:.LC31	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r12, r12	# e
	je	.L92	#,
	mov	DWORD PTR [r12], 2	# *e_4(D),
	jmp	.L92	#
.L82:
	mov	QWORD PTR [rdi], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9082	#,
	call	Static_printObj2	#
	lea	rax, [rbx+8]	# D.9335,
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
	mov	QWORD PTR [rbx+80], rax	# this_2(D)->pevent, D.9335
	mov	QWORD PTR [rbx+88], 0	# this_2(D)->key_up,
	mov	QWORD PTR [rbx+96], 0	# this_2(D)->toogle_drag_on,
	mov	QWORD PTR [rbx+104], 0	# this_2(D)->user_event,
	mov	QWORD PTR [rbx+112], 0	# this_2(D)->callback,
	mov	BYTE PTR [rbx+120], 0	# this_2(D)->has_exited,
	mov	BYTE PTR [rbx+121], 0	# this_2(D)->event_handled,
	mov	BYTE PTR [rbx+122], 0	# this_2(D)->pool_events,
	mov	BYTE PTR [rbx+123], 1	# this_2(D)->drag_on,
	mov	BYTE PTR [rbx+124], 0	# this_2(D)->need_reload,
	cmp	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	jne	.L84	#,
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC32	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edi, 65535	#,
	call	SDL_Init	#
	mov	r13d, 30	# ee,
	test	eax, eax	# D.9716
	js	.L85	#,
	movzx	esi, WORD PTR BASE_SURFACE_HEIGHT[rip]	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT
	movzx	edi, WORD PTR BASE_SURFACE_WIDTH[rip]	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH
	mov	r9d, 109	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, DWORD PTR BASE_SURFACE_FLAGS[rip]	#, BASE_SURFACE_FLAGS
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	mov	r13, rax	# sdl_screen,
	test	rax, rax	# sdl_screen
	jne	.L86	#,
	call	SDL_Quit	#
	mov	r13b, 31	#,
	jmp	.L85	#
.L86:
	.p2align 4,,5
	call	TTF_Init	#
	test	eax, eax	# D.9709
	.p2align 4,,3
	je	.L87	#,
	mov	edx, 118	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r13	#, sdl_screen
	call	wSDL_FreeSurface	#
	call	SDL_Quit	#
	mov	r13d, 32	# ee,
	jmp	.L85	#
.L87:
	mov	edi, 3	#,
	call	IMG_Init	#
	and	eax, 3	# tmp91,
	cmp	eax, 3	# tmp91,
	je	.L88	#,
	mov	edx, 127	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r13	#, sdl_screen
	call	wSDL_FreeSurface	#
	call	TTF_Quit	#
	call	SDL_Quit	#
	mov	r13d, 33	# ee,
	jmp	.L85	#
.L88:
	mov	esi, 0	#,
	mov	edi, OFFSET FLAT:.LC33	#,
	call	SDL_WM_SetCaption	#
	mov	edi, 0	#,
	call	time	#
	mov	edi, eax	#, D.9707
	call	srand	#
	mov	QWORD PTR BASE_SURFACE[rip], r13	# BASE_SURFACE, sdl_screen
	mov	rax, QWORD PTR [r13+8]	# sdl_screen_84->format, sdl_screen_84->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rax	# BASE_SURFACE_FORMAT, sdl_screen_84->format
	call	SDL_GetVideoInfo	#
	mov	QWORD PTR vinfo[rip], rax	# vinfo, vinfo.20
	jmp	.L84	#
.L90:
	mov	DWORD PTR [r12], r13d	# *e_4(D), ee
	jmp	.L92	#
.L84:
	mov	rax, QWORD PTR BASE_SURFACE[rip]	# BASE_SURFACE, BASE_SURFACE
	mov	QWORD PTR [rbx+72], rax	# this_2(D)->screen, BASE_SURFACE
	test	ebp, ebp	# size_widget
	je	.L89	#,
	mov	edi, ebp	# size_widget, size_widget
	mov	ecx, 371	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+48], rax	# this_2(D)->widget, D.9347
	mov	DWORD PTR [rbx+68], ebp	# this_2(D)->size_widget, size_widget
.L89:
	mov	BYTE PTR [rbx+124], 1	# this_2(D)->need_reload,
	add	DWORD PTR SCREEN_COUNT[rip], 1	# SCREEN_COUNT,
	jmp	.L92	#
.L85:
	mov	edi, r13d	#, ee
	call	perr_getName	#
	mov	rcx, rax	#, D.9341
	mov	edx, OFFSET FLAT:.LC34	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r12, r12	# e
	jne	.L90	#,
.L92:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	Screen_new, .-Screen_new
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"Screen_addWidget: Fatal error occured while creating/growing this.widget array. Method Static_growArray exited with error %s\n"
	.text
	.globl	Screen_addWidget
	.type	Screen_addWidget, @function
Screen_addWidget:
.LFB111:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# widget, widget
	mov	ecx, DWORD PTR [rdi+64]	# D.9310, this_2(D)->c_widget
	cmp	ecx, DWORD PTR [rdi+68]	# D.9310, this_2(D)->size_widget
	jb	.L95	#,
	lea	rdx, [rdi+68]	# tmp78,
	mov	rsi, QWORD PTR [rdi+48]	# this_2(D)->widget, this_2(D)->widget
	mov	QWORD PTR [rsp+8], 8	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 64	#,
	mov	r8d, ecx	#, D.9310
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L96	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.9319
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.9321, e
	jmp	.L97	#
.L96:
	mov	QWORD PTR [rbx+48], rax	# this_2(D)->widget, new_array
.L95:
	mov	edx, DWORD PTR [rbx+64]	# this_2(D)->c_widget, this_2(D)->c_widget
	mov	rax, QWORD PTR [rbx+48]	# this_2(D)->widget, this_2(D)->widget
	mov	QWORD PTR [rax+rdx*8], rbp	# *D.9324_18, widget
	add	DWORD PTR [rbx+64], 1	# this_2(D)->c_widget,
	mov	eax, 0	# D.9321,
.L97:
	mov	rbx, QWORD PTR [rsp+40]	#,
	mov	rbp, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	Screen_addWidget, .-Screen_addWidget
	.globl	Screen_draw
	.type	Screen_draw, @function
Screen_draw:
.LFB112:
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
	mov	rax, QWORD PTR [rdi+32]	# D.9283, this_4(D)->background.bg_widget
	test	rax, rax	# D.9283
	je	.L100	#,
	cmp	QWORD PTR [rax+88], 0	# D.9283_5->surf,
	je	.L100	#,
	cmp	BYTE PTR [rax+167], 0	# D.9283_5->visible,
	jne	.L101	#,
	jmp	.L100	#
.L107:
	mov	rax, QWORD PTR [rbx+32]	# D.9283, this_4(D)->background.bg_widget
	lea	rcx, [rax+96]	# tmp86,
	mov	rdx, QWORD PTR [rbx+72]	# this_4(D)->screen, this_4(D)->screen
	mov	rdi, QWORD PTR [rax+88]	# D.9283_16->surf, D.9283_16->surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
.L108:
	cmp	DWORD PTR [rbx+64], 0	# this_4(D)->c_widget,
	je	.L102	#,
	mov	ebp, 0	# i,
.L104:
	mov	edx, ebp	# i, i
	mov	rax, QWORD PTR [rbx+48]	# this_4(D)->widget, this_4(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# widget, *D.9301_25
	test	rdi, rdi	# widget
	je	.L103	#,
	cmp	QWORD PTR [rbx+56], rdi	# this_4(D)->widget_ontop, widget
	je	.L103	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, this
	call	Widget_draw	#
.L103:
	add	ebp, 1	# i,
	cmp	DWORD PTR [rbx+64], ebp	# this_4(D)->c_widget, i
	ja	.L104	#,
.L102:
	mov	rdi, QWORD PTR [rbx+56]	# widget, this_4(D)->widget_ontop
	test	rdi, rdi	# widget
	je	.L105	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, this
	call	Widget_draw	#
.L105:
	mov	rdi, QWORD PTR [rbx+72]	# this_4(D)->screen, this_4(D)->screen
	call	SDL_Flip	#
	mov	BYTE PTR [rbx+124], 0	# this_4(D)->need_reload,
	jmp	.L110	#
.L101:
	cmp	BYTE PTR [rdi+45], 0	# this_4(D)->background.fillcolor,
	jne	.L106	#,
	.p2align 4,,3
	jmp	.L107	#
.L100:
	mov	edx, DWORD PTR [rbx+40]	# this_4(D)->background.bgcolor, this_4(D)->background.bgcolor
	mov	rdi, QWORD PTR [rbx+72]	# this_4(D)->screen, this_4(D)->screen
	mov	esi, 0	#,
	call	SDL_FillRect	#
	jmp	.L108	#
.L106:
	mov	edx, DWORD PTR [rdi+40]	# this_4(D)->background.bgcolor, this_4(D)->background.bgcolor
	mov	rdi, QWORD PTR [rdi+72]	# this_4(D)->screen, this_4(D)->screen
	mov	esi, 0	#,
	call	SDL_FillRect	#
	jmp	.L107	#
.L110:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	Screen_draw, .-Screen_draw
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"Screen_switchFullscreen: Failed to switch to fullscreen mode: %s\n"
	.align 8
.LC37:
	.string	"Screen_switchFullscreen: Failed to switch to window mode: %s\n"
	.text
	.globl	Screen_switchFullscreen
	.type	Screen_switchFullscreen, @function
Screen_switchFullscreen:
.LFB103:
	.cfi_startproc
	cmp	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	je	.L119	#,
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
	jne	.L114	#,
	movzx	r13d, WORD PTR BASE_SURFACE_WIDTH[rip]	# prev_width, BASE_SURFACE_WIDTH
	movzx	r12d, WORD PTR BASE_SURFACE_HEIGHT[rip]	# prev_height, BASE_SURFACE_HEIGHT
	movzx	esi, WORD PTR BASE_SURFACE_MAXHEIGHT[rip]	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_MAXHEIGHT
	movzx	edi, WORD PTR BASE_SURFACE_MAXWIDTH[rip]	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_MAXWIDTH
	mov	r9d, 191	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, -1073741823	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_screen
	je	.L115	#,
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
	mov	edx, 204	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r14	#, old_surf
	call	wSDL_FreeSurface	#
	jmp	.L112	#
.L115:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9452
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L112	#
.L114:
	movzx	esi, WORD PTR PREV_HEIGHT[rip]	# PREV_HEIGHT, PREV_HEIGHT
	movzx	edi, WORD PTR PREV_WIDTH[rip]	# PREV_WIDTH, PREV_WIDTH
	mov	r9d, 213	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 1073741841	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_screen
	je	.L116	#,
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
	mov	edx, 224	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, old_surf
	call	wSDL_FreeSurface	#
	jmp	.L112	#
.L116:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9462
	mov	edx, OFFSET FLAT:.LC37	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L112:
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
.L119:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	Screen_switchFullscreen, .-Screen_switchFullscreen
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"Screen_MainStart:Screen > Exiting. Screen appears to be not initialized SDL_Surface *.screen==NULL\n"
	.align 8
.LC39:
	.string	"Screen_MainStart: Unhandled user event of code %d\n"
	.align 8
.LC40:
	.string	"Screen_MainStart[this=%p]: Failed to resize window: %s\n"
	.text
	.globl	Screen_MainStart
	.type	Screen_MainStart, @function
Screen_MainStart:
.LFB113:
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
	jne	.L121	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 99	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC38	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+120], 1	# this_2(D)->has_exited,
	jmp	.L120	#
.L121:
	mov	BYTE PTR [rdi+124], 1	# this_2(D)->need_reload,
	mov	BYTE PTR [rdi+120], 0	# this_2(D)->has_exited,
	call	Screen_reloadBgWidget	#
	lea	r12, [rbx+8]	# tmp126,
	jmp	.L123	#
.L146:
	cmp	BYTE PTR [rbx+124], 0	# this_2(D)->need_reload,
	je	.L151	#,
	mov	rdi, rbx	#, this
	call	Screen_draw	#
.L151:
	mov	BYTE PTR [rbx+121], 0	# this_2(D)->event_handled,
	cmp	BYTE PTR [rbx+122], 0	# this_2(D)->pool_events,
	je	.L126	#,
	mov	rdi, QWORD PTR [rbx+80]	# this_2(D)->pevent, this_2(D)->pevent
	call	SDL_PollEvent	#
	jmp	.L127	#
.L126:
	mov	rdi, QWORD PTR [rbx+80]	# this_2(D)->pevent, this_2(D)->pevent
	call	SDL_WaitEvent	#
.L127:
	movzx	eax, BYTE PTR [rbx+8]	# tmp108, this_2(D)->event.type
	sub	eax, 3	# tmp108,
	cmp	al, 21	# tmp108,
	ja	.L151	#,
	movzx	eax, al	# tmp110, tmp108
	jmp	[QWORD PTR .L133[0+rax*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L133:
	.quad	.L128
	.quad	.L129
	.quad	.L129
	.quad	.L129
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L130
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L131
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L151
	.quad	.L132
	.text
.L132:
	mov	rax, QWORD PTR [rbx+104]	# D.9196, this_2(D)->user_event
	test	rax, rax	# D.9196
	je	.L134	#,
	mov	rsi, r12	#, tmp126
	mov	rdi, rbx	#, this
	call	rax	# D.9196
	jmp	.L135	#
.L134:
	mov	ecx, DWORD PTR [rbx+12]	# this_2(D)->event.user.code, this_2(D)->event.user.code
	mov	edx, OFFSET FLAT:.LC39	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L135	#
.L130:
	mov	BYTE PTR [rbx+120], 1	# this_2(D)->has_exited,
	jmp	.L120	#
.L131:
	mov	esi, DWORD PTR [rbx+16]	# this_2(D)->event.resize.h, this_2(D)->event.resize.h
	mov	edi, DWORD PTR [rbx+12]	# this_2(D)->event.resize.w, this_2(D)->event.resize.w
	mov	r9d, 465	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 1073741841	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_surface
	je	.L136	#,
	mov	rbp, QWORD PTR BASE_SURFACE[rip]	# old_surface, BASE_SURFACE
	mov	edx, DWORD PTR [rbx+12]	# this_2(D)->event.resize.w, this_2(D)->event.resize.w
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], dx	# BASE_SURFACE_WIDTH, this_2(D)->event.resize.w
	mov	edx, DWORD PTR [rbx+16]	# this_2(D)->event.resize.h, this_2(D)->event.resize.h
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], dx	# BASE_SURFACE_HEIGHT, this_2(D)->event.resize.h
	mov	rdx, QWORD PTR [rbp+8]	# old_surface_20->format, old_surface_20->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rdx	# BASE_SURFACE_FORMAT, old_surface_20->format
	mov	QWORD PTR BASE_SURFACE[rip], rax	# BASE_SURFACE, sdl_surface
	cmp	QWORD PTR [rbx+32], 0	# this_2(D)->background.bg_widget,
	je	.L137	#,
	mov	rdi, rbx	#, this
	call	Screen_reloadBgWidget	#
.L137:
	mov	rdi, rbx	#, this
	call	Screen_draw	#
	mov	edx, 476	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, old_surface
	call	wSDL_FreeSurface	#
	jmp	.L135	#
.L136:
	call	SDL_GetError	#
	mov	r8, rax	# D.9214,
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC40	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L135	#
.L128:
	mov	eax, DWORD PTR [rbx+16]	# this_2(D)->event.key.keysym.sym, this_2(D)->event.key.keysym.sym
	cmp	eax, 282	# this_2(D)->event.key.keysym.sym,
	je	.L140	#,
	cmp	eax, 292	# this_2(D)->event.key.keysym.sym,
	je	.L141	#,
	cmp	eax, 27	# this_2(D)->event.key.keysym.sym,
	jne	.L138	#,
	mov	BYTE PTR [rbx+120], 1	# this_2(D)->has_exited,
	jmp	.L120	#
.L140:
	cmp	BYTE PTR [rbx+123], 0	# this_2(D)->drag_on,
	sete	BYTE PTR [rbx+123]	#, this_2(D)->drag_on
	mov	rax, QWORD PTR [rbx+96]	# D.9219, this_2(D)->toogle_drag_on
	test	rax, rax	# D.9219
	je	.L138	#,
	mov	rdi, rbx	#, this
	call	rax	# D.9219
	jmp	.L138	#
.L141:
	mov	rdi, rbx	#, this
	.p2align 4,,5
	call	Screen_switchFullscreen	#
.L138:
	mov	rax, QWORD PTR [rbx+88]	# D.9222, this_2(D)->key_up
	test	rax, rax	# D.9222
	je	.L135	#,
	mov	esi, DWORD PTR [rbx+16]	# this_2(D)->event.key.keysym.sym, this_2(D)->event.key.keysym.sym
	mov	rdi, rbx	#, this
	call	rax	# D.9222
	jmp	.L135	#
.L129:
	mov	rdi, QWORD PTR [rbx+56]	# D.9225, this_2(D)->widget_ontop
	test	rdi, rdi	# D.9225
	je	.L142	#,
	cmp	BYTE PTR [rdi+167], 0	# D.9225_39->visible,
	je	.L142	#,
	mov	rsi, rbx	#, this
	call	Widget_vmevent	#
	cmp	BYTE PTR [rbx+121], 0	# this_2(D)->event_handled,
	jne	.L135	#,
.L142:
	cmp	DWORD PTR [rbx+64], 0	# this_2(D)->c_widget,
	je	.L135	#,
	mov	ebp, 0	# i,
.L144:
	mov	edx, ebp	# i, i
	mov	rax, QWORD PTR [rbx+48]	# this_2(D)->widget, this_2(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# widget, *D.9236_49
	test	rdi, rdi	# widget
	je	.L143	#,
	mov	rsi, rbx	#, this
	call	Widget_vmevent	#
	cmp	BYTE PTR [rbx+121], 0	# this_2(D)->event_handled,
	jne	.L135	#,
.L143:
	add	ebp, 1	# i,
	cmp	DWORD PTR [rbx+64], ebp	# this_2(D)->c_widget, i
	ja	.L144	#,
.L135:
	cmp	BYTE PTR [rbx+120], 0	# this_2(D)->has_exited,
	jne	.L120	#,
	cmp	BYTE PTR [rbx+124], 0	# this_2(D)->need_reload,
	je	.L151	#,
.L123:
	cmp	BYTE PTR [rbx+120], 0	# this_2(D)->has_exited,
	je	.L146	#,
.L120:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	Screen_MainStart, .-Screen_MainStart
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"Screen_CallbackCreate[this=%p]: Callback object already exists: this->callback=%p\n"
	.align 8
.LC42:
	.string	"Screen_CallbackCreate[this=%p]: Failed to allocate this->callback object\n"
	.text
	.globl	Screen_CallbackCreate
	.type	Screen_CallbackCreate, @function
Screen_CallbackCreate:
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
	mov	r8, QWORD PTR [rdi+112]	# D.9171, this_1(D)->callback
	test	r8, r8	# D.9171
	je	.L154	#,
	mov	rcx, rdi	#, this
	mov	edx, OFFSET FLAT:.LC41	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L153	#
.L154:
	mov	rbp, rsi	# click_handler, click_handler
	mov	r12d, edx	# size, size
	mov	rax, QWORD PTR Callback_class[rip]	# Callback_class, Callback_class
	mov	rdi, QWORD PTR [rax+8]	# Callback_class.2_5->size, Callback_class.2_5->size
	mov	edx, 535	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wmalloc	#
	mov	edx, r12d	#, size
	mov	rsi, rbp	#, click_handler
	mov	rdi, rax	#, D.9178
	call	Callback_new	#
	mov	QWORD PTR [rbx+112], rax	# this_1(D)->callback, D.9179
	test	rax, rax	# D.9179
	jne	.L153	#,
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC42	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
.L153:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	Screen_CallbackCreate, .-Screen_CallbackCreate
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"Screen_addCParam: Passed NULL this object\n"
	.align 8
.LC44:
	.string	"Screen_addCParam: Callback array doesn't exist. To add cparameters first create Callback array with Screen_CallbackCreate()\n"
	.align 8
.LC45:
	.string	"Screen_addCParam: Failed to add parameter. Callback_addParameter exited with error %s\n"
	.text
	.globl	Screen_addCParam
	.type	Screen_addCParam, @function
Screen_addCParam:
.LFB115:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	test	rdi, rdi	# this
	jne	.L158	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 42	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC43	#,
	call	fwrite	#
	mov	ebx, 1	# e,
	jmp	.L159	#
.L158:
	mov	rdi, QWORD PTR [rdi+112]	# D.9162, this_2(D)->callback
	test	rdi, rdi	# D.9162
	jne	.L160	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 124	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC44	#,
	call	fwrite	#
	mov	ebx, 21	# e,
	jmp	.L159	#
.L160:
	call	Callback_addParameter	#
	mov	ebx, eax	# e,
	test	eax, eax	# e
	je	.L159	#,
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.9167
	mov	edx, OFFSET FLAT:.LC45	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L159:
	mov	eax, ebx	#, e
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	Screen_addCParam, .-Screen_addCParam
	.globl	Screen_getCParam
	.type	Screen_getCParam, @function
Screen_getCParam:
.LFB116:
	.cfi_startproc
	mov	rdi, QWORD PTR [rdi+112]	# D.9153, this_2(D)->callback
	mov	eax, 0	# t,
	test	rdi, rdi	# D.9153
	je	.L167	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Callback_getCParam	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L167:
	rep
	ret
	.cfi_endproc
.LFE116:
	.size	Screen_getCParam, .-Screen_getCParam
	.globl	Screen_class
	.data
	.align 8
	.type	Screen_class, @object
	.size	Screen_class, 8
Screen_class:
	.quad	type
	.local	vinfo
	.comm	vinfo,8,8
	.section	.rodata.str1.1
.LC46:
	.string	"Screen"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	128
# name:
	.quad	.LC46
	.local	BASE_SURFACE
	.comm	BASE_SURFACE,8,8
	.local	BASE_SURFACE_FORMAT
	.comm	BASE_SURFACE_FORMAT,8,8
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
	.local	str_id.9030
	.comm	str_id.9030,380,32
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9076, @object
	.size	__FUNCTION__.9076, 16
__FUNCTION__.9076:
	.string	"Screen_vdestroy"
	.local	SCREEN_COUNT
	.comm	SCREEN_COUNT,4,4
	.type	__FUNCTION__.9082, @object
	.size	__FUNCTION__.9082, 11
__FUNCTION__.9082:
	.string	"Screen_new"
	.data
	.align 8
	.type	vtable, @object
	.size	vtable, 8
vtable:
	.quad	Screen_vdestroy
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
