	.file	"AudioFromGraph.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioFromGraph.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/AudioFromGraph.asm
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
	mov	r8, rdx	# framesPerBuffer, framesPerBuffer
	mov	eax, 2	# D.8900,
	cmp	QWORD PTR [r9+128], 0	# MEM[(struct AudioFromGraph *)userData_5(D)].samples,
	je	.L2	#,
	cmp	QWORD PTR [r9+144], 0	# MEM[(struct AudioFromGraph *)userData_5(D)].points,
	je	.L2	#,
	test	rdx, rdx	# framesPerBuffer
	je	.L8	#,
	mov	ecx, 0	# i,
.L5:
	cmp	BYTE PTR [r9+154], 0	# MEM[(struct AudioFromGraph *)userData_5(D)].type,
	jne	.L3	#,
	mov	rdi, QWORD PTR [r9+144]	# D.8899, MEM[(struct AudioFromGraph *)userData_5(D)].points
	mov	eax, DWORD PTR [r9+156]	# D.8904, MEM[(struct AudioFromGraph *)userData_5(D)].left_phase
	movsx	rdx, eax	# D.8904, D.8904
	movss	xmm1, DWORD PTR [rdi+rdx*8]	# sample_left, D.8908_19->fvalue
	add	eax, 1	# tmp115,
	mov	DWORD PTR [r9+156], eax	# MEM[(struct AudioFromGraph *)userData_5(D)].left_phase, tmp115
	mov	eax, DWORD PTR [r9+160]	# D.8909, MEM[(struct AudioFromGraph *)userData_5(D)].right_phase
	movsx	rdx, eax	# D.8909, D.8909
	movss	xmm0, DWORD PTR [rdi+rdx*8]	# sample_right, D.8913_26->fvalue
	add	eax, 1	# tmp117,
	mov	DWORD PTR [r9+160], eax	# MEM[(struct AudioFromGraph *)userData_5(D)].right_phase, tmp117
	movss	DWORD PTR [rsi], xmm1	# *out_86, sample_left
	movss	DWORD PTR [rsi+4], xmm0	# MEM[(float *)out_86 + 4B], sample_right
	add	rsi, 8	# out,
	movzx	edi, WORD PTR [r9+152]	# D.8915, MEM[(struct AudioFromGraph *)userData_5(D)].points_size
	mov	eax, DWORD PTR [r9+156]	# MEM[(struct AudioFromGraph *)userData_5(D)].left_phase, MEM[(struct AudioFromGraph *)userData_5(D)].left_phase
	mov	edx, eax	# tmp120, MEM[(struct AudioFromGraph *)userData_5(D)].left_phase
	sar	edx, 31	# tmp120,
	idiv	edi	# D.8915
	mov	DWORD PTR [r9+156], edx	# MEM[(struct AudioFromGraph *)userData_5(D)].left_phase, tmp120
	mov	eax, DWORD PTR [r9+160]	# MEM[(struct AudioFromGraph *)userData_5(D)].right_phase, MEM[(struct AudioFromGraph *)userData_5(D)].right_phase
	mov	edx, eax	# tmp124, MEM[(struct AudioFromGraph *)userData_5(D)].right_phase
	sar	edx, 31	# tmp124,
	idiv	edi	# D.8915
	mov	DWORD PTR [r9+160], edx	# MEM[(struct AudioFromGraph *)userData_5(D)].right_phase, tmp124
	jmp	.L4	#
