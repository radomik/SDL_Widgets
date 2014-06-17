	.file	"WaveDrawBox.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT WaveDrawBox.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/WaveDrawBox.asm
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
	.type	WaveDrawBox_mousePressed, @function
WaveDrawBox_mousePressed:
.LFB93:
	.cfi_startproc
	mov	QWORD PTR [rsp-40], rbx	#,
	mov	QWORD PTR [rsp-32], rbp	#,
	mov	QWORD PTR [rsp-24], r12	#,
	mov	QWORD PTR [rsp-16], r13	#,
	mov	QWORD PTR [rsp-8], r14	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	mov	rbx, rdi	# sender, sender
	mov	rbp, rsi	# screen, screen
	movzx	eax, WORD PTR [rsi+12]	# screen_7(D)->event.button.x, screen_7(D)->event.button.x
	sub	ax, WORD PTR [rdi+96]	# D.9106, sender_5(D)->pos.x
	mov	WORD PTR [rdi+222], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].relx, D.9106
	movzx	edx, WORD PTR [rsi+14]	# screen_7(D)->event.button.y, screen_7(D)->event.button.y
	sub	dx, WORD PTR [rdi+98]	# D.9110, sender_5(D)->pos.y
	mov	WORD PTR [rdi+224], dx	# MEM[(struct WaveDrawBox *)sender_5(D)].rely, D.9110
	movzx	ecx, WORD PTR [rdi+226]	# D.9112, MEM[(struct WaveDrawBox *)sender_5(D)].relx_min
	cmp	ax, cx	# D.9106, D.9112
	jb	.L1	#,
	movzx	esi, WORD PTR [rdi+230]	# D.9116, MEM[(struct WaveDrawBox *)sender_5(D)].rely_min
	cmp	dx, si	# D.9110, D.9116
	jb	.L1	#,
	cmp	ax, WORD PTR [rdi+228]	# D.9106, MEM[(struct WaveDrawBox *)sender_5(D)].relx_max
	ja	.L1	#,
	cmp	dx, WORD PTR [rdi+232]	# D.9110, MEM[(struct WaveDrawBox *)sender_5(D)].rely_max
	ja	.L1	#,
	mov	BYTE PTR [rdi+166], 1	# sender_5(D)->dragging,
	sub	eax, ecx	# D.9125, D.9112
	mov	WORD PTR [rdi+234], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, D.9125
	movzx	edi, dx	# D.9110, D.9110
	movzx	esi, si	# D.9116, D.9116
	sub	esi, edi	# tmp280, D.9110
	lea	ecx, [rsi+rsi]	# tmp281,
	cvtsi2ss	xmm1, ecx	# tmp282, tmp281
	movzx	ecx, WORD PTR [rbx+214]	# MEM[(struct WaveDrawBox *)sender_5(D)].yrange, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	cvtsi2ss	xmm0, ecx	# tmp283, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	divss	xmm1, xmm0	# tmp282, tmp283
	movaps	xmm0, xmm1	# tmp285, tmp282
	addss	xmm0, DWORD PTR .LC0[rip]	# tmp286,
	movss	DWORD PTR [rbx+200], xmm0	# MEM[(struct WaveDrawBox *)sender_5(D)].yp, tmp286
	movzx	eax, ax	# D.9125, D.9125
	mov	rcx, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rcx, [rcx+rax*8]	# D.9140,
	movzx	eax, WORD PTR [rcx+6]	# D.9141, D.9140_43->rely
	cmp	dx, ax	# D.9110, D.9141
	je	.L23	#,
	test	ax, ax	# D.9141
	je	.L4	#,
	cmp	ax, WORD PTR [rbx+220]	# D.9141, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	je	.L4	#,
	movsx	edx, ax	# D.9141, D.9141
	movsx	esi, WORD PTR [rcx+4]	# D.9140_43->relx, D.9140_43->relx
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	ecx, -737793	#,
	call	pixelColor	#
.L4:
	movzx	ecx, WORD PTR [rbx+222]	# D.9111, MEM[(struct WaveDrawBox *)sender_5(D)].relx
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+4+rdx*8], cx	# D.9140_80->relx, D.9111
	movzx	ecx, WORD PTR [rbx+224]	# D.9115, MEM[(struct WaveDrawBox *)sender_5(D)].rely
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+6+rdx*8], cx	# D.9140_86->rely, D.9115
	movss	xmm0, DWORD PTR [rbx+200]	# D.9155, MEM[(struct WaveDrawBox *)sender_5(D)].yp
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movss	DWORD PTR [rax+rdx*8], xmm0	# D.9140_92->fvalue, D.9155
	movzx	eax, WORD PTR [rbx+220]	#, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	cmp	WORD PTR [rbx+224], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].rely,
	je	.L5	#,
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rax, [rax+rdx*8]	# D.9140,
	movsx	edx, WORD PTR [rax+6]	# D.9140_100->rely, D.9140_100->rely
	movsx	esi, WORD PTR [rax+4]	# D.9140_100->relx, D.9140_100->relx
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	ecx, -16766721	#,
	call	pixelColor	#
