	.file	"AudioTest.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioTest.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/AudioTest.asm
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
	.string	"AudioTest_play:AudioTest> Unable to open audio device: %s\n"
	.align 8
.LC1:
	.string	"AudioTest_play: In obtained:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n"
	.align 8
.LC2:
	.string	"AudioTest_play: Buffers:\n\taudio\t%u\n\toutput\t%u\n\tsampleFrequency\t%u\n\tfreq1\t%u\n\tfase1\t%u\n\tfreq2\t%u\n\tfase2\t%u\n\tbytes per period 1\t%u\n\tbytes per period 2\t%u\n"
	.text
	.globl	AudioTest_vplay
	.type	AudioTest_vplay, @function
AudioTest_vplay:
.LFB94:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 136	#,
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	rbx, rdi	# vthis, vthis
	cmp	BYTE PTR [rdi+12], 0	# MEM[(struct Audio *)vthis_3(D)].initialized,
	jne	.L2	#,
	mov	ebp, esi	# start_paused, start_paused
	mov	ecx, OFFSET FLAT:AudioTest_mixAudioCallback	#,
	lea	rdx, [rsp+48]	#,
	lea	rsi, [rsp+80]	#,
	call	Audio_SDL_initialize	#
	lea	rsi, [rsp+48]	#,
	lea	rdi, [rsp+80]	#,
	call	SDL_OpenAudio	#
	test	eax, eax	# D.8872
	jns	.L3	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8875
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8877,
	jmp	.L4	#
.L3:
	movzx	r12d, WORD PTR [rsp+56]	# audioBufferSize, obtained.samples
	mov	ecx, DWORD PTR [rsp+48]	# D.8879, obtained.freq
	mov	DWORD PTR [rbx+128], ecx	# MEM[(struct AudioTest *)vthis_3(D)].sampleFrequency, D.8879
	movzx	r9d, BYTE PTR [rsp+54]	# obtained.channels, obtained.channels
	movzx	r8d, WORD PTR [rsp+52]	# obtained.format, obtained.format
	mov	eax, DWORD PTR [rsp+60]	# obtained.size, obtained.size
	mov	DWORD PTR [rsp+16], eax	#, obtained.size
	mov	DWORD PTR [rsp+8], r12d	#, audioBufferSize
	movzx	eax, BYTE PTR [rsp+55]	# obtained.silence, obtained.silence
	mov	DWORD PTR [rsp], eax	#, obtained.silence
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	r8d, WORD PTR [rsp+56]	# outputAudioBufferSize, obtained.samples
	movzx	edx, WORD PTR [rsp+52]	# tmp104, obtained.format
	and	dx, 32767	# tmp104,
	lea	eax, [r8+r8]	# tmp114,
	cmp	dx, 16	# tmp104,
	cmove	r8d, eax	# tmp114,, outputAudioBufferSize
	mov	r9d, DWORD PTR [rbx+128]	# D.8895, MEM[(struct AudioTest *)vthis_3(D)].sampleFrequency
	mov	esi, DWORD PTR [rbx+104]	# D.8896, MEM[(struct AudioTest *)vthis_3(D)].freq1
	mov	eax, r9d	#, D.8895
	mov	edx, 0	# tmp107,
	div	esi	# D.8896
	mov	edi, eax	# tmp106,
	mov	DWORD PTR [rbx+120], eax	# MEM[(struct AudioTest *)vthis_3(D)].bytesPerPeriod1, tmp106
	mov	ecx, DWORD PTR [rbx+108]	# D.8898, MEM[(struct AudioTest *)vthis_3(D)].freq2
	mov	eax, r9d	# tmp108, D.8895
	mov	edx, 0	# tmp109,
	div	ecx	# D.8898
	mov	DWORD PTR [rbx+124], eax	# MEM[(struct AudioTest *)vthis_3(D)].bytesPerPeriod2, tmp108
	mov	DWORD PTR [rsp+40], eax	#, tmp108
	mov	DWORD PTR [rsp+32], edi	#, tmp106
	mov	eax, DWORD PTR [rbx+116]	# MEM[(struct AudioTest *)vthis_3(D)].fase2, MEM[(struct AudioTest *)vthis_3(D)].fase2
	mov	DWORD PTR [rsp+24], eax	#, MEM[(struct AudioTest *)vthis_3(D)].fase2
	mov	DWORD PTR [rsp+16], ecx	#, D.8898
	mov	eax, DWORD PTR [rbx+112]	# MEM[(struct AudioTest *)vthis_3(D)].fase1, MEM[(struct AudioTest *)vthis_3(D)].fase1
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct AudioTest *)vthis_3(D)].fase1
	mov	DWORD PTR [rsp], esi	#, D.8896
	mov	ecx, r12d	#, audioBufferSize
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	movzx	edi, bpl	# start_paused, start_paused
	call	SDL_PauseAudio	#
	mov	BYTE PTR [rbx+14], bpl	# MEM[(struct Audio *)vthis_3(D)].pause, start_paused
	mov	BYTE PTR [rbx+12], 1	# MEM[(struct Audio *)vthis_3(D)].initialized,
	mov	BYTE PTR [rbx+13], 1	# MEM[(struct Audio *)vthis_3(D)].play,
	mov	eax, 1	# D.8877,
	jmp	.L4	#
