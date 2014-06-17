	.file	"HistStretchGraph.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT HistStretchGraph.c -march=core2 -mcx16
# -msahf -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp
# -mno-fma -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx
# -mno-avx2 -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c
# -mno-fsgsbase --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/HistStretchGraph.asm
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
	.string	"HistStretchGraph.c"
	.text
	.type	HistStretchGraph_vdestroy, @function
HistStretchGraph_vdestroy:
.LFB97:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rbp, rdi	# vthis, vthis
	cmp	QWORD PTR [rdi+512], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect,
	je	.L2	#,
	cmp	WORD PTR [rdi+536], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].size,
	je	.L3	#,
	mov	ebx, 0	# i,
.L4:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*8]	# tmp82,
	lea	rdx, [rax+rdx*2]	# tmp84,
	mov	rax, QWORD PTR [rbp+512]	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect, MEM[(struct HistStretchGraph *)vthis_2(D)].rect
	lea	rdi, [rax+rdx*8]	# tmp86,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR [rbp+536], bx	# MEM[(struct HistStretchGraph *)vthis_2(D)].size, i
	ja	.L4	#,
.L3:
	mov	rdi, QWORD PTR [rbp+512]	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect, MEM[(struct HistStretchGraph *)vthis_2(D)].rect
	mov	edx, 244	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbp+512], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].rect,
.L2:
	lea	rdi, [rbp+144]	# tmp89,
	call	delete	#
	lea	rdi, [rbp+320]	# tmp90,
	call	delete	#
	mov	rdi, QWORD PTR [rbp+520]	# MEM[(struct HistStretchGraph *)vthis_2(D)].x, MEM[(struct HistStretchGraph *)vthis_2(D)].x
	mov	edx, 251	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	rdi, QWORD PTR [rbp+528]	# MEM[(struct HistStretchGraph *)vthis_2(D)].y, MEM[(struct HistStretchGraph *)vthis_2(D)].y
	mov	edx, 251	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbp+528], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].y,
	mov	QWORD PTR [rbp+520], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].x,
	mov	rdi, QWORD PTR [rbp+504]	# MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf, MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf
	mov	edx, 254	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wSDL_FreeSurface	#
	mov	QWORD PTR [rbp+504], 0	# MEM[(struct HistStretchGraph *)vthis_2(D)].bg_surf,
	mov	rdi, rbp	#, vthis
	call	Widget_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	HistStretchGraph_vdestroy, .-HistStretchGraph_vdestroy
	.section	.rodata.str1.1
.LC1:
	.string	"hsg=NULL"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"HistStretchGraph: (x,y,w,h,maxx,maxy)=[%hu,%hu,%hu,%hu,%hu,%hu], (ax,ay)=[%hu,%hu], (tw,th)=[%hu,%hu], size=%hu"
	.text
	.globl	HistStretchGraph_toString
	.type	HistStretchGraph_toString, @function
HistStretchGraph_toString:
.LFB93:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC1	# D.9130,
	test	rdi, rdi	# hsg
	je	.L12	#,
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	movsx	r9d, WORD PTR [rdi+56]	# MEM[(struct Widget *)hsg_2(D)].pos.x, MEM[(struct Widget *)hsg_2(D)].pos.x
	movzx	eax, WORD PTR [rdi+536]	# hsg_2(D)->size, hsg_2(D)->size
	mov	DWORD PTR [rsp+72], eax	#, hsg_2(D)->size
	movzx	eax, WORD PTR [rdi+206]	# hsg_2(D)->labelX.widget.pos.h, hsg_2(D)->labelX.widget.pos.h
	mov	DWORD PTR [rsp+64], eax	#, hsg_2(D)->labelX.widget.pos.h
	movzx	eax, WORD PTR [rdi+204]	# hsg_2(D)->labelX.widget.pos.w, hsg_2(D)->labelX.widget.pos.w
	mov	DWORD PTR [rsp+56], eax	#, hsg_2(D)->labelX.widget.pos.w
	movzx	eax, WORD PTR [rdi+544]	# hsg_2(D)->ay, hsg_2(D)->ay
	mov	DWORD PTR [rsp+48], eax	#, hsg_2(D)->ay
	movzx	eax, WORD PTR [rdi+542]	# hsg_2(D)->ax, hsg_2(D)->ax
	mov	DWORD PTR [rsp+40], eax	#, hsg_2(D)->ax
	movzx	eax, WORD PTR [rdi+114]	# MEM[(struct Widget *)hsg_2(D)].maxy, MEM[(struct Widget *)hsg_2(D)].maxy
	mov	DWORD PTR [rsp+32], eax	#, MEM[(struct Widget *)hsg_2(D)].maxy
	movzx	eax, WORD PTR [rdi+112]	# MEM[(struct Widget *)hsg_2(D)].maxx, MEM[(struct Widget *)hsg_2(D)].maxx
	mov	DWORD PTR [rsp+24], eax	#, MEM[(struct Widget *)hsg_2(D)].maxx
	movzx	eax, WORD PTR [rdi+62]	# MEM[(struct Widget *)hsg_2(D)].pos.h, MEM[(struct Widget *)hsg_2(D)].pos.h
	mov	DWORD PTR [rsp+16], eax	#, MEM[(struct Widget *)hsg_2(D)].pos.h
	movzx	eax, WORD PTR [rdi+60]	# MEM[(struct Widget *)hsg_2(D)].pos.w, MEM[(struct Widget *)hsg_2(D)].pos.w
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Widget *)hsg_2(D)].pos.w
	movsx	eax, WORD PTR [rdi+58]	# MEM[(struct Widget *)hsg_2(D)].pos.y, MEM[(struct Widget *)hsg_2(D)].pos.y
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Widget *)hsg_2(D)].pos.y
	mov	r8d, OFFSET FLAT:.LC2	#,
	mov	ecx, 160	#,
	mov	edx, 1	#,
	mov	esi, 160	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.9130,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