.L5:
	lea	rcx, [rbx+96]	# tmp307,
	mov	rdx, QWORD PTR [rbp+72]	# screen_7(D)->screen, screen_7(D)->screen
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	rdi, QWORD PTR [rbp+72]	# screen_7(D)->screen, screen_7(D)->screen
	call	SDL_Flip	#
	jmp	.L23	#
.L16:
	mov	rax, QWORD PTR [rbp+80]	# screen_7(D)->pevent, screen_7(D)->pevent
	movzx	eax, BYTE PTR [rax]	# D.9161, D.9160_120->type
	cmp	al, 4	# D.9161,
	jne	.L7	#,
	movzx	edx, WORD PTR [rbp+14]	# screen_7(D)->event.motion.y, screen_7(D)->event.motion.y
	movzx	esi, WORD PTR [rbp+12]	# screen_7(D)->event.motion.x, screen_7(D)->event.motion.x
	mov	rdi, rbx	#, sender
	call	Widget_contains	#
	test	al, al	# D.9168
	je	.L29	#,
	movzx	eax, WORD PTR [rbp+12]	# screen_7(D)->event.motion.x, screen_7(D)->event.motion.x
	sub	ax, WORD PTR [rbx+96]	# D.9173, sender_5(D)->pos.x
	mov	WORD PTR [rbx+222], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].relx, D.9173
	movzx	edx, WORD PTR [rbp+14]	# screen_7(D)->event.motion.y, screen_7(D)->event.motion.y
	sub	dx, WORD PTR [rbx+98]	# D.9176, sender_5(D)->pos.y
	mov	WORD PTR [rbx+224], dx	# MEM[(struct WaveDrawBox *)sender_5(D)].rely, D.9176
	movzx	ecx, WORD PTR [rbx+226]	# D.9112, MEM[(struct WaveDrawBox *)sender_5(D)].relx_min
	cmp	ax, cx	# D.9173, D.9112
	jb	.L29	#,
	movzx	esi, WORD PTR [rbx+230]	# D.9116, MEM[(struct WaveDrawBox *)sender_5(D)].rely_min
	cmp	dx, si	# D.9176, D.9116
	jb	.L29	#,
	cmp	ax, WORD PTR [rbx+228]	# D.9173, MEM[(struct WaveDrawBox *)sender_5(D)].relx_max
	ja	.L29	#,
	cmp	dx, WORD PTR [rbx+232]	# D.9176, MEM[(struct WaveDrawBox *)sender_5(D)].rely_max
	ja	.L29	#,
	sub	eax, ecx	# D.9125, D.9112
	mov	WORD PTR [rbx+234], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, D.9125
	movzx	edi, dx	# D.9176, D.9176
	movzx	ecx, si	# D.9116, D.9116
	sub	ecx, edi	# tmp321, D.9176
	add	ecx, ecx	# tmp322
	cvtsi2ss	xmm1, ecx	# tmp323, tmp322
	movzx	ecx, WORD PTR [rbx+214]	# MEM[(struct WaveDrawBox *)sender_5(D)].yrange, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	cvtsi2ss	xmm0, ecx	# tmp324, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	divss	xmm1, xmm0	# tmp323, tmp324
	movaps	xmm0, xmm1	# tmp326, tmp323
	addss	xmm0, DWORD PTR .LC0[rip]	# tmp327,
	movss	DWORD PTR [rbx+200], xmm0	# MEM[(struct WaveDrawBox *)sender_5(D)].yp, tmp327
	movzx	eax, ax	# D.9125, D.9125
	mov	rcx, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rcx, [rcx+rax*8]	# D.9140,
	movzx	eax, WORD PTR [rcx+6]	# D.9141, D.9140_162->rely
	cmp	dx, ax	# D.9176, D.9141
	je	.L29	#,
	test	ax, ax	# D.9141
	je	.L9	#,
	cmp	ax, WORD PTR [rbx+220]	# D.9141, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	je	.L9	#,
	movsx	edx, ax	# D.9141, D.9141
	movsx	esi, WORD PTR [rcx+4]	# D.9140_162->relx, D.9140_162->relx
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	ecx, -737793	#,
	call	pixelColor	#
