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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject/v1.0/include
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
.LFB97:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi+112]	# D.9372, sender_1(D)->void_parameter
	mov	BYTE PTR [rax+217], 0	# MEM[(struct PixelDrawBox *)D.9372_2].mouse_ispressed,
	mov	BYTE PTR [rsi+122], 0	# screen_3(D)->pool_events,
	ret
	.cfi_endproc
.LFE97:
	.size	rectangle_mouse_released, .-rectangle_mouse_released
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"PixelDrawBox_vrefresh: Pixel dimension is too small. Try increasing PixelDrawBox.width or PixelDrawBox.height or decresing PixelDrawBox.grid.c_col, PixelDrawBox.grid.c_row\n"
	.align 8
.LC1:
	.string	"PixelDrawBox_refresh: Found Widget of invalid type: %s at (y,x)=(%hu,%hu). Deleting\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"PixelDrawBox.c"
	.text
	.globl	PixelDrawBox_vrefresh
	.type	PixelDrawBox_vrefresh, @function
PixelDrawBox_vrefresh:
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
	mov	rbx, rdi	# vthis, vthis
	movzx	eax, WORD PTR [rdi+218]	# MEM[(struct PixelDrawBox *)vthis_5(D)].width, MEM[(struct PixelDrawBox *)vthis_5(D)].width
	mov	edx, 0	# tmp126,
	div	WORD PTR [rdi+202]	# MEM[(struct Grid *)vthis_5(D)].c_col
	mov	ecx, eax	# tmp125, MEM[(struct PixelDrawBox *)vthis_5(D)].width
	mov	WORD PTR [rbx+222], ax	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w, tmp125
	movzx	eax, WORD PTR [rdi+220]	# MEM[(struct PixelDrawBox *)vthis_5(D)].height, MEM[(struct PixelDrawBox *)vthis_5(D)].height
	mov	edx, 0	# tmp129,
	div	WORD PTR [rdi+200]	# MEM[(struct Grid *)vthis_5(D)].c_row
	mov	WORD PTR [rdi+224], ax	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, tmp128
	cmp	cx, 2	# tmp125,
	jbe	.L3	#,
	cmp	ax, 2	# tmp128,
	ja	.L4	#,
.L3:
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 172	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC0	#,
	call	fwrite	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, vthis
	call	Widget_setVisible	#
	jmp	.L2	#
.L4:
	sub	ecx, 2	# tmp131,
	mov	WORD PTR [rdi+222], cx	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w, tmp131
	sub	eax, 2	# tmp132,
	mov	WORD PTR [rdi+224], ax	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, tmp132
	mov	r14d, 0	# y,
	cmp	WORD PTR [rdi+200], 0	# MEM[(struct Grid *)vthis_5(D)].c_row,
	jne	.L28	#,
	jmp	.L7	#
.L21:
	mov	rdx, QWORD PTR [rbx+184]	# MEM[(struct Grid *)vthis_5(D)].items, MEM[(struct Grid *)vthis_5(D)].items
	movzx	eax, r12w	# x, x
	lea	rax, [rax+rax*4]	# tmp138,
	sal	rax, 3	# tmp139,
	mov	rcx, QWORD PTR [rsp+40]	#, %sfp
	add	rax, QWORD PTR [rdx+rcx]	# tmp140, *D.9263_28
	mov	r15, QWORD PTR [rax]	# rect_wt, D.9267_32->widget
	mov	ebp, 11250603	# col,
	cmp	WORD PTR [rbx+228], r14w	# MEM[(struct PixelDrawBox *)vthis_5(D)].actY, y
	jbe	.L8	#,
	cmp	r12w, WORD PTR [rbx+226]	# x, MEM[(struct PixelDrawBox *)vthis_5(D)].actX
	sbb	ebp, ebp	# col
	and	ebp, 5526612	# col,
	add	ebp, 11250603	# col,
.L8:
	test	r15, r15	# rect_wt
	je	.L9	#,
	mov	rax, QWORD PTR [r15]	# D.9277, MEM[(struct coObject *)rect_wt_33].class
	cmp	rax, QWORD PTR Rectangle_class[rip]	# D.9277, Rectangle_class
	je	.L10	#,
	mov	rcx, QWORD PTR [rax+16]	# D.9277_40->name, D.9277_40->name
	movzx	r9d, r12w	#, x
	mov	r8d, r13d	#, y
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, r15	#, rect_wt
	call	delete	#
	jmp	.L9	#
