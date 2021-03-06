	.file	"main.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT main.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/main.asm
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
	.string	"button_Audio_clicked:Main > Failed to start AudioMain_Main()\n"
	.text
	.globl	button_Audio_clicked
	.type	button_Audio_clicked, @function
button_Audio_clicked:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	eax, 0	#,
	call	AudioMain_Main	#
	test	eax, eax	# D.9057
	je	.L2	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 61	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	jmp	.L1	#
.L2:
	mov	BYTE PTR [rbx+132], 1	# screen_3(D)->need_reload,
.L1:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	button_Audio_clicked, .-button_Audio_clicked
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"button_Graphics_clicked:Main > Failed to start GraphicsMain_Main()\n"
	.text
	.globl	button_Graphics_clicked
	.type	button_Graphics_clicked, @function
button_Graphics_clicked:
.LFB95:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	eax, 0	#,
	call	GraphicsMain_Main	#
	test	eax, eax	# D.9062
	je	.L6	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 67	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	jmp	.L5	#
.L6:
	mov	BYTE PTR [rbx+132], 1	# screen_3(D)->need_reload,
.L5:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	button_Graphics_clicked, .-button_Graphics_clicked
	.globl	main_keydown
	.type	main_keydown, @function
main_keydown:
.LFB97:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	esi, 282	# key,
	je	.L11	#,
	cmp	esi, 283	# key,
	jne	.L9	#,
	jmp	.L12	#
.L11:
	mov	rsi, rdi	#, screen
	mov	edi, 0	#,
	call	button_Graphics_clicked	#
	jmp	.L9	#
.L12:
	mov	rsi, rdi	#, screen
	mov	edi, 0	#,
	call	button_Audio_clicked	#
.L9:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	main_keydown, .-main_keydown
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"U\305\274ycie:"
.LC3:
	.string	"\t[./]SDL_Widgets OPCJE"
.LC4:
	.string	"OPCJE:"
.LC5:
	.string	"/home/darek/1_SDL_Widgets"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.ascii	"\t-d  <directory>        Ustawia domy\305\233lny katalog dan"
	.ascii	"ych programu.\n                           "
	.string	"    Standardowo jest to:\n                               \"%s\"\n                               Katalog ten powinien zawiera\304\207 podkatalogi:\n                                  /fonts -- czcionki w formacie TTF\n                                  /img   -- obrazki\n"
	.align 8
.LC7:
	.string	"\t-s  <width>x<height>   Ustawia rozmiar okna na podany."
	.align 8
.LC8:
	.string	"\t-m  <width>x<height>   Ustawia rozmiar w trybie pe\305\202noekranowym.\n                               Powinna tu by\304\207 podana aktualnie u\305\274ywana\n                               rozdzielczo\305\233\304\207 ekranu."
	.align 8
.LC9:
	.string	"\t-f  <fullscreen>       Tryb pe\305\202noekranowy."
	.text
	.globl	MainProgram_showHelp
	.type	MainProgram_showHelp, @function
MainProgram_showHelp:
.LFB93:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	edi, OFFSET FLAT:.LC2	#,
	call	puts	#
	mov	edi, OFFSET FLAT:.LC3	#,
	call	puts	#
	mov	edi, OFFSET FLAT:.LC4	#,
	call	puts	#
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	mov	edi, OFFSET FLAT:.LC7	#,
	call	puts	#
	mov	edi, OFFSET FLAT:.LC8	#,
	call	puts	#
	mov	edi, OFFSET FLAT:.LC9	#,
	call	puts	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	MainProgram_showHelp, .-MainProgram_showHelp
	.section	.rodata.str1.1
.LC10:
	.string	"%hux%hu"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"Wysoko\305\233\304\207(%hu) lub szeroko\305\233\304\207(%hu) okna [-s] jest r\303\263wna zero.\n"
	.align 8
.LC12:
	.string	"Podano, opcj\304\231 zmiany rozmiaru okna \"-s\" bez argumentu."
	.align 8
