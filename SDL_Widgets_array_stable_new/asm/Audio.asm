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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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

	.text
	.globl	Audio_new
	.type	Audio_new, @function
Audio_new:
.LFB105:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L2	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8998	#,
	call	Static_nullThis2	#
	jmp	.L3	#
.L2:
	call	coObject_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
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
.L3:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	Audio_new, .-Audio_new
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Audio_SDL_initialize: In desired:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n"
	.text
	.globl	Audio_SDL_initialize
	.type	Audio_SDL_initialize, @function
Audio_SDL_initialize:
.LFB106:
	.cfi_startproc
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	movzx	eax, WORD PTR [rdi+16]	# D.9117, this_1(D)->sample_frequency
	mov	DWORD PTR [rsi], eax	# desired_4(D)->freq, D.9117
	mov	r8, QWORD PTR [rdi+24]	# this_1(D)->audio_format, this_1(D)->audio_format
	mov	WORD PTR [rsi+4], r8w	# desired_4(D)->format, this_1(D)->audio_format
	movzx	edx, WORD PTR [rdi+32]	# D.9120, this_1(D)->buffer_size
	mov	WORD PTR [rsi+8], dx	# desired_4(D)->samples, D.9120
	mov	QWORD PTR [rsi+16], rcx	# desired_4(D)->callback, callback_function
	mov	QWORD PTR [rsi+24], rdi	# desired_4(D)->userdata, this
	movzx	r9d, BYTE PTR [rdi+34]	# D.9121, this_1(D)->channels
	mov	BYTE PTR [rsi+6], r9b	# desired_4(D)->channels, D.9121
	mov	ecx, DWORD PTR [rsi+12]	# desired_4(D)->size, desired_4(D)->size
	mov	DWORD PTR [rsp+16], ecx	#, desired_4(D)->size
	movzx	edx, dx	# D.9120, D.9120
	mov	DWORD PTR [rsp+8], edx	#, D.9120
	movzx	edx, BYTE PTR [rsi+7]	# desired_4(D)->silence, desired_4(D)->silence
	mov	DWORD PTR [rsp], edx	#, desired_4(D)->silence
	movzx	r9d, r9b	#, D.9121
	movzx	r8d, r8w	#, this_1(D)->audio_format
	mov	ecx, eax	#, D.9117
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	Audio_SDL_initialize, .-Audio_SDL_initialize
	.globl	Audio_SDL_pause
	.type	Audio_SDL_pause, @function
Audio_SDL_pause:
.LFB107:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+14], 0	# this_1(D)->pause,
	sete	al	#, tmp64
	mov	BYTE PTR [rdi+14], al	# this_1(D)->pause, tmp64
	movzx	edi, al	# D.9113, tmp64
	call	SDL_PauseAudio	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	Audio_SDL_pause, .-Audio_SDL_pause
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"Audio_PA_pause: Failed to stop audio: Pa_StopStream()\n"
	.align 8
.LC2:
	.string	"Audio_PA_pause: Failed to start audio: Pa_StartStream()\n"
	.text
	.globl	Audio_PA_pause
	.type	Audio_PA_pause, @function
Audio_PA_pause:
.LFB108:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+14], 0	# this_1(D)->pause,
	sete	al	#, tmp69
	mov	BYTE PTR [rdi+14], al	# this_1(D)->pause, tmp69
	test	al, al	# tmp69
	je	.L10	#,
	mov	rdi, QWORD PTR [rdi+40]	# this_1(D)->pa_stream, this_1(D)->pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# D.9104
	je	.L9	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 54	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	jmp	.L9	#
.L10:
	mov	rdi, QWORD PTR [rdi+40]	# this_1(D)->pa_stream, this_1(D)->pa_stream
	call	Pa_StartStream	#
	test	eax, eax	# D.9109
	.p2align 4,,2
	je	.L9	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 56	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC2	#,
	call	fwrite	#
