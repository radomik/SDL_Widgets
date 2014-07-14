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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB103:
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
	sub	ax, WORD PTR [rdi+96]	# D.9388, sender_5(D)->pos.x
	mov	WORD PTR [rdi+214], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].relx, D.9388
	movzx	edx, WORD PTR [rsi+14]	# screen_7(D)->event.button.y, screen_7(D)->event.button.y
	sub	dx, WORD PTR [rdi+98]	# D.9392, sender_5(D)->pos.y
	mov	WORD PTR [rdi+216], dx	# MEM[(struct WaveDrawBox *)sender_5(D)].rely, D.9392
	movzx	ecx, WORD PTR [rdi+218]	# D.9394, MEM[(struct WaveDrawBox *)sender_5(D)].relx_min
	cmp	ax, cx	# D.9388, D.9394
	jb	.L1	#,
	movzx	esi, WORD PTR [rdi+222]	# D.9398, MEM[(struct WaveDrawBox *)sender_5(D)].rely_min
	cmp	dx, si	# D.9392, D.9398
	jb	.L1	#,
	cmp	ax, WORD PTR [rdi+220]	# D.9388, MEM[(struct WaveDrawBox *)sender_5(D)].relx_max
	ja	.L1	#,
	cmp	dx, WORD PTR [rdi+224]	# D.9392, MEM[(struct WaveDrawBox *)sender_5(D)].rely_max
	ja	.L1	#,
	mov	BYTE PTR [rdi+158], 1	# sender_5(D)->dragging,
	sub	eax, ecx	# D.9407, D.9394
	mov	WORD PTR [rdi+226], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, D.9407
	movzx	edi, dx	# D.9392, D.9392
	movzx	esi, si	# D.9398, D.9398
	sub	esi, edi	# tmp280, D.9392
	lea	ecx, [rsi+rsi]	# tmp281,
	cvtsi2ss	xmm1, ecx	# tmp282, tmp281
	movzx	ecx, WORD PTR [rbx+206]	# MEM[(struct WaveDrawBox *)sender_5(D)].yrange, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	cvtsi2ss	xmm0, ecx	# tmp283, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	divss	xmm1, xmm0	# tmp282, tmp283
	movaps	xmm0, xmm1	# tmp285, tmp282
	addss	xmm0, DWORD PTR .LC0[rip]	# tmp286,
	movss	DWORD PTR [rbx+192], xmm0	# MEM[(struct WaveDrawBox *)sender_5(D)].yp, tmp286
	movzx	eax, ax	# D.9407, D.9407
	mov	rcx, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rcx, [rcx+rax*8]	# D.9422,
	movzx	eax, WORD PTR [rcx+6]	# D.9423, D.9422_43->rely
	cmp	dx, ax	# D.9392, D.9423
	je	.L23	#,
	test	ax, ax	# D.9423
	je	.L4	#,
	cmp	ax, WORD PTR [rbx+212]	# D.9423, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	je	.L4	#,
	movsx	edx, ax	# D.9423, D.9423
	movsx	esi, WORD PTR [rcx+4]	# D.9422_43->relx, D.9422_43->relx
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	ecx, -737793	#,
	call	pixelColor	#
