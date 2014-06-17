	.file	"AudioCallbacks.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioCallbacks.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/AudioCallbacks.asm
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
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# sender, sender
	mov	rax, QWORD PTR [rdi+96]	# D.9729, sender_1(D)->vparam
	mov	rdx, QWORD PTR [rax]	# audio, *D.9729_2
	mov	rax, QWORD PTR [rax+8]	# MEM[(void * *)D.9729_2 + 8B], MEM[(void * *)D.9729_2 + 8B]
	movzx	eax, WORD PTR [rax]	# D.9730, *audio_current_index_5
	cmp	ax, -1	# D.9730,
	je	.L1	#,
	mov	rbp, rsi	# screen, screen
	movzx	eax, ax	# D.9730, D.9730
	mov	rdi, QWORD PTR [rdx+rax*8]	# *D.9735_10, *D.9735_10
	mov	esi, 0	#,
	call	Audio_play	#
	test	al, al	# D.9737
	jne	.L1	#,
	cmp	DWORD PTR [rbx+124], 5	# sender_1(D)->type,
	jne	.L1	#,
	movzx	esi, WORD PTR [rbx+448]	# MEM[(struct ButtonImage *)sender_1(D)].labelimage[0].border_width, MEM[(struct ButtonImage *)sender_1(D)].labelimage[0].border_width
	mov	edx, 16711680	#,
	mov	rdi, rbx	#, sender
	call	ButtonImage_setBorder	#
	mov	rdi, rbx	#, sender
	call	ButtonImage_refresh	#
	mov	BYTE PTR [rbp+132], 1	# screen_17(D)->need_reload,
.L1:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	button_play_clicked, .-button_play_clicked
	.globl	button_stop_clicked
	.type	button_stop_clicked, @function
button_stop_clicked:
.LFB94:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+96]	# D.9720, sender_1(D)->vparam
	mov	rdx, QWORD PTR [rax]	# audio, *D.9720_2
	mov	rax, QWORD PTR [rax+8]	# MEM[(void * *)D.9720_2 + 8B], MEM[(void * *)D.9720_2 + 8B]
	movzx	eax, WORD PTR [rax]	# D.9721, *audio_current_index_5
	cmp	ax, -1	# D.9721,
	je	.L8	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	eax, ax	# D.9721, D.9721
	mov	rdi, QWORD PTR [rdx+rax*8]	# *D.9726_10, *D.9726_10
	call	Audio_stop	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L8:
	rep
	ret
	.cfi_endproc
.LFE94:
	.size	button_stop_clicked, .-button_stop_clicked
	.globl	button_pause_clicked
	.type	button_pause_clicked, @function
button_pause_clicked:
.LFB95:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+96]	# D.9711, sender_1(D)->vparam
	mov	rdx, QWORD PTR [rax]	# audio, *D.9711_2
	mov	rax, QWORD PTR [rax+8]	# MEM[(void * *)D.9711_2 + 8B], MEM[(void * *)D.9711_2 + 8B]
	movzx	eax, WORD PTR [rax]	# D.9712, *audio_current_index_5
	cmp	ax, -1	# D.9712,
	je	.L13	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	eax, ax	# D.9712, D.9712
	mov	rdi, QWORD PTR [rdx+rax*8]	# *D.9717_10, *D.9717_10
	call	Audio_pause	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L13:
	rep
	ret
	.cfi_endproc
.LFE95:
	.size	button_pause_clicked, .-button_pause_clicked
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%5d Hz"
	.text
	.globl	button_freq1_change
	.type	button_freq1_change, @function
button_freq1_change:
.LFB96:
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
	mov	rdx, QWORD PTR [rdi+88]	# D.9694, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.9694_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.9694_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L15	#,
	mov	esi, DWORD PTR [rbx+128]	# D.9698, audiotest_5->freq1
	cmp	esi, 19999	# D.9698,
	ja	.L14	#,
	add	esi, 10	# tmp72,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq1	#
	jmp	.L17	#
.L15:
	mov	esi, DWORD PTR [rbx+128]	# D.9698, audiotest_5->freq1
	cmp	esi, 10	# D.9698,
	jbe	.L14	#,
	sub	esi, 10	# tmp73,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq1	#
