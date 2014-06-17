	.file	"AudioMain.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioMain.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/AudioMain.asm
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" W\305\201\304\204CZONE"
.LC1:
	.string	"WY\305\201\304\204CZONE"
	.text
	.globl	screen_toogled_drag_on
	.type	screen_toogled_drag_on, @function
screen_toogled_drag_on:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# screen, screen
	cmp	BYTE PTR [rdi+123], 0	# screen_2(D)->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp72,
	mov	edx, OFFSET FLAT:.LC1	# tmp71,
	cmovne	rdx, rax	# tmp71,, iftmp.82, tmp72
	mov	rax, QWORD PTR label[rip]	# label, label
	mov	rax, QWORD PTR [rax+352]	# label.83_6->text_block.text, label.83_6->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp69,* iftmp.82
	mov	QWORD PTR [rax+15], rcx	#, tmp69
	mov	edx, DWORD PTR [rdx+8]	# tmp70,
	mov	DWORD PTR [rax+23], edx	#, tmp70
	mov	rdi, QWORD PTR label[rip]	#, label
	call	Widget_refresh	#
	mov	BYTE PTR [rbx+124], 1	# screen_2(D)->need_reload,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	screen_toogled_drag_on, .-screen_toogled_drag_on
	.section	.rodata.str1.1
.LC2:
	.string	"AudioMain.c"
	.text
	.globl	AudioMain_createAudio
	.type	AudioMain_createAudio, @function
AudioMain_createAudio:
.LFB93:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	edx, 55	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 24	#,
	call	wmalloc	#
	mov	QWORD PTR audio[rip], rax	# audio, audio.84
	mov	rax, QWORD PTR AudioTest_class[rip]	# AudioTest_class, AudioTest_class
	mov	rdi, QWORD PTR [rax+8]	# AudioTest_class.85_2->size, AudioTest_class.85_2->size
	mov	edx, 58	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	rdi, rax	#, D.9879
	call	AudioTest_new	#
	mov	QWORD PTR audiotest[rip], rax	# audiotest, audiotest.86
	mov	esi, 60	#,
	mov	rdi, rax	#, audiotest.86
	call	AudioTest_setFreq1	#
	mov	esi, 100	#,
	mov	rdi, QWORD PTR audiotest[rip]	#, audiotest
	call	AudioTest_setFreq2	#
	mov	esi, 20	#,
	mov	rdi, QWORD PTR audiotest[rip]	#, audiotest
	call	AudioTest_setFase1	#
	mov	esi, 10	#,
	mov	rdi, QWORD PTR audiotest[rip]	#, audiotest
	call	AudioTest_setFase2	#
	mov	rax, QWORD PTR audio[rip]	# audio.88, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	rcx, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	QWORD PTR [rax+rdx*8], rcx	# *D.9886_14, audiotest
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.89, c_audio
	movzx	ecx, dx	# c_audio.89, c_audio.89
	lea	rax, [rax+rcx*8]	# D.9886,
	mov	rcx, QWORD PTR [rax]	# D.9887, *D.9886_20
	mov	WORD PTR [rcx+36], dx	# D.9887_21->id, c_audio.89
	mov	rdx, QWORD PTR [rax]	# *D.9886_20, *D.9886_20
	lea	rax, [rdx+80]	# tmp126,
	movabs	rcx, 5495608844156626260	#,
	mov	QWORD PTR [rdx+80], rcx	# D.9887_28->name,
	movabs	rdx, 122498447655263	#,
	mov	QWORD PTR [rax+8], rdx	# D.9887_28->name,
	mov	DWORD PTR [rax+16], 0	# D.9887_28->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	rax, QWORD PTR AudioSinus_class[rip]	# AudioSinus_class, AudioSinus_class
	mov	rdi, QWORD PTR [rax+8]	# AudioSinus_class.91_32->size, AudioSinus_class.91_32->size
	mov	edx, 69	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	rdi, rax	#, D.9892
	call	AudioSinus_new	#
	mov	QWORD PTR audiosinus[rip], rax	# audiosinus, audiosinus.92
	movss	xmm0, DWORD PTR .LC3[rip]	#,
	mov	rdi, rax	#, audiosinus.92
	call	AudioSinus_setFrequency	#
	mov	rax, QWORD PTR audio[rip]	# audio.88, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	rcx, QWORD PTR audiosinus[rip]	# audiosinus, audiosinus
	mov	QWORD PTR [rax+rdx*8], rcx	# *D.9886_41, audiosinus
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.89, c_audio
	movzx	ecx, dx	# c_audio.89, c_audio.89
	lea	rax, [rax+rcx*8]	# D.9886,
	mov	rcx, QWORD PTR [rax]	# D.9887, *D.9886_47
	mov	WORD PTR [rcx+36], dx	# D.9887_48->id, c_audio.89
	mov	rdx, QWORD PTR [rax]	# *D.9886_47, *D.9886_47
	lea	rax, [rdx+80]	# tmp136,
	movabs	rcx, 8530194965868734803	#,
	mov	QWORD PTR [rdx+80], rcx	# D.9887_55->name,
	movabs	rdx, 45360494420069	#,
	mov	QWORD PTR [rax+8], rdx	# D.9887_55->name,
	mov	DWORD PTR [rax+16], 0	# D.9887_55->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	rax, QWORD PTR AudioFromGraph_class[rip]	# AudioFromGraph_class, AudioFromGraph_class
	mov	rdi, QWORD PTR [rax+8]	# AudioFromGraph_class.94_59->size, AudioFromGraph_class.94_59->size
	mov	edx, 77	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	rdi, rax	#, D.9897
	call	AudioFromGraph_new	#
	mov	QWORD PTR afg[rip], rax	# afg, afg.95
	mov	rcx, QWORD PTR audio[rip]	# audio.88, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	QWORD PTR [rcx+rdx*8], rax	# *D.9886_67, afg.95
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.89, c_audio
	movzx	eax, dx	# c_audio.89, c_audio.89
	lea	rax, [rcx+rax*8]	# D.9886,
	mov	rcx, QWORD PTR [rax]	# D.9887, *D.9886_73
	mov	WORD PTR [rcx+36], dx	# D.9887_74->id, c_audio.89
	mov	rdx, QWORD PTR [rax]	# *D.9886_73, *D.9886_73
	lea	rax, [rdx+80]	# tmp145,
	movabs	rcx, 8030558529878521153	#,
	mov	QWORD PTR [rdx+80], rcx	# D.9887_81->name,
	movabs	rdx, 2891425792652363629	#,
	mov	QWORD PTR [rax+8], rdx	# D.9887_81->name,
	mov	DWORD PTR [rax+16], 2703696	# D.9887_81->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	eax, 0	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	AudioMain_createAudio, .-AudioMain_createAudio
	.section	.rodata.str1.1