.L4:
	movzx	ecx, WORD PTR [rbx+214]	# D.9393, MEM[(struct WaveDrawBox *)sender_5(D)].relx
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+4+rdx*8], cx	# D.9422_80->relx, D.9393
	movzx	ecx, WORD PTR [rbx+216]	# D.9397, MEM[(struct WaveDrawBox *)sender_5(D)].rely
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+6+rdx*8], cx	# D.9422_86->rely, D.9397
	movss	xmm0, DWORD PTR [rbx+192]	# D.9437, MEM[(struct WaveDrawBox *)sender_5(D)].yp
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movss	DWORD PTR [rax+rdx*8], xmm0	# D.9422_92->fvalue, D.9437
	movzx	eax, WORD PTR [rbx+212]	#, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	cmp	WORD PTR [rbx+216], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].rely,
	je	.L5	#,
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rax, [rax+rdx*8]	# D.9422,
	movsx	edx, WORD PTR [rax+6]	# D.9422_100->rely, D.9422_100->rely
	movsx	esi, WORD PTR [rax+4]	# D.9422_100->relx, D.9422_100->relx
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
	movzx	eax, BYTE PTR [rax]	# D.9443, D.9442_120->type
	cmp	al, 4	# D.9443,
	jne	.L7	#,
	movzx	edx, WORD PTR [rbp+14]	# screen_7(D)->event.motion.y, screen_7(D)->event.motion.y
	movzx	esi, WORD PTR [rbp+12]	# screen_7(D)->event.motion.x, screen_7(D)->event.motion.x
	mov	rdi, rbx	#, sender
	call	Widget_contains	#
	test	al, al	# D.9450
	je	.L29	#,
	movzx	eax, WORD PTR [rbp+12]	# screen_7(D)->event.motion.x, screen_7(D)->event.motion.x
	sub	ax, WORD PTR [rbx+96]	# D.9455, sender_5(D)->pos.x
	mov	WORD PTR [rbx+214], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].relx, D.9455
	movzx	edx, WORD PTR [rbp+14]	# screen_7(D)->event.motion.y, screen_7(D)->event.motion.y
	sub	dx, WORD PTR [rbx+98]	# D.9458, sender_5(D)->pos.y
	mov	WORD PTR [rbx+216], dx	# MEM[(struct WaveDrawBox *)sender_5(D)].rely, D.9458
	movzx	ecx, WORD PTR [rbx+218]	# D.9394, MEM[(struct WaveDrawBox *)sender_5(D)].relx_min
	cmp	ax, cx	# D.9455, D.9394
	jb	.L29	#,
	movzx	esi, WORD PTR [rbx+222]	# D.9398, MEM[(struct WaveDrawBox *)sender_5(D)].rely_min
	cmp	dx, si	# D.9458, D.9398
	jb	.L29	#,
	cmp	ax, WORD PTR [rbx+220]	# D.9455, MEM[(struct WaveDrawBox *)sender_5(D)].relx_max
	ja	.L29	#,
	cmp	dx, WORD PTR [rbx+224]	# D.9458, MEM[(struct WaveDrawBox *)sender_5(D)].rely_max
	ja	.L29	#,
	sub	eax, ecx	# D.9407, D.9394
	mov	WORD PTR [rbx+226], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, D.9407
	movzx	edi, dx	# D.9458, D.9458
	movzx	ecx, si	# D.9398, D.9398
	sub	ecx, edi	# tmp321, D.9458
	add	ecx, ecx	# tmp322
	cvtsi2ss	xmm1, ecx	# tmp323, tmp322
	movzx	ecx, WORD PTR [rbx+206]	# MEM[(struct WaveDrawBox *)sender_5(D)].yrange, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	cvtsi2ss	xmm0, ecx	# tmp324, MEM[(struct WaveDrawBox *)sender_5(D)].yrange
	divss	xmm1, xmm0	# tmp323, tmp324
	movaps	xmm0, xmm1	# tmp326, tmp323
	addss	xmm0, DWORD PTR .LC0[rip]	# tmp327,
	movss	DWORD PTR [rbx+192], xmm0	# MEM[(struct WaveDrawBox *)sender_5(D)].yp, tmp327
	movzx	eax, ax	# D.9407, D.9407
	mov	rcx, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rcx, [rcx+rax*8]	# D.9422,
	movzx	eax, WORD PTR [rcx+6]	# D.9423, D.9422_162->rely
	cmp	dx, ax	# D.9458, D.9423
	je	.L29	#,
	test	ax, ax	# D.9423
	je	.L9	#,
	cmp	ax, WORD PTR [rbx+212]	# D.9423, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	je	.L9	#,
	movsx	edx, ax	# D.9423, D.9423
	movsx	esi, WORD PTR [rcx+4]	# D.9422_162->relx, D.9422_162->relx
	mov	rdi, QWORD PTR [rbx+88]	# sender_5(D)->surf, sender_5(D)->surf
	mov	ecx, -737793	#,
	call	pixelColor	#
.L9:
	movzx	ecx, WORD PTR [rbx+214]	# D.9393, MEM[(struct WaveDrawBox *)sender_5(D)].relx
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+4+rdx*8], cx	# D.9422_199->relx, D.9393
	movzx	ecx, WORD PTR [rbx+216]	# D.9397, MEM[(struct WaveDrawBox *)sender_5(D)].rely
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	mov	WORD PTR [rax+6+rdx*8], cx	# D.9422_205->rely, D.9397
	movss	xmm0, DWORD PTR [rbx+192]	# D.9437, MEM[(struct WaveDrawBox *)sender_5(D)].yp
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movss	DWORD PTR [rax+rdx*8], xmm0	# D.9422_211->fvalue, D.9437
	movzx	eax, WORD PTR [rbx+212]	#, MEM[(struct WaveDrawBox *)sender_5(D)].zero_y
	cmp	WORD PTR [rbx+216], ax	# MEM[(struct WaveDrawBox *)sender_5(D)].rely,
	je	.L10	#,
	movzx	edx, WORD PTR [rbx+226]	# MEM[(struct WaveDrawBox *)sender_5(D)].xp, MEM[(struct WaveDrawBox *)sender_5(D)].xp
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	lea	rax, [rax+rdx*8]	# D.9422,
	movsx	edx, WORD PTR [rax+6]	# D.9422_219->rely, D.9422_219->rely
	movsx	esi, WORD PTR [rax+4]	# D.9422_219->relx, D.9422_219->relx
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
	cmp	al, 6	# D.9443,
	.p2align 4,,2
	jne	.L29	#,
	mov	BYTE PTR [rbx+158], 0	# sender_5(D)->dragging,
	cmp	QWORD PTR [rbx+184], 0	# MEM[(struct WaveDrawBox *)sender_5(D)].samples,
	je	.L30	#,
	movzx	r11d, WORD PTR [rbx+196]	# xrange, MEM[(struct WaveDrawBox *)sender_5(D)].bunch
	cmp	WORD PTR [rbx+204], 1	# MEM[(struct WaveDrawBox *)sender_5(D)].xrange,
	jbe	.L19	#,
	mov	r9d, 1	# i,
	mov	edi, 0	# s,
	movzx	r14d, r11w	# xrange, xrange
	lea	r13d, [r11-1]	# tmp375,