.L2:
	mov	eax, 1	# D.8877,
	cmp	BYTE PTR [rdi+14], 0	# MEM[(struct Audio *)vthis_3(D)].pause,
	je	.L4	#,
	mov	BYTE PTR [rdi+14], 0	# MEM[(struct Audio *)vthis_3(D)].pause,
	mov	edi, 0	#,
	call	SDL_PauseAudio	#
	mov	eax, 1	# D.8877,
.L4:
	mov	rbx, QWORD PTR [rsp+112]	#,
	mov	rbp, QWORD PTR [rsp+120]	#,
	mov	r12, QWORD PTR [rsp+128]	#,
	add	rsp, 136	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	AudioTest_vplay, .-AudioTest_vplay
	.type	AudioTest_mixAudioCallback, @function
AudioTest_mixAudioCallback:
.LFB93:
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
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 96
	mov	QWORD PTR [rsp+24], rdi	# %sfp, vthis
	mov	r14d, DWORD PTR [rdi+120]	# bytesPerPeriod1, MEM[(struct AudioTest *)vthis_5(D)].bytesPerPeriod1
	mov	r13d, DWORD PTR [rdi+124]	# bytesPerPeriod2, MEM[(struct AudioTest *)vthis_5(D)].bytesPerPeriod2
	mov	r12d, DWORD PTR [rdi+112]	# fase1, MEM[(struct AudioTest *)vthis_5(D)].fase1
	mov	ebp, DWORD PTR [rdi+116]	# fase2, MEM[(struct AudioTest *)vthis_5(D)].fase2
	test	edx, edx	# len
	jle	.L9	#,
	mov	rbx, rsi	# ivtmp.19, stream
	sub	edx, 1	# tmp112,
	lea	rdx, [rsi+1+rdx]	#,
	mov	QWORD PTR [rsp], rdx	# %sfp,
	mov	eax, r14d	# bytesPerPeriod1, bytesPerPeriod1
	cvtsi2sd	xmm0, rax	#, bytesPerPeriod1
	movsd	QWORD PTR [rsp+8], xmm0	# %sfp,
	mov	eax, r13d	# bytesPerPeriod2, bytesPerPeriod2
	cvtsi2sd	xmm0, rax	#, bytesPerPeriod2
	movsd	QWORD PTR [rsp+16], xmm0	# %sfp,
