	.file	"AudioMain.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioMain.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/AudioMain.asm
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
	cmp	BYTE PTR [rdi+131], 0	# screen_2(D)->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp72,
	mov	edx, OFFSET FLAT:.LC1	# tmp71,
	cmovne	rdx, rax	# tmp71,, iftmp.80, tmp72
	mov	rax, QWORD PTR label[rip]	# label, label
	mov	rax, QWORD PTR [rax+288]	# label.81_6->text_block.text, label.81_6->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp69,* iftmp.80
	mov	QWORD PTR [rax+15], rcx	#, tmp69
	mov	edx, DWORD PTR [rdx+8]	# tmp70,
	mov	DWORD PTR [rax+23], edx	#, tmp70
	mov	rdi, QWORD PTR label[rip]	#, label
	call	Label_refresh	#
	mov	BYTE PTR [rbx+132], 1	# screen_2(D)->need_reload,
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
	mov	edx, 56	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 24	#,
	call	wmalloc	#
	mov	QWORD PTR audio[rip], rax	# audio, audio.82
	mov	ecx, 59	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 144	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rdi, rax	#, D.9813
	call	AudioTest_new	#
	mov	QWORD PTR audiotest[rip], rax	# audiotest, audiotest.83
	mov	esi, 60	#,
	mov	rdi, rax	#, audiotest.83
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
	mov	rax, QWORD PTR audio[rip]	# audio.85, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	rcx, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	QWORD PTR [rax+rdx*8], rcx	# *D.9820_12, audiotest
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.86, c_audio
	movzx	ecx, dx	# c_audio.86, c_audio.86
	lea	rax, [rax+rcx*8]	# D.9820,
	mov	rcx, QWORD PTR [rax]	# D.9822, *D.9820_19
	mov	WORD PTR [rcx+56], dx	# D.9822_20->id, c_audio.86
	mov	rdx, QWORD PTR [rax]	# *D.9820_19, *D.9820_19
	lea	rax, [rdx+104]	# tmp121,
	movabs	rcx, 5495608844156626260	#,
	mov	QWORD PTR [rdx+104], rcx	# D.9822_27->name,
	movabs	rdx, 122498447655263	#,
	mov	QWORD PTR [rax+8], rdx	# D.9822_27->name,
	mov	DWORD PTR [rax+16], 0	# D.9822_27->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	ecx, 70	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 152	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rdi, rax	#, D.9825
	call	AudioSinus_new	#
	mov	QWORD PTR audiosinus[rip], rax	# audiosinus, audiosinus.88
	movss	xmm0, DWORD PTR .LC3[rip]	#,
	mov	rdi, rax	#, audiosinus.88
	call	AudioSinus_setFrequency	#
	mov	rax, QWORD PTR audio[rip]	# audio.85, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	rcx, QWORD PTR audiosinus[rip]	# audiosinus, audiosinus
	mov	QWORD PTR [rax+rdx*8], rcx	# *D.9820_38, audiosinus
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.86, c_audio
	movzx	ecx, dx	# c_audio.86, c_audio.86
	lea	rax, [rax+rcx*8]	# D.9820,
	mov	rcx, QWORD PTR [rax]	# D.9822, *D.9820_45
	mov	WORD PTR [rcx+56], dx	# D.9822_46->id, c_audio.86
	mov	rdx, QWORD PTR [rax]	# *D.9820_45, *D.9820_45
	lea	rax, [rdx+104]	# tmp129,
	movabs	rcx, 8530194965868734803	#,
	mov	QWORD PTR [rdx+104], rcx	# D.9822_53->name,
	movabs	rdx, 45360494420069	#,
	mov	QWORD PTR [rax+8], rdx	# D.9822_53->name,
	mov	DWORD PTR [rax+16], 0	# D.9822_53->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	ecx, 78	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 168	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rdi, rax	#, D.9829
	call	AudioFromGraph_new	#
	mov	QWORD PTR afg[rip], rax	# afg, afg.90
	mov	rcx, QWORD PTR audio[rip]	# audio.85, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	QWORD PTR [rcx+rdx*8], rax	# *D.9820_63, afg.90
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.86, c_audio
	movzx	eax, dx	# c_audio.86, c_audio.86
	lea	rax, [rcx+rax*8]	# D.9820,
	mov	rcx, QWORD PTR [rax]	# D.9822, *D.9820_70
	mov	WORD PTR [rcx+56], dx	# D.9822_71->id, c_audio.86
	mov	rdx, QWORD PTR [rax]	# *D.9820_70, *D.9820_70
	lea	rax, [rdx+104]	# tmp136,
	movabs	rcx, 8030558529878521153	#,
	mov	QWORD PTR [rdx+104], rcx	# D.9822_78->name,
	movabs	rdx, 2891425792652363629	#,
	mov	QWORD PTR [rax+8], rdx	# D.9822_78->name,
	mov	DWORD PTR [rax+16], 2703696	# D.9822_78->name,
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
	.string	"AudioMain_createInterface:AudioMain failed to load font \"fonts/ariblk.ttf\"\n"
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
	mov	ecx, 138	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 152	#,
	mov	edi, 10	#,
	call	wcalloc	#
	mov	QWORD PTR image[rip], rax	# image, image.36
	mov	ecx, 139	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 176	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR text_block[rip], rax	# text_block, text_block.37
	mov	ecx, 140	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1528	#,
	mov	edi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR button[rip], rax	# button, button.38
	mov	ecx, 141	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 344	#,
	mov	edi, 9	#,
	call	wcalloc	#
	mov	QWORD PTR label[rip], rax	# label, label.39
	mov	ecx, 142	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 312	#,
	mov	edi, 3	#,
	call	wcalloc	#
	mov	QWORD PTR labelimage[rip], rax	# labelimage, labelimage.40
	mov	ecx, 143	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1400	#,
	mov	edi, 20	#,
	call	wcalloc	#
	mov	QWORD PTR buttonimage[rip], rax	# buttonimage, buttonimage.41
	mov	ecx, 144	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 152	#,
	mov	edi, 10	#,
	call	wcalloc	#
	mov	QWORD PTR rectangle[rip], rax	# rectangle, rectangle.42
	mov	ecx, 145	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 208	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR wdb[rip], rax	# wdb, wdb.43
	mov	ecx, 146	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 184	#,
	mov	edi, 20	#,
	call	wcalloc	#
	mov	QWORD PTR stacklist[rip], rax	# stacklist, stacklist.44
	mov	ecx, 147	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 184	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR grid[rip], rax	# grid, grid.45
	mov	esi, 20	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	Static_getFont	#
	mov	QWORD PTR font2[rip], rax	# font2, font2.46
	test	rax, rax	# font2.46
	jne	.L8	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 75	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC5	#,
	call	fwrite	#
	mov	eax, 1	# D.9705,
	jmp	.L9	#