.LC4:
	.string	"fonts/ariblk.ttf"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"AudioMain_createInterface: failed to load font \"fonts/ariblk.ttf\"\n"
	.align 8
.LC6:
	.string	"img/25600-colorful-high-resolution-background.jpg"
	.section	.rodata.str1.1
.LC7:
	.string	"img/application-exit-5.png"
.LC8:
	.string	"%hux%hu\n"
.LC9:
	.string	"Przeci\304\205ganie:              "
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"img/media-playback-start-3.png"
	.align 8
.LC11:
	.string	"img/media-playback-pause-3.png"
	.section	.rodata.str1.1
.LC12:
	.string	"img/media-playback-stop-3.png"
.LC13:
	.string	"Frequency1:          "
.LC14:
	.string	"%5d Hz"
.LC15:
	.string	"Fase1:          "
.LC16:
	.string	"%5d"
.LC17:
	.string	"Frequency2:          "
.LC18:
	.string	"Fase2:          "
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"\305\271r\303\263d\305\202o d\305\272wi\304\231ku:                      "
	.section	.rodata.str1.1
.LC20:
	.string	"%20s"
.LC21:
	.string	"Cz\304\231stotliwo\305\233\304\207:          "
.LC22:
	.string	"%8.2f"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"img/applications-multimedia-2.png"
	.section	.rodata.str1.1
.LC24:
	.string	"Multipleksacja"
.LC25:
	.string	"Wyczy\305\233\304\207"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"AudioMain - count of widgets:\n\tImages %hu/%d\n\tButtons %hu/%d\n\tTextBlocks %hu/%d\n\tLabels %hu/%d\n\tLabelImages %hu/%d\n\tButtonImages %hu/%d\n\tRectangles %hu/%d\n\tStackList %hu/%d\n\tGrids %hu/%d\n"
	.text
	.globl	AudioMain_createInterface
	.type	AudioMain_createInterface, @function
AudioMain_createInterface:
.LFB95:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 184	#,
	.cfi_def_cfa_offset 240
	mov	edx, 137	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 1840	#,
	call	wmalloc	#
	mov	QWORD PTR image[rip], rax	# image, image.37
	mov	edx, 138	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 208	#,
	call	wmalloc	#
	mov	QWORD PTR text_block[rip], rax	# text_block, text_block.38
	mov	edx, 139	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 14528	#,
	call	wmalloc	#
	mov	QWORD PTR button[rip], rax	# button, button.39
	mov	edx, 140	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 3672	#,
	call	wmalloc	#
	mov	QWORD PTR label[rip], rax	# label, label.40
	mov	edx, 141	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 1128	#,
	call	wmalloc	#
	mov	QWORD PTR labelimage[rip], rax	# labelimage, labelimage.41
	mov	edx, 142	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 33760	#,
	call	wmalloc	#
	mov	QWORD PTR buttonimage[rip], rax	# buttonimage, buttonimage.42
	mov	edx, 143	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 1840	#,
	call	wmalloc	#
	mov	QWORD PTR rectangle[rip], rax	# rectangle, rectangle.43
	mov	edx, 144	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 240	#,
	call	wmalloc	#
	mov	QWORD PTR wdb[rip], rax	# wdb, wdb.44
	mov	edx, 145	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 4160	#,
	call	wmalloc	#
	mov	QWORD PTR stacklist[rip], rax	# stacklist, stacklist.45
	mov	edx, 146	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 216	#,
	call	wmalloc	#
	mov	QWORD PTR grid[rip], rax	# grid, grid.46
	mov	esi, 20	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	Static_getFont	#
	mov	QWORD PTR font2[rip], rax	# font2, font2.47
	test	rax, rax	# font2.47
	jne	.L8	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 66	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC5	#,
	call	fwrite	#
	mov	eax, 1	# D.9767,
	jmp	.L9	#