.L3:
	mov	rdi, QWORD PTR [r9+128]	# D.8897, MEM[(struct AudioFromGraph *)userData_5(D)].samples
	mov	eax, DWORD PTR [r9+156]	# D.8904, MEM[(struct AudioFromGraph *)userData_5(D)].left_phase
	movsx	rdx, eax	# D.8904, D.8904
	movss	xmm1, DWORD PTR [rdi+rdx*4]	# sample_left, *D.8920_43
	add	eax, 1	# tmp127,
	mov	DWORD PTR [r9+156], eax	# MEM[(struct AudioFromGraph *)userData_5(D)].left_phase, tmp127
	mov	eax, DWORD PTR [r9+160]	# D.8909, MEM[(struct AudioFromGraph *)userData_5(D)].right_phase
	movsx	rdx, eax	# D.8909, D.8909
	movss	xmm0, DWORD PTR [rdi+rdx*4]	# sample_right, *D.8922_50
	add	eax, 1	# tmp129,
	mov	DWORD PTR [r9+160], eax	# MEM[(struct AudioFromGraph *)userData_5(D)].right_phase, tmp129
	movss	DWORD PTR [rsi], xmm1	# *out_86, sample_left
	movss	DWORD PTR [rsi+4], xmm0	# MEM[(float *)out_86 + 4B], sample_right
	add	rsi, 8	# out,
	movzx	edi, WORD PTR [r9+136]	# D.8924, MEM[(struct AudioFromGraph *)userData_5(D)].samples_size
	mov	eax, DWORD PTR [r9+156]	# MEM[(struct AudioFromGraph *)userData_5(D)].left_phase, MEM[(struct AudioFromGraph *)userData_5(D)].left_phase
	mov	edx, eax	# tmp132, MEM[(struct AudioFromGraph *)userData_5(D)].left_phase
	sar	edx, 31	# tmp132,
	idiv	edi	# D.8924
	mov	DWORD PTR [r9+156], edx	# MEM[(struct AudioFromGraph *)userData_5(D)].left_phase, tmp132
	mov	eax, DWORD PTR [r9+160]	# MEM[(struct AudioFromGraph *)userData_5(D)].right_phase, MEM[(struct AudioFromGraph *)userData_5(D)].right_phase
	mov	edx, eax	# tmp136, MEM[(struct AudioFromGraph *)userData_5(D)].right_phase
	sar	edx, 31	# tmp136,
	idiv	edi	# D.8924
	mov	DWORD PTR [r9+160], edx	# MEM[(struct AudioFromGraph *)userData_5(D)].right_phase, tmp136
.L4:
	add	ecx, 1	# i,
	mov	eax, ecx	# i, i
	cmp	rax, r8	# i, framesPerBuffer
	jb	.L5	#,
	mov	eax, 0	# D.8900,
	ret
.L8:
	mov	eax, 0	# D.8900,
.L2:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	paCallback, .-paCallback
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"AudioFromGraph_play > Failed on assertion ((! afg->samples) || (! afg->samples_size) || (! afg->points) || (! afg->points_size) || (afg->type > 1)) == true\n"
	.align 8
.LC1:
	.string	"AudioFromGraph_play > Failed to initialize PortAudio, Pa_Initialize() [%s]\n"
	.align 8
.LC2:
	.string	"AudioFromGraph_play > Failed to open default stream, Pa_OpenDefaultStream() [%s]\n"
	.align 8
.LC3:
	.string	"AudioFromGraph_play > Failed to start stream, Pa_StartStream() [%s]\n"
	.align 8
.LC4:
	.string	"AudioFromGraph_play > Failed to pause stream, Pa_StopStream() [%s]\n"
	.align 8
.LC5:
	.string	"AudioFromGraph_play > Failed to unpause stream, Pa_StartStream() [%s]\n"
	.text
	.globl	AudioFromGraph_play
	.type	AudioFromGraph_play, @function
AudioFromGraph_play:
.LFB94:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# afg, afg
	cmp	QWORD PTR [rdi+128], 0	# afg_2(D)->samples,
	je	.L11	#,
	cmp	WORD PTR [rdi+136], 0	# afg_2(D)->samples_size,
	je	.L11	#,
	cmp	QWORD PTR [rdi+144], 0	# afg_2(D)->points,
	je	.L11	#,
	cmp	WORD PTR [rdi+152], 0	# afg_2(D)->points_size,
	je	.L11	#,
	cmp	BYTE PTR [rdi+154], 1	# afg_2(D)->type,
	jbe	.L12	#,