.L9:
	movzx	ecx, WORD PTR [rbx+222]	# D.9111, MEM[(struct WaveDrawBox *)sender_5(D)].relx
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+4+rdx*8], cx	# D.9140_199->relx, D.9111
	movzx	ecx, WORD PTR [rbx+224]	# D.9115, MEM[(struct WaveDrawBox *)sender_5(D)].rely
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+6+rdx*8], cx	# D.9140_205->rely, D.9115
	movss	xmm0, DWORD PTR [rbx+200]	# D.9155, MEM[(struct WaveDrawBox *)sender_5(D)].yp
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movss	DWORD PTR [rax+rdx*8], xmm0	# D.9140_211->fvalue, D.9155
	movzx	eax, WORD PTR [rbx+220]	#, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	cmp	WORD PTR [rbx+224], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].rely,
	je	.L10	#,
	movzx	edx, WORD PTR [rbx+234]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rax, [rax+rdx*8]	# D.9140,
	movsx	edx, WORD PTR [rax+6]	# D.9140_219->rely, D.9140_219->rely
	movsx	esi, WORD PTR [rax+4]	# D.9140_219->relx, D.9140_219->relx
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	ecx, -16766721	#,
	call	pixelColor	#
.L10:
	mov	rdx, QWORD PTR [rbp+72]	# screen_7(D)->screen, screen_7(D)->screen
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	rcx, r12	#, tmp379
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	mov	rdi, QWORD PTR [rbp+72]	# screen_7(D)->screen, screen_7(D)->screen
	call	SDL_Flip	#
	jmp	.L29	#
.L7:
	cmp	al, 6	# D.9161,
	.p2align 4,,2
	jne	.L29	#,
	mov	BYTE PTR [rbx+166], 0	# sender_5(D)->dragging,
	cmp	QWORD PTR [rbx+192], 0	# MEM[(struct WaveDrawBox *)sender_5(D)].samples,
	je	.L30	#,
	movzx	r11d, WORD PTR [rbx+204]	# xrange, MEM[(struct WaveDrawBox *)sender_5(D)].bunch
	cmp	WORD PTR [rbx+212], 1	# MEM[(struct WaveDrawBox *)sender_5(D)].xrange,
	jbe	.L19	#,
	mov	r9d, 1	# i,
	mov	edi, 0	# s,
	movzx	r14d, r11w	# xrange, xrange
	lea	r13d, [r11-1]	# tmp375,
.L15:
	mov	rax, QWORD PTR [rbx+184]	# D.9136, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movzx	edx, r9w	# D.9199, i
	movss	xmm1, DWORD PTR [rax-8+rdx*8]	# y1, D.9202_247->fvalue
	movss	xmm3, DWORD PTR [rax+rdx*8]	# yrange, D.9205_252->fvalue
	movzx	edx, di	# s, s
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct WaveDrawBox *)sender_5(D)].samples, MEM[(struct WaveDrawBox *)sender_5(D)].samples
	movss	DWORD PTR [rax+rdx*4], xmm1	# *D.9208_258, y1
	lea	r10d, [rdi+1]	# s,
	subss	xmm3, xmm1	# yrange, y1
	cmp	r11w, 1	# xrange,
	jbe	.L20	#,
	lea	r8d, [rdi+r11]	# D.9430,
	mov	eax, r10d	# s, s
	cvtsi2ss	xmm2, r14d	# tmp373, xrange
.L14:
	movzx	ecx, ax	# s, s
	mov	rdx, QWORD PTR [rbx+192]	# MEM[(struct WaveDrawBox *)sender_5(D)].samples, MEM[(struct WaveDrawBox *)sender_5(D)].samples
	mov	esi, eax	# tmp357, s
	sub	esi, edi	# tmp357, s
	movzx	esi, si	# tmp359, tmp357
	cvtsi2ss	xmm0, esi	# tmp358, tmp359
	mulss	xmm0, xmm3	# tmp360, yrange
	divss	xmm0, xmm2	# tmp363, tmp373
	addss	xmm0, xmm1	# tmp364, y1
	movss	DWORD PTR [rdx+rcx*4], xmm0	# *D.9208_264, tmp364
	add	eax, 1	# s,
	cmp	ax, r8w	# s, D.9430
	jne	.L14	#,
	lea	edi, [r13+0+r10]	# s,
	jmp	.L13	#
.L20:
	mov	edi, r10d	# s, s
.L13:
	add	r9d, 1	# i,
	cmp	WORD PTR [rbx+212], r9w	# MEM[(struct WaveDrawBox *)sender_5(D)].xrange, i
	ja	.L15	#,
	jmp	.L12	#
.L19:
	mov	r9d, 1	# i,
	mov	edi, 0	# s,
.L12:
	movzx	r9d, r9w	# i, i
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movss	xmm0, DWORD PTR [rax-8+r9*8]	# D.9215, D.9202_281->fvalue
	movzx	edi, di	# s, s
	mov	rax, QWORD PTR [rbx+192]	# MEM[(struct WaveDrawBox *)sender_5(D)].samples, MEM[(struct WaveDrawBox *)sender_5(D)].samples
	movss	DWORD PTR [rax+rdi*4], xmm0	# *D.9208_276, D.9215
	jmp	.L30	#
