	.file	"PixelDrawBox.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT PixelDrawBox.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/PixelDrawBox.asm
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
	.globl	rectangle_mouse_released
	.type	rectangle_mouse_released, @function
rectangle_mouse_released:
.LFB97:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+72]	# D.9036, sender_1(D)->void_parameter
	mov	BYTE PTR [rax+185], 0	# MEM[(struct PixelDrawBox *)D.9036_2].mouse_ispressed,
	mov	BYTE PTR [rsi+130], 0	# screen_3(D)->pool_events,
	ret
	.cfi_endproc
.LFE97:
	.size	rectangle_mouse_released, .-rectangle_mouse_released
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"PixelDrawBox.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"PixelDrawBox_destroy[%s]: Found NULL widget at (y,x)=(%hu,%hu)\n"
	.align 8
.LC2:
	.string	"PixelDrawBox_destroy[%s]: Parent grid object has NULL items array\n"
	.text
	.type	PixelDrawBox_vdestroy, @function
PixelDrawBox_vdestroy:
.LFB98:
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
	mov	rbp, rdi	# vthis, vthis
	cmp	QWORD PTR [rdi+160], 0	# MEM[(struct Grid *)vthis_3(D)].items,
	je	.L3	#,
	mov	r13d, 0	# y,
	cmp	WORD PTR [rdi+172], 0	# MEM[(struct Grid *)vthis_3(D)].c_row,
	jne	.L12	#,
	jmp	.L5	#
.L8:
	mov	rdx, QWORD PTR [rbp+160]	# MEM[(struct Grid *)vthis_3(D)].items, MEM[(struct Grid *)vthis_3(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp95,
	sal	rax, 3	# tmp96,
	add	rax, QWORD PTR [rdx+r12]	# tmp97, *D.9020_13
	mov	rdi, QWORD PTR [rax]	# rect_wt, D.9024_17->widget
	test	rdi, rdi	# rect_wt
	je	.L6	#,
	call	delete	#
	mov	edx, 129	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rax	#, D.9027
	call	wfree	#
	jmp	.L7	#
.L6:
	mov	rdi, rbp	#, vthis
	call	Widget_toString	#
	movzx	r9d, bx	#, x
	mov	r8d, r14d	#, y
	mov	rcx, rax	#, D.9031
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L7:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+174], bx	# MEM[(struct Grid *)vthis_3(D)].c_col, x
	ja	.L8	#,
.L9:
	add	r13d, 1	# y,
	cmp	WORD PTR [rbp+172], r13w	# MEM[(struct Grid *)vthis_3(D)].c_row, y
	jbe	.L5	#,
.L12:
	cmp	WORD PTR [rbp+174], 0	# MEM[(struct Grid *)vthis_3(D)].c_col,
	je	.L9	#,
	movzx	r12d, r13w	# y, y
	sal	r12, 3	# D.9019,
	mov	ebx, 0	# x,
	movzx	r14d, r13w	# y, y
	jmp	.L8	#
.L3:
	call	Widget_toString	#
	mov	rcx, rax	#, D.9035
	mov	edx, OFFSET FLAT:.LC2	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L5:
	mov	rdi, rbp	#, vthis
	call	Grid_destroy	#
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
.LFE98:
	.size	PixelDrawBox_vdestroy, .-PixelDrawBox_vdestroy
	.section	.rodata.str1.1
.LC3:
	.string	"pdb=NULL"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"PixelDrawBox: (width,height)=(%hu,%hu), (c_col,c_row)=(%hu,%hu), (actX,actY)=(%hu,%hu), (rect_w,rect_h)=(%hu,%hu), (spec_x,spec_y)=(%hu,%hu)"
	.text
	.globl	PixelDrawBox_toString
	.type	PixelDrawBox_toString, @function
