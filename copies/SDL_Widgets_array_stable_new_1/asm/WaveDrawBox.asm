	.file	"WaveDrawBox.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT WaveDrawBox.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/WaveDrawBox.asm
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
	.string	"WaveDrawBox.c"
	.text
	.type	WaveDrawBox_vdestroy, @function
WaveDrawBox_vdestroy:
.LFB95:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# vthis, vthis
	mov	rdi, QWORD PTR [rdi+152]	# MEM[(struct WaveDrawBox *)vthis_1(D)].points, MEM[(struct WaveDrawBox *)vthis_1(D)].points
	mov	edx, 139	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+152], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].points,
	mov	rdi, QWORD PTR [rbx+160]	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples, MEM[(struct WaveDrawBox *)vthis_1(D)].samples
	mov	edx, 140	#,
	mov	esi, OFFSET FLAT:.LC0	#,
	call	wfree	#
	mov	QWORD PTR [rbx+160], 0	# MEM[(struct WaveDrawBox *)vthis_1(D)].samples,
	mov	rdi, rbx	#, vthis
	call	Widget_destroy	#
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE95:
	.size	WaveDrawBox_vdestroy, .-WaveDrawBox_vdestroy
	.section	.rodata.str1.1
.LC1:
	.string	"wdb=NULL"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"WaveDrawBox: [x,y,w,h]=[%hu,%hu,%hu,%hu], freq=%hu, bunch=%hu, (zero)=(%hu,%hu), xrel_range=(%hu,%hu)[%hu], yrel_range=(%hu,%hu)[%hu+1], (padx,pady)=(%hu,%hu), my=%hu"
	.text
	.globl	WaveDrawBox_toString
	.type	WaveDrawBox_toString, @function
WaveDrawBox_toString:
.LFB93:
	.cfi_startproc
	mov	eax, OFFSET FLAT:.LC1	# D.9067,
	test	rdi, rdi	# wdb
	je	.L8	#,
	sub	rsp, 136	#,
	.cfi_def_cfa_offset 144
	movsx	r9d, WORD PTR [rdi+56]	# MEM[(struct Widget *)wdb_2(D)].pos.x, MEM[(struct Widget *)wdb_2(D)].pos.x
	movzx	eax, WORD PTR [rdi+184]	# wdb_2(D)->my, wdb_2(D)->my
	mov	DWORD PTR [rsp+120], eax	#, wdb_2(D)->my
	movzx	eax, WORD PTR [rdi+178]	# wdb_2(D)->pady, wdb_2(D)->pady
	mov	DWORD PTR [rsp+112], eax	#, wdb_2(D)->pady
	movzx	eax, WORD PTR [rdi+176]	# wdb_2(D)->padx, wdb_2(D)->padx
	mov	DWORD PTR [rsp+104], eax	#, wdb_2(D)->padx
	movzx	eax, WORD PTR [rdi+182]	# wdb_2(D)->yrange, wdb_2(D)->yrange
	mov	DWORD PTR [rsp+96], eax	#, wdb_2(D)->yrange
	movzx	eax, WORD PTR [rdi+200]	# wdb_2(D)->rely_max, wdb_2(D)->rely_max
	mov	DWORD PTR [rsp+88], eax	#, wdb_2(D)->rely_max
	movzx	eax, WORD PTR [rdi+198]	# wdb_2(D)->rely_min, wdb_2(D)->rely_min
	mov	DWORD PTR [rsp+80], eax	#, wdb_2(D)->rely_min
	movzx	eax, WORD PTR [rdi+180]	# wdb_2(D)->xrange, wdb_2(D)->xrange
	mov	DWORD PTR [rsp+72], eax	#, wdb_2(D)->xrange
	movzx	eax, WORD PTR [rdi+196]	# wdb_2(D)->relx_max, wdb_2(D)->relx_max
	mov	DWORD PTR [rsp+64], eax	#, wdb_2(D)->relx_max
	movzx	eax, WORD PTR [rdi+194]	# wdb_2(D)->relx_min, wdb_2(D)->relx_min
	mov	DWORD PTR [rsp+56], eax	#, wdb_2(D)->relx_min
	movzx	eax, WORD PTR [rdi+188]	# wdb_2(D)->zero_y, wdb_2(D)->zero_y
	mov	DWORD PTR [rsp+48], eax	#, wdb_2(D)->zero_y
	movzx	eax, WORD PTR [rdi+186]	# wdb_2(D)->zero_x, wdb_2(D)->zero_x
	mov	DWORD PTR [rsp+40], eax	#, wdb_2(D)->zero_x
	movzx	eax, WORD PTR [rdi+172]	# wdb_2(D)->bunch, wdb_2(D)->bunch
	mov	DWORD PTR [rsp+32], eax	#, wdb_2(D)->bunch
	movzx	eax, WORD PTR [rdi+174]	# wdb_2(D)->sample_freq, wdb_2(D)->sample_freq
	mov	DWORD PTR [rsp+24], eax	#, wdb_2(D)->sample_freq
	movzx	eax, WORD PTR [rdi+62]	# MEM[(struct Widget *)wdb_2(D)].pos.h, MEM[(struct Widget *)wdb_2(D)].pos.h
	mov	DWORD PTR [rsp+16], eax	#, MEM[(struct Widget *)wdb_2(D)].pos.h
	movzx	eax, WORD PTR [rdi+60]	# MEM[(struct Widget *)wdb_2(D)].pos.w, MEM[(struct Widget *)wdb_2(D)].pos.w
	mov	DWORD PTR [rsp+8], eax	#, MEM[(struct Widget *)wdb_2(D)].pos.w
	movsx	eax, WORD PTR [rdi+58]	# MEM[(struct Widget *)wdb_2(D)].pos.y, MEM[(struct Widget *)wdb_2(D)].pos.y
	mov	DWORD PTR [rsp], eax	#, MEM[(struct Widget *)wdb_2(D)].pos.y
	mov	r8d, OFFSET FLAT:.LC2	#,
	mov	ecx, 256	#,
	mov	edx, 1	#,
	mov	esi, 256	#,
	mov	edi, OFFSET FLAT:str_id	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	eax, OFFSET FLAT:str_id	# D.9067,
	add	rsp, 136	#,
	.cfi_def_cfa_offset 8