.L12:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	HistStretchGraph_toString, .-HistStretchGraph_toString
	.globl	HistStretchGraph_setCountPoints
	.type	HistStretchGraph_setCountPoints, @function
HistStretchGraph_setCountPoints:
.LFB94:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	rbx, rdi	# hsg, hsg
	mov	r12d, esi	# size, size
	movzx	eax, WORD PTR [rdi+536]	# D.9074, hsg_3(D)->size
	cmp	ax, si	# D.9074, size
	jne	.L14	#,
	cmp	QWORD PTR [rdi+520], 0	# hsg_3(D)->x,
	jne	.L13	#,
	jmp	.L31	#
.L14:
	movzx	ecx, si	# size, size
	mov	eax, 256	# tmp140,
	mov	edx, eax	# tmp139, tmp140
	sar	edx, 31	# tmp139,
	idiv	ecx	# size
	mov	r14d, eax	# dx, tmp138
	mov	rdi, QWORD PTR [rdi+520]	# D.9077, hsg_3(D)->x
	test	rdi, rdi	# D.9077
	je	.L17	#,
	mov	edx, 60	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
.L17:
	mov	rdi, QWORD PTR [rbx+528]	# D.9084, hsg_3(D)->y
	test	rdi, rdi	# D.9084
	je	.L18	#,
	mov	edx, 61	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
.L18:
	cmp	QWORD PTR [rbx+512], 0	# hsg_3(D)->rect,
	je	.L19	#,
	cmp	WORD PTR [rbx+536], 0	# hsg_3(D)->size,
	je	.L20	#,
	mov	ebp, 0	# i,
.L21:
	movzx	eax, bp	# i, i
	lea	rdx, [rax+rax*8]	# tmp144,
	lea	rdx, [rax+rdx*2]	# tmp146,
	mov	rax, QWORD PTR [rbx+512]	# hsg_3(D)->rect, hsg_3(D)->rect
	lea	rdi, [rax+rdx*8]	# tmp148,
	call	delete	#
	add	ebp, 1	# i,
	cmp	WORD PTR [rbx+536], bp	# hsg_3(D)->size, i
	ja	.L21	#,
.L20:
	mov	rdi, QWORD PTR [rbx+512]	# hsg_3(D)->rect, hsg_3(D)->rect
	mov	edx, 64	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
.L19:
	mov	WORD PTR [rbx+536], r12w	# hsg_3(D)->size, size
	movzx	r12d, r12w	# D.9093, size
	mov	ecx, 68	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 2	#,
	mov	rdi, r12	#, D.9093
	call	wcalloc	#
	mov	QWORD PTR [rbx+520], rax	# hsg_3(D)->x, D.9094
	mov	ecx, 69	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 2	#,
	mov	rdi, r12	#, D.9093
	call	wcalloc	#
	mov	QWORD PTR [rbx+528], rax	# hsg_3(D)->y, D.9095
	mov	ecx, 70	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 152	#,
	mov	rdi, r12	#, D.9093
	call	wcalloc	#
	mov	QWORD PTR [rbx+512], rax	# hsg_3(D)->rect, D.9096
	mov	rax, QWORD PTR [rbx+520]	# D.9077, hsg_3(D)->x
	mov	WORD PTR [rax], 0	# *D.9077_29,
	movzx	edx, WORD PTR [rbx+536]	# hsg_3(D)->size, hsg_3(D)->size
	mov	rax, QWORD PTR [rbx+520]	# hsg_3(D)->x, hsg_3(D)->x
	mov	WORD PTR [rax-2+rdx*2], 255	# *D.9100_35,
	mov	r12d, 0	# i,
	cmp	WORD PTR [rbx+536], 0	# hsg_3(D)->size,
	jne	.L30	#,
	jmp	.L13	#
.L24:
	test	r12w, r12w	# i
	je	.L30	#,
	movzx	edx, r12w	# i, i
	movzx	eax, ax	# D.9074, D.9074
	sub	eax, 1	# tmp156,
	cmp	edx, eax	# i, tmp156
	je	.L30	#,
	mov	rax, QWORD PTR [rbx+520]	# D.9077, hsg_3(D)->x
	movzx	edx, r12w	# D.9090, i
	mov	ecx, r14d	# tmp158, dx
	add	cx, WORD PTR [rax-2+rdx*2]	# tmp158, *D.9113_50
	mov	WORD PTR [rax+rdx*2], cx	# *D.9109_45, tmp158
