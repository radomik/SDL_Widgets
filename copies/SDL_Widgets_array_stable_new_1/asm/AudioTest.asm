	.file	"AudioTest.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioTest.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/AudioTest.asm
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
	.globl	mixAudioCallback
	.type	mixAudioCallback, @function
mixAudioCallback:
.LFB94:
	.cfi_startproc
	test	edx, edx	# len
	jle	.L15	#,
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
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 96
	mov	r14d, DWORD PTR bytesPerPeriod1[rip]	# bytesPerPeriod1.20, bytesPerPeriod1
	mov	eax, r14d	# bytesPerPeriod1.20, bytesPerPeriod1.20
	cvtsi2sd	xmm0, rax	#, bytesPerPeriod1.20
	movsd	QWORD PTR [rsp+8], xmm0	# %sfp,
	mov	r13d, DWORD PTR bytesPerPeriod2[rip]	# bytesPerPeriod2.22, bytesPerPeriod2
	mov	eax, r13d	# bytesPerPeriod2.22, bytesPerPeriod2.22
	cvtsi2sd	xmm0, rax	#, bytesPerPeriod2.22
	movsd	QWORD PTR [rsp+16], xmm0	# %sfp,
	mov	r12d, DWORD PTR fase1[rip]	# fase1_lsm.38, fase1
	mov	ebp, DWORD PTR fase2[rip]	# fase2_lsm.39, fase2
	mov	rbx, rsi	# ivtmp.43, stream
	sub	edx, 1	# tmp118,
	lea	rdx, [rsi+1+rdx]	#,
	mov	QWORD PTR [rsp+24], rdx	# %sfp,
.L11:
	mov	eax, r12d	# fase1_lsm.38, fase1_lsm.38
	cvtsi2sd	xmm0, rax	# tmp119, fase1_lsm.38
	mulsd	xmm0, QWORD PTR .LC0[rip]	# tmp124,
	divsd	xmm0, QWORD PTR [rsp+8]	# tmp126, %sfp
	call	sin	#
	mulsd	xmm0, QWORD PTR .LC1[rip]	# tmp127,
	cvttsd2si	r15d, xmm0	# channel1, tmp127
	mov	eax, ebp	# fase2_lsm.39, fase2_lsm.39
	cvtsi2sd	xmm0, rax	# tmp129, fase2_lsm.39
	mulsd	xmm0, QWORD PTR .LC0[rip]	# tmp134,
	divsd	xmm0, QWORD PTR [rsp+16]	# tmp136, %sfp
	call	sin	#
	mulsd	xmm0, QWORD PTR .LC1[rip]	# tmp137,
	cvttsd2si	eax, xmm0	# tmp139, tmp137
	add	r15d, eax	# channel1, tmp139
	cmp	r15d, -128	# channel1,
	mov	eax, -128	#,
	cmovl	r15d, eax	# channel1,, channel1,
	cmp	r15d, 127	# channel1,
	mov	edx, 127	#,
	cmovg	r15d, edx	# channel1,, tmp141,
	mov	BYTE PTR [rbx], r15b	# MEM[base: D.8821_1, offset: 0B], tmp141
	lea	eax, [r12+1]	# fase1.23,
	mov	edx, 0	#,
	div	r14d	# bytesPerPeriod1.20
	mov	r12d, edx	# fase1_lsm.38,
	lea	eax, [rbp+1]	# fase2.25,
	mov	edx, 0	#,
	div	r13d	# bytesPerPeriod2.22
	mov	ebp, edx	# fase2_lsm.39,
	add	rbx, 1	# ivtmp.43,
	cmp	rbx, QWORD PTR [rsp+24]	# ivtmp.43, %sfp
	jne	.L11	#,
	mov	DWORD PTR fase1[rip], r12d	# fase1, fase1_lsm.38
	mov	DWORD PTR fase2[rip], edx	# fase2, fase2_lsm.39
	add	rsp, 40	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_restore 15
	.cfi_def_cfa_offset 8
.L15:
	rep
	ret
	.cfi_endproc
.LFE94:
	.size	mixAudioCallback, .-mixAudioCallback
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"AudioTest_new: Passed NULL this pointer.\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"AudioTest"
	.text
	.globl	AudioTest_new
	.type	AudioTest_new, @function