.L8:
	rep
	ret
	.cfi_endproc
.LFE93:
	.size	WaveDrawBox_toString, .-WaveDrawBox_toString
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"WaveDrawBox_refresh> Failed on assertion ((! wdb->sample_freq) || (! wdb->bunch)) == true\n%s\n"
	.align 8
.LC4:
	.string	"WaveDrawBox_refresh>[1] Failed to fill background surface (FillRect) %s\n"
	.align 8
.LC5:
	.string	"WaveDrawBox_refresh> Failed to fill create background surface (SDL_CreateRGBSurface) %s\n"
	.align 8
.LC6:
	.string	"WaveDrawBox_refresh>[2] Failed to fill background surface (FillRect) %s\n"
	.align 8
.LC7:
	.string	"WaveDrawBox_refresh> Failed on assertion (wdb->xrange != (wdb->relx_max - wdb->relx_min + 1)) == true\n%s\n"
	.align 8
.LC8:
	.string	"WaveDrawBox_refresh> Failed on assertion ((wdb->xrange == 0) || (wdb->xrange >= wdb->sample_freq)) == true\n%s\n"
	.text
	.globl	WaveDrawBox_refresh
	.type	WaveDrawBox_refresh, @function
WaveDrawBox_refresh:
.LFB94:
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
	mov	rbx, rdi	# wdb, wdb
	movzx	eax, WORD PTR [rdi+174]	# D.8967, wdb_1(D)->sample_freq
	test	ax, ax	# D.8967
	je	.L10	#,
	movzx	ecx, WORD PTR [rdi+172]	# D.8969, wdb_1(D)->bunch
	test	cx, cx	# D.8969
	jne	.L11	#,
.L10:
	mov	rdi, rbx	#, wdb
	call	WaveDrawBox_toString	#
	mov	rcx, rax	#, D.8970
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)wdb_1(D)].visible,
	jmp	.L9	#