.L10:
	movzx	esi, WORD PTR [rbx+222]	# D.9254, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w
	cmp	WORD PTR [r15+100], si	# rect_wt_33->pos.w, D.9254
	jne	.L11	#,
	movzx	eax, WORD PTR [rbx+224]	#, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h
	cmp	WORD PTR [r15+102], ax	# rect_wt_33->pos.h,
	je	.L12	#,
.L11:
	movzx	edx, WORD PTR [rbx+224]	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h
	movzx	esi, si	# D.9254, D.9254
	mov	rdi, r15	#, rect_wt
	call	Rectangle_setSize	#
	cmp	ebp, 11250603	# col,
	jne	.L13	#,
	mov	eax, DWORD PTR [r15+176]	# D.9297, MEM[(struct Rectangle *)rect_wt_33].color
	cmp	eax, 11250603	# D.9297,
	jne	.L14	#,
	jmp	.L15	#
.L13:
	cmp	ebp, 16777215	# col,
	jne	.L15	#,
	cmp	DWORD PTR [r15+176], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
	jne	.L15	#,
	jmp	.L16	#
.L14:
	cmp	eax, 961024	# D.9297,
	jne	.L16	#,
	mov	WORD PTR [rbx+232], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_y,
	mov	WORD PTR [rbx+230], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_x,
.L16:
	mov	DWORD PTR [r15+176], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
.L15:
	mov	rdi, r15	#, rect_wt
	call	Widget_refresh	#
	jmp	.L23	#
.L12:
	cmp	ebp, 11250603	# col,
	jne	.L18	#,
	mov	eax, DWORD PTR [r15+176]	# D.9297, MEM[(struct Rectangle *)rect_wt_33].color
	cmp	eax, 11250603	# D.9297,
	jne	.L19	#,
	jmp	.L23	#
.L18:
	cmp	ebp, 16777215	# col,
	jne	.L23	#,
	cmp	DWORD PTR [r15+176], 11250603	# MEM[(struct Rectangle *)rect_wt_33].color,
	jne	.L23	#,
	jmp	.L20	#
.L19:
	cmp	eax, 961024	# D.9297,
	jne	.L20	#,
	mov	WORD PTR [rbx+232], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_y,
	mov	WORD PTR [rbx+230], -1	# MEM[(struct PixelDrawBox *)vthis_5(D)].spec_pix_x,
.L20:
	mov	DWORD PTR [r15+176], ebp	# MEM[(struct Rectangle *)rect_wt_33].color, col
	mov	rdi, r15	#, rect_wt
	call	Widget_refresh	#
.L23:
	add	r12d, 1	# x,
	cmp	WORD PTR [rbx+202], r12w	# MEM[(struct Grid *)vthis_5(D)].c_col, x
	ja	.L21	#,
.L22:
	add	r14d, 1	# y,
	cmp	WORD PTR [rbx+200], r14w	# MEM[(struct Grid *)vthis_5(D)].c_row, y
	jbe	.L7	#,
.L28:
	cmp	WORD PTR [rbx+202], 0	# MEM[(struct Grid *)vthis_5(D)].c_col,
	je	.L22	#,
	movzx	eax, r14w	# y, y
	sal	rax, 3	#,
	mov	QWORD PTR [rsp+40], rax	# %sfp,
	mov	r12d, 0	# x,
	movzx	r13d, r14w	# y, y
	jmp	.L21	#
.L7:
	mov	rdi, rbx	#, vthis
	call	Grid_vrefresh	#
	jmp	.L2	#