.L18:
	mov	eax, r12d	# fase1, fase1
	cvtsi2sd	xmm0, rax	# tmp113, fase1
	addsd	xmm0, xmm0	# tmp118, tmp113
	mulsd	xmm0, QWORD PTR .LC3[rip]	# tmp119,
	divsd	xmm0, QWORD PTR [rsp+8]	# tmp126, %sfp
	call	sin	#
	mulsd	xmm0, QWORD PTR .LC4[rip]	# tmp127,
	cvttsd2si	r15d, xmm0	# channel1, tmp127
	mov	eax, ebp	# fase2, fase2
	cvtsi2sd	xmm0, rax	# tmp129, fase2
	addsd	xmm0, xmm0	# tmp134, tmp129
	mulsd	xmm0, QWORD PTR .LC3[rip]	# tmp135,
	divsd	xmm0, QWORD PTR [rsp+16]	# tmp142, %sfp
	call	sin	#
	mulsd	xmm0, QWORD PTR .LC4[rip]	# tmp143,
	cvttsd2si	eax, xmm0	# tmp145, tmp143
	add	r15d, eax	# channel1, tmp145
	cmp	r15d, -128	# channel1,
	mov	eax, -128	#,
	cmovl	r15d, eax	# channel1,, channel1,
	cmp	r15d, 127	# channel1,
	mov	edx, 127	#,
	cmovg	r15d, edx	# channel1,, tmp147,
	mov	BYTE PTR [rbx], r15b	# MEM[base: D.8980_48, offset: 0B], tmp147
	lea	eax, [r12+1]	# fase1,
	mov	edx, 0	#,
	div	r14d	# bytesPerPeriod1
	mov	r12d, edx	# fase1,
	lea	eax, [rbp+1]	# fase2,
	mov	edx, 0	#,
	div	r13d	# bytesPerPeriod2
	mov	ebp, edx	# fase2,
	add	rbx, 1	# ivtmp.19,
	cmp	rbx, QWORD PTR [rsp]	# ivtmp.19, %sfp
	jne	.L18	#,
.L9:
	mov	rax, QWORD PTR [rsp+24]	#, %sfp
	mov	DWORD PTR [rax+112], r12d	# MEM[(struct AudioTest *)vthis_5(D)].fase1, fase1
	mov	DWORD PTR [rax+116], ebp	# MEM[(struct AudioTest *)vthis_5(D)].fase2, fase2
	add	rsp, 40	#,
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
.LFE93:
	.size	AudioTest_mixAudioCallback, .-AudioTest_mixAudioCallback
	.globl	AudioTest_vdestroy
	.type	AudioTest_vdestroy, @function
AudioTest_vdestroy:
.LFB95:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8791	#,
	call	Static_printObj2	#
	mov	rdi, rbx	#, vthis
	call	Audio_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	AudioTest_vdestroy, .-AudioTest_vdestroy
	.globl	AudioTest_new
	.type	AudioTest_new, @function
AudioTest_new:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L24	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8795	#,
	call	Static_nullThis2	#
	jmp	.L25	#
.L24:
	call	Audio_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8795	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	DWORD PTR [rbx+8], 0	# MEM[(struct Audio *)this_2(D)].lib,
	mov	DWORD PTR [rbx+128], 0	# this_2(D)->sampleFrequency,
	mov	DWORD PTR [rbx+104], 70	# this_2(D)->freq1,
	mov	DWORD PTR [rbx+108], 71	# this_2(D)->freq2,
	mov	DWORD PTR [rbx+112], 0	# this_2(D)->fase1,
	mov	DWORD PTR [rbx+116], 0	# this_2(D)->fase2,
	mov	DWORD PTR [rbx+120], 0	# this_2(D)->bytesPerPeriod1,
	mov	DWORD PTR [rbx+124], 0	# this_2(D)->bytesPerPeriod2,
.L25:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	AudioTest_new, .-AudioTest_new
	.globl	AudioTest_setFreq1
	.type	AudioTest_setFreq1, @function
AudioTest_setFreq1:
.LFB97:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# value, value
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)this_2(D)].play,
	je	.L28	#,
	cmp	BYTE PTR [rdi+12], 0	# MEM[(struct Audio *)this_2(D)].initialized,
	je	.L28	#,
	call	SDL_LockAudio	#
	mov	DWORD PTR [rbx+104], ebp	# this_2(D)->freq1, value
	mov	eax, DWORD PTR [rbx+128]	# this_2(D)->sampleFrequency, this_2(D)->sampleFrequency
	mov	edx, 0	# tmp68,
	div	ebp	# value
	mov	DWORD PTR [rbx+120], eax	# this_2(D)->bytesPerPeriod1, tmp67
	call	SDL_UnlockAudio	#
	jmp	.L27	#
