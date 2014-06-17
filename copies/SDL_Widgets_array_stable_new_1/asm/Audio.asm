	.file	"Audio.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Audio.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/Audio.asm
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
	.globl	Audio_init_type
	.type	Audio_init_type, @function
Audio_init_type:
.LFB96:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbx, rdi	# audio, audio
	mov	ebp, esi	# audio_type, audio_type
	mov	rsi, rdx	# vdestroy, vdestroy
	mov	rdx, rcx	# type, type
	test	rsi, rsi	# vdestroy
	mov	ecx, OFFSET FLAT:Audio_vdestroy	# tmp63,
	cmove	rsi, rcx	# vdestroy,, vdestroy, tmp63
	call	Object_init_type	#
	mov	DWORD PTR [rbx+16], ebp	# audio_5(D)->type, audio_type
	mov	BYTE PTR [rbx+25], 0	# audio_5(D)->play,
	mov	BYTE PTR [rbx+26], 0	# audio_5(D)->pause,
	mov	BYTE PTR [rbx+24], 0	# audio_5(D)->initialized,
	mov	WORD PTR [rbx+28], -21436	# audio_5(D)->sample_frequency,
	mov	QWORD PTR [rbx+32], 32776	# audio_5(D)->audio_format,
	mov	WORD PTR [rbx+40], 4096	# audio_5(D)->buffer_size,
	mov	BYTE PTR [rbx+42], 2	# audio_5(D)->channels,
	mov	QWORD PTR [rbx+48], 0	# audio_5(D)->user_data,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Audio_init_type, .-Audio_init_type
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Audio_SDL_initialize:Audio>> In desired:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n"
	.text
	.globl	Audio_SDL_initialize
	.type	Audio_SDL_initialize, @function
Audio_SDL_initialize:
.LFB97:
	.cfi_startproc
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	movzx	eax, WORD PTR [rdi+28]	# D.8777, audio_1(D)->sample_frequency
	mov	DWORD PTR [rsi], eax	# desired_4(D)->freq, D.8777
	mov	r8, QWORD PTR [rdi+32]	# audio_1(D)->audio_format, audio_1(D)->audio_format
	mov	WORD PTR [rsi+4], r8w	# desired_4(D)->format, audio_1(D)->audio_format
	movzx	edx, WORD PTR [rdi+40]	# D.8780, audio_1(D)->buffer_size
	mov	WORD PTR [rsi+8], dx	# desired_4(D)->samples, D.8780
	mov	QWORD PTR [rsi+16], rcx	# desired_4(D)->callback, callback_function
	mov	rcx, QWORD PTR [rdi+48]	# D.8781, audio_1(D)->user_data
	mov	QWORD PTR [rsi+24], rcx	# desired_4(D)->userdata, D.8781
	movzx	r9d, BYTE PTR [rdi+42]	# D.8782, audio_1(D)->channels
	mov	BYTE PTR [rsi+6], r9b	# desired_4(D)->channels, D.8782
	mov	ecx, DWORD PTR [rsi+12]	# desired_4(D)->size, desired_4(D)->size
	mov	DWORD PTR [rsp+16], ecx	#, desired_4(D)->size
	movzx	edx, dx	# D.8780, D.8780
	mov	DWORD PTR [rsp+8], edx	#, D.8780
	movzx	edx, BYTE PTR [rsi+7]	# desired_4(D)->silence, desired_4(D)->silence
	mov	DWORD PTR [rsp], edx	#, desired_4(D)->silence
	movzx	r9d, r9b	#, D.8782
	movzx	r8d, r8w	#, audio_1(D)->audio_format
	mov	ecx, eax	#, D.8777
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	Audio_SDL_initialize, .-Audio_SDL_initialize
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"Audio_play:Audio>> Unknown type of Audio class object: %d\n"
	.text
	.globl	Audio_play
	.type	Audio_play, @function
Audio_play:
.LFB98:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	ecx, DWORD PTR [rdi+16]	# D.8770, audio_2(D)->type
	cmp	ecx, 1	# D.8770,
	je	.L9	#,
	cmp	ecx, 1	# D.8770,
	jb	.L8	#,
	cmp	ecx, 2	# D.8770,
	jne	.L12	#,
	.p2align 4,,5
	jmp	.L10	#
.L8:
	movzx	esi, sil	# start_paused, start_paused
	call	AudioTest_play	#
	.p2align 4,,4
	jmp	.L11	#
.L9:
	movzx	esi, sil	# start_paused, start_paused
	call	AudioSinus_play	#
	.p2align 4,,4
	jmp	.L11	#
.L10:
	movzx	esi, sil	# start_paused, start_paused
	call	AudioFromGraph_play	#
	.p2align 4,,4
	jmp	.L11	#
.L12:
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	eax, 0	# D.8771,
.L11:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Audio_play, .-Audio_play
	.globl	Audio_SDL_pause
	.type	Audio_SDL_pause, @function