.L30:
	movzx	ebp, r12w	# D.9090, i
	lea	rax, [rbp+0+rbp*8]	# tmp162,
	lea	rdx, [rbp+0+rax*2]	# tmp164,
	mov	rax, QWORD PTR [rbx+512]	# hsg_3(D)->rect, hsg_3(D)->rect
	lea	r13, [rax+rdx*8]	# rect,
	mov	rax, QWORD PTR [rbx+520]	# hsg_3(D)->x, hsg_3(D)->x
	movzx	edx, WORD PTR [rax+rbp*2]	# D.9117, *D.9109_64
	mov	rax, QWORD PTR [rbx+528]	# hsg_3(D)->y, hsg_3(D)->y
	mov	WORD PTR [rax+rbp*2], dx	# *D.9116_60, D.9117
	mov	esi, 16711935	#,
	mov	rdi, r13	#, rect
	call	Rectangle_new	#
	mov	rax, QWORD PTR [rbx+528]	# hsg_3(D)->y, hsg_3(D)->y
	movzx	eax, WORD PTR [rax+rbp*2]	# *D.9116_70, *D.9116_70
	add	eax, eax	# tmp170
	movzx	edx, WORD PTR [rbx+540]	# tmp172, hsg_3(D)->zero_y
	sub	edx, eax	# tmp172, tmp170
	movzx	edx, dx	# tmp174, tmp172
	mov	rax, QWORD PTR [rbx+520]	# hsg_3(D)->x, hsg_3(D)->x
	movzx	esi, WORD PTR [rax+rbp*2]	# *D.9109_78, *D.9109_78
	movzx	eax, WORD PTR [rbx+538]	# hsg_3(D)->zero_x, hsg_3(D)->zero_x
	lea	esi, [rax+rsi*2]	# tmp178,
	movzx	esi, si	# tmp180, tmp178
	mov	rdi, r13	#, rect
	call	Rectangle_setCenter	#
	mov	edx, 12	#,
	mov	esi, 12	#,
	mov	rdi, r13	#, rect
	call	Rectangle_setSize	#
	mov	rdi, r13	#, rect
	call	Rectangle_refresh	#
	add	r12d, 1	# i,
	movzx	eax, WORD PTR [rbx+536]	# D.9074, hsg_3(D)->size
	cmp	ax, r12w	# D.9074, i
	ja	.L24	#,
	jmp	.L13	#
.L31:
	movzx	ecx, ax	# D.9074, D.9074
	mov	eax, 256	# tmp185,
	mov	edx, eax	# tmp184, tmp185
	sar	edx, 31	# tmp184,
	idiv	ecx	# D.9074
	mov	r14d, eax	# dx, tmp183
	jmp	.L17	#
.L13:
	pop	rbx	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	HistStretchGraph_setCountPoints, .-HistStretchGraph_setCountPoints
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"HistStretchGraph_refresh2> SDL_BlitSurface(hsg->bg_surf, NULL, widget->surf, NULL) failed: %s\n"
	.align 8
.LC4:
	.string	"HistStretchGraph_refresh2> hsg->rect[0] is not visible\n"
	.align 8
.LC5:
	.string	"HistStretchGraph_refresh2> hsg->rect[%hu] is not visible\n"
	.align 8
.LC6:
	.string	"HistStretchGraph_refresh2> Failed to blit rectangle[%hu]: %s failed: %s\n"
	.text
	.globl	HistStretchGraph_refresh2
	.type	HistStretchGraph_refresh2, @function
HistStretchGraph_refresh2:
.LFB95:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	sub	rsp, 32	#,
	.cfi_def_cfa_offset 80
	mov	rbp, rdi	# hsg, hsg
	mov	rdx, QWORD PTR [rdi+48]	# MEM[(struct Widget *)hsg_5(D)].surf, MEM[(struct Widget *)hsg_5(D)].surf
	mov	rdi, QWORD PTR [rdi+504]	# hsg_5(D)->bg_surf, hsg_5(D)->bg_surf
	mov	ecx, 0	#,
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9028
	je	.L34	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9031
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbp+130], 0	# MEM[(struct Widget *)hsg_5(D)].visible,
	mov	eax, 1	# D.9033,
	jmp	.L35	#
.L34:
	mov	rdi, QWORD PTR [rbp+512]	# D.9034, hsg_5(D)->rect
	cmp	BYTE PTR [rdi+130], 0	# D.9034_15->widget.visible,
	jne	.L36	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 55	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC4	#,
	call	fwrite	#
	mov	BYTE PTR [rbp+130], 0	# MEM[(struct Widget *)hsg_5(D)].visible,
	mov	eax, 4	# D.9033,
	jmp	.L35	#
.L36:
	lea	rdx, [rsp+18]	# tmp115,
	lea	rsi, [rsp+16]	#,
	call	Rectangle_getCenter	#
	cmp	WORD PTR [rbp+536], 0	# hsg_5(D)->size,
	je	.L37	#,
	mov	rbx, QWORD PTR [rbp+512]	# D.9040, hsg_5(D)->rect
	mov	r14, rbx	# wt_rect, D.9040
	cmp	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)D.9040_102].visible,
	je	.L44	#,
	mov	r12d, 0	# i,
	mov	r13d, 1	# t,
	jmp	.L47	#
.L43:
	movzx	eax, r12w	# i, i
	lea	rdx, [rax+rax*8]	# tmp120,
	lea	rdx, [rax+rdx*2]	# tmp122,
	mov	rax, QWORD PTR [rbp+512]	# hsg_5(D)->rect, hsg_5(D)->rect
	lea	rbx, [rax+rdx*8]	# D.9040,
	mov	r14, rbx	# wt_rect, D.9040
	cmp	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)D.9040_24].visible,
	jne	.L40	#,
	jmp	.L38	#
.L44:
	mov	r12d, 0	# i,
.L38:
	movzx	ecx, r12w	# i, i
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbp+130], 0	# MEM[(struct Widget *)hsg_5(D)].visible,
	mov	eax, 4	# D.9033,
	jmp	.L35	#
.L40:
	test	r12w, r12w	# i
	je	.L47	#,
	mov	esi, 1	# D.9047,
	and	rsi, r13	# D.9047, t
	sal	rsi, 2	# tmp128,
	lea	rdx, [rsp+18+rsi]	# tmp130,
	lea	rax, [rsp+16]	#,
	add	rsi, rax	# tmp134,
	mov	rdi, rbx	#, D.9040
	call	Rectangle_getCenter	#
	xor	r13d, 1	# t,
	movsx	r8d, WORD PTR [rsp+22]	# line, line
	movsx	ecx, WORD PTR [rsp+20]	# line, line
	movsx	edx, WORD PTR [rsp+18]	# line, line
	movsx	esi, WORD PTR [rsp+16]	# line, line
	mov	rdi, QWORD PTR [rbp+48]	# MEM[(struct Widget *)hsg_5(D)].surf, MEM[(struct Widget *)hsg_5(D)].surf
	mov	DWORD PTR [rsp], -16711681	#,
	mov	r9d, 2	#,
	call	thickLineColor	#
