	.file	"AudioFromGraph.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT AudioFromGraph.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/AudioFromGraph.asm
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
	.type	AudioFromGraph_paCallback, @function
AudioFromGraph_paCallback:
.LFB93:
	.cfi_startproc
	mov	r11, rdx	# framesPerBuffer, framesPerBuffer
	mov	eax, 2	# D.9058,
	cmp	QWORD PTR [r9+104], 0	# MEM[(struct AudioFromGraph *)vthis_12(D)].samples,
	je	.L2	#,
	cmp	QWORD PTR [r9+120], 0	# MEM[(struct AudioFromGraph *)vthis_12(D)].points,
	je	.L2	#,
	mov	ecx, DWORD PTR [r9+132]	# left_phase, MEM[(struct AudioFromGraph *)vthis_12(D)].left_phase
	mov	edx, DWORD PTR [r9+136]	# right_phase, MEM[(struct AudioFromGraph *)vthis_12(D)].right_phase
	cmp	BYTE PTR [r9+130], 0	# MEM[(struct AudioFromGraph *)vthis_12(D)].type,
	je	.L3	#,
	mov	r8d, 0	# i,
	test	r11, r11	# framesPerBuffer
	jne	.L10	#,
	jmp	.L5	#
.L3:
	test	r11, r11	# framesPerBuffer
	je	.L5	#,
	mov	r8d, 0	# i,
.L6:
	mov	rdi, QWORD PTR [r9+120]	# D.9057, MEM[(struct AudioFromGraph *)vthis_12(D)].points
	movsx	rax, ecx	# left_phase, left_phase
	movss	xmm1, DWORD PTR [rdi+rax*8]	# sample_left, D.9064_27->fvalue
	lea	eax, [rcx+1]	# left_phase,
	movsx	rcx, edx	# right_phase, right_phase
	movss	xmm0, DWORD PTR [rdi+rcx*8]	# sample_right, D.9067_33->fvalue
	lea	r10d, [rdx+1]	# right_phase,
	movss	DWORD PTR [rsi], xmm1	# MEM[base: out_86, offset: 0B], sample_left
	movss	DWORD PTR [rsi+4], xmm0	# MEM[base: out_86, offset: 4B], sample_right
	add	rsi, 8	# out,
	movzx	edi, WORD PTR [r9+128]	# D.9069, MEM[(struct AudioFromGraph *)vthis_12(D)].points_size
	mov	edx, eax	#, left_phase
	sar	edx, 31	#,
	idiv	edi	# D.9069
	mov	ecx, edx	# left_phase,
	mov	eax, r10d	# tmp129, right_phase
	mov	edx, r10d	# right_phase, tmp129
	sar	edx, 31	# right_phase,
	idiv	edi	# D.9069
	add	r8d, 1	# i,
	mov	eax, r8d	# i, i
	cmp	rax, r11	# i, framesPerBuffer
	jb	.L6	#,
	jmp	.L5	#
.L10:
	mov	rdi, QWORD PTR [r9+104]	# D.9055, MEM[(struct AudioFromGraph *)vthis_12(D)].samples
	movsx	rax, ecx	# left_phase, left_phase
	movss	xmm1, DWORD PTR [rdi+rax*4]	# sample_left, *D.9073_49
	lea	eax, [rcx+1]	# left_phase,
	movsx	rcx, edx	# right_phase, right_phase
	movss	xmm0, DWORD PTR [rdi+rcx*4]	# sample_right, *D.9075_55
	lea	r10d, [rdx+1]	# right_phase,
	movss	DWORD PTR [rsi], xmm1	# MEM[base: out_97, offset: 0B], sample_left
	movss	DWORD PTR [rsi+4], xmm0	# MEM[base: out_97, offset: 4B], sample_right
	add	rsi, 8	# out,
	movzx	edi, WORD PTR [r9+112]	# D.9077, MEM[(struct AudioFromGraph *)vthis_12(D)].samples_size
	mov	edx, eax	#, left_phase
	sar	edx, 31	#,
	idiv	edi	# D.9077
	mov	ecx, edx	# left_phase,
	mov	eax, r10d	# tmp136, right_phase
	mov	edx, r10d	# right_phase, tmp136
	sar	edx, 31	# right_phase,
	idiv	edi	# D.9077
	add	r8d, 1	# i,
	mov	eax, r8d	# i, i
	cmp	r11, rax	# framesPerBuffer, i
	ja	.L10	#,