PixelDrawBox_toString:
.LFB93:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC3	# D.9096,
	test	rdi, rdi	# pdb
	je	.L19	#,
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	movzx	r9d, WORD PTR [rdi+186]	# pdb_2(D)->width, pdb_2(D)->width
	movzx	eax, WORD PTR [rdi+200]	# pdb_2(D)->spec_pix_y, pdb_2(D)->spec_pix_y
	mov	DWORD PTR [rsp+64], eax	#, pdb_2(D)->spec_pix_y
	movzx	eax, WORD PTR [rdi+198]	# pdb_2(D)->spec_pix_x, pdb_2(D)->spec_pix_x
	mov	DWORD PTR [rsp+56], eax	#, pdb_2(D)->spec_pix_x
	movzx	eax, WORD PTR [rdi+192]	# pdb_2(D)->rect_h, pdb_2(D)->rect_h
	mov	DWORD PTR [rsp+48], eax	#, pdb_2(D)->rect_h
	movzx	eax, WORD PTR [rdi+190]	# pdb_2(D)->rect_w, pdb_2(D)->rect_w
	mov	DWORD PTR [rsp+40], eax	#, pdb_2(D)->rect_w
	movzx	eax, WORD PTR [rdi+196]	# pdb_2(D)->actY, pdb_2(D)->actY
	mov	DWORD PTR [rsp+32], eax	#, pdb_2(D)->actY
	movzx	eax, WORD PTR [rdi+194]	# pdb_2(D)->actX, pdb_2(D)->actX
	mov	DWORD PTR [rsp+24], eax	#, pdb_2(D)->actX
	movzx	eax, WORD PTR [rdi+172]	# pdb_2(D)->grid.c_row, pdb_2(D)->grid.c_row
	mov	DWORD PTR [rsp+16], eax	#, pdb_2(D)->grid.c_row
	movzx	eax, WORD PTR [rdi+174]	# pdb_2(D)->grid.c_col, pdb_2(D)->grid.c_col
	mov	DWORD PTR [rsp+8], eax	#, pdb_2(D)->grid.c_col
	movzx	eax, WORD PTR [rdi+188]	# pdb_2(D)->height, pdb_2(D)->height
	mov	DWORD PTR [rsp], eax	#, pdb_2(D)->height
	mov	r8d, OFFSET FLAT:.LC4	#,
	mov	ecx, 204	#,
	mov	edx, 1	#,
	mov	esi, 204	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.9096,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
.L19:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	PixelDrawBox_toString, .-PixelDrawBox_toString
	.globl	PixelDrawBox_parseClick
	.type	PixelDrawBox_parseClick, @function
PixelDrawBox_parseClick:
.LFB94:
	.cfi_startproc
	mov	eax, DWORD PTR [rsi+116]	# D.9051, sender_2(D)->id
	mov	esi, eax	#, D.9051
	shr	esi, 16	#,
	cmp	si, WORD PTR [rdi+194]	# x, pdb_8(D)->actX
	jae	.L32	#,
	cmp	ax, WORD PTR [rdi+196]	# y, pdb_8(D)->actY
	jae	.L32	#,
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdx	# screen, screen
	movzx	r10d, ax	# y, y
	mov	r9, QWORD PTR [rdi+160]	# pdb_8(D)->grid.items, pdb_8(D)->grid.items
	movzx	edx, si	# x, x
	lea	rdx, [rdx+rdx*4]	# tmp95,
	sal	rdx, 3	# tmp96,
	add	rdx, QWORD PTR [r9+r10*8]	# tmp97, *D.9061_14
	mov	rdx, QWORD PTR [rdx]	# press_rect, D.9065_18->widget
	cmp	cl, 2	# butmask,
	je	.L23	#,
	cmp	cl, 4	# butmask,
	je	.L24	#,
	cmp	cl, 1	# butmask,
	jne	.L20	#,
	mov	eax, DWORD PTR [rdx+144]	# D.9067, press_rect_19->color
	cmp	eax, 16777215	# D.9067,
	jne	.L25	#,
	mov	DWORD PTR [rdx+144], 0	# press_rect_19->color,
	jmp	.L26	#
.L25:
	cmp	eax, 961024	# D.9067,
	jne	.L20	#,
	mov	DWORD PTR [rdx+144], 12189619	# press_rect_19->color,
	jmp	.L26	#
.L23:
	test	r8b, r8b	# check_spec
	je	.L20	#,
	cmp	WORD PTR [rdi+198], -1	# pdb_8(D)->spec_pix_x,
	jne	.L20	#,
	cmp	DWORD PTR [rdx+144], 16777215	# press_rect_19->color,
	jne	.L20	#,
	mov	DWORD PTR [rdx+144], 961024	# press_rect_19->color,
	mov	WORD PTR [rdi+198], si	# pdb_8(D)->spec_pix_x, x
	mov	WORD PTR [rdi+200], ax	# pdb_8(D)->spec_pix_y, y
	jmp	.L26	#
