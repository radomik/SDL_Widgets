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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB108:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# screen, screen
	cmp	BYTE PTR [rdi+172], 0	# screen_2(D)->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp80,
	mov	edx, OFFSET FLAT:.LC1	# tmp79,
	cmovne	rdx, rax	# tmp79,, iftmp.86, tmp80
	mov	rax, QWORD PTR label[rip]	# label, label
	mov	rax, QWORD PTR [rax+336]	# label.87_6->text_block.text, label.87_6->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp73,* iftmp.86
	mov	QWORD PTR [rax+15], rcx	#, tmp73
	mov	edx, DWORD PTR [rdx+8]	# tmp74,
	mov	DWORD PTR [rax+23], edx	#, tmp74
	mov	rdi, QWORD PTR label[rip]	# label.87, label
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)label.87_9].class, MEM[(struct coObject *)label.87_9].class
	mov	rax, QWORD PTR [rax+16]	# D.10535_10->vtable, D.10535_10->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10536_11 + 8B], MEM[(const void * *)D.10536_11 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10538_13].refresh
	mov	BYTE PTR [rbx+173], 1	# screen_2(D)->need_reload,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	screen_toogled_drag_on, .-screen_toogled_drag_on
	.section	.rodata.str1.1
.LC2:
	.string	"AudioMain.c"
	.text
	.globl	AudioMain_createAudio
	.type	AudioMain_createAudio, @function
AudioMain_createAudio:
.LFB107:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	edx, 55	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 24	#,
	call	wmalloc	#
	mov	QWORD PTR audio[rip], rax	# audio, audio.88
	mov	edx, 58	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rax, QWORD PTR AudioTest_class[rip]	# AudioTest_class, AudioTest_class
	mov	rdi, QWORD PTR [rax]	#, AudioTest_class.89_2->size
	call	wmalloc	#
	mov	rdi, rax	#, D.10543
	call	AudioTest_new	#
	mov	QWORD PTR audiotest[rip], rax	# audiotest, audiotest.90
	mov	esi, 60	#,
	mov	rdi, rax	#, audiotest.90
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
	mov	rax, QWORD PTR audio[rip]	# audio.92, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	rcx, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	QWORD PTR [rax+rdx*8], rcx	# *D.10550_14, audiotest
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.93, c_audio
	movzx	ecx, dx	# c_audio.93, c_audio.93
	lea	rax, [rax+rcx*8]	# D.10550,
	mov	rcx, QWORD PTR [rax]	# D.10551, *D.10550_20
	mov	WORD PTR [rcx+36], dx	# D.10551_21->id, c_audio.93
	mov	rdx, QWORD PTR [rax]	# *D.10550_20, *D.10550_20
	lea	rax, [rdx+80]	# tmp125,
	movabs	rcx, 5495608844156626260	#,
	mov	QWORD PTR [rdx+80], rcx	# D.10551_28->name,
	movabs	rdx, 122498447655263	#,
	mov	QWORD PTR [rax+8], rdx	# D.10551_28->name,
	mov	DWORD PTR [rax+16], 0	# D.10551_28->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	edx, 69	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rax, QWORD PTR AudioSinus_class[rip]	# AudioSinus_class, AudioSinus_class
	mov	rdi, QWORD PTR [rax]	#, AudioSinus_class.95_32->size
	call	wmalloc	#
	mov	rdi, rax	#, D.10556
	call	AudioSinus_new	#
	mov	QWORD PTR audiosinus[rip], rax	# audiosinus, audiosinus.96
	movss	xmm0, DWORD PTR .LC3[rip]	#,
	mov	rdi, rax	#, audiosinus.96
	call	AudioSinus_setFrequency	#
	mov	rax, QWORD PTR audio[rip]	# audio.92, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	rcx, QWORD PTR audiosinus[rip]	# audiosinus, audiosinus
	mov	QWORD PTR [rax+rdx*8], rcx	# *D.10550_41, audiosinus
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.93, c_audio
	movzx	ecx, dx	# c_audio.93, c_audio.93
	lea	rax, [rax+rcx*8]	# D.10550,
	mov	rcx, QWORD PTR [rax]	# D.10551, *D.10550_47
	mov	WORD PTR [rcx+36], dx	# D.10551_48->id, c_audio.93
	mov	rdx, QWORD PTR [rax]	# *D.10550_47, *D.10550_47
	lea	rax, [rdx+80]	# tmp134,
	movabs	rcx, 8530194965868734803	#,
	mov	QWORD PTR [rdx+80], rcx	# D.10551_55->name,
	movabs	rdx, 45360494420069	#,
	mov	QWORD PTR [rax+8], rdx	# D.10551_55->name,
	mov	DWORD PTR [rax+16], 0	# D.10551_55->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	edx, 77	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rax, QWORD PTR AudioFromGraph_class[rip]	# AudioFromGraph_class, AudioFromGraph_class
	mov	rdi, QWORD PTR [rax]	#, AudioFromGraph_class.98_59->size
	call	wmalloc	#
	mov	rdi, rax	#, D.10561
	call	AudioFromGraph_new	#
	mov	QWORD PTR afg[rip], rax	# afg, afg.99
	mov	rcx, QWORD PTR audio[rip]	# audio.92, audio
	movzx	edx, WORD PTR c_audio[rip]	# c_audio, c_audio
	mov	QWORD PTR [rcx+rdx*8], rax	# *D.10550_67, afg.99
	movzx	edx, WORD PTR c_audio[rip]	# c_audio.93, c_audio
	movzx	eax, dx	# c_audio.93, c_audio.93
	lea	rax, [rcx+rax*8]	# D.10550,
	mov	rcx, QWORD PTR [rax]	# D.10551, *D.10550_73
	mov	WORD PTR [rcx+36], dx	# D.10551_74->id, c_audio.93
	mov	rdx, QWORD PTR [rax]	# *D.10550_73, *D.10550_73
	lea	rax, [rdx+80]	# tmp142,
	movabs	rcx, 8030558529878521153	#,
	mov	QWORD PTR [rdx+80], rcx	# D.10551_81->name,
	movabs	rdx, 2891425792652363629	#,
	mov	QWORD PTR [rax+8], rdx	# D.10551_81->name,
	mov	DWORD PTR [rax+16], 2703696	# D.10551_81->name,
	add	WORD PTR c_audio[rip], 1	# c_audio,
	mov	eax, 0	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
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
.LC23:
	.string	"wb"
