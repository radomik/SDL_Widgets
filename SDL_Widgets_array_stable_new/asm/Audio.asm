	.file	"Audio.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Audio.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Audio.asm
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
	.string	"Audio.c"
.LC1:
	.string	"vptr != ((void *)0)"
	.text
	.globl	Audio_play
	.type	Audio_play, @function
Audio_play:
.LFB93:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rax, QWORD PTR [rax]	# D.8907_2->vtable, D.8907_2->vtable
	mov	rax, QWORD PTR [rax+8]	# vptr, MEM[(const void * *)D.8908_3 + 8B]
	test	rax, rax	# vptr
	jne	.L2	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.8741	#,
	mov	edx, 42	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	__assert_fail	#
.L2:
	movzx	esi, sil	# start_paused, start_paused
	call	rax	# vptr
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Audio_play, .-Audio_play
	.globl	Audio_new
	.type	Audio_new, @function
Audio_new:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L5	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8754	#,
	call	Static_nullThis2	#
	jmp	.L6	#
.L5:
	mov	QWORD PTR [rdi], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8754	#,
	call	Static_printObj2	#
	mov	DWORD PTR [rbx+8], 0	# this_2(D)->lib,
	mov	BYTE PTR [rbx+12], 0	# this_2(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_2(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_2(D)->pause,
	mov	WORD PTR [rbx+16], -21436	# this_2(D)->sample_frequency,
	mov	QWORD PTR [rbx+24], 32776	# this_2(D)->audio_format,
	mov	WORD PTR [rbx+32], 4096	# this_2(D)->buffer_size,
	mov	BYTE PTR [rbx+34], 2	# this_2(D)->channels,
	mov	WORD PTR [rbx+36], 0	# this_2(D)->id,
	mov	QWORD PTR [rbx+40], 0	# this_2(D)->pa_stream,
	mov	QWORD PTR [rbx+48], 0	# this_2(D)->outputParameters,
	mov	QWORD PTR [rbx+56], 0	# this_2(D)->outputParameters,
	mov	QWORD PTR [rbx+64], 0	# this_2(D)->outputParameters,
	mov	QWORD PTR [rbx+72], 0	# this_2(D)->outputParameters,
	mov	BYTE PTR [rbx+80], 0	# this_2(D)->name,
.L6:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	Audio_new, .-Audio_new
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Audio_SDL_initialize: In desired:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n"
	.text
	.globl	Audio_SDL_initialize
	.type	Audio_SDL_initialize, @function
Audio_SDL_initialize:
.LFB97:
	.cfi_startproc
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	movzx	eax, WORD PTR [rdi+16]	# D.8874, this_1(D)->sample_frequency
	mov	DWORD PTR [rsi], eax	# desired_4(D)->freq, D.8874
	mov	r8, QWORD PTR [rdi+24]	# this_1(D)->audio_format, this_1(D)->audio_format
	mov	WORD PTR [rsi+4], r8w	# desired_4(D)->format, this_1(D)->audio_format
	movzx	edx, WORD PTR [rdi+32]	# D.8877, this_1(D)->buffer_size
	mov	WORD PTR [rsi+8], dx	# desired_4(D)->samples, D.8877
	mov	QWORD PTR [rsi+16], rcx	# desired_4(D)->callback, callback_function
	mov	QWORD PTR [rsi+24], rdi	# desired_4(D)->userdata, this
	movzx	r9d, BYTE PTR [rdi+34]	# D.8878, this_1(D)->channels
	mov	BYTE PTR [rsi+6], r9b	# desired_4(D)->channels, D.8878
	mov	ecx, DWORD PTR [rsi+12]	# desired_4(D)->size, desired_4(D)->size
	mov	DWORD PTR [rsp+16], ecx	#, desired_4(D)->size
	movzx	edx, dx	# D.8877, D.8877
	mov	DWORD PTR [rsp+8], edx	#, D.8877
	movzx	edx, BYTE PTR [rsi+7]	# desired_4(D)->silence, desired_4(D)->silence
	mov	DWORD PTR [rsp], edx	#, desired_4(D)->silence
	movzx	r9d, r9b	#, D.8878
	movzx	r8d, r8w	#, this_1(D)->audio_format
	mov	ecx, eax	#, D.8874
	mov	edx, OFFSET FLAT:.LC2	#,
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
	.globl	Audio_SDL_pause
	.type	Audio_SDL_pause, @function
