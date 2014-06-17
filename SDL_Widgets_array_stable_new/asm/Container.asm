	.file	"Container.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT Container.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/Container.asm
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
	.globl	Container_new
	.type	Container_new, @function
Container_new:
.LFB93:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	test	rdi, rdi	# this
	jne	.L2	#,
	mov	edi, OFFSET FLAT:__FUNCTION__.8873	#,
	call	Static_nullThis2	#
	jmp	.L3	#
.L2:
	call	Widget_new	#
	mov	QWORD PTR [rbx], OFFSET FLAT:type	# MEM[(struct coObject *)this_2(D)].class,
	mov	esi, OFFSET FLAT:__FUNCTION__.8873	#,
	mov	rdi, rbx	#, this
	call	Static_printObj2	#
	mov	BYTE PTR [rbx+173], 1	# MEM[(struct Widget *)this_2(D)].is_container,
	mov	WORD PTR [rbx+180], 0	# this_2(D)->padx,
	mov	WORD PTR [rbx+182], 0	# this_2(D)->pady,
	mov	DWORD PTR [rbx+176], 15592683	# this_2(D)->color,
.L3:
	mov	rax, rbx	#, this
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	Container_new, .-Container_new
	.globl	Container_vdestroy
	.type	Container_vdestroy, @function
Container_vdestroy:
.LFB94:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	esi, OFFSET FLAT:__FUNCTION__.8877	#,
	call	Static_printObj2	#
	mov	rdi, rbx	#, vthis
	call	Widget_vdestroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	Container_vdestroy, .-Container_vdestroy
	.globl	Container_setPadding
	.type	Container_setPadding, @function
Container_setPadding:
.LFB95:
	.cfi_startproc
	mov	WORD PTR [rdi+180], si	# this_1(D)->padx, padx
	mov	WORD PTR [rdi+182], dx	# this_1(D)->pady, pady
	ret
	.cfi_endproc
.LFE95:
	.size	Container_setPadding, .-Container_setPadding
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"TOP"
.LC1:
	.string	"BOTTOM"
.LC2:
	.string	"CENTER"
.LC3:
	.string	"LEFT"
.LC4:
	.string	"RIGHT"
.LC5:
	.string	"UNKNOWN"
	.text
	.globl	Container_alignmentToString
	.type	Container_alignmentToString, @function
Container_alignmentToString:
.LFB96:
	.cfi_startproc
	cmp	edi, 5	# align,
	ja	.L9	#,
	mov	edi, edi	# align, align
	jmp	[QWORD PTR .L15[0+rdi*8]]	#
	.section	.rodata
	.align 8
	.align 4
.L15:
	.quad	.L9
	.quad	.L10
	.quad	.L16
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.text
.L10:
	mov	eax, OFFSET FLAT:.LC0	# D.8977,
	ret
.L12:
	mov	eax, OFFSET FLAT:.LC2	# D.8977,
	ret
.L13:
	mov	eax, OFFSET FLAT:.LC3	# D.8977,
	ret
.L14:
	mov	eax, OFFSET FLAT:.LC4	# D.8977,
	ret
.L9:
	mov	eax, OFFSET FLAT:.LC5	# D.8977,
	ret
.L16:
	mov	eax, OFFSET FLAT:.LC1	# D.8977,
	ret
	.cfi_endproc
.LFE96:
	.size	Container_alignmentToString, .-Container_alignmentToString
	.section	.rodata.str1.1
.LC6:
	.string	"Container.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"Container_createSurfaceIfNeeded: CreateRGBSurface of container failed: %s\n"
	.align 8
.LC8:
	.string	"Container_createSurfaceIfNeeded: Failed to fill background surface (FillRect)\n"
	.text
	.globl	Container_createSurfaceIfNeeded
	.type	Container_createSurfaceIfNeeded, @function
Container_createSurfaceIfNeeded:
.LFB97:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# this, this
	mov	rdi, QWORD PTR [rdi+88]	# D.8952, MEM[(struct Widget *)this_2(D)].surf
	test	rdi, rdi	# D.8952
	je	.L18	#,
	movzx	eax, WORD PTR [rbx+100]	# MEM[(struct Widget *)this_2(D)].pos.w, MEM[(struct Widget *)this_2(D)].pos.w
	cmp	DWORD PTR [rdi+16], eax	# D.8952_5->w, MEM[(struct Widget *)this_2(D)].pos.w
	jge	.L19	#,
	mov	edx, 93	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wSDL_FreeSurface	#
	jmp	.L18	#
.L22:
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8968
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)this_2(D)].visible,
	jmp	.L17	#