AudioTest_new:
.LFB93:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L17	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 41	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	jmp	.L18	#
.L17:
	mov	ecx, OFFSET FLAT:.LC3	#,
	mov	edx, 0	#,
	mov	esi, 0	#,
	call	Audio_init_type	#
	mov	DWORD PTR [rbx+20], 0	# this_2(D)->audio.lib,
.L18:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	AudioTest_new, .-AudioTest_new
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"AudioTest_play:AudioTest> Audio initialized\n"
	.align 8
.LC5:
	.string	"AudioTest_play:AudioTest> Unable to open audio device: %s\n"
	.align 8
.LC6:
	.string	"AudioTest_play:AudioTest>> In obtained:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n"
	.align 8
.LC7:
	.string	"AudioTest_play:AudioTest>> Buffers:\n\taudio\t%u\n\toutput\t%u\n\tsampleFrequency\t%u\n\tfreq1\t%u\n\tfase1\t%u\n\tfreq2\t%u\n\tfase2\t%u\n\tbytes per period 1\t%u\n\tbytes per period 2\t%u\n"
	.text
	.globl	AudioTest_play
	.type	AudioTest_play, @function
AudioTest_play:
.LFB95:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 80
	mov	rbx, rdi	# audiotest, audiotest
	cmp	BYTE PTR [rdi+24], 0	# audiotest_2(D)->audio.initialized,
	jne	.L21	#,
	mov	ebp, esi	# start_paused, start_paused
	mov	eax, DWORD PTR [rdi+128]	# audiotest_2(D)->freq1, audiotest_2(D)->freq1
	mov	DWORD PTR freq1[rip], eax	# freq1, audiotest_2(D)->freq1
	mov	eax, DWORD PTR [rdi+132]	# audiotest_2(D)->freq2, audiotest_2(D)->freq2
	mov	DWORD PTR freq2[rip], eax	# freq2, audiotest_2(D)->freq2
	mov	eax, DWORD PTR [rdi+136]	# audiotest_2(D)->fase1, audiotest_2(D)->fase1
	mov	DWORD PTR fase1[rip], eax	# fase1, audiotest_2(D)->fase1
	mov	eax, DWORD PTR [rdi+140]	# audiotest_2(D)->fase2, audiotest_2(D)->fase2
	mov	DWORD PTR fase2[rip], eax	# fase2, audiotest_2(D)->fase2
	mov	ecx, OFFSET FLAT:mixAudioCallback	#,
	mov	edx, OFFSET FLAT:obtained	#,
	mov	esi, OFFSET FLAT:desired	#,
	call	Audio_SDL_initialize	#
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 44	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	mov	esi, OFFSET FLAT:obtained	#,
	mov	edi, OFFSET FLAT:desired	#,
	call	SDL_OpenAudio	#
	test	eax, eax	# D.8700
	jns	.L22	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8703
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8704,
	jmp	.L23	#
.L22:
	movzx	eax, WORD PTR obtained[rip+8]	# D.8705, obtained.samples
	mov	DWORD PTR audioBufferSize[rip], eax	# audioBufferSize, D.8705
	mov	ecx, DWORD PTR obtained[rip]	# D.8707, obtained.freq
	mov	DWORD PTR sampleFrequency[rip], ecx	# sampleFrequency, D.8707
	movzx	r9d, BYTE PTR obtained[rip+6]	# obtained.channels, obtained.channels
	movzx	r8d, WORD PTR obtained[rip+4]	# obtained.format, obtained.format
	mov	edx, DWORD PTR obtained[rip+12]	# obtained.size, obtained.size
	mov	DWORD PTR [rsp+16], edx	#, obtained.size
	mov	DWORD PTR [rsp+8], eax	#, D.8705
	movzx	eax, BYTE PTR obtained[rip+7]	# obtained.silence, obtained.silence
	mov	DWORD PTR [rsp], eax	#, obtained.silence
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	eax, WORD PTR obtained[rip+8]	# audioBufferSize.9, obtained.samples
	mov	DWORD PTR outputAudioBufferSize[rip], eax	# outputAudioBufferSize, audioBufferSize.9
	movzx	edx, WORD PTR obtained[rip+4]	# tmp122, obtained.format
	and	dx, 32767	# tmp122,
	cmp	dx, 16	# tmp122,
	jne	.L24	#,
	add	eax, eax	# tmp124
	mov	DWORD PTR outputAudioBufferSize[rip], eax	# outputAudioBufferSize, tmp124