.L29:
	mov	rdi, QWORD PTR [rbp+80]	# screen_7(D)->pevent, screen_7(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.9216
	je	.L30	#,
	.p2align 4,,2
	jmp	.L16	#
.L23:
	lea	r12, [rbx+96]	# tmp379,
.L30:
	cmp	BYTE PTR [rbx+166], 0	# sender_5(D)->dragging,
	jne	.L29	#,
.L1:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	mov	r13, QWORD PTR [rsp+24]	#,
	mov	r14, QWORD PTR [rsp+32]	#,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	WaveDrawBox_mousePressed, .-WaveDrawBox_mousePressed
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"WaveDrawBox.c"
	.text
	.globl	WaveDrawBox_vdestroy
	.type	WaveDrawBox_vdestroy, @function
WaveDrawBox_vdestroy:
.LFB96:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.9057	#,
	call	Static_printObj2	#
	mov	rdi, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)vthis_1(D)].points, MEM[(struct WaveDrawBox *)vthis_1(D)].points
	mov	edx, 257	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbx+184], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].points,
	mov	rdi, QWORD PTR [rbx+192]	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples, MEM[(struct WaveDrawBox *)vthis_1(D)].samples
	mov	edx, 258	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbx+192], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples,
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	WaveDrawBox_vdestroy, .-WaveDrawBox_vdestroy
	.section	.rodata.str1.1
.LC2:
	.string	"WaveDrawBox: NULL"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"WaveDrawBox: [x,y,w,h]=[%hu,%hu,%hu,%hu], freq=%hu, bunch=%hu, (zero)=(%hu,%hu), xrel_range=(%hu,%hu)[%hu], yrel_range=(%hu,%hu)[%hu+1], (padx,pady)=(%hu,%hu), my=%hu"
	.text
	.globl	WaveDrawBox_toString
	.type	WaveDrawBox_toString, @function
WaveDrawBox_toString:
.LFB94:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC2	# D.9322,
	test	rdi, rdi	# this
	je	.L39	#,
	sub	rsp, 136	#,
	.cfi_def_cfa_offset 144
	movsx	r9d, WORD PTR [rdi+96]	# MEM[(struct Widget *)this_2(D)].pos.x, MEM[(struct Widget *)this_2(D)].pos.x
	movzx	eax, WORD PTR [rdi+216]	# this_2(D)->my, this_2(D)->my
	mov	DWORD PTR [rsp+120], eax	#, this_2(D)->my
	movzx	eax, WORD PTR [rdi+210]	# this_2(D)->pady, this_2(D)->pady
	mov	DWORD PTR [rsp+112], eax	#, this_2(D)->pady
	movzx	eax, WORD PTR [rdi+208]	# this_2(D)->padx, this_2(D)->padx
	mov	DWORD PTR [rsp+104], eax	#, this_2(D)->padx
	movzx	eax, WORD PTR [rdi+214]	# this_2(D)->yrange, this_2(D)->yrange
	mov	DWORD PTR [rsp+96], eax	#, this_2(D)->yrange
	movzx	eax, WORD PTR [rdi+232]	# this_2(D)->rely_max, this_2(D)->rely_max
	mov	DWORD PTR [rsp+88], eax	#, this_2(D)->rely_max
	movzx	eax, WORD PTR [rdi+230]	# this_2(D)->rely_min, this_2(D)->rely_min
	mov	DWORD PTR [rsp+80], eax	#, this_2(D)->rely_min
	movzx	eax, WORD PTR [rdi+212]	# this_2(D)->xrange, this_2(D)->xrange
	mov	DWORD PTR [rsp+72], eax	#, this_2(D)->xrange
	movzx	eax, WORD PTR [rdi+228]	# this_2(D)->relx_max, this_2(D)->relx_max
	mov	DWORD PTR [rsp+64], eax	#, this_2(D)->relx_max
	movzx	eax, WORD PTR [rdi+226]	# this_2(D)->relx_min, this_2(D)->relx_min
	mov	DWORD PTR [rsp+56], eax	#, this_2(D)->relx_min
	movzx	eax, WORD PTR [rdi+220]	# this_2(D)->zero_y, this_2(D)->zero_y
	mov	DWORD PTR [rsp+48], eax	#, this_2(D)->zero_y
	movzx	eax, WORD PTR [rdi+218]	# this_2(D)->zero_x, this_2(D)->zero_x
	mov	DWORD PTR [rsp+40], eax	#, this_2(D)->zero_x
	movzx	eax, WORD PTR [rdi+204]	# this_2(D)->bunch, this_2(D)->bunch
	mov	DWORD PTR [rsp+32], eax	#, this_2(D)->bunch
	movzx	eax, WORD PTR [rdi+206]	# this_2(D)->sample_freq, this_2(D)->sample_freq
	mov	DWORD PTR [rsp+24], eax	#, this_2(D)->sample_freq
	movzx	eax, WORD PTR [rdi+102]	# MEM[(struct Widget *)this_2(D)].pos.h, MEM[(struct Widget *)this_2(D)].pos.h
	mov	DWORD PTR [rsp+16], eax	#, MEM[(struct Widget *)this_2(D)].pos.h
	movzx	eax, WORD PTR [rdi+100]	# MEM[(struct Widget *)this_2(D)].pos.w, MEM[(struct Widget *)this_2(D)].pos.w
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Widget *)this_2(D)].pos.w
	movsx	eax, WORD PTR [rdi+98]	# MEM[(struct Widget *)this_2(D)].pos.y, MEM[(struct Widget *)this_2(D)].pos.y
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Widget *)this_2(D)].pos.y
	mov	r8d, OFFSET FLAT:.LC3	#,
	mov	ecx, 256	#,
	mov	edx, 1	#,
	mov	esi, 256	#,
	mov	edi, OFFSET FLAT:str_id.9047	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9047	# D.9322,
	add	rsp, 136	#,
	.cfi_def_cfa_offset 8