.L9:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	Audio_PA_pause, .-Audio_PA_pause
	.globl	Audio_SDL_stop
	.type	Audio_SDL_stop, @function
Audio_SDL_stop:
.LFB109:
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
.LFE109:
	.size	Audio_SDL_stop, .-Audio_SDL_stop
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Audio_PA_stop: Failed to stop audio: Pa_StopStream()\n"
	.align 8
.LC4:
	.string	"Audio_PA_stop: Failed to terminate audio: Pa_Terminate()\n"
	.text
	.globl	Audio_PA_stop
	.type	Audio_PA_stop, @function
Audio_PA_stop:
.LFB110:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR [rdi+14], 0	# this_1(D)->pause,
	jne	.L16	#,
	mov	rdi, QWORD PTR [rdi+40]	# this_1(D)->pa_stream, this_1(D)->pa_stream
	call	Pa_StopStream	#
	test	eax, eax	# D.9086
	je	.L16	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 53	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	fwrite	#
	jmp	.L15	#
.L16:
	call	Pa_Terminate	#
	test	eax, eax	# D.9090
	.p2align 4,,6
	je	.L15	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 57	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
.L15:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	Audio_PA_stop, .-Audio_PA_stop
	.globl	Audio_vdestroy
	.type	Audio_vdestroy, @function
Audio_vdestroy:
.LFB104:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	cmp	BYTE PTR [rdi+12], 0	# MEM[(struct Audio *)vthis_1(D)].initialized,
	je	.L19	#,
	cmp	DWORD PTR [rdi+8], 0	# MEM[(struct Audio *)vthis_1(D)].lib,
	jne	.L21	#,
	cmp	BYTE PTR [rdi+13], 0	# MEM[(struct Audio *)vthis_1(D)].play,
	je	.L22	#,
	call	SDL_CloseAudio	#
	.p2align 4,,4
	jmp	.L22	#
.L21:
	.p2align 4,,8
	call	Audio_PA_stop	#
.L22:
	mov	BYTE PTR [rbx+12], 0	# MEM[(struct Audio *)vthis_1(D)].initialized,
	mov	BYTE PTR [rbx+13], 0	# MEM[(struct Audio *)vthis_1(D)].play,
	mov	BYTE PTR [rbx+14], 0	# MEM[(struct Audio *)vthis_1(D)].pause,
.L19:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	Audio_vdestroy, .-Audio_vdestroy
	.globl	Audio_pause
	.type	Audio_pause, @function
Audio_pause:
.LFB111:
	.cfi_startproc
	cmp	BYTE PTR [rdi+13], 0	# this_1(D)->play,
	je	.L29	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	DWORD PTR [rdi+8], 0	# this_1(D)->lib,
	jne	.L26	#,
	call	Audio_SDL_pause	#
	jmp	.L24	#
.L26:
	.p2align 4,,8
	call	Audio_PA_pause	#
.L24:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L29:
	.p2align 4,,4
	rep
	ret
	.cfi_endproc
.LFE111:
	.size	Audio_pause, .-Audio_pause
	.globl	Audio_stop
	.type	Audio_stop, @function
Audio_stop:
.LFB112:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+12], 0	# this_1(D)->initialized,
	je	.L30	#,
	cmp	BYTE PTR [rdi+13], 0	# this_1(D)->play,
	je	.L30	#,
	cmp	DWORD PTR [rdi+8], 0	# this_1(D)->lib,
	jne	.L32	#,
	call	SDL_CloseAudio	#
	mov	BYTE PTR [rbx+12], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_1(D)->pause,
	jmp	.L30	#
.L32:
	call	Audio_PA_stop	#
	mov	BYTE PTR [rbx+12], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_1(D)->pause,
.L30:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE112:
	.size	Audio_stop, .-Audio_stop
	.globl	Audio_remove
	.type	Audio_remove, @function