.LC24:
	.string	"arrow_button.bmp"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"img/applications-multimedia-2.png"
	.section	.rodata.str1.1
.LC26:
	.string	"Multipleksacja"
.LC27:
	.string	"Wyczy\305\233\304\207"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"AudioMain - count of widgets:\n\tImages %hu/%d\n\tButtons %hu/%d\n\tTextBlocks %hu/%d\n\tLabels %hu/%d\n\tLabelImages %hu/%d\n\tButtonImages %hu/%d\n\tRectangles %hu/%d\n\tStackList %hu/%d\n\tGrids %hu/%d\n"
	.text
	.globl	AudioMain_createInterface
	.type	AudioMain_createInterface, @function
AudioMain_createInterface:
.LFB109:
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
	mov	edx, 139	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 1760	#,
	call	wmalloc	#
	mov	QWORD PTR image[rip], rax	# image, image.38
	mov	edx, 140	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 200	#,
	call	wmalloc	#
	mov	QWORD PTR text_block[rip], rax	# text_block, text_block.39
	mov	edx, 141	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 13952	#,
	call	wmalloc	#
	mov	QWORD PTR button[rip], rax	# button, button.40
	mov	edx, 142	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 3528	#,
	call	wmalloc	#
	mov	QWORD PTR label[rip], rax	# label, label.41
	mov	edx, 143	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 1080	#,
	call	wmalloc	#
	mov	QWORD PTR labelimage[rip], rax	# labelimage, labelimage.42
	mov	edx, 144	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 32320	#,
	call	wmalloc	#
	mov	QWORD PTR buttonimage[rip], rax	# buttonimage, buttonimage.43
	mov	edx, 145	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 1760	#,
	call	wmalloc	#
	mov	QWORD PTR rectangle[rip], rax	# rectangle, rectangle.44
	mov	edx, 146	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 232	#,
	call	wmalloc	#
	mov	QWORD PTR wdb[rip], rax	# wdb, wdb.45
	mov	edx, 147	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 4000	#,
	call	wmalloc	#
	mov	QWORD PTR stacklist[rip], rax	# stacklist, stacklist.46
	mov	edx, 148	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, 208	#,
	call	wmalloc	#
	mov	QWORD PTR grid[rip], rax	# grid, grid.47
	mov	esi, 20	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	Static_getFont	#
	mov	QWORD PTR font2[rip], rax	# font2, font2.48
	test	rax, rax	# font2.48
	jne	.L8	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 66	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC5	#,
	call	fwrite	#
	mov	eax, 1	# D.10377,
	jmp	.L9	#