.L47:
	lea	rcx, [rbx+56]	# tmp141,
	mov	rdx, QWORD PTR [rbp+48]	# MEM[(struct Widget *)hsg_5(D)].surf, MEM[(struct Widget *)hsg_5(D)].surf
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)D.9040_118].surf, MEM[(struct Widget *)D.9040_118].surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9066
	je	.L42	#,
	call	SDL_GetError	#
	mov	rbx, rax	# D.9069,
	mov	rdi, r14	#, wt_rect
	call	Widget_toString	#
	mov	r8, rax	# D.9070,
	movzx	ecx, r12w	# i, i
	mov	r9, rbx	#, D.9069
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbp+130], 0	# MEM[(struct Widget *)hsg_5(D)].visible,
	mov	eax, 5	# D.9033,
	jmp	.L35	#
.L42:
	add	r12d, 1	# i,
	cmp	WORD PTR [rbp+536], r12w	# hsg_5(D)->size, i
	ja	.L43	#,
.L37:
	mov	BYTE PTR [rbp+130], 1	# MEM[(struct Widget *)hsg_5(D)].visible,
	mov	eax, 0	# D.9033,
.L35:
	add	rsp, 32	#,
	.cfi_def_cfa_offset 48
	pop	rbx	#
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	HistStretchGraph_refresh2, .-HistStretchGraph_refresh2
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"HistStretchGraph_refresh(): Failed on assertion ((! hsg->labelX.widget.visible) || (! hsg->labelY.widget.visible))\n"
	.align 8
.LC8:
	.string	"HistStretchGraph_refresh: Failed to CreateRGBSurface widget->surf: %s\n"
	.align 8
.LC9:
	.string	"HistStretchGraph_refresh: Failed to CreateRGBSurface hsg->bg_surf: %s\n"
	.align 8
.LC10:
	.string	"HistStretchGraph_refresh Failed to fill background surface (FillRect)\n"
	.align 8
.LC11:
	.string	"HistStretchGraph_refresh> [1] SDL_BlitSurface(hsg->labelX.widget.surf, NULL, hsg->bg_surf, &(hsg->labelY.widget.pos))) failed: %s\n"
	.align 8
.LC12:
	.string	"HistStretchGraph_refresh> [2] SDL_BlitSurface(hsg->labelX.widget.surf, NULL, hsg->bg_surf, &(hsg->labelX.widget.pos))) failed: %s\n"
	.align 8
.LC13:
	.string	"HistStretchGraph_refresh2 > Failed. Exit with code %d\n"
	.text
	.globl	HistStretchGraph_refresh
	.type	HistStretchGraph_refresh, @function
HistStretchGraph_refresh:
.LFB96:
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
	mov	rbx, rdi	# hsg, hsg
	cmp	BYTE PTR [rdi+274], 0	# hsg_3(D)->labelX.widget.visible,
	je	.L50	#,
	cmp	BYTE PTR [rdi+450], 0	# hsg_3(D)->labelY.widget.visible,
	jne	.L51	#,
.L50:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 115	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# hsg_3(D)->widget.visible,
	jmp	.L49	#
.L51:
	movzx	ecx, WORD PTR [rdi+204]	# tw, hsg_3(D)->labelX.widget.pos.w
	movzx	r12d, WORD PTR [rdi+206]	# th, hsg_3(D)->labelX.widget.pos.h
	lea	eax, [rcx+14]	# D.8930,
	mov	WORD PTR [rdi+542], ax	# hsg_3(D)->ax, D.8930
	lea	edx, [r12+14]	# D.8931,
	mov	WORD PTR [rdi+544], dx	# hsg_3(D)->ay, D.8931
	shr	cx	# tw
	mov	WORD PTR [rsp+28], cx	# %sfp, tw
	lea	eax, [rcx+522+rax*2]	# D.8936,
	mov	WORD PTR [rdi+60], ax	# MEM[(struct Widget *)hsg_3(D)].pos.w, D.8936
	shr	r12w	# D.8939
	lea	edx, [r12+522+rdx*2]	# D.8941,
	mov	WORD PTR [rdi+62], dx	# MEM[(struct Widget *)hsg_3(D)].pos.h, D.8941
	mov	ecx, eax	# tmp229, D.8936
	add	cx, WORD PTR [rdi+56]	# tmp229, MEM[(struct Widget *)hsg_3(D)].pos.x
	mov	WORD PTR [rdi+112], cx	# MEM[(struct Widget *)hsg_3(D)].maxx, tmp229
	mov	ecx, edx	# tmp231, D.8941
	add	cx, WORD PTR [rdi+58]	# tmp231, MEM[(struct Widget *)hsg_3(D)].pos.y
	mov	WORD PTR [rdi+114], cx	# MEM[(struct Widget *)hsg_3(D)].maxy, tmp231
	cmp	QWORD PTR [rdi+48], 0	# MEM[(struct Widget *)hsg_3(D)].surf,
	jne	.L53	#,
	movzx	esi, dx	# D.8941, D.8941
	movzx	edi, ax	# D.8936, D.8936
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)hsg_3(D)].surf, D.8955
	test	rax, rax	# D.8955
	jne	.L53	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8958
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)hsg_3(D)].visible,
	jmp	.L49	#