.L15:
	mov	rax, QWORD PTR [rbx+176]	# D.9418, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movzx	edx, r9w	# D.9481, i
	movss	xmm1, DWORD PTR [rax-8+rdx*8]	# y1, D.9484_247->fvalue
	movss	xmm3, DWORD PTR [rax+rdx*8]	# yrange, D.9487_252->fvalue
	movzx	edx, di	# s, s
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].samples, MEM[(struct WaveDrawBox *)sender_5(D)].samples
	movss	DWORD PTR [rax+rdx*4], xmm1	# *D.9490_258, y1
	lea	r10d, [rdi+1]	# s,
	subss	xmm3, xmm1	# yrange, y1
	cmp	r11w, 1	# xrange,
	jbe	.L20	#,
	lea	r8d, [rdi+r11]	# D.9729,
	mov	eax, r10d	# s, s
	cvtsi2ss	xmm2, r14d	# tmp373, xrange
.L14:
	movzx	ecx, ax	# s, s
	mov	rdx, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].samples, MEM[(struct WaveDrawBox *)sender_5(D)].samples
	mov	esi, eax	# tmp357, s
	sub	esi, edi	# tmp357, s
	movzx	esi, si	# tmp359, tmp357
	cvtsi2ss	xmm0, esi	# tmp358, tmp359
	mulss	xmm0, xmm3	# tmp360, yrange
	divss	xmm0, xmm2	# tmp363, tmp373
	addss	xmm0, xmm1	# tmp364, y1
	movss	DWORD PTR [rdx+rcx*4], xmm0	# *D.9490_264, tmp364
	add	eax, 1	# s,
	cmp	ax, r8w	# s, D.9729
	jne	.L14	#,
	lea	edi, [r13+0+r10]	# s,
	jmp	.L13	#
.L20:
	mov	edi, r10d	# s, s
.L13:
	add	r9d, 1	# i,
	cmp	WORD PTR [rbx+204], r9w	# MEM[(struct WaveDrawBox *)sender_5(D)].xrange, i
	ja	.L15	#,
	jmp	.L12	#
.L19:
	mov	r9d, 1	# i,
	mov	edi, 0	# s,
.L12:
	movzx	r9d, r9w	# i, i
	mov	rax, QWORD PTR [rbx+176]	# MEM[(struct WaveDrawBox *)sender_5(D)].points, MEM[(struct WaveDrawBox *)sender_5(D)].points
	movss	xmm0, DWORD PTR [rax-8+r9*8]	# D.9497, D.9484_281->fvalue
	movzx	edi, di	# s, s
	mov	rax, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)sender_5(D)].samples, MEM[(struct WaveDrawBox *)sender_5(D)].samples
	movss	DWORD PTR [rax+rdi*4], xmm0	# *D.9490_276, D.9497
	jmp	.L30	#
.L29:
	mov	rdi, QWORD PTR [rbp+80]	# screen_7(D)->pevent, screen_7(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.9498
	je	.L30	#,
	.p2align 4,,2
	jmp	.L16	#
.L23:
	lea	r12, [rbx+96]	# tmp379,
.L30:
	cmp	BYTE PTR [rbx+158], 0	# sender_5(D)->dragging,
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
.LFE103:
	.size	WaveDrawBox_mousePressed, .-WaveDrawBox_mousePressed
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"WaveDrawBox.c"
	.text
	.globl	WaveDrawBox_vdestroy
	.type	WaveDrawBox_vdestroy, @function
WaveDrawBox_vdestroy:
.LFB106:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+176]	# MEM[(struct WaveDrawBox *)vthis_1(D)].points, MEM[(struct WaveDrawBox *)vthis_1(D)].points
	mov	edx, 268	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbx+176], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].points,
	mov	rdi, QWORD PTR [rbx+184]	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples, MEM[(struct WaveDrawBox *)vthis_1(D)].samples
	mov	edx, 269	#,
	mov	esi, OFFSET FLAT:.LC1	#,
	call	wfree	#
	mov	QWORD PTR [rbx+184], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples,
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE106:
	.size	WaveDrawBox_vdestroy, .-WaveDrawBox_vdestroy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"WaveDrawBox_vrefresh: Failed on assertion ((! this->sample_freq) || (! this->bunch)) == true\n%s\n"
	.align 8
.LC3:
	.string	"WaveDrawBox_vrefresh: [1] Failed to fill background surface (FillRect) %s\n"
	.align 8
