	.file	"PixelDrawBox.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT PixelDrawBox.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/PixelDrawBox.asm
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
.LFB107:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+112]	# D.9691, sender_1(D)->void_parameter
	mov	BYTE PTR [rax+209], 0	# MEM[(struct PixelDrawBox *)D.9691_2].mouse_ispressed,
	mov	BYTE PTR [rsi+170], 0	# screen_3(D)->pool_events,
	ret
	.cfi_endproc
.LFE107:
	.size	rectangle_mouse_released, .-rectangle_mouse_released
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"PixelDrawBox_vrefresh: Pixel dimension is too small. Try increasing PixelDrawBox.width or PixelDrawBox.height or decresing PixelDrawBox.grid.c_col, PixelDrawBox.grid.c_row\n"
	.align 8
.LC1:
	.string	"PixelDrawBox_refresh: Error: Found Widget of invalid type: %s at (y,x)=(%hu,%hu). Skipping\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"PixelDrawBox.c"
	.text
	.globl	PixelDrawBox_vrefresh
	.type	PixelDrawBox_vrefresh, @function
PixelDrawBox_vrefresh:
.LFB112:
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
	mov	rbp, rdi	# vthis, vthis
	movzx	eax, WORD PTR [rdi+210]	# MEM[(struct PixelDrawBox *)vthis_5(D)].width, MEM[(struct PixelDrawBox *)vthis_5(D)].width
	mov	edx, 0	# tmp142,
	div	WORD PTR [rdi+194]	# MEM[(struct Grid *)vthis_5(D)].c_col
	mov	ecx, eax	# tmp141, MEM[(struct PixelDrawBox *)vthis_5(D)].width
	mov	WORD PTR [rbp+214], ax	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w, tmp141
	movzx	eax, WORD PTR [rdi+212]	# MEM[(struct PixelDrawBox *)vthis_5(D)].height, MEM[(struct PixelDrawBox *)vthis_5(D)].height
	mov	edx, 0	# tmp145,
	div	WORD PTR [rdi+192]	# MEM[(struct Grid *)vthis_5(D)].c_row
	mov	WORD PTR [rdi+216], ax	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, tmp144
	cmp	cx, 2	# tmp141,
	jbe	.L3	#,
	cmp	ax, 2	# tmp144,
	ja	.L4	#,