.L24:
	mov	eax, DWORD PTR [rdx+144]	# D.9067, press_rect_19->color
	test	eax, eax	# D.9067
	jne	.L27	#,
	mov	DWORD PTR [rdx+144], 16777215	# press_rect_19->color,
	jmp	.L26	#
.L27:
	cmp	eax, 12189619	# D.9067,
	je	.L29	#,
	cmp	eax, 961024	# D.9067,
	jne	.L20	#,
.L29:
	mov	DWORD PTR [rdx+144], 16777215	# press_rect_19->color,
	mov	WORD PTR [rdi+200], -1	# pdb_8(D)->spec_pix_y,
	mov	WORD PTR [rdi+198], -1	# pdb_8(D)->spec_pix_x,
.L26:
	mov	rdi, rdx	#, press_rect
	call	Rectangle_refresh	#
	mov	BYTE PTR [rbx+132], 1	# screen_39(D)->need_reload,
.L20:
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L32:
	rep
	ret
	.cfi_endproc
.LFE94:
	.size	PixelDrawBox_parseClick, .-PixelDrawBox_parseClick
	.globl	rectangle_mouse_enter
	.type	rectangle_mouse_enter, @function
rectangle_mouse_enter:
.LFB96:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+72]	# pdb, sender_1(D)->void_parameter
	cmp	BYTE PTR [rax+185], 0	# pdb_2->mouse_ispressed,
	je	.L37	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, BYTE PTR [rsi+18]	# screen_4(D)->event.motion.state, screen_4(D)->event.motion.state
	mov	r8d, 0	#,
	mov	rdx, rsi	#, screen
	mov	rsi, rdi	#, sender
	mov	rdi, rax	#, pdb
	call	PixelDrawBox_parseClick	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L37:
	rep
	ret
	.cfi_endproc
.LFE96:
	.size	rectangle_mouse_enter, .-rectangle_mouse_enter
	.globl	rectangle_press
	.type	rectangle_press, @function
rectangle_press:
.LFB95:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, rdi	# sender, sender
	mov	rdx, rsi	# screen, screen
	mov	rcx, QWORD PTR [rdi+72]	# D.9044, sender_1(D)->void_parameter
	mov	BYTE PTR [rcx+185], 1	# MEM[(struct PixelDrawBox *)D.9044_2].mouse_ispressed,
	mov	BYTE PTR [rsi+130], 1	# screen_3(D)->pool_events,
	movzx	ecx, BYTE PTR [rsi+18]	# screen_3(D)->event.button.button, screen_3(D)->event.button.button
	sub	ecx, 1	# tmp69,
	mov	esi, 1	# tmp71,
	sal	esi, cl	# tmp71, tmp69
	mov	ecx, esi	# tmp70, tmp71
	and	ecx, 255	# tmp72,
	mov	rdi, QWORD PTR [rdi+72]	# sender_1(D)->void_parameter, sender_1(D)->void_parameter
	mov	r8d, 1	#,
	mov	rsi, rax	#, sender
	call	PixelDrawBox_parseClick	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	rectangle_press, .-rectangle_press
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"PixelDrawBox_new: Passed NULL this pointer. Other parameters (in order): %hu,%hu,%hu,%hu,%hu,%hu\n"
	.section	.rodata.str1.1
.LC6:
	.string	"PixelDrawBox"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"PixelDrawBox_new() > Wrong initialization: %s\n"
	.text
	.globl	PixelDrawBox_new
	.type	PixelDrawBox_new, @function