.L17:
	mov	rdi, QWORD PTR [rbp+288]	# tmp75, label_3->text_block.text
	add	rdi, 12	# tmp75,
	mov	r8d, DWORD PTR [rbx+128]	#, audiotest_5->freq1
	mov	ecx, OFFSET FLAT:.LC0	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_16(D)->need_reload,
.L14:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	button_freq1_change, .-button_freq1_change
	.section	.rodata.str1.1
.LC1:
	.string	"%5d"
	.text
	.globl	button_fase1_change
	.type	button_fase1_change, @function
button_fase1_change:
.LFB97:
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
	mov	rdx, QWORD PTR [rdi+88]	# D.9677, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.9677_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.9677_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L20	#,
	mov	esi, DWORD PTR [rbx+136]	# D.9681, audiotest_5->fase1
	cmp	esi, 999	# D.9681,
	ja	.L19	#,
	add	esi, 5	# tmp72,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase1	#
	jmp	.L22	#
.L20:
	mov	esi, DWORD PTR [rbx+136]	# D.9681, audiotest_5->fase1
	test	esi, esi	# D.9681
	je	.L19	#,
	sub	esi, 5	# tmp73,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase1	#
.L22:
	mov	rdi, QWORD PTR [rbp+288]	# tmp75, label_3->text_block.text
	add	rdi, 7	# tmp75,
	mov	r8d, DWORD PTR [rbx+136]	#, audiotest_5->fase1
	mov	ecx, OFFSET FLAT:.LC1	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_16(D)->need_reload,
.L19:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	button_fase1_change, .-button_fase1_change
	.globl	button_freq2_change
	.type	button_freq2_change, @function
button_freq2_change:
.LFB98:
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
	mov	rdx, QWORD PTR [rdi+88]	# D.9660, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.9660_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.9660_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L25	#,
	mov	esi, DWORD PTR [rbx+132]	# D.9664, audiotest_5->freq2
	cmp	esi, 19999	# D.9664,
	ja	.L24	#,
	add	esi, 10	# tmp72,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq2	#
	jmp	.L27	#
.L25:
	mov	esi, DWORD PTR [rbx+132]	# D.9664, audiotest_5->freq2
	cmp	esi, 10	# D.9664,
	jbe	.L24	#,
	sub	esi, 10	# tmp73,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFreq2	#
.L27:
	mov	rdi, QWORD PTR [rbp+288]	# tmp75, label_3->text_block.text
	add	rdi, 12	# tmp75,
	mov	r8d, DWORD PTR [rbx+132]	#, audiotest_5->freq2
	mov	ecx, OFFSET FLAT:.LC0	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_16(D)->need_reload,
.L24:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	button_freq2_change, .-button_freq2_change
	.globl	button_fase2_change
	.type	button_fase2_change, @function
button_fase2_change:
.LFB99:
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
	mov	rdx, QWORD PTR [rdi+88]	# D.9643, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.9643_2
	mov	rbx, QWORD PTR [rdx+8]	# audiotest, MEM[(void * *)D.9643_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L30	#,
	mov	esi, DWORD PTR [rbx+140]	# D.9647, audiotest_5->fase2
	cmp	esi, 999	# D.9647,
	ja	.L29	#,
	add	esi, 5	# tmp72,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase2	#
	jmp	.L32	#
.L30:
	mov	esi, DWORD PTR [rbx+140]	# D.9647, audiotest_5->fase2
	test	esi, esi	# D.9647
	je	.L29	#,
	sub	esi, 5	# tmp73,
	mov	rdi, rbx	#, audiotest
	call	AudioTest_setFase2	#
.L32:
	mov	rdi, QWORD PTR [rbp+288]	# tmp75, label_3->text_block.text
	add	rdi, 7	# tmp75,
	mov	r8d, DWORD PTR [rbx+140]	#, audiotest_5->fase2
	mov	ecx, OFFSET FLAT:.LC1	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_16(D)->need_reload,