.L11:
	mov	edx, 0	# tmp167,
	div	cx	# D.8969
	add	eax, 1	# D.8973,
	mov	WORD PTR [rdi+180], ax	# wdb_1(D)->xrange, D.8973
	movzx	edx, WORD PTR [rdi+176]	# D.8974, wdb_1(D)->padx
	mov	WORD PTR [rdi+186], dx	# wdb_1(D)->zero_x, D.8974
	movzx	esi, WORD PTR [rdi+62]	# D.8975, MEM[(struct Widget *)wdb_1(D)].pos.h
	mov	ecx, esi	# tmp168, D.8975
	shr	cx	# tmp168
	mov	WORD PTR [rdi+188], cx	# wdb_1(D)->zero_y, tmp168
	lea	eax, [rax+rdx*2]	# D.8979,
	mov	WORD PTR [rdi+60], ax	# MEM[(struct Widget *)wdb_1(D)].pos.w, D.8979
	mov	edx, eax	# tmp170, D.8979
	add	dx, WORD PTR [rdi+56]	# tmp170, MEM[(struct Widget *)wdb_1(D)].pos.x
	mov	WORD PTR [rdi+112], dx	# MEM[(struct Widget *)wdb_1(D)].maxx, tmp170
	mov	edx, esi	# tmp172, D.8975
	add	dx, WORD PTR [rdi+58]	# tmp172, MEM[(struct Widget *)wdb_1(D)].pos.y
	mov	WORD PTR [rdi+114], dx	# MEM[(struct Widget *)wdb_1(D)].maxy, tmp172
	mov	rdi, QWORD PTR [rdi+48]	# D.8990, MEM[(struct Widget *)wdb_1(D)].surf
	test	rdi, rdi	# D.8990
	je	.L13	#,
	mov	edx, 16774333	#,
	mov	esi, 0	#,
	call	SDL_FillRect	#
	test	eax, eax	# D.8995
	je	.L14	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.8998
	mov	edx, OFFSET FLAT:.LC4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)wdb_1(D)].visible,
	jmp	.L9	#
.L13:
	movzx	esi, si	# D.8975, D.8975
	movzx	edi, ax	# D.8979, D.8979
	call	Static_NewSurface	#
	mov	QWORD PTR [rbx+48], rax	# MEM[(struct Widget *)wdb_1(D)].surf, D.9004
	test	rax, rax	# D.9004
	jne	.L15	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9007
	mov	edx, OFFSET FLAT:.LC5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)wdb_1(D)].visible,
	jmp	.L9	#
.L15:
	mov	edx, 16774333	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, D.9004
	call	SDL_FillRect	#
	test	eax, eax	# D.9010
	je	.L14	#,
	call	SDL_GetError	#
	mov	rcx, rax	#, D.9013
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)wdb_1(D)].visible,
	jmp	.L9	#