.L53:
	cmp	QWORD PTR [rbx+504], 0	# hsg_3(D)->bg_surf,
	jne	.L54	#,
	movzx	esi, WORD PTR [rbx+62]	# MEM[(struct Widget *)hsg_3(D)].pos.h, MEM[(struct Widget *)hsg_3(D)].pos.h
	movzx	edi, WORD PTR [rbx+60]	# MEM[(struct Widget *)hsg_3(D)].pos.w, MEM[(struct Widget *)hsg_3(D)].pos.w
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+504], rax	# hsg_3(D)->bg_surf, D.8962
	test	rax, rax	# D.8962
	jne	.L54	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8965
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)hsg_3(D)].visible,
	jmp	.L49	#
.L54:
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	edx, 16777215	#,
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.8966
	je	.L55	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 70	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC10	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)hsg_3(D)].visible,
	jmp	.L49	#
.L55:
	movzx	edx, WORD PTR [rbx+544]	# D.8937, hsg_3(D)->ay
	lea	r13d, [r12+519+rdx]	# tmp239,
	movsx	r13d, r13w	# D.8971, tmp239
	movsx	esi, WORD PTR [rbx+542]	# D.8973, hsg_3(D)->ax
	movsx	edx, dx	# D.8937, D.8937
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, r13d	#, D.8971
	mov	ecx, esi	#, D.8973
	call	thickLineColor	#
	movzx	esi, WORD PTR [rbx+542]	# D.8932, hsg_3(D)->ax
	lea	ebp, [rsi+134]	# x2,
	movzx	edx, bp	# x2, x2
	movzx	eax, si	# D.8932, D.8932
	add	eax, 517	# tmp244,
	cmp	edx, eax	# x2, tmp244
	jg	.L56	#,
	mov	r14d, -1212696577	# tmp293,
.L63:
	movsx	edx, WORD PTR [rbx+544]	# hsg_3(D)->ay, hsg_3(D)->ay
	movsx	esi, bp	# x2, x2
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	r8d, r14d	#, tmp293
	mov	ecx, r13d	#, D.8971
	call	vlineColor	#
	sub	bp, -128	# x2,
	movzx	esi, WORD PTR [rbx+542]	# D.8932, hsg_3(D)->ax
	movzx	edx, bp	# x2, x2
	movzx	eax, si	# D.8932, D.8932
	add	eax, 517	# tmp250,
	cmp	edx, eax	# x2, tmp250
	jle	.L63	#,
.L56:
	movsx	edx, WORD PTR [rbx+544]	# hsg_3(D)->ay, hsg_3(D)->ay
	add	si, 517	# tmp252,
	movsx	esi, si	# tmp253, tmp252
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	r8d, -1212696577	#,
	mov	ecx, r13d	#, D.8971
	call	vlineColor	#
	movzx	esi, WORD PTR [rbx+542]	# D.8932, hsg_3(D)->ax
	movzx	ecx, WORD PTR [rbx+60]	# tmp255, MEM[(struct Widget *)hsg_3(D)].pos.w
	sub	ecx, esi	# tmp255, D.8932
	movsx	ecx, cx	# tmp257, tmp255
	movsx	esi, si	# D.8932, D.8932
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, r13d	#, D.8971
	mov	edx, r13d	#, D.8971
	call	thickLineColor	#
	mov	r15d, r12d	# D.8969, D.8939
	add	r15w, WORD PTR [rbx+544]	# D.8969, hsg_3(D)->ay
	lea	r13d, [r15+7]	# y1,
	mov	WORD PTR [rbx+376], 7	# hsg_3(D)->labelY.widget.pos.x,
	mov	eax, r13d	# tmp261, y1
	sub	eax, r12d	# tmp261, D.8939
	mov	WORD PTR [rbx+378], ax	# hsg_3(D)->labelY.widget.pos.y, tmp261
	lea	rcx, [rbx+376]	# tmp262,
	mov	rdx, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	rdi, QWORD PTR [rbx+368]	# hsg_3(D)->labelY.widget.surf, hsg_3(D)->labelY.widget.surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.8991
	je	.L58	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8994
	mov	edx, OFFSET FLAT:.LC11	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)hsg_3(D)].visible,
	jmp	.L49	#
.L58:
	movzx	eax, WORD PTR [rbx+542]	# D.8932, hsg_3(D)->ax
	lea	edx, [rax+516]	#,
	mov	WORD PTR [rsp+30], dx	# %sfp,
	lea	ebp, [r15+8]	# y2,
	movsx	r12d, dx	# D.8998,
	movsx	ecx, bp	# y2, y2
	add	eax, 2	# tmp266,
	movsx	esi, ax	# tmp267, tmp266
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	r8d, -1212696577	#,
	mov	edx, r12d	#, D.8998
	call	hlineColor	#
	movzx	esi, WORD PTR [rbx+542]	# D.8932, hsg_3(D)->ax
	movsx	edx, r13w	# D.8971, y1
	lea	ecx, [rsi+7]	# tmp269,
	movsx	ecx, cx	# tmp270, tmp269
	movsx	esi, si	# D.8932, D.8932
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	mov	r8d, edx	#, D.8971
	call	thickLineColor	#
	lea	r13d, [r15+519]	# y1,
	cmp	bp, r13w	# y2, y1
	jae	.L59	#,
	mov	r14d, -1212696577	# tmp292,
.L62:
	sub	bp, -128	# y2,
	movsx	ecx, bp	# y2, y2
	movzx	esi, WORD PTR [rbx+542]	# tmp274, hsg_3(D)->ax
	add	esi, 2	# tmp274,
	movsx	esi, si	# tmp276, tmp274
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	r8d, r14d	#, tmp292
	mov	edx, r12d	#, D.8998
	call	hlineColor	#
	cmp	r13w, bp	# y1, y2
	ja	.L62	#,