Audio_remove:
.LFB113:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	cmp	BYTE PTR [rdi+12], 0	# this_1(D)->initialized,
	je	.L34	#,
	cmp	DWORD PTR [rdi+8], 0	# this_1(D)->lib,
	jne	.L36	#,
	cmp	BYTE PTR [rdi+13], 0	# this_1(D)->play,
	je	.L37	#,
	call	SDL_CloseAudio	#
	.p2align 4,,4
	jmp	.L37	#
.L36:
	.p2align 4,,8
	call	Audio_PA_stop	#
.L37:
	mov	BYTE PTR [rbx+12], 0	# this_1(D)->initialized,
	mov	BYTE PTR [rbx+13], 0	# this_1(D)->play,
	mov	BYTE PTR [rbx+14], 0	# this_1(D)->pause,
.L34:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE113:
	.size	Audio_remove, .-Audio_remove
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"Portaudio"
.LC6:
	.string	"SDL_Audio"
.LC7:
	.string	"Unknown"
	.text
	.globl	Audio_getLibName
	.type	Audio_getLibName, @function
Audio_getLibName:
.LFB114:
	.cfi_startproc
	test	rdi, rdi	# this
	je	.L43	#,
	mov	edx, DWORD PTR [rdi+8]	# this_2(D)->lib, this_2(D)->lib
	mov	eax, OFFSET FLAT:.LC6	# D.9052,
	test	edx, edx	# this_2(D)->lib
	je	.L40	#,
	cmp	edx, 1	# this_2(D)->lib,
	mov	eax, OFFSET FLAT:.LC7	# tmp66,
	mov	edx, OFFSET FLAT:.LC5	# tmp65,
	cmove	rax, rdx	# tmp65,, D.9052
	ret
.L43:
	mov	eax, 0	# D.9052,
.L40:
	rep
	ret
	.cfi_endproc
.LFE114:
	.size	Audio_getLibName, .-Audio_getLibName
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"audio(%p), lib=%s, name=%s, type=%s"
	.text
	.globl	Audio_vtoString
	.type	Audio_vtoString, @function
Audio_vtoString:
.LFB115:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 48
	mov	ebx, 0	# this,
	mov	rdi, rbx	#, this
	call	Audio_getLibName	#
	mov	rdx, QWORD PTR [rbx]	# MEM[(struct coObject *)this_1(D)].class, MEM[(struct coObject *)this_1(D)].class
	mov	rdx, QWORD PTR [rdx+8]	# D.9041_3->name, D.9041_3->name
	mov	QWORD PTR [rsp+16], rdx	#, D.9041_3->name
	lea	rdx, [rbx+80]	# tmp68,
	mov	QWORD PTR [rsp+8], rdx	#, tmp68
	mov	QWORD PTR [rsp], rax	#, D.9044
	mov	r9, rbx	#, this
	mov	r8d, OFFSET FLAT:.LC8	#,
	mov	ecx, 96	#,
	mov	dl, 1	#,
	mov	esi, 96	#,
	mov	edi, OFFSET FLAT:str_id.9038	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9038	#,
	add	rsp, 32	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE115:
	.size	Audio_vtoString, .-Audio_vtoString
	.globl	Audio_class
	.data
	.align 8
	.type	Audio_class, @object
	.size	Audio_class, 8
Audio_class:
	.quad	type
	.section	.rodata.str1.1
.LC9:
	.string	"Audio"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	104
# name:
	.quad	.LC9
# vtable:
	.quad	vtable
	.section	.rodata
	.type	__FUNCTION__.8998, @object
	.size	__FUNCTION__.8998, 10
__FUNCTION__.8998:
	.string	"Audio_new"
	.local	str_id.9038
	.comm	str_id.9038,96,32
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
	.quad	Audio_vdestroy
# toString:
	.quad	Audio_vtoString
	.align 8
	.type	override_IAudio, @object
	.size	override_IAudio, 8
override_IAudio:
	.zero	8
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