.L24:
	mov	r9d, DWORD PTR sampleFrequency[rip]	# sampleFrequency.13, sampleFrequency
	mov	ecx, DWORD PTR [rbx+128]	# freq1.4, audiotest_2(D)->freq1
	mov	eax, r9d	#, sampleFrequency.13
	mov	edx, 0	# tmp126,
	div	ecx	# freq1.4
	mov	edi, eax	# tmp125,
	mov	DWORD PTR bytesPerPeriod1[rip], eax	# bytesPerPeriod1, tmp125
	mov	esi, DWORD PTR [rbx+132]	# freq2.5, audiotest_2(D)->freq2
	mov	eax, r9d	# tmp127, sampleFrequency.13
	mov	edx, 0	# tmp128,
	div	esi	# freq2.5
	mov	DWORD PTR bytesPerPeriod2[rip], eax	# bytesPerPeriod2, tmp127
	mov	DWORD PTR [rsp+40], eax	#, tmp127
	mov	DWORD PTR [rsp+32], edi	#, tmp125
	mov	eax, DWORD PTR [rbx+140]	# audiotest_2(D)->fase2, audiotest_2(D)->fase2
	mov	DWORD PTR [rsp+24], eax	#, audiotest_2(D)->fase2
	mov	DWORD PTR [rsp+16], esi	#, freq2.5
	mov	eax, DWORD PTR [rbx+136]	# audiotest_2(D)->fase1, audiotest_2(D)->fase1
	mov	DWORD PTR [rsp+8], eax	#, audiotest_2(D)->fase1
	mov	DWORD PTR [rsp], ecx	#, freq1.4
	mov	r8d, DWORD PTR outputAudioBufferSize[rip]	#, outputAudioBufferSize
	mov	ecx, DWORD PTR audioBufferSize[rip]	#, audioBufferSize
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	edi, bpl	# start_paused, start_paused
	call	SDL_PauseAudio	#
	mov	BYTE PTR [rbx+26], bpl	# MEM[(struct Audio *)audiotest_2(D)].pause, start_paused
	mov	BYTE PTR [rbx+24], 1	# MEM[(struct Audio *)audiotest_2(D)].initialized,
	mov	BYTE PTR [rbx+25], 1	# MEM[(struct Audio *)audiotest_2(D)].play,
	mov	eax, 1	# D.8704,
	jmp	.L23	#
.L21:
	mov	eax, 1	# D.8704,
	cmp	BYTE PTR [rdi+26], 0	# MEM[(struct Audio *)audiotest_2(D)].pause,
	je	.L23	#,
	mov	BYTE PTR [rdi+26], 0	# MEM[(struct Audio *)audiotest_2(D)].pause,
	mov	edi, 0	#,
	call	SDL_PauseAudio	#
	mov	eax, 1	# D.8704,
.L23:
	add	rsp, 56	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	AudioTest_play, .-AudioTest_play
	.globl	AudioTest_setFreq1
	.type	AudioTest_setFreq1, @function