.L5:
	mov	DWORD PTR [r9+132], ecx	# MEM[(struct AudioFromGraph *)vthis_12(D)].left_phase, left_phase
	mov	DWORD PTR [r9+136], edx	# MEM[(struct AudioFromGraph *)vthis_12(D)].right_phase, right_phase
	mov	eax, 0	# D.9058,
.L2:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	AudioFromGraph_paCallback, .-AudioFromGraph_paCallback
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"AudioFromGraph_vplay: Failed on assertion ((! this->samples) || (! this->samples_size) || (! this->points) || (! this->points_size) || (this->type > 1)) == true\n"
	.align 8
.LC1:
	.string	"AudioFromGraph_vplay: Failed to initialize PortAudio, Pa_Initialize() [%s]\n"
	.align 8
.LC2:
	.string	"AudioFromGraph_vplay: Failed to open default stream, Pa_OpenDefaultStream() [%s]\n"
	.align 8
.LC3:
	.string	"AudioFromGraph_vplay: Failed to start stream, Pa_StartStream() [%s]\n"
	.align 8
.LC4:
	.string	"AudioFromGraph_vplay: Failed to pause stream, Pa_StopStream() [%s]\n"
	.align 8
.LC5:
	.string	"AudioFromGraph_vplay: Failed to unpause stream, Pa_StartStream() [%s]\n"
	.text
	.globl	AudioFromGraph_vplay
	.type	AudioFromGraph_vplay, @function
AudioFromGraph_vplay:
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
	mov	rbx, rdi	# vthis, vthis
	cmp	QWORD PTR [rdi+104], 0	# MEM[(struct AudioFromGraph *)vthis_2(D)].samples,
	je	.L14	#,
	cmp	WORD PTR [rdi+112], 0	# MEM[(struct AudioFromGraph *)vthis_2(D)].samples_size,
	je	.L14	#,
	cmp	QWORD PTR [rdi+120], 0	# MEM[(struct AudioFromGraph *)vthis_2(D)].points,
	je	.L14	#,
	cmp	WORD PTR [rdi+128], 0	# MEM[(struct AudioFromGraph *)vthis_2(D)].points_size,
	je	.L14	#,
	cmp	BYTE PTR [rdi+130], 1	# MEM[(struct AudioFromGraph *)vthis_2(D)].type,
	jbe	.L15	#,
.L14:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 161	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	eax, 0	# D.9008,
	jmp	.L16	#
.L15:
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)vthis_2(D)].play,
	jne	.L17	#,
	mov	ebp, esi	# start_paused, start_paused
	call	Pa_Initialize	#
	test	eax, eax	# pe
	je	.L18	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9014
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9008,
	jmp	.L16	#