Audio_SDL_pause:
.LFB98:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+14], 0	# this_1(D)->pause,
	sete	al	#, tmp64
	mov	BYTE PTR [rdi+14], al	# this_1(D)->pause, tmp64
	movzx	edi, al	# D.8870, tmp64
	call	SDL_PauseAudio	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	Audio_SDL_pause, .-Audio_SDL_pause
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Audio_PA_pause: Failed to stop audio: Pa_StopStream()\n"
	.align 8
.LC4:
	.string	"Audio_PA_pause: Failed to start audio: Pa_StartStream()\n"
	.text
	.globl	Audio_PA_pause
	.type	Audio_PA_pause, @function
Audio_PA_pause:
.LFB99:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+14], 0	# this_1(D)->pause,
	sete	al	#, tmp69
	mov	BYTE PTR [rdi+14], al	# this_1(D)->pause, tmp69
	test	al, al	# tmp69
	je	.L13	#,
	mov	rdi, QWORD PTR [rdi+40]	# this_1(D)->pa_stream, this_1(D)->pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# D.8861
	je	.L12	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 54	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	jmp	.L12	#
.L13:
	mov	rdi, QWORD PTR [rdi+40]	# this_1(D)->pa_stream, this_1(D)->pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# D.8866
	.p2align 4,,2
	je	.L12	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 56	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
.L12:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	Audio_PA_pause, .-Audio_PA_pause
	.globl	Audio_SDL_stop
	.type	Audio_SDL_stop, @function
Audio_SDL_stop:
.LFB100:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	call	SDL_CloseAudio	#
	mov	BYTE PTR [rbx+12], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_1(D)->pause,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	Audio_SDL_stop, .-Audio_SDL_stop
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Audio_PA_stop: Failed to stop audio: Pa_StopStream()\n"
	.align 8
.LC6:
	.string	"Audio_PA_stop: Failed to terminate audio: Pa_Terminate()\n"
	.text
	.globl	Audio_PA_stop
	.type	Audio_PA_stop, @function
Audio_PA_stop:
.LFB101:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+14], 0	# this_1(D)->pause,
	jne	.L19	#,
	mov	rdi, QWORD PTR [rdi+40]	# this_1(D)->pa_stream, this_1(D)->pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# D.8843
	je	.L19	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 53	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC5	#,
	call	fwrite	#
	jmp	.L18	#
.L19:
	call	Pa_Terminate	#
	test	eax, eax	# D.8847
	.p2align 4,,6
	je	.L18	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 57	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC6	#,
	call	fwrite	#
.L18:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	Audio_PA_stop, .-Audio_PA_stop
	.globl	Audio_vdestroy
	.type	Audio_vdestroy, @function
Audio_vdestroy:
.LFB95:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8750	#,
	call	Static_printObj2	#
	cmp	BYTE PTR [rbx+12], 0	# MEM[(struct Audio *)vthis_1(D)].initialized,
	je	.L22	#,
	cmp	DWORD PTR [rbx+8], 0	# MEM[(struct Audio *)vthis_1(D)].lib,
	jne	.L24	#,
	cmp	BYTE PTR [rbx+13], 0	# MEM[(struct Audio *)vthis_1(D)].play,
	je	.L25	#,
	call	SDL_CloseAudio	#
	.p2align 4,,4
	jmp	.L25	#
.L24:
	mov	rdi, rbx	#, vthis
	.p2align 4,,5
	call	Audio_PA_stop	#
.L25:
	mov	BYTE PTR [rbx+12], 0	# MEM[(struct Audio *)vthis_1(D)].initialized,
	mov	BYTE PTR [rbx+13], 0	# MEM[(struct Audio *)vthis_1(D)].play,
	mov	BYTE PTR [rbx+14], 0	# MEM[(struct Audio *)vthis_1(D)].pause,
.L22:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	Audio_vdestroy, .-Audio_vdestroy
	.globl	Audio_pause
	.type	Audio_pause, @function
Audio_pause:
.LFB102:
	.cfi_startproc
	cmp	BYTE PTR [rdi+13], 0	# this_1(D)->play,
	je	.L32	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	DWORD PTR [rdi+8], 0	# this_1(D)->lib,
	jne	.L29	#,
	call	Audio_SDL_pause	#
	jmp	.L27	#
.L29:
	.p2align 4,,8
	call	Audio_PA_pause	#
.L27:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L32:
	.p2align 4,,4
	rep
	ret
	.cfi_endproc
.LFE102:
	.size	Audio_pause, .-Audio_pause
	.globl	Audio_stop
	.type	Audio_stop, @function
Audio_stop:
.LFB103:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+12], 0	# this_1(D)->initialized,
	je	.L33	#,
	cmp	BYTE PTR [rdi+13], 0	# this_1(D)->play,
	je	.L33	#,
	cmp	DWORD PTR [rdi+8], 0	# this_1(D)->lib,
	jne	.L35	#,
	call	SDL_CloseAudio	#
	mov	BYTE PTR [rbx+12], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_1(D)->pause,
	jmp	.L33	#