.L8:
	mov	esi, 9498256	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundColor	#
	mov	edx, 157	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rax, QWORD PTR Image_class[rip]	# Image_class, Image_class
	mov	rdi, QWORD PTR [rax]	#, Image_class.52_20->size
	call	wmalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.10381
	call	Image_new	#
	mov	QWORD PTR background[rip], rax	# background, background.53
	test	rax, rax	# background.53
	je	.L10	#,
	mov	edx, 0	#,
	mov	rsi, rax	#, background.53
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundWidget	#
.L10:
	mov	DWORD PTR [rsp+172], 0	# cparam_off,
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.56, c_buttonimage.56
	imul	rbx, rbx, 1616	# tmp459, c_buttonimage.56,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp461,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp461
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
	movzx	ebp, WORD PTR [rbx+98]	# D.10393, MEM[(struct Widget *)butimg_31].pos.y
	mov	eax, 0	#,
	call	Screen_getWidth	#
	sub	ax, WORD PTR [rbx+100]	# tmp462, MEM[(struct Widget *)butimg_31].pos.w
	lea	esi, [rax-50]	# tmp464,
	movzx	esi, si	# tmp465, tmp464
	mov	edx, ebp	#, D.10393
	mov	rdi, rbx	#, butimg
	call	Widget_setPosition	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:Screen_buttonExitClicked	# MEM[(struct Widget *)butimg_31].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	eax, 0	#,
	call	Screen_getHeight	#
	mov	ebx, eax	# D.10399,
	mov	eax, 0	#,
	call	Screen_getWidth	#
	movzx	ecx, ax	# D.10401, D.10401
	movzx	r8d, bx	#, D.10399
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.59, c_label
	movzx	ebx, ax	# c_label.59, c_label.59
	imul	rbx, rbx, 392	# tmp469, c_label.59,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp471,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp471
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	cmp	BYTE PTR [rax+172], 0	# sc.51_53->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp743,
	mov	edx, OFFSET FLAT:.LC1	# tmp742,
	cmovne	rdx, rax	# tmp742,, iftmp.61, tmp743
	mov	rax, QWORD PTR [rbx+336]	# lab_51->text_block.text, lab_51->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp475,* iftmp.61
	mov	QWORD PTR [rax+15], rcx	#, tmp475
	mov	edx, DWORD PTR [rdx+8]	# tmp476,
	mov	DWORD PTR [rax+23], edx	#, tmp476
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp480,
	lea	rcx, [rdx+rdx*4]	# tmp482,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbx, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp485,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp485
	mov	edx, 3	#,
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
	mov	BYTE PTR [rbx+157], 1	# MEM[(struct Widget *)slix_65].draggable,
	mov	rsi, rbx	#, slix
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.56, c_buttonimage.56
	imul	rbp, rbp, 1616	# tmp487, c_buttonimage.56,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp489,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp489
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_play_clicked	# MEM[(struct Widget *)butimg_72].click_handler,
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
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.56, c_buttonimage.56
	imul	rbp, rbp, 1616	# tmp491, c_buttonimage.56,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp493,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp493
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_pause_clicked	# MEM[(struct Widget *)butimg_79].click_handler,
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
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.56, c_buttonimage.56
	imul	rbp, rbp, 1616	# tmp495, c_buttonimage.56,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp497,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp497
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_stop_clicked	# MEM[(struct Widget *)butimg_86].click_handler,
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
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)slix_65].class, MEM[(struct coObject *)slix_65].class
	mov	rax, QWORD PTR [rax+16]	# D.10421_89->vtable, D.10421_89->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10422_90 + 8B], MEM[(const void * *)D.10422_90 + 8B]
	mov	rdi, rbx	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10424_92].refresh
	movzx	r15d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	ebx, r15w	# label_off, label_off
	imul	rbx, rbx, 392	# tmp503, label_off,
	add	rbx, QWORD PTR label[rip]	# lab, label
	lea	eax, [r15+1]	# tmp505,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp505
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# tmp508, lab_99->text_block.text
	add	rdi, 12	# tmp508,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+104]	#, audiotest.66_101->freq1
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
	movzx	eax, WORD PTR c_label[rip]	# c_label.59, c_label
	movzx	ebx, ax	# c_label.59, c_label.59
	imul	rbx, rbx, 392	# tmp513, c_label.59,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp515,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp515
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# tmp518, lab_113->text_block.text
	add	rdi, 7	# tmp518,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+112]	#, audiotest.66_115->fase1
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
	movzx	eax, WORD PTR c_label[rip]	# c_label.59, c_label
	movzx	ebx, ax	# c_label.59, c_label.59
	imul	rbx, rbx, 392	# tmp523, c_label.59,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp525,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp525
	mov	esi, OFFSET FLAT:.LC17	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# tmp528, lab_127->text_block.text
	add	rdi, 12	# tmp528,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+108]	#, audiotest.66_129->freq2
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
	movzx	eax, WORD PTR c_label[rip]	# c_label.59, c_label
	movzx	ebx, ax	# c_label.59, c_label.59
	imul	rbx, rbx, 392	# tmp533, c_label.59,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp535,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp535
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# tmp538, lab_141->text_block.text
	add	rdi, 7	# tmp538,
	mov	rax, QWORD PTR audiotest[rip]	# audiotest, audiotest
	mov	r8d, DWORD PTR [rax+116]	#, audiotest.66_143->fase2
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
	movzx	eax, WORD PTR c_label[rip]	# c_label.59, c_label
	movzx	ebx, ax	# c_label.59, c_label.59
	imul	rbx, rbx, 392	# tmp543, c_label.59,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp545,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp545
	mov	esi, OFFSET FLAT:.LC19	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movzx	edx, WORD PTR audio_current_index[rip]	# audio_current_index, audio_current_index
	mov	rax, QWORD PTR audio[rip]	# audio, audio
	mov	rax, QWORD PTR [rax+rdx*8]	# *D.10436_161, *D.10436_161
	mov	rdi, QWORD PTR [rbx+336]	# tmp550, lab_155->text_block.text
	add	rdi, 22	# tmp550,
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
	movzx	eax, WORD PTR c_label[rip]	# c_label.59, c_label
	movzx	edx, ax	# c_label.59, c_label.59
	imul	rdx, rdx, 392	# tmp557, c_label.59,
	add	rdx, QWORD PTR label[rip]	# tmp557, label
	mov	QWORD PTR [rsp+152], rdx	# %sfp, tmp557
	add	eax, 1	# tmp559,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp559
	mov	esi, OFFSET FLAT:.LC21	#,
	mov	rdi, rdx	#, tmp557
	call	Label_new	#
	mov	rax, QWORD PTR audiosinus[rip]	# audiosinus, audiosinus
	movss	xmm0, DWORD PTR [rax+112]	# tmp561, audiosinus.68_178->freq
	cvtps2pd	xmm0, xmm0	# tmp561, tmp561
	mov	rax, QWORD PTR [rsp+152]	#, %sfp
	mov	rax, QWORD PTR [rax+336]	#, lab_sine_freq_176->text_block.text
	mov	rdi, rax	# tmp562,
	add	rdi, 19	# tmp562,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp569,
	lea	rcx, [rdx+rdx*4]	# tmp571,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r14, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp574,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp574
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, r14	#, sliy2
	call	StackList_new	#
	mov	edx, 2	#,
	mov	esi, 486	#,
	mov	rdi, r14	#, sliy2
	call	Widget_setPosition	#
	mov	BYTE PTR [r14+157], 1	# MEM[(struct Widget *)sliy2_191].draggable,
	mov	rsi, r14	#, sliy2
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, r15w	# D.10457, label_off
	lea	edx, [rax+6]	#,
	mov	DWORD PTR [rsp+148], edx	# %sfp,
	cmp	eax, edx	# D.10457,
	jge	.L12	#,
	mov	ebp, r15d	# k, label_off