AudioTest_setFreq1:
.LFB96:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# audiotest, audiotest
	mov	ebp, esi	# _freq1, _freq1
	cmp	BYTE PTR [rdi+25], 0	# audiotest_1(D)->audio.play,
	je	.L28	#,
	cmp	BYTE PTR [rdi+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L28	#,
	call	SDL_LockAudio	#
.L28:
	mov	DWORD PTR freq1[rip], ebp	# freq1, _freq1
	mov	eax, DWORD PTR sampleFrequency[rip]	# sampleFrequency, sampleFrequency
	mov	edx, 0	# tmp68,
	div	ebp	# _freq1
	mov	DWORD PTR bytesPerPeriod1[rip], eax	# bytesPerPeriod1, tmp67
	cmp	BYTE PTR [rbx+25], 0	# audiotest_1(D)->audio.play,
	je	.L29	#,
	cmp	BYTE PTR [rbx+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L29	#,
	call	SDL_UnlockAudio	#
.L29:
	mov	DWORD PTR [rbx+128], ebp	# audiotest_1(D)->freq1, _freq1
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	AudioTest_setFreq1, .-AudioTest_setFreq1
	.globl	AudioTest_setFreq2
	.type	AudioTest_setFreq2, @function
AudioTest_setFreq2:
.LFB97:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# audiotest, audiotest
	mov	ebp, esi	# _freq2, _freq2
	cmp	BYTE PTR [rdi+25], 0	# audiotest_1(D)->audio.play,
	je	.L32	#,
	cmp	BYTE PTR [rdi+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L32	#,
	call	SDL_LockAudio	#
.L32:
	mov	DWORD PTR freq2[rip], ebp	# freq2, _freq2
	mov	eax, DWORD PTR sampleFrequency[rip]	# sampleFrequency, sampleFrequency
	mov	edx, 0	# tmp68,
	div	ebp	# _freq2
	mov	DWORD PTR bytesPerPeriod2[rip], eax	# bytesPerPeriod2, tmp67
	cmp	BYTE PTR [rbx+25], 0	# audiotest_1(D)->audio.play,
	je	.L33	#,
	cmp	BYTE PTR [rbx+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L33	#,
	call	SDL_UnlockAudio	#
.L33:
	mov	DWORD PTR [rbx+132], ebp	# audiotest_1(D)->freq2, _freq2
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	AudioTest_setFreq2, .-AudioTest_setFreq2
	.globl	AudioTest_setFase1
	.type	AudioTest_setFase1, @function
AudioTest_setFase1:
.LFB98:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# audiotest, audiotest
	mov	ebp, esi	# _fase1, _fase1
	cmp	BYTE PTR [rdi+25], 0	# audiotest_1(D)->audio.play,
	je	.L36	#,
	cmp	BYTE PTR [rdi+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L36	#,
	call	SDL_LockAudio	#
.L36:
	mov	DWORD PTR fase1[rip], ebp	# fase1, _fase1
	cmp	BYTE PTR [rbx+25], 0	# audiotest_1(D)->audio.play,
	je	.L37	#,
	cmp	BYTE PTR [rbx+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L37	#,
	call	SDL_UnlockAudio	#
.L37:
	mov	DWORD PTR [rbx+136], ebp	# audiotest_1(D)->fase1, _fase1
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	AudioTest_setFase1, .-AudioTest_setFase1
	.globl	AudioTest_setFase2
	.type	AudioTest_setFase2, @function
AudioTest_setFase2:
.LFB99:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# audiotest, audiotest
	mov	ebp, esi	# _fase2, _fase2
	cmp	BYTE PTR [rdi+25], 0	# audiotest_1(D)->audio.play,
	je	.L40	#,
	cmp	BYTE PTR [rdi+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L40	#,
	call	SDL_LockAudio	#
.L40:
	mov	DWORD PTR fase2[rip], ebp	# fase2, _fase2
	cmp	BYTE PTR [rbx+25], 0	# audiotest_1(D)->audio.play,
	je	.L41	#,
	cmp	BYTE PTR [rbx+24], 0	# audiotest_1(D)->audio.initialized,
	je	.L41	#,
	call	SDL_UnlockAudio	#
.L41:
	mov	DWORD PTR [rbx+140], ebp	# audiotest_1(D)->fase2, _fase2
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	AudioTest_setFase2, .-AudioTest_setFase2
	.local	fase1
	.comm	fase1,4,4
	.local	bytesPerPeriod1
	.comm	bytesPerPeriod1,4,4
	.local	fase2
	.comm	fase2,4,4
	.local	bytesPerPeriod2
	.comm	bytesPerPeriod2,4,4
	.data
	.align 4
	.type	freq1, @object
	.size	freq1, 4
freq1:
	.long	50
	.align 4
	.type	freq2, @object
	.size	freq2, 4
freq2:
	.long	51
	.local	desired
	.comm	desired,32,32
	.local	obtained
	.comm	obtained,32,32
	.local	audioBufferSize
	.comm	audioBufferSize,4,4
	.local	sampleFrequency
	.comm	sampleFrequency,4,4
	.local	outputAudioBufferSize
	.comm	outputAudioBufferSize,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1374389535
	.long	1075388088
	.align 8
.LC1:
	.long	0
	.long	1080213504
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