.L8:
	mov	esi, 9498256	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundColor	#
	mov	rax, QWORD PTR Image_class[rip]	# Image_class, Image_class
	mov	rdi, QWORD PTR [rax+8]	# Image_class.51_20->size, Image_class.51_20->size
	mov	edx, 155	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.9771
	call	Image_new	#
	mov	QWORD PTR background[rip], rax	# background, background.52
	test	rax, rax	# background.52
	je	.L10	#,
	mov	edx, 0	#,
	mov	rsi, rax	#, background.52
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundWidget	#
.L10:
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.55, c_buttonimage.55
	imul	rbx, rbx, 1688	# tmp366, c_buttonimage.55,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp368,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp368
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 20	#,
	mov	ecx, 20	#,
	mov	edx, 14	#,
	mov	esi, 1750	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:Screen_buttonExitClicked	# MEM[(struct Widget *)butimg_31].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	eax, 0	#,
	call	Screen_getHeight	#
	mov	ebx, eax	# D.9781,
	mov	eax, 0	#,
	call	Screen_getWidth	#
	movzx	ecx, ax	# D.9783, D.9783
	movzx	r8d, bx	#, D.9781
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.58, c_label
	movzx	ebx, ax	# c_label.58, c_label.58
	imul	rbx, rbx, 408	# tmp372, c_label.58,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp374,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp374
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	cmp	BYTE PTR [rax+123], 0	# sc.50_45->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp576,
	mov	edx, OFFSET FLAT:.LC1	# tmp575,
	cmovne	rdx, rax	# tmp575,, iftmp.60, tmp576
	mov	rax, QWORD PTR [rbx+352]	# lab_43->text_block.text, lab_43->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp378,* iftmp.60
	mov	QWORD PTR [rax+15], rcx	#, tmp378
	mov	edx, DWORD PTR [rdx+8]	# tmp379,
	mov	DWORD PTR [rax+23], edx	#, tmp379
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	rsi, rbx	#, lab
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.62, c_stacklist
	movzx	eax, dx	# c_stacklist.62, c_stacklist.62
	lea	rcx, [rax+rax*2]	# tmp383,
	lea	rbx, [rax+rcx*4]	# tmp385,
	sal	rbx, 4	# tmp386,
	add	rbx, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp388,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp388
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	mov	edx, 15	#,
	mov	esi, 15	#,
	mov	rdi, rbx	#, slix
	call	Container_setPadding	#
	mov	edx, 20	#,
	mov	esi, 20	#,
	mov	rdi, rbx	#, slix
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+165], 1	# MEM[(struct Widget *)slix_57].draggable,
	mov	rsi, rbx	#, slix
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.55, c_buttonimage.55
	imul	rbp, rbp, 1688	# tmp390, c_buttonimage.55,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp392,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp392
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	rdi, rbp	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 5	#,
	mov	ecx, 5	#,
	mov	edx, 7	#,
	mov	esi, 167	#,
	mov	rdi, rbp	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_play_clicked	# MEM[(struct Widget *)butimg_64].click_handler,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audio[rip]	#, audio
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:audio_current_index	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 6	#,
	mov	r9d, 6	#,
	mov	r8d, 6	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.55, c_buttonimage.55
	imul	rbp, rbp, 1688	# tmp394, c_buttonimage.55,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp396,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp396
	mov	esi, OFFSET FLAT:.LC11	#,
	mov	rdi, rbp	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 5	#,
	mov	ecx, 5	#,
	mov	edx, 7	#,
	mov	esi, 240	#,
	mov	rdi, rbp	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_pause_clicked	# MEM[(struct Widget *)butimg_71].click_handler,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audio[rip]	#, audio
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:audio_current_index	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 6	#,
	mov	r9d, 3	#,
	mov	r8d, 6	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.55, c_buttonimage.55
	imul	rbp, rbp, 1688	# tmp398, c_buttonimage.55,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp400,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp400
	mov	esi, OFFSET FLAT:.LC12	#,
	mov	rdi, rbp	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 5	#,
	mov	ecx, 5	#,
	mov	edx, 7	#,
	mov	esi, 313	#,
	mov	rdi, rbp	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_stop_clicked	# MEM[(struct Widget *)butimg_78].click_handler,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audio[rip]	#, audio
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:audio_current_index	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 6	#,
	mov	DWORD PTR [rsp], 6	#,
	mov	r9d, 3	#,
	mov	r8d, 6	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbx	#, slix
	call	Widget_refresh	#
	movzx	r15d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	ebx, r15w	# label_off, label_off
	imul	rbx, rbx, 408	# tmp402, label_off,
	add	rbx, QWORD PTR label[rip]	# lab, label
	lea	eax, [r15+1]	# tmp404,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp404
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# tmp407, lab_86->text_block.text
	add	rdi, 12	# tmp407,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+104]	#, audiotest.65_88->freq1
	mov	ecx, OFFSET FLAT:.LC14	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 9	#,
	mov	r8d, 40	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	lea	r8, [rsp+172]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_freq1_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_freq1_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.58, c_label
	movzx	ebx, ax	# c_label.58, c_label.58
	imul	rbx, rbx, 408	# tmp412, c_label.58,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp414,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp414
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# tmp417, lab_100->text_block.text
	add	rdi, 7	# tmp417,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+112]	#, audiotest.65_102->fase1
	mov	ecx, OFFSET FLAT:.LC16	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 9	#,
	mov	r8d, 87	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	lea	r8, [rsp+172]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_fase1_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_fase1_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.58, c_label
	movzx	ebx, ax	# c_label.58, c_label.58
	imul	rbx, rbx, 408	# tmp422, c_label.58,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp424,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp424
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# tmp427, lab_114->text_block.text
	add	rdi, 12	# tmp427,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+108]	#, audiotest.65_116->freq2
	mov	ecx, OFFSET FLAT:.LC14	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 10	#,
	mov	r8d, 40	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	lea	r8, [rsp+172]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_freq2_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_freq2_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.58, c_label
	movzx	ebx, ax	# c_label.58, c_label.58
	imul	rbx, rbx, 408	# tmp432, c_label.58,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp434,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp434
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# tmp437, lab_128->text_block.text
	add	rdi, 7	# tmp437,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+116]	#, audiotest.65_130->fase2
	mov	ecx, OFFSET FLAT:.LC16	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 10	#,
	mov	r8d, 40	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	lea	r8, [rsp+172]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_fase2_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_fase2_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.58, c_label
	movzx	ebx, ax	# c_label.58, c_label.58
	imul	rbx, rbx, 408	# tmp442, c_label.58,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp444,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp444
	mov	esi, OFFSET FLAT:.LC19	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movzx	edx, WORD PTR audio_current_index[rip]	# audio_current_index, audio_current_index
	mov	rax, QWORD PTR audio[rip]	# audio, audio
	mov	rax, QWORD PTR [rax+rdx*8]	# *D.9813_148, *D.9813_148
	mov	rdi, QWORD PTR [rbx+352]	# tmp449, lab_142->text_block.text
	add	rdi, 22	# tmp449,
	lea	r8, [rax+80]	#,
	mov	ecx, OFFSET FLAT:.LC20	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 40	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	lea	r8, [rsp+172]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_source_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audio[rip]	#, audio
	mov	esi, OFFSET FLAT:button_source_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 2	#,
	mov	edx, OFFSET FLAT:audio_current_index	#,
	mov	esi, OFFSET FLAT:button_source_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:c_audio	#,
	mov	esi, OFFSET FLAT:button_source_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.58, c_label
	movzx	edx, ax	# c_label.58, c_label.58
	imul	rdx, rdx, 408	# tmp456, c_label.58,
	add	rdx, QWORD PTR label[rip]	# tmp456, label
	mov	QWORD PTR [rsp+152], rdx	# %sfp, tmp456
	add	eax, 1	# tmp458,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp458
	mov	esi, OFFSET FLAT:.LC21	#,
	mov	rdi, rdx	#, tmp456
	call	Label_new	#
	mov	rax, QWORD PTR audiosinus[rip]	# audiosinus, audiosinus
	movss	xmm0, DWORD PTR [rax+112]	# tmp460, audiosinus.67_165->freq
	cvtps2pd	xmm0, xmm0	# tmp460, tmp460
	mov	rax, QWORD PTR [rsp+152]	#, %sfp
	mov	rax, QWORD PTR [rax+352]	#, lab_sine_freq_163->text_block.text
	mov	rdi, rax	# tmp461,
	add	rdi, 19	# tmp461,
	mov	ecx, OFFSET FLAT:.LC22	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 6	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+152]	#, %sfp
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	lea	r8, [rsp+172]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR [rsp+152]	#, %sfp
	mov	esi, OFFSET FLAT:button_sinefreq_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiosinus[rip]	#, audiosinus
	mov	esi, OFFSET FLAT:button_sinefreq_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.62, c_stacklist
	movzx	eax, dx	# c_stacklist.62, c_stacklist.62
	lea	rcx, [rax+rax*2]	# tmp468,
	lea	r14, [rax+rcx*4]	# tmp470,
	sal	r14, 4	# tmp471,
	add	r14, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp473,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp473
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, r14	#, sliy2
	call	StackList_new	#
	mov	edx, 2	#,
	mov	esi, 486	#,
	mov	rdi, r14	#, sliy2
	call	Widget_setPosition	#
	mov	BYTE PTR [r14+165], 1	# MEM[(struct Widget *)sliy2_178].draggable,
	mov	rsi, r14	#, sliy2
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, r15w	# D.9829, label_off
	lea	edx, [rax+6]	#,
	mov	DWORD PTR [rsp+148], edx	# %sfp,
	cmp	eax, edx	# D.9829,
	jge	.L12	#,
	mov	ebp, r15d	# k, label_off