.L59:
	lea	edx, [r15+512]	# tmp279,
	movsx	edx, dx	# tmp280, tmp279
	mov	rdi, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	DWORD PTR [rsp], 255	#,
	mov	r9d, 2	#,
	movsx	r8d, r13w	#, y1
	mov	ecx, r12d	#, D.8998
	mov	esi, r12d	#, D.8998
	call	thickLineColor	#
	movzx	eax, WORD PTR [rsp+30]	# tmp282, %sfp
	sub	ax, WORD PTR [rsp+28]	# tmp282, %sfp
	mov	WORD PTR [rbx+200], ax	# hsg_3(D)->labelX.widget.pos.x, tmp282
	lea	eax, [r15+526]	# tmp283,
	mov	WORD PTR [rbx+202], ax	# hsg_3(D)->labelX.widget.pos.y, tmp283
	add	r15w, 514	# tmp284,
	mov	WORD PTR [rbx+540], r15w	# hsg_3(D)->zero_y, tmp284
	movzx	eax, WORD PTR [rbx+542]	# tmp285, hsg_3(D)->ax
	add	eax, 2	# tmp285,
	mov	WORD PTR [rbx+538], ax	# hsg_3(D)->zero_x, tmp285
	lea	rcx, [rbx+200]	# tmp287,
	mov	rdx, QWORD PTR [rbx+504]	# hsg_3(D)->bg_surf, hsg_3(D)->bg_surf
	mov	rdi, QWORD PTR [rbx+192]	# hsg_3(D)->labelX.widget.surf, hsg_3(D)->labelX.widget.surf
	mov	esi, 0	#,
	call	SDL_UpperBlit	#
	test	eax, eax	# D.9016
	je	.L61	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9019
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)hsg_3(D)].visible,
	jmp	.L49	#
.L61:
	movzx	esi, WORD PTR [rbx+536]	# hsg_3(D)->size, hsg_3(D)->size
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_setCountPoints	#
	mov	rdi, rbx	#, hsg
	call	HistStretchGraph_refresh2	#
	test	al, al	# s
	je	.L49	#,
	movzx	ecx, al	# s, s
	mov	edx, OFFSET FLAT:.LC13	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L49:
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
.LFE96:
	.size	HistStretchGraph_refresh, .-HistStretchGraph_refresh
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"HistStretchGraph_new: Passed NULL this pointer. font=%p, size=%hu\n"
	.section	.rodata.str1.1
.LC15:
	.string	"HistStretchGraph"
.LC16:
	.string	"255"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"HistStretchGraph_new(): Failed on assertion ((! hsg->labelX.widget.visible) || (! hsg->labelY.widget.visible))\n"
	.text
	.globl	HistStretchGraph_new
	.type	HistStretchGraph_new, @function
HistStretchGraph_new:
.LFB98:
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
	mov	rbx, rdi	# this, this
	mov	r12, rsi	# font, font
	mov	ebp, edx	# size, size
	test	rdi, rdi	# this
	jne	.L68	#,
	movzx	r8d, dx	#, size
	mov	rcx, rsi	#, font
	mov	edx, OFFSET FLAT:.LC14	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L69	#
.L68:
	mov	ecx, OFFSET FLAT:.LC15	#,
	mov	edx, OFFSET FLAT:HistStretchGraph_vdestroy	#,
	mov	esi, 10	#,
	call	Widget_init_type	#
	mov	BYTE PTR [rbx+131], 1	# MEM[(struct Widget *)this_3(D)].mevent,
	mov	QWORD PTR [rbx+512], 0	# this_3(D)->rect,
	mov	QWORD PTR [rbx+504], 0	# this_3(D)->bg_surf,
	mov	QWORD PTR [rbx+520], 0	# this_3(D)->x,
	mov	QWORD PTR [rbx+528], 0	# this_3(D)->y,
	test	bp, bp	# size
	mov	eax, 8	# tmp73,
	cmove	ebp, eax	# size,, size, tmp73
	mov	WORD PTR [rbx+536], bp	# this_3(D)->size, size
	mov	QWORD PTR [rbx+496], 0	# this_3(D)->release_handler,
	lea	rbp, [rbx+144]	# D.8900,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	rdi, rbp	#, D.8900
	call	TextBlock_new	#
	mov	rsi, r12	#, font
	mov	rdi, rbp	#, D.8900
	call	TextBlock_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, D.8900
	call	TextBlock_setBackgroundColor	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.8900
	call	TextBlock_setForegroundColor	#
	mov	rdi, rbp	#, D.8900
	call	TextBlock_refresh	#
	lea	rbp, [rbx+320]	# D.8901,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	rdi, rbp	#, D.8901
	call	TextBlock_new	#
	mov	rsi, r12	#, font
	mov	rdi, rbp	#, D.8901
	call	TextBlock_setFont	#
	mov	esi, 16777215	#,
	mov	rdi, rbp	#, D.8901
	call	TextBlock_setBackgroundColor	#
	mov	esi, 0	#,
	mov	rdi, rbp	#, D.8901
	call	TextBlock_setForegroundColor	#
	mov	rdi, rbp	#, D.8901
	call	TextBlock_refresh	#
	cmp	BYTE PTR [rbx+274], 0	# this_3(D)->labelX.widget.visible,
	je	.L71	#,
	cmp	BYTE PTR [rbx+450], 0	# this_3(D)->labelY.widget.visible,
	jne	.L69	#,
.L71:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 111	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC17	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# this_3(D)->widget.visible,
.L69:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	HistStretchGraph_new, .-HistStretchGraph_new
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"HistStretchGraph_mousePressed > Error hsg->rect array of Rectangles is NULL\n"
	.align 8
.LC19:
	.string	"HistStretchGraph_mousePressed > relx=%hu, rely=%hu\n"
	.text
	.globl	HistStretchGraph_mousePressed
	.type	HistStretchGraph_mousePressed, @function