.L9:
	mov	rax, QWORD PTR Rectangle_class[rip]	# Rectangle_class, Rectangle_class
	mov	rdi, QWORD PTR [rax+8]	# Rectangle_class.2_65->size, Rectangle_class.2_65->size
	mov	edx, 267	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	call	wmalloc	#
	mov	esi, ebp	#, col
	mov	rdi, rax	#, D.9312
	call	Rectangle_new	#
	mov	rbp, rax	# rect,
	movzx	r15d, r12w	# x, x
	mov	eax, r15d	# tmp151, x
	sal	eax, 16	# tmp151,
	or	eax, r13d	# tmp153, y
	mov	DWORD PTR [rbp+160], eax	# MEM[(struct Widget *)rect_68].id, tmp153
	mov	QWORD PTR [rbp+112], rbx	# MEM[(struct Widget *)rect_68].void_parameter, vthis
	mov	QWORD PTR [rbp+16], OFFSET FLAT:rectangle_press	# MEM[(struct Widget *)rect_68].press_handler,
	mov	QWORD PTR [rbp+32], OFFSET FLAT:rectangle_mouse_enter	# MEM[(struct Widget *)rect_68].mouse_enter_handler,
	mov	QWORD PTR [rbp+24], OFFSET FLAT:rectangle_mouse_released	# MEM[(struct Widget *)rect_68].release_handler,
	movzx	edx, WORD PTR [rbx+224]	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_h
	movzx	esi, WORD PTR [rbx+222]	# MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w, MEM[(struct PixelDrawBox *)vthis_5(D)].rect_w
	mov	rdi, rbp	#, rect
	call	Rectangle_setSize	#
	mov	rdi, rbp	#, rect
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+24], 1	#,
	mov	DWORD PTR [rsp+16], 1	#,
	mov	DWORD PTR [rsp+8], 1	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, r15d	#, x
	mov	edx, r13d	#, y
	mov	rsi, rbp	#, rect
	mov	rdi, rbx	#, vthis
	call	Grid_add	#
	jmp	.L23	#
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
.LFE102:
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
	mov	esi, OFFSET FLAT:__FUNCTION__.9133	#,
	call	Static_printObj2	#
	cmp	QWORD PTR [rbp+184], 0	# MEM[(struct Grid *)vthis_3(D)].items,
	je	.L31	#,
	mov	r13d, 0	# y,
	cmp	WORD PTR [rbp+200], 0	# MEM[(struct Grid *)vthis_3(D)].c_row,
	jne	.L40	#,
	jmp	.L33	#
.L36:
	mov	rdx, QWORD PTR [rbp+184]	# MEM[(struct Grid *)vthis_3(D)].items, MEM[(struct Grid *)vthis_3(D)].items
	movzx	eax, bx	# x, x
	lea	rax, [rax+rax*4]	# tmp92,
	sal	rax, 3	# tmp93,
	add	rax, QWORD PTR [rdx+r12]	# tmp94, *D.9355_12
	mov	rdi, QWORD PTR [rax]	# rect_wt, D.9359_16->widget
	test	rdi, rdi	# rect_wt
	je	.L34	#,
	call	delete	#
	mov	edx, 137	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	rdi, rax	#, D.9362
	call	wfree	#
	jmp	.L35	#
.L34:
	mov	rdi, rbp	#, vthis
	call	Widget_toString	#
	movzx	r9d, bx	#, x
	mov	r8d, r14d	#, y
	mov	rcx, rax	#, D.9366
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L35:
	add	ebx, 1	# x,
	cmp	WORD PTR [rbp+202], bx	# MEM[(struct Grid *)vthis_3(D)].c_col, x
	ja	.L36	#,
.L37:
	add	r13d, 1	# y,
	cmp	WORD PTR [rbp+200], r13w	# MEM[(struct Grid *)vthis_3(D)].c_row, y
	jbe	.L33	#,
.L40:
	cmp	WORD PTR [rbp+202], 0	# MEM[(struct Grid *)vthis_3(D)].c_col,
	je	.L37	#,
	movzx	r12d, r13w	# y, y
	sal	r12, 3	# D.9354,
	mov	ebx, 0	# x,
	movzx	r14d, r13w	# y, y
	jmp	.L36	#
.L31:
	mov	rdi, rbp	#, vthis
	call	Widget_toString	#
	mov	rcx, rax	#, D.9371
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
.LFE98:
	.size	PixelDrawBox_vdestroy, .-PixelDrawBox_vdestroy
	.section	.rodata.str1.1
.LC5:
	.string	"pdb=NULL"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"PixelDrawBox: (width,height)=(%hu,%hu), (c_col,c_row)=(%hu,%hu), (actX,actY)=(%hu,%hu), (rect_w,rect_h)=(%hu,%hu), (spec_x,spec_y)=(%hu,%hu)"
	.text
	.globl	PixelDrawBox_toString
	.type	PixelDrawBox_toString, @function