PixelDrawBox_new:
.LFB99:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# this, this
	mov	r13d, esi	# width, width
	mov	ebp, edx	# height, height
	mov	WORD PTR [rsp+46], cx	# %sfp, c_col
	mov	r12d, r8d	# c_row, c_row
	mov	r15d, r9d	# actX, actX
	movzx	r14d, WORD PTR [rsp+112]	# actY, actY
	test	rdi, rdi	# this
	jne	.L41	#,
	movzx	ecx, si	# width, width
	movzx	r14d, r14w	# actY, actY
	mov	DWORD PTR [rsp+16], r14d	#, actY
	movzx	r15d, r9w	# actX, actX
	mov	DWORD PTR [rsp+8], r15d	#, actX
	movzx	r12d, r8w	# c_row, c_row
	mov	DWORD PTR [rsp], r12d	#, c_row
	movzx	r9d, WORD PTR [rsp+46]	#, %sfp
	movzx	r8d, dx	#, height
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L42	#
.L41:
	movzx	ecx, WORD PTR [rsp+46]	# c_col, %sfp
	movzx	edx, r8w	# c_row, c_row
	mov	r9d, OFFSET FLAT:.LC6	#,
	mov	r8d, OFFSET FLAT:PixelDrawBox_vdestroy	#,
	mov	esi, 1	#,
	call	Grid_init_type	#
	mov	DWORD PTR [rbx+176], 524449	# this_2(D)->grid.bord_color,
	mov	BYTE PTR [rbx+184], 1	# this_2(D)->enabled,
	mov	WORD PTR [rbx+186], r13w	# this_2(D)->width, width
	mov	WORD PTR [rbx+188], bp	# this_2(D)->height, height
	mov	BYTE PTR [rbx+185], 0	# this_2(D)->mouse_ispressed,
	mov	WORD PTR [rbx+194], r15w	# this_2(D)->actX, actX
	mov	WORD PTR [rbx+196], r14w	# this_2(D)->actY, actY
	mov	WORD PTR [rbx+200], -1	# this_2(D)->spec_pix_y,
	mov	WORD PTR [rbx+198], -1	# this_2(D)->spec_pix_x,
	test	bp, bp	# height
	je	.L43	#,
	test	r13w, r13w	# width
	je	.L43	#,
	test	r12w, r12w	# c_row
	je	.L43	#,
	cmp	WORD PTR [rsp+46], 0	# %sfp,
	je	.L43	#,
	test	r14w, r14w	# actY
	je	.L43	#,
	test	r15w, r15w	# actX
	jne	.L42	#,
.L43:
	mov	rdi, rbx	#, this
	call	PixelDrawBox_toString	#
	mov	rcx, rax	#, D.9009
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L42:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+56]	#,
	mov	rbp, QWORD PTR [rsp+64]	#,
	mov	r12, QWORD PTR [rsp+72]	#,
	mov	r13, QWORD PTR [rsp+80]	#,
	mov	r14, QWORD PTR [rsp+88]	#,
	mov	r15, QWORD PTR [rsp+96]	#,
	add	rsp, 104	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	PixelDrawBox_new, .-PixelDrawBox_new
	.globl	PixelDrawBox_setPosition
	.type	PixelDrawBox_setPosition, @function
PixelDrawBox_setPosition:
.LFB100:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dx	# miny, miny
	movzx	esi, si	# minx, minx
	call	Widget_setPosition	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	PixelDrawBox_setPosition, .-PixelDrawBox_setPosition
	.globl	PixelDrawBox_setPadding
	.type	PixelDrawBox_setPadding, @function
PixelDrawBox_setPadding:
.LFB101:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	edx, dx	# pady, pady
	movzx	esi, si	# padx, padx
	call	Container_setPadding	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	PixelDrawBox_setPadding, .-PixelDrawBox_setPadding
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"PixelDrawBox::PixelDrawBox_refresh() > Pixel dimension is too small. Try increasing PixelDrawBox.width or PixelDrawBox.height or decresing PixelDrawBox.grid.c_col, PixelDrawBox.grid.c_row\n"
	.align 8
.LC9:
	.string	"PixelDrawBox_refresh: Need to use dynamically linked destructor. Found Widget of type(%s) != RECTANGLE_TYPE at (y,x)=(%hu,%hu). Deleting only Widget so far\n"
	.text
	.globl	PixelDrawBox_refresh
	.type	PixelDrawBox_refresh, @function
PixelDrawBox_refresh:
.LFB102:
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
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 112
	mov	rbx, rdi	# pdb, pdb
	movzx	eax, WORD PTR [rdi+186]	# pdb_5(D)->width, pdb_5(D)->width
	mov	edx, 0	# tmp122,
	div	WORD PTR [rdi+174]	# MEM[(struct Grid *)pdb_5(D)].c_col
	mov	ecx, eax	# tmp121, pdb_5(D)->width
	mov	WORD PTR [rbx+190], ax	# pdb_5(D)->rect_w, tmp121
	movzx	eax, WORD PTR [rdi+188]	# pdb_5(D)->height, pdb_5(D)->height
	mov	edx, 0	# tmp125,
	div	WORD PTR [rdi+172]	# MEM[(struct Grid *)pdb_5(D)].c_row
	mov	WORD PTR [rdi+192], ax	# pdb_5(D)->rect_h, tmp124
	cmp	cx, 2	# tmp121,
	jbe	.L51	#,
	cmp	ax, 2	# tmp124,
	ja	.L52	#,
