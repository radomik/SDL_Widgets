	.file	"AudioCallbacks.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioCallbacks.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/AudioCallbacks.asm
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
	.globl	button_play_clicked
	.type	button_play_clicked, @function
button_play_clicked:
.LFB107:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# sender, sender
	mov	rax, QWORD PTR [rdi+128]	# D.10443, sender_1(D)->vparam
	mov	rdx, QWORD PTR [rax]	# audio, *D.10443_2
	mov	rax, QWORD PTR [rax+8]	# MEM[(void * *)D.10443_2 + 8B], MEM[(void * *)D.10443_2 + 8B]
	movzx	eax, WORD PTR [rax]	# D.10444, *audio_current_index_5
	cmp	ax, -1	# D.10444,
	je	.L1	#,
	mov	rbp, rsi	# screen, screen
	movzx	eax, ax	# D.10444, D.10444
	mov	rdi, QWORD PTR [rdx+rax*8]	# D.10450, *D.10449_10
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)D.10450_11].class, MEM[(struct coObject *)D.10450_11].class
	mov	rax, QWORD PTR [rax+16]	# D.10451_12->vtable, D.10451_12->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10452_13 + 8B], MEM[(const void * *)D.10452_13 + 8B]
	mov	esi, 0	#,
	call	[QWORD PTR [rax]]	# MEM[(struct IAudio *)D.10454_15].play
	test	al, al	# D.10456
	jne	.L1	#,
	mov	rax, QWORD PTR ButtonImage_class[rip]	#, ButtonImage_class
	cmp	QWORD PTR [rbx], rax	# MEM[(struct coObject *)sender_1(D)].class,
	jne	.L1	#,
	movzx	esi, WORD PTR [rbx+520]	# MEM[(struct ButtonImage *)sender_1(D)].labelimage[0].border_width, MEM[(struct ButtonImage *)sender_1(D)].labelimage[0].border_width
	mov	edx, 16711680	#,
	mov	rdi, rbx	#, sender
	call	ButtonImage_setBorder	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)sender_1(D)].class, MEM[(struct coObject *)sender_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.10459_28->vtable, D.10459_28->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10465_29 + 8B], MEM[(const void * *)D.10465_29 + 8B]
	mov	rdi, rbx	#, sender
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10467_31].refresh
	mov	BYTE PTR [rbp+173], 1	# screen_33(D)->need_reload,
.L1:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	button_play_clicked, .-button_play_clicked
	.globl	button_stop_clicked
	.type	button_stop_clicked, @function
button_stop_clicked:
.LFB108:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+128]	# D.10434, sender_1(D)->vparam
	mov	rdx, QWORD PTR [rax]	# audio, *D.10434_2
	mov	rax, QWORD PTR [rax+8]	# MEM[(void * *)D.10434_2 + 8B], MEM[(void * *)D.10434_2 + 8B]
	movzx	eax, WORD PTR [rax]	# D.10435, *audio_current_index_5
	cmp	ax, -1	# D.10435,
	je	.L8	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	eax, ax	# D.10435, D.10435
	mov	rdi, QWORD PTR [rdx+rax*8]	# *D.10440_10, *D.10440_10
	call	Audio_stop	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L8:
	rep
	ret
	.cfi_endproc
.LFE108:
	.size	button_stop_clicked, .-button_stop_clicked
	.globl	button_pause_clicked
	.type	button_pause_clicked, @function
button_pause_clicked:
.LFB109:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+128]	# D.10425, sender_1(D)->vparam
	mov	rdx, QWORD PTR [rax]	# audio, *D.10425_2
	mov	rax, QWORD PTR [rax+8]	# MEM[(void * *)D.10425_2 + 8B], MEM[(void * *)D.10425_2 + 8B]
	movzx	eax, WORD PTR [rax]	# D.10426, *audio_current_index_5
	cmp	ax, -1	# D.10426,
	je	.L13	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	eax, ax	# D.10426, D.10426
	mov	rdi, QWORD PTR [rdx+rax*8]	# *D.10431_10, *D.10431_10
	call	Audio_pause	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L13:
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	button_pause_clicked, .-button_pause_clicked
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%5d Hz"
	.text
	.globl	button_freq1_change
	.type	button_freq1_change, @function