.L8:
	mov	esi, 9498256	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundColor	#
	mov	ecx, 156	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 152	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.9707
	call	Image_new	#
	mov	QWORD PTR background[rip], rax	# background, background.50
	test	rax, rax	# background.50
	je	.L10	#,
	mov	edx, 0	#,
	mov	rsi, rax	#, background.50
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundWidget	#
.L10:
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.53, c_buttonimage.53
	imul	rbx, rbx, 1400	# tmp362, c_buttonimage.53,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp364,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp364
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
	mov	QWORD PTR [rbx+16], OFFSET FLAT:Screen_buttonExitClicked	# MEM[(struct Widget *)butimg_29].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	eax, 0	#,
	call	Screen_getHeight	#
	mov	ebx, eax	# D.9717,
	mov	eax, 0	#,
	call	Screen_getWidth	#
	movzx	ecx, ax	# D.9719, D.9719
	movzx	r8d, bx	#, D.9717
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.56, c_label
	movzx	ebx, ax	# c_label.56, c_label.56
	imul	rbx, rbx, 344	# tmp368, c_label.56,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp370,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp370
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	cmp	BYTE PTR [rax+131], 0	# sc.49_43->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp544,
	mov	edx, OFFSET FLAT:.LC1	# tmp543,
	cmovne	rdx, rax	# tmp543,, iftmp.58, tmp544
	mov	rax, QWORD PTR [rbx+288]	# lab_41->text_block.text, lab_41->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp374,* iftmp.58
	mov	QWORD PTR [rax+15], rcx	#, tmp374
	mov	edx, DWORD PTR [rdx+8]	# tmp375,
	mov	DWORD PTR [rax+23], edx	#, tmp375
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.60, c_stacklist
	movzx	ebx, ax	# c_stacklist.60, c_stacklist.60
	imul	rbx, rbx, 184	# tmp377, c_stacklist.60,
	add	rbx, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp379,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp379
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
	mov	BYTE PTR [rbx+128], 1	# MEM[(struct Widget *)slix_55].draggable,
	mov	rsi, rbx	#, slix
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.53, c_buttonimage.53
	imul	rbp, rbp, 1400	# tmp381, c_buttonimage.53,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp383,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp383
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
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_play_clicked	# MEM[(struct Widget *)butimg_62].click_handler,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audio[rip]	#, audio
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:audio_current_index	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 6	#,
	mov	r9d, 6	#,
	mov	r8d, 6	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.53, c_buttonimage.53
	imul	rbp, rbp, 1400	# tmp385, c_buttonimage.53,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp387,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp387
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
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_pause_clicked	# MEM[(struct Widget *)butimg_69].click_handler,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audio[rip]	#, audio
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:audio_current_index	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 6	#,
	mov	r9d, 3	#,
	mov	r8d, 6	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.53, c_buttonimage.53
	imul	rbp, rbp, 1400	# tmp389, c_buttonimage.53,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp391,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp391
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
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_stop_clicked	# MEM[(struct Widget *)butimg_76].click_handler,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audio[rip]	#, audio
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:audio_current_index	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
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
	call	StackList_refresh	#
	movzx	r15d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	ebx, r15w	# label_off, label_off
	imul	rbx, rbx, 344	# tmp393, label_off,
	add	rbx, QWORD PTR label[rip]	# lab, label
	lea	eax, [r15+1]	# tmp395,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp395
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# tmp398, lab_84->text_block.text
	add	rdi, 12	# tmp398,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+128]	#, audiotest.63_86->freq1
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
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_freq1_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.56, c_label
	movzx	ebx, ax	# c_label.56, c_label.56
	imul	rbx, rbx, 344	# tmp403, c_label.56,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp405,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp405
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# tmp408, lab_98->text_block.text
	add	rdi, 7	# tmp408,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+136]	#, audiotest.63_100->fase1
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
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_fase1_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.56, c_label
	movzx	ebx, ax	# c_label.56, c_label.56
	imul	rbx, rbx, 344	# tmp413, c_label.56,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp415,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp415
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# tmp418, lab_112->text_block.text
	add	rdi, 12	# tmp418,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+132]	#, audiotest.63_114->freq2
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
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_freq2_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.56, c_label
	movzx	ebx, ax	# c_label.56, c_label.56
	imul	rbx, rbx, 344	# tmp423, c_label.56,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp425,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp425
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# tmp428, lab_126->text_block.text
	add	rdi, 7	# tmp428,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+140]	#, audiotest.63_128->fase2
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
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiotest[rip]	#, audiotest
	mov	esi, OFFSET FLAT:button_fase2_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.56, c_label
	movzx	ebx, ax	# c_label.56, c_label.56
	imul	rbx, rbx, 344	# tmp433, c_label.56,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp435,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp435
	mov	esi, OFFSET FLAT:.LC19	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movzx	edx, WORD PTR audio_current_index[rip]	# audio_current_index, audio_current_index
	mov	rax, QWORD PTR audio[rip]	# audio, audio
	mov	rax, QWORD PTR [rax+rdx*8]	# *D.9749_146, *D.9749_146
	mov	rdi, QWORD PTR [rbx+288]	# tmp440, lab_140->text_block.text
	add	rdi, 22	# tmp440,
	lea	r8, [rax+104]	#,
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
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audio[rip]	#, audio
	mov	esi, OFFSET FLAT:button_source_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 2	#,
	mov	edx, OFFSET FLAT:audio_current_index	#,
	mov	esi, OFFSET FLAT:button_source_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:c_audio	#,
	mov	esi, OFFSET FLAT:button_source_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.56, c_label
	movzx	edx, ax	# c_label.56, c_label.56
	imul	rdx, rdx, 344	# tmp447, c_label.56,
	add	rdx, QWORD PTR label[rip]	# tmp447, label
	mov	QWORD PTR [rsp+152], rdx	# %sfp, tmp447
	add	eax, 1	# tmp449,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp449
	mov	esi, OFFSET FLAT:.LC21	#,
	mov	rdi, rdx	#, tmp447
	call	Label_new	#
	mov	rax, QWORD PTR audiosinus[rip]	# audiosinus, audiosinus
	movss	xmm0, DWORD PTR [rax+136]	# tmp451, audiosinus.65_163->freq
	cvtps2pd	xmm0, xmm0	# tmp451, tmp451
	mov	rax, QWORD PTR [rsp+152]	#, %sfp
	mov	rax, QWORD PTR [rax+288]	#, lab_sine_freq_161->text_block.text
	mov	rdi, rax	# tmp452,
	add	rdi, 19	# tmp452,
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
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR audiosinus[rip]	#, audiosinus
	mov	esi, OFFSET FLAT:button_sinefreq_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.60, c_stacklist
	movzx	r14d, ax	# c_stacklist.60, c_stacklist.60
	imul	r14, r14, 184	# tmp457, c_stacklist.60,
	add	r14, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp459,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp459
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, r14	#, sliy2
	call	StackList_new	#
	mov	edx, 2	#,
	mov	esi, 486	#,
	mov	rdi, r14	#, sliy2
	call	Widget_setPosition	#
	mov	BYTE PTR [r14+128], 1	# MEM[(struct Widget *)sliy2_176].draggable,
	mov	rsi, r14	#, sliy2
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, r15w	# D.9765, label_off
	lea	edx, [rax+6]	#,
	mov	DWORD PTR [rsp+148], edx	# %sfp,
	cmp	eax, edx	# D.9765,
	jge	.L12	#,
	mov	ebp, r15d	# k, label_off