.L51:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 188	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)pdb_5(D)].visible,
	jmp	.L50	#
.L52:
	mov	QWORD PTR [rsp+40], rdi	# %sfp, pdb
	sub	ecx, 2	# tmp127,
	mov	WORD PTR [rdi+190], cx	# pdb_5(D)->rect_w, tmp127
	sub	eax, 2	# tmp128,
	mov	WORD PTR [rdi+192], ax	# pdb_5(D)->rect_h, tmp128
	mov	r14d, 0	# y,
	cmp	WORD PTR [rdi+172], 0	# MEM[(struct Grid *)pdb_5(D)].c_row,
	jne	.L76	#,
	jmp	.L55	#
.L69:
	mov	rdx, QWORD PTR [rbx+160]	# MEM[(struct Grid *)pdb_5(D)].items, MEM[(struct Grid *)pdb_5(D)].items
	movzx	eax, bp	# x, x
	lea	rax, [rax+rax*4]	# tmp134,
	sal	rax, 3	# tmp135,
	mov	rcx, QWORD PTR [rsp+32]	#, %sfp
	add	rax, QWORD PTR [rdx+rcx]	# tmp136, *D.8921_28
	mov	r12, QWORD PTR [rax]	# rect_wt, D.8925_32->widget
	mov	r15d, 11250603	# col,
	cmp	WORD PTR [rbx+196], r14w	# pdb_5(D)->actY, y
	jbe	.L56	#,
	cmp	bp, WORD PTR [rbx+194]	# x, pdb_5(D)->actX
	sbb	r15d, r15d	# col
	and	r15d, 5526612	# col,
	add	r15d, 11250603	# col,
.L56:
	test	r12, r12	# rect_wt
	je	.L57	#,
	cmp	DWORD PTR [r12+124], 6	# rect_wt_33->type,
	je	.L58	#,
	mov	rdi, r12	#, rect_wt
	call	Object_getType	#
	movzx	r9d, bp	#, x
	mov	r8d, r13d	#, y
	mov	rcx, rax	#, D.8940
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, r12	#, rect_wt
	call	delete	#
	jmp	.L57	#
.L58:
	movzx	esi, WORD PTR [rbx+190]	# D.8912, pdb_5(D)->rect_w
	cmp	WORD PTR [r12+60], si	# rect_wt_33->pos.w, D.8912
	jne	.L59	#,
	movzx	eax, WORD PTR [rbx+192]	#, pdb_5(D)->rect_h
	cmp	WORD PTR [r12+62], ax	# rect_wt_33->pos.h,
	je	.L60	#,
.L59:
	movzx	edx, WORD PTR [rbx+192]	# pdb_5(D)->rect_h, pdb_5(D)->rect_h
	movzx	esi, si	# D.8912, D.8912
	mov	rdi, r12	#, rect_wt
	call	Rectangle_setSize	#
	cmp	r15d, 11250603	# col,
	jne	.L61	#,
	mov	eax, DWORD PTR [r12+144]	# D.8954, MEM[(struct Rectangle *)rect_wt_33].color
	cmp	eax, 11250603	# D.8954,
	jne	.L62	#,
	jmp	.L63	#
.L61:
	cmp	r15d, 16777215	# col,
	jne	.L63	#,
	cmp	DWORD PTR [r12+144], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
	jne	.L63	#,
	jmp	.L64	#
.L62:
	cmp	eax, 961024	# D.8954,
	jne	.L64	#,
	mov	WORD PTR [rbx+200], -1	# pdb_5(D)->spec_pix_y,
	mov	WORD PTR [rbx+198], -1	# pdb_5(D)->spec_pix_x,
.L64:
	mov	DWORD PTR [r12+144], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
.L63:
	mov	rdi, r12	#, rect_wt
	call	Rectangle_refresh	#
	jmp	.L71	#