.L23:
	mov	edx, DWORD PTR [rbx+176]	# this_2(D)->color, this_2(D)->color
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.8971
	je	.L21	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 78	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	mov	BYTE PTR [rbx+167], 0	# MEM[(struct Widget *)this_2(D)].visible,
	jmp	.L17	#
.L21:
	mov	BYTE PTR [rbx+167], 1	# MEM[(struct Widget *)this_2(D)].visible,
	mov	BYTE PTR [rbx+169], 1	# MEM[(struct Widget *)this_2(D)].need_reload,
	jmp	.L17	#
.L18:
	movzx	esi, WORD PTR [rbx+102]	# MEM[(struct Widget *)this_2(D)].pos.h, MEM[(struct Widget *)this_2(D)].pos.h
	movzx	edi, WORD PTR [rbx+100]	# MEM[(struct Widget *)this_2(D)].pos.w, MEM[(struct Widget *)this_2(D)].pos.w
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+88], rax	# MEM[(struct Widget *)this_2(D)].surf, D.8965
	mov	rdi, rax	# D.8952, D.8965
	test	rax, rax	# D.8965
	jne	.L23	#,
	jmp	.L22	#
.L19:
	mov	rdi, QWORD PTR [rbx+88]	# D.8952, MEM[(struct Widget *)this_2(D)].surf
	jmp	.L23	#
.L17:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	.p2align 4,,6
	ret
	.cfi_endproc
.LFE97:
	.size	Container_createSurfaceIfNeeded, .-Container_createSurfaceIfNeeded
	.section	.rodata.str1.1
.LC9:
	.string	"(null)"
.LC10:
	.string	"container_item=NULL"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"ContainerItem: widget=%s, margins=[%hu,%hu,%hu,%hu], halign=%s, valign=%s, cell_rect=[%hu,%hu,%hu,%hu], cell_max=(%hu,%hu)"
	.text
	.globl	ContainerItem_toString
	.type	ContainerItem_toString, @function
ContainerItem_toString:
.LFB98:
	.cfi_startproc
	mov	QWORD PTR [rsp-48], rbx	#,
	mov	QWORD PTR [rsp-40], rbp	#,
	mov	QWORD PTR [rsp-32], r12	#,
	mov	QWORD PTR [rsp-24], r13	#,
	mov	QWORD PTR [rsp-16], r14	#,
	mov	QWORD PTR [rsp-8], r15	#,
	sub	rsp, 200	#,
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rbx, rdi	# item, item
	test	rdi, rdi	# item
	je	.L28	#,
	movzx	r15d, WORD PTR [rdi+26]	# D.8923, item_3(D)->maxy
	movzx	r14d, WORD PTR [rdi+24]	# D.8925, item_3(D)->maxx
	movzx	r13d, WORD PTR [rdi+14]	# D.8927, item_3(D)->cell_rect.h
	movzx	r12d, WORD PTR [rdi+12]	# D.8929, item_3(D)->cell_rect.w
	movsx	ebp, WORD PTR [rdi+10]	# D.8931, item_3(D)->cell_rect.y
	movsx	eax, WORD PTR [rdi+8]	#, item_3(D)->cell_rect.x
	mov	DWORD PTR [rsp+108], eax	# %sfp,
	mov	edi, DWORD PTR [rdi+32]	# item_3(D)->valign, item_3(D)->valign
	call	Container_alignmentToString	#
	mov	QWORD PTR [rsp+112], rax	# %sfp,
	mov	edi, DWORD PTR [rbx+28]	# item_3(D)->halign, item_3(D)->halign
	call	Container_alignmentToString	#
	mov	QWORD PTR [rsp+120], rax	# %sfp,
	movzx	eax, WORD PTR [rbx+18]	#, item_3(D)->margin_right
	mov	DWORD PTR [rsp+128], eax	# %sfp,
	movzx	eax, WORD PTR [rbx+22]	#, item_3(D)->margin_bottom
	mov	DWORD PTR [rsp+132], eax	# %sfp,
	movzx	eax, WORD PTR [rbx+16]	#, item_3(D)->margin_left
	mov	DWORD PTR [rsp+136], eax	# %sfp,
	movzx	eax, WORD PTR [rbx+20]	#, item_3(D)->margin_top
	mov	DWORD PTR [rsp+140], eax	# %sfp,
	mov	rdi, QWORD PTR [rbx]	# D.8947, item_3(D)->widget
	mov	r9d, OFFSET FLAT:.LC9	# iftmp.0,
	test	rdi, rdi	# D.8947
	je	.L27	#,
	call	Widget_toString	#
	mov	r9, rax	# iftmp.0,