.L35:
	call	Audio_PA_stop	#
	mov	BYTE PTR [rbx+12], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_1(D)->pause,
.L33:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	Audio_stop, .-Audio_stop
	.globl	Audio_remove
	.type	Audio_remove, @function
Audio_remove:
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+12], 0	# this_1(D)->initialized,
	je	.L37	#,
	cmp	DWORD PTR [rdi+8], 0	# this_1(D)->lib,
	jne	.L39	#,
	cmp	BYTE PTR [rdi+13], 0	# this_1(D)->play,
	je	.L40	#,
	call	SDL_CloseAudio	#
	.p2align 4,,4
	jmp	.L40	#
.L39:
	.p2align 4,,8
	call	Audio_PA_stop	#
.L40:
	mov	BYTE PTR [rbx+12], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_1(D)->pause,
.L37:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Audio_remove, .-Audio_remove
	.section	.rodata.str1.1
.LC7:
	.string	"Portaudio"
.LC8:
	.string	"SDL_Audio"
.LC9:
	.string	"Unknown"
	.text
	.globl	Audio_getLibName
	.type	Audio_getLibName, @function
Audio_getLibName:
.LFB105:
	.cfi_startproc
	test	rdi, rdi	# this
	je	.L46	#,
	mov	edx, DWORD PTR [rdi+8]	# this_2(D)->lib, this_2(D)->lib
	mov	eax, OFFSET FLAT:.LC8	# D.8809,
	test	edx, edx	# this_2(D)->lib
	je	.L43	#,
	cmp	edx, 1	# this_2(D)->lib,
	mov	eax, OFFSET FLAT:.LC9	# tmp66,
	mov	edx, OFFSET FLAT:.LC7	# tmp65,
	cmove	rax, rdx	# tmp65,, D.8809
	ret
.L46:
	mov	eax, 0	# D.8809,
.L43:
	rep
	ret
	.cfi_endproc
.LFE105:
	.size	Audio_getLibName, .-Audio_getLibName
	.section	.rodata.str1.1
.LC10:
	.string	"audio=NULL"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"audio(%p), lib=%s, name=%s, type=%s"
	.text
	.globl	Audio_toString
	.type	Audio_toString, @function
Audio_toString:
.LFB106:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	mov	rbx, rdi	# this, this
	mov	eax, OFFSET FLAT:.LC10	# D.8798,
	test	rdi, rdi	# this
	je	.L49	#,
	call	Audio_getLibName	#
	mov	rdx, QWORD PTR [rbx]	# MEM[(struct coObject *)this_2(D)].class, MEM[(struct coObject *)this_2(D)].class
	mov	rdx, QWORD PTR [rdx+16]	# D.8799_4->name, D.8799_4->name
	mov	QWORD PTR [rsp+16], rdx	#, D.8799_4->name
	lea	rdx, [rbx+80]	# tmp68,
	mov	QWORD PTR [rsp+8], rdx	#, tmp68
	mov	QWORD PTR [rsp], rax	#, D.8802
	mov	r9, rbx	#, this
	mov	r8d, OFFSET FLAT:.LC11	#,
	mov	ecx, 96	#,
	mov	edx, 1	#,
	mov	esi, 96	#,
	mov	edi, OFFSET FLAT:str_id.8794	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.8794	# D.8798,
.L49:
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	Audio_toString, .-Audio_toString
	.globl	Audio_class
	.data
	.align 8
	.type	Audio_class, @object
	.size	Audio_class, 8
Audio_class:
	.quad	type
	.section	.rodata
	.type	__PRETTY_FUNCTION__.8741, @object
	.size	__PRETTY_FUNCTION__.8741, 11
__PRETTY_FUNCTION__.8741:
	.string	"Audio_play"
	.section	.rodata.str1.1
.LC12:
	.string	"Audio"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	104
# name:
	.quad	.LC12
	.section	.rodata
	.type	__FUNCTION__.8750, @object
	.size	__FUNCTION__.8750, 15
__FUNCTION__.8750:
	.string	"Audio_vdestroy"
	.type	__FUNCTION__.8754, @object
	.size	__FUNCTION__.8754, 10
__FUNCTION__.8754:
	.string	"Audio_new"
	.local	str_id.8794
	.comm	str_id.8794,96,32
	.data
	.align 16
	.type	vtable, @object
	.size	vtable, 16
vtable:
	.quad	Audio_vdestroy
	.quad	0
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