.L39:
	rep
	ret
	.cfi_endproc
.LFE94:
	.size	WaveDrawBox_toString, .-WaveDrawBox_toString
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"WaveDrawBox_vrefresh: Failed on assertion ((! this->sample_freq) || (! this->bunch)) == true\n%s\n"
	.align 8
.LC5:
	.string	"WaveDrawBox_vrefresh: [1] Failed to fill background surface (FillRect) %s\n"
	.align 8
.LC6:
	.string	"WaveDrawBox_vrefresh: Failed to fill create background surface (SDL_CreateRGBSurface) %s\n"
	.align 8
.LC7:
	.string	"WaveDrawBox_vrefresh: [2] Failed to fill background surface (FillRect) %s\n"
	.align 8
.LC8:
	.string	"WaveDrawBox_vrefresh: Failed on assertion (this->xrange != (this->relx_max - this->relx_min + 1)) == true\n%s\n"
	.align 8
.LC9:
	.string	"WaveDrawBox_vrefresh: Failed on assertion ((this->xrange == 0) || (this->xrange >= this->sample_freq)) == true\n%s\n"
	.text
	.globl	WaveDrawBox_vrefresh
	.type	WaveDrawBox_vrefresh, @function
WaveDrawBox_vrefresh:
.LFB95:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi	# vthis, vthis
	movzx	eax, WORD PTR [rdi+206]	# D.9222, MEM[(struct WaveDrawBox *)vthis_1(D)].sample_freq
	test	ax, ax	# D.9222
	je	.L41	#,
	movzx	ecx, WORD PTR [rdi+204]	# D.9224, MEM[(struct WaveDrawBox *)vthis_1(D)].bunch
	test	cx, cx	# D.9224
	jne	.L42	#,