Audio_SDL_pause:
.LFB99:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+26], 0	# audio_1(D)->pause,
	sete	al	#, tmp64
	mov	BYTE PTR [rdi+26], al	# audio_1(D)->pause, tmp64
	movzx	edi, al	# D.8767, tmp64
	call	SDL_PauseAudio	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Audio_SDL_pause, .-Audio_SDL_pause
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Audio_PA_pause:Audio > Failed to stop audio: Pa_StopStream()\n"
	.align 8
.LC3:
	.string	"Audio_PA_pause:Audio > Failed to start audio: Pa_StartStream()\n"
	.text
	.globl	Audio_PA_pause
	.type	Audio_PA_pause, @function
Audio_PA_pause:
.LFB100:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+26], 0	# audio_1(D)->pause,
	sete	al	#, tmp69
	mov	BYTE PTR [rdi+26], al	# audio_1(D)->pause, tmp69
	test	al, al	# tmp69
	je	.L17	#,
	mov	rdi, QWORD PTR [rdi+64]	# audio_1(D)->pa_stream, audio_1(D)->pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# D.8758
	je	.L16	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 61	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
	jmp	.L16	#
.L17:
	mov	rdi, QWORD PTR [rdi+64]	# audio_1(D)->pa_stream, audio_1(D)->pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# D.8763
	.p2align 4,,2
	je	.L16	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 63	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
.L16:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Audio_PA_pause, .-Audio_PA_pause
	.globl	Audio_SDL_stop
	.type	Audio_SDL_stop, @function
Audio_SDL_stop:
.LFB101:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# audio, audio
	call	SDL_CloseAudio	#
	mov	BYTE PTR [rbx+24], 0	# audio_1(D)->initialized,
	mov	BYTE PTR [rbx+25], 0	# audio_1(D)->play,
	mov	BYTE PTR [rbx+26], 0	# audio_1(D)->pause,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	Audio_SDL_stop, .-Audio_SDL_stop
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Audio_PA_stop:Audio > Failed to stop audio: Pa_StopStream()\n"
	.align 8
.LC5:
	.string	"Audio_PA_stop:Audio > Failed to terminate audio: Pa_Terminate()\n"
	.text
	.globl	Audio_PA_stop
	.type	Audio_PA_stop, @function
Audio_PA_stop:
.LFB102:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+26], 0	# audio_1(D)->pause,
	jne	.L23	#,
	mov	rdi, QWORD PTR [rdi+64]	# audio_1(D)->pa_stream, audio_1(D)->pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# D.8740
	je	.L23	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 60	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	jmp	.L22	#
.L23:
	call	Pa_Terminate	#
	test	eax, eax	# D.8744
	.p2align 4,,6
	je	.L22	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 64	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC5	#,
	call	fwrite	#
.L22:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE102:
	.size	Audio_PA_stop, .-Audio_PA_stop
	.type	Audio_vdestroy, @function
Audio_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	cmp	BYTE PTR [rdi+24], 0	# MEM[(struct Audio *)vthis_1(D)].initialized,
	je	.L27	#,
	cmp	DWORD PTR [rdi+20], 0	# MEM[(struct Audio *)vthis_1(D)].lib,
	jne	.L28	#,
	cmp	BYTE PTR [rdi+25], 0	# MEM[(struct Audio *)vthis_1(D)].play,
	je	.L29	#,
	call	SDL_CloseAudio	#
	.p2align 4,,4
	jmp	.L29	#
.L28:
	.p2align 4,,8
	call	Audio_PA_stop	#
.L29:
	mov	BYTE PTR [rbx+24], 0	# MEM[(struct Audio *)vthis_1(D)].initialized,
	mov	BYTE PTR [rbx+25], 0	# MEM[(struct Audio *)vthis_1(D)].play,
	mov	BYTE PTR [rbx+26], 0	# MEM[(struct Audio *)vthis_1(D)].pause,
.L27:
	mov	rdi, rbx	#, vthis
	call	Object_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Audio_vdestroy, .-Audio_vdestroy
	.globl	Audio_destroy
	.type	Audio_destroy, @function
Audio_destroy:
.LFB95:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+24], 0	# this_1(D)->initialized,
	je	.L32	#,
	cmp	DWORD PTR [rdi+20], 0	# this_1(D)->lib,
	jne	.L33	#,
	cmp	BYTE PTR [rdi+25], 0	# this_1(D)->play,
	je	.L34	#,
	call	SDL_CloseAudio	#
	.p2align 4,,4
	jmp	.L34	#
.L33:
	.p2align 4,,8
	call	Audio_PA_stop	#
.L34:
	mov	BYTE PTR [rbx+24], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+25], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+26], 0	# this_1(D)->pause,
.L32:
	mov	rdi, rbx	#, this
	call	Object_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Audio_destroy, .-Audio_destroy
	.globl	Audio_pause
	.type	Audio_pause, @function