.L13:
	mov	r13d, ebp	# f, k
	sub	r13d, r15d	# f, label_off
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.62, c_stacklist
	movzx	eax, dx	# c_stacklist.62, c_stacklist.62
	lea	rcx, [rax+rax*2]	# tmp477,
	lea	rbx, [rax+rcx*4]	# tmp479,
	sal	rbx, 4	# tmp480,
	add	rbx, QWORD PTR stacklist[rip]	# sliy, stacklist
	add	edx, 1	# tmp482,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp482
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, sliy
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.55, c_buttonimage.55
	imul	r12, r12, 1688	# tmp484, c_buttonimage.55,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp486,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp486
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9822
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	movzx	r13d, r13w	# D.9823, f
	mov	rax, QWORD PTR click_handler[0+r13*8]	# D.9824, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_196].click_handler, D.9824
	mov	DWORD PTR [r12+160], 1	# MEM[(struct Widget *)butimg_196].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbx	#, sliy
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.55, c_buttonimage.55
	imul	r12, r12, 1688	# tmp490, c_buttonimage.55,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp492,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp492
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9825
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+r13*8]	# D.9824, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_205].click_handler, D.9824
	mov	DWORD PTR [r12+160], 0	# MEM[(struct Widget *)butimg_205].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbx	#, sliy
	call	StackList_addWidgetLast	#
	mov	rdi, rbx	#, sliy
	call	Widget_refresh	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.62, c_stacklist
	movzx	eax, dx	# c_stacklist.62, c_stacklist.62
	lea	rcx, [rax+rax*2]	# tmp498,
	lea	r12, [rax+rcx*4]	# tmp500,
	sal	r12, 4	# tmp501,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp503,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp503
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	mov	DWORD PTR [rsp+8], 10	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, sliy
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	movzx	esi, bp	# k, k
	imul	rsi, rsi, 408	# tmp505, k,
	add	rsi, QWORD PTR label[rip]	# tmp506, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 4	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 0	#,
	mov	r8d, 4	#,
	mov	ecx, 3	#,
	mov	edx, 4	#,
	mov	rsi, r12	#, slix
	mov	rdi, r14	#, sliy2
	call	StackList_addWidgetLast	#
	add	ebp, 1	# k,
	movzx	eax, bp	# k, k
	cmp	eax, DWORD PTR [rsp+148]	# k, %sfp
	jl	.L13	#,