PixelDrawBox_toString:
.LFB93:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC5	# D.9432,
	test	rdi, rdi	# pdb
	je	.L47	#,
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 96
	movzx	r9d, WORD PTR [rdi+218]	# pdb_2(D)->width, pdb_2(D)->width
	movzx	eax, WORD PTR [rdi+232]	# pdb_2(D)->spec_pix_y, pdb_2(D)->spec_pix_y
	mov	DWORD PTR [rsp+64], eax	#, pdb_2(D)->spec_pix_y
	movzx	eax, WORD PTR [rdi+230]	# pdb_2(D)->spec_pix_x, pdb_2(D)->spec_pix_x
	mov	DWORD PTR [rsp+56], eax	#, pdb_2(D)->spec_pix_x
	movzx	eax, WORD PTR [rdi+224]	# pdb_2(D)->rect_h, pdb_2(D)->rect_h
	mov	DWORD PTR [rsp+48], eax	#, pdb_2(D)->rect_h
	movzx	eax, WORD PTR [rdi+222]	# pdb_2(D)->rect_w, pdb_2(D)->rect_w
	mov	DWORD PTR [rsp+40], eax	#, pdb_2(D)->rect_w
	movzx	eax, WORD PTR [rdi+228]	# pdb_2(D)->actY, pdb_2(D)->actY
	mov	DWORD PTR [rsp+32], eax	#, pdb_2(D)->actY
	movzx	eax, WORD PTR [rdi+226]	# pdb_2(D)->actX, pdb_2(D)->actX
	mov	DWORD PTR [rsp+24], eax	#, pdb_2(D)->actX
	movzx	eax, WORD PTR [rdi+200]	# MEM[(struct Grid *)pdb_2(D)].c_row, MEM[(struct Grid *)pdb_2(D)].c_row
	mov	DWORD PTR [rsp+16], eax	#, MEM[(struct Grid *)pdb_2(D)].c_row
	movzx	eax, WORD PTR [rdi+202]	# MEM[(struct Grid *)pdb_2(D)].c_col, MEM[(struct Grid *)pdb_2(D)].c_col
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Grid *)pdb_2(D)].c_col
	movzx	eax, WORD PTR [rdi+220]	# pdb_2(D)->height, pdb_2(D)->height
	mov	DWORD PTR [rsp], eax	#, pdb_2(D)->height
	mov	r8d, OFFSET FLAT:.LC6	#,
	mov	ecx, 204	#,
	mov	edx, 1	#,
	mov	esi, 204	#,
	mov	edi, OFFSET FLAT:str_id.9102	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id.9102	# D.9432,
	add	rsp, 88	#,
	.cfi_def_cfa_offset 8
.L47:
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
	mov	eax, DWORD PTR [rsi+160]	# D.9387, sender_2(D)->id
	mov	esi, eax	#, D.9387
	shr	esi, 16	#,
	cmp	si, WORD PTR [rdi+226]	# x, pdb_8(D)->actX
	jae	.L60	#,
	cmp	ax, WORD PTR [rdi+228]	# y, pdb_8(D)->actY
	jae	.L60	#,
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdx	# screen, screen
	movzx	r10d, ax	# y, y
	mov	r9, QWORD PTR [rdi+184]	# MEM[(struct Grid *)pdb_8(D)].items, MEM[(struct Grid *)pdb_8(D)].items
	movzx	edx, si	# x, x
	lea	rdx, [rdx+rdx*4]	# tmp95,
	sal	rdx, 3	# tmp96,
	add	rdx, QWORD PTR [r9+r10*8]	# tmp97, *D.9397_14
	mov	rdx, QWORD PTR [rdx]	# press_rect, D.9401_18->widget
	cmp	cl, 2	# butmask,
	je	.L51	#,
	cmp	cl, 4	# butmask,
	je	.L52	#,
	cmp	cl, 1	# butmask,
	jne	.L48	#,
	mov	eax, DWORD PTR [rdx+176]	# D.9403, press_rect_19->color
	cmp	eax, 16777215	# D.9403,
	jne	.L53	#,
	mov	DWORD PTR [rdx+176], 0	# press_rect_19->color,
	jmp	.L54	#
.L53:
	cmp	eax, 961024	# D.9403,
	jne	.L48	#,
	mov	DWORD PTR [rdx+176], 12189619	# press_rect_19->color,
	jmp	.L54	#
.L51:
	test	r8b, r8b	# check_spec
	je	.L48	#,
	cmp	WORD PTR [rdi+230], -1	# pdb_8(D)->spec_pix_x,
	jne	.L48	#,
	cmp	DWORD PTR [rdx+176], 16777215	# press_rect_19->color,
	jne	.L48	#,
	mov	DWORD PTR [rdx+176], 961024	# press_rect_19->color,
	mov	WORD PTR [rdi+230], si	# pdb_8(D)->spec_pix_x, x
	mov	WORD PTR [rdi+232], ax	# pdb_8(D)->spec_pix_y, y
	jmp	.L54	#