.L41:
	mov	rdi, rbx	#, vthis
	call	WaveDrawBox_toString	#
	mov	rcx, rax	#, D.9225
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	jmp	.L40	#
.L42:
	mov	edx, 0	# tmp167,
	div	cx	# D.9224
	add	eax, 1	# D.9228,
	mov	WORD PTR [rdi+212], ax	# MEM[(struct WaveDrawBox *)vthis_1(D)].xrange, D.9228
	movzx	edx, WORD PTR [rdi+208]	# D.9229, MEM[(struct WaveDrawBox *)vthis_1(D)].padx
	mov	WORD PTR [rdi+218], dx	# MEM[(struct WaveDrawBox *)vthis_1(D)].zero_x, D.9229
	movzx	esi, WORD PTR [rdi+102]	# D.9230, MEM[(struct Widget *)vthis_1(D)].pos.h
	mov	ecx, esi	# tmp168, D.9230
	shr	cx	# tmp168
	mov	WORD PTR [rdi+220], cx	# MEM[(struct WaveDrawBox *)vthis_1(D)].zero_y, tmp168
	lea	eax, [rax+rdx*2]	# D.9234,
	mov	WORD PTR [rdi+100], ax	# MEM[(struct Widget *)vthis_1(D)].pos.w, D.9234
	mov	edx, eax	# tmp170, D.9234
	add	dx, WORD PTR [rdi+96]	# tmp170, MEM[(struct Widget *)vthis_1(D)].pos.x
	mov	WORD PTR [rdi+152], dx	# MEM[(struct Widget *)vthis_1(D)].maxx, tmp170
	mov	edx, esi	# tmp172, D.9230
	add	dx, WORD PTR [rdi+98]	# tmp172, MEM[(struct Widget *)vthis_1(D)].pos.y
	mov	WORD PTR [rdi+154], dx	# MEM[(struct Widget *)vthis_1(D)].maxy, tmp172
	mov	rdi, QWORD PTR [rdi+88]	# D.9245, MEM[(struct Widget *)vthis_1(D)].surf
	test	rdi, rdi	# D.9245
	je	.L44	#,
	mov	edx, 16774333	#,
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.9250
	je	.L45	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9253
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	jmp	.L40	#
.L44:
	movzx	esi, si	# D.9230, D.9230
	movzx	edi, ax	# D.9234, D.9234
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_1(D)].surf, D.9259
	test	rax, rax	# D.9259
	jne	.L46	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9262
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	jmp	.L40	#
.L46:
	mov	edx, 16774333	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, D.9259
	call	SDL_FillRect	#
	test	eax, eax	# D.9265
	je	.L45	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9268
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	jmp	.L40	#
.L45:
	movzx	ecx, WORD PTR [rbx+102]	# D.9230, MEM[(struct Widget *)vthis_1(D)].pos.h
	movzx	eax, WORD PTR [rbx+210]	# D.9269, MEM[(struct WaveDrawBox *)vthis_1(D)].pady
	movzx	edx, WORD PTR [rbx+216]	# D.9271, MEM[(struct WaveDrawBox *)vthis_1(D)].my
	mov	r12d, ecx	# tmp176, D.9230
	sub	r12d, eax	# tmp176, D.9269
	sub	r12d, edx	# y1, D.9271
	movzx	esi, WORD PTR [rbx+208]	# D.9229, MEM[(struct WaveDrawBox *)vthis_1(D)].padx
	mov	ebp, esi	# x1, D.9229
	add	bp, WORD PTR [rbx+212]	# x1, MEM[(struct WaveDrawBox *)vthis_1(D)].xrange
	movzx	edi, WORD PTR [rbx+218]	# MEM[(struct WaveDrawBox *)vthis_1(D)].zero_x, MEM[(struct WaveDrawBox *)vthis_1(D)].zero_x
	mov	WORD PTR [rbx+226], di	# MEM[(struct WaveDrawBox *)vthis_1(D)].relx_min, MEM[(struct WaveDrawBox *)vthis_1(D)].zero_x
	lea	edi, [rbp-1]	# tmp179,
	mov	WORD PTR [rbx+228], di	# MEM[(struct WaveDrawBox *)vthis_1(D)].relx_max, tmp179
	add	eax, edx	# tmp180, D.9271
	mov	WORD PTR [rbx+230], ax	# MEM[(struct WaveDrawBox *)vthis_1(D)].rely_min, tmp180
	mov	WORD PTR [rbx+232], r12w	# MEM[(struct WaveDrawBox *)vthis_1(D)].rely_max, y1
	movsx	ebp, bp	# D.9278, x1
	shr	cx	# tmp181
	movsx	ecx, cx	# tmp182, tmp181
	movsx	esi, si	# D.9229, D.9229
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	r8d, 255	#,
	mov	edx, ebp	#, D.9278
	call	hlineColor	#
	movsx	ecx, WORD PTR [rbx+230]	# MEM[(struct WaveDrawBox *)vthis_1(D)].rely_min, MEM[(struct WaveDrawBox *)vthis_1(D)].rely_min
	movsx	esi, WORD PTR [rbx+208]	# MEM[(struct WaveDrawBox *)vthis_1(D)].padx, MEM[(struct WaveDrawBox *)vthis_1(D)].padx
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	r8d, -325451777	#,
	mov	edx, ebp	#, D.9278
	call	hlineColor	#
	movsx	ecx, r12w	# y1, y1
	movsx	esi, WORD PTR [rbx+208]	# MEM[(struct WaveDrawBox *)vthis_1(D)].padx, MEM[(struct WaveDrawBox *)vthis_1(D)].padx
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	r8d, -325451777	#,
	mov	edx, ebp	#, D.9278
	call	hlineColor	#
	add	r12w, WORD PTR [rbx+216]	# tmp191, MEM[(struct WaveDrawBox *)vthis_1(D)].my
	movsx	r12d, r12w	# D.9285, tmp191
	movsx	edx, WORD PTR [rbx+210]	# MEM[(struct WaveDrawBox *)vthis_1(D)].pady, MEM[(struct WaveDrawBox *)vthis_1(D)].pady
	movsx	esi, WORD PTR [rbx+208]	# MEM[(struct WaveDrawBox *)vthis_1(D)].padx, MEM[(struct WaveDrawBox *)vthis_1(D)].padx
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r12d	#, D.9285
	call	vlineColor	#
	movsx	edx, WORD PTR [rbx+210]	# MEM[(struct WaveDrawBox *)vthis_1(D)].pady, MEM[(struct WaveDrawBox *)vthis_1(D)].pady
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_1(D)].surf, MEM[(struct Widget *)vthis_1(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r12d	#, D.9285
	mov	esi, ebp	#, D.9278
	call	vlineColor	#
	movzx	eax, WORD PTR [rbx+232]	# MEM[(struct WaveDrawBox *)vthis_1(D)].rely_max, MEM[(struct WaveDrawBox *)vthis_1(D)].rely_max
	sub	ax, WORD PTR [rbx+230]	# tmp199, MEM[(struct WaveDrawBox *)vthis_1(D)].rely_min
	mov	WORD PTR [rbx+214], ax	# MEM[(struct WaveDrawBox *)vthis_1(D)].yrange, tmp199
	movzx	eax, WORD PTR [rbx+212]	# D.9232, MEM[(struct WaveDrawBox *)vthis_1(D)].xrange
	movzx	ecx, ax	# D.9232, D.9232
	movzx	edx, WORD PTR [rbx+228]	# MEM[(struct WaveDrawBox *)vthis_1(D)].relx_max, MEM[(struct WaveDrawBox *)vthis_1(D)].relx_max
	movzx	esi, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)vthis_1(D)].relx_min, MEM[(struct WaveDrawBox *)vthis_1(D)].relx_min
	sub	edx, esi	# tmp204, MEM[(struct WaveDrawBox *)vthis_1(D)].relx_min
	add	edx, 1	# tmp205,
	cmp	ecx, edx	# D.9232, tmp205
	je	.L47	#,
	mov	rdi, rbx	#, vthis
	call	WaveDrawBox_toString	#
	mov	rcx, rax	#, D.9299
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	jmp	.L40	#
.L47:
	test	ax, ax	# D.9232
	je	.L48	#,
	cmp	ax, WORD PTR [rbx+206]	# D.9232, MEM[(struct WaveDrawBox *)vthis_1(D)].sample_freq
	jb	.L49	#,