.L13:
	mov	r13d, ebp	# f, k
	sub	r13d, r15d	# f, label_off
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.60, c_stacklist
	movzx	ebx, ax	# c_stacklist.60, c_stacklist.60
	imul	rbx, rbx, 184	# tmp461, c_stacklist.60,
	add	rbx, QWORD PTR stacklist[rip]	# sliy, stacklist
	add	eax, 1	# tmp463,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp463
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, sliy
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.53, c_buttonimage.53
	imul	r12, r12, 1400	# tmp465, c_buttonimage.53,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp467,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp467
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9758
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	movzx	r13d, r13w	# D.9759, f
	mov	rax, QWORD PTR click_handler[0+r13*8]	# D.9760, click_handler
	mov	QWORD PTR [r12+16], rax	# MEM[(struct Widget *)butimg_194].click_handler, D.9760
	mov	DWORD PTR [r12+116], 1	# MEM[(struct Widget *)butimg_194].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbx	#, sliy
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.53, c_buttonimage.53
	imul	r12, r12, 1400	# tmp471, c_buttonimage.53,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp473,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp473
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9761
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+r13*8]	# D.9760, click_handler
	mov	QWORD PTR [r12+16], rax	# MEM[(struct Widget *)butimg_203].click_handler, D.9760
	mov	DWORD PTR [r12+116], 0	# MEM[(struct Widget *)butimg_203].id,
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
	call	StackList_refresh	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.60, c_stacklist
	movzx	r12d, ax	# c_stacklist.60, c_stacklist.60
	imul	r12, r12, 184	# tmp477, c_stacklist.60,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp479,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp479
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
	imul	rsi, rsi, 344	# tmp481, k,
	add	rsi, QWORD PTR label[rip]	# tmp482, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, slix
	call	StackList_refresh	#
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
	call	StackList_refresh	#
	movzx	edx, WORD PTR c_image[rip]	# c_image.67, c_image
	movzx	eax, dx	# c_image.67, c_image.67
	lea	rcx, [rax+rax*8]	# tmp488,
	lea	rcx, [rax+rcx*2]	# tmp490,
	mov	rax, QWORD PTR image[rip]	# image, image
	lea	rbx, [rax+rcx*8]	# img,
	add	edx, 1	# tmp493,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp493
	mov	ecx, 300	#,
	mov	edx, 300	#,
	mov	esi, OFFSET FLAT:.LC23	#,
	mov	rdi, rbx	#, img
	call	Image_new	#
	mov	QWORD PTR [rbx+32], OFFSET FLAT:image_mrelease	# MEM[(struct Widget *)img_224].release_handler,
	mov	BYTE PTR [rbx+128], 1	# MEM[(struct Widget *)img_224].draggable,
	mov	edx, 2	#,
	mov	rsi, QWORD PTR [rsp+152]	#, %sfp
	mov	rdi, rbx	#, img
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	rsi, QWORD PTR audiosinus[rip]	#, audiosinus
	mov	rdi, rbx	#, img
	call	Widget_addParameter	#
	mov	rsi, rbx	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.60, c_stacklist
	movzx	ebp, ax	# c_stacklist.60, c_stacklist.60
	imul	rbp, rbp, 184	# tmp495, c_stacklist.60,
	add	rbp, QWORD PTR stacklist[rip]	# sliy, stacklist
	add	eax, 1	# tmp497,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp497
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy
	call	StackList_new	#
	mov	edx, 400	#,
	mov	esi, 600	#,
	mov	rdi, rbp	#, sliy
	call	Widget_setPosition	#
	mov	BYTE PTR [rbp+128], 1	# MEM[(struct Widget *)sliy_232].draggable,
	mov	rsi, rbp	#, sliy
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_wdb[rip]	# c_wdb.70, c_wdb
	movzx	eax, dx	# c_wdb.70, c_wdb.70
	lea	rcx, [rax+rax*2]	# tmp501,
	lea	rbx, [rax+rcx*4]	# tmp503,
	sal	rbx, 4	# tmp504,
	add	rbx, QWORD PTR wdb[rip]	# wdb2, wdb
	add	edx, 1	# tmp506,
	mov	WORD PTR c_wdb[rip], dx	# c_wdb, tmp506
	mov	edx, 300	#,
	mov	rsi, QWORD PTR afg[rip]	#, afg
	mov	rdi, rbx	#, wdb2
	call	WaveDrawBox_new	#
	mov	WORD PTR [rbx+176], 15	# wdb2_239->padx,
	mov	WORD PTR [rbx+178], 10	# wdb2_239->pady,
	mov	WORD PTR [rbx+184], 5	# wdb2_239->my,
	mov	WORD PTR [rbx+172], 50	# wdb2_239->bunch,
	mov	WORD PTR [rbx+174], -21436	# wdb2_239->sample_freq,
	mov	edx, 500	#,
	mov	esi, 10	#,
	mov	rdi, rbx	#, wdb2
	call	Widget_setPosition	#
	mov	rdi, rbx	#, wdb2
	call	WaveDrawBox_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, wdb2
	mov	rdi, rbp	#, sliy
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.60, c_stacklist
	movzx	r12d, ax	# c_stacklist.60, c_stacklist.60
	imul	r12, r12, 184	# tmp508, c_stacklist.60,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp510,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp510
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.60, c_stacklist
	movzx	r13d, ax	# c_stacklist.60, c_stacklist.60
	imul	r13, r13, 184	# tmp512, c_stacklist.60,
	add	r13, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp514,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp514
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.53, c_buttonimage.53
	imul	r14, r14, 1400	# tmp516, c_buttonimage.53,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp518,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp518
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9779
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r14+16], OFFSET FLAT:button_audio_from_graph_type_change	# MEM[(struct Widget *)butimg_258].click_handler,
	mov	DWORD PTR [r14+116], 1	# MEM[(struct Widget *)butimg_258].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.53, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.53, c_buttonimage.53
	imul	r14, r14, 1400	# tmp520, c_buttonimage.53,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp522,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp522
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9780
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r14+16], OFFSET FLAT:button_audio_from_graph_type_change	# MEM[(struct Widget *)butimg_265].click_handler,
	mov	DWORD PTR [r14+116], 0	# MEM[(struct Widget *)butimg_265].id,
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
	call	StackList_refresh	#
	mov	DWORD PTR [rsp+8], 2	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 20	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 5	#,
	mov	rsi, r13	#, sliy2
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.56, c_label
	movzx	r13d, ax	# c_label.56, c_label.56
	imul	r13, r13, 344	# tmp524, c_label.56,
	add	r13, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp526,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp526
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
	call	Screen_addParameter	#
	lea	r8, [rsp+172]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR afg[rip]	#, afg
	mov	esi, OFFSET FLAT:button_audio_from_graph_type_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.74, c_button
	movzx	r13d, ax	# c_button.74, c_button.74
	imul	r13, r13, 1528	# tmp530, c_button.74,
	add	r13, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp532,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp532
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
	mov	QWORD PTR [r13+16], OFFSET FLAT:button_audio_from_graph_clear	# MEM[(struct Widget *)but_282].click_handler,
	mov	edx, 1	#,
	mov	rsi, rbx	#, wdb2
	mov	rdi, r13	#, but
	call	Widget_addParameter	#
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
	call	StackList_refresh	#
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
	call	StackList_refresh	#
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
	mov	eax, 0	# D.9705,
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
	mov	eax, 1	# D.9687,
	jmp	.L19	#