.L18:
	mov	DWORD PTR [rbx+136], 0	# MEM[(struct AudioFromGraph *)vthis_2(D)].right_phase,
	mov	DWORD PTR [rbx+132], 0	# MEM[(struct AudioFromGraph *)vthis_2(D)].left_phase,
	call	Pa_GetDefaultOutputDevice	#
	mov	DWORD PTR [rbx+48], eax	# MEM[(struct Audio *)vthis_2(D)].outputParameters.device, D.9016
	movzx	edx, BYTE PTR [rbx+34]	# MEM[(struct Audio *)vthis_2(D)].channels, MEM[(struct Audio *)vthis_2(D)].channels
	mov	DWORD PTR [rbx+52], edx	# MEM[(struct Audio *)vthis_2(D)].outputParameters.channelCount, MEM[(struct Audio *)vthis_2(D)].channels
	mov	rdx, QWORD PTR [rbx+24]	# MEM[(struct Audio *)vthis_2(D)].audio_format, MEM[(struct Audio *)vthis_2(D)].audio_format
	mov	QWORD PTR [rbx+56], rdx	# MEM[(struct Audio *)vthis_2(D)].outputParameters.sampleFormat, MEM[(struct Audio *)vthis_2(D)].audio_format
	mov	edi, eax	#, D.9016
	call	Pa_GetDeviceInfo	#
	movsd	xmm0, QWORD PTR [rax+40]	# D.9022, D.9021_20->defaultLowOutputLatency
	movsd	QWORD PTR [rbx+64], xmm0	# MEM[(struct Audio *)vthis_2(D)].outputParameters.suggestedLatency, D.9022
	mov	QWORD PTR [rbx+72], 0	# MEM[(struct Audio *)vthis_2(D)].outputParameters.hostApiSpecificStreamInfo,
	movzx	ecx, WORD PTR [rbx+32]	# MEM[(struct Audio *)vthis_2(D)].buffer_size, MEM[(struct Audio *)vthis_2(D)].buffer_size
	movzx	eax, WORD PTR [rbx+16]	# MEM[(struct Audio *)vthis_2(D)].sample_frequency, MEM[(struct Audio *)vthis_2(D)].sample_frequency
	cvtsi2sd	xmm0, eax	# tmp107, MEM[(struct Audio *)vthis_2(D)].sample_frequency
	lea	rdx, [rbx+48]	# tmp109,
	lea	rdi, [rbx+40]	# tmp110,
	mov	QWORD PTR [rsp], rbx	#, vthis
	mov	r9d, OFFSET FLAT:AudioFromGraph_paCallback	#,
	mov	r8d, 0	#,
	mov	esi, 0	#,
	call	Pa_OpenStream	#
	test	eax, eax	# pe
	je	.L19	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9031
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9008,
	jmp	.L16	#
.L19:
	test	bpl, bpl	# start_paused
	jne	.L20	#,
	mov	rdi, QWORD PTR [rbx+40]	# MEM[(struct Audio *)vthis_2(D)].pa_stream, MEM[(struct Audio *)vthis_2(D)].pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# pe
	je	.L21	#,
	mov	edi, eax	#, pe
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9037
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9008,
	jmp	.L16	#
.L20:
	mov	BYTE PTR [rbx+14], 1	# MEM[(struct Audio *)vthis_2(D)].pause,
.L21:
	mov	BYTE PTR [rbx+13], 1	# MEM[(struct Audio *)vthis_2(D)].play,
	mov	BYTE PTR [rbx+12], 1	# MEM[(struct Audio *)vthis_2(D)].initialized,
	mov	eax, 1	# D.9008,
	jmp	.L16	#
.L17:
	cmp	BYTE PTR [rdi+14], 0	# MEM[(struct Audio *)vthis_2(D)].pause,
	sete	al	#, tmp112
	mov	BYTE PTR [rdi+14], al	# MEM[(struct Audio *)vthis_2(D)].pause, tmp112
	test	al, al	# tmp112
	je	.L22	#,
	mov	rdi, QWORD PTR [rdi+40]	# MEM[(struct Audio *)vthis_2(D)].pa_stream, MEM[(struct Audio *)vthis_2(D)].pa_stream
	call	Pa_StopStream	#
	mov	edi, eax	# pe,
	mov	eax, 1	# D.9008,
	test	edi, edi	# pe
	je	.L16	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9046
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9008,
	jmp	.L16	#
