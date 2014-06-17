	.file	"FloatingMenu.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT FloatingMenu.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/FloatingMenu.asm
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
	.type	FloatingMenu_click, @function
FloatingMenu_click:
.LFB96:
	.cfi_startproc
	mov	QWORD PTR [rsp-24], rbx	#,
	mov	QWORD PTR [rsp-16], rbp	#,
	mov	QWORD PTR [rsp-8], r12	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	mov	r12, rdi	# sender, sender
	mov	rbp, rsi	# screen, screen
	mov	rax, QWORD PTR [rdi+96]	# sender_1(D)->vparam, sender_1(D)->vparam
	mov	rbx, QWORD PTR [rax]	# cont, *D.8945_2
	cmp	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)cont_3].visible,
	je	.L2	#,
	cmp	QWORD PTR [rsi+64], rbx	# screen_6(D)->widget_ontop, cont
	jne	.L3	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, cont
	call	Container_setVisible	#
	mov	BYTE PTR [r12+130], 1	# sender_1(D)->visible,
	mov	BYTE PTR [rbp+132], 1	# screen_6(D)->need_reload,
	mov	QWORD PTR [rbp+64], 0	# screen_6(D)->widget_ontop,
	jmp	.L1	#
.L3:
	mov	QWORD PTR [rsi+64], rbx	# screen_6(D)->widget_ontop, cont
	mov	edx, 1	#,
	mov	rdi, rbx	#, cont
	call	Container_draw	#
	jmp	.L1	#
.L2:
	mov	esi, 1	#,
	mov	rdi, rbx	#, cont
	call	Container_setVisible	#
	mov	QWORD PTR [rbp+64], rbx	# screen_6(D)->widget_ontop, cont
	mov	edx, 1	#,
	mov	rsi, rbp	#, screen
	mov	rdi, rbx	#, cont
	call	Container_draw	#
.L1:
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	FloatingMenu_click, .-FloatingMenu_click
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"FloatingMenu.c"
	.text
	.type	FloatingMenu_vdestroy, @function
FloatingMenu_vdestroy:
.LFB94:
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
	cmp	QWORD PTR [rdi+160], 0	# MEM[(struct StackList *)vthis_2(D)].items,
	je	.L7	#,
	cmp	DWORD PTR [rdi+172], 0	# MEM[(struct StackList *)vthis_2(D)].count,
	je	.L8	#,
	mov	ebx, 0	# i,
.L10:
	mov	eax, ebx	# i, i
	lea	rax, [rax+rax*4]	# tmp79,
	sal	rax, 3	# tmp80,
	add	rax, QWORD PTR [rbp+160]	# tmp81, MEM[(struct StackList *)vthis_2(D)].items
	mov	rdi, QWORD PTR [rax]	# D.8973, c_10->widget
	test	rdi, rdi	# D.8973
	je	.L9	#,
	cmp	BYTE PTR [rdi+136], 0	# D.8973_11->internal,
	je	.L9	#,
	call	delete	#
	mov	edx, 50	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	mov	rdi, rax	#, D.8979
	call	wfree	#
.L9:
	add	ebx, 1	# i,
	cmp	DWORD PTR [rbp+172], ebx	# MEM[(struct StackList *)vthis_2(D)].count, i
	ja	.L10	#,
.L8:
	mov	rdi, QWORD PTR [rbp+160]	# MEM[(struct StackList *)vthis_2(D)].items, MEM[(struct StackList *)vthis_2(D)].items
	mov	edx, 52	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbp+160], 0	# MEM[(struct StackList *)vthis_2(D)].items,
	mov	DWORD PTR [rbp+172], 0	# MEM[(struct StackList *)vthis_2(D)].count,
	mov	DWORD PTR [rbp+168], 0	# MEM[(struct StackList *)vthis_2(D)].size,
.L7:
	mov	rdi, rbp	#, vthis
	call	StackList_destroy	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	FloatingMenu_vdestroy, .-FloatingMenu_vdestroy
	.globl	FloatingMenu_refresh
	.type	FloatingMenu_refresh, @function