.LC4:
	.string	"WaveDrawBox_vrefresh: Failed to fill create background surface (SDL_CreateRGBSurface) %s\n"
	.align 8
.LC5:
	.string	"WaveDrawBox_vrefresh: [2] Failed to fill background surface (FillRect) %s\n"
	.align 8
.LC6:
	.string	"WaveDrawBox_vrefresh: Failed on assertion (this->xrange != (this->relx_max - this->relx_min + 1)) == true\n%s\n"
	.align 8
.LC7:
	.string	"WaveDrawBox_vrefresh: Failed on assertion ((this->xrange == 0) || (this->xrange >= this->sample_freq)) == true\n%s\n"
	.text
	.globl	WaveDrawBox_vrefresh
	.type	WaveDrawBox_vrefresh, @function
WaveDrawBox_vrefresh:
.LFB105:
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
	movzx	eax, WORD PTR [rdi+198]	# D.9504, MEM[(struct WaveDrawBox *)vthis_4(D)].sample_freq
	test	ax, ax	# D.9504
	je	.L35	#,
	movzx	ecx, WORD PTR [rdi+196]	# D.9506, MEM[(struct WaveDrawBox *)vthis_4(D)].bunch
	test	cx, cx	# D.9506
	jne	.L36	#,
.L35:
	mov	rcx, QWORD PTR TO_STRING_NULL_THIS_STR[rip]	# iftmp.1, TO_STRING_NULL_THIS_STR
	test	rbx, rbx	# vthis
	je	.L38	#,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_4(D)].class, MEM[(struct coObject *)vthis_4(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9510_147->vtable, D.9510_147->vtable
	mov	rax, QWORD PTR [rax]	# *D.9511_148, *D.9511_148
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+8]]	# MEM[(struct coIObject *)D.9512_149].toString
	mov	rcx, rax	# iftmp.1,
.L38:
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_4(D)].visible,
	jmp	.L34	#
.L36:
	mov	edx, 0	# tmp183,
	div	cx	# D.9506
	add	eax, 1	# D.9517,
	mov	WORD PTR [rdi+204], ax	# MEM[(struct WaveDrawBox *)vthis_4(D)].xrange, D.9517
	movzx	edx, WORD PTR [rdi+200]	# D.9518, MEM[(struct WaveDrawBox *)vthis_4(D)].padx
	mov	WORD PTR [rdi+210], dx	# MEM[(struct WaveDrawBox *)vthis_4(D)].zero_x, D.9518
	movzx	esi, WORD PTR [rdi+102]	# D.9519, MEM[(struct Widget *)vthis_4(D)].pos.h
	mov	ecx, esi	# tmp184, D.9519
	shr	cx	# tmp184
	mov	WORD PTR [rdi+212], cx	# MEM[(struct WaveDrawBox *)vthis_4(D)].zero_y, tmp184
	lea	eax, [rax+rdx*2]	# D.9523,
	mov	WORD PTR [rdi+100], ax	# MEM[(struct Widget *)vthis_4(D)].pos.w, D.9523
	mov	edx, eax	# tmp186, D.9523
	add	dx, WORD PTR [rdi+96]	# tmp186, MEM[(struct Widget *)vthis_4(D)].pos.x
	mov	WORD PTR [rdi+144], dx	# MEM[(struct Widget *)vthis_4(D)].maxx, tmp186
	mov	edx, esi	# tmp188, D.9519
	add	dx, WORD PTR [rdi+98]	# tmp188, MEM[(struct Widget *)vthis_4(D)].pos.y
	mov	WORD PTR [rdi+146], dx	# MEM[(struct Widget *)vthis_4(D)].maxy, tmp188
	mov	rdi, QWORD PTR [rdi+88]	# D.9537, MEM[(struct Widget *)vthis_4(D)].surf
	test	rdi, rdi	# D.9537
	je	.L40	#,
	mov	edx, 16774333	#,
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.9542
	je	.L41	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9545
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_4(D)].visible,
	jmp	.L34	#
.L40:
	movzx	esi, si	# D.9519, D.9519
	movzx	edi, ax	# D.9523, D.9523
	call	Static_newSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)vthis_4(D)].surf, D.9551
	test	rax, rax	# D.9551
	jne	.L42	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9554
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_4(D)].visible,
	jmp	.L34	#
.L42:
	mov	edx, 16774333	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, D.9551
	call	SDL_FillRect	#
	test	eax, eax	# D.9557
	je	.L41	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9560
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_4(D)].visible,
	jmp	.L34	#