button_freq1_change:
.LFB110:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+120]	# D.10403, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10403_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.10403_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L15	#,
	mov	esi, DWORD PTR [rbx+104]	# D.10407, audiotest_5->freq1
	cmp	esi, 19999	# D.10407,
	ja	.L14	#,
	add	esi, 10	# tmp76,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq1	#
	jmp	.L17	#
.L15:
	mov	esi, DWORD PTR [rbx+104]	# D.10407, audiotest_5->freq1
	cmp	esi, 10	# D.10407,
	jbe	.L14	#,
	sub	esi, 10	# tmp77,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq1	#
.L17:
	mov	rdi, QWORD PTR [rbp+336]	# tmp79, label_3->text_block.text
	add	rdi, 12	# tmp79,
	mov	r8d, DWORD PTR [rbx+104]	#, audiotest_5->freq1
	mov	ecx, OFFSET FLAT:.LC0	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10419_16->vtable, D.10419_16->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10420_17 + 8B], MEM[(const void * *)D.10420_17 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10422_19].refresh
	mov	BYTE PTR [r12+173], 1	# screen_21(D)->need_reload,
.L14:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	button_freq1_change, .-button_freq1_change
	.section	.rodata.str1.1
.LC1:
	.string	"%5d"
	.text
	.globl	button_fase1_change
	.type	button_fase1_change, @function
button_fase1_change:
.LFB111:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+120]	# D.10381, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10381_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.10381_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L20	#,
	mov	esi, DWORD PTR [rbx+112]	# D.10385, audiotest_5->fase1
	cmp	esi, 999	# D.10385,
	ja	.L19	#,
	add	esi, 5	# tmp76,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase1	#
	jmp	.L22	#
.L20:
	mov	esi, DWORD PTR [rbx+112]	# D.10385, audiotest_5->fase1
	test	esi, esi	# D.10385
	je	.L19	#,
	sub	esi, 5	# tmp77,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase1	#
.L22:
	mov	rdi, QWORD PTR [rbp+336]	# tmp79, label_3->text_block.text
	add	rdi, 7	# tmp79,
	mov	r8d, DWORD PTR [rbx+112]	#, audiotest_5->fase1
	mov	ecx, OFFSET FLAT:.LC1	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10397_16->vtable, D.10397_16->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10398_17 + 8B], MEM[(const void * *)D.10398_17 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10400_19].refresh
	mov	BYTE PTR [r12+173], 1	# screen_21(D)->need_reload,
.L19:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE111:
	.size	button_fase1_change, .-button_fase1_change
	.globl	button_freq2_change
	.type	button_freq2_change, @function
button_freq2_change:
.LFB112:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+120]	# D.10359, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10359_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.10359_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L25	#,
	mov	esi, DWORD PTR [rbx+108]	# D.10363, audiotest_5->freq2
	cmp	esi, 19999	# D.10363,
	ja	.L24	#,
	add	esi, 10	# tmp76,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq2	#
	jmp	.L27	#
.L25:
	mov	esi, DWORD PTR [rbx+108]	# D.10363, audiotest_5->freq2
	cmp	esi, 10	# D.10363,
	jbe	.L24	#,
	sub	esi, 10	# tmp77,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq2	#
.L27:
	mov	rdi, QWORD PTR [rbp+336]	# tmp79, label_3->text_block.text
	add	rdi, 12	# tmp79,
	mov	r8d, DWORD PTR [rbx+108]	#, audiotest_5->freq2
	mov	ecx, OFFSET FLAT:.LC0	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10375_16->vtable, D.10375_16->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10376_17 + 8B], MEM[(const void * *)D.10376_17 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10378_19].refresh
	mov	BYTE PTR [r12+173], 1	# screen_21(D)->need_reload,