.L11:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 156	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	eax, 0	# D.8852,
	jmp	.L13	#
.L12:
	cmp	BYTE PTR [rdi+25], 0	# MEM[(struct Audio *)afg_2(D)].play,
	jne	.L14	#,
	mov	ebp, esi	# start_paused, start_paused
	call	Pa_Initialize	#
	test	eax, eax	# perr
	je	.L15	#,
	mov	edi, eax	#, perr
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8858
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8852,
	jmp	.L13	#
.L15:
	mov	DWORD PTR [rbx+160], 0	# afg_2(D)->right_phase,
	mov	DWORD PTR [rbx+156], 0	# afg_2(D)->left_phase,
	call	Pa_GetDefaultOutputDevice	#
	mov	DWORD PTR [rbx+72], eax	# MEM[(struct Audio *)afg_2(D)].outputParameters.device, D.8860
	movzx	edx, BYTE PTR [rbx+42]	# MEM[(struct Audio *)afg_2(D)].channels, MEM[(struct Audio *)afg_2(D)].channels
	mov	DWORD PTR [rbx+76], edx	# MEM[(struct Audio *)afg_2(D)].outputParameters.channelCount, MEM[(struct Audio *)afg_2(D)].channels
	mov	rdx, QWORD PTR [rbx+32]	# MEM[(struct Audio *)afg_2(D)].audio_format, MEM[(struct Audio *)afg_2(D)].audio_format
	mov	QWORD PTR [rbx+80], rdx	# MEM[(struct Audio *)afg_2(D)].outputParameters.sampleFormat, MEM[(struct Audio *)afg_2(D)].audio_format
	mov	edi, eax	#, D.8860
	call	Pa_GetDeviceInfo	#
	movsd	xmm0, QWORD PTR [rax+40]	# D.8866, D.8865_20->defaultLowOutputLatency
	movsd	QWORD PTR [rbx+88], xmm0	# MEM[(struct Audio *)afg_2(D)].outputParameters.suggestedLatency, D.8866
	mov	QWORD PTR [rbx+96], 0	# MEM[(struct Audio *)afg_2(D)].outputParameters.hostApiSpecificStreamInfo,
	movzx	ecx, WORD PTR [rbx+40]	# MEM[(struct Audio *)afg_2(D)].buffer_size, MEM[(struct Audio *)afg_2(D)].buffer_size
	movzx	eax, WORD PTR [rbx+28]	# MEM[(struct Audio *)afg_2(D)].sample_frequency, MEM[(struct Audio *)afg_2(D)].sample_frequency
	cvtsi2sd	xmm0, eax	# tmp107, MEM[(struct Audio *)afg_2(D)].sample_frequency
	lea	rdx, [rbx+72]	# tmp109,
	lea	rdi, [rbx+64]	# tmp110,
	mov	QWORD PTR [rsp], rbx	#, afg
	mov	r9d, OFFSET FLAT:paCallback	#,
	mov	r8d, 0	#,
	mov	esi, 0	#,
	call	Pa_OpenStream	#
	test	eax, eax	# perr
	je	.L16	#,
	mov	edi, eax	#, perr
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8875
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8852,
	jmp	.L13	#
.L16:
	test	bpl, bpl	# start_paused
	jne	.L17	#,
	mov	rdi, QWORD PTR [rbx+64]	# MEM[(struct Audio *)afg_2(D)].pa_stream, MEM[(struct Audio *)afg_2(D)].pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# perr
	je	.L18	#,
	mov	edi, eax	#, perr
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8881
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8852,
	jmp	.L13	#
.L17:
	mov	BYTE PTR [rbx+26], 1	# MEM[(struct Audio *)afg_2(D)].pause,
.L18:
	mov	BYTE PTR [rbx+25], 1	# MEM[(struct Audio *)afg_2(D)].play,
	mov	BYTE PTR [rbx+24], 1	# MEM[(struct Audio *)afg_2(D)].initialized,
	mov	eax, 1	# D.8852,
	jmp	.L13	#