HistStretchGraph_mousePressed:
.LFB99:
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
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 128
	mov	r13, rdi	# hsg, hsg
	mov	rbx, rsi	# screen, screen
	mov	BYTE PTR [rsi+129], 1	# screen_8(D)->event_handled,
	cmp	QWORD PTR [rdi+512], 0	# hsg_9(D)->rect,
	jne	.L74	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 76	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC18	#,
	call	fwrite	#
	jmp	.L73	#
.L74:
	movzx	r12d, WORD PTR [rsi+22]	# screen_8(D)->event.button.y, screen_8(D)->event.button.y
	sub	r12w, WORD PTR [rdi+58]	# tmp193, MEM[(struct Widget *)hsg_9(D)].pos.y
	movzx	r12d, r12w	# D.8787, tmp193
	movzx	r14d, WORD PTR [rsi+20]	# screen_8(D)->event.button.x, screen_8(D)->event.button.x
	sub	r14w, WORD PTR [rdi+56]	# tmp196, MEM[(struct Widget *)hsg_9(D)].pos.x
	movzx	r14d, r14w	# D.8788, tmp196
	mov	r8d, r12d	#, D.8787
	mov	ecx, r14d	#, D.8788
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	cmp	WORD PTR [r13+536], 0	# hsg_9(D)->size,
	je	.L73	#,
	mov	ebp, 0	# i,
.L77:
	movzx	eax, bp	# i, i
	lea	rdx, [rax+rax*8]	# tmp202,
	lea	rdx, [rax+rdx*2]	# tmp204,
	mov	rax, QWORD PTR [r13+512]	# hsg_9(D)->rect, hsg_9(D)->rect
	lea	rdi, [rax+rdx*8]	# tmp206,
	mov	edx, r12d	#, D.8787
	mov	esi, r14d	#, D.8788
	call	Rectangle_contains	#
	test	al, al	# D.8792
	jne	.L76	#,
	add	ebp, 1	# i,
	cmp	WORD PTR [r13+536], bp	# hsg_9(D)->size, i
	ja	.L77	#,
.L76:
	movzx	eax, WORD PTR [r13+536]	# D.8794, hsg_9(D)->size
	cmp	ax, bp	# D.8794, i
	je	.L73	#,
	movzx	r15d, WORD PTR [rbx+20]	# stx, screen_8(D)->event.button.x
	movzx	r14d, WORD PTR [rbx+22]	# sty, screen_8(D)->event.button.y
	mov	edx, 0	# iftmp.1,
	test	bp, bp	# i
	je	.L78	#,
	movzx	edx, bp	# i, i
	movzx	eax, ax	# D.8794, D.8794
	sub	eax, 1	# tmp210,
	cmp	edx, eax	# i, tmp210
	setl	dl	#, iftmp.1
	movzx	edx, dl	# iftmp.1, iftmp.1
.L78:
	mov	BYTE PTR [rsp+23], dl	# %sfp, iftmp.1
	movzx	ebp, bp	# D.8789, i
	lea	rax, [rbp+0+rbp*8]	# tmp215,
	lea	rax, [rbp+0+rax*2]	# tmp217,
	sal	rax, 3	# tmp218,
	mov	QWORD PTR [rsp+24], rax	# %sfp, tmp218
	mov	rdi, QWORD PTR [r13+512]	# tmp221, hsg_9(D)->rect
	add	rdi, rax	# tmp221, tmp218
	lea	rdx, [rsp+62]	#,
	lea	rsi, [rsp+60]	#,
	call	Rectangle_getCenter	#
	lea	rax, [rbp+rbp]	#,
	mov	QWORD PTR [rsp+8], rax	# %sfp,
	lea	rsi, [rbp-2+rbp]	#,
	mov	QWORD PTR [rsp+40], rsi	# %sfp,
	lea	rbp, [rbp+2+rbp]	#,
	mov	QWORD PTR [rsp+32], rbp	# %sfp,
	jmp	.L96	#
.L90:
	movzx	eax, BYTE PTR [rbx+16]	# D.8805, screen_8(D)->event.type
	cmp	al, 4	# D.8805,
	jne	.L80	#,
	movzx	r12d, WORD PTR [rbx+20]	# stx, screen_8(D)->event.motion.x
	mov	edx, r12d	# D.8809, stx
	sub	edx, r15d	# D.8809, stx
	movzx	ebp, WORD PTR [rbx+22]	# sty, screen_8(D)->event.motion.y
	mov	eax, ebp	# D.8811, sty
	sub	eax, r14d	# D.8811, sty
	mov	ecx, eax	# tmp225, D.8811
	or	ecx, edx	# tmp225, D.8809
	test	cl, 1	# tmp225,
	jne	.L96	#,
	mov	ecx, eax	# dy2, D.8811
	sar	cx	# dy2
	cmp	BYTE PTR [rsp+23], 0	# %sfp,
	je	.L82	#,
	mov	esi, edx	# dx2, D.8809
	sar	si	# dx2
	jns	.L83	#,
	mov	r9, QWORD PTR [r13+520]	# D.8827, hsg_9(D)->x
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	edi, WORD PTR [r9+r8]	# D.8831, *D.8829_67
	movsx	r8d, si	# dx2, dx2
	add	r8d, edi	# D.8833, D.8831
	cmp	edi, r8d	# D.8831, D.8833
	jl	.L96	#,
	mov	r10, QWORD PTR [rsp+40]	#, %sfp
	movzx	edi, WORD PTR [r9+r10]	# *D.8838_90, *D.8838_90
	cmp	r8d, edi	# D.8833, *D.8838_90
	jl	.L96	#,