.L12:
	mov	rdi, r14	#, sliy2
	call	Widget_refresh	#
	movzx	eax, WORD PTR c_image[rip]	# c_image.69, c_image
	movzx	ebx, ax	# c_image.69, c_image.69
	imul	rbx, rbx, 184	# tmp510, c_image.69,
	add	rbx, QWORD PTR image[rip]	# img, image
	add	eax, 1	# tmp512,
	mov	WORD PTR c_image[rip], ax	# c_image, tmp512
	mov	ecx, 300	#,
	mov	edx, 300	#,
	mov	esi, OFFSET FLAT:.LC23	#,
	mov	rdi, rbx	#, img
	call	Image_new	#
	mov	QWORD PTR [rbx+24], OFFSET FLAT:image_mrelease	# MEM[(struct Widget *)img_226].release_handler,
	mov	BYTE PTR [rbx+165], 1	# MEM[(struct Widget *)img_226].draggable,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR [rsp+152]	#, %sfp
	mov	rdi, rbx	#, img
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audiosinus[rip]	#, audiosinus
	mov	rdi, rbx	#, img
	call	Widget_addVParam	#
	mov	rsi, rbx	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.62, c_stacklist
	movzx	eax, dx	# c_stacklist.62, c_stacklist.62
	lea	rcx, [rax+rax*2]	# tmp516,
	lea	rbp, [rax+rcx*4]	# tmp518,
	sal	rbp, 4	# tmp519,
	add	rbp, QWORD PTR stacklist[rip]	# sliy, stacklist
	add	edx, 1	# tmp521,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp521
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy
	call	StackList_new	#
	mov	edx, 400	#,
	mov	esi, 600	#,
	mov	rdi, rbp	#, sliy
	call	Widget_setPosition	#
	mov	BYTE PTR [rbp+165], 1	# MEM[(struct Widget *)sliy_234].draggable,
	mov	rsi, rbp	#, sliy
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_wdb[rip]	# c_wdb.72, c_wdb
	movzx	ebx, ax	# c_wdb.72, c_wdb.72
	mov	rdx, rbx	# tmp524, c_wdb.72
	sal	rdx, 4	# tmp524,
	sal	rbx, 8	# tmp525,
	sub	rbx, rdx	# tmp526, tmp524
	add	rbx, QWORD PTR wdb[rip]	# wdb2, wdb
	add	eax, 1	# tmp528,
	mov	WORD PTR c_wdb[rip], ax	# c_wdb, tmp528
	mov	edx, 300	#,
	mov	rsi, QWORD PTR afg[rip]	#, afg
	mov	rdi, rbx	#, wdb2
	call	WaveDrawBox_new	#
	mov	WORD PTR [rbx+208], 15	# wdb2_241->padx,
	mov	WORD PTR [rbx+210], 10	# wdb2_241->pady,
	mov	WORD PTR [rbx+216], 5	# wdb2_241->my,
	mov	WORD PTR [rbx+204], 50	# wdb2_241->bunch,
	mov	WORD PTR [rbx+206], -21436	# wdb2_241->sample_freq,
	mov	edx, 500	#,
	mov	esi, 10	#,
	mov	rdi, rbx	#, wdb2
	call	Widget_setPosition	#
	mov	rdi, rbx	#, wdb2
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, wdb2
	mov	rdi, rbp	#, sliy
	call	StackList_addWidgetLast	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.62, c_stacklist
	movzx	eax, dx	# c_stacklist.62, c_stacklist.62
	lea	rcx, [rax+rax*2]	# tmp532,
	lea	r12, [rax+rcx*4]	# tmp534,
	sal	r12, 4	# tmp535,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp537,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp537
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.62, c_stacklist
	movzx	eax, dx	# c_stacklist.62, c_stacklist.62
	lea	rcx, [rax+rax*2]	# tmp541,
	lea	r13, [rax+rcx*4]	# tmp543,
	sal	r13, 4	# tmp544,
	add	r13, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp546,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp546
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.55, c_buttonimage.55
	imul	r14, r14, 1688	# tmp548, c_buttonimage.55,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp550,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp550
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9843
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r14+8], OFFSET FLAT:button_audio_from_graph_type_change	# MEM[(struct Widget *)butimg_260].click_handler,
	mov	DWORD PTR [r14+160], 1	# MEM[(struct Widget *)butimg_260].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.55, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.55, c_buttonimage.55
	imul	r14, r14, 1688	# tmp552, c_buttonimage.55,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp554,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp554
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9844
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r14+8], OFFSET FLAT:button_audio_from_graph_type_change	# MEM[(struct Widget *)butimg_267].click_handler,
	mov	DWORD PTR [r14+160], 0	# MEM[(struct Widget *)butimg_267].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, r13	#, sliy2
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 2	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 20	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 5	#,
	mov	rsi, r13	#, sliy2
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.58, c_label
	movzx	r13d, ax	# c_label.58, c_label.58
	imul	r13, r13, 408	# tmp556, c_label.58,
	add	r13, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp558,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp558
	mov	esi, OFFSET FLAT:.LC24	#,
	mov	rdi, r13	#, lab
	call	Label_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 6	#,
	mov	r8d, 15	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+8], 20	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 4	#,
	mov	rsi, r13	#, lab
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	lea	r8, [rsp+172]	#,
	mov	ecx, 0	#,
	mov	rdx, r13	#, lab
	mov	esi, OFFSET FLAT:button_audio_from_graph_type_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR afg[rip]	#, afg
	mov	esi, OFFSET FLAT:button_audio_from_graph_type_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.76, c_button
	movzx	r13d, ax	# c_button.76, c_button.76
	imul	r13, r13, 1816	# tmp562, c_button.76,
	add	r13, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp564,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp564
	mov	esi, OFFSET FLAT:.LC25	#,
	mov	rdi, r13	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 850	#,
	mov	esi, 130	#,
	mov	rdi, r13	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_audio_from_graph_clear	# MEM[(struct Widget *)but_284].click_handler,
	mov	edx, 1	#,
	mov	rsi, rbx	#, wdb2
	mov	rdi, r13	#, but
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 20	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 20	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, but
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, slix
	mov	rdi, rbp	#, sliy
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, sliy
	call	Widget_refresh	#
	movzx	r9d, WORD PTR c_button[rip]	# c_button, c_button
	movzx	ecx, WORD PTR c_image[rip]	# c_image, c_image
	mov	DWORD PTR [rsp+112], 1	#,
	movzx	eax, WORD PTR c_grid[rip]	# c_grid, c_grid
	mov	DWORD PTR [rsp+104], eax	#, c_grid
	mov	DWORD PTR [rsp+96], 20	#,
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist, c_stacklist
	mov	DWORD PTR [rsp+88], eax	#, c_stacklist
	mov	DWORD PTR [rsp+80], 10	#,
	movzx	eax, WORD PTR c_rectangle[rip]	# c_rectangle, c_rectangle
	mov	DWORD PTR [rsp+72], eax	#, c_rectangle
	mov	DWORD PTR [rsp+64], 20	#,
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage, c_buttonimage
	mov	DWORD PTR [rsp+56], eax	#, c_buttonimage
	mov	DWORD PTR [rsp+48], 3	#,
	movzx	eax, WORD PTR c_labelimage[rip]	# c_labelimage, c_labelimage
	mov	DWORD PTR [rsp+40], eax	#, c_labelimage
	mov	DWORD PTR [rsp+32], 9	#,
	movzx	eax, WORD PTR c_label[rip]	# c_label, c_label
	mov	DWORD PTR [rsp+24], eax	#, c_label
	mov	DWORD PTR [rsp+16], 1	#,
	movzx	eax, WORD PTR c_textblock[rip]	# c_textblock, c_textblock
	mov	DWORD PTR [rsp+8], eax	#, c_textblock
	mov	DWORD PTR [rsp], 8	#,
	mov	r8d, 10	#,
	mov	edx, OFFSET FLAT:.LC26	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9767,