.L41:
	movzx	ecx, WORD PTR [rbx+102]	# D.9519, MEM[(struct Widget *)vthis_4(D)].pos.h
	movzx	eax, WORD PTR [rbx+202]	# D.9561, MEM[(struct WaveDrawBox *)vthis_4(D)].pady
	movzx	edx, WORD PTR [rbx+208]	# D.9563, MEM[(struct WaveDrawBox *)vthis_4(D)].my
	mov	r12d, ecx	# tmp192, D.9519
	sub	r12d, eax	# tmp192, D.9561
	sub	r12d, edx	# y1, D.9563
	movzx	esi, WORD PTR [rbx+200]	# D.9518, MEM[(struct WaveDrawBox *)vthis_4(D)].padx
	mov	ebp, esi	# x1, D.9518
	add	bp, WORD PTR [rbx+204]	# x1, MEM[(struct WaveDrawBox *)vthis_4(D)].xrange
	movzx	edi, WORD PTR [rbx+210]	# MEM[(struct WaveDrawBox *)vthis_4(D)].zero_x, MEM[(struct WaveDrawBox *)vthis_4(D)].zero_x
	mov	WORD PTR [rbx+218], di	# MEM[(struct WaveDrawBox *)vthis_4(D)].relx_min, MEM[(struct WaveDrawBox *)vthis_4(D)].zero_x
	lea	edi, [rbp-1]	# tmp195,
	mov	WORD PTR [rbx+220], di	# MEM[(struct WaveDrawBox *)vthis_4(D)].relx_max, tmp195
	add	eax, edx	# tmp196, D.9563
	mov	WORD PTR [rbx+222], ax	# MEM[(struct WaveDrawBox *)vthis_4(D)].rely_min, tmp196
	mov	WORD PTR [rbx+224], r12w	# MEM[(struct WaveDrawBox *)vthis_4(D)].rely_max, y1
	movsx	ebp, bp	# D.9570, x1
	shr	cx	# tmp197
	movsx	ecx, cx	# tmp198, tmp197
	movsx	esi, si	# D.9518, D.9518
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	r8d, 255	#,
	mov	edx, ebp	#, D.9570
	call	hlineColor	#
	movsx	ecx, WORD PTR [rbx+222]	# MEM[(struct WaveDrawBox *)vthis_4(D)].rely_min, MEM[(struct WaveDrawBox *)vthis_4(D)].rely_min
	movsx	esi, WORD PTR [rbx+200]	# MEM[(struct WaveDrawBox *)vthis_4(D)].padx, MEM[(struct WaveDrawBox *)vthis_4(D)].padx
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	r8d, -325451777	#,
	mov	edx, ebp	#, D.9570
	call	hlineColor	#
	movsx	ecx, r12w	# y1, y1
	movsx	esi, WORD PTR [rbx+200]	# MEM[(struct WaveDrawBox *)vthis_4(D)].padx, MEM[(struct WaveDrawBox *)vthis_4(D)].padx
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	r8d, -325451777	#,
	mov	edx, ebp	#, D.9570
	call	hlineColor	#
	add	r12w, WORD PTR [rbx+208]	# tmp207, MEM[(struct WaveDrawBox *)vthis_4(D)].my
	movsx	r12d, r12w	# D.9577, tmp207
	movsx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)vthis_4(D)].pady, MEM[(struct WaveDrawBox *)vthis_4(D)].pady
	movsx	esi, WORD PTR [rbx+200]	# MEM[(struct WaveDrawBox *)vthis_4(D)].padx, MEM[(struct WaveDrawBox *)vthis_4(D)].padx
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r12d	#, D.9577
	call	vlineColor	#
	movsx	edx, WORD PTR [rbx+202]	# MEM[(struct WaveDrawBox *)vthis_4(D)].pady, MEM[(struct WaveDrawBox *)vthis_4(D)].pady
	mov	rdi, QWORD PTR [rbx+88]	# MEM[(struct Widget *)vthis_4(D)].surf, MEM[(struct Widget *)vthis_4(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r12d	#, D.9577
	mov	esi, ebp	#, D.9570
	call	vlineColor	#
	movzx	eax, WORD PTR [rbx+224]	# MEM[(struct WaveDrawBox *)vthis_4(D)].rely_max, MEM[(struct WaveDrawBox *)vthis_4(D)].rely_max
	sub	ax, WORD PTR [rbx+222]	# tmp215, MEM[(struct WaveDrawBox *)vthis_4(D)].rely_min
	mov	WORD PTR [rbx+206], ax	# MEM[(struct WaveDrawBox *)vthis_4(D)].yrange, tmp215
	movzx	eax, WORD PTR [rbx+204]	# D.9521, MEM[(struct WaveDrawBox *)vthis_4(D)].xrange
	movzx	ecx, ax	# D.9521, D.9521
	movzx	edx, WORD PTR [rbx+220]	# MEM[(struct WaveDrawBox *)vthis_4(D)].relx_max, MEM[(struct WaveDrawBox *)vthis_4(D)].relx_max
	movzx	esi, WORD PTR [rbx+218]	# MEM[(struct WaveDrawBox *)vthis_4(D)].relx_min, MEM[(struct WaveDrawBox *)vthis_4(D)].relx_min
	sub	edx, esi	# tmp220, MEM[(struct WaveDrawBox *)vthis_4(D)].relx_min
	add	edx, 1	# tmp221,
	cmp	ecx, edx	# D.9521, tmp221
	je	.L43	#,
	mov	rcx, QWORD PTR TO_STRING_NULL_THIS_STR[rip]	# iftmp.6, TO_STRING_NULL_THIS_STR
	test	rbx, rbx	# vthis
	je	.L45	#,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_4(D)].class, MEM[(struct coObject *)vthis_4(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9510_114->vtable, D.9510_114->vtable
	mov	rax, QWORD PTR [rax]	# *D.9511_115, *D.9511_115
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+8]]	# MEM[(struct coIObject *)D.9512_116].toString
	mov	rcx, rax	# iftmp.6,
