	.file	"Screen.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Screen.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Screen.asm
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
.LFB95:
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
	mov	rdi, QWORD PTR [rdi+40]	# D.8975, this_1(D)->background.bg_widget
	test	rdi, rdi	# D.8975
	je	.L1	#,
	movzx	r13d, WORD PTR BASE_SURFACE_WIDTH[rip]	# sw, BASE_SURFACE_WIDTH
	movzx	ebp, WORD PTR BASE_SURFACE_HEIGHT[rip]	# sh, BASE_SURFACE_HEIGHT
	movzx	r14d, WORD PTR [rdi+60]	# w, D.8975_3->pos.w
	movzx	r12d, WORD PTR [rdi+62]	# h, D.8975_3->pos.h
	movzx	eax, BYTE PTR [rbx+52]	# D.8978, this_1(D)->background.bg_mode
	test	al, al	# D.8978
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
	mov	rdi, QWORD PTR [rbx+40]	# this_1(D)->background.bg_widget, this_1(D)->background.bg_widget
	mov	edx, 0	#,
	mov	esi, 0	#,
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+53], 0	# this_1(D)->background.fillcolor,
	jmp	.L1	#
.L3:
	cmp	al, 1	# D.8978,
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
	mov	BYTE PTR [rbx+53], 1	# this_1(D)->background.fillcolor,
	jmp	.L1	#
.L6:
	mov	BYTE PTR [rbx+53], 0	# this_1(D)->background.fillcolor,
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
.LFE95:
	.size	Screen_reloadBgWidget, .-Screen_reloadBgWidget
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Screen.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Screen_destroy: NOTICE: Ending SDL session.\n"
	.text
	.type	Screen_vdestroy, @function
Screen_vdestroy:
.LFB106:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+120]	# D.9112, MEM[(struct Screen *)vthis_1(D)].callback
	test	rdi, rdi	# D.9112
	je	.L12	#,
	call	delete	#
	mov	edx, 241	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rax	#, D.9115
	call	wfree	#
	mov	QWORD PTR [rbx+120], 0	# MEM[(struct Screen *)vthis_1(D)].callback,
.L12:
	mov	rdi, QWORD PTR [rbx+56]	# MEM[(struct Screen *)vthis_1(D)].widget, MEM[(struct Screen *)vthis_1(D)].widget
	mov	edx, 246	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+56], 0	# MEM[(struct Screen *)vthis_1(D)].widget,
	mov	BYTE PTR [rbx+132], 0	# MEM[(struct Screen *)vthis_1(D)].need_reload,
	mov	eax, DWORD PTR SCREEN_COUNT[rip]	# SCREEN_COUNT.23, SCREEN_COUNT
	sub	eax, 1	# SCREEN_COUNT.23,
	mov	DWORD PTR SCREEN_COUNT[rip], eax	# SCREEN_COUNT, SCREEN_COUNT.23
	test	eax, eax	# SCREEN_COUNT.23
	jne	.L13	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 44	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	edx, 224	#,
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
.L13:
	mov	rdi, rbx	#, vthis
	call	Object_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,1
	ret
	.cfi_endproc
.LFE106:
	.size	Screen_vdestroy, .-Screen_vdestroy
	.globl	Screen_getWidth
	.type	Screen_getWidth, @function
Screen_getWidth:
.LFB93:
	.cfi_startproc
	mov	rax, QWORD PTR vinfo[rip]	# vinfo.46, vinfo
	test	rax, rax	# vinfo.46
	je	.L17	#,
	movzx	eax, WORD PTR [rax+16]	# D.9229, vinfo.46_2->current_w
	ret
.L17:
	mov	eax, 0	# D.9229,
	ret
	.cfi_endproc
.LFE93:
	.size	Screen_getWidth, .-Screen_getWidth
	.globl	Screen_getHeight
	.type	Screen_getHeight, @function
Screen_getHeight:
.LFB94:
	.cfi_startproc
	mov	rax, QWORD PTR vinfo[rip]	# vinfo.44, vinfo
	test	rax, rax	# vinfo.44
	je	.L20	#,
	movzx	eax, WORD PTR [rax+20]	# D.9221, vinfo.44_2->current_h
	ret
.L20:
	mov	eax, 0	# D.9221,
	ret
	.cfi_endproc
.LFE94:
	.size	Screen_getHeight, .-Screen_getHeight
	.globl	Screen_setOptions
	.type	Screen_setOptions, @function
Screen_setOptions:
.LFB96:
	.cfi_startproc
	cmp	BYTE PTR [rdi+16], 0	# op_1(D)->fullscreen,
	je	.L22	#,
	mov	DWORD PTR BASE_SURFACE_FLAGS[rip], -1073741823	# BASE_SURFACE_FLAGS,
	movzx	eax, WORD PTR [rdi+12]	# BASE_SURFACE_WIDTH.35, op_1(D)->screen_maxwidth
	test	ax, ax	# BASE_SURFACE_WIDTH.35
	je	.L23	#,
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH.35
	mov	WORD PTR BASE_SURFACE_MAXWIDTH[rip], ax	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_WIDTH.35
	jmp	.L24	#
