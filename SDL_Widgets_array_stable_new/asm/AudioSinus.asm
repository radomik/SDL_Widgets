	.file	"AudioSinus.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioSinus.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/AudioSinus.asm
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
	.type	AudioSinus_paCallback, @function
AudioSinus_paCallback:
.LFB103:
	.cfi_startproc
	mov	r8, rdx	# framesPerBuffer, framesPerBuffer
	mov	eax, 2	# D.9148,
	cmp	QWORD PTR [r9+104], 0	# MEM[(struct AudioSinus *)vthis_5(D)].sine,
	je	.L2	#,
	mov	edx, DWORD PTR [r9+120]	# left_phase, MEM[(struct AudioSinus *)vthis_5(D)].left_phase
	test	r8, r8	# framesPerBuffer
	je	.L3	#,
	mov	ecx, 0	# i,
.L4:
	movsx	rdi, edx	# left_phase, left_phase
	mov	rax, QWORD PTR [r9+104]	# MEM[(struct AudioSinus *)vthis_5(D)].sine, MEM[(struct AudioSinus *)vthis_5(D)].sine
	movss	xmm0, DWORD PTR [rax+rdi*4]	# sample, *D.9151_18
	movss	DWORD PTR [rsi], xmm0	# MEM[base: out_40, offset: 0B], sample
	movss	DWORD PTR [rsi+4], xmm0	# MEM[base: out_40, offset: 4B], sample
	add	rsi, 8	# out,
	lea	eax, [rdx+1]	# tmp100,
	mov	edx, 0	# left_phase,
	div	DWORD PTR [r9+116]	# MEM[(struct AudioSinus *)vthis_5(D)].sine_size
	add	ecx, 1	# i,
	mov	eax, ecx	# i, i
	cmp	rax, r8	# i, framesPerBuffer
	jb	.L4	#,
.L3:
	mov	DWORD PTR [r9+120], edx	# MEM[(struct AudioSinus *)vthis_5(D)].left_phase, left_phase
	mov	eax, 0	# D.9148,
.L2:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	AudioSinus_paCallback, .-AudioSinus_paCallback
	.type	AudioSinus_FillArray, @function
AudioSinus_FillArray:
.LFB104:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# this, this
	cmp	DWORD PTR [rdi+116], 0	# this_3(D)->sine_size,
	je	.L7	#,
	mov	ebx, 0	# i,
.L11:
	movss	xmm1, DWORD PTR [rbp+112]	# tmp79, this_3(D)->freq
	cvtps2pd	xmm1, xmm1	# tmp79, tmp79
	mulsd	xmm1, QWORD PTR .LC0[rip]	# tmp80,
	mov	eax, ebx	# i, i
	cvtsi2sd	xmm0, rax	# tmp82, i
	movzx	edx, WORD PTR [rbp+16]	# MEM[(struct Audio *)this_3(D)].sample_frequency, MEM[(struct Audio *)this_3(D)].sample_frequency
	cvtsi2sd	xmm2, edx	# tmp88, MEM[(struct Audio *)this_3(D)].sample_frequency
	divsd	xmm0, xmm2	# tmp89, tmp88
	mulsd	xmm0, xmm1	# tmp90, tmp80
	call	sin	#
	mov	edx, ebx	# i, i
	mov	rax, QWORD PTR [rbp+104]	# this_3(D)->sine, this_3(D)->sine
	unpcklpd	xmm0, xmm0	#
	cvtpd2ps	xmm0, xmm0	#,
	movss	DWORD PTR [rax+rdx*4], xmm0	# *D.9080_13,
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+116], ebx	# this_3(D)->sine_size, i
	ja	.L11	#,
.L7:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	AudioSinus_FillArray, .-AudioSinus_FillArray
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"AudioSinus.c"
	.text
	.globl	AudioSinus_vdestroy
	.type	AudioSinus_vdestroy, @function
AudioSinus_vdestroy:
.LFB106:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	call	Audio_stop	#
	mov	rdi, QWORD PTR [rbx+104]	# D.9098, MEM[(struct AudioSinus *)vthis_1(D)].sine
	test	rdi, rdi	# D.9098
	je	.L15	#,
	mov	edx, 152	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbx+104], 0	# MEM[(struct AudioSinus *)vthis_1(D)].sine,
.L15:
	mov	rdi, rbx	#, vthis
	call	Audio_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	AudioSinus_vdestroy, .-AudioSinus_vdestroy
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
	.globl	AudioSinus_vplay
	.type	AudioSinus_vplay, @function
AudioSinus_vplay:
.LFB105:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# vthis, vthis
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)vthis_2(D)].play,
	jne	.L18	#,
	mov	ebp, esi	# start_paused, start_paused
	call	Pa_Initialize	#
	test	eax, eax	# pe
	je	.L19	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9106
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9108,
	jmp	.L20	#
