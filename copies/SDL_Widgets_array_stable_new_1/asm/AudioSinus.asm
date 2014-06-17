	.file	"AudioSinus.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioSinus.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/AudioSinus.asm
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
	.type	paCallback, @function
paCallback:
.LFB93:
	.cfi_startproc
	mov	r10, rdx	# framesPerBuffer, framesPerBuffer
	mov	eax, 2	# D.8729,
	cmp	QWORD PTR [r9+128], 0	# MEM[(struct AudioSinus *)userData_4(D)].sine,
	je	.L2	#,
	test	rdx, rdx	# framesPerBuffer
	je	.L5	#,
	mov	ecx, 0	# i,
.L3:
	mov	eax, DWORD PTR [r9+144]	# D.8730, MEM[(struct AudioSinus *)userData_4(D)].left_phase
	movsx	r8, eax	# D.8730, D.8730
	mov	rdi, QWORD PTR [r9+128]	# MEM[(struct AudioSinus *)userData_4(D)].sine, MEM[(struct AudioSinus *)userData_4(D)].sine
	movss	xmm0, DWORD PTR [rdi+r8*4]	# sample, *D.8734_17
	add	eax, 1	# tmp102,
	mov	DWORD PTR [r9+144], eax	# MEM[(struct AudioSinus *)userData_4(D)].left_phase, tmp102
	movss	DWORD PTR [rsi], xmm0	# MEM[base: out_40, offset: 0B], sample
	movss	DWORD PTR [rsi+4], xmm0	# MEM[base: out_40, offset: 4B], sample
	add	rsi, 8	# out,
	mov	eax, DWORD PTR [r9+144]	# MEM[(struct AudioSinus *)userData_4(D)].left_phase, MEM[(struct AudioSinus *)userData_4(D)].left_phase
	mov	edx, 0	# tmp105,
	div	DWORD PTR [r9+140]	# MEM[(struct AudioSinus *)userData_4(D)].sine_size
	mov	DWORD PTR [r9+144], edx	# MEM[(struct AudioSinus *)userData_4(D)].left_phase, tmp105
	add	ecx, 1	# i,
	mov	eax, ecx	# i, i
	cmp	rax, r10	# i, framesPerBuffer
	jb	.L3	#,
	mov	eax, 0	# D.8729,
	ret
.L5:
	mov	eax, 0	# D.8729,
.L2:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	paCallback, .-paCallback
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"AudioSinus.c"
	.text
	.globl	AudioSinus_vdestroy
	.type	AudioSinus_vdestroy, @function
AudioSinus_vdestroy:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	call	Audio_stop	#
	mov	rdi, QWORD PTR [rbx+128]	# D.8679, MEM[(struct AudioSinus *)vthis_1(D)].sine
	test	rdi, rdi	# D.8679
	je	.L8	#,
	mov	edx, 130	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+128], 0	# MEM[(struct AudioSinus *)vthis_1(D)].sine,
.L8:
	mov	rdi, rbx	#, vthis
	call	Audio_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	AudioSinus_vdestroy, .-AudioSinus_vdestroy
	.globl	AudioSinus_FillArray
	.type	AudioSinus_FillArray, @function
AudioSinus_FillArray:
.LFB94:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# audiosinus, audiosinus
	cmp	DWORD PTR [rdi+140], 0	# audiosinus_3(D)->sine_size,
	je	.L10	#,
	mov	ebx, 0	# i,
.L14:
	movss	xmm1, DWORD PTR [rbp+136]	# tmp79, audiosinus_3(D)->freq
	cvtps2pd	xmm1, xmm1	# tmp79, tmp79
	mulsd	xmm1, QWORD PTR .LC1[rip]	# tmp80,
	mov	eax, ebx	# i, i
	cvtsi2sd	xmm0, rax	# tmp82, i
	movzx	edx, WORD PTR [rbp+28]	# audiosinus_3(D)->audio.sample_frequency, audiosinus_3(D)->audio.sample_frequency
	cvtsi2sd	xmm2, edx	# tmp88, audiosinus_3(D)->audio.sample_frequency
	divsd	xmm0, xmm2	# tmp89, tmp88
	mulsd	xmm0, xmm1	# tmp90, tmp80
	call	sin	#
	mov	edx, ebx	# i, i
	mov	rax, QWORD PTR [rbp+128]	# audiosinus_3(D)->sine, audiosinus_3(D)->sine
	unpcklpd	xmm0, xmm0	#
	cvtpd2ps	xmm0, xmm0	#,
	movss	DWORD PTR [rax+rdx*4], xmm0	# *D.8748_13,
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+140], ebx	# audiosinus_3(D)->sine_size, i
	ja	.L14	#,
.L10:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	AudioSinus_FillArray, .-AudioSinus_FillArray
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"AudioSinus_play: Failed to initialize PortAudio, Pa_Initialize() [%s]\n"
	.align 8
.LC3:
	.string	"AudioSinus_play: Failed to open default stream, Pa_OpenDefaultStream() [%s]\n"
	.align 8