.L23:
	movzx	eax, WORD PTR BASE_SURFACE_MAXWIDTH[rip]	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_MAXWIDTH
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, BASE_SURFACE_MAXWIDTH
.L24:
	movzx	eax, WORD PTR [rdi+14]	# BASE_SURFACE_HEIGHT.38, op_1(D)->screen_maxheight
	test	ax, ax	# BASE_SURFACE_HEIGHT.38
	je	.L25	#,
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT.38
	mov	WORD PTR BASE_SURFACE_MAXHEIGHT[rip], ax	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_HEIGHT.38
	jmp	.L26	#
.L25:
	movzx	eax, WORD PTR BASE_SURFACE_MAXHEIGHT[rip]	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_MAXHEIGHT
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, BASE_SURFACE_MAXHEIGHT
.L26:
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], 1	# BASE_SURFACE_FULLSCR,
	movzx	eax, WORD PTR [rdi+8]	# PREV_WIDTH.41, op_1(D)->screen_width
	test	ax, ax	# PREV_WIDTH.41
	je	.L27	#,
	mov	WORD PTR PREV_WIDTH[rip], ax	# PREV_WIDTH, PREV_WIDTH.41
.L27:
	movzx	eax, WORD PTR [rdi+10]	# PREV_HEIGHT.42, op_1(D)->screen_height
	test	ax, ax	# PREV_HEIGHT.42
	je	.L21	#,
	mov	WORD PTR PREV_HEIGHT[rip], ax	# PREV_HEIGHT, PREV_HEIGHT.42
	ret
.L22:
	mov	DWORD PTR BASE_SURFACE_FLAGS[rip], 1073741841	# BASE_SURFACE_FLAGS,
	mov	BYTE PTR BASE_SURFACE_FULLSCR[rip], 0	# BASE_SURFACE_FULLSCR,
	movzx	eax, WORD PTR [rdi+8]	# PREV_WIDTH.41, op_1(D)->screen_width
	test	ax, ax	# PREV_WIDTH.41
	je	.L29	#,
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], ax	# BASE_SURFACE_WIDTH, PREV_WIDTH.41
	mov	WORD PTR PREV_WIDTH[rip], ax	# PREV_WIDTH, PREV_WIDTH.41
.L29:
	movzx	eax, WORD PTR [rdi+10]	# PREV_HEIGHT.42, op_1(D)->screen_height
	test	ax, ax	# PREV_HEIGHT.42
	je	.L30	#,
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], ax	# BASE_SURFACE_HEIGHT, PREV_HEIGHT.42
	mov	WORD PTR PREV_HEIGHT[rip], ax	# PREV_HEIGHT, PREV_HEIGHT.42
.L30:
	movzx	eax, WORD PTR [rdi+12]	# BASE_SURFACE_WIDTH.35, op_1(D)->screen_maxwidth
	test	ax, ax	# BASE_SURFACE_WIDTH.35
	je	.L31	#,
	mov	WORD PTR BASE_SURFACE_MAXWIDTH[rip], ax	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_WIDTH.35
.L31:
	movzx	eax, WORD PTR [rdi+14]	# BASE_SURFACE_HEIGHT.38, op_1(D)->screen_maxheight
	test	ax, ax	# BASE_SURFACE_HEIGHT.38
	je	.L21	#,
	mov	WORD PTR BASE_SURFACE_MAXHEIGHT[rip], ax	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_HEIGHT.38
.L21:
	rep
	ret
	.cfi_endproc
.LFE96:
	.size	Screen_setOptions, .-Screen_setOptions
	.globl	Screen_getBaseSurface
	.type	Screen_getBaseSurface, @function
Screen_getBaseSurface:
.LFB98:
	.cfi_startproc
	mov	rax, QWORD PTR BASE_SURFACE[rip]	#, BASE_SURFACE
	ret
	.cfi_endproc
.LFE98:
	.size	Screen_getBaseSurface, .-Screen_getBaseSurface
	.globl	Screen_getBaseSurfaceFormat
	.type	Screen_getBaseSurfaceFormat, @function
Screen_getBaseSurfaceFormat:
.LFB99:
	.cfi_startproc
	mov	rax, QWORD PTR BASE_SURFACE_FORMAT[rip]	#, BASE_SURFACE_FORMAT
	ret
	.cfi_endproc
.LFE99:
	.size	Screen_getBaseSurfaceFormat, .-Screen_getBaseSurfaceFormat
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Screen:\n\twidget=%p\n\tc_widget=%u\n\tsize_widget=%u\n\tscreen=%p\n\tevent.type=%d\n\tpevent=%p(real %p)\n\tbackground.bg_widget=%p\n\tdrag_on=%d\n\tneed_reload=%d\n"
	.text
	.globl	Screen_toString
	.type	Screen_toString, @function