.L19:
	mov	DWORD PTR [rbx+124], 0	# MEM[(struct AudioSinus *)vthis_2(D)].right_phase,
	mov	DWORD PTR [rbx+120], 0	# MEM[(struct AudioSinus *)vthis_2(D)].left_phase,
	call	Pa_GetDefaultOutputDevice	#
	mov	DWORD PTR [rbx+48], eax	# MEM[(struct Audio *)vthis_2(D)].outputParameters.device, D.9110
	movzx	edx, BYTE PTR [rbx+34]	# MEM[(struct Audio *)vthis_2(D)].channels, MEM[(struct Audio *)vthis_2(D)].channels
	mov	DWORD PTR [rbx+52], edx	# MEM[(struct Audio *)vthis_2(D)].outputParameters.channelCount, MEM[(struct Audio *)vthis_2(D)].channels
	mov	rdx, QWORD PTR [rbx+24]	# MEM[(struct Audio *)vthis_2(D)].audio_format, MEM[(struct Audio *)vthis_2(D)].audio_format
	mov	QWORD PTR [rbx+56], rdx	# MEM[(struct Audio *)vthis_2(D)].outputParameters.sampleFormat, MEM[(struct Audio *)vthis_2(D)].audio_format
	mov	edi, eax	#, D.9110
	call	Pa_GetDeviceInfo	#
	movsd	xmm0, QWORD PTR [rax+40]	# D.9116, D.9115_15->defaultLowOutputLatency
	movsd	QWORD PTR [rbx+64], xmm0	# MEM[(struct Audio *)vthis_2(D)].outputParameters.suggestedLatency, D.9116
	mov	QWORD PTR [rbx+72], 0	# MEM[(struct Audio *)vthis_2(D)].outputParameters.hostApiSpecificStreamInfo,
	mov	rdi, rbx	#, vthis
	call	AudioSinus_FillArray	#
	movzx	ecx, WORD PTR [rbx+32]	# MEM[(struct Audio *)vthis_2(D)].buffer_size, MEM[(struct Audio *)vthis_2(D)].buffer_size
	movzx	eax, WORD PTR [rbx+16]	# MEM[(struct Audio *)vthis_2(D)].sample_frequency, MEM[(struct Audio *)vthis_2(D)].sample_frequency
	cvtsi2sd	xmm0, eax	# tmp101, MEM[(struct Audio *)vthis_2(D)].sample_frequency
	lea	rdx, [rbx+48]	# tmp103,
	lea	rdi, [rbx+40]	# tmp104,
	mov	QWORD PTR [rsp], rbx	#, vthis
	mov	r9d, OFFSET FLAT:AudioSinus_paCallback	#,
	mov	r8d, 0	#,
	mov	esi, 0	#,
	call	Pa_OpenStream	#
	test	eax, eax	# pe
	je	.L21	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9125
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9108,
	jmp	.L20	#
.L21:
	test	bpl, bpl	# start_paused
	jne	.L22	#,
	mov	rdi, QWORD PTR [rbx+40]	# MEM[(struct Audio *)vthis_2(D)].pa_stream, MEM[(struct Audio *)vthis_2(D)].pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# pe
	je	.L23	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9131
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9108,
	jmp	.L20	#
.L22:
	mov	BYTE PTR [rbx+14], 1	# MEM[(struct Audio *)vthis_2(D)].pause,
.L23:
	mov	BYTE PTR [rbx+13], 1	# MEM[(struct Audio *)vthis_2(D)].play,
	mov	BYTE PTR [rbx+12], 1	# MEM[(struct Audio *)vthis_2(D)].initialized,
	mov	eax, 1	# D.9108,
	jmp	.L20	#
.L18:
	cmp	BYTE PTR [rdi+14], 0	# MEM[(struct Audio *)vthis_2(D)].pause,
	sete	al	#, tmp106
	mov	BYTE PTR [rdi+14], al	# MEM[(struct Audio *)vthis_2(D)].pause, tmp106
	test	al, al	# tmp106
	je	.L24	#,
	mov	rdi, QWORD PTR [rdi+40]	# MEM[(struct Audio *)vthis_2(D)].pa_stream, MEM[(struct Audio *)vthis_2(D)].pa_stream
	call	Pa_StopStream	#
	mov	edi, eax	# pe,
	mov	eax, 1	# D.9108,
	test	edi, edi	# pe
	je	.L20	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9140
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9108,
	jmp	.L20	#
.L24:
	mov	rdi, QWORD PTR [rdi+40]	# MEM[(struct Audio *)vthis_2(D)].pa_stream, MEM[(struct Audio *)vthis_2(D)].pa_stream
	call	Pa_StartStream	#
	mov	edi, eax	# pe,
	mov	eax, 1	# D.9108,
	test	edi, edi	# pe
	je	.L20	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9143
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9108,
.L20:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	AudioSinus_vplay, .-AudioSinus_vplay
	.globl	AudioSinus_new
	.type	AudioSinus_new, @function