.L29:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
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
.LFB100:
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
	mov	rax, QWORD PTR [rdi+88]	# D.9609, sender_1(D)->cparam
	mov	r12, QWORD PTR [rax]	# label, *D.9609_2
	mov	rbp, QWORD PTR [rax+8]	# audio, MEM[(void * *)D.9609_2 + 8B]
	mov	rbx, QWORD PTR [rax+16]	# audio_current_index, MEM[(void * *)D.9609_2 + 16B]
	movzx	ecx, WORD PTR [rbx]	# D.9610, *audio_current_index_7
	mov	rax, QWORD PTR [rax+24]	# MEM[(void * *)D.9609_2 + 24B], MEM[(void * *)D.9609_2 + 24B]
	movzx	r8d, WORD PTR [rax]	# D.9611, *cnt_audio_9
	cmp	cx, r8w	# D.9610, D.9611
	jb	.L35	#,
	movzx	ecx, cx	# D.9610, D.9610
	movzx	r8d, r8w	#, D.9611
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L34	#
.L35:
	mov	r13, rsi	# screen, screen
	movzx	eax, cx	# D.9610, D.9610
	mov	rax, QWORD PTR [rbp+0+rax*8]	# D.9620, *D.9619_20
	movzx	r14d, BYTE PTR [rax+25]	# _play, D.9620_21->play
	movzx	r15d, BYTE PTR [rax+26]	# _pause, D.9620_21->pause
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L37	#,
	test	cx, cx	# D.9610
	je	.L34	#,
	mov	rdi, rax	#, D.9620
	call	Audio_remove	#
	sub	WORD PTR [rbx], 1	# *audio_current_index_7,
	jmp	.L38	#
.L37:
	movzx	ecx, cx	# D.9610, D.9610
	movzx	r8d, r8w	# D.9611, D.9611
	sub	r8d, 1	# tmp105,
	cmp	ecx, r8d	# D.9610, tmp105
	je	.L34	#,
	mov	rdi, rax	#, D.9620
	call	Audio_remove	#
	add	WORD PTR [rbx], 1	# *audio_current_index_7,
.L38:
	test	r14b, r14b	# _play
	je	.L39	#,
	movzx	esi, r15b	# _pause, _pause
	movzx	eax, WORD PTR [rbx]	# *audio_current_index_7, *audio_current_index_7
	mov	rdi, QWORD PTR [rbp+0+rax*8]	# *D.9619_54, *D.9619_54
	call	Audio_play	#
.L39:
	movzx	eax, WORD PTR [rbx]	# *audio_current_index_7, *audio_current_index_7
	mov	rax, QWORD PTR [rbp+0+rax*8]	# *D.9619_59, *D.9619_59
	mov	rdi, QWORD PTR [r12+288]	# tmp112, label_3->text_block.text
	add	rdi, 22	# tmp112,
	lea	r8, [rax+104]	#,
	mov	ecx, OFFSET FLAT:.LC3	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	rdi, r12	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r13+132], 1	# screen_64(D)->need_reload,
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
.LFE100:
	.size	button_source_change, .-button_source_change
	.section	.rodata.str1.1
.LC6:
	.string	"%8.2f"
	.text
	.globl	button_sinefreq_change
	.type	button_sinefreq_change, @function
button_sinefreq_change:
.LFB101:
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
	mov	rdx, QWORD PTR [rdi+88]	# D.9591, sender_1(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.9591_2
	mov	rbx, QWORD PTR [rdx+8]	# audiosinus, MEM[(void * *)D.9591_2 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_1(D)->id,
	je	.L42	#,
	movss	xmm0, DWORD PTR [rbx+136]	# D.9595, audiosinus_5->freq
	movss	xmm1, DWORD PTR .LC4[rip]	# tmp73,
	ucomiss	xmm1, xmm0	# tmp73, D.9595
	jbe	.L41	#,
	addss	xmm0, DWORD PTR .LC5[rip]	# tmp74,
	mov	rdi, rbx	#, audiosinus
	call	AudioSinus_setFrequency	#
	jmp	.L45	#
.L42:
	movss	xmm0, DWORD PTR [rbx+136]	# D.9595, audiosinus_5->freq
	ucomiss	xmm0, DWORD PTR .LC5[rip]	# D.9595,
	jb	.L41	#,
	subss	xmm0, DWORD PTR .LC5[rip]	# tmp76,
	mov	rdi, rbx	#, audiosinus
	call	AudioSinus_setFrequency	#