.L27:
	mov	DWORD PTR [rsp+88], r15d	#, D.8923
	mov	DWORD PTR [rsp+80], r14d	#, D.8925
	mov	DWORD PTR [rsp+72], r13d	#, D.8927
	mov	DWORD PTR [rsp+64], r12d	#, D.8929
	mov	DWORD PTR [rsp+56], ebp	#, D.8931
	mov	eax, DWORD PTR [rsp+108]	#, %sfp
	mov	DWORD PTR [rsp+48], eax	#,
	mov	rax, QWORD PTR [rsp+112]	#, %sfp
	mov	QWORD PTR [rsp+40], rax	#,
	mov	rax, QWORD PTR [rsp+120]	#, %sfp
	mov	QWORD PTR [rsp+32], rax	#,
	mov	eax, DWORD PTR [rsp+128]	#, %sfp
	mov	DWORD PTR [rsp+24], eax	#,
	mov	eax, DWORD PTR [rsp+132]	#, %sfp
	mov	DWORD PTR [rsp+16], eax	#,
	mov	eax, DWORD PTR [rsp+136]	#, %sfp
	mov	DWORD PTR [rsp+8], eax	#,
	mov	eax, DWORD PTR [rsp+140]	#, %sfp
	mov	DWORD PTR [rsp], eax	#,
	mov	r8d, OFFSET FLAT:.LC11	#,
	mov	ecx, 600	#,
	mov	edx, 1	#,
	mov	esi, 600	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.8921,
	jmp	.L26	#
.L28:
	mov	eax, OFFSET FLAT:.LC10	# D.8921,
.L26:
	mov	rbx, QWORD PTR [rsp+152]	#,
	mov	rbp, QWORD PTR [rsp+160]	#,
	mov	r12, QWORD PTR [rsp+168]	#,
	mov	r13, QWORD PTR [rsp+176]	#,
	mov	r14, QWORD PTR [rsp+184]	#,
	mov	r15, QWORD PTR [rsp+192]	#,
	add	rsp, 200	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE98:
	.size	ContainerItem_toString, .-ContainerItem_toString
	.section	.rodata.str1.1
.LC12:
	.string	"container=NULL"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Container(%s): color=0x%X, padx=%hu, pady=%hu"
	.text
	.globl	Container_toString
	.type	Container_toString, @function
Container_toString:
.LFB99:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC12	# D.8907,
	test	rdi, rdi	# this
	je	.L36	#,
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 48
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)this_2(D)].class, MEM[(struct coObject *)this_2(D)].class
	mov	r9, QWORD PTR [rax+16]	# D.8913_9->name, D.8913_9->name
	movzx	eax, WORD PTR [rdi+182]	# this_2(D)->pady, this_2(D)->pady
	mov	DWORD PTR [rsp+16], eax	#, this_2(D)->pady
	movzx	eax, WORD PTR [rdi+180]	# this_2(D)->padx, this_2(D)->padx
	mov	DWORD PTR [rsp+8], eax	#, this_2(D)->padx
	mov	eax, DWORD PTR [rdi+176]	# this_2(D)->color, this_2(D)->color
	mov	DWORD PTR [rsp], eax	#, this_2(D)->color
	mov	r8d, OFFSET FLAT:.LC13	#,
	mov	ecx, 600	#,
	mov	edx, 1	#,
	mov	esi, 600	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.8907,
	add	rsp, 40	#,
	.cfi_def_cfa_offset 8
.L36:
	rep
	ret
	.cfi_endproc
.LFE99:
	.size	Container_toString, .-Container_toString
	.globl	Container_class
	.data
	.align 8
	.type	Container_class, @object
	.size	Container_class, 8
Container_class:
	.quad	type
	.section	.rodata
	.type	__FUNCTION__.8873, @object
	.size	__FUNCTION__.8873, 14
__FUNCTION__.8873:
	.string	"Container_new"
	.section	.rodata.str1.1
.LC14:
	.string	"Container"
	.data
	.align 16
	.type	type, @object
	.size	type, 24
type:
# vtable:
	.quad	vtable
# size:
	.quad	184
# name:
	.quad	.LC14
	.section	.rodata
	.align 16
	.type	__FUNCTION__.8877, @object
	.size	__FUNCTION__.8877, 19
__FUNCTION__.8877:
	.string	"Container_vdestroy"
	.local	str_id
	.comm	str_id,600,32
	.data
	.align 32
	.type	vtable, @object
	.size	vtable, 48
vtable:
	.quad	Widget_vdestroy
	.quad	Widget_vmevent
	.quad	Widget_vdraw
	.quad	Widget_vrefresh
	.quad	Widget_vdrag
	.quad	Widget_vsetVisible
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