.LC13:
	.string	"Wysoko\305\233\304\207(%hu) lub szeroko\305\233\304\207(%hu) ekranu [-m] jest r\303\263wna zero.\n"
	.align 8
.LC14:
	.string	"Podano, opcj\304\231 zmiany rozmiaru ekranu \"-m\" bez argumentu."
	.align 8
.LC15:
	.string	"Podano, opcj\304\231 zmiany katalogu danych aplikacji \"-d\" bez argumentu."
	.section	.rodata.str1.1
.LC16:
	.string	"Nieznana opcja: \"%s\"\n"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"\nERROR: Failed chdir to default directory \"%s\"\nExiting.\n"
	.text
	.globl	MainProgram_parseOptions
	.type	MainProgram_parseOptions, @function
MainProgram_parseOptions:
.LFB94:
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
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 64
	mov	ebp, edi	# argc, argc
	mov	WORD PTR [rsp+14], 0	# w,
	mov	WORD PTR [rsp+12], 0	# h,
	mov	WORD PTR [rsp+10], 0	# mw,
	mov	WORD PTR [rsp+8], 0	# mh,
	mov	QWORD PTR op[rip+8], 0	# op,
	mov	QWORD PTR op[rip+16], 0	# op,
	mov	QWORD PTR op[rip], OFFSET FLAT:.LC5	# op.base_dir,
	cmp	edi, 1	# argc,
	jle	.L18	#,
	mov	r12, rsi	# argv, argv
	mov	ebx, 1	# i,
.L42:
	movsx	rax, ebx	# i, i
	mov	rdx, QWORD PTR [r12+rax*8]	# __s1, *D.9072_22
	cmp	BYTE PTR [rdx], 45	# *__s1_23,
	jne	.L19	#,
	movzx	eax, BYTE PTR [rdx+1]	# D.9084, MEM[(const unsigned char *)__s1_23 + 1B]
	cmp	al, 102	# D.9084,
	jne	.L20	#,
	cmp	BYTE PTR [rdx+2], 0	# MEM[(const unsigned char *)__s1_23 + 2B],
	jne	.L21	#,
	mov	BYTE PTR op[rip+16], 1	# op.fullscreen,
	jmp	.L22	#
.L20:
	cmp	al, 115	# D.9084,
	jne	.L21	#,
	cmp	BYTE PTR [rdx+2], 0	# MEM[(const unsigned char *)__s1_23 + 2B],
	jne	.L23	#,
	lea	r13d, [rbx+1]	# i,
	cmp	ebp, r13d	# argc, i
	jle	.L24	#,
	mov	WORD PTR [rsp+12], 0	# h,
	mov	WORD PTR [rsp+14], 0	# w,
	movsx	rax, r13d	# i, i
	mov	rdi, QWORD PTR [r12+rax*8]	# *D.9072_121, *D.9072_121
	lea	rcx, [rsp+12]	#,
	lea	rdx, [rsp+14]	#,
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	eax, 0	#,
	call	sscanf	#
	movzx	edx, WORD PTR [rsp+14]	# w.21, w
	test	dx, dx	# w.21
	je	.L25	#,
	cmp	WORD PTR [rsp+12], 0	# h,
	jne	.L36	#,
.L25:
	movzx	ecx, WORD PTR [rsp+12]	# h, h
	movzx	edx, dx	# w.21, w.21
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	jmp	.L26	#
.L24:
	mov	edi, OFFSET FLAT:.LC12	#,
	call	puts	#
	.p2align 4,,3
	jmp	.L18	#
.L21:
	cmp	al, 109	# D.9084,
	jne	.L23	#,
	cmp	BYTE PTR [rdx+2], 0	# MEM[(const unsigned char *)__s1_23 + 2B],
	.p2align 4,,5
	jne	.L27	#,
	lea	r13d, [rbx+1]	# i,
	cmp	ebp, r13d	# argc, i
	jle	.L28	#,
	mov	WORD PTR [rsp+8], 0	# mh,
	mov	WORD PTR [rsp+10], 0	# mw,
	movsx	rax, r13d	# i, i
	mov	rdi, QWORD PTR [r12+rax*8]	# *D.9072_183, *D.9072_183
	lea	rcx, [rsp+8]	#,
	lea	rdx, [rsp+10]	#,
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	eax, 0	#,
	call	sscanf	#
	movzx	edx, WORD PTR [rsp+10]	# mw.24, mw
	test	dx, dx	# mw.24
	je	.L29	#,
	cmp	WORD PTR [rsp+8], 0	# mh,
	jne	.L37	#,