Audio_pause:
.LFB103:
	.cfi_startproc
	cmp	BYTE PTR [rdi+25], 0	# audio_1(D)->play,
	je	.L41	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	DWORD PTR [rdi+20], 0	# audio_1(D)->lib,
	jne	.L38	#,
	call	Audio_SDL_pause	#
	jmp	.L36	#
.L38:
	.p2align 4,,8
	call	Audio_PA_pause	#
.L36:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L41:
	.p2align 4,,4
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	Audio_pause, .-Audio_pause
	.globl	Audio_stop
	.type	Audio_stop, @function
Audio_stop:
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# audio, audio
	cmp	BYTE PTR [rdi+24], 0	# audio_1(D)->initialized,
	je	.L42	#,
	cmp	BYTE PTR [rdi+25], 0	# audio_1(D)->play,
	je	.L42	#,
	cmp	DWORD PTR [rdi+20], 0	# audio_1(D)->lib,
	jne	.L44	#,
	call	SDL_CloseAudio	#
	mov	BYTE PTR [rbx+24], 0	# audio_1(D)->initialized,
	mov	BYTE PTR [rbx+25], 0	# audio_1(D)->play,
	mov	BYTE PTR [rbx+26], 0	# audio_1(D)->pause,
	jmp	.L42	#
.L44:
	call	Audio_PA_stop	#
	mov	BYTE PTR [rbx+24], 0	# audio_1(D)->initialized,
	mov	BYTE PTR [rbx+25], 0	# audio_1(D)->play,
	mov	BYTE PTR [rbx+26], 0	# audio_1(D)->pause,
.L42:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Audio_stop, .-Audio_stop
	.globl	Audio_remove
	.type	Audio_remove, @function
Audio_remove:
.LFB105:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# audio, audio
	cmp	BYTE PTR [rdi+24], 0	# audio_1(D)->initialized,
	je	.L46	#,
	cmp	DWORD PTR [rdi+20], 0	# audio_1(D)->lib,
	jne	.L48	#,
	cmp	BYTE PTR [rdi+25], 0	# audio_1(D)->play,
	je	.L49	#,
	call	SDL_CloseAudio	#
	.p2align 4,,4
	jmp	.L49	#
.L48:
	.p2align 4,,8
	call	Audio_PA_stop	#
.L49:
	mov	BYTE PTR [rbx+24], 0	# audio_1(D)->initialized,
	mov	BYTE PTR [rbx+25], 0	# audio_1(D)->play,
	mov	BYTE PTR [rbx+26], 0	# audio_1(D)->pause,
.L46:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	Audio_remove, .-Audio_remove
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"Portaudio"
.LC7:
	.string	"SDL_Audio"
.LC8:
	.string	"Unknown"
	.text
	.globl	Audio_getLibName
	.type	Audio_getLibName, @function
Audio_getLibName:
.LFB106:
	.cfi_startproc
	test	rdi, rdi	# audio
	je	.L55	#,
	mov	edx, DWORD PTR [rdi+20]	# audio_2(D)->lib, audio_2(D)->lib
	mov	eax, OFFSET FLAT:.LC7	# D.8706,
	test	edx, edx	# audio_2(D)->lib
	je	.L52	#,
	cmp	edx, 1	# audio_2(D)->lib,
	mov	eax, OFFSET FLAT:.LC8	# tmp66,
	mov	edx, OFFSET FLAT:.LC6	# tmp65,
	cmove	rax, rdx	# tmp65,, D.8706
	ret
.L55:
	mov	eax, 0	# D.8706,
.L52:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	Audio_getLibName, .-Audio_getLibName
	.section	.rodata.str1.1
.LC9:
	.string	"audio=NULL"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"audio(%p), lib=%s, name=%s, type=%s"
	.text
	.globl	Audio_toString
	.type	Audio_toString, @function
Audio_toString:
.LFB107:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 64
	mov	rbx, rdi	# audio, audio
	mov	eax, OFFSET FLAT:.LC9	# D.8696,
	test	rdi, rdi	# audio
	je	.L58	#,
	call	Object_getType	#
	mov	rbp, rax	# D.8697,
	mov	rdi, rbx	#, audio
	call	Audio_getLibName	#
	mov	QWORD PTR [rsp+16], rbp	#, D.8697
	lea	rdx, [rbx+104]	# tmp65,
	mov	QWORD PTR [rsp+8], rdx	#, tmp65
	mov	QWORD PTR [rsp], rax	#, D.8699
	mov	r9, rbx	#, audio
	mov	r8d, OFFSET FLAT:.LC10	#,
	mov	ecx, 96	#,
	mov	edx, 1	#,
	mov	esi, 96	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.8696,
.L58:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	Audio_toString, .-Audio_toString
	.local	str_id
	.comm	str_id,96,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