.L3:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 172	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)vthis_5(D)].class, MEM[(struct coObject *)vthis_5(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9557_98->vtable, D.9557_98->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9558_99 + 8B], MEM[(const void * *)D.9558_99 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbp	#, vthis
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.9560_101].setVisible
	jmp	.L2	#
.L4:
	sub	ecx, 2	# tmp151,
	mov	WORD PTR [rdi+214], cx	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w, tmp151
	sub	eax, 2	# tmp152,
	mov	WORD PTR [rdi+216], ax	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, tmp152
	mov	r14d, 0	# y,
	cmp	WORD PTR [rdi+192], 0	# MEM[(struct Grid *)vthis_5(D)].c_row,
	jne	.L28	#,
	jmp	.L7	#
.L22:
	mov	rdx, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_5(D)].items, MEM[(struct Grid *)vthis_5(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp158,
	sal	rax, 3	# tmp159,
	add	rax, QWORD PTR [rdx+r15]	# tmp160, *D.9567_28
	mov	r12, QWORD PTR [rax]	# rect_wt, D.9571_32->widget
	mov	r13d, 11250603	# col,
	cmp	WORD PTR [rbp+220], r14w	# MEM[(struct PixelDrawBox *)vthis_5(D)].actY, y
	jbe	.L8	#,
	cmp	bx, WORD PTR [rbp+218]	# x, MEM[(struct PixelDrawBox *)vthis_5(D)].actX
	sbb	r13d, r13d	# col
	and	r13d, 5526612	# col,
	add	r13d, 11250603	# col,
.L8:
	test	r12, r12	# rect_wt
	je	.L9	#,
	mov	rax, QWORD PTR [r12]	# D.9581, MEM[(struct coObject *)rect_wt_33].class
	cmp	rax, QWORD PTR Rectangle_class[rip]	# D.9581, Rectangle_class
	je	.L10	#,
	mov	rcx, QWORD PTR [rax+8]	# D.9581_40->name, D.9581_40->name
	movzx	r9d, bx	#, x
	mov	r8d, DWORD PTR [rsp+44]	#, %sfp
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L11	#
.L10:
	movzx	esi, WORD PTR [rbp+214]	# D.9553, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w
	cmp	WORD PTR [r12+100], si	# rect_wt_33->pos.w, D.9553
	jne	.L12	#,
	movzx	eax, WORD PTR [rbp+216]	#, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h
	cmp	WORD PTR [r12+102], ax	# rect_wt_33->pos.h,
	je	.L13	#,
.L12:
	movzx	edx, WORD PTR [rbp+216]	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h
	movzx	esi, si	# D.9553, D.9553
	mov	rdi, r12	#, rect_wt
	call	Rectangle_setSize	#
	cmp	r13d, 11250603	# col,
	jne	.L14	#,
	mov	eax, DWORD PTR [r12+168]	# D.9600, MEM[(struct Rectangle *)rect_wt_33].color
	cmp	eax, 11250603	# D.9600,
	jne	.L15	#,
	jmp	.L16	#
.L14:
	cmp	r13d, 16777215	# col,
	jne	.L16	#,
	cmp	DWORD PTR [r12+168], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
	jne	.L16	#,
	jmp	.L17	#
.L15:
	cmp	eax, 961024	# D.9600,
	jne	.L17	#,
	mov	WORD PTR [rbp+224], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_y,
	mov	WORD PTR [rbp+222], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_x,
.L17:
	mov	DWORD PTR [r12+168], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
.L16:
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)rect_wt_33].class, MEM[(struct coObject *)rect_wt_33].class
	mov	rax, QWORD PTR [rax+16]	# D.9605_69->vtable, D.9605_69->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9606_70 + 8B], MEM[(const void * *)D.9606_70 + 8B]
	mov	rdi, r12	#, rect_wt
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9608_72].refresh
	jmp	.L11	#
.L13:
	cmp	r13d, 11250603	# col,
	jne	.L19	#,
	mov	eax, DWORD PTR [r12+168]	# D.9600, MEM[(struct Rectangle *)rect_wt_33].color
	cmp	eax, 11250603	# D.9600,
	jne	.L20	#,
	jmp	.L11	#
.L19:
	cmp	r13d, 16777215	# col,
	jne	.L11	#,
	cmp	DWORD PTR [r12+168], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
	jne	.L11	#,
	jmp	.L21	#
.L20:
	cmp	eax, 961024	# D.9600,
	jne	.L21	#,
	mov	WORD PTR [rbp+224], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_y,
	mov	WORD PTR [rbp+222], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_x,
.L21:
	mov	DWORD PTR [r12+168], r13d	# MEM[(struct Rectangle *)rect_wt_33].color, col
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)rect_wt_33].class, MEM[(struct coObject *)rect_wt_33].class
	mov	rax, QWORD PTR [rax+16]	# D.9605_56->vtable, D.9605_56->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9606_57 + 8B], MEM[(const void * *)D.9606_57 + 8B]
	mov	rdi, r12	#, rect_wt
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9608_59].refresh
.L11:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+194], bx	# MEM[(struct Grid *)vthis_5(D)].c_col, x
	ja	.L22	#,
.L23:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbp+192], r14w	# MEM[(struct Grid *)vthis_5(D)].c_row, y
	jbe	.L7	#,
.L28:
	cmp	WORD PTR [rbp+194], 0	# MEM[(struct Grid *)vthis_5(D)].c_col,
	je	.L23	#,
	movzx	r15d, r14w	# y, y
	sal	r15, 3	# D.9566,
	mov	ebx, 0	# x,
	movzx	eax, r14w	#, y
	mov	DWORD PTR [rsp+44], eax	# %sfp,
	jmp	.L22	#
.L7:
	mov	rdi, rbp	#, vthis
	call	Grid_vrefresh	#
	jmp	.L2	#