.L29:
	movzx	ecx, WORD PTR [rsp+8]	# mh, mh
	movzx	edx, dx	# mw.24, mw.24
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	jmp	.L26	#
.L28:
	mov	edi, OFFSET FLAT:.LC14	#,
	call	puts	#
	.p2align 4,,3
	jmp	.L18	#
.L23:
	cmp	al, 100	# D.9084,
	jne	.L27	#,
	cmp	BYTE PTR [rdx+2], 0	# MEM[(const unsigned char *)__s1_23 + 2B],
	.p2align 4,,5
	jne	.L19	#,
	add	ebx, 1	# i,
	cmp	ebp, ebx	# argc, i
	jle	.L30	#,
	movsx	rax, ebx	# i, i
	mov	rax, QWORD PTR [r12+rax*8]	# D.9110, *D.9072_244
	mov	QWORD PTR op[rip], rax	# op.base_dir, D.9110
	jmp	.L22	#
.L30:
	mov	edi, OFFSET FLAT:.LC15	#,
	call	puts	#
	jmp	.L18	#
.L27:
	cmp	al, 104	# D.9084,
	jne	.L19	#,
	cmp	BYTE PTR [rdx+2], 0	# MEM[(const unsigned char *)__s1_23 + 2B],
	.p2align 4,,5
	jne	.L19	#,
	mov	eax, 0	#,
	call	MainProgram_showHelp	#
	mov	eax, 3	# D.9301,
	jmp	.L40	#
.L19:
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, 1	#,
	mov	eax, 0	#,
	call	__printf_chk	#
	jmp	.L22	#
.L36:
	mov	ebx, r13d	# i, i
	jmp	.L22	#
.L37:
	mov	ebx, r13d	# i, i
.L22:
	add	ebx, 1	# i,
	cmp	ebp, ebx	# argc, i
	jg	.L42	#,
.L18:
	movzx	eax, WORD PTR [rsp+14]	# w.21, w
	test	ax, ax	# w.21
	je	.L33	#,
	movzx	edx, WORD PTR [rsp+12]	# h.20, h
	test	dx, dx	# h.20
	je	.L33	#,
	mov	WORD PTR op[rip+8], ax	# op.screen_width, w.21
	mov	WORD PTR op[rip+10], dx	# op.screen_height, h.20
.L33:
	movzx	eax, WORD PTR [rsp+10]	# mw.24, mw
	test	ax, ax	# mw.24
	je	.L34	#,
	movzx	edx, WORD PTR [rsp+8]	# mh.23, mh
	test	dx, dx	# mh.23
	je	.L34	#,
	mov	WORD PTR op[rip+12], ax	# op.screen_maxwidth, mw.24
	mov	WORD PTR op[rip+14], dx	# op.screen_maxheight, mh.23
.L34:
	mov	rdi, QWORD PTR op[rip]	#, op.base_dir
	call	chdir	#
	mov	edx, eax	# D.9311,
	mov	eax, 0	# D.9301,
	test	edx, edx	# D.9311
	je	.L40	#,
	call	MainProgram_showHelp	#
	mov	rcx, QWORD PTR op[rip]	#, op.base_dir
	mov	edx, OFFSET FLAT:.LC17	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 3	# D.9301,
	jmp	.L40	#
.L26:
	add	ebx, 1	# i,
	jmp	.L42	#
.L40:
	add	rsp, 24	#,
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
.LFE94:
	.size	MainProgram_parseOptions, .-MainProgram_parseOptions
	.section	.rodata.str1.1