FloatingMenu_refresh:
.LFB93:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	call	StackList_refresh	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	FloatingMenu_refresh, .-FloatingMenu_refresh
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"FloatingMenu_new: Passed NULL this pointer. layout=%s, size=%u\n"
	.section	.rodata.str1.1
.LC2:
	.string	"FloatingMenu"
	.text
	.globl	FloatingMenu_new
	.type	FloatingMenu_new, @function
FloatingMenu_new:
.LFB95:
	.cfi_startproc
	mov	QWORD PTR [rsp-16], rbx	#,
	mov	QWORD PTR [rsp-8], rbp	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	mov	rbx, rdi	# this, this
	mov	ebp, edx	# size, size
	test	rdi, rdi	# this
	jne	.L16	#,
	mov	edi, esi	#, layout
	call	StackList_getLayoutName	#
	mov	r8d, ebp	#, size
	mov	rcx, rax	#, D.8956
	mov	edx, OFFSET FLAT:.LC1	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L17	#
.L16:
	mov	r9d, OFFSET FLAT:.LC2	#,
	mov	r8d, OFFSET FLAT:FloatingMenu_vdestroy	#,
	mov	ecx, edx	#, size
	mov	edx, esi	#, layout
	mov	esi, 1	#,
	call	StackList_init_type	#
.L17:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp+8]	#,
	mov	rbp, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	FloatingMenu_new, .-FloatingMenu_new
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"FloatingMenu_addBaseHeader[this=%p, text=%s]: Failed to allocate/create header Button.\n"
	.text
	.globl	FloatingMenu_addBaseHeader
	.type	FloatingMenu_addBaseHeader, @function
FloatingMenu_addBaseHeader:
.LFB97:
	.cfi_startproc
	mov	QWORD PTR [rsp-32], rbx	#,
	mov	QWORD PTR [rsp-24], rbp	#,
	mov	QWORD PTR [rsp-16], r12	#,
	mov	QWORD PTR [rsp-8], r13	#,
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	mov	rbp, rdi	# this, this
	mov	r13, rsi	# font, font
	mov	r12, rdx	# text, text
	mov	ecx, 107	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1528	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rsi, r12	#, text
	mov	rdi, rax	#, D.8939
	call	Button_new	#
	mov	rbx, rax	# but,
	test	rax, rax	# but
	jne	.L20	#,
	mov	r8, r12	#, text
	mov	rcx, rbp	#, this
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L21	#
.L20:
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	rcx, r13	#, font
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbx+16], OFFSET FLAT:FloatingMenu_click	# MEM[(struct Widget *)but_4].click_handler,
	mov	BYTE PTR [rbx+136], 1	# MEM[(struct Widget *)but_4].internal,
	mov	edx, 1	#,
	mov	rsi, rbp	#, this
	mov	rdi, rbx	#, but
	call	Widget_addParameter	#
	mov	DWORD PTR [rsp+16], 15	#,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 2	#,
	mov	ecx, 3	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, but
	mov	rdi, rbp	#, this
	call	StackList_appendWidgetAt	#
.L21:
	mov	rax, rbx	#, but
	mov	rbx, QWORD PTR [rsp+40]	#,
	mov	rbp, QWORD PTR [rsp+48]	#,
	mov	r12, QWORD PTR [rsp+56]	#,
	mov	r13, QWORD PTR [rsp+64]	#,
	add	rsp, 72	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	FloatingMenu_addBaseHeader, .-FloatingMenu_addBaseHeader
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"FloatingMenu_addButton[this=%p, text=%s]: Failed to allocate/create button Button.\n"
	.text
	.globl	FloatingMenu_addMenuButtonLast
	.type	FloatingMenu_addMenuButtonLast, @function