.L9:
	mov	edx, 282	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rax, QWORD PTR Rectangle_class[rip]	# Rectangle_class, Rectangle_class
	mov	rdi, QWORD PTR [rax]	#, Rectangle_class.2_75->size
	call	wmalloc	#
	mov	esi, r13d	#, col
	mov	rdi, rax	#, D.9620
	call	Rectangle_new	#
	mov	r12, rax	# rect,
	movzx	r13d, bx	# x, x
	mov	eax, r13d	# tmp178, x
	sal	eax, 16	# tmp178,
	or	eax, DWORD PTR [rsp+44]	# tmp180, %sfp
	mov	DWORD PTR [r12+152], eax	# MEM[(struct Widget *)rect_78].id, tmp180
	mov	QWORD PTR [r12+112], rbp	# MEM[(struct Widget *)rect_78].void_parameter, vthis
	mov	QWORD PTR [r12+16], OFFSET FLAT:rectangle_press	# MEM[(struct Widget *)rect_78].press_handler,
	mov	QWORD PTR [r12+32], OFFSET FLAT:rectangle_mouse_enter	# MEM[(struct Widget *)rect_78].mouse_enter_handler,
	mov	QWORD PTR [r12+24], OFFSET FLAT:rectangle_mouse_released	# MEM[(struct Widget *)rect_78].release_handler,
	movzx	edx, WORD PTR [rbp+216]	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h
	movzx	esi, WORD PTR [rbp+214]	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w
	mov	rdi, r12	#, rect
	call	Rectangle_setSize	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)rect_78].class, MEM[(struct coObject *)rect_78].class
	mov	rax, QWORD PTR [rax+16]	# D.9581_88->vtable, D.9581_88->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9625_89 + 8B], MEM[(const void * *)D.9625_89 + 8B]
	mov	rdi, r12	#, rect
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9627_91].refresh
	mov	DWORD PTR [rsp+24], 1	#,
	mov	DWORD PTR [rsp+16], 1	#,
	mov	DWORD PTR [rsp+8], 1	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, r13d	#, x
	mov	edx, DWORD PTR [rsp+44]	#, %sfp
	mov	rsi, r12	#, rect
	mov	rdi, rbp	#, vthis
	call	Grid_add	#
	jmp	.L11	#
.L2:
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
.LFE112:
	.size	PixelDrawBox_vrefresh, .-PixelDrawBox_vrefresh
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"PixelDrawBox_destroy[%s]: Found NULL widget at (y,x)=(%hu,%hu)\n"
	.align 8
.LC4:
	.string	"PixelDrawBox_destroy[%s]: Parent grid object has NULL items array\n"
	.text
	.globl	PixelDrawBox_vdestroy
	.type	PixelDrawBox_vdestroy, @function
PixelDrawBox_vdestroy:
.LFB108:
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
	cmp	QWORD PTR [rdi+176], 0	# MEM[(struct Grid *)vthis_3(D)].items,
	je	.L31	#,
	mov	r13d, 0	# y,
	cmp	WORD PTR [rdi+192], 0	# MEM[(struct Grid *)vthis_3(D)].c_row,
	jne	.L40	#,
	jmp	.L33	#
.L36:
	mov	rdx, QWORD PTR [rbp+176]	# MEM[(struct Grid *)vthis_3(D)].items, MEM[(struct Grid *)vthis_3(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp92,
	sal	rax, 3	# tmp93,
	add	rax, QWORD PTR [rdx+r12]	# tmp94, *D.9674_12
	mov	rdi, QWORD PTR [rax]	# rect_wt, D.9678_16->widget
	test	rdi, rdi	# rect_wt
	je	.L34	#,
	call	delete	#
	mov	edx, 149	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9681
	call	wfree	#
	jmp	.L35	#
.L34:
	mov	rdi, rbp	#, vthis
	call	Widget_toString	#
	movzx	r9d, bx	#, x
	mov	r8d, r14d	#, y
	mov	rcx, rax	#, D.9685
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L35:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+194], bx	# MEM[(struct Grid *)vthis_3(D)].c_col, x
	ja	.L36	#,