.L52:
	mov	eax, DWORD PTR [rdx+176]	# D.9403, press_rect_19->color
	test	eax, eax	# D.9403
	jne	.L55	#,
	mov	DWORD PTR [rdx+176], 16777215	# press_rect_19->color,
	jmp	.L54	#
.L55:
	cmp	eax, 12189619	# D.9403,
	je	.L57	#,
	cmp	eax, 961024	# D.9403,
	jne	.L48	#,
.L57:
	mov	DWORD PTR [rdx+176], 16777215	# press_rect_19->color,
	mov	WORD PTR [rdi+232], -1	# pdb_8(D)->spec_pix_y,
	mov	WORD PTR [rdi+230], -1	# pdb_8(D)->spec_pix_x,
.L54:
	mov	rdi, rdx	#, press_rect
	call	Widget_refresh	#
	mov	BYTE PTR [rbx+124], 1	# screen_39(D)->need_reload,
.L48:
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L60:
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
	mov	rax, QWORD PTR [rdi+112]	# D.9373, sender_1(D)->void_parameter
	cmp	BYTE PTR [rax+217], 0	# MEM[(struct PixelDrawBox *)D.9373_2].mouse_ispressed,
	je	.L65	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, BYTE PTR [rsi+10]	# screen_4(D)->event.motion.state, screen_4(D)->event.motion.state
	mov	r8d, 0	#,
	mov	rdx, rsi	#, screen
	mov	rsi, rdi	#, sender
	mov	rdi, rax	#, D.9373
	call	PixelDrawBox_parseClick	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
.L65:
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
	mov	rcx, QWORD PTR [rdi+112]	# D.9380, sender_1(D)->void_parameter
	mov	BYTE PTR [rcx+217], 1	# MEM[(struct PixelDrawBox *)D.9380_2].mouse_ispressed,
	mov	BYTE PTR [rsi+122], 1	# screen_3(D)->pool_events,
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
.LFE95:
	.size	rectangle_press, .-rectangle_press
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"%20s:\tWithin context: (width,height,c_col,c_row,actX,actY)=(%hu,%hu,%hu,%hu,%hu,%hu)\n\n"
	.align 8
.LC8:
	.string	"PixelDrawBox_new: Wrong initialization: %s\n"
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
	jne	.L69	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.9152	#,
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
	mov	ecx, OFFSET FLAT:__FUNCTION__.9152	#,
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L70	#
.L69:
	movzx	edx, WORD PTR [rsp+46]	# c_col, %sfp
	movzx	esi, r8w	# c_row, c_row
	call	Grid_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.9152	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	DWORD PTR [rbx+204], 524449	# MEM[(struct Grid *)this_2(D)].bord_color,
	mov	BYTE PTR [rbx+216], 1	# this_2(D)->enabled,
	mov	WORD PTR [rbx+218], r13w	# this_2(D)->width, width
	mov	WORD PTR [rbx+220], bp	# this_2(D)->height, height
	mov	BYTE PTR [rbx+217], 0	# this_2(D)->mouse_ispressed,
	mov	WORD PTR [rbx+226], r15w	# this_2(D)->actX, actX
	mov	WORD PTR [rbx+228], r14w	# this_2(D)->actY, actY
	mov	WORD PTR [rbx+232], -1	# this_2(D)->spec_pix_y,
	mov	WORD PTR [rbx+230], -1	# this_2(D)->spec_pix_x,
	test	bp, bp	# height
	je	.L71	#,
	test	r13w, r13w	# width
	je	.L71	#,
	test	r12w, r12w	# c_row
	je	.L71	#,
	cmp	WORD PTR [rsp+46], 0	# %sfp,
	je	.L71	#,
	test	r14w, r14w	# actY
	je	.L71	#,
	test	r15w, r15w	# actX
	jne	.L70	#,
.L71:
	mov	rdi, rbx	#, this
	call	PixelDrawBox_toString	#
	mov	rcx, rax	#, D.9348
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
.L70:
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
	.globl	PixelDrawBox_increaseActX
	.type	PixelDrawBox_increaseActX, @function