.LC18:
	.string	"main.c"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"img/FreeGreatPicture.com-26189-abstract-color-background.jpg"
	.align 8
.LC20:
	.string	"Main_createInterface: background: %s\n"
	.align 8
.LC21:
	.string	"img/applications-graphics-2.png"
	.align 8
.LC22:
	.string	"img/applications-multimedia-2.png"
	.section	.rodata.str1.1
.LC23:
	.string	"img/application-exit-5.png"
	.text
	.globl	Main_createInterface
	.type	Main_createInterface, @function
Main_createInterface:
.LFB98:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ecx, 172	#,
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	esi, 1400	#,
	mov	edi, 3	#,
	call	wcalloc	#
	mov	QWORD PTR buttonimage[rip], rax	# buttonimage, buttonimage.8
	mov	ecx, 174	#,
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	esi, 152	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC19	#,
	mov	rdi, rax	#, D.9043
	call	Image_new	#
	mov	QWORD PTR background[rip], rax	# background, background.9
	mov	rdi, rax	#, background.9
	call	Widget_toString	#
	mov	rcx, rax	#, D.9046
	mov	edx, OFFSET FLAT:.LC20	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edx, 0	#,
	mov	rsi, QWORD PTR background[rip]	#, background
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundWidget	#
	mov	rdi, QWORD PTR background[rip]	#, background
	call	Widget_toString	#
	mov	rcx, rax	#, D.9049
	mov	edx, OFFSET FLAT:.LC20	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.14, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.14, c_buttonimage.14
	imul	rbx, rbx, 1400	# tmp91, c_buttonimage.14,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp93,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp93
	mov	esi, OFFSET FLAT:.LC21	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 20	#,
	mov	ecx, 20	#,
	mov	edx, 20	#,
	mov	esi, 93	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbx+16], OFFSET FLAT:button_Graphics_clicked	# MEM[(struct Widget *)butimg_16].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.14, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.14, c_buttonimage.14
	imul	rbx, rbx, 1400	# tmp95, c_buttonimage.14,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp97,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp97
	mov	esi, OFFSET FLAT:.LC22	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 20	#,
	mov	ecx, 20	#,
	mov	edx, 19	#,
	mov	esi, 234	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbx+16], OFFSET FLAT:button_Audio_clicked	# MEM[(struct Widget *)butimg_23].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.14, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.14, c_buttonimage.14
	imul	rbx, rbx, 1400	# tmp99, c_buttonimage.14,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp101,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp101
	mov	esi, OFFSET FLAT:.LC23	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 20	#,
	mov	ecx, 20	#,
	mov	edx, 14	#,
	mov	esi, 1750	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbx+16], OFFSET FLAT:Screen_buttonExitClicked	# MEM[(struct Widget *)butimg_30].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Main_createInterface, .-Main_createInterface
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"main: Memory_init() failed with error: %s\n"
	.align 8
.LC25:
	.string	"main: Screen_new returned NULL object pointer(%p) and/or failed with error %s\n"
	.align 8
.LC26:
	.string	"main:Main> Could not AudioMain_Initialize(screen)\n"
	.align 8
.LC27:
	.string	"main:Main> Could not GraphicsMain_Initialize(screen)\n"
	.align 8
.LC28:
	.string	"main: Memory_end() exited with error: %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB99:
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
	sub	rsp, 16	#,
	.cfi_def_cfa_offset 48
	mov	ebp, edi	# argc, argc
	mov	r12, rsi	# argv, argv
	mov	eax, 0	#,
	call	Memory_init	#
	mov	ebx, eax	# ee,
	test	eax, eax	# ee
	je	.L47	#,
	mov	edi, eax	#, ee
	call	Memory_getError	#
	mov	rcx, rax	#, D.8997
	mov	edx, OFFSET FLAT:.LC24	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L48	#