.L37:
	add	r13d, 1	# y,
	cmp	WORD PTR [rbp+192], r13w	# MEM[(struct Grid *)vthis_3(D)].c_row, y
	jbe	.L33	#,
.L40:
	cmp	WORD PTR [rbp+194], 0	# MEM[(struct Grid *)vthis_3(D)].c_col,
	je	.L37	#,
	movzx	r12d, r13w	# y, y
	sal	r12, 3	# D.9673,
	mov	ebx, 0	# x,
	movzx	r14d, r13w	# y, y
	jmp	.L36	#
.L31:
	call	Widget_toString	#
	mov	rcx, rax	#, D.9690
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L33:
	mov	rdi, rbp	#, vthis
	call	Grid_vdestroy	#
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
.LFE108:
	.size	PixelDrawBox_vdestroy, .-PixelDrawBox_vdestroy
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"PixelDrawBox: (width,height)=(%hu,%hu), (c_col,c_row)=(%hu,%hu), (actX,actY)=(%hu,%hu), (rect_w,rect_h)=(%hu,%hu), (spec_x,spec_y)=(%hu,%hu)"
	.text
	.globl	PixelDrawBox_vtoString
	.type	PixelDrawBox_vtoString, @function
PixelDrawBox_vtoString:
.LFB103:
	.cfi_startproc
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	movzx	r9d, WORD PTR [rdi+210]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].width, MEM[(const struct PixelDrawBox *)vthis_1(D)].width
	movzx	eax, WORD PTR [rdi+224]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].spec_pix_y, MEM[(const struct PixelDrawBox *)vthis_1(D)].spec_pix_y
	mov	DWORD PTR [rsp+64], eax	#, MEM[(const struct PixelDrawBox *)vthis_1(D)].spec_pix_y
	movzx	eax, WORD PTR [rdi+222]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].spec_pix_x, MEM[(const struct PixelDrawBox *)vthis_1(D)].spec_pix_x
	mov	DWORD PTR [rsp+56], eax	#, MEM[(const struct PixelDrawBox *)vthis_1(D)].spec_pix_x
	movzx	eax, WORD PTR [rdi+216]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].rect_h, MEM[(const struct PixelDrawBox *)vthis_1(D)].rect_h
	mov	DWORD PTR [rsp+48], eax	#, MEM[(const struct PixelDrawBox *)vthis_1(D)].rect_h
	movzx	eax, WORD PTR [rdi+214]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].rect_w, MEM[(const struct PixelDrawBox *)vthis_1(D)].rect_w
	mov	DWORD PTR [rsp+40], eax	#, MEM[(const struct PixelDrawBox *)vthis_1(D)].rect_w
	movzx	eax, WORD PTR [rdi+220]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].actY, MEM[(const struct PixelDrawBox *)vthis_1(D)].actY
	mov	DWORD PTR [rsp+32], eax	#, MEM[(const struct PixelDrawBox *)vthis_1(D)].actY
	movzx	eax, WORD PTR [rdi+218]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].actX, MEM[(const struct PixelDrawBox *)vthis_1(D)].actX
	mov	DWORD PTR [rsp+24], eax	#, MEM[(const struct PixelDrawBox *)vthis_1(D)].actX
	movzx	eax, WORD PTR [rdi+192]	# MEM[(struct Grid *)vthis_1(D)].c_row, MEM[(struct Grid *)vthis_1(D)].c_row
	mov	DWORD PTR [rsp+16], eax	#, MEM[(struct Grid *)vthis_1(D)].c_row
	movzx	eax, WORD PTR [rdi+194]	# MEM[(struct Grid *)vthis_1(D)].c_col, MEM[(struct Grid *)vthis_1(D)].c_col
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Grid *)vthis_1(D)].c_col
	movzx	eax, WORD PTR [rdi+212]	# MEM[(const struct PixelDrawBox *)vthis_1(D)].height, MEM[(const struct PixelDrawBox *)vthis_1(D)].height
	mov	DWORD PTR [rsp], eax	#, MEM[(const struct PixelDrawBox *)vthis_1(D)].height
	mov	r8d, OFFSET FLAT:.LC5	#,
	mov	ecx, 240	#,
	mov	edx, 1	#,
	mov	esi, 240	#,
	mov	edi, OFFSET FLAT:str_id.9380	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9380	#,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE103:
	.size	PixelDrawBox_vtoString, .-PixelDrawBox_vtoString
	.globl	PixelDrawBox_parseClick
	.type	PixelDrawBox_parseClick, @function