PixelDrawBox_increaseActX:
.LFB103:
	.cfi_startproc
	movzx	eax, WORD PTR [rdi+226]	# D.9234, pdb_1(D)->actX
	movzx	edx, WORD PTR [rdi+202]	# D.9235, MEM[(struct Grid *)pdb_1(D)].c_col
	cmp	ax, dx	# D.9234, D.9235
	jae	.L84	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	r8d, ax	# D.9234, D.9234
	movzx	ecx, si	# dx, dx
	add	r8d, ecx	# tmp71, dx
	movzx	ecx, dx	# D.9235, D.9235
	cmp	r8d, ecx	# tmp71, D.9235
	jle	.L80	#,
	mov	WORD PTR [rdi+226], dx	# pdb_1(D)->actX, D.9235
	jmp	.L81	#
.L80:
	add	esi, eax	# tmp73, D.9234
	mov	WORD PTR [rdi+226], si	# pdb_1(D)->actX, tmp73
.L81:
	call	Widget_refresh	#
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
	movzx	eax, WORD PTR [rdi+228]	# D.9222, pdb_1(D)->actY
	movzx	edx, WORD PTR [rdi+200]	# D.9223, MEM[(struct Grid *)pdb_1(D)].c_row
	cmp	ax, dx	# D.9222, D.9223
	jae	.L91	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	r8d, ax	# D.9222, D.9222
	movzx	ecx, si	# dy, dy
	add	r8d, ecx	# tmp71, dy
	movzx	ecx, dx	# D.9223, D.9223
	cmp	r8d, ecx	# tmp71, D.9223
	jle	.L87	#,
	mov	WORD PTR [rdi+228], dx	# pdb_1(D)->actY, D.9223
	jmp	.L88	#
.L87:
	add	esi, eax	# tmp73, D.9222
	mov	WORD PTR [rdi+228], si	# pdb_1(D)->actY, tmp73
.L88:
	call	Widget_refresh	#
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
	movzx	eax, WORD PTR [rdi+226]	# D.9212, pdb_1(D)->actX
	cmp	ax, 1	# D.9212,
	jbe	.L98	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, ax	# D.9212, D.9212
	add	ecx, 1	# tmp68,
	movzx	edx, si	# dx, dx
	cmp	ecx, edx	# tmp68, dx
	jle	.L94	#,
	sub	eax, esi	# tmp70, dx
	mov	WORD PTR [rdi+226], ax	# pdb_1(D)->actX, tmp70
	jmp	.L95	#
.L94:
	mov	WORD PTR [rdi+226], 1	# pdb_1(D)->actX,
.L95:
	call	Widget_refresh	#
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
	movzx	eax, WORD PTR [rdi+228]	# D.9202, pdb_1(D)->actY
	cmp	ax, 1	# D.9202,
	jbe	.L105	#,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	ecx, ax	# D.9202, D.9202
	add	ecx, 1	# tmp68,
	movzx	edx, si	# dy, dy
	cmp	ecx, edx	# tmp68, dy
	jle	.L101	#,
	sub	eax, esi	# tmp70, dy
	mov	WORD PTR [rdi+228], ax	# pdb_1(D)->actY, tmp70
	jmp	.L102	#
.L101:
	mov	WORD PTR [rdi+228], 1	# pdb_1(D)->actY,
.L102:
	call	Widget_refresh	#
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
	rep
	ret
	.cfi_endproc
.LFE107:
	.size	PixelDrawBox_setEnabled, .-PixelDrawBox_setEnabled
	.globl	PixelDrawBox_class
	.data
	.align 8
	.type	PixelDrawBox_class, @object
	.size	PixelDrawBox_class, 8
PixelDrawBox_class:
	.quad	type
	.local	str_id.9102
	.comm	str_id.9102,204,32
	.section	.rodata.str1.1
.LC9:
	.string	"PixelDrawBox"
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
	.quad	.LC9
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9133, @object
	.size	__FUNCTION__.9133, 22
__FUNCTION__.9133:
	.string	"PixelDrawBox_vdestroy"
	.align 16
	.type	__FUNCTION__.9152, @object
	.size	__FUNCTION__.9152, 17
__FUNCTION__.9152:
	.string	"PixelDrawBox_new"
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	PixelDrawBox_vdestroy
	.quad	Grid_vmevent
	.quad	Grid_vdraw
	.quad	PixelDrawBox_vrefresh
	.quad	Grid_vdrag
	.quad	Grid_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