.L13:
	mov	r13d, ebp	# f, k
	sub	r13d, r15d	# f, label_off
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp578,
	lea	rcx, [rdx+rdx*4]	# tmp580,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbx, [rdx+rcx*8]	# sliy,
	add	eax, 1	# tmp583,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp583
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, sliy
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.56, c_buttonimage.56
	imul	r12, r12, 1616	# tmp585, c_buttonimage.56,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp587,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp587
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10445
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	movzx	r13d, r13w	# D.10446, f
	mov	rax, QWORD PTR click_handler[0+r13*8]	# D.10447, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_209].click_handler, D.10447
	mov	DWORD PTR [r12+152], 1	# MEM[(struct Widget *)butimg_209].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbx	#, sliy
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.56, c_buttonimage.56
	imul	r12, r12, 1616	# tmp591, c_buttonimage.56,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp593,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp593
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10448
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+r13*8]	# D.10447, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_218].click_handler, D.10447
	mov	DWORD PTR [r12+152], 0	# MEM[(struct Widget *)butimg_218].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbx	#, sliy
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)sliy_203].class, MEM[(struct coObject *)sliy_203].class
	mov	rax, QWORD PTR [rax+16]	# D.10449_223->vtable, D.10449_223->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10450_224 + 8B], MEM[(const void * *)D.10450_224 + 8B]
	mov	rdi, rbx	#, sliy
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10452_226].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp603,
	lea	rcx, [rdx+rdx*4]	# tmp605,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp608,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp608
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
	imul	rsi, rsi, 392	# tmp610, k,
	add	rsi, QWORD PTR label[rip]	# tmp611, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)slix_232].class, MEM[(struct coObject *)slix_232].class
	mov	rax, QWORD PTR [rax+16]	# D.10421_238->vtable, D.10421_238->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10422_239 + 8B], MEM[(const void * *)D.10422_239 + 8B]
	mov	rdi, r12	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10424_241].refresh
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
	mov	rax, QWORD PTR [r14]	# MEM[(struct coObject *)sliy2_191].class, MEM[(struct coObject *)sliy2_191].class
	mov	rax, QWORD PTR [rax+16]	# D.10460_245->vtable, D.10460_245->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10461_246 + 8B], MEM[(const void * *)D.10461_246 + 8B]
	mov	rdi, r14	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10463_248].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp625,
	lea	rcx, [rdx+rdx*4]	# tmp627,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# sliy,
	add	eax, 1	# tmp630,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp630
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy
	call	StackList_new	#
	mov	edx, 100	#,
	mov	esi, 10	#,
	mov	rdi, rbp	#, sliy
	call	Widget_setPosition	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.56, c_buttonimage.56
	imul	rbx, rbx, 1616	# tmp632, c_buttonimage.56,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp634,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp634
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10465
	mov	rdi, rbx	#, butimg
	call	ButtonImage_copy	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, butimg
	mov	rdi, rbp	#, sliy
	call	StackList_addWidgetLast	#
	mov	esi, OFFSET FLAT:.LC23	#,
	mov	edi, OFFSET FLAT:.LC24	#,
	call	SDL_RWFromFile	#
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)butimg_260].surf, MEM[(struct Widget *)butimg_260].surf
	mov	edx, 1	#,
	mov	rsi, rax	#, D.10466
	call	SDL_SaveBMP_RW	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.56, c_buttonimage.56
	imul	rbx, rbx, 1616	# tmp637, c_buttonimage.56,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp639,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp639
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10468
	mov	rdi, rbx	#, butimg
	call	ButtonImage_copy	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, butimg
	mov	rdi, rbp	#, sliy
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)sliy_254].class, MEM[(struct coObject *)sliy_254].class
	mov	rax, QWORD PTR [rax+16]	# D.10449_272->vtable, D.10449_272->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10450_273 + 8B], MEM[(const void * *)D.10450_273 + 8B]
	mov	rdi, rbp	#, sliy
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10452_275].refresh
	mov	rsi, rbp	#, sliy
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, 368	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rax, QWORD PTR Widget_class[rip]	# Widget_class, Widget_class
	mov	rdi, QWORD PTR [rax]	#, Widget_class.69_278->size
	call	wmalloc	#
	mov	rdi, rax	#, D.10471
	call	Widget_new	#
	mov	rbp, rax	# pure_widget.70,
	mov	QWORD PTR pure_widget[rip], rax	# pure_widget, pure_widget.70
	movzx	esi, WORD PTR [rbx+102]	# tmp645, MEM[(struct Widget *)butimg_269].pos.h
	add	esi, esi	# tmp645
	movzx	esi, si	# tmp647, tmp645
	movzx	edi, WORD PTR [rbx+100]	# MEM[(struct Widget *)butimg_269].pos.w, MEM[(struct Widget *)butimg_269].pos.w
	call	Static_newSurface	#
	mov	QWORD PTR [rbp+88], rax	# pure_widget.70_281->surf, D.10478
	mov	rax, QWORD PTR pure_widget[rip]	# pure_widget, pure_widget
	mov	rdx, QWORD PTR [rax+88]	# pure_widget.71_289->surf, pure_widget.71_289->surf
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)butimg_269].surf, MEM[(struct Widget *)butimg_269].surf
	mov	ecx, 0	#,
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	rax, QWORD PTR pure_widget[rip]	# pure_widget.71, pure_widget
	movzx	edx, WORD PTR [rbx+102]	# MEM[(struct Widget *)butimg_269].pos.h, MEM[(struct Widget *)butimg_269].pos.h
	mov	WORD PTR [rax+98], dx	# pure_widget.71_292->pos.y, MEM[(struct Widget *)butimg_269].pos.h
	lea	rcx, [rax+96]	# tmp653,
	mov	rdx, QWORD PTR [rax+88]	# pure_widget.71_292->surf, pure_widget.71_292->surf
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)butimg_269].surf, MEM[(struct Widget *)butimg_269].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	rdi, QWORD PTR pure_widget[rip]	# pure_widget.71, pure_widget
	mov	WORD PTR [rdi+96], 50	# pure_widget.71_300->pos.x,
	mov	WORD PTR [rdi+98], 200	# pure_widget.71_300->pos.y,
	mov	rax, QWORD PTR [rdi+88]	# D.10479, pure_widget.71_300->surf
	mov	edx, DWORD PTR [rax+16]	# D.10479_304->w, D.10479_304->w
	mov	WORD PTR [rdi+100], dx	# pure_widget.71_300->pos.w, D.10479_304->w
	mov	eax, DWORD PTR [rax+20]	# D.10479_304->h, D.10479_304->h
	mov	WORD PTR [rdi+102], ax	# pure_widget.71_300->pos.h, D.10479_304->h
	mov	BYTE PTR [rdi+159], 1	# pure_widget.71_300->visible,
	mov	BYTE PTR [rdi+157], 1	# pure_widget.71_300->draggable,
	call	Widget_updateMaxXY	#
	mov	rsi, QWORD PTR pure_widget[rip]	#, pure_widget
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_image[rip]	# c_image.73, c_image
	movzx	eax, dx	# c_image.73, c_image.73
	lea	rcx, [rax+rax*4]	# tmp661,
	lea	rbx, [rax+rcx*2]	# tmp663,
	sal	rbx, 4	# tmp664,
	add	rbx, QWORD PTR image[rip]	# img, image
	add	edx, 1	# tmp666,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp666
	mov	ecx, 300	#,
	mov	edx, 300	#,
	mov	esi, OFFSET FLAT:.LC25	#,
	mov	rdi, rbx	#, img
	call	Image_new	#
	mov	QWORD PTR [rbx+24], OFFSET FLAT:image_mrelease	# MEM[(struct Widget *)img_321].release_handler,
	mov	BYTE PTR [rbx+157], 1	# MEM[(struct Widget *)img_321].draggable,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp670,
	lea	rcx, [rdx+rdx*4]	# tmp672,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# sliy,
	add	eax, 1	# tmp675,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp675
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy
	call	StackList_new	#
	mov	edx, 400	#,
	mov	esi, 600	#,
	mov	rdi, rbp	#, sliy
	call	Widget_setPosition	#
	mov	BYTE PTR [rbp+157], 1	# MEM[(struct Widget *)sliy_329].draggable,
	mov	rsi, rbp	#, sliy
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_wdb[rip]	# c_wdb.76, c_wdb
	movzx	ebx, ax	# c_wdb.76, c_wdb.76
	imul	rbx, rbx, 232	# tmp677, c_wdb.76,
	add	rbx, QWORD PTR wdb[rip]	# wdb2, wdb
	add	eax, 1	# tmp679,
	mov	WORD PTR c_wdb[rip], ax	# c_wdb, tmp679
	mov	edx, 300	#,
	mov	rsi, QWORD PTR afg[rip]	#, afg
	mov	rdi, rbx	#, wdb2
	call	WaveDrawBox_new	#
	mov	WORD PTR [rbx+200], 15	# wdb2_336->padx,
	mov	WORD PTR [rbx+202], 10	# wdb2_336->pady,
	mov	WORD PTR [rbx+208], 5	# wdb2_336->my,
	mov	WORD PTR [rbx+196], 50	# wdb2_336->bunch,
	mov	WORD PTR [rbx+198], -21436	# wdb2_336->sample_freq,
	mov	edx, 500	#,
	mov	esi, 10	#,
	mov	rdi, rbx	#, wdb2
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)wdb2_336].class, MEM[(struct coObject *)wdb2_336].class
	mov	rax, QWORD PTR [rax+16]	# D.10497_339->vtable, D.10497_339->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10498_340 + 8B], MEM[(const void * *)D.10498_340 + 8B]
	mov	rdi, rbx	#, wdb2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10500_342].refresh
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, wdb2
	mov	rdi, rbp	#, sliy
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp687,
	lea	rcx, [rdx+rdx*4]	# tmp689,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp692,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp692
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.63, c_stacklist
	movzx	edx, ax	# c_stacklist.63, c_stacklist.63
	lea	rdx, [rdx+rdx*4]	# tmp696,
	lea	rcx, [rdx+rdx*4]	# tmp698,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r13, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp701,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp701
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.56, c_buttonimage.56
	imul	r14, r14, 1616	# tmp703, c_buttonimage.56,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp705,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp705
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10502
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r14+8], OFFSET FLAT:button_audio_from_graph_type_change	# MEM[(struct Widget *)butimg_360].click_handler,
	mov	DWORD PTR [r14+152], 1	# MEM[(struct Widget *)butimg_360].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.56, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.56, c_buttonimage.56
	imul	r14, r14, 1616	# tmp707, c_buttonimage.56,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp709,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp709
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10503
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r14+8], OFFSET FLAT:button_audio_from_graph_type_change	# MEM[(struct Widget *)butimg_367].click_handler,
	mov	DWORD PTR [r14+152], 0	# MEM[(struct Widget *)butimg_367].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r13+0]	# MEM[(struct coObject *)sliy2_354].class, MEM[(struct coObject *)sliy2_354].class
	mov	rax, QWORD PTR [rax+16]	# D.10460_370->vtable, D.10460_370->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10461_371 + 8B], MEM[(const void * *)D.10461_371 + 8B]
	mov	rdi, r13	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10463_373].refresh
	mov	DWORD PTR [rsp+8], 2	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 20	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 5	#,
	mov	rsi, r13	#, sliy2
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.59, c_label
	movzx	r13d, ax	# c_label.59, c_label.59
	imul	r13, r13, 392	# tmp715, c_label.59,
	add	r13, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp717,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp717
	mov	esi, OFFSET FLAT:.LC26	#,
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
	movzx	eax, WORD PTR c_button[rip]	# c_button.80, c_button
	movzx	r13d, ax	# c_button.80, c_button.80
	imul	r13, r13, 1744	# tmp721, c_button.80,
	add	r13, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp723,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp723
	mov	esi, OFFSET FLAT:.LC27	#,
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
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_audio_from_graph_clear	# MEM[(struct Widget *)but_389].click_handler,
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
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)slix_348].class, MEM[(struct coObject *)slix_348].class
	mov	rax, QWORD PTR [rax+16]	# D.10421_392->vtable, D.10421_392->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10422_393 + 8B], MEM[(const void * *)D.10422_393 + 8B]
	mov	rdi, r12	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10424_395].refresh
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, slix
	mov	rdi, rbp	#, sliy
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)sliy_329].class, MEM[(struct coObject *)sliy_329].class
	mov	rax, QWORD PTR [rax+16]	# D.10449_397->vtable, D.10449_397->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10450_398 + 8B], MEM[(const void * *)D.10450_398 + 8B]
	mov	rdi, rbp	#, sliy
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10452_400].refresh
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
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.10377,
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
.LFE109:
	.size	AudioMain_createInterface, .-AudioMain_createInterface
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"AudioMain_Main:AudioMain SubProgram NOT initialized\n"
	.text
	.globl	AudioMain_Main
	.type	AudioMain_Main, @function