PixelDrawBox_parseClick:
.LFB104:
	.cfi_startproc
	mov	eax, DWORD PTR [rsi+152]	# D.9706, sender_2(D)->id
	mov	esi, eax	#, D.9706
	shr	esi, 16	#,
	cmp	si, WORD PTR [rdi+218]	# x, pdb_8(D)->actX
	jae	.L56	#,
	cmp	ax, WORD PTR [rdi+220]	# y, pdb_8(D)->actY
	jae	.L56	#,
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdx	# screen, screen
	movzx	r10d, ax	# y, y
	mov	r9, QWORD PTR [rdi+176]	# MEM[(struct Grid *)pdb_8(D)].items, MEM[(struct Grid *)pdb_8(D)].items
	movzx	edx, si	# x, x
	lea	rdx, [rdx+rdx*4]	# tmp99,
	sal	rdx, 3	# tmp100,
	add	rdx, QWORD PTR [r9+r10*8]	# tmp101, *D.9716_14
	mov	rdx, QWORD PTR [rdx]	# press_rect, D.9720_18->widget
	cmp	cl, 2	# butmask,
	je	.L47	#,
	cmp	cl, 4	# butmask,
	je	.L48	#,
	cmp	cl, 1	# butmask,
	jne	.L44	#,
	mov	eax, DWORD PTR [rdx+168]	# D.9722, press_rect_19->color
	cmp	eax, 16777215	# D.9722,
	jne	.L49	#,
	mov	DWORD PTR [rdx+168], 0	# press_rect_19->color,
	jmp	.L50	#
.L49:
	cmp	eax, 961024	# D.9722,
	jne	.L44	#,
	mov	DWORD PTR [rdx+168], 12189619	# press_rect_19->color,
	jmp	.L50	#
.L47:
	test	r8b, r8b	# check_spec
	je	.L44	#,
	cmp	WORD PTR [rdi+222], -1	# pdb_8(D)->spec_pix_x,
	jne	.L44	#,
	cmp	DWORD PTR [rdx+168], 16777215	# press_rect_19->color,
	jne	.L44	#,
	mov	DWORD PTR [rdx+168], 961024	# press_rect_19->color,
	mov	WORD PTR [rdi+222], si	# pdb_8(D)->spec_pix_x, x
	mov	WORD PTR [rdi+224], ax	# pdb_8(D)->spec_pix_y, y
	jmp	.L50	#
.L48:
	mov	eax, DWORD PTR [rdx+168]	# D.9722, press_rect_19->color
	test	eax, eax	# D.9722
	jne	.L51	#,
	mov	DWORD PTR [rdx+168], 16777215	# press_rect_19->color,
	jmp	.L50	#
.L51:
	cmp	eax, 12189619	# D.9722,
	je	.L53	#,
	cmp	eax, 961024	# D.9722,
	jne	.L44	#,
.L53:
	mov	DWORD PTR [rdx+168], 16777215	# press_rect_19->color,
	mov	WORD PTR [rdi+224], -1	# pdb_8(D)->spec_pix_y,
	mov	WORD PTR [rdi+222], -1	# pdb_8(D)->spec_pix_x,
.L50:
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)press_rect_19].class, MEM[(struct coObject *)press_rect_19].class
	mov	rax, QWORD PTR [rax+16]	# D.9748_39->vtable, D.9748_39->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9749_40 + 8B], MEM[(const void * *)D.9749_40 + 8B]
	mov	rdi, rdx	#, press_rect
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9751_42].refresh
	mov	BYTE PTR [rbx+173], 1	# screen_44(D)->need_reload,
.L44:
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L56:
	rep
	ret
	.cfi_endproc
.LFE104:
	.size	PixelDrawBox_parseClick, .-PixelDrawBox_parseClick
	.globl	rectangle_mouse_enter
	.type	rectangle_mouse_enter, @function