.L45:
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_4(D)].visible,
	jmp	.L34	#
.L43:
	test	ax, ax	# D.9521
	je	.L46	#,
	cmp	ax, WORD PTR [rbx+198]	# D.9521, MEM[(struct WaveDrawBox *)vthis_4(D)].sample_freq
	jb	.L47	#,
.L46:
	mov	rcx, QWORD PTR TO_STRING_NULL_THIS_STR[rip]	# iftmp.7, TO_STRING_NULL_THIS_STR
	test	rbx, rbx	# vthis
	je	.L49	#,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)vthis_4(D)].class, MEM[(struct coObject *)vthis_4(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9510_140->vtable, D.9510_140->vtable
	mov	rax, QWORD PTR [rax]	# *D.9511_141, *D.9511_141
	mov	rdi, rbx	#, vthis
	call	[QWORD PTR [rax+8]]	# MEM[(struct coIObject *)D.9512_142].toString
	mov	rcx, rax	# iftmp.7,
.L49:
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+159], 0	# MEM[(struct Widget *)vthis_4(D)].visible,
	jmp	.L34	#
.L47:
	cmp	QWORD PTR [rbx+176], 0	# MEM[(struct WaveDrawBox *)vthis_4(D)].points,
	jne	.L50	#,
	movzx	edi, ax	# D.9521, D.9521
	mov	ecx, 245	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+176], rax	# MEM[(struct WaveDrawBox *)vthis_4(D)].points, D.9606
	mov	rdx, QWORD PTR [rbx+168]	# D.9607, MEM[(struct WaveDrawBox *)vthis_4(D)].afg
	mov	QWORD PTR [rdx+120], rax	# D.9607_128->points, D.9606
	mov	rax, QWORD PTR [rbx+168]	# D.9607, MEM[(struct WaveDrawBox *)vthis_4(D)].afg
	movzx	edx, WORD PTR [rbx+204]	# D.9521, MEM[(struct WaveDrawBox *)vthis_4(D)].xrange
	mov	WORD PTR [rax+128], dx	# D.9607_130->points_size, D.9521
.L50:
	cmp	QWORD PTR [rbx+184], 0	# MEM[(struct WaveDrawBox *)vthis_4(D)].samples,
	jne	.L51	#,
	movzx	edi, WORD PTR [rbx+198]	# MEM[(struct WaveDrawBox *)vthis_4(D)].sample_freq, MEM[(struct WaveDrawBox *)vthis_4(D)].sample_freq
	mov	ecx, 250	#,
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 4	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+184], rax	# MEM[(struct WaveDrawBox *)vthis_4(D)].samples, D.9612
	mov	rdx, QWORD PTR [rbx+168]	# D.9607, MEM[(struct WaveDrawBox *)vthis_4(D)].afg
	mov	QWORD PTR [rdx+104], rax	# D.9607_136->samples, D.9612
	mov	rax, QWORD PTR [rbx+168]	# D.9607, MEM[(struct WaveDrawBox *)vthis_4(D)].afg
	movzx	edx, WORD PTR [rbx+198]	# D.9504, MEM[(struct WaveDrawBox *)vthis_4(D)].sample_freq
	mov	WORD PTR [rax+112], dx	# D.9607_138->samples_size, D.9504
.L51:
	mov	BYTE PTR [rbx+159], 1	# MEM[(struct Widget *)vthis_4(D)].visible,
.L34:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	WaveDrawBox_vrefresh, .-WaveDrawBox_vrefresh
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"WaveDrawBox: [x,y,w,h]=[%hu,%hu,%hu,%hu], freq=%hu, bunch=%hu, (zero)=(%hu,%hu), xrel_range=(%hu,%hu)[%hu], yrel_range=(%hu,%hu)[%hu+1], (padx,pady)=(%hu,%hu), my=%hu"
	.text
	.globl	WaveDrawBox_vtoString
	.type	WaveDrawBox_vtoString, @function