AudioSinus_new:
.LFB107:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L29	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9042	#,
	call	Static_nullThis2	#
	jmp	.L30	#
.L29:
	call	Audio_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	DWORD PTR [rbx+8], 1	# MEM[(struct Audio *)this_2(D)].lib,
	mov	WORD PTR [rbx+32], 256	# MEM[(struct Audio *)this_2(D)].buffer_size,
	mov	QWORD PTR [rbx+24], 1	# MEM[(struct Audio *)this_2(D)].audio_format,
	movzx	edi, WORD PTR [rbx+16]	# MEM[(struct Audio *)this_2(D)].sample_frequency, MEM[(struct Audio *)this_2(D)].sample_frequency
	mov	ecx, 176	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 4	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+104], rax	# this_2(D)->sine, D.9095
	movzx	eax, WORD PTR [rbx+16]	# MEM[(struct Audio *)this_2(D)].sample_frequency, MEM[(struct Audio *)this_2(D)].sample_frequency
	mov	DWORD PTR [rbx+116], eax	# this_2(D)->sine_size, MEM[(struct Audio *)this_2(D)].sample_frequency
	mov	DWORD PTR [rbx+112], 0x43960000	# this_2(D)->freq,
	mov	DWORD PTR [rbx+120], 0	# this_2(D)->left_phase,
	mov	DWORD PTR [rbx+124], 0	# this_2(D)->right_phase,
.L30:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	AudioSinus_new, .-AudioSinus_new
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"AudioSinus_setFrequency: Array of sine data is NULL.\n"
	.align 8
.LC9:
	.string	"AudioSinus_setFrequency: Failed to stop audio: Pa_StopStream() [%s]\n"
	.align 8
.LC10:
	.string	"AudioSinus_setFrequency: Failed to start audio: Pa_StartStream() [%s]\n"
	.text
	.globl	AudioSinus_setFrequency
	.type	AudioSinus_setFrequency, @function
AudioSinus_setFrequency:
.LFB108:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	movd	ebp, xmm0	# freq, freq
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)this_2(D)].play,
	je	.L33	#,
	cmp	BYTE PTR [rdi+14], 0	# MEM[(struct Audio *)this_2(D)].pause,
	je	.L34	#,
	jmp	.L33	#
.L37:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 53	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	jmp	.L32	#
.L41:
	mov	rdi, QWORD PTR [rbx+40]	# MEM[(struct Audio *)this_2(D)].pa_stream, MEM[(struct Audio *)this_2(D)].pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# pe
	.p2align 4,,2
	je	.L36	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9066
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L32	#
.L42:
	mov	DWORD PTR [rbx+112], ebp	# this_2(D)->freq, freq
	mov	rdi, rbx	#, this
	call	AudioSinus_FillArray	#
	.p2align 4,,2
	jmp	.L32	#
.L40:
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9071
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L32	#
.L34:
	cmp	QWORD PTR [rdi+104], 0	# this_2(D)->sine,
	jne	.L41	#,
	.p2align 4,,6
	jmp	.L37	#
.L33:
	cmp	QWORD PTR [rbx+104], 0	# this_2(D)->sine,
	jne	.L42	#,
	.p2align 4,,6
	jmp	.L37	#
.L36:
	mov	DWORD PTR [rbx+112], ebp	# this_2(D)->freq, freq
	mov	rdi, rbx	#, this
	call	AudioSinus_FillArray	#
	mov	rdi, QWORD PTR [rbx+40]	# MEM[(struct Audio *)this_2(D)].pa_stream, MEM[(struct Audio *)this_2(D)].pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# pe
	jne	.L40	#,
.L32:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	AudioSinus_setFrequency, .-AudioSinus_setFrequency
	.globl	AudioSinus_class
	.data
	.align 8
	.type	AudioSinus_class, @object
	.size	AudioSinus_class, 8
AudioSinus_class:
	.quad	type
	.section	.rodata.str1.1
.LC11:
	.string	"AudioSinus"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	128
# name:
	.quad	.LC11
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.9042, @object
	.size	__FUNCTION__.9042, 15
__FUNCTION__.9042:
	.string	"AudioSinus_new"
	.data
	.align 16
	.type	vtable, @object
	.size	vtable, 16
vtable:
	.quad	override_coIObject
	.quad	override_IAudio
	.section	.rodata
	.align 16
	.type	override_coIObject, @object
	.size	override_coIObject, 16
override_coIObject:
# destroy:
	.quad	AudioSinus_vdestroy
# toString:
	.quad	Audio_vtoString
	.align 8
	.type	override_IAudio, @object
	.size	override_IAudio, 8
override_IAudio:
# play:
	.quad	AudioSinus_vplay
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1413754136
	.long	1075388923
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