rectangle_mouse_enter:
.LFB106:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+112]	# D.9692, sender_1(D)->void_parameter
	cmp	BYTE PTR [rax+209], 0	# MEM[(struct PixelDrawBox *)D.9692_2].mouse_ispressed,
	je	.L61	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, BYTE PTR [rsi+10]	# screen_4(D)->event.motion.state, screen_4(D)->event.motion.state
	mov	r8d, 0	#,
	mov	rdx, rsi	#, screen
	mov	rsi, rdi	#, sender
	mov	rdi, rax	#, D.9692
	call	PixelDrawBox_parseClick	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L61:
	rep
	ret
	.cfi_endproc
.LFE106:
	.size	rectangle_mouse_enter, .-rectangle_mouse_enter
	.globl	rectangle_press
	.type	rectangle_press, @function
rectangle_press:
.LFB105:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rax, rdi	# sender, sender
	mov	rdx, rsi	# screen, screen
	mov	rcx, QWORD PTR [rdi+112]	# D.9699, sender_1(D)->void_parameter
	mov	BYTE PTR [rcx+209], 1	# MEM[(struct PixelDrawBox *)D.9699_2].mouse_ispressed,
	mov	BYTE PTR [rsi+170], 1	# screen_3(D)->pool_events,
	movzx	ecx, BYTE PTR [rsi+10]	# screen_3(D)->event.button.button, screen_3(D)->event.button.button
	sub	ecx, 1	# tmp69,
	mov	esi, 1	# tmp71,
	sal	esi, cl	# tmp71, tmp69
	mov	ecx, esi	# tmp70, tmp71
	and	ecx, 255	# tmp72,
	mov	rdi, QWORD PTR [rdi+112]	# sender_1(D)->void_parameter, sender_1(D)->void_parameter
	mov	r8d, 1	#,
	mov	rsi, rax	#, sender
	call	PixelDrawBox_parseClick	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE105:
	.size	rectangle_press, .-rectangle_press
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"%20s:\tWithin context: (width,height,c_col,c_row,actX,actY)=(%hu,%hu,%hu,%hu,%hu,%hu)\n\n"
	.align 8
.LC7:
	.string	"PixelDrawBox_new[this=%p]: Creating\n"
	.align 8
.LC8:
	.string	"PixelDrawBox_new: Wrong initialization: %s\n"
	.text
	.globl	PixelDrawBox_new
	.type	PixelDrawBox_new, @function
PixelDrawBox_new:
.LFB109:
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
	jne	.L65	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9430	#,
	call	Static_nullThis2	#
	movzx	r14d, r14w	# actY, actY
	mov	DWORD PTR [rsp+24], r14d	#, actY
	movzx	r15d, r15w	# actX, actX
	mov	DWORD PTR [rsp+16], r15d	#, actX
	movzx	r12d, r12w	# c_row, c_row
	mov	DWORD PTR [rsp+8], r12d	#, c_row
	movzx	eax, WORD PTR [rsp+46]	# c_col, %sfp
	mov	DWORD PTR [rsp], eax	#, c_col
	movzx	r9d, bp	#, height
	movzx	r8d, r13w	#, width
	mov	ecx, OFFSET FLAT:__FUNCTION__.9430	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L66	#
.L65:
	movzx	edx, WORD PTR [rsp+46]	# c_col, %sfp
	movzx	esi, r8w	# c_row, c_row
	call	Grid_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_3(D)].class,
	mov	rcx, rbx	#, this
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	DWORD PTR [rbx+196], 524449	# MEM[(struct Grid *)this_3(D)].bord_color,
	mov	BYTE PTR [rbx+208], 1	# this_3(D)->enabled,
	mov	WORD PTR [rbx+210], r13w	# this_3(D)->width, width
	mov	WORD PTR [rbx+212], bp	# this_3(D)->height, height
	mov	BYTE PTR [rbx+209], 0	# this_3(D)->mouse_ispressed,
	mov	WORD PTR [rbx+218], r15w	# this_3(D)->actX, actX
	mov	WORD PTR [rbx+220], r14w	# this_3(D)->actY, actY
	mov	WORD PTR [rbx+224], -1	# this_3(D)->spec_pix_y,
	mov	WORD PTR [rbx+222], -1	# this_3(D)->spec_pix_x,
	test	bp, bp	# height
	je	.L67	#,
	test	r13w, r13w	# width
	je	.L67	#,
	test	r12w, r12w	# c_row
	je	.L67	#,
	cmp	WORD PTR [rsp+46], 0	# %sfp,
	je	.L67	#,
	test	r14w, r14w	# actY
	je	.L67	#,
	test	r15w, r15w	# actX
	jne	.L66	#,