.L45:
	movss	xmm0, DWORD PTR [rbx+136]	# tmp78, audiosinus_5->freq
	cvtps2pd	xmm0, xmm0	# tmp78, tmp78
	mov	rdi, QWORD PTR [rbp+288]	# tmp79, label_3->text_block.text
	add	rdi, 19	# tmp79,
	mov	ecx, OFFSET FLAT:.LC6	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_17(D)->need_reload,
.L41:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	button_sinefreq_change, .-button_sinefreq_change
	.globl	image_mrelease
	.type	image_mrelease, @function
image_mrelease:
.LFB102:
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
	mov	rdx, QWORD PTR [rdi+96]	# D.9579, sender_2(D)->vparam
	mov	rbx, QWORD PTR [rdx]	# label, *D.9579_3
	mov	rbp, QWORD PTR [rdx+8]	# audiosinus, MEM[(void * *)D.9579_3 + 8B]
	movsx	edx, WORD PTR [rdi+58]	# sender_2(D)->pos.y, sender_2(D)->pos.y
	cvtsi2ss	xmm0, edx	# tmp74, sender_2(D)->pos.y
	movsx	eax, WORD PTR [rdi+56]	# sender_2(D)->pos.x, sender_2(D)->pos.x
	cvtsi2ss	xmm1, eax	# tmp78, sender_2(D)->pos.x
	mulss	xmm0, DWORD PTR .LC5[rip]	# freq,
	addss	xmm0, xmm1	# freq, tmp78
	movss	xmm1, DWORD PTR .LC4[rip]	# tmp84,
	cmpnltss	xmm1, xmm0	#, tmp85, freq
	andps	xmm0, xmm1	# tmp86, tmp85
	movss	xmm2, DWORD PTR .LC4[rip]	# tmp83,
	andnps	xmm1, xmm2	# tmp87, tmp83
	orps	xmm0, xmm1	# freq, tmp87
	mov	rdi, rbp	#, audiosinus
	call	AudioSinus_setFrequency	#
	movss	xmm0, DWORD PTR [rbp+136]	# tmp80, audiosinus_6->freq
	cvtps2pd	xmm0, xmm0	# tmp80, tmp80
	mov	rdi, QWORD PTR [rbx+288]	# tmp81, label_4->text_block.text
	add	rdi, 19	# tmp81,
	mov	ecx, OFFSET FLAT:.LC6	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	rdi, rbx	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_18(D)->need_reload,
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
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
.LFB103:
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
	mov	rdx, QWORD PTR [rdi+88]	# D.9558, sender_2(D)->cparam
	mov	rbp, QWORD PTR [rdx]	# label, *D.9558_3
	mov	rbx, QWORD PTR [rdx+8]	# afg, MEM[(void * *)D.9558_3 + 8B]
	cmp	DWORD PTR [rdi+116], 0	# sender_2(D)->id,
	je	.L55	#,
	cmp	BYTE PTR [rbx+154], 0	# afg_6->type,
	jne	.L54	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, afg
	call	AudioFromGraph_setType	#
	jmp	.L57	#
.L55:
	cmp	BYTE PTR [rbx+154], 0	# afg_6->type,
	je	.L54	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, afg
	call	AudioFromGraph_setType	#
.L57:
	cmp	BYTE PTR [rbx+154], 0	# afg_6->type,
	mov	eax, OFFSET FLAT:.LC7	# tmp72,
	mov	esi, OFFSET FLAT:.LC8	# tmp71,
	cmovne	rsi, rax	# tmp71,, iftmp.0, tmp72
	mov	rdi, QWORD PTR [rbp+288]	# label_4->text_block.text, label_4->text_block.text
	call	strcpy	#
	mov	rdi, rbp	#, label
	call	Label_refresh	#
	mov	BYTE PTR [r12+132], 1	# screen_14(D)->need_reload,
.L54:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	button_audio_from_graph_type_change, .-button_audio_from_graph_type_change
	.globl	button_audio_from_graph_clear
	.type	button_audio_from_graph_clear, @function
button_audio_from_graph_clear:
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+96]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rdi, QWORD PTR [rax]	#, *D.9557_2
	call	WaveDrawBox_clearData	#
	mov	BYTE PTR [rbx+132], 1	# screen_4(D)->need_reload,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	button_audio_from_graph_clear, .-button_audio_from_graph_clear
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	1184645120
	.align 4
.LC5:
	.long	1101004800
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