Screen_toString:
.LFB100:
	.cfi_startproc
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	mov	r9, QWORD PTR [rdi+56]	# screen_1(D)->widget, screen_1(D)->widget
	movzx	eax, BYTE PTR [rdi+132]	# screen_1(D)->need_reload, screen_1(D)->need_reload
	mov	DWORD PTR [rsp+64], eax	#, screen_1(D)->need_reload
	movzx	eax, BYTE PTR [rdi+131]	# screen_1(D)->drag_on, screen_1(D)->drag_on
	mov	DWORD PTR [rsp+56], eax	#, screen_1(D)->drag_on
	mov	rax, QWORD PTR [rdi+40]	# screen_1(D)->background.bg_widget, screen_1(D)->background.bg_widget
	mov	QWORD PTR [rsp+48], rax	#, screen_1(D)->background.bg_widget
	lea	rax, [rdi+16]	# tmp78,
	mov	QWORD PTR [rsp+40], rax	#, tmp78
	mov	rax, QWORD PTR [rdi+88]	# screen_1(D)->pevent, screen_1(D)->pevent
	mov	QWORD PTR [rsp+32], rax	#, screen_1(D)->pevent
	movzx	eax, BYTE PTR [rdi+16]	# screen_1(D)->event.type, screen_1(D)->event.type
	mov	DWORD PTR [rsp+24], eax	#, screen_1(D)->event.type
	mov	rax, QWORD PTR [rdi+80]	# screen_1(D)->screen, screen_1(D)->screen
	mov	QWORD PTR [rsp+16], rax	#, screen_1(D)->screen
	mov	eax, DWORD PTR [rdi+76]	# screen_1(D)->size_widget, screen_1(D)->size_widget
	mov	DWORD PTR [rsp+8], eax	#, screen_1(D)->size_widget
	mov	eax, DWORD PTR [rdi+72]	# screen_1(D)->c_widget, screen_1(D)->c_widget
	mov	DWORD PTR [rsp], eax	#, screen_1(D)->c_widget
	mov	r8d, OFFSET FLAT:.LC2	#,
	mov	ecx, 380	#,
	mov	edx, 1	#,
	mov	esi, 380	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
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
.LFB101:
	.cfi_startproc
	cmp	dil, 32	# sdl_event_type,
	ja	.L37	#,
	movzx	edi, dil	# sdl_event_type, sdl_event_type
	jmp	[QWORD PTR .L64[0+rdi*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L64:
	.quad	.L38
	.quad	.L65
	.quad	.L40
	.quad	.L41
	.quad	.L42
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
	.quad	.L37
	.quad	.L37
	.quad	.L37
	.quad	.L37
	.quad	.L37
	.quad	.L37
	.quad	.L37
	.quad	.L63
	.text
.L38:
	mov	eax, OFFSET FLAT:.LC3	# D.9137,
	ret
.L40:
	mov	eax, OFFSET FLAT:.LC5	# D.9137,
	ret
.L41:
	mov	eax, OFFSET FLAT:.LC6	# D.9137,
	ret
.L42:
	mov	eax, OFFSET FLAT:.LC7	# D.9137,
	ret
.L43:
	mov	eax, OFFSET FLAT:.LC8	# D.9137,
	ret
.L44:
	mov	eax, OFFSET FLAT:.LC9	# D.9137,
	ret
.L45:
	mov	eax, OFFSET FLAT:.LC10	# D.9137,
	ret
.L46:
	mov	eax, OFFSET FLAT:.LC11	# D.9137,
	ret
.L47:
	mov	eax, OFFSET FLAT:.LC12	# D.9137,
	ret
.L48:
	mov	eax, OFFSET FLAT:.LC13	# D.9137,
	ret
.L49:
	mov	eax, OFFSET FLAT:.LC14	# D.9137,
	ret
.L50:
	mov	eax, OFFSET FLAT:.LC15	# D.9137,
	ret
.L51:
	mov	eax, OFFSET FLAT:.LC16	# D.9137,
	ret
.L52:
	mov	eax, OFFSET FLAT:.LC17	# D.9137,
	ret
.L53:
	mov	eax, OFFSET FLAT:.LC18	# D.9137,
	ret
.L54:
	mov	eax, OFFSET FLAT:.LC19	# D.9137,
	ret
.L55:
	mov	eax, OFFSET FLAT:.LC20	# D.9137,
	ret
.L56:
	mov	eax, OFFSET FLAT:.LC21	# D.9137,
	ret
.L57:
	mov	eax, OFFSET FLAT:.LC22	# D.9137,
	ret
.L58:
	mov	eax, OFFSET FLAT:.LC23	# D.9137,
	ret
.L59:
	mov	eax, OFFSET FLAT:.LC24	# D.9137,
	ret
.L60:
	mov	eax, OFFSET FLAT:.LC25	# D.9137,
	ret
.L61:
	mov	eax, OFFSET FLAT:.LC26	# D.9137,
	ret
.L62:
	mov	eax, OFFSET FLAT:.LC27	# D.9137,
	ret
.L63:
	mov	eax, OFFSET FLAT:.LC28	# D.9137,
	ret
.L37:
	mov	eax, OFFSET FLAT:.LC29	# D.9137,
	ret
.L65:
	mov	eax, OFFSET FLAT:.LC4	# D.9137,
	ret
	.cfi_endproc
.LFE101:
	.size	Screen_getEventName, .-Screen_getEventName
	.globl	Screen_setBackgroundWidget
	.type	Screen_setBackgroundWidget, @function
Screen_setBackgroundWidget:
.LFB102:
	.cfi_startproc
	mov	QWORD PTR [rdi+40], rsi	# screen_1(D)->background.bg_widget, bg_widget
	mov	BYTE PTR [rdi+52], dl	# screen_1(D)->background.bg_mode, mode
	mov	BYTE PTR [rdi+132], 1	# screen_1(D)->need_reload,
	test	rsi, rsi	# bg_widget
	je	.L70	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Screen_reloadBgWidget	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L70:
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	Screen_setBackgroundWidget, .-Screen_setBackgroundWidget
	.globl	Screen_setBackgroundColor
	.type	Screen_setBackgroundColor, @function
Screen_setBackgroundColor:
.LFB103:
	.cfi_startproc
	mov	DWORD PTR [rdi+48], esi	# screen_1(D)->background.bgcolor, rgb
	mov	BYTE PTR [rdi+132], 1	# screen_1(D)->need_reload,
	ret
	.cfi_endproc
.LFE103:
	.size	Screen_setBackgroundColor, .-Screen_setBackgroundColor
	.globl	Screen_lastWidgetToString
	.type	Screen_lastWidgetToString, @function
Screen_lastWidgetToString:
.LFB104:
	.cfi_startproc
	mov	edx, DWORD PTR [rdi+72]	# D.9122, screen_2(D)->c_widget
	mov	eax, 0	# D.9125,
	test	edx, edx	# D.9122
	je	.L77	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	sub	edx, 1	# tmp70,
	mov	rax, QWORD PTR [rdi+56]	# screen_2(D)->widget, screen_2(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# *D.9130_10, *D.9130_10
	call	Widget_toString	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L77:
	rep
	ret
	.cfi_endproc
.LFE104:
	.size	Screen_lastWidgetToString, .-Screen_lastWidgetToString
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"Screen_new: Passed NULL this pointer. e=%p, size_widget=%u\n"
	.section	.rodata.str1.1
.LC31:
	.string	"Screen"
	.section	.rodata.str1.8
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
.LFB108:
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
	jne	.L79	#,
	mov	r8d, edx	#, size_widget
	mov	rcx, rsi	#, e
	mov	edx, OFFSET FLAT:.LC30	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r12, r12	# e
	je	.L89	#,
	mov	DWORD PTR [r12], 2	# *e_4(D),
	jmp	.L89	#
.L79:
	mov	edx, OFFSET FLAT:.LC31	#,
	mov	esi, OFFSET FLAT:Screen_vdestroy	#,
	call	Object_init_type	#
	mov	QWORD PTR [rbx+80], 0	# this_2(D)->screen,
	mov	BYTE PTR [rbx+131], 1	# this_2(D)->drag_on,
	mov	DWORD PTR [rbx+72], 0	# this_2(D)->c_widget,
	mov	QWORD PTR [rbx+56], 0	# this_2(D)->widget,
	mov	QWORD PTR [rbx+40], 0	# this_2(D)->background.bg_widget,
	mov	DWORD PTR [rbx+48], 0	# this_2(D)->background.bgcolor,
	mov	BYTE PTR [rbx+52], 0	# this_2(D)->background.bg_mode,
	mov	BYTE PTR [rbx+53], 1	# this_2(D)->background.fillcolor,
	mov	QWORD PTR [rbx+96], 0	# this_2(D)->key_up,
	mov	QWORD PTR [rbx+104], 0	# this_2(D)->toogle_drag_on,
	mov	QWORD PTR [rbx+112], 0	# this_2(D)->user_event,
	mov	QWORD PTR [rbx+120], 0	# this_2(D)->callback,
	mov	BYTE PTR [rbx+132], 0	# this_2(D)->need_reload,
	mov	DWORD PTR [rbx+76], 0	# this_2(D)->size_widget,
	lea	rax, [rbx+16]	# tmp89,
	mov	QWORD PTR [rbx+88], rax	# this_2(D)->pevent, tmp89
	mov	BYTE PTR [rbx+129], 0	# this_2(D)->event_handled,
	mov	BYTE PTR [rbx+128], 0	# this_2(D)->has_exited,
	mov	QWORD PTR [rbx+64], 0	# this_2(D)->widget_ontop,
	mov	BYTE PTR [rbx+130], 0	# this_2(D)->pool_events,
	cmp	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	jne	.L81	#,
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC32	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edi, 65535	#,
	call	SDL_Init	#
	mov	r13d, 30	# ee,
	test	eax, eax	# D.9420
	js	.L82	#,
	movzx	esi, WORD PTR BASE_SURFACE_HEIGHT[rip]	# BASE_SURFACE_HEIGHT, BASE_SURFACE_HEIGHT
	movzx	edi, WORD PTR BASE_SURFACE_WIDTH[rip]	# BASE_SURFACE_WIDTH, BASE_SURFACE_WIDTH
	mov	r9d, 267	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, DWORD PTR BASE_SURFACE_FLAGS[rip]	#, BASE_SURFACE_FLAGS
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	mov	r13, rax	# sdl_screen,
	test	rax, rax	# sdl_screen
	jne	.L83	#,
	call	SDL_Quit	#
	mov	r13b, 31	#,
	jmp	.L82	#
.L83:
	.p2align 4,,5
	call	TTF_Init	#
	test	eax, eax	# D.9413
	.p2align 4,,3
	je	.L84	#,
	mov	edx, 276	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r13	#, sdl_screen
	call	wSDL_FreeSurface	#
	call	SDL_Quit	#
	mov	r13d, 32	# ee,
	jmp	.L82	#
.L84:
	mov	edi, 3	#,
	call	IMG_Init	#
	and	eax, 3	# tmp92,
	cmp	eax, 3	# tmp92,
	je	.L85	#,
	mov	edx, 285	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r13	#, sdl_screen
	call	wSDL_FreeSurface	#
	call	TTF_Quit	#
	call	SDL_Quit	#
	mov	r13d, 33	# ee,
	jmp	.L82	#
.L85:
	mov	esi, 0	#,
	mov	edi, OFFSET FLAT:.LC33	#,
	call	SDL_WM_SetCaption	#
	mov	edi, 0	#,
	call	time	#
	mov	edi, eax	#, D.9411
	call	srand	#
	mov	QWORD PTR BASE_SURFACE[rip], r13	# BASE_SURFACE, sdl_screen
	mov	rax, QWORD PTR [r13+8]	# sdl_screen_77->format, sdl_screen_77->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rax	# BASE_SURFACE_FORMAT, sdl_screen_77->format
	call	SDL_GetVideoInfo	#
	mov	QWORD PTR vinfo[rip], rax	# vinfo, vinfo.20
	jmp	.L81	#
.L87:
	mov	DWORD PTR [r12], r13d	# *e_4(D), ee
	jmp	.L89	#
.L81:
	mov	rax, QWORD PTR BASE_SURFACE[rip]	# BASE_SURFACE, BASE_SURFACE
	mov	QWORD PTR [rbx+80], rax	# this_2(D)->screen, BASE_SURFACE
	test	ebp, ebp	# size_widget
	je	.L86	#,
	mov	edi, ebp	# size_widget, size_widget
	mov	ecx, 349	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+56], rax	# this_2(D)->widget, D.9082
	mov	DWORD PTR [rbx+76], ebp	# this_2(D)->size_widget, size_widget
.L86:
	mov	BYTE PTR [rbx+132], 1	# this_2(D)->need_reload,
	add	DWORD PTR SCREEN_COUNT[rip], 1	# SCREEN_COUNT,
	jmp	.L89	#
.L82:
	mov	edi, r13d	#, ee
	call	perr_getName	#
	mov	rcx, rax	#, D.9076
	mov	edx, OFFSET FLAT:.LC34	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	test	r12, r12	# e
	jne	.L87	#,
.L89:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	Screen_new, .-Screen_new
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"Screen_addWidget: Fatal error occured while creating/growing screen.widget array. Method Static_growArray exited with error %s\n"
	.text
	.globl	Screen_addWidget
	.type	Screen_addWidget, @function
Screen_addWidget:
.LFB109:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# screen, screen
	mov	rbp, rsi	# widget, widget
	mov	ecx, DWORD PTR [rdi+72]	# D.9040, screen_2(D)->c_widget
	cmp	ecx, DWORD PTR [rdi+76]	# D.9040, screen_2(D)->size_widget
	jb	.L92	#,
	lea	rdx, [rdi+76]	# tmp78,
	mov	rsi, QWORD PTR [rdi+56]	# screen_2(D)->widget, screen_2(D)->widget
	mov	QWORD PTR [rsp+8], 8	#,
	mov	DWORD PTR [rsp], -1	#,
	mov	r9d, 64	#,
	mov	r8d, ecx	#, D.9040
	lea	rdi, [rsp+28]	#,
	call	Static_growArray	#
	test	rax, rax	# new_array
	jne	.L93	#,
	mov	edi, DWORD PTR [rsp+28]	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.9049
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, DWORD PTR [rsp+28]	# D.9051, e
	jmp	.L94	#
.L93:
	mov	QWORD PTR [rbx+56], rax	# screen_2(D)->widget, new_array
.L92:
	mov	edx, DWORD PTR [rbx+72]	# screen_2(D)->c_widget, screen_2(D)->c_widget
	mov	rax, QWORD PTR [rbx+56]	# screen_2(D)->widget, screen_2(D)->widget
	mov	QWORD PTR [rax+rdx*8], rbp	# *D.9054_18, widget
	add	DWORD PTR [rbx+72], 1	# screen_2(D)->c_widget,
	mov	eax, 0	# D.9051,
.L94:
	mov	rbx, QWORD PTR [rsp+40]	#,
	mov	rbp, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE109:
	.size	Screen_addWidget, .-Screen_addWidget
	.globl	Screen_draw
	.type	Screen_draw, @function
Screen_draw:
.LFB110:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbx, rdi	# screen, screen
	mov	rax, QWORD PTR [rdi+40]	# D.9006, screen_4(D)->background.bg_widget
	test	rax, rax	# D.9006
	je	.L97	#,
	cmp	QWORD PTR [rax+48], 0	# D.9006_5->surf,
	je	.L97	#,
	cmp	BYTE PTR [rax+130], 0	# D.9006_5->visible,
	jne	.L98	#,
	jmp	.L97	#
.L106:
	mov	rax, QWORD PTR [rbx+40]	# D.9006, screen_4(D)->background.bg_widget
	lea	rcx, [rax+56]	# tmp88,
	mov	rdx, QWORD PTR [rbx+80]	# screen_4(D)->screen, screen_4(D)->screen
	mov	rdi, QWORD PTR [rax+48]	# D.9006_16->surf, D.9006_16->surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
.L107:
	cmp	DWORD PTR [rbx+72], 0	# screen_4(D)->c_widget,
	je	.L99	#,
	mov	ebp, 0	# i,
.L102:
	mov	edx, ebp	# i, i
	mov	rax, QWORD PTR [rbx+56]	# screen_4(D)->widget, screen_4(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# widget, *D.9024_25
	test	rdi, rdi	# widget
	je	.L100	#,
	cmp	QWORD PTR [rbx+64], rdi	# screen_4(D)->widget_ontop, widget
	je	.L100	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_26->type,
	jne	.L101	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, screen
	call	Container_draw	#
	jmp	.L100	#
.L101:
	mov	edx, 0	#,
	mov	rsi, rbx	#, screen
	call	Widget_draw	#
.L100:
	add	ebp, 1	# i,
	cmp	DWORD PTR [rbx+72], ebp	# screen_4(D)->c_widget, i
	ja	.L102	#,
.L99:
	mov	rdi, QWORD PTR [rbx+64]	# widget, screen_4(D)->widget_ontop
	test	rdi, rdi	# widget
	je	.L103	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_30->type,
	jne	.L104	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, screen
	call	Container_draw	#
	jmp	.L103	#
.L104:
	mov	edx, 0	#,
	mov	rsi, rbx	#, screen
	call	Widget_draw	#
.L103:
	mov	rdi, QWORD PTR [rbx+80]	# screen_4(D)->screen, screen_4(D)->screen
	call	SDL_Flip	#
	mov	BYTE PTR [rbx+132], 0	# screen_4(D)->need_reload,
	jmp	.L109	#
.L98:
	cmp	BYTE PTR [rdi+53], 0	# screen_4(D)->background.fillcolor,
	jne	.L105	#,
	jmp	.L106	#
.L97:
	mov	edx, DWORD PTR [rbx+48]	# screen_4(D)->background.bgcolor, screen_4(D)->background.bgcolor
	mov	rdi, QWORD PTR [rbx+80]	# screen_4(D)->screen, screen_4(D)->screen
	mov	esi, 0	#,
	call	SDL_FillRect	#
	jmp	.L107	#
.L105:
	mov	edx, DWORD PTR [rdi+48]	# screen_4(D)->background.bgcolor, screen_4(D)->background.bgcolor
	mov	rdi, QWORD PTR [rdi+80]	# screen_4(D)->screen, screen_4(D)->screen
	mov	esi, 0	#,
	call	SDL_FillRect	#
	jmp	.L106	#
.L109:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
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
.LFB97:
	.cfi_startproc
	cmp	QWORD PTR BASE_SURFACE[rip], 0	# BASE_SURFACE,
	je	.L118	#,
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
	jne	.L113	#,
	movzx	r13d, WORD PTR BASE_SURFACE_WIDTH[rip]	# prev_width, BASE_SURFACE_WIDTH
	movzx	r12d, WORD PTR BASE_SURFACE_HEIGHT[rip]	# prev_height, BASE_SURFACE_HEIGHT
	movzx	esi, WORD PTR BASE_SURFACE_MAXHEIGHT[rip]	# BASE_SURFACE_MAXHEIGHT, BASE_SURFACE_MAXHEIGHT
	movzx	edi, WORD PTR BASE_SURFACE_MAXWIDTH[rip]	# BASE_SURFACE_MAXWIDTH, BASE_SURFACE_MAXWIDTH
	mov	r9d, 121	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, -1073741823	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_screen
	je	.L114	#,
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
	mov	edx, 134	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, r14	#, old_surf
	call	wSDL_FreeSurface	#
	jmp	.L111	#
.L114:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9180
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L111	#
.L113:
	movzx	esi, WORD PTR PREV_HEIGHT[rip]	# PREV_HEIGHT, PREV_HEIGHT
	movzx	edi, WORD PTR PREV_WIDTH[rip]	# PREV_WIDTH, PREV_WIDTH
	mov	r9d, 143	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 1073741841	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_screen
	je	.L115	#,
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
	mov	edx, 154	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, old_surf
	call	wSDL_FreeSurface	#
	jmp	.L111	#
.L115:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9190
	mov	edx, OFFSET FLAT:.LC37	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L111:
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
.L118:
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	Screen_switchFullscreen, .-Screen_switchFullscreen
	.globl	Screen_buttonExitClicked
	.type	Screen_buttonExitClicked, @function
Screen_buttonExitClicked:
.LFB111:
	.cfi_startproc
	mov	BYTE PTR [rsi+128], 1	# screen_1(D)->has_exited,
	ret
	.cfi_endproc
.LFE111:
	.size	Screen_buttonExitClicked, .-Screen_buttonExitClicked
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"Screen_MainStart:Screen > Exiting. Screen appears to be not initialized SDL_Surface *screen==NULL\n"
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
.LFB112:
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
	mov	rbx, rdi	# screen, screen
	cmp	QWORD PTR [rdi+80], 0	# screen_2(D)->screen,
	jne	.L121	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 98	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC38	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+128], 1	# screen_2(D)->has_exited,
	jmp	.L120	#