WaveDrawBox_vtoString:
.LFB104:
	.cfi_startproc
	sub	rsp, 136	#,
	.cfi_def_cfa_offset 144
	mov	eax, 0	# this,
	movsx	r9d, WORD PTR [rax+96]	# MEM[(struct Widget *)this_1(D)].pos.x, MEM[(struct Widget *)this_1(D)].pos.x
	movzx	edx, WORD PTR [rax+208]	# this_1(D)->my, this_1(D)->my
	mov	DWORD PTR [rsp+120], edx	#, this_1(D)->my
	movzx	edx, WORD PTR [rax+202]	# this_1(D)->pady, this_1(D)->pady
	mov	DWORD PTR [rsp+112], edx	#, this_1(D)->pady
	movzx	edx, WORD PTR [rax+200]	# this_1(D)->padx, this_1(D)->padx
	mov	DWORD PTR [rsp+104], edx	#, this_1(D)->padx
	movzx	edx, WORD PTR [rax+206]	# this_1(D)->yrange, this_1(D)->yrange
	mov	DWORD PTR [rsp+96], edx	#, this_1(D)->yrange
	movzx	edx, WORD PTR [rax+224]	# this_1(D)->rely_max, this_1(D)->rely_max
	mov	DWORD PTR [rsp+88], edx	#, this_1(D)->rely_max
	movzx	edx, WORD PTR [rax+222]	# this_1(D)->rely_min, this_1(D)->rely_min
	mov	DWORD PTR [rsp+80], edx	#, this_1(D)->rely_min
	movzx	edx, WORD PTR [rax+204]	# this_1(D)->xrange, this_1(D)->xrange
	mov	DWORD PTR [rsp+72], edx	#, this_1(D)->xrange
	movzx	edx, WORD PTR [rax+220]	# this_1(D)->relx_max, this_1(D)->relx_max
	mov	DWORD PTR [rsp+64], edx	#, this_1(D)->relx_max
	movzx	edx, WORD PTR [rax+218]	# this_1(D)->relx_min, this_1(D)->relx_min
	mov	DWORD PTR [rsp+56], edx	#, this_1(D)->relx_min
	movzx	edx, WORD PTR [rax+212]	# this_1(D)->zero_y, this_1(D)->zero_y
	mov	DWORD PTR [rsp+48], edx	#, this_1(D)->zero_y
	movzx	edx, WORD PTR [rax+210]	# this_1(D)->zero_x, this_1(D)->zero_x
	mov	DWORD PTR [rsp+40], edx	#, this_1(D)->zero_x
	movzx	edx, WORD PTR [rax+196]	# this_1(D)->bunch, this_1(D)->bunch
	mov	DWORD PTR [rsp+32], edx	#, this_1(D)->bunch
	movzx	edx, WORD PTR [rax+198]	# this_1(D)->sample_freq, this_1(D)->sample_freq
	mov	DWORD PTR [rsp+24], edx	#, this_1(D)->sample_freq
	movzx	edx, WORD PTR [rax+102]	# MEM[(struct Widget *)this_1(D)].pos.h, MEM[(struct Widget *)this_1(D)].pos.h
	mov	DWORD PTR [rsp+16], edx	#, MEM[(struct Widget *)this_1(D)].pos.h
	movzx	edx, WORD PTR [rax+100]	# MEM[(struct Widget *)this_1(D)].pos.w, MEM[(struct Widget *)this_1(D)].pos.w
	mov	DWORD PTR [rsp+8], edx	#, MEM[(struct Widget *)this_1(D)].pos.w
	movsx	eax, WORD PTR [rax+98]	# MEM[(struct Widget *)this_1(D)].pos.y, MEM[(struct Widget *)this_1(D)].pos.y
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Widget *)this_1(D)].pos.y
	mov	r8d, OFFSET FLAT:.LC8	#,
	mov	ecx, 256	#,
	mov	edx, 1	#,
	mov	esi, 256	#,
	mov	edi, OFFSET FLAT:str_id.9324	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9324	#,
	add	rsp, 136	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE104:
	.size	WaveDrawBox_vtoString, .-WaveDrawBox_vtoString
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"%20s:\tWithin context: afg=%p, h=%hu\n"
	.align 8
.LC10:
	.string	"WaveDrawBox_new: ERROR AudioFromGraph object cannot be NULL\n"
	.text
	.globl	WaveDrawBox_new
	.type	WaveDrawBox_new, @function
WaveDrawBox_new:
.LFB107:
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
	jne	.L56	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9340	#,
	call	Static_nullThis2	#
	movzx	r9d, r12w	#, h
	mov	r8, rbp	#, afg
	mov	ecx, OFFSET FLAT:__FUNCTION__.9340	#,
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L57	#
.L56:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	WORD PTR [rbx+102], r12w	# MEM[(struct Widget *)this_2(D)].pos.h, h
	mov	BYTE PTR [rbx+160], 1	# MEM[(struct Widget *)this_2(D)].mevent,
	mov	QWORD PTR [rbx+56], OFFSET FLAT:WaveDrawBox_mousePressed	# MEM[(struct Widget *)this_2(D)].mevent_internal.press,
	mov	QWORD PTR [rbx+176], 0	# this_2(D)->points,
	mov	QWORD PTR [rbx+184], 0	# this_2(D)->samples,
	mov	QWORD PTR [rbx+168], rbp	# this_2(D)->afg, afg
	test	rbp, rbp	# afg
	jne	.L58	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 60	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC10	#,
	call	fwrite	#