.L24:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	button_freq2_change, .-button_freq2_change
	.globl	button_fase2_change
	.type	button_fase2_change, @function
button_fase2_change:
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
	mov	r12, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+120]	# D.10337, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10337_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.10337_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L30	#,
	mov	esi, DWORD PTR [rbx+116]	# D.10341, audiotest_5->fase2
	cmp	esi, 999	# D.10341,
	ja	.L29	#,
	add	esi, 5	# tmp76,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase2	#
	jmp	.L32	#
.L30:
	mov	esi, DWORD PTR [rbx+116]	# D.10341, audiotest_5->fase2
	test	esi, esi	# D.10341
	je	.L29	#,
	sub	esi, 5	# tmp77,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase2	#
.L32:
	mov	rdi, QWORD PTR [rbp+336]	# tmp79, label_3->text_block.text
	add	rdi, 7	# tmp79,
	mov	r8d, DWORD PTR [rbx+116]	#, audiotest_5->fase2
	mov	ecx, OFFSET FLAT:.LC1	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10353_16->vtable, D.10353_16->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10354_17 + 8B], MEM[(const void * *)D.10354_17 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10356_19].refresh
	mov	BYTE PTR [r12+173], 1	# screen_21(D)->need_reload,
.L29:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	button_fase2_change, .-button_fase2_change
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"button_source_change() > Index %hu exceeds audio[%hu] array\n"
	.section	.rodata.str1.1
.LC3:
	.string	"%20s"
	.text
	.globl	button_source_change
	.type	button_source_change, @function
button_source_change:
.LFB114:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rax, QWORD PTR [rdi+120]	# D.10294, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rax]	# label, *D.10294_2
	mov	r12, QWORD PTR [rax+8]	# audio, MEM[(void * *)D.10294_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# audio_current_index, MEM[(void * *)D.10294_2 + 16B]
	movzx	ecx, WORD PTR [rbx]	# D.10295, *audio_current_index_7
	mov	rax, QWORD PTR [rax+24]	# MEM[(void * *)D.10294_2 + 24B], MEM[(void * *)D.10294_2 + 24B]
	movzx	r8d, WORD PTR [rax]	# D.10296, *cnt_audio_9
	cmp	cx, r8w	# D.10295, D.10296
	jb	.L35	#,
	movzx	ecx, cx	# D.10295, D.10295
	movzx	r8d, r8w	#, D.10296
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L34	#
.L35:
	mov	r13, rsi	# screen, screen
	movzx	eax, cx	# D.10295, D.10295
	mov	rax, QWORD PTR [r12+rax*8]	# audio_current, *D.10304_20
	movzx	r14d, BYTE PTR [rax+13]	# _play, audio_current_21->play
	movzx	r15d, BYTE PTR [rax+14]	# _pause, audio_current_21->pause
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L37	#,
	test	cx, cx	# D.10295
	je	.L34	#,
	mov	rdi, rax	#, audio_current
	call	Audio_remove	#
	sub	WORD PTR [rbx], 1	# *audio_current_index_7,
	jmp	.L38	#
.L37:
	movzx	ecx, cx	# D.10295, D.10295
	movzx	r8d, r8w	# D.10296, D.10296
	sub	r8d, 1	# tmp108,
	cmp	ecx, r8d	# D.10295, tmp108
	je	.L34	#,
	mov	rdi, rax	#, audio_current
	call	Audio_remove	#
	add	WORD PTR [rbx], 1	# *audio_current_index_7,
.L38:
	movzx	eax, WORD PTR [rbx]	# *audio_current_index_7, *audio_current_index_7
	mov	rbx, QWORD PTR [r12+rax*8]	# audio_current, *D.10304_38
	test	r14b, r14b	# _play
	je	.L39	#,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)audio_current_39].class, MEM[(struct coObject *)audio_current_39].class
	mov	rax, QWORD PTR [rax+16]	# D.10320_40->vtable, D.10320_40->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10321_41 + 8B], MEM[(const void * *)D.10321_41 + 8B]
	movzx	esi, r15b	# _pause, _pause
	mov	rdi, rbx	#, audio_current
	call	[QWORD PTR [rax]]	# MEM[(struct IAudio *)D.10323_43].play