.L18:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_MainStart	#
	mov	eax, 0	# D.9687,
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
	mov	rdi, QWORD PTR sc[rip]	# sc.10, sc
	test	rdi, rdi	# sc.10
	je	.L23	#,
	call	delete	#
	mov	edx, 446	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9615
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L23:
	mov	rdi, QWORD PTR background[rip]	# background.11, background
	test	rdi, rdi	# background.11
	je	.L24	#,
	call	delete	#
	mov	edx, 447	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9619
	call	wfree	#
	mov	QWORD PTR background[rip], 0	# background,
.L24:
	mov	rdi, QWORD PTR font2[rip]	# font2.12, font2
	test	rdi, rdi	# font2.12
	je	.L25	#,
	mov	edx, 449	#,
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
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*8]	# tmp185,
	lea	rdx, [rax+rdx*2]	# tmp187,
	mov	rax, QWORD PTR image[rip]	# image, image
	lea	rdi, [rax+rdx*8]	# tmp189,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_image[rip], bx	# c_image, i
	ja	.L28	#,
.L27:
	mov	edx, 450	#,
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
	lea	rdx, [rax+rax*4]	# tmp194,
	lea	rdi, [rax+rdx*2]	# tmp196,
	sal	rdi, 4	# tmp197,
	add	rdi, QWORD PTR text_block[rip]	# tmp198, text_block
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_textblock[rip], bx	# c_textblock, i
	ja	.L31	#,