.L58:
	mov	DWORD PTR [rbx+192], 0x00000000	# this_2(D)->yp,
	mov	WORD PTR [rbx+196], 0	# this_2(D)->bunch,
	mov	WORD PTR [rbx+198], -21436	# this_2(D)->sample_freq,
	mov	WORD PTR [rbx+200], 0	# this_2(D)->padx,
	mov	WORD PTR [rbx+202], 0	# this_2(D)->pady,
	mov	WORD PTR [rbx+204], 0	# this_2(D)->xrange,
	mov	WORD PTR [rbx+206], 0	# this_2(D)->yrange,
	mov	WORD PTR [rbx+208], 0	# this_2(D)->my,
	mov	WORD PTR [rbx+210], 0	# this_2(D)->zero_x,
	mov	WORD PTR [rbx+212], 0	# this_2(D)->zero_y,
	mov	WORD PTR [rbx+214], 0	# this_2(D)->relx,
	mov	WORD PTR [rbx+216], 0	# this_2(D)->rely,
	mov	WORD PTR [rbx+218], 0	# this_2(D)->relx_min,
	mov	WORD PTR [rbx+220], 0	# this_2(D)->relx_max,
	mov	WORD PTR [rbx+222], 0	# this_2(D)->rely_min,
	mov	WORD PTR [rbx+224], 0	# this_2(D)->rely_max,
	mov	WORD PTR [rbx+226], 0	# this_2(D)->xp,
.L57:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
	.size	WaveDrawBox_new, .-WaveDrawBox_new
	.globl	WaveDrawBox_clearData
	.type	WaveDrawBox_clearData, @function
WaveDrawBox_clearData:
.LFB108:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	QWORD PTR [rdi+176], 0	# this_6(D)->points,
	je	.L61	#,
	cmp	WORD PTR [rdi+204], 0	# this_6(D)->xrange,
	je	.L62	#,
	mov	eax, 0	# i,
	xorps	xmm0, xmm0	# tmp96
.L63:
	movzx	ecx, ax	# i, i
	mov	rdx, QWORD PTR [rdi+176]	# this_6(D)->points, this_6(D)->points
	movss	DWORD PTR [rdx+rcx*8], xmm0	# D.9359_13->fvalue, tmp96
	add	eax, 1	# i,
	cmp	WORD PTR [rdi+204], ax	# this_6(D)->xrange, i
	ja	.L63	#,
	jmp	.L62	#
.L67:
	cmp	WORD PTR [rdi+198], 0	# this_6(D)->sample_freq,
	je	.L66	#,
	mov	eax, 0	# i,
	xorps	xmm0, xmm0	# tmp95
.L65:
	movzx	ecx, ax	# i, i
	mov	rdx, QWORD PTR [rdi+184]	# this_6(D)->samples, this_6(D)->samples
	movss	DWORD PTR [rdx+rcx*4], xmm0	# *D.9366_22, tmp95
	add	eax, 1	# i,
	cmp	WORD PTR [rdi+198], ax	# this_6(D)->sample_freq, i
	ja	.L65	#,
.L66:
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_6(D)].class, MEM[(struct coObject *)this_6(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9370_25->vtable, D.9370_25->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9371_26 + 8B], MEM[(const void * *)D.9371_26 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9373_28].refresh
	jmp	.L60	#
.L62:
	cmp	QWORD PTR [rdi+184], 0	# this_6(D)->samples,
	jne	.L67	#,
	.p2align 4,,3
	jmp	.L66	#
.L61:
	cmp	QWORD PTR [rdi+184], 0	# this_6(D)->samples,
	jne	.L67	#,
.L60:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE108:
	.size	WaveDrawBox_clearData, .-WaveDrawBox_clearData
	.globl	WaveDrawBox_class
	.data
	.align 8
	.type	WaveDrawBox_class, @object
	.size	WaveDrawBox_class, 8
WaveDrawBox_class:
	.quad	type
	.local	str_id.9324
	.comm	str_id.9324,256,32
	.section	.rodata.str1.1
.LC12:
	.string	"WaveDrawBox"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	232
# name:
	.quad	.LC12
# vtable:
	.quad	vtable
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9340, @object
	.size	__FUNCTION__.9340, 16
__FUNCTION__.9340:
	.string	"WaveDrawBox_new"
	.data
	.align 16
	.type	vtable, @object
	.size	vtable, 16
vtable:
	.quad	override_coIObject
	.quad	override_IWidget
	.section	.rodata
	.align 16
	.type	override_coIObject, @object
	.size	override_coIObject, 16
override_coIObject:
# destroy:
	.quad	WaveDrawBox_vdestroy
# toString:
	.quad	WaveDrawBox_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Widget_vmevent
# draw:
	.quad	Widget_vdraw
# refresh:
	.quad	WaveDrawBox_vrefresh
# drag:
	.quad	Widget_vdrag
# setVisible:
	.quad	Widget_vsetVisible
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