.L39:
	mov	rdi, QWORD PTR [rbp+336]	# tmp116, label_3->text_block.text
	add	rdi, 22	# tmp116,
	lea	r8, [rbx+80]	#,
	mov	ecx, OFFSET FLAT:.LC3	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10329_49->vtable, D.10329_49->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10330_50 + 8B], MEM[(const void * *)D.10330_50 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10332_52].refresh
	mov	BYTE PTR [r13+173], 1	# screen_54(D)->need_reload,
.L34:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	mov	r12, QWORD PTR [rsp+24]	#,
	mov	r13, QWORD PTR [rsp+32]	#,
	mov	r14, QWORD PTR [rsp+40]	#,
	mov	r15, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE114:
	.size	button_source_change, .-button_source_change
	.section	.rodata.str1.1
.LC6:
	.string	"%8.2f"
	.text
	.globl	button_sinefreq_change
	.type	button_sinefreq_change, @function
button_sinefreq_change:
.LFB115:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+120]	# D.10271, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10271_2
	mov	rbx, QWORD PTR [rdx+8]	# audiosinus, MEM[(void * *)D.10271_2 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_1(D)->id,
	je	.L42	#,
	movss	xmm0, DWORD PTR [rbx+112]	# D.10275, audiosinus_5->freq
	movss	xmm1, DWORD PTR .LC4[rip]	# tmp77,
	ucomiss	xmm1, xmm0	# tmp77, D.10275
	jbe	.L41	#,
	addss	xmm0, DWORD PTR .LC5[rip]	# tmp78,
	mov	rdi, rbx	#, audiosinus
	call	AudioSinus_setFrequency	#
	jmp	.L45	#
.L42:
	movss	xmm0, DWORD PTR [rbx+112]	# D.10275, audiosinus_5->freq
	ucomiss	xmm0, DWORD PTR .LC5[rip]	# D.10275,
	jb	.L41	#,
	subss	xmm0, DWORD PTR .LC5[rip]	# tmp80,
	mov	rdi, rbx	#, audiosinus
	call	AudioSinus_setFrequency	#
.L45:
	movss	xmm0, DWORD PTR [rbx+112]	# tmp82, audiosinus_5->freq
	cvtps2pd	xmm0, xmm0	# tmp82, tmp82
	mov	rdi, QWORD PTR [rbp+336]	# tmp83, label_3->text_block.text
	add	rdi, 19	# tmp83,
	mov	ecx, OFFSET FLAT:.LC6	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_3].class, MEM[(struct coObject *)label_3].class
	mov	rax, QWORD PTR [rax+16]	# D.10288_17->vtable, D.10288_17->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10289_18 + 8B], MEM[(const void * *)D.10289_18 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10291_20].refresh
	mov	BYTE PTR [r12+173], 1	# screen_22(D)->need_reload,
.L41:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	button_sinefreq_change, .-button_sinefreq_change
	.globl	image_mrelease
	.type	image_mrelease, @function