AudioMain_Main:
.LFB110:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L18	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 52	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC29	#,
	call	fwrite	#
	mov	eax, 1	# D.10359,
	jmp	.L19	#
.L18:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_MainStart	#
	mov	eax, 0	# D.10359,
.L19:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	AudioMain_Main, .-AudioMain_Main
	.globl	AudioMain_Destroy
	.type	AudioMain_Destroy, @function
AudioMain_Destroy:
.LFB112:
	.cfi_startproc
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	je	.L72	#,
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdi, QWORD PTR pure_widget[rip]	#, pure_widget
	call	delete	#
	mov	edx, 499	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10283
	call	wfree	#
	mov	rdi, QWORD PTR font2[rip]	# font2.12, font2
	test	rdi, rdi	# font2.12
	je	.L23	#,
	mov	edx, 501	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font2[rip], 0	# font2,
.L23:
	cmp	QWORD PTR image[rip], 0	# image,
	je	.L24	#,
	cmp	WORD PTR c_image[rip], 0	# c_image,
	je	.L25	#,
	mov	ebx, 0	# i,
.L26:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*4]	# tmp187,
	lea	rdi, [rax+rdx*2]	# tmp189,
	sal	rdi, 4	# tmp190,
	add	rdi, QWORD PTR image[rip]	# tmp191, image
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_image[rip], bx	# c_image, i
	ja	.L26	#,