.L60:
	cmp	r15d, 11250603	# col,
	jne	.L66	#,
	mov	eax, DWORD PTR [r12+144]	# D.8954, MEM[(struct Rectangle *)rect_wt_33].color
	cmp	eax, 11250603	# D.8954,
	jne	.L67	#,
	jmp	.L71	#
.L66:
	cmp	r15d, 16777215	# col,
	jne	.L71	#,
	cmp	DWORD PTR [r12+144], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
	jne	.L71	#,
	jmp	.L68	#
.L67:
	cmp	eax, 961024	# D.8954,
	jne	.L68	#,
	mov	WORD PTR [rbx+200], -1	# pdb_5(D)->spec_pix_y,
	mov	WORD PTR [rbx+198], -1	# pdb_5(D)->spec_pix_x,
.L68:
	mov	DWORD PTR [r12+144], r15d	# MEM[(struct Rectangle *)rect_wt_33].color, col
	mov	rdi, r12	#, rect_wt
	call	Rectangle_refresh	#
.L71:
	add	ebp, 1	# x,
	cmp	WORD PTR [rbx+174], bp	# MEM[(struct Grid *)pdb_5(D)].c_col, x
	ja	.L69	#,
.L70:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbx+172], r14w	# MEM[(struct Grid *)pdb_5(D)].c_row, y
	jbe	.L55	#,
.L76:
	cmp	WORD PTR [rbx+174], 0	# MEM[(struct Grid *)pdb_5(D)].c_col,
	je	.L70	#,
	movzx	eax, r14w	# y, y
	sal	rax, 3	#,
	mov	QWORD PTR [rsp+32], rax	# %sfp,
	mov	ebp, 0	# x,
	movzx	r13d, r14w	# y, y
	jmp	.L69	#
.L55:
	mov	rdi, rbx	#, pdb
	call	Grid_refresh	#
	jmp	.L50	#
.L57:
	mov	ecx, 257	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 152	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	esi, r15d	#, col
	mov	rdi, rax	#, D.8968
	call	Rectangle_new	#
	mov	r12, rax	# rect,
	movzx	r15d, bp	# x, x
	mov	eax, r15d	# tmp144, x
	sal	eax, 16	# tmp144,
	or	eax, r13d	# tmp146, y
	mov	DWORD PTR [r12+116], eax	# MEM[(struct Widget *)rect_64].id, tmp146
	mov	QWORD PTR [r12+72], rbx	# MEM[(struct Widget *)rect_64].void_parameter, pdb
	mov	QWORD PTR [r12+24], OFFSET FLAT:rectangle_press	# MEM[(struct Widget *)rect_64].press_handler,
	mov	QWORD PTR [r12+40], OFFSET FLAT:rectangle_mouse_enter	# MEM[(struct Widget *)rect_64].mouse_enter_handler,
	mov	QWORD PTR [r12+32], OFFSET FLAT:rectangle_mouse_released	# MEM[(struct Widget *)rect_64].release_handler,
	movzx	edx, WORD PTR [rbx+192]	# pdb_5(D)->rect_h, pdb_5(D)->rect_h
	movzx	esi, WORD PTR [rbx+190]	# pdb_5(D)->rect_w, pdb_5(D)->rect_w
	mov	rdi, r12	#, rect
	call	Rectangle_setSize	#
	mov	rdi, r12	#, rect
	call	Rectangle_refresh	#
	mov	DWORD PTR [rsp+24], 1	#,
	mov	DWORD PTR [rsp+16], 1	#,
	mov	DWORD PTR [rsp+8], 1	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, r15d	#, x
	mov	edx, r13d	#, y
	mov	rsi, r12	#, rect
	mov	rdi, QWORD PTR [rsp+40]	#, %sfp
	call	Grid_add	#
	jmp	.L71	#
.L50:
	add	rsp, 56	#,
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
.LFE102:
	.size	PixelDrawBox_refresh, .-PixelDrawBox_refresh
	.globl	PixelDrawBox_increaseActX
	.type	PixelDrawBox_increaseActX, @function
PixelDrawBox_increaseActX:
.LFB103:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+194]	# D.8892, pdb_1(D)->actX
	movzx	edx, WORD PTR [rdi+174]	# D.8893, pdb_1(D)->grid.c_col
	cmp	ax, dx	# D.8892, D.8893
	jae	.L84	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	r8d, ax	# D.8892, D.8892
	movzx	ecx, si	# dx, dx
	add	r8d, ecx	# tmp71, dx
	movzx	ecx, dx	# D.8893, D.8893
	cmp	r8d, ecx	# tmp71, D.8893
	jle	.L80	#,
	mov	WORD PTR [rdi+194], dx	# pdb_1(D)->actX, D.8893
	jmp	.L81	#