.L30:
	mov	edx, 451	#,
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
	imul	rdi, rdi, 1528	# tmp201, i,
	add	rdi, QWORD PTR button[rip]	# tmp202, button
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_button[rip], bx	# c_button, i
	ja	.L34	#,
.L33:
	mov	edx, 452	#,
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
	imul	rdi, rdi, 344	# tmp205, i,
	add	rdi, QWORD PTR label[rip]	# tmp206, label
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_label[rip], bx	# c_label, i
	ja	.L37	#,
.L36:
	mov	edx, 453	#,
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
	imul	rdi, rdi, 312	# tmp209, i,
	add	rdi, QWORD PTR labelimage[rip]	# tmp210, labelimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_labelimage[rip], bx	# c_labelimage, i
	ja	.L40	#,
.L39:
	mov	edx, 454	#,
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
	imul	rdi, rdi, 1400	# tmp213, i,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp214, buttonimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_buttonimage[rip], bx	# c_buttonimage, i
	ja	.L43	#,
.L42:
	mov	edx, 455	#,
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
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*8]	# tmp219,
	lea	rdx, [rax+rdx*2]	# tmp221,
	mov	rax, QWORD PTR rectangle[rip]	# rectangle, rectangle
	lea	rdi, [rax+rdx*8]	# tmp223,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_rectangle[rip], bx	# c_rectangle, i
	ja	.L46	#,