.L14:
	cmp	BYTE PTR [rdi+26], 0	# MEM[(struct Audio *)afg_2(D)].pause,
	sete	al	#, tmp112
	mov	BYTE PTR [rdi+26], al	# MEM[(struct Audio *)afg_2(D)].pause, tmp112
	test	al, al	# tmp112
	je	.L19	#,
	mov	rdi, QWORD PTR [rdi+64]	# MEM[(struct Audio *)afg_2(D)].pa_stream, MEM[(struct Audio *)afg_2(D)].pa_stream
	call	Pa_StopStream	#
	mov	edi, eax	# perr,
	mov	eax, 1	# D.8852,
	test	edi, edi	# perr
	je	.L13	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8890
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8852,
	jmp	.L13	#
.L19:
	mov	rdi, QWORD PTR [rdi+64]	# MEM[(struct Audio *)afg_2(D)].pa_stream, MEM[(struct Audio *)afg_2(D)].pa_stream
	call	Pa_StartStream	#
	mov	edi, eax	# perr,
	mov	eax, 1	# D.8852,
	test	edi, edi	# perr
	je	.L13	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.8893
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8852,
.L13:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	AudioFromGraph_play, .-AudioFromGraph_play
	.globl	AudioFromGraph_setType
	.type	AudioFromGraph_setType, @function
AudioFromGraph_setType:
.LFB95:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	ebp, esi	# type, type
	cmp	sil, 1	# type,
	ja	.L23	#,
	mov	rbx, rdi	# afg, afg
	cmp	BYTE PTR [rdi+154], sil	# afg_3(D)->type, type
	je	.L23	#,
	cmp	BYTE PTR [rdi+25], 0	# MEM[(struct Audio *)afg_3(D)].play,
	je	.L25	#,
	cmp	BYTE PTR [rdi+26], 0	# MEM[(struct Audio *)afg_3(D)].pause,
	jne	.L25	#,
	call	Audio_pause	#
	mov	BYTE PTR [rbx+154], bpl	# afg_3(D)->type, type
	mov	DWORD PTR [rbx+160], 0	# afg_3(D)->right_phase,
	mov	DWORD PTR [rbx+156], 0	# afg_3(D)->left_phase,
	mov	rdi, rbx	#, afg
	call	Audio_pause	#
	jmp	.L23	#
.L25:
	mov	BYTE PTR [rbx+154], bpl	# afg_3(D)->type, type
	mov	DWORD PTR [rbx+160], 0	# afg_3(D)->right_phase,
	mov	DWORD PTR [rbx+156], 0	# afg_3(D)->left_phase,
.L23:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	AudioFromGraph_setType, .-AudioFromGraph_setType
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"AudioFromGraph_new: Passed NULL this pointer.\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"AudioFromGraph"
	.text
	.globl	AudioFromGraph_new
	.type	AudioFromGraph_new, @function
AudioFromGraph_new:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L29	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 46	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC6	#,
	call	fwrite	#
	jmp	.L30	#
.L29:
	mov	ecx, OFFSET FLAT:.LC7	#,
	mov	edx, 0	#,
	mov	esi, 2	#,
	call	Audio_init_type	#
	mov	DWORD PTR [rbx+20], 1	# MEM[(struct Audio *)this_2(D)].lib,
	mov	WORD PTR [rbx+40], 256	# MEM[(struct Audio *)this_2(D)].buffer_size,
	mov	QWORD PTR [rbx+32], 1	# MEM[(struct Audio *)this_2(D)].audio_format,
	mov	QWORD PTR [rbx+128], 0	# this_2(D)->samples,
	mov	WORD PTR [rbx+136], 0	# this_2(D)->samples_size,
	mov	QWORD PTR [rbx+144], 0	# this_2(D)->points,
	mov	WORD PTR [rbx+152], 0	# this_2(D)->points_size,
	mov	BYTE PTR [rbx+154], 0	# this_2(D)->type,
.L30:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	AudioFromGraph_new, .-AudioFromGraph_new
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