.L80:
	add	esi, eax	# tmp73, D.8892
	mov	WORD PTR [rdi+194], si	# pdb_1(D)->actX, tmp73
.L81:
	call	PixelDrawBox_refresh	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L84:
	rep
	ret
	.cfi_endproc
.LFE103:
	.size	PixelDrawBox_increaseActX, .-PixelDrawBox_increaseActX
	.globl	PixelDrawBox_increaseActY
	.type	PixelDrawBox_increaseActY, @function
PixelDrawBox_increaseActY:
.LFB104:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+196]	# D.8880, pdb_1(D)->actY
	movzx	edx, WORD PTR [rdi+172]	# D.8881, pdb_1(D)->grid.c_row
	cmp	ax, dx	# D.8880, D.8881
	jae	.L91	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	r8d, ax	# D.8880, D.8880
	movzx	ecx, si	# dy, dy
	add	r8d, ecx	# tmp71, dy
	movzx	ecx, dx	# D.8881, D.8881
	cmp	r8d, ecx	# tmp71, D.8881
	jle	.L87	#,
	mov	WORD PTR [rdi+196], dx	# pdb_1(D)->actY, D.8881
	jmp	.L88	#
.L87:
	add	esi, eax	# tmp73, D.8880
	mov	WORD PTR [rdi+196], si	# pdb_1(D)->actY, tmp73
.L88:
	call	PixelDrawBox_refresh	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L91:
	rep
	ret
	.cfi_endproc
.LFE104:
	.size	PixelDrawBox_increaseActY, .-PixelDrawBox_increaseActY
	.globl	PixelDrawBox_decreaseActX
	.type	PixelDrawBox_decreaseActX, @function
PixelDrawBox_decreaseActX:
.LFB105:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+194]	# D.8870, pdb_1(D)->actX
	cmp	ax, 1	# D.8870,
	jbe	.L98	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, ax	# D.8870, D.8870
	add	ecx, 1	# tmp68,
	movzx	edx, si	# dx, dx
	cmp	ecx, edx	# tmp68, dx
	jle	.L94	#,
	sub	eax, esi	# tmp70, dx
	mov	WORD PTR [rdi+194], ax	# pdb_1(D)->actX, tmp70
	jmp	.L95	#
.L94:
	mov	WORD PTR [rdi+194], 1	# pdb_1(D)->actX,
.L95:
	call	PixelDrawBox_refresh	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L98:
	rep
	ret
	.cfi_endproc
.LFE105:
	.size	PixelDrawBox_decreaseActX, .-PixelDrawBox_decreaseActX
	.globl	PixelDrawBox_decreaseActY
	.type	PixelDrawBox_decreaseActY, @function
PixelDrawBox_decreaseActY:
.LFB106:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+196]	# D.8860, pdb_1(D)->actY
	cmp	ax, 1	# D.8860,
	jbe	.L105	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, ax	# D.8860, D.8860
	add	ecx, 1	# tmp68,
	movzx	edx, si	# dy, dy
	cmp	ecx, edx	# tmp68, dy
	jle	.L101	#,
	sub	eax, esi	# tmp70, dy
	mov	WORD PTR [rdi+196], ax	# pdb_1(D)->actY, tmp70
	jmp	.L102	#
.L101:
	mov	WORD PTR [rdi+196], 1	# pdb_1(D)->actY,
.L102:
	call	PixelDrawBox_refresh	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L105:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	PixelDrawBox_decreaseActY, .-PixelDrawBox_decreaseActY
	.globl	PixelDrawBox_setEnabled
	.type	PixelDrawBox_setEnabled, @function
PixelDrawBox_setEnabled:
.LFB107:
	.cfi_startproc
	mov	BYTE PTR [rdi+184], sil	# pdb_1(D)->enabled, sel
	ret
	.cfi_endproc
.LFE107:
	.size	PixelDrawBox_setEnabled, .-PixelDrawBox_setEnabled
	.local	str_id
	.comm	str_id,204,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