.L14:
	movzx	ecx, WORD PTR [rbx+62]	# D.8975, MEM[(struct Widget *)wdb_1(D)].pos.h
	movzx	eax, WORD PTR [rbx+178]	# D.9014, wdb_1(D)->pady
	movzx	edx, WORD PTR [rbx+184]	# D.9016, wdb_1(D)->my
	mov	r12d, ecx	# tmp176, D.8975
	sub	r12d, eax	# tmp176, D.9014
	sub	r12d, edx	# y1, D.9016
	movzx	esi, WORD PTR [rbx+176]	# D.8974, wdb_1(D)->padx
	mov	ebp, esi	# x1, D.8974
	add	bp, WORD PTR [rbx+180]	# x1, wdb_1(D)->xrange
	movzx	edi, WORD PTR [rbx+186]	# wdb_1(D)->zero_x, wdb_1(D)->zero_x
	mov	WORD PTR [rbx+194], di	# wdb_1(D)->relx_min, wdb_1(D)->zero_x
	lea	edi, [rbp-1]	# tmp179,
	mov	WORD PTR [rbx+196], di	# wdb_1(D)->relx_max, tmp179
	add	eax, edx	# tmp180, D.9016
	mov	WORD PTR [rbx+198], ax	# wdb_1(D)->rely_min, tmp180
	mov	WORD PTR [rbx+200], r12w	# wdb_1(D)->rely_max, y1
	movsx	ebp, bp	# D.9023, x1
	shr	cx	# tmp181
	movsx	ecx, cx	# tmp182, tmp181
	movsx	esi, si	# D.8974, D.8974
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)wdb_1(D)].surf, MEM[(struct Widget *)wdb_1(D)].surf
	mov	r8d, 255	#,
	mov	edx, ebp	#, D.9023
	call	hlineColor	#
	movsx	ecx, WORD PTR [rbx+198]	# wdb_1(D)->rely_min, wdb_1(D)->rely_min
	movsx	esi, WORD PTR [rbx+176]	# wdb_1(D)->padx, wdb_1(D)->padx
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)wdb_1(D)].surf, MEM[(struct Widget *)wdb_1(D)].surf
	mov	r8d, -325451777	#,
	mov	edx, ebp	#, D.9023
	call	hlineColor	#
	movsx	ecx, r12w	# y1, y1
	movsx	esi, WORD PTR [rbx+176]	# wdb_1(D)->padx, wdb_1(D)->padx
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)wdb_1(D)].surf, MEM[(struct Widget *)wdb_1(D)].surf
	mov	r8d, -325451777	#,
	mov	edx, ebp	#, D.9023
	call	hlineColor	#
	add	r12w, WORD PTR [rbx+184]	# tmp191, wdb_1(D)->my
	movsx	r12d, r12w	# D.9030, tmp191
	movsx	edx, WORD PTR [rbx+178]	# wdb_1(D)->pady, wdb_1(D)->pady
	movsx	esi, WORD PTR [rbx+176]	# wdb_1(D)->padx, wdb_1(D)->padx
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)wdb_1(D)].surf, MEM[(struct Widget *)wdb_1(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r12d	#, D.9030
	call	vlineColor	#
	movsx	edx, WORD PTR [rbx+178]	# wdb_1(D)->pady, wdb_1(D)->pady
	mov	rdi, QWORD PTR [rbx+48]	# MEM[(struct Widget *)wdb_1(D)].surf, MEM[(struct Widget *)wdb_1(D)].surf
	mov	r8d, 255	#,
	mov	ecx, r12d	#, D.9030
	mov	esi, ebp	#, D.9023
	call	vlineColor	#
	movzx	eax, WORD PTR [rbx+200]	# wdb_1(D)->rely_max, wdb_1(D)->rely_max
	sub	ax, WORD PTR [rbx+198]	# tmp199, wdb_1(D)->rely_min
	mov	WORD PTR [rbx+182], ax	# wdb_1(D)->yrange, tmp199
	movzx	eax, WORD PTR [rbx+180]	# D.8977, wdb_1(D)->xrange
	movzx	ecx, ax	# D.8977, D.8977
	movzx	edx, WORD PTR [rbx+196]	# wdb_1(D)->relx_max, wdb_1(D)->relx_max
	movzx	esi, WORD PTR [rbx+194]	# wdb_1(D)->relx_min, wdb_1(D)->relx_min
	sub	edx, esi	# tmp204, wdb_1(D)->relx_min
	add	edx, 1	# tmp205,
	cmp	ecx, edx	# D.8977, tmp205
	je	.L16	#,
	mov	rdi, rbx	#, wdb
	call	WaveDrawBox_toString	#
	mov	rcx, rax	#, D.9044
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)wdb_1(D)].visible,
	jmp	.L9	#
.L16:
	test	ax, ax	# D.8977
	je	.L17	#,
	cmp	ax, WORD PTR [rbx+174]	# D.8977, wdb_1(D)->sample_freq
	jb	.L18	#,
.L17:
	mov	rdi, rbx	#, wdb
	call	WaveDrawBox_toString	#
	mov	rcx, rax	#, D.9048
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR [rbx+130], 0	# MEM[(struct Widget *)wdb_1(D)].visible,
	jmp	.L9	#
.L18:
	cmp	QWORD PTR [rbx+152], 0	# wdb_1(D)->points,
	jne	.L19	#,
	movzx	edi, ax	# D.8977, D.8977
	mov	ecx, 112	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 8	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+152], rax	# wdb_1(D)->points, D.9053
	mov	rdx, QWORD PTR [rbx+144]	# D.9054, wdb_1(D)->afg
	mov	QWORD PTR [rdx+144], rax	# D.9054_120->points, D.9053
	mov	rax, QWORD PTR [rbx+144]	# D.9054, wdb_1(D)->afg
	movzx	edx, WORD PTR [rbx+180]	# D.8977, wdb_1(D)->xrange
	mov	WORD PTR [rax+152], dx	# D.9054_122->points_size, D.8977
.L19:
	cmp	QWORD PTR [rbx+160], 0	# wdb_1(D)->samples,
	jne	.L20	#,
	movzx	edi, WORD PTR [rbx+174]	# wdb_1(D)->sample_freq, wdb_1(D)->sample_freq
	mov	ecx, 117	#,
	mov	edx, OFFSET FLAT:.LC0	#,
	mov	esi, 4	#,
	call	wcalloc	#
	mov	QWORD PTR [rbx+160], rax	# wdb_1(D)->samples, D.9059
	mov	rdx, QWORD PTR [rbx+144]	# D.9054, wdb_1(D)->afg
	mov	QWORD PTR [rdx+128], rax	# D.9054_128->samples, D.9059
	mov	rax, QWORD PTR [rbx+144]	# D.9054, wdb_1(D)->afg
	movzx	edx, WORD PTR [rbx+174]	# D.8967, wdb_1(D)->sample_freq
	mov	WORD PTR [rax+136], dx	# D.9054_130->samples_size, D.8967