.L22:
	mov	rdi, QWORD PTR [rdi+40]	# MEM[(struct Audio *)vthis_2(D)].pa_stream, MEM[(struct Audio *)vthis_2(D)].pa_stream
	call	Pa_StartStream	#
	mov	edi, eax	# pe,
	mov	eax, 1	# D.9008,
	test	edi, edi	# pe
	je	.L16	#,
	call	Pa_GetErrorText	#
	mov	rcx, rax	#, D.9049
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.9008,
.L16:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	AudioFromGraph_vplay, .-AudioFromGraph_vplay
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
	ja	.L26	#,
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+130], sil	# this_3(D)->type, type
	je	.L26	#,
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)this_3(D)].play,
	je	.L28	#,
	cmp	BYTE PTR [rdi+14], 0	# MEM[(struct Audio *)this_3(D)].pause,
	jne	.L28	#,
	call	Audio_pause	#
	mov	BYTE PTR [rbx+130], bpl	# this_3(D)->type, type
	mov	DWORD PTR [rbx+136], 0	# this_3(D)->right_phase,
	mov	DWORD PTR [rbx+132], 0	# this_3(D)->left_phase,
	mov	rdi, rbx	#, this
	call	Audio_pause	#
	jmp	.L26	#
.L28:
	mov	BYTE PTR [rbx+130], bpl	# this_3(D)->type, type
	mov	DWORD PTR [rbx+136], 0	# this_3(D)->right_phase,
	mov	DWORD PTR [rbx+132], 0	# this_3(D)->left_phase,
.L26:
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	AudioFromGraph_setType, .-AudioFromGraph_setType
	.globl	AudioFromGraph_vdestroy
	.type	AudioFromGraph_vdestroy, @function
AudioFromGraph_vdestroy:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8969	#,
	call	Static_printObj2	#
	mov	rdi, rbx	#, vthis
	call	Audio_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	AudioFromGraph_vdestroy, .-AudioFromGraph_vdestroy
	.globl	AudioFromGraph_new
	.type	AudioFromGraph_new, @function
AudioFromGraph_new:
.LFB97:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L34	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8973	#,
	call	Static_nullThis2	#
	jmp	.L35	#
.L34:
	call	Audio_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8973	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	DWORD PTR [rbx+8], 1	# MEM[(struct Audio *)this_2(D)].lib,
	mov	WORD PTR [rbx+32], 256	# MEM[(struct Audio *)this_2(D)].buffer_size,
	mov	QWORD PTR [rbx+24], 1	# MEM[(struct Audio *)this_2(D)].audio_format,
	mov	QWORD PTR [rbx+104], 0	# this_2(D)->samples,
	mov	WORD PTR [rbx+112], 0	# this_2(D)->samples_size,
	mov	QWORD PTR [rbx+120], 0	# this_2(D)->points,
	mov	WORD PTR [rbx+128], 0	# this_2(D)->points_size,
	mov	BYTE PTR [rbx+130], 0	# this_2(D)->type,
	mov	DWORD PTR [rbx+132], 0	# this_2(D)->left_phase,
	mov	DWORD PTR [rbx+136], 0	# this_2(D)->right_phase,
.L35:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	AudioFromGraph_new, .-AudioFromGraph_new
	.globl	AudioFromGraph_class
	.data
	.align 8
	.type	AudioFromGraph_class, @object
	.size	AudioFromGraph_class, 8
AudioFromGraph_class:
	.quad	type
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"AudioFromGraph"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	144
# name:
	.quad	.LC6
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8969, @object
	.size	__FUNCTION__.8969, 24
__FUNCTION__.8969:
	.string	"AudioFromGraph_vdestroy"
	.align 16
	.type	__FUNCTION__.8973, @object
	.size	__FUNCTION__.8973, 19
__FUNCTION__.8973:
	.string	"AudioFromGraph_new"
	.data
	.align 16
	.type	vtable, @object
	.size	vtable, 16
vtable:
	.quad	Audio_vdestroy
	.quad	AudioFromGraph_vplay
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