.LC4:
	.string	"AudioSinus_play: Failed to start stream, Pa_StartStream() [%s]\n"
	.align 8
.LC5:
	.string	"AudioSinus_play: Failed to pause stream, Pa_StopStream() [%s]\n"
	.align 8
.LC6:
	.string	"AudioSinus_play:AudioSinus > Failed to unpause stream, Pa_StartStream() [%s]\n"
	.text
	.globl	AudioSinus_play
	.type	AudioSinus_play, @function
AudioSinus_play:
.LFB95:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# audiosinus, audiosinus
	cmp	BYTE PTR [rdi+25], 0	# MEM[(struct Audio *)audiosinus_2(D)].play,
	jne	.L18	#,
	mov	ebp, esi	# start_paused, start_paused
	call	Pa_Initialize	#
	test	eax, eax	# pe
	je	.L19	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8687
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8689,
	jmp	.L20	#
.L19:
	mov	DWORD PTR [rbx+148], 0	# audiosinus_2(D)->right_phase,
	mov	DWORD PTR [rbx+144], 0	# audiosinus_2(D)->left_phase,
	call	Pa_GetDefaultOutputDevice	#
	mov	DWORD PTR [rbx+72], eax	# MEM[(struct Audio *)audiosinus_2(D)].outputParameters.device, D.8691
	movzx	edx, BYTE PTR [rbx+42]	# MEM[(struct Audio *)audiosinus_2(D)].channels, MEM[(struct Audio *)audiosinus_2(D)].channels
	mov	DWORD PTR [rbx+76], edx	# MEM[(struct Audio *)audiosinus_2(D)].outputParameters.channelCount, MEM[(struct Audio *)audiosinus_2(D)].channels
	mov	rdx, QWORD PTR [rbx+32]	# MEM[(struct Audio *)audiosinus_2(D)].audio_format, MEM[(struct Audio *)audiosinus_2(D)].audio_format
	mov	QWORD PTR [rbx+80], rdx	# MEM[(struct Audio *)audiosinus_2(D)].outputParameters.sampleFormat, MEM[(struct Audio *)audiosinus_2(D)].audio_format
	mov	edi, eax	#, D.8691
	call	Pa_GetDeviceInfo	#
	movsd	xmm0, QWORD PTR [rax+40]	# D.8697, D.8696_15->defaultLowOutputLatency
	movsd	QWORD PTR [rbx+88], xmm0	# MEM[(struct Audio *)audiosinus_2(D)].outputParameters.suggestedLatency, D.8697
	mov	QWORD PTR [rbx+96], 0	# MEM[(struct Audio *)audiosinus_2(D)].outputParameters.hostApiSpecificStreamInfo,
	mov	rdi, rbx	#, audiosinus
	call	AudioSinus_FillArray	#
	movzx	ecx, WORD PTR [rbx+40]	# MEM[(struct Audio *)audiosinus_2(D)].buffer_size, MEM[(struct Audio *)audiosinus_2(D)].buffer_size
	movzx	eax, WORD PTR [rbx+28]	# MEM[(struct Audio *)audiosinus_2(D)].sample_frequency, MEM[(struct Audio *)audiosinus_2(D)].sample_frequency
	cvtsi2sd	xmm0, eax	# tmp101, MEM[(struct Audio *)audiosinus_2(D)].sample_frequency
	lea	rdx, [rbx+72]	# tmp103,
	lea	rdi, [rbx+64]	# tmp104,
	mov	QWORD PTR [rsp], rbx	#, audiosinus
	mov	r9d, OFFSET FLAT:paCallback	#,
	mov	r8d, 0	#,
	mov	esi, 0	#,
	call	Pa_OpenStream	#
	test	eax, eax	# pe
	je	.L21	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8706
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8689,
	jmp	.L20	#
.L21:
	test	bpl, bpl	# start_paused
	jne	.L22	#,
	mov	rdi, QWORD PTR [rbx+64]	# MEM[(struct Audio *)audiosinus_2(D)].pa_stream, MEM[(struct Audio *)audiosinus_2(D)].pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# pe
	je	.L23	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8712
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8689,
	jmp	.L20	#
.L22:
	mov	BYTE PTR [rbx+26], 1	# MEM[(struct Audio *)audiosinus_2(D)].pause,
.L23:
	mov	BYTE PTR [rbx+25], 1	# MEM[(struct Audio *)audiosinus_2(D)].play,
	mov	BYTE PTR [rbx+24], 1	# MEM[(struct Audio *)audiosinus_2(D)].initialized,
	mov	eax, 1	# D.8689,
	jmp	.L20	#