.L20:
	mov	BYTE PTR [rbx+130], 1	# MEM[(struct Widget *)wdb_1(D)].visible,
.L9:
	pop	rbx	#
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	WaveDrawBox_refresh, .-WaveDrawBox_refresh
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"WaveDrawBox_new: Passed NULL this pointer. afg=%p, h=%hu\n"
	.section	.rodata.str1.1
.LC10:
	.string	"WaveDrawBox"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"WaveDrawBox_new() ERROR AudioFromGraph object cannot be NULL\n"
	.text
	.globl	WaveDrawBox_new
	.type	WaveDrawBox_new, @function
WaveDrawBox_new:
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
	mov	rbx, rdi	# this, this
	mov	rbp, rsi	# afg, afg
	mov	r12d, edx	# h, h
	test	rdi, rdi	# this
	jne	.L23	#,
	movzx	r8d, dx	#, h
	mov	rcx, rsi	#, afg
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	jmp	.L24	#
.L23:
	mov	ecx, OFFSET FLAT:.LC10	#,
	mov	edx, OFFSET FLAT:WaveDrawBox_vdestroy	#,
	mov	esi, 8	#,
	call	Widget_init_type	#
	mov	WORD PTR [rbx+62], r12w	# MEM[(struct Widget *)this_2(D)].pos.h, h
	mov	BYTE PTR [rbx+131], 1	# MEM[(struct Widget *)this_2(D)].mevent,
	mov	QWORD PTR [rbx+152], 0	# this_2(D)->points,
	mov	QWORD PTR [rbx+160], 0	# this_2(D)->samples,
	mov	QWORD PTR [rbx+144], rbp	# this_2(D)->afg, afg
	test	rbp, rbp	# afg
	jne	.L24	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 61	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	fwrite	#
.L24:
	mov	rax, rbx	#, this
	mov	rbx, QWORD PTR [rsp]	#,
	mov	rbp, QWORD PTR [rsp+8]	#,
	mov	r12, QWORD PTR [rsp+16]	#,
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	WaveDrawBox_new, .-WaveDrawBox_new
	.globl	WaveDrawBox_clearData
	.type	WaveDrawBox_clearData, @function
WaveDrawBox_clearData:
.LFB97:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# wdb, wdb
	cmp	QWORD PTR [rdi+152], 0	# wdb_5(D)->points,
	je	.L27	#,
	cmp	WORD PTR [rdi+180], 0	# wdb_5(D)->xrange,
	je	.L28	#,
	mov	eax, 0	# i,
	xorps	xmm0, xmm0	# tmp86
.L29:
	movzx	ecx, ax	# i, i
	mov	rdx, QWORD PTR [rbx+152]	# wdb_5(D)->points, wdb_5(D)->points
	movss	DWORD PTR [rdx+rcx*8], xmm0	# D.8923_12->fvalue, tmp86
	add	eax, 1	# i,
	cmp	WORD PTR [rbx+180], ax	# wdb_5(D)->xrange, i
	ja	.L29	#,
	jmp	.L28	#
.L30:
	movzx	edx, WORD PTR [rbx+174]	# wdb_5(D)->sample_freq, wdb_5(D)->sample_freq
	sal	rdx, 2	# tmp81,
	mov	esi, 0	#,
	call	memset	#
.L31:
	mov	rdi, rbx	#, wdb
	call	WaveDrawBox_refresh	#
	jmp	.L26	#
.L28:
	mov	rdi, QWORD PTR [rbx+160]	# D.8925, wdb_5(D)->samples
	test	rdi, rdi	# D.8925
	jne	.L30	#,
	jmp	.L31	#
.L27:
	mov	rdi, QWORD PTR [rdi+160]	# D.8925, wdb_5(D)->samples
	test	rdi, rdi	# D.8925
	jne	.L30	#,
.L26:
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	WaveDrawBox_clearData, .-WaveDrawBox_clearData
	.local	str_id
	.comm	str_id,256,32
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