.L9:
	add	rsp, 184	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	AudioMain_createInterface, .-AudioMain_createInterface
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"AudioMain_Main:AudioMain SubProgram NOT initialized\n"
	.text
	.globl	AudioMain_Main
	.type	AudioMain_Main, @function
AudioMain_Main:
.LFB96:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L18	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 52	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC27	#,
	call	fwrite	#
	mov	eax, 1	# D.9749,
	jmp	.L19	#
.L18:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_MainStart	#
	mov	eax, 0	# D.9749,
.L19:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	AudioMain_Main, .-AudioMain_Main
	.globl	AudioMain_Destroy
	.type	AudioMain_Destroy, @function
AudioMain_Destroy:
.LFB98:
	.cfi_startproc
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	je	.L72	#,
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdi, QWORD PTR sc[rip]	# sc.11, sc
	test	rdi, rdi	# sc.11
	je	.L23	#,
	call	delete	#
	mov	edx, 445	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9677
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L23:
	mov	rdi, QWORD PTR background[rip]	# background.12, background
	test	rdi, rdi	# background.12
	je	.L24	#,
	call	delete	#
	mov	edx, 446	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9681
	call	wfree	#
	mov	QWORD PTR background[rip], 0	# background,
.L24:
	mov	rdi, QWORD PTR font2[rip]	# font2.13, font2
	test	rdi, rdi	# font2.13
	je	.L25	#,
	mov	edx, 448	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font2[rip], 0	# font2,
.L25:
	cmp	QWORD PTR image[rip], 0	# image,
	je	.L26	#,
	cmp	WORD PTR c_image[rip], 0	# c_image,
	je	.L27	#,
	mov	ebx, 0	# i,
.L28:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp183, i,
	add	rdi, QWORD PTR image[rip]	# tmp184, image
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_image[rip], bx	# c_image, i
	ja	.L28	#,
.L27:
	mov	edx, 449	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR image[rip]	#, image
	call	wfree	#
	mov	QWORD PTR image[rip], 0	# image,
	mov	WORD PTR c_image[rip], 0	# c_image,
.L26:
	cmp	QWORD PTR text_block[rip], 0	# text_block,
	je	.L29	#,
	cmp	WORD PTR c_textblock[rip], 0	# c_textblock,
	je	.L30	#,
	mov	ebx, 0	# i,
.L31:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp189,
	lea	rdi, [rax+rdx*4]	# tmp191,
	sal	rdi, 4	# tmp192,
	add	rdi, QWORD PTR text_block[rip]	# tmp193, text_block
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_textblock[rip], bx	# c_textblock, i
	ja	.L31	#,
.L30:
	mov	edx, 450	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR text_block[rip]	#, text_block
	call	wfree	#
	mov	QWORD PTR text_block[rip], 0	# text_block,
	mov	WORD PTR c_textblock[rip], 0	# c_textblock,
.L29:
	cmp	QWORD PTR button[rip], 0	# button,
	je	.L32	#,
	cmp	WORD PTR c_button[rip], 0	# c_button,
	je	.L33	#,
	mov	ebx, 0	# i,
.L34:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 1816	# tmp196, i,
	add	rdi, QWORD PTR button[rip]	# tmp197, button
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_button[rip], bx	# c_button, i
	ja	.L34	#,
.L33:
	mov	edx, 451	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR button[rip]	#, button
	call	wfree	#
	mov	QWORD PTR button[rip], 0	# button,
	mov	WORD PTR c_button[rip], 0	# c_button,
.L32:
	cmp	QWORD PTR label[rip], 0	# label,
	je	.L35	#,
	cmp	WORD PTR c_label[rip], 0	# c_label,
	je	.L36	#,
	mov	ebx, 0	# i,
.L37:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 408	# tmp200, i,
	add	rdi, QWORD PTR label[rip]	# tmp201, label
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_label[rip], bx	# c_label, i
	ja	.L37	#,
.L36:
	mov	edx, 452	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR label[rip]	#, label
	call	wfree	#
	mov	QWORD PTR label[rip], 0	# label,
	mov	WORD PTR c_label[rip], 0	# c_label,
.L35:
	cmp	QWORD PTR labelimage[rip], 0	# labelimage,
	je	.L38	#,
	cmp	WORD PTR c_labelimage[rip], 0	# c_labelimage,
	je	.L39	#,
	mov	ebx, 0	# i,