image_mrelease:
.LFB116:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# D.10254, sender_2(D)->vparam
	mov	rbx, QWORD PTR [rax]	# label, *D.10254_3
	mov	rbp, QWORD PTR [rax+8]	# audiosinus, MEM[(void * *)D.10254_3 + 8B]
	movsx	eax, WORD PTR [rdi+98]	# sender_2(D)->pos.y, sender_2(D)->pos.y
	cvtsi2ss	xmm0, eax	# tmp78, sender_2(D)->pos.y
	movsx	eax, WORD PTR [rdi+96]	# sender_2(D)->pos.x, sender_2(D)->pos.x
	cvtsi2ss	xmm1, eax	# tmp82, sender_2(D)->pos.x
	mulss	xmm0, DWORD PTR .LC5[rip]	# freq,
	addss	xmm0, xmm1	# freq, tmp82
	movss	xmm1, DWORD PTR .LC4[rip]	# tmp92,
	cmpnltss	xmm1, xmm0	#, tmp93, freq
	andps	xmm0, xmm1	# tmp94, tmp93
	movss	xmm2, DWORD PTR .LC4[rip]	# tmp91,
	andnps	xmm1, xmm2	# tmp95, tmp91
	orps	xmm0, xmm1	# freq, tmp95
	mov	rdi, rbp	#, audiosinus
	call	AudioSinus_setFrequency	#
	movss	xmm0, DWORD PTR [rbp+112]	# tmp84, audiosinus_6->freq
	cvtps2pd	xmm0, xmm0	# tmp84, tmp84
	mov	rdi, QWORD PTR [rbx+336]	# tmp85, label_4->text_block.text
	add	rdi, 19	# tmp85,
	mov	ecx, OFFSET FLAT:.LC6	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)label_4].class, MEM[(struct coObject *)label_4].class
	mov	rax, QWORD PTR [rax+16]	# D.10266_18->vtable, D.10266_18->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10267_19 + 8B], MEM[(const void * *)D.10267_19 + 8B]
	mov	rdi, rbx	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10269_21].refresh
	mov	BYTE PTR [r12+173], 1	# screen_23(D)->need_reload,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE116:
	.size	image_mrelease, .-image_mrelease
	.section	.rodata.str1.1
.LC7:
	.string	"Interpolacja"
.LC8:
	.string	"Multipleksacja"
	.text
	.globl	button_audio_from_graph_type_change
	.type	button_audio_from_graph_type_change, @function
button_audio_from_graph_type_change:
.LFB117:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rsi	# screen, screen
	mov	rdx, QWORD PTR [rdi+120]	# D.10228, sender_2(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.10228_3
	mov	rbx, QWORD PTR [rdx+8]	# afg, MEM[(void * *)D.10228_3 + 8B]
	cmp	DWORD PTR [rdi+152], 0	# sender_2(D)->id,
	je	.L55	#,
	cmp	BYTE PTR [rbx+130], 0	# afg_6->type,
	jne	.L54	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, afg
	call	AudioFromGraph_setType	#
	jmp	.L57	#
.L55:
	cmp	BYTE PTR [rbx+130], 0	# afg_6->type,
	je	.L54	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, afg
	call	AudioFromGraph_setType	#
.L57:
	cmp	BYTE PTR [rbx+130], 0	# afg_6->type,
	mov	eax, OFFSET FLAT:.LC7	# tmp80,
	mov	esi, OFFSET FLAT:.LC8	# tmp79,
	cmovne	rsi, rax	# tmp79,, iftmp.0, tmp80
	mov	rdi, QWORD PTR [rbp+336]	# label_4->text_block.text, label_4->text_block.text
	call	strcpy	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)label_4].class, MEM[(struct coObject *)label_4].class
	mov	rax, QWORD PTR [rax+16]	# D.10245_14->vtable, D.10245_14->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10246_15 + 8B], MEM[(const void * *)D.10246_15 + 8B]
	mov	rdi, rbp	#, label
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10248_17].refresh
	mov	BYTE PTR [r12+173], 1	# screen_19(D)->need_reload,
.L54:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE117:
	.size	button_audio_from_graph_type_change, .-button_audio_from_graph_type_change
	.globl	button_audio_from_graph_clear
	.type	button_audio_from_graph_clear, @function
button_audio_from_graph_clear:
.LFB118:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+128]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	#, *D.10227_2
	call	WaveDrawBox_clearData	#
	mov	BYTE PTR [rbx+173], 1	# screen_4(D)->need_reload,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE118:
	.size	button_audio_from_graph_clear, .-button_audio_from_graph_clear
	.comm	IMAGE_SUPPORTED_FILES,8,8
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	1184645120
	.align 4
.LC5:
	.long	1101004800
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