.L45:
	mov	edx, 456	#,
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
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp228,
	lea	rdi, [rax+rdx*4]	# tmp230,
	sal	rdi, 4	# tmp231,
	add	rdi, QWORD PTR wdb[rip]	# tmp232, wdb
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_wdb[rip], bx	# c_wdb, i
	ja	.L49	#,
.L48:
	mov	edx, 457	#,
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
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp235, i,
	add	rdi, QWORD PTR stacklist[rip]	# tmp236, stacklist
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_stacklist[rip], bx	# c_stacklist, i
	ja	.L52	#,
.L51:
	mov	edx, 458	#,
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
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp239, i,
	add	rdi, QWORD PTR grid[rip]	# tmp240, grid
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_grid[rip], bx	# c_grid, i
	ja	.L55	#,
.L54:
	mov	edx, 459	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR grid[rip]	#, grid
	call	wfree	#
	mov	QWORD PTR grid[rip], 0	# grid,
	mov	WORD PTR c_grid[rip], 0	# c_grid,
.L53:
	mov	rdi, QWORD PTR audiotest[rip]	# audiotest.5, audiotest
	test	rdi, rdi	# audiotest.5
	je	.L56	#,
	call	delete	#
	mov	edx, 436	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9994
	call	wfree	#
	mov	QWORD PTR audiotest[rip], 0	# audiotest,