.L25:
	mov	edx, 502	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR image[rip]	#, image
	call	wfree	#
	mov	QWORD PTR image[rip], 0	# image,
	mov	WORD PTR c_image[rip], 0	# c_image,
.L24:
	cmp	QWORD PTR text_block[rip], 0	# text_block,
	je	.L27	#,
	cmp	WORD PTR c_textblock[rip], 0	# c_textblock,
	je	.L28	#,
	mov	ebx, 0	# i,
.L29:
	movzx	eax, bx	# i, i
	lea	rax, [rax+rax*4]	# tmp196,
	lea	rdx, [rax+rax*4]	# tmp198,
	mov	rax, QWORD PTR text_block[rip]	# text_block, text_block
	lea	rdi, [rax+rdx*8]	# tmp200,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_textblock[rip], bx	# c_textblock, i
	ja	.L29	#,
.L28:
	mov	edx, 503	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR text_block[rip]	#, text_block
	call	wfree	#
	mov	QWORD PTR text_block[rip], 0	# text_block,
	mov	WORD PTR c_textblock[rip], 0	# c_textblock,
.L27:
	cmp	QWORD PTR button[rip], 0	# button,
	je	.L30	#,
	cmp	WORD PTR c_button[rip], 0	# c_button,
	je	.L31	#,
	mov	ebx, 0	# i,