.L47:
	mov	rsi, r12	#, argv
	mov	edi, ebp	#, argc
	call	MainProgram_parseOptions	#
	cmp	eax, 3	# D.9000,
	je	.L48	#,
	mov	edi, OFFSET FLAT:op	#,
	call	Screen_setOptions	#
	mov	DWORD PTR [rsp+12], 0	# e,
	mov	ecx, 217	#,
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	esi, 136	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	edx, 3	#,
	lea	rsi, [rsp+12]	#,
	mov	rdi, rax	#, D.9003
	call	Screen_new	#
	mov	QWORD PTR sc[rip], rax	# sc, sc.1
	mov	edi, DWORD PTR [rsp+12]	# e.2, e
	test	edi, edi	# e.2
	jne	.L49	#,
	test	rax, rax	# sc.1
	jne	.L50	#,
.L49:
	call	perr_getName	#
	mov	r8, rax	# D.9010,
	mov	rcx, QWORD PTR sc[rip]	#, sc
	mov	edx, OFFSET FLAT:.LC25	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR sc[rip]	# sc.3, sc
	test	rdi, rdi	# sc.3
	je	.L51	#,
	call	delete	#
	mov	edx, 220	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, rax	#, D.9013
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L51:
	mov	edi, DWORD PTR [rsp+12]	#, e
	call	exit	#
.L50:
	mov	BYTE PTR [rax+131], 0	# sc.1_12->drag_on,
	mov	QWORD PTR [rax+96], OFFSET FLAT:main_keydown	# sc.1_12->key_up,
	mov	eax, 0	#,
	call	Main_createInterface	#
	mov	eax, 0	#,
	call	AudioMain_Initialize	#
	test	eax, eax	# D.9015
	je	.L52	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 50	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC26	#,
	call	fwrite	#
.L52:
	mov	eax, 0	#,
	call	GraphicsMain_Initialize	#
	test	eax, eax	# D.9018
	je	.L53	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 53	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC27	#,
	call	fwrite	#
.L53:
	mov	eax, 0	#,
	call	Memory_printUsage	#
	mov	eax, 0	#,
	call	Widget_printMemoryUsage	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_MainStart	#
	mov	eax, 0	#,
	call	AudioMain_Destroy	#
	mov	eax, 0	#,
	call	GraphicsMain_Destroy	#
	mov	rdi, QWORD PTR sc[rip]	# sc.3, sc
	test	rdi, rdi	# sc.3
	je	.L54	#,
	call	delete	#
	mov	edx, 253	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, rax	#, D.9023
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L54:
	cmp	QWORD PTR buttonimage[rip], 0	# buttonimage,
	je	.L55	#,
	cmp	WORD PTR c_buttonimage[rip], 0	# c_buttonimage,
	je	.L56	#,
	mov	ebx, 0	# i,
.L57:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 1400	# tmp104, i,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp105, buttonimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_buttonimage[rip], bx	# c_buttonimage, i
	ja	.L57	#,
.L56:
	mov	edx, 259	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, QWORD PTR buttonimage[rip]	#, buttonimage
	call	wfree	#
	mov	QWORD PTR buttonimage[rip], 0	# buttonimage,
.L55:
	mov	rdi, QWORD PTR background[rip]	# background.7, background
	test	rdi, rdi	# background.7
	je	.L58	#,
	call	delete	#
	mov	edx, 264	#,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, rax	#, D.9034
	call	wfree	#
	mov	QWORD PTR background[rip], 0	# background,
.L58:
	mov	eax, 0	#,
	call	Memory_end	#
	mov	ebx, eax	# ee,
	test	eax, eax	# ee
	je	.L59	#,
	mov	edi, eax	#, ee
	call	Memory_getError	#
	mov	rcx, rax	#, D.9037
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L48	#
.L59:
	mov	edi, 0	#,
	call	exit	#
.L48:
	mov	eax, ebx	#, ee
	add	rsp, 16	#,
	.cfi_def_cfa_offset 32
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	main, .-main
	.local	op
	.comm	op,24,16
	.local	buttonimage
	.comm	buttonimage,8,8
	.local	background
	.comm	background,8,8
	.local	sc
	.comm	sc,8,8
	.local	c_buttonimage
	.comm	c_buttonimage,2,2
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