.L56:
	mov	rdi, QWORD PTR audiosinus[rip]	# audiosinus.6, audiosinus
	test	rdi, rdi	# audiosinus.6
	je	.L57	#,
	call	delete	#
	mov	edx, 437	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9992
	call	wfree	#
	mov	QWORD PTR audiosinus[rip], 0	# audiosinus,
.L57:
	mov	rdi, QWORD PTR afg[rip]	# afg.7, afg
	test	rdi, rdi	# afg.7
	je	.L58	#,
	call	delete	#
	mov	edx, 438	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9990
	call	wfree	#
	mov	QWORD PTR afg[rip], 0	# afg,
.L58:
	mov	rdi, QWORD PTR audio[rip]	# audio.8, audio
	test	rdi, rdi	# audio.8
	je	.L59	#,
	mov	edx, 439	#,
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
	mov	eax, 0	# D.9572,
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L85	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [rsp+12], 0	# e,
	mov	ecx, 470	#,
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 136	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	edx, 0	#,
	lea	rsi, [rsp+12]	#,
	mov	rdi, rax	#, D.9573
	call	Screen_new	#
	mov	QWORD PTR sc[rip], rax	# sc, sc.1
	mov	edi, DWORD PTR [rsp+12]	# e.2, e
	test	edi, edi	# e.2
	je	.L75	#,
	call	perr_getName	#
	mov	rcx, rax	#, D.9578
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 473	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9581
	call	wfree	#
	mov	eax, 1	# D.9572,
	jmp	.L74	#
.L75:
	mov	edx, 7	#,
	mov	esi, OFFSET FLAT:click_handler	#,
	mov	rdi, rax	#, sc.1
	call	Screen_CallbackCreate	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	mov	QWORD PTR [rax+104], OFFSET FLAT:screen_toogled_drag_on	# sc.4_14->toogle_drag_on,
	mov	eax, 0	#,
	call	AudioMain_createAudio	#
	test	eax, eax	# D.9582
	je	.L76	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 39	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC29	#,
	call	fwrite	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 482	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9585
	call	wfree	#
	mov	eax, 1	# D.9572,
	jmp	.L74	#
.L76:
	mov	eax, 0	#,
	call	AudioMain_createInterface	#
	test	eax, eax	# D.9586
	je	.L77	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 43	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC30	#,
	call	fwrite	#
	mov	rdi, QWORD PTR audiotest[rip]	# audiotest.5, audiotest
	test	rdi, rdi	# audiotest.5
	je	.L78	#,
	call	delete	#
	mov	edx, 436	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10042
	call	wfree	#
	mov	QWORD PTR audiotest[rip], 0	# audiotest,
.L78:
	mov	rdi, QWORD PTR audiosinus[rip]	# audiosinus.6, audiosinus
	test	rdi, rdi	# audiosinus.6
	je	.L79	#,
	call	delete	#
	mov	edx, 437	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10040
	call	wfree	#
	mov	QWORD PTR audiosinus[rip], 0	# audiosinus,
.L79:
	mov	rdi, QWORD PTR afg[rip]	# afg.7, afg
	test	rdi, rdi	# afg.7
	je	.L80	#,
	call	delete	#
	mov	edx, 438	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10038
	call	wfree	#
	mov	QWORD PTR afg[rip], 0	# afg,
.L80:
	mov	rdi, QWORD PTR audio[rip]	# audio.8, audio
	test	rdi, rdi	# audio.8
	je	.L81	#,
	mov	edx, 439	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wfree	#
	mov	QWORD PTR audio[rip], 0	# audio,
.L81:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 490	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9589
	call	wfree	#
	mov	eax, 1	# D.9572,
	jmp	.L74	#
.L77:
	mov	BYTE PTR is_inited[rip], 1	# is_inited,
	mov	eax, 0	# D.9572,
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