.L83:
	test	si, si	# dx2
	jle	.L84	#,
	mov	rdi, QWORD PTR [r13+520]	# D.8827, hsg_9(D)->x
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	r9d, WORD PTR [rdi+r8]	# *D.8829_96, *D.8829_96
	movsx	r8d, si	# dx2, dx2
	add	r8d, r9d	# tmp231, *D.8829_96
	mov	r9, QWORD PTR [rsp+32]	#, %sfp
	movzx	edi, WORD PTR [rdi+r9]	# *D.8844_105, *D.8844_105
	cmp	r8d, edi	# tmp231, *D.8844_105
	jg	.L96	#,
.L84:
	test	cx, cx	# dy2
	jle	.L85	#,
	mov	rdi, QWORD PTR [r13+528]	# hsg_9(D)->y, hsg_9(D)->y
	mov	r10, QWORD PTR [rsp+8]	#, %sfp
	movsx	r8d, WORD PTR [rdi+r10]	# *D.8849_111, *D.8849_111
	movsx	edi, cx	# dy2, dy2
	cmp	r8d, edi	# *D.8849_111, dy2
	js	.L96	#,
.L85:
	test	cx, cx	# dy2
	jns	.L86	#,
	mov	rdi, QWORD PTR [r13+528]	# hsg_9(D)->y, hsg_9(D)->y
	mov	r8, QWORD PTR [rsp+8]	#, %sfp
	movzx	edi, WORD PTR [rdi+r8]	# *D.8849_120, *D.8849_120
	movsx	r8d, cx	# dy2, dy2
	sub	edi, r8d	# tmp240, dy2
	cmp	edi, 255	# tmp240,
	jg	.L96	#,
.L86:
	add	WORD PTR [rsp+60], dx	# x, D.8809
	add	WORD PTR [rsp+62], ax	# y, D.8811
	mov	rax, QWORD PTR [rsp+8]	# D.8829, %sfp
	add	rax, QWORD PTR [r13+520]	# D.8829, hsg_9(D)->x
	add	WORD PTR [rax], si	# *D.8829_138, dx2
	mov	rax, QWORD PTR [rsp+8]	# D.8849, %sfp
	add	rax, QWORD PTR [r13+528]	# D.8849, hsg_9(D)->y
	sub	WORD PTR [rax], cx	# *D.8849_149, dy2
	movzx	edx, WORD PTR [rsp+62]	# y, y
	movzx	esi, WORD PTR [rsp+60]	# x, x
	mov	rdi, QWORD PTR [rsp+24]	# tmp245, %sfp
	add	rdi, QWORD PTR [r13+512]	# tmp245, hsg_9(D)->rect
	call	Rectangle_setCenter	#
	mov	rdi, r13	#, hsg
	call	HistStretchGraph_refresh2	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r13	#, hsg
	call	Widget_draw	#
	mov	r14d, ebp	# sty, sty
	mov	r15d, r12d	# stx, stx
	jmp	.L96	#
.L82:
	test	cx, cx	# dy2
	jle	.L87	#,
	mov	rdx, QWORD PTR [r13+528]	# hsg_9(D)->y, hsg_9(D)->y
	mov	r9, QWORD PTR [rsp+8]	#, %sfp
	movsx	esi, WORD PTR [rdx+r9]	# *D.8849_168, *D.8849_168
	movsx	edx, cx	# dy2, dy2
	cmp	esi, edx	# *D.8849_168, dy2
	js	.L96	#,
.L87:
	test	cx, cx	# dy2
	jns	.L88	#,
	mov	rdx, QWORD PTR [r13+528]	# hsg_9(D)->y, hsg_9(D)->y
	mov	r10, QWORD PTR [rsp+8]	#, %sfp
	movzx	edx, WORD PTR [rdx+r10]	# *D.8849_177, *D.8849_177
	movsx	esi, cx	# dy2, dy2
	sub	edx, esi	# tmp254, dy2
	cmp	edx, 255	# tmp254,
	jg	.L96	#,
.L88:
	add	WORD PTR [rsp+62], ax	# y, D.8811
	mov	rax, QWORD PTR [rsp+8]	# D.8849, %sfp
	add	rax, QWORD PTR [r13+528]	# D.8849, hsg_9(D)->y
	sub	WORD PTR [rax], cx	# *D.8849_192, dy2
	movzx	edx, WORD PTR [rsp+62]	# y, y
	movzx	esi, WORD PTR [rsp+60]	# x, x
	mov	rdi, QWORD PTR [rsp+24]	# tmp258, %sfp
	add	rdi, QWORD PTR [r13+512]	# tmp258, hsg_9(D)->rect
	call	Rectangle_setCenter	#
	mov	rdi, r13	#, hsg
	call	HistStretchGraph_refresh2	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r13	#, hsg
	call	Widget_draw	#
	mov	r14d, ebp	# sty, sty
	jmp	.L96	#
.L80:
	cmp	al, 6	# D.8805,
	jne	.L96	#,
	mov	rax, QWORD PTR [r13+496]	# D.8879, hsg_9(D)->release_handler
	test	rax, rax	# D.8879
	je	.L73	#,
	mov	rsi, rbx	#, screen
	mov	rdi, r13	#, hsg
	call	rax	# D.8879
	jmp	.L73	#
.L96:
	mov	rdi, QWORD PTR [rbx+88]	# screen_8(D)->pevent, screen_8(D)->pevent
	call	SDL_PollEvent	#
	test	eax, eax	# D.8883
	.p2align 4,,2
	jne	.L90	#,
	.p2align 4,,2
	jmp	.L96	#
.L73:
	add	rsp, 72	#,
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
.LFE99:
	.size	HistStretchGraph_mousePressed, .-HistStretchGraph_mousePressed
	.local	str_id
	.comm	str_id,160,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