.L121:
	mov	BYTE PTR [rdi+132], 1	# screen_2(D)->need_reload,
	mov	BYTE PTR [rdi+128], 0	# screen_2(D)->has_exited,
	call	Screen_reloadBgWidget	#
	lea	r12, [rbx+16]	# tmp128,
	jmp	.L123	#
.L150:
	cmp	BYTE PTR [rbx+132], 0	# screen_2(D)->need_reload,
	je	.L155	#,
	mov	rdi, rbx	#, screen
	call	Screen_draw	#
.L155:
	mov	BYTE PTR [rbx+129], 0	# screen_2(D)->event_handled,
	cmp	BYTE PTR [rbx+130], 0	# screen_2(D)->pool_events,
	je	.L126	#,
	mov	rdi, QWORD PTR [rbx+88]	# screen_2(D)->pevent, screen_2(D)->pevent
	call	SDL_PollEvent	#
	jmp	.L127	#
.L126:
	mov	rdi, QWORD PTR [rbx+88]	# screen_2(D)->pevent, screen_2(D)->pevent
	call	SDL_WaitEvent	#
.L127:
	movzx	eax, BYTE PTR [rbx+16]	# tmp110, screen_2(D)->event.type
	sub	eax, 3	# tmp110,
	cmp	al, 21	# tmp110,
	ja	.L155	#,
	movzx	eax, al	# tmp112, tmp110
	jmp	[QWORD PTR .L133[0+rax*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L133:
	.quad	.L128
	.quad	.L129
	.quad	.L129
	.quad	.L129
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L130
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L131
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L132
	.text
.L132:
	mov	rax, QWORD PTR [rbx+112]	# D.8911, screen_2(D)->user_event
	test	rax, rax	# D.8911
	je	.L134	#,
	mov	rsi, r12	#, tmp128
	mov	rdi, rbx	#, screen
	call	rax	# D.8911
	jmp	.L135	#
.L134:
	mov	ecx, DWORD PTR [rbx+20]	# screen_2(D)->event.user.code, screen_2(D)->event.user.code
	mov	edx, OFFSET FLAT:.LC39	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L135	#
.L130:
	mov	BYTE PTR [rbx+128], 1	# screen_2(D)->has_exited,
	jmp	.L120	#
.L131:
	mov	esi, DWORD PTR [rbx+24]	# screen_2(D)->event.resize.h, screen_2(D)->event.resize.h
	mov	edi, DWORD PTR [rbx+20]	# screen_2(D)->event.resize.w, screen_2(D)->event.resize.w
	mov	r9d, 454	#,
	mov	r8d, OFFSET FLAT:.LC0	#,
	mov	ecx, 1073741841	#,
	mov	edx, 32	#,
	call	wSDL_SetVideoMode	#
	test	rax, rax	# sdl_surface
	je	.L136	#,
	mov	rbp, QWORD PTR BASE_SURFACE[rip]	# old_surface, BASE_SURFACE
	mov	edx, DWORD PTR [rbx+20]	# screen_2(D)->event.resize.w, screen_2(D)->event.resize.w
	mov	WORD PTR BASE_SURFACE_WIDTH[rip], dx	# BASE_SURFACE_WIDTH, screen_2(D)->event.resize.w
	mov	edx, DWORD PTR [rbx+24]	# screen_2(D)->event.resize.h, screen_2(D)->event.resize.h
	mov	WORD PTR BASE_SURFACE_HEIGHT[rip], dx	# BASE_SURFACE_HEIGHT, screen_2(D)->event.resize.h
	mov	rdx, QWORD PTR [rbp+8]	# old_surface_20->format, old_surface_20->format
	mov	QWORD PTR BASE_SURFACE_FORMAT[rip], rdx	# BASE_SURFACE_FORMAT, old_surface_20->format
	mov	QWORD PTR BASE_SURFACE[rip], rax	# BASE_SURFACE, sdl_surface
	cmp	QWORD PTR [rbx+40], 0	# screen_2(D)->background.bg_widget,
	je	.L137	#,
	mov	rdi, rbx	#, screen
	call	Screen_reloadBgWidget	#
.L137:
	mov	rdi, rbx	#, screen
	call	Screen_draw	#
	mov	edx, 465	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rbp	#, old_surface
	call	wSDL_FreeSurface	#
	jmp	.L135	#
.L136:
	call	SDL_GetError	#
	mov	r8, rax	# D.8929,
	mov	rcx, rbx	#, screen
	mov	edx, OFFSET FLAT:.LC40	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L135	#
.L128:
	mov	eax, DWORD PTR [rbx+24]	# screen_2(D)->event.key.keysym.sym, screen_2(D)->event.key.keysym.sym
	cmp	eax, 282	# screen_2(D)->event.key.keysym.sym,
	je	.L140	#,
	cmp	eax, 292	# screen_2(D)->event.key.keysym.sym,
	je	.L141	#,
	cmp	eax, 27	# screen_2(D)->event.key.keysym.sym,
	jne	.L138	#,
	mov	BYTE PTR [rbx+128], 1	# screen_2(D)->has_exited,
	jmp	.L120	#
.L140:
	cmp	BYTE PTR [rbx+131], 0	# screen_2(D)->drag_on,
	sete	BYTE PTR [rbx+131]	#, screen_2(D)->drag_on
	mov	rax, QWORD PTR [rbx+104]	# D.8934, screen_2(D)->toogle_drag_on
	test	rax, rax	# D.8934
	je	.L138	#,
	mov	rdi, rbx	#, screen
	call	rax	# D.8934
	jmp	.L138	#
.L141:
	mov	rdi, rbx	#, screen
	.p2align 4,,5
	call	Screen_switchFullscreen	#
.L138:
	mov	rax, QWORD PTR [rbx+96]	# D.8937, screen_2(D)->key_up
	test	rax, rax	# D.8937
	je	.L135	#,
	mov	esi, DWORD PTR [rbx+24]	# screen_2(D)->event.key.keysym.sym, screen_2(D)->event.key.keysym.sym
	mov	rdi, rbx	#, screen
	call	rax	# D.8937
	jmp	.L135	#
.L129:
	mov	rdi, QWORD PTR [rbx+64]	# D.8940, screen_2(D)->widget_ontop
	test	rdi, rdi	# D.8940
	je	.L142	#,
	cmp	BYTE PTR [rdi+130], 0	# D.8940_39->visible,
	je	.L142	#,
	cmp	DWORD PTR [rdi+124], 9	# D.8940_39->type,
	jne	.L143	#,
	mov	rsi, rbx	#, screen
	call	Container_mevent	#
	jmp	.L144	#
.L143:
	mov	rsi, rbx	#, screen
	call	Widget_mevent	#
.L144:
	cmp	BYTE PTR [rbx+129], 0	# screen_2(D)->event_handled,
	jne	.L135	#,
.L142:
	cmp	DWORD PTR [rbx+72], 0	# screen_2(D)->c_widget,
	je	.L135	#,
	mov	ebp, 0	# i,
.L148:
	mov	edx, ebp	# i, i
	mov	rax, QWORD PTR [rbx+56]	# screen_2(D)->widget, screen_2(D)->widget
	mov	rdi, QWORD PTR [rax+rdx*8]	# widget, *D.8955_52
	test	rdi, rdi	# widget
	je	.L145	#,
	cmp	DWORD PTR [rdi+124], 9	# widget_53->type,
	jne	.L146	#,
	mov	rsi, rbx	#, screen
	call	Container_mevent	#
	jmp	.L147	#
.L146:
	mov	rsi, rbx	#, screen
	call	Widget_mevent	#
.L147:
	cmp	BYTE PTR [rbx+129], 0	# screen_2(D)->event_handled,
	jne	.L135	#,
.L145:
	add	ebp, 1	# i,
	cmp	DWORD PTR [rbx+72], ebp	# screen_2(D)->c_widget, i
	ja	.L148	#,
.L135:
	cmp	BYTE PTR [rbx+128], 0	# screen_2(D)->has_exited,
	jne	.L120	#,
	cmp	BYTE PTR [rbx+132], 0	# screen_2(D)->need_reload,
	je	.L155	#,
.L123:
	cmp	BYTE PTR [rbx+128], 0	# screen_2(D)->has_exited,
	je	.L150	#,
.L120:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
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
.LFB113:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# screen, screen
	mov	r8, QWORD PTR [rdi+120]	# D.8888, screen_1(D)->callback
	test	r8, r8	# D.8888
	je	.L158	#,
	mov	rcx, rdi	#, screen
	mov	edx, OFFSET FLAT:.LC41	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L157	#
.L158:
	mov	rbp, rsi	# click_handler, click_handler
	mov	r12d, edx	# size, size
	mov	ecx, 530	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 32	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	edx, r12d	#, size
	mov	rsi, rbp	#, click_handler
	mov	rdi, rax	#, D.8893
	call	Callback_new	#
	mov	QWORD PTR [rbx+120], rax	# screen_1(D)->callback, D.8894
	test	rax, rax	# D.8894
	jne	.L157	#,
	mov	rcx, rbx	#, screen
	mov	edx, OFFSET FLAT:.LC42	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	call	__fprintf_chk	#
.L157:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	Screen_CallbackCreate, .-Screen_CallbackCreate
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"Screen_addParameter: Passed NULL screen object\n"
	.align 8
.LC44:
	.string	"Screen_addParameter: Callback array doesn't exist. To add cparameters first create Callback array with Screen_CallbackCreate()\n"
	.align 8
.LC45:
	.string	"Screen_addParameter: Failed to add parameter. Callback_addParameter exited with error %s\n"
	.text
	.globl	Screen_addParameter
	.type	Screen_addParameter, @function
Screen_addParameter:
.LFB114:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	test	rdi, rdi	# screen
	jne	.L162	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 47	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC43	#,
	call	fwrite	#
	mov	ebx, 1	# e,
	jmp	.L163	#
.L162:
	mov	rdi, QWORD PTR [rdi+120]	# D.8879, screen_2(D)->callback
	test	rdi, rdi	# D.8879
	jne	.L164	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 127	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC44	#,
	call	fwrite	#
	mov	ebx, 21	# e,
	jmp	.L163	#
.L164:
	call	Callback_addParameter	#
	mov	ebx, eax	# e,
	test	eax, eax	# e
	je	.L163	#,
	mov	edi, eax	#, e
	call	perr_getName	#
	mov	rcx, rax	#, D.8884
	mov	edx, OFFSET FLAT:.LC45	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L163:
	mov	eax, ebx	#, e
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	Screen_addParameter, .-Screen_addParameter
	.globl	Screen_getCParam
	.type	Screen_getCParam, @function
Screen_getCParam:
.LFB115:
	.cfi_startproc
	mov	rdi, QWORD PTR [rdi+120]	# D.8870, screen_2(D)->callback
	mov	eax, 0	# t,
	test	rdi, rdi	# D.8870
	je	.L171	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	Callback_getCParam	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L171:
	rep
	ret
	.cfi_endproc
.LFE115:
	.size	Screen_getCParam, .-Screen_getCParam
	.local	vinfo
	.comm	vinfo,8,8
	.data
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
	.local	BASE_SURFACE
	.comm	BASE_SURFACE,8,8
	.local	BASE_SURFACE_FORMAT
	.comm	BASE_SURFACE_FORMAT,8,8
	.local	str_id
	.comm	str_id,380,32
	.local	SCREEN_COUNT
	.comm	SCREEN_COUNT,4,4
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