.L40:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 376	# tmp204, i,
	add	rdi, QWORD PTR labelimage[rip]	# tmp205, labelimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_labelimage[rip], bx	# c_labelimage, i
	ja	.L40	#,
.L39:
	mov	edx, 453	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR labelimage[rip]	#, labelimage
	call	wfree	#
	mov	QWORD PTR labelimage[rip], 0	# labelimage,
	mov	WORD PTR c_labelimage[rip], 0	# c_labelimage,
.L38:
	cmp	QWORD PTR buttonimage[rip], 0	# buttonimage,
	je	.L41	#,
	cmp	WORD PTR c_buttonimage[rip], 0	# c_buttonimage,
	je	.L42	#,
	mov	ebx, 0	# i,
.L43:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 1688	# tmp208, i,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp209, buttonimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_buttonimage[rip], bx	# c_buttonimage, i
	ja	.L43	#,
.L42:
	mov	edx, 454	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR buttonimage[rip]	#, buttonimage
	call	wfree	#
	mov	QWORD PTR buttonimage[rip], 0	# buttonimage,
	mov	WORD PTR c_buttonimage[rip], 0	# c_buttonimage,
.L41:
	cmp	QWORD PTR rectangle[rip], 0	# rectangle,
	je	.L44	#,
	cmp	WORD PTR c_rectangle[rip], 0	# c_rectangle,
	je	.L45	#,
	mov	ebx, 0	# i,
.L46:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp212, i,
	add	rdi, QWORD PTR rectangle[rip]	# tmp213, rectangle
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_rectangle[rip], bx	# c_rectangle, i
	ja	.L46	#,
.L45:
	mov	edx, 455	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR rectangle[rip]	#, rectangle
	call	wfree	#
	mov	QWORD PTR rectangle[rip], 0	# rectangle,
	mov	WORD PTR c_rectangle[rip], 0	# c_rectangle,
.L44:
	cmp	QWORD PTR wdb[rip], 0	# wdb,
	je	.L47	#,
	cmp	WORD PTR c_wdb[rip], 0	# c_wdb,
	je	.L48	#,
	mov	ebx, 0	# i,
.L49:
	movzx	edi, bx	# i, i
	mov	rax, rdi	# tmp217, i
	sal	rax, 4	# tmp217,
	sal	rdi, 8	# tmp218,
	sub	rdi, rax	# tmp219, tmp217
	add	rdi, QWORD PTR wdb[rip]	# tmp220, wdb
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_wdb[rip], bx	# c_wdb, i
	ja	.L49	#,
.L48:
	mov	edx, 456	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR wdb[rip]	#, wdb
	call	wfree	#
	mov	QWORD PTR wdb[rip], 0	# wdb,
	mov	WORD PTR c_wdb[rip], 0	# c_wdb,
.L47:
	cmp	QWORD PTR stacklist[rip], 0	# stacklist,
	je	.L50	#,
	cmp	WORD PTR c_stacklist[rip], 0	# c_stacklist,
	je	.L51	#,
	mov	ebx, 0	# i,
.L52:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp225,
	lea	rdi, [rax+rdx*4]	# tmp227,
	sal	rdi, 4	# tmp228,
	add	rdi, QWORD PTR stacklist[rip]	# tmp229, stacklist
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_stacklist[rip], bx	# c_stacklist, i
	ja	.L52	#,
.L51:
	mov	edx, 457	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR stacklist[rip]	#, stacklist
	call	wfree	#
	mov	QWORD PTR stacklist[rip], 0	# stacklist,
	mov	WORD PTR c_stacklist[rip], 0	# c_stacklist,
.L50:
	cmp	QWORD PTR grid[rip], 0	# grid,
	je	.L53	#,
	cmp	WORD PTR c_grid[rip], 0	# c_grid,
	je	.L54	#,
	mov	ebx, 0	# i,
.L55:
	movzx	eax, bx	# i, i
	lea	rax, [rax+rax*2]	# tmp234,
	lea	rdx, [rax+rax*8]	# tmp236,
	mov	rax, QWORD PTR grid[rip]	# grid, grid
	lea	rdi, [rax+rdx*8]	# tmp238,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_grid[rip], bx	# c_grid, i
	ja	.L55	#,
.L54:
	mov	edx, 458	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR grid[rip]	#, grid
	call	wfree	#
	mov	QWORD PTR grid[rip], 0	# grid,
	mov	WORD PTR c_grid[rip], 0	# c_grid,
.L53:
	mov	rdi, QWORD PTR audiotest[rip]	# audiotest.6, audiotest
	test	rdi, rdi	# audiotest.6
	je	.L56	#,
	call	delete	#
	mov	edx, 435	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10061
	call	wfree	#
	mov	QWORD PTR audiotest[rip], 0	# audiotest,
.L56:
	mov	rdi, QWORD PTR audiosinus[rip]	# audiosinus.7, audiosinus
	test	rdi, rdi	# audiosinus.7
	je	.L57	#,
	call	delete	#
	mov	edx, 436	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10059
	call	wfree	#
	mov	QWORD PTR audiosinus[rip], 0	# audiosinus,
.L57:
	mov	rdi, QWORD PTR afg[rip]	# afg.8, afg
	test	rdi, rdi	# afg.8
	je	.L58	#,
	call	delete	#
	mov	edx, 437	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10057
	call	wfree	#
	mov	QWORD PTR afg[rip], 0	# afg,
.L58:
	mov	rdi, QWORD PTR audio[rip]	# audio.9, audio
	test	rdi, rdi	# audio.9
	je	.L59	#,
	mov	edx, 438	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wfree	#
	mov	QWORD PTR audio[rip], 0	# audio,
.L59:
	mov	BYTE PTR is_inited[rip], 0	# is_inited,
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L72:
	rep
	ret
	.cfi_endproc