FloatingMenu_addMenuButtonLast:
.LFB98:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	r12, rdi	# this, this
	mov	r15, rsi	# font, font
	mov	rbp, rdx	# text, text
	mov	r14, rcx	# click_handler, click_handler
	mov	r13d, r8d	# id, id
	mov	ecx, 125	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 1528	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rsi, rbp	#, text
	mov	rdi, rax	#, D.8933
	call	Button_new	#
	mov	rbx, rax	# but,
	test	rax, rax	# but
	jne	.L24	#,
	mov	r8, rbp	#, text
	mov	rcx, r12	#, this
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L25	#
.L24:
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	rcx, r15	#, font
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, but
	call	Button_applyDefaultStyle2	#
	mov	QWORD PTR [rbx+16], r14	# MEM[(struct Widget *)but_4].click_handler, click_handler
	mov	DWORD PTR [rbx+116], r13d	# MEM[(struct Widget *)but_4].id, id
	mov	BYTE PTR [rbx+136], 1	# MEM[(struct Widget *)but_4].internal,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 2	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, but
	mov	rdi, r12	#, this
	call	StackList_addWidgetLast	#
.L25:
	mov	rax, rbx	#, but
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	mov	r14, QWORD PTR [rsp+56]	#,
	mov	r15, QWORD PTR [rsp+64]	#,
	add	rsp, 72	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	FloatingMenu_addMenuButtonLast, .-FloatingMenu_addMenuButtonLast
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"FloatingMenu_addLabel[this=%p, text=%s]: Failed to allocate/create label Label.\n"
	.text
	.globl	FloatingMenu_addLabelLast
	.type	FloatingMenu_addLabelLast, @function
FloatingMenu_addLabelLast:
.LFB99:
	.cfi_startproc
	mov	QWORD PTR [rsp-32], rbx	#,
	mov	QWORD PTR [rsp-24], rbp	#,
	mov	QWORD PTR [rsp-16], r12	#,
	mov	QWORD PTR [rsp-8], r13	#,
	sub	rsp, 56	#,
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	mov	r12, rdi	# this, this
	mov	r13, rsi	# font, font
	mov	rbp, rdx	# text, text
	mov	ecx, 139	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 344	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rsi, rbp	#, text
	mov	rdi, rax	#, D.8925
	call	Label_new	#
	mov	rbx, rax	# lab,
	test	rax, rax	# lab
	jne	.L28	#,
	mov	r8, rbp	#, text
	mov	rcx, r12	#, this
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L29	#
.L28:
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 10	#,
	mov	rcx, r13	#, font
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, lab
	call	Label_applyDefaultStyle	#
	mov	BYTE PTR [rbx+136], 1	# MEM[(struct Widget *)lab_4].internal,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 2	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, this
	call	StackList_addWidgetLast	#
.L29:
	mov	rax, rbx	#, lab
	mov	rbx, QWORD PTR [rsp+24]	#,
	mov	rbp, QWORD PTR [rsp+32]	#,
	mov	r12, QWORD PTR [rsp+40]	#,
	mov	r13, QWORD PTR [rsp+48]	#,
	add	rsp, 56	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE99:
	.size	FloatingMenu_addLabelLast, .-FloatingMenu_addLabelLast
	.globl	FloatingMenu_addWidgetLast
	.type	FloatingMenu_addWidgetLast, @function
FloatingMenu_addWidgetLast:
.LFB100:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	sub	rsp, 16	#,
	.cfi_def_cfa_offset 32
	mov	rbx, rsi	# widget, widget
	mov	BYTE PTR [rsi+136], 0	# widget_1(D)->internal,
	movzx	eax, WORD PTR [rsp+40]	# marg_right, marg_right
	mov	DWORD PTR [rsp+8], eax	#, marg_right
	movzx	eax, WORD PTR [rsp+32]	# marg_bot, marg_bot
	mov	DWORD PTR [rsp], eax	#, marg_bot
	movzx	r9d, r9w	#, marg_left
	movzx	r8d, r8w	#, marg_top
	call	StackList_addWidgetLast	#
	mov	rax, rbx	#, widget
	add	rsp, 16	#,
	.cfi_def_cfa_offset 16
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE100:
	.size	FloatingMenu_addWidgetLast, .-FloatingMenu_addWidgetLast
	.globl	FloatingMenu_setVisible
	.type	FloatingMenu_setVisible, @function
FloatingMenu_setVisible:
.LFB101:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	movzx	esi, sil	# vis, vis
	call	StackList_setVisible	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE101:
	.size	FloatingMenu_setVisible, .-FloatingMenu_setVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