.L48:
	mov	rdi, rbx	#, vthis
	call	WaveDrawBox_toString	#
	mov	rcx, rax	#, D.9303
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)vthis_1(D)].visible,
	jmp	.L40	#
.L49:
	cmp	QWORD PTR [rbx+184], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].points,
	jne	.L50	#,
	movzx	edi, ax	# D.9232, D.9232
	mov	ecx, 234	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+184], rax	# MEM[(struct WaveDrawBox *)vthis_1(D)].points, D.9308
	mov	rdx, QWORD PTR [rbx+176]	# D.9309, MEM[(struct WaveDrawBox *)vthis_1(D)].afg
	mov	QWORD PTR [rdx+120], rax	# D.9309_120->points, D.9308
	mov	rax, QWORD PTR [rbx+176]	# D.9309, MEM[(struct WaveDrawBox *)vthis_1(D)].afg
	movzx	edx, WORD PTR [rbx+212]	# D.9232, MEM[(struct WaveDrawBox *)vthis_1(D)].xrange
	mov	WORD PTR [rax+128], dx	# D.9309_122->points_size, D.9232
.L50:
	cmp	QWORD PTR [rbx+192], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples,
	jne	.L51	#,
	movzx	edi, WORD PTR [rbx+206]	# MEM[(struct WaveDrawBox *)vthis_1(D)].sample_freq, MEM[(struct WaveDrawBox *)vthis_1(D)].sample_freq
	mov	ecx, 239	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 4	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+192], rax	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples, D.9314
	mov	rdx, QWORD PTR [rbx+176]	# D.9309, MEM[(struct WaveDrawBox *)vthis_1(D)].afg
	mov	QWORD PTR [rdx+104], rax	# D.9309_128->samples, D.9314
	mov	rax, QWORD PTR [rbx+176]	# D.9309, MEM[(struct WaveDrawBox *)vthis_1(D)].afg
	movzx	edx, WORD PTR [rbx+206]	# D.9222, MEM[(struct WaveDrawBox *)vthis_1(D)].sample_freq
	mov	WORD PTR [rax+112], dx	# D.9309_130->samples_size, D.9222
.L51:
	mov	BYTE PTR [rbx+167], 1	# MEM[(struct Widget *)vthis_1(D)].visible,
.L40:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	WaveDrawBox_vrefresh, .-WaveDrawBox_vrefresh
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"%20s:\tWithin context: afg=%p, h=%hu\n"
	.align 8
.LC11:
	.string	"WaveDrawBox_new: ERROR AudioFromGraph object cannot be NULL\n"
	.text
	.globl	WaveDrawBox_new
	.type	WaveDrawBox_new, @function
WaveDrawBox_new:
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
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# afg, afg
	mov	r12d, edx	# h, h
	test	rdi, rdi	# this
	jne	.L54	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9063	#,
	call	Static_nullThis2	#
	movzx	r9d, r12w	#, h
	mov	r8, rbp	#, afg
	mov	ecx, OFFSET FLAT:__FUNCTION__.9063	#,
	mov	edx, OFFSET FLAT:.LC10	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L55	#