.L28:
	mov	DWORD PTR [rbx+104], ebp	# this_2(D)->freq1, value
	mov	eax, DWORD PTR [rbx+128]	# this_2(D)->sampleFrequency, this_2(D)->sampleFrequency
	mov	edx, 0	# tmp71,
	div	ebp	# value
	mov	DWORD PTR [rbx+120], eax	# this_2(D)->bytesPerPeriod1, tmp70
.L27:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	AudioTest_setFreq1, .-AudioTest_setFreq1
	.globl	AudioTest_setFreq2
	.type	AudioTest_setFreq2, @function
AudioTest_setFreq2:
.LFB98:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# value, value
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)this_2(D)].play,
	je	.L33	#,
	cmp	BYTE PTR [rdi+12], 0	# MEM[(struct Audio *)this_2(D)].initialized,
	je	.L33	#,
	call	SDL_LockAudio	#
	mov	DWORD PTR [rbx+108], ebp	# this_2(D)->freq2, value
	mov	eax, DWORD PTR [rbx+128]	# this_2(D)->sampleFrequency, this_2(D)->sampleFrequency
	mov	edx, 0	# tmp68,
	div	ebp	# value
	mov	DWORD PTR [rbx+124], eax	# this_2(D)->bytesPerPeriod2, tmp67
	call	SDL_UnlockAudio	#
	jmp	.L32	#
.L33:
	mov	DWORD PTR [rbx+108], ebp	# this_2(D)->freq2, value
	mov	eax, DWORD PTR [rbx+128]	# this_2(D)->sampleFrequency, this_2(D)->sampleFrequency
	mov	edx, 0	# tmp71,
	div	ebp	# value
	mov	DWORD PTR [rbx+124], eax	# this_2(D)->bytesPerPeriod2, tmp70
.L32:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	AudioTest_setFreq2, .-AudioTest_setFreq2
	.globl	AudioTest_setFase1
	.type	AudioTest_setFase1, @function
AudioTest_setFase1:
.LFB99:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# value, value
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)this_2(D)].play,
	je	.L38	#,
	cmp	BYTE PTR [rdi+12], 0	# MEM[(struct Audio *)this_2(D)].initialized,
	je	.L38	#,
	call	SDL_LockAudio	#
	mov	DWORD PTR [rbx+112], ebp	# this_2(D)->fase1, value
	call	SDL_UnlockAudio	#
	.p2align 4,,2
	jmp	.L37	#
.L38:
	mov	DWORD PTR [rbx+112], ebp	# this_2(D)->fase1, value
.L37:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	AudioTest_setFase1, .-AudioTest_setFase1
	.globl	AudioTest_setFase2
	.type	AudioTest_setFase2, @function
AudioTest_setFase2:
.LFB100:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, esi	# value, value
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)this_2(D)].play,
	je	.L43	#,
	cmp	BYTE PTR [rdi+12], 0	# MEM[(struct Audio *)this_2(D)].initialized,
	je	.L43	#,
	call	SDL_LockAudio	#
	mov	DWORD PTR [rbx+116], ebp	# this_2(D)->fase2, value
	call	SDL_UnlockAudio	#
	.p2align 4,,2
	jmp	.L42	#
.L43:
	mov	DWORD PTR [rbx+116], ebp	# this_2(D)->fase2, value
.L42:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	AudioTest_setFase2, .-AudioTest_setFase2
	.globl	AudioTest_class
	.data
	.align 8
	.type	AudioTest_class, @object
	.size	AudioTest_class, 8
AudioTest_class:
	.quad	type
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"AudioTest"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	136
# name:
	.quad	.LC5
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8791, @object
	.size	__FUNCTION__.8791, 19
__FUNCTION__.8791:
	.string	"AudioTest_vdestroy"
	.type	__FUNCTION__.8795, @object
	.size	__FUNCTION__.8795, 14
__FUNCTION__.8795:
	.string	"AudioTest_new"
	.data
	.align 16
	.type	vtable, @object
	.size	vtable, 16
vtable:
	.quad	Audio_vdestroy
	.quad	AudioTest_vplay
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	1413754136
	.long	1074340347
	.align 8
.LC4:
	.long	0
	.long	1080213504
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