.L32:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 1744	# tmp203, i,
	add	rdi, QWORD PTR button[rip]	# tmp204, button
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_button[rip], bx	# c_button, i
	ja	.L32	#,
.L31:
	mov	edx, 504	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR button[rip]	#, button
	call	wfree	#
	mov	QWORD PTR button[rip], 0	# button,
	mov	WORD PTR c_button[rip], 0	# c_button,
.L30:
	cmp	QWORD PTR label[rip], 0	# label,
	je	.L33	#,
	cmp	WORD PTR c_label[rip], 0	# c_label,
	je	.L34	#,
	mov	ebx, 0	# i,
.L35:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 392	# tmp207, i,
	add	rdi, QWORD PTR label[rip]	# tmp208, label
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_label[rip], bx	# c_label, i
	ja	.L35	#,
.L34:
	mov	edx, 505	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR label[rip]	#, label
	call	wfree	#
	mov	QWORD PTR label[rip], 0	# label,
	mov	WORD PTR c_label[rip], 0	# c_label,
.L33:
	cmp	QWORD PTR labelimage[rip], 0	# labelimage,
	je	.L36	#,
	cmp	WORD PTR c_labelimage[rip], 0	# c_labelimage,
	je	.L37	#,
	mov	ebx, 0	# i,
.L38:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 360	# tmp211, i,
	add	rdi, QWORD PTR labelimage[rip]	# tmp212, labelimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_labelimage[rip], bx	# c_labelimage, i
	ja	.L38	#,
.L37:
	mov	edx, 506	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR labelimage[rip]	#, labelimage
	call	wfree	#
	mov	QWORD PTR labelimage[rip], 0	# labelimage,
	mov	WORD PTR c_labelimage[rip], 0	# c_labelimage,
.L36:
	cmp	QWORD PTR buttonimage[rip], 0	# buttonimage,
	je	.L39	#,
	cmp	WORD PTR c_buttonimage[rip], 0	# c_buttonimage,
	je	.L40	#,
	mov	ebx, 0	# i,
.L41:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 1616	# tmp215, i,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp216, buttonimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_buttonimage[rip], bx	# c_buttonimage, i
	ja	.L41	#,
.L40:
	mov	edx, 507	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR buttonimage[rip]	#, buttonimage
	call	wfree	#
	mov	QWORD PTR buttonimage[rip], 0	# buttonimage,
	mov	WORD PTR c_buttonimage[rip], 0	# c_buttonimage,
.L39:
	cmp	QWORD PTR rectangle[rip], 0	# rectangle,
	je	.L42	#,
	cmp	WORD PTR c_rectangle[rip], 0	# c_rectangle,
	je	.L43	#,
	mov	ebx, 0	# i,
.L44:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*4]	# tmp221,
	lea	rdi, [rax+rdx*2]	# tmp223,
	sal	rdi, 4	# tmp224,
	add	rdi, QWORD PTR rectangle[rip]	# tmp225, rectangle
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_rectangle[rip], bx	# c_rectangle, i
	ja	.L44	#,
.L43:
	mov	edx, 508	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR rectangle[rip]	#, rectangle
	call	wfree	#
	mov	QWORD PTR rectangle[rip], 0	# rectangle,
	mov	WORD PTR c_rectangle[rip], 0	# c_rectangle,
.L42:
	cmp	QWORD PTR wdb[rip], 0	# wdb,
	je	.L45	#,
	cmp	WORD PTR c_wdb[rip], 0	# c_wdb,
	je	.L46	#,
	mov	ebx, 0	# i,
.L47:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 232	# tmp228, i,
	add	rdi, QWORD PTR wdb[rip]	# tmp229, wdb
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_wdb[rip], bx	# c_wdb, i
	ja	.L47	#,
.L46:
	mov	edx, 509	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR wdb[rip]	#, wdb
	call	wfree	#
	mov	QWORD PTR wdb[rip], 0	# wdb,
	mov	WORD PTR c_wdb[rip], 0	# c_wdb,
.L45:
	cmp	QWORD PTR stacklist[rip], 0	# stacklist,
	je	.L48	#,
	cmp	WORD PTR c_stacklist[rip], 0	# c_stacklist,
	je	.L49	#,
	mov	ebx, 0	# i,
.L50:
	movzx	eax, bx	# i, i
	lea	rax, [rax+rax*4]	# tmp234,
	lea	rdx, [rax+rax*4]	# tmp236,
	mov	rax, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rdi, [rax+rdx*8]	# tmp238,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_stacklist[rip], bx	# c_stacklist, i
	ja	.L50	#,
.L49:
	mov	edx, 510	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR stacklist[rip]	#, stacklist
	call	wfree	#
	mov	QWORD PTR stacklist[rip], 0	# stacklist,
	mov	WORD PTR c_stacklist[rip], 0	# c_stacklist,
.L48:
	cmp	QWORD PTR grid[rip], 0	# grid,
	je	.L51	#,
	cmp	WORD PTR c_grid[rip], 0	# c_grid,
	je	.L52	#,
	mov	ebx, 0	# i,
.L53:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp243,
	lea	rdi, [rax+rdx*4]	# tmp245,
	sal	rdi, 4	# tmp246,
	add	rdi, QWORD PTR grid[rip]	# tmp247, grid
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_grid[rip], bx	# c_grid, i
	ja	.L53	#,