.L54:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9063	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	WORD PTR [rbx+102], r12w	# MEM[(struct Widget *)this_2(D)].pos.h, h
	mov	BYTE PTR [rbx+168], 1	# MEM[(struct Widget *)this_2(D)].mevent,
	mov	QWORD PTR [rbx+56], OFFSET FLAT:WaveDrawBox_mousePressed	# MEM[(struct Widget *)this_2(D)].mevent_internal.press,
	mov	QWORD PTR [rbx+184], 0	# this_2(D)->points,
	mov	QWORD PTR [rbx+192], 0	# this_2(D)->samples,
	mov	QWORD PTR [rbx+176], rbp	# this_2(D)->afg, afg
	test	rbp, rbp	# afg
	jne	.L56	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 60	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	fwrite	#
.L56:
	mov	DWORD PTR [rbx+200], 0x00000000	# this_2(D)->yp,
	mov	WORD PTR [rbx+204], 0	# this_2(D)->bunch,
	mov	WORD PTR [rbx+206], -21436	# this_2(D)->sample_freq,
	mov	WORD PTR [rbx+208], 0	# this_2(D)->padx,
	mov	WORD PTR [rbx+210], 0	# this_2(D)->pady,
	mov	WORD PTR [rbx+212], 0	# this_2(D)->xrange,
	mov	WORD PTR [rbx+214], 0	# this_2(D)->yrange,
	mov	WORD PTR [rbx+216], 0	# this_2(D)->my,
	mov	WORD PTR [rbx+218], 0	# this_2(D)->zero_x,
	mov	WORD PTR [rbx+220], 0	# this_2(D)->zero_y,
	mov	WORD PTR [rbx+222], 0	# this_2(D)->relx,
	mov	WORD PTR [rbx+224], 0	# this_2(D)->rely,
	mov	WORD PTR [rbx+226], 0	# this_2(D)->relx_min,
	mov	WORD PTR [rbx+228], 0	# this_2(D)->relx_max,
	mov	WORD PTR [rbx+230], 0	# this_2(D)->rely_min,
	mov	WORD PTR [rbx+232], 0	# this_2(D)->rely_max,
	mov	WORD PTR [rbx+234], 0	# this_2(D)->xp,
.L55:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	WaveDrawBox_new, .-WaveDrawBox_new
	.globl	WaveDrawBox_clearData
	.type	WaveDrawBox_clearData, @function
WaveDrawBox_clearData:
.LFB98:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	QWORD PTR [rdi+184], 0	# this_6(D)->points,
	je	.L59	#,
	cmp	WORD PTR [rdi+212], 0	# this_6(D)->xrange,
	je	.L60	#,
	mov	eax, 0	# i,
	xorps	xmm0, xmm0	# tmp88
.L61:
	movzx	ecx, ax	# i, i
	mov	rdx, QWORD PTR [rdi+184]	# this_6(D)->points, this_6(D)->points
	movss	DWORD PTR [rdx+rcx*8], xmm0	# D.9082_13->fvalue, tmp88
	add	eax, 1	# i,
	cmp	WORD PTR [rdi+212], ax	# this_6(D)->xrange, i
	ja	.L61	#,
	jmp	.L60	#
.L65:
	cmp	WORD PTR [rdi+206], 0	# this_6(D)->sample_freq,
	je	.L64	#,
	mov	eax, 0	# i,
	xorps	xmm0, xmm0	# tmp87
.L63:
	movzx	ecx, ax	# i, i
	mov	rdx, QWORD PTR [rdi+192]	# this_6(D)->samples, this_6(D)->samples
	movss	DWORD PTR [rdx+rcx*4], xmm0	# *D.9089_22, tmp87
	add	eax, 1	# i,
	cmp	WORD PTR [rdi+206], ax	# this_6(D)->sample_freq, i
	ja	.L63	#,
.L64:
	call	Widget_refresh	#
	jmp	.L58	#
.L60:
	cmp	QWORD PTR [rdi+192], 0	# this_6(D)->samples,
	jne	.L65	#,
	.p2align 4,,3
	jmp	.L64	#
.L59:
	cmp	QWORD PTR [rdi+192], 0	# this_6(D)->samples,
	jne	.L65	#,
.L58:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	WaveDrawBox_clearData, .-WaveDrawBox_clearData
	.globl	WaveDrawBox_class
	.data
	.align 8
	.type	WaveDrawBox_class, @object
	.size	WaveDrawBox_class, 8
WaveDrawBox_class:
	.quad	type
	.local	str_id.9047
	.comm	str_id.9047,256,32
	.section	.rodata.str1.1
.LC13:
	.string	"WaveDrawBox"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	240
# name:
	.quad	.LC13
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9057, @object
	.size	__FUNCTION__.9057, 21
__FUNCTION__.9057:
	.string	"WaveDrawBox_vdestroy"
	.align 16
	.type	__FUNCTION__.9063, @object
	.size	__FUNCTION__.9063, 16
__FUNCTION__.9063:
	.string	"WaveDrawBox_new"
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	WaveDrawBox_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	WaveDrawBox_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