.L67:
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)this_3(D)].class, MEM[(struct coObject *)this_3(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9663_31->vtable, D.9663_31->vtable
	mov	rax, QWORD PTR [rax]	# *D.9664_32, *D.9664_32
	mov	rdi, rbx	#, this
	call	[QWORD PTR [rax+8]]	# MEM[(struct coIObject *)D.9665_33].toString
	mov	rcx, rax	#, iftmp.4
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L66:
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
.LFE109:
	.size	PixelDrawBox_new, .-PixelDrawBox_new
	.globl	PixelDrawBox_setPosition
	.type	PixelDrawBox_setPosition, @function
PixelDrawBox_setPosition:
.LFB110:
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
.LFE110:
	.size	PixelDrawBox_setPosition, .-PixelDrawBox_setPosition
	.globl	PixelDrawBox_setPadding
	.type	PixelDrawBox_setPadding, @function
PixelDrawBox_setPadding:
.LFB111:
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
.LFE111:
	.size	PixelDrawBox_setPadding, .-PixelDrawBox_setPadding
	.globl	PixelDrawBox_increaseActX
	.type	PixelDrawBox_increaseActX, @function
PixelDrawBox_increaseActX:
.LFB113:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+218]	# D.9528, pdb_1(D)->actX
	movzx	edx, WORD PTR [rdi+194]	# D.9529, MEM[(struct Grid *)pdb_1(D)].c_col
	cmp	ax, dx	# D.9528, D.9529
	jae	.L80	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	r8d, ax	# D.9528, D.9528
	movzx	ecx, si	# dx, dx
	add	r8d, ecx	# tmp75, dx
	movzx	ecx, dx	# D.9529, D.9529
	cmp	r8d, ecx	# tmp75, D.9529
	jle	.L76	#,
	mov	WORD PTR [rdi+218], dx	# pdb_1(D)->actX, D.9529
	jmp	.L77	#
.L76:
	add	esi, eax	# tmp77, D.9528
	mov	WORD PTR [rdi+218], si	# pdb_1(D)->actX, tmp77
.L77:
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)pdb_1(D)].class, MEM[(struct coObject *)pdb_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9540_14->vtable, D.9540_14->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9541_15 + 8B], MEM[(const void * *)D.9541_15 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9543_17].refresh
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L80:
	rep
	ret
	.cfi_endproc
.LFE113:
	.size	PixelDrawBox_increaseActX, .-PixelDrawBox_increaseActX
	.globl	PixelDrawBox_increaseActY
	.type	PixelDrawBox_increaseActY, @function
PixelDrawBox_increaseActY:
.LFB114:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+220]	# D.9511, pdb_1(D)->actY
	movzx	edx, WORD PTR [rdi+192]	# D.9512, MEM[(struct Grid *)pdb_1(D)].c_row
	cmp	ax, dx	# D.9511, D.9512
	jae	.L87	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	r8d, ax	# D.9511, D.9511
	movzx	ecx, si	# dy, dy
	add	r8d, ecx	# tmp75, dy
	movzx	ecx, dx	# D.9512, D.9512
	cmp	r8d, ecx	# tmp75, D.9512
	jle	.L83	#,
	mov	WORD PTR [rdi+220], dx	# pdb_1(D)->actY, D.9512
	jmp	.L84	#
.L83:
	add	esi, eax	# tmp77, D.9511
	mov	WORD PTR [rdi+220], si	# pdb_1(D)->actY, tmp77