.L52:
	mov	edx, 511	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, QWORD PTR grid[rip]	#, grid
	call	wfree	#
	mov	QWORD PTR grid[rip], 0	# grid,
	mov	WORD PTR c_grid[rip], 0	# c_grid,
.L51:
	mov	rdi, QWORD PTR background[rip]	# background.33, background
	test	rdi, rdi	# background.33
	je	.L54	#,
	call	delete	#
	mov	edx, 513	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10349
	call	wfree	#
	mov	QWORD PTR background[rip], 0	# background,
.L54:
	mov	rdi, QWORD PTR sc[rip]	# sc.34, sc
	test	rdi, rdi	# sc.34
	je	.L55	#,
	call	delete	#
	mov	edx, 514	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10353
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L55:
	mov	rdi, QWORD PTR audiotest[rip]	# audiotest.6, audiotest
	test	rdi, rdi	# audiotest.6
	je	.L56	#,
	call	delete	#
	mov	edx, 488	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10729
	call	wfree	#
	mov	QWORD PTR audiotest[rip], 0	# audiotest,
.L56:
	mov	rdi, QWORD PTR audiosinus[rip]	# audiosinus.7, audiosinus
	test	rdi, rdi	# audiosinus.7
	je	.L57	#,
	call	delete	#
	mov	edx, 489	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10727
	call	wfree	#
	mov	QWORD PTR audiosinus[rip], 0	# audiosinus,
.L57:
	mov	rdi, QWORD PTR afg[rip]	# afg.8, afg
	test	rdi, rdi	# afg.8
	je	.L58	#,
	call	delete	#
	mov	edx, 490	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10725
	call	wfree	#
	mov	QWORD PTR afg[rip], 0	# afg,
.L58:
	mov	rdi, QWORD PTR audio[rip]	# audio.9, audio
	test	rdi, rdi	# audio.9
	je	.L59	#,
	mov	edx, 491	#,
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
.LFE112:
	.size	AudioMain_Destroy, .-AudioMain_Destroy
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"AudioMain_Initialize: Screen_new failed with error %s\n"
	.align 8
.LC31:
	.string	"AudioMain_createAudio:AudioMain failed\n"
	.align 8
.LC32:
	.string	"AudioMain_createInterface:AudioMain failed\n"
	.text
	.globl	AudioMain_Initialize
	.type	AudioMain_Initialize, @function
AudioMain_Initialize:
.LFB113:
	.cfi_startproc
	mov	eax, 0	# D.10240,
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L85	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [rsp+12], 0	# e,
	mov	edx, 525	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rax, QWORD PTR Screen_class[rip]	# Screen_class, Screen_class
	mov	rdi, QWORD PTR [rax]	#, Screen_class.1_4->size
	call	wmalloc	#
	mov	edx, 0	#,
	lea	rsi, [rsp+12]	#,
	mov	rdi, rax	#, D.10243
	call	Screen_new	#
	mov	QWORD PTR sc[rip], rax	# sc, sc.2
	mov	edi, DWORD PTR [rsp+12]	# e.3, e
	test	edi, edi	# e.3
	je	.L75	#,
	call	perr_getName	#
	mov	rcx, rax	#, D.10248
	mov	edx, OFFSET FLAT:.LC30	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 528	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10251
	call	wfree	#
	mov	eax, 1	# D.10240,
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
	test	eax, eax	# D.10252
	je	.L76	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 39	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC31	#,
	call	fwrite	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 537	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10255
	call	wfree	#
	mov	eax, 1	# D.10240,
	jmp	.L74	#
.L76:
	mov	eax, 0	#,
	call	AudioMain_createInterface	#
	test	eax, eax	# D.10256
	je	.L77	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 43	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC32	#,
	call	fwrite	#
	mov	rdi, QWORD PTR audiotest[rip]	# audiotest.6, audiotest
	test	rdi, rdi	# audiotest.6
	je	.L78	#,
	call	delete	#
	mov	edx, 488	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10777
	call	wfree	#
	mov	QWORD PTR audiotest[rip], 0	# audiotest,
.L78:
	mov	rdi, QWORD PTR audiosinus[rip]	# audiosinus.7, audiosinus
	test	rdi, rdi	# audiosinus.7
	je	.L79	#,
	call	delete	#
	mov	edx, 489	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10775
	call	wfree	#
	mov	QWORD PTR audiosinus[rip], 0	# audiosinus,
.L79:
	mov	rdi, QWORD PTR afg[rip]	# afg.8, afg
	test	rdi, rdi	# afg.8
	je	.L80	#,
	call	delete	#
	mov	edx, 490	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10773
	call	wfree	#
	mov	QWORD PTR afg[rip], 0	# afg,
.L80:
	mov	rdi, QWORD PTR audio[rip]	# audio.9, audio
	test	rdi, rdi	# audio.9
	je	.L81	#,
	mov	edx, 491	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wfree	#
	mov	QWORD PTR audio[rip], 0	# audio,
.L81:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 545	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.10259
	call	wfree	#
	mov	eax, 1	# D.10240,
	jmp	.L74	#
.L77:
	mov	BYTE PTR is_inited[rip], 1	# is_inited,
	mov	eax, 0	# D.10240,
.L74:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
.L85:
	rep
	ret
	.cfi_endproc
.LFE113:
	.size	AudioMain_Initialize, .-AudioMain_Initialize
	.comm	IMAGE_SUPPORTED_FILES,8,8
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
	.local	pure_widget
	.comm	pure_widget,8,8
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