.L18:
	cmp	BYTE PTR [rdi+26], 0	# MEM[(struct Audio *)audiosinus_2(D)].pause,
	sete	al	#, tmp106
	mov	BYTE PTR [rdi+26], al	# MEM[(struct Audio *)audiosinus_2(D)].pause, tmp106
	test	al, al	# tmp106
	je	.L24	#,
	mov	rdi, QWORD PTR [rdi+64]	# MEM[(struct Audio *)audiosinus_2(D)].pa_stream, MEM[(struct Audio *)audiosinus_2(D)].pa_stream
	call	Pa_StopStream	#
	mov	edi, eax	# pe,
	mov	eax, 1	# D.8689,
	test	edi, edi	# pe
	je	.L20	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8721
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8689,
	jmp	.L20	#
.L24:
	mov	rdi, QWORD PTR [rdi+64]	# MEM[(struct Audio *)audiosinus_2(D)].pa_stream, MEM[(struct Audio *)audiosinus_2(D)].pa_stream
	call	Pa_StartStream	#
	mov	edi, eax	# pe,
	mov	eax, 1	# D.8689,
	test	edi, edi	# pe
	je	.L20	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8724
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8689,
.L20:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	AudioSinus_play, .-AudioSinus_play
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"AudioSinus_new: Passed NULL this pointer.\n"
	.section	.rodata.str1.1
.LC8:
	.string	"AudioSinus"
	.text
	.globl	AudioSinus_new
	.type	AudioSinus_new, @function
AudioSinus_new:
.LFB97:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L29	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 42	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	fwrite	#
	jmp	.L30	#
.L29:
	mov	ecx, OFFSET FLAT:.LC8	#,
	mov	edx, OFFSET FLAT:AudioSinus_vdestroy	#,
	mov	esi, 1	#,
	call	Audio_init_type	#
	mov	DWORD PTR [rbx+20], 1	# MEM[(struct Audio *)this_2(D)].lib,
	mov	WORD PTR [rbx+40], 256	# MEM[(struct Audio *)this_2(D)].buffer_size,
	mov	QWORD PTR [rbx+32], 1	# MEM[(struct Audio *)this_2(D)].audio_format,
	movzx	edi, WORD PTR [rbx+28]	# MEM[(struct Audio *)this_2(D)].sample_frequency, MEM[(struct Audio *)this_2(D)].sample_frequency
	mov	ecx, 153	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 4	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+128], rax	# this_2(D)->sine, D.8672
	movzx	eax, WORD PTR [rbx+28]	# MEM[(struct Audio *)this_2(D)].sample_frequency, MEM[(struct Audio *)this_2(D)].sample_frequency
	mov	DWORD PTR [rbx+140], eax	# this_2(D)->sine_size, MEM[(struct Audio *)this_2(D)].sample_frequency
.L30:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	AudioSinus_new, .-AudioSinus_new
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"AudioSinus::AudioSinus_setFrequency() > Array of sine data is NULL.\n"
	.align 8
.LC10:
	.string	"AudioSinus_setFrequency:AudioSinus > Failed to stop audio: Pa_StopStream() [%s]\n"
	.align 8
.LC11:
	.string	"AudioSinus_setFrequency:AudioSinus > Failed to start audio: Pa_StartStream() [%s]\n"
	.text
	.globl	AudioSinus_setFrequency
	.type	AudioSinus_setFrequency, @function
AudioSinus_setFrequency:
.LFB98:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# audiosinus, audiosinus
	cmp	QWORD PTR [rdi+128], 0	# audiosinus_2(D)->sine,
	jne	.L33	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 68	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC9	#,
	call	fwrite	#
	jmp	.L32	#
.L33:
	movd	ebp, xmm0	# freq, freq
	cmp	BYTE PTR [rdi+25], 0	# MEM[(struct Audio *)audiosinus_2(D)].play,
	je	.L35	#,
	cmp	BYTE PTR [rdi+26], 0	# MEM[(struct Audio *)audiosinus_2(D)].pause,
	je	.L36	#,
	jmp	.L35	#
.L37:
	mov	edi, eax	#, perr
	.p2align 4,,5
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8653
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L32	#
.L38:
	mov	edi, eax	#, perr
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8658
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L39:
	mov	DWORD PTR [rbx+136], ebp	# audiosinus_2(D)->freq, freq
	jmp	.L32	#
.L36:
	mov	rdi, QWORD PTR [rdi+64]	# MEM[(struct Audio *)audiosinus_2(D)].pa_stream, MEM[(struct Audio *)audiosinus_2(D)].pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# perr
	jne	.L37	#,
	mov	rdi, rbx	#, audiosinus
	call	AudioSinus_FillArray	#
	mov	rdi, QWORD PTR [rbx+64]	# MEM[(struct Audio *)audiosinus_2(D)].pa_stream, MEM[(struct Audio *)audiosinus_2(D)].pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# perr
	je	.L39	#,
	.p2align 4,,2
	jmp	.L38	#
.L35:
	mov	rdi, rbx	#, audiosinus
	.p2align 4,,6
	call	AudioSinus_FillArray	#
	.p2align 4,,5
	jmp	.L39	#
.L32:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	AudioSinus_setFrequency, .-AudioSinus_setFrequency
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	1413754136
	.long	1075388923
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