.LFE98:
	.size	AudioMain_Destroy, .-AudioMain_Destroy
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"AudioMain_Initialize: Screen_new failed with error %s\n"
	.align 8
.LC29:
	.string	"AudioMain_createAudio:AudioMain failed\n"
	.align 8
.LC30:
	.string	"AudioMain_createInterface:AudioMain failed\n"
	.text
	.globl	AudioMain_Initialize
	.type	AudioMain_Initialize, @function
AudioMain_Initialize:
.LFB99:
	.cfi_startproc
	mov	eax, 0	# D.9632,
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L85	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [rsp+12], 0	# e,
	mov	rax, QWORD PTR Screen_class[rip]	# Screen_class, Screen_class
	mov	rdi, QWORD PTR [rax+8]	# Screen_class.1_4->size, Screen_class.1_4->size
	mov	edx, 469	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	edx, 0	#,
	lea	rsi, [rsp+12]	#,
	mov	rdi, rax	#, D.9635
	call	Screen_new	#
	mov	QWORD PTR sc[rip], rax	# sc, sc.2
	mov	edi, DWORD PTR [rsp+12]	# e.3, e
	test	edi, edi	# e.3
	je	.L75	#,
	call	perr_getName	#
	mov	rcx, rax	#, D.9640
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 472	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9643
	call	wfree	#
	mov	eax, 1	# D.9632,
	jmp	.L74	#
.L75:
	mov	edx, 7	#,
	mov	esi, OFFSET FLAT:click_handler	#,
	mov	rdi, rax	#, sc.2
	call	Screen_CallbackCreate	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	mov	QWORD PTR [rax+96], OFFSET FLAT:screen_toogled_drag_on	# sc.5_16->toogle_drag_on,
	mov	eax, 0	#,
	call	AudioMain_createAudio	#
	test	eax, eax	# D.9644
	je	.L76	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 39	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC29	#,
	call	fwrite	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 481	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9647
	call	wfree	#
	mov	eax, 1	# D.9632,
	jmp	.L74	#
.L76:
	mov	eax, 0	#,
	call	AudioMain_createInterface	#
	test	eax, eax	# D.9648
	je	.L77	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 43	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC30	#,
	call	fwrite	#
	mov	rdi, QWORD PTR audiotest[rip]	# audiotest.6, audiotest
	test	rdi, rdi	# audiotest.6
	je	.L78	#,
	call	delete	#
	mov	edx, 435	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10109
	call	wfree	#
	mov	QWORD PTR audiotest[rip], 0	# audiotest,
.L78:
	mov	rdi, QWORD PTR audiosinus[rip]	# audiosinus.7, audiosinus
	test	rdi, rdi	# audiosinus.7
	je	.L79	#,
	call	delete	#
	mov	edx, 436	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10107
	call	wfree	#
	mov	QWORD PTR audiosinus[rip], 0	# audiosinus,
.L79:
	mov	rdi, QWORD PTR afg[rip]	# afg.8, afg
	test	rdi, rdi	# afg.8
	je	.L80	#,
	call	delete	#
	mov	edx, 437	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10105
	call	wfree	#
	mov	QWORD PTR afg[rip], 0	# afg,
.L80:
	mov	rdi, QWORD PTR audio[rip]	# audio.9, audio
	test	rdi, rdi	# audio.9
	je	.L81	#,
	mov	edx, 438	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wfree	#
	mov	QWORD PTR audio[rip], 0	# audio,
.L81:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 489	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9651
	call	wfree	#
	mov	eax, 1	# D.9632,
	jmp	.L74	#
.L77:
	mov	BYTE PTR is_inited[rip], 1	# is_inited,
	mov	eax, 0	# D.9632,
.L74:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
.L85:
	rep
	ret
	.cfi_endproc
.LFE99:
	.size	AudioMain_Initialize, .-AudioMain_Initialize
	.local	audio
	.comm	audio,8,8
	.local	audiotest
	.comm	audiotest,8,8
	.local	c_audio
	.comm	c_audio,2,2
	.local	audiosinus
	.comm	audiosinus,8,8
	.local	afg
	.comm	afg,8,8
	.local	label
	.comm	label,8,8
	.local	image
	.comm	image,8,8
	.local	text_block
	.comm	text_block,8,8
	.local	button
	.comm	button,8,8
	.local	labelimage
	.comm	labelimage,8,8
	.local	buttonimage
	.comm	buttonimage,8,8
	.local	rectangle
	.comm	rectangle,8,8
	.local	wdb
	.comm	wdb,8,8
	.local	stacklist
	.comm	stacklist,8,8
	.local	grid
	.comm	grid,8,8
	.local	font2
	.comm	font2,8,8
	.local	sc
	.comm	sc,8,8
	.local	background
	.comm	background,8,8
	.local	c_buttonimage
	.comm	c_buttonimage,2,2
	.local	c_label
	.comm	c_label,2,2
	.local	c_stacklist
	.comm	c_stacklist,2,2
	.data
	.align 2
	.type	audio_current_index, @object
	.size	audio_current_index, 2
audio_current_index:
	.value	1
	.align 32
	.type	click_handler, @object
	.size	click_handler, 56
click_handler:
	.quad	button_freq1_change
	.quad	button_fase1_change
	.quad	button_freq2_change
	.quad	button_fase2_change
	.quad	button_source_change
	.quad	button_sinefreq_change
	.quad	button_audio_from_graph_type_change
	.local	c_image
	.comm	c_image,2,2
	.local	c_wdb
	.comm	c_wdb,2,2
	.local	c_button
	.comm	c_button,2,2
	.local	c_grid
	.comm	c_grid,2,2
	.local	c_rectangle
	.comm	c_rectangle,2,2
	.local	c_labelimage
	.comm	c_labelimage,2,2
	.local	c_textblock
	.comm	c_textblock,2,2
	.local	is_inited
	.comm	is_inited,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.long	1138491392
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