.L84:
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)pdb_1(D)].class, MEM[(struct coObject *)pdb_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9523_14->vtable, D.9523_14->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9524_15 + 8B], MEM[(const void * *)D.9524_15 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9526_17].refresh
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L87:
	rep
	ret
	.cfi_endproc
.LFE114:
	.size	PixelDrawBox_increaseActY, .-PixelDrawBox_increaseActY
	.globl	PixelDrawBox_decreaseActX
	.type	PixelDrawBox_decreaseActX, @function
PixelDrawBox_decreaseActX:
.LFB115:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+218]	# D.9496, pdb_1(D)->actX
	cmp	ax, 1	# D.9496,
	jbe	.L94	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, ax	# D.9496, D.9496
	add	ecx, 1	# tmp72,
	movzx	edx, si	# dx, dx
	cmp	ecx, edx	# tmp72, dx
	jle	.L90	#,
	sub	eax, esi	# tmp74, dx
	mov	WORD PTR [rdi+218], ax	# pdb_1(D)->actX, tmp74
	jmp	.L91	#
.L90:
	mov	WORD PTR [rdi+218], 1	# pdb_1(D)->actX,
.L91:
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)pdb_1(D)].class, MEM[(struct coObject *)pdb_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9506_10->vtable, D.9506_10->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9507_11 + 8B], MEM[(const void * *)D.9507_11 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9509_13].refresh
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L94:
	rep
	ret
	.cfi_endproc
.LFE115:
	.size	PixelDrawBox_decreaseActX, .-PixelDrawBox_decreaseActX
	.globl	PixelDrawBox_decreaseActY
	.type	PixelDrawBox_decreaseActY, @function
PixelDrawBox_decreaseActY:
.LFB116:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+220]	# D.9481, pdb_1(D)->actY
	cmp	ax, 1	# D.9481,
	jbe	.L101	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, ax	# D.9481, D.9481
	add	ecx, 1	# tmp72,
	movzx	edx, si	# dy, dy
	cmp	ecx, edx	# tmp72, dy
	jle	.L97	#,
	sub	eax, esi	# tmp74, dy
	mov	WORD PTR [rdi+220], ax	# pdb_1(D)->actY, tmp74
	jmp	.L98	#
.L97:
	mov	WORD PTR [rdi+220], 1	# pdb_1(D)->actY,
.L98:
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)pdb_1(D)].class, MEM[(struct coObject *)pdb_1(D)].class
	mov	rax, QWORD PTR [rax+16]	# D.9491_10->vtable, D.9491_10->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.9492_11 + 8B], MEM[(const void * *)D.9492_11 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.9494_13].refresh
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L101:
	rep
	ret
	.cfi_endproc
.LFE116:
	.size	PixelDrawBox_decreaseActY, .-PixelDrawBox_decreaseActY
	.globl	PixelDrawBox_setEnabled
	.type	PixelDrawBox_setEnabled, @function
PixelDrawBox_setEnabled:
.LFB117:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE117:
	.size	PixelDrawBox_setEnabled, .-PixelDrawBox_setEnabled
	.globl	PixelDrawBox_class
	.data
	.align 8
	.type	PixelDrawBox_class, @object
	.size	PixelDrawBox_class, 8
PixelDrawBox_class:
	.quad	type
	.local	str_id.9380
	.comm	str_id.9380,240,32
	.section	.rodata.str1.1
.LC9:
	.string	"PixelDrawBox"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# size:
	.quad	232
# name:
	.quad	.LC9
# vtable:
	.quad	vtable
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9430, @object
	.size	__FUNCTION__.9430, 17
__FUNCTION__.9430:
	.string	"PixelDrawBox_new"
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
	.quad	PixelDrawBox_vdestroy
# toString:
	.quad	PixelDrawBox_vtoString
	.align 32
	.type	override_IWidget, @object
	.size	override_IWidget, 40
override_IWidget:
# mevent:
	.quad	Grid_vmevent
# draw:
	.quad	Grid_vdraw
# refresh:
	.quad	PixelDrawBox_vrefresh
# drag:
	.quad	Grid_vdrag
# setVisible:
	.quad	Grid_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
