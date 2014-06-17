	.file	"GraphicsMain.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GraphicsMain.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/SDL_Widgets_array_stable_new/asm/GraphicsMain.asm
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
	.string	" W\305\201\304\204CZONE"
.LC1:
	.string	"WY\305\201\304\204CZONE"
	.text
	.globl	gdragon_toogle
	.type	gdragon_toogle, @function
gdragon_toogle:
.LFB93:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# screen, screen
	cmp	BYTE PTR [rdi+123], 0	# screen_2(D)->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp72,
	mov	edx, OFFSET FLAT:.LC1	# tmp71,
	cmovne	rdx, rax	# tmp71,, iftmp.111, tmp72
	mov	rax, QWORD PTR label[rip]	# label, label
	mov	rax, QWORD PTR [rax+352]	# label.112_6->text_block.text, label.112_6->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp69,* iftmp.111
	mov	QWORD PTR [rax+15], rcx	#, tmp69
	mov	edx, DWORD PTR [rdx+8]	# tmp70,
	mov	DWORD PTR [rax+23], edx	#, tmp70
	mov	rdi, QWORD PTR label[rip]	#, label
	call	Widget_refresh	#
	mov	BYTE PTR [rbx+124], 1	# screen_2(D)->need_reload,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	gdragon_toogle, .-gdragon_toogle
	.section	.rodata.str1.1
.LC2:
	.string	"przepe\305\202nienie"
.LC3:
	.string	"do skrajnych"
.LC4:
	.string	"Otsu"
.LC5:
	.string	"tom3k.info"
.LC6:
	.string	"GraphicsMain.c"
.LC7:
	.string	"fonts/ariblk.ttf"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"GraphicsMain_createInterface: failed to load font \"fonts/ariblk.ttf\"\n"
	.section	.rodata.str1.1
.LC9:
	.string	"font2: height=%d\n"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"img/FreeGreatPicture.com-25614-colorful-high-resolution-background.jpg"
	.section	.rodata.str1.1
.LC11:
	.string	"fonts/verdanab.ttf"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"GraphicsMain_createInterface: failed to load font \"onts/verdanab.ttf\"\n"
	.section	.rodata.str1.1
.LC13:
	.string	"img/application-exit-5.png"
.LC14:
	.string	"Przeci\304\205ganie:              "
.LC15:
	.string	"img/harewood.jpg"
.LC16:
	.string	"Obraz \305\272r\303\263d\305\202owy"
.LC17:
	.string	"Otw\303\263rz SRC i DEST"
.LC18:
	.string	"Przywr\303\263\304\207 SRC"
.LC19:
	.string	"Zapisz SRC"
.LC20:
	.string	"Kopiuj SRC do DEST"
.LC21:
	.string	"Obraz docelowy"
.LC22:
	.string	"Zapisz DEST"
.LC23:
	.string	"Kopiuj DEST do SRC"
.LC24:
	.string	"Negatyw"
.LC25:
	.string	"Odcienie szaro\305\233ci"
.LC26:
	.string	"Pomniejsz"
.LC27:
	.string	"Powi\304\231ksz"
.LC28:
	.string	"Jasno\305\233\304\207/Kontrast"
.LC29:
	.string	"Jasno\305\233\304\207:     "
.LC30:
	.string	"%hd"
.LC31:
	.string	"Kontrast:         "
.LC32:
	.string	"%5.2f"
.LC33:
	.string	"Nadmiar:                    "
.LC34:
	.string	"Resetuj"
.LC35:
	.string	"Histogramy"
.LC36:
	.string	"Binaryzacja"
.LC37:
	.string	"Algorytm:           "
.LC38:
	.string	"%10s"
.LC39:
	.string	"U\305\274yty histogram:       "
.LC40:
	.string	"%5s"
.LC41:
	.string	"Pr\303\263g:       "
.LC42:
	.string	"Utw\303\263rz histogramy"
.LC43:
	.string	"Zastosuj pr\303\263g"
.LC44:
	.string	"Filtracja splotowa"
.LC45:
	.string	"       "
.LC46:
	.string	"%6.2f"
	.section	.rodata.str1.8
	.align 8
.LC47:
	.string	"STD:                                    "
	.section	.rodata.str1.1
.LC48:
	.string	"%32s"
.LC49:
	.string	"Zastosuj filtr"
.LC50:
	.string	"Element strukturalny"
.LC51:
	.string	"Wierszy:"
.LC52:
	.string	"Kolumn:"
.LC53:
	.string	"    "
.LC54:
	.string	"%3hu"
.LC55:
	.string	"Operacje morfologiczne"
.LC56:
	.string	"Dylatacja"
.LC57:
	.string	"Erozja"
.LC58:
	.string	"Otwarcie"
.LC59:
	.string	"Zamkni\304\231cie"
.LC60:
	.string	"Geodezyjne:"
.LC61:
	.string	"Wyr\303\263wnanie histogramu"
.LC62:
	.string	"Wyr\303\263wnanie"
.LC63:
	.string	"Rekonstrukcja"
.LC64:
	.string	"Otw\303\263rz marker"
.LC65:
	.string	"%5hu"
.LC66:
	.string	"Limit iteracji:"
.LC67:
	.string	"Wykonaj"
.LC68:
	.string	"Zamiana kolor\303\263w"
.LC69:
	.string	"Pr\303\263g:     "
.LC70:
	.string	"%3d"
.LC71:
	.string	"Warunek:      "
.LC72:
	.string	"`%2s`"
.LC73:
	.string	"Nowy kolor"
.LC74:
	.string	"Zastosuj"
.LC75:
	.string	"Rozci\304\205ganie histogramu"
.LC76:
	.string	"Liczba w\304\231z\305\202\303\263w:    "
.LC77:
	.string	"Filtry"
.LC78:
	.string	"Medianowy"
.LC79:
	.string	"\305\232rednia"
.LC80:
	.string	"Minimum"
.LC81:
	.string	"Maksimum"
.LC82:
	.string	"Maks-Min"
.LC83:
	.string	"Widok"
.LC84:
	.string	"Jasno\305\233\304\207/kontrast"
	.section	.rodata.str1.8
	.align 8
.LC85:
	.string	"GraphicsMain - count of widget:\n\tImages %hu/%d\n\tButtons %hu/%d\n\tTextBlocks %hu/%d\n\tLabels %hu/%d\n\tLabelImages %hu/%d\n\tButtonImages %hu/%d\n\tRectangles %hu/%d\n\tHistograms %hu/%d\n\tStackList %hu/%d\n\tFloatingMenus %hu/%d\n\tGrids %hu/%d\n"
	.text
	.globl	GraphicsMain_createInterface
	.type	GraphicsMain_createInterface, @function
GraphicsMain_createInterface:
.LFB94:
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
	sub	rsp, 264	#,
	.cfi_def_cfa_offset 320
	mov	edx, 150	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 552	#,
	call	wmalloc	#
	mov	QWORD PTR image[rip], rax	# image, image.42
	mov	QWORD PTR text_block[rip], 0	# text_block,
	mov	edx, 152	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 105328	#,
	call	wmalloc	#
	mov	QWORD PTR button[rip], rax	# button, button.43
	mov	edx, 153	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 12648	#,
	call	wmalloc	#
	mov	QWORD PTR label[rip], rax	# label, label.44
	mov	QWORD PTR labelimage[rip], 0	# labelimage,
	mov	edx, 155	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 91152	#,
	call	wmalloc	#
	mov	QWORD PTR buttonimage[rip], rax	# buttonimage, buttonimage.45
	mov	QWORD PTR rectangle[rip], 0	# rectangle,
	mov	edx, 157	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 600	#,
	call	wmalloc	#
	mov	QWORD PTR histogram[rip], rax	# histogram, histogram.46
	mov	edx, 158	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 240	#,
	call	wmalloc	#
	mov	QWORD PTR pdb[rip], rax	# pdb, pdb.47
	mov	edx, 159	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 648	#,
	call	wmalloc	#
	mov	QWORD PTR hsg[rip], rax	# hsg, hsg.48
	mov	edx, 160	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 12480	#,
	call	wmalloc	#
	mov	QWORD PTR stacklist[rip], rax	# stacklist, stacklist.49
	mov	edx, 161	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 432	#,
	call	wmalloc	#
	mov	QWORD PTR grid[rip], rax	# grid, grid.50
	mov	edx, 162	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 4160	#,
	call	wmalloc	#
	mov	QWORD PTR fm[rip], rax	# fm, fm.51
	mov	esi, 20	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	Static_getFont	#
	mov	QWORD PTR font2[rip], rax	# font2, font2.52
	test	rax, rax	# font2.52
	jne	.L6	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 69	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	mov	eax, 1	# D.10042,
	jmp	.L7	#
.L6:
	mov	rdi, rax	#, font2.52
	call	TTF_FontHeight	#
	mov	ecx, eax	#, D.10043
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rax, QWORD PTR Image_class[rip]	# Image_class, Image_class
	mov	rdi, QWORD PTR [rax+8]	# Image_class.55_40->size, Image_class.55_40->size
	mov	edx, 171	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wmalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	rdi, rax	#, D.10046
	call	Image_new	#
	mov	QWORD PTR background[rip], rax	# background, background.56
	mov	edx, 0	#,
	mov	rsi, rax	#, background.56
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundWidget	#
	mov	ecx, 175	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 16	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	wTTF_OpenFont	#
	mov	QWORD PTR font4[rip], rax	# font4, font4.59
	test	rax, rax	# font4.59
	jne	.L8	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 70	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC12	#,
	call	fwrite	#
	mov	eax, 1	# D.10042,
	jmp	.L7	#
.L8:
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rax, QWORD PTR GToolsSplotFilter_class[rip]	# GToolsSplotFilter_class, GToolsSplotFilter_class
	mov	rdi, QWORD PTR [rax+8]	# GToolsSplotFilter_class.61_50->size, GToolsSplotFilter_class.61_50->size
	mov	edx, 196	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wmalloc	#
	mov	rdi, rax	#, D.10056
	call	GToolsSplotFilter_new	#
	mov	QWORD PTR gtsf[rip], rax	# gtsf, gtsf.62
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbx, rbx, 1688	# tmp1251, c_buttonimage.64,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1253,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1253
	mov	esi, OFFSET FLAT:.LC13	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_new	#
	mov	r9d, 1	#,
	mov	r8d, 20	#,
	mov	ecx, 20	#,
	mov	edx, 14	#,
	mov	esi, 1750	#,
	mov	rdi, rbx	#, butimg
	call	ButtonImage_applyDefaultStyle	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:Screen_buttonExitClicked	# MEM[(struct Widget *)butimg_58].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1255, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1257,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1257
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	cmp	BYTE PTR [rax+123], 0	# sc.58_67->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp2093,
	mov	edx, OFFSET FLAT:.LC1	# tmp2092,
	cmovne	rdx, rax	# tmp2092,, iftmp.69, tmp2093
	mov	rax, QWORD PTR [rbx+352]	# lab_65->text_block.text, lab_65->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp1261,* iftmp.69
	mov	QWORD PTR [rax+15], rcx	#, tmp1261
	mov	edx, DWORD PTR [rdx+8]	# tmp1262,
	mov	DWORD PTR [rax+23], edx	#, tmp1262
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 950	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	rsi, rbx	#, lab
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_image[rip]	# c_image.71, c_image
	movzx	ebp, ax	# c_image.71, c_image.71
	imul	rbp, rbp, 184	# tmp1264, c_image.71,
	add	rbp, QWORD PTR image[rip]	# img, image
	add	eax, 1	# tmp1266,
	mov	WORD PTR c_image[rip], ax	# c_image, tmp1266
	mov	ecx, 546	#,
	mov	edx, 159	#,
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbp	#, img
	call	Image_new	#
	mov	BYTE PTR [rbp+165], 1	# MEM[(struct Widget *)img_79].draggable,
	mov	DWORD PTR [rbp+160], 0	# MEM[(struct Widget *)img_79].id,
	mov	rsi, rbp	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_image[rip]	# c_image.71, c_image
	movzx	ebx, ax	# c_image.71, c_image.71
	imul	rbx, rbx, 184	# tmp1268, c_image.71,
	add	rbx, QWORD PTR image[rip]	# img, image
	add	eax, 1	# tmp1270,
	mov	WORD PTR c_image[rip], ax	# c_image, tmp1270
	movzx	ecx, WORD PTR [rbp+98]	# MEM[(struct Widget *)img_79].pos.y, MEM[(struct Widget *)img_79].pos.y
	movzx	edx, WORD PTR [rbp+152]	# MEM[(struct Widget *)img_79].maxx, MEM[(struct Widget *)img_79].maxx
	add	edx, 10	# tmp1272,
	movzx	edx, dx	# tmp1274, tmp1272
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbx	#, img
	call	Image_new	#
	mov	BYTE PTR [rbx+165], 1	# MEM[(struct Widget *)img_87].draggable,
	mov	DWORD PTR [rbx+160], 1	# MEM[(struct Widget *)img_87].id,
	mov	rsi, rbx	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_image[rip]	# c_image.71, c_image
	movzx	ebp, ax	# c_image.71, c_image.71
	imul	rbp, rbp, 184	# tmp1276, c_image.71,
	add	rbp, QWORD PTR image[rip]	# img, image
	add	eax, 1	# tmp1278,
	mov	WORD PTR c_image[rip], ax	# c_image, tmp1278
	movzx	ecx, WORD PTR [rbx+98]	# MEM[(struct Widget *)img_87].pos.y, MEM[(struct Widget *)img_87].pos.y
	movzx	edx, WORD PTR [rbx+152]	# MEM[(struct Widget *)img_87].maxx, MEM[(struct Widget *)img_87].maxx
	add	edx, 10	# tmp1280,
	movzx	edx, dx	# tmp1282, tmp1280
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbp	#, img
	call	Image_new	#
	mov	BYTE PTR [rbp+165], 1	# MEM[(struct Widget *)img_101].draggable,
	mov	BYTE PTR [rbp+167], 0	# MEM[(struct Widget *)img_101].visible,
	mov	DWORD PTR [rbp+160], 2	# MEM[(struct Widget *)img_101].id,
	mov	rsi, rbp	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1286,
	lea	rbx, [rax+rcx*4]	# tmp1288,
	sal	rbx, 4	# tmp1289,
	add	rbx, QWORD PTR fm[rip]	# fmenu, fm
	add	edx, 1	# tmp1291,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1291
	mov	edx, 0	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, rbx	#, fmenu
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, fmenu
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+165], 1	# MEM[(struct Widget *)fmenu_114].draggable,
	mov	rsi, rbx	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC16	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_imgsrc_open	#,
	mov	edx, OFFSET FLAT:.LC17	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_src_restore	#,
	mov	edx, OFFSET FLAT:.LC18	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 2	#,
	mov	ecx, OFFSET FLAT:button_src_save	#,
	mov	edx, OFFSET FLAT:.LC19	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 3	#,
	mov	ecx, OFFSET FLAT:button_src_to_dest	#,
	mov	edx, OFFSET FLAT:.LC20	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	rdi, rbx	#, fmenu
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1294, image
	add	rdx, 184	# tmp1294,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1300, image
	add	rdx, 184	# tmp1300,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_src_save	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_src_to_dest	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1306, image
	add	rdx, 184	# tmp1306,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_src_to_dest	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1311,
	lea	rbx, [rax+rcx*4]	# tmp1313,
	sal	rbx, 4	# tmp1314,
	add	rbx, QWORD PTR fm[rip]	# fmenu, fm
	add	edx, 1	# tmp1316,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1316
	mov	edx, 0	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, rbx	#, fmenu
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 215	#,
	mov	rdi, rbx	#, fmenu
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+165], 1	# MEM[(struct Widget *)fmenu_149].draggable,
	mov	rsi, rbx	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC21	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_dest_save	#,
	mov	edx, OFFSET FLAT:.LC22	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_dest_to_src	#,
	mov	edx, OFFSET FLAT:.LC23	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 2	#,
	mov	ecx, OFFSET FLAT:button_dest_negative	#,
	mov	edx, OFFSET FLAT:.LC24	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 3	#,
	mov	ecx, OFFSET FLAT:button_destaturize_std	#,
	mov	edx, OFFSET FLAT:.LC25	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_dest_resize	#,
	mov	edx, OFFSET FLAT:.LC26	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L10	#,
	mov	rsi, QWORD PTR image[rip]	# tmp1317, image
	add	rsi, 184	# tmp1317,
	mov	edx, 1	#,
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L10:
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_dest_resize	#,
	mov	edx, OFFSET FLAT:.LC27	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L11	#,
	mov	rsi, QWORD PTR image[rip]	# tmp1319, image
	add	rsi, 184	# tmp1319,
	mov	edx, 1	#,
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L11:
	mov	rdi, rbx	#, fmenu
	call	Widget_refresh	#
	mov	rdx, QWORD PTR image[rip]	# tmp1321, image
	add	rdx, 184	# tmp1321,
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_dest_save	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1325, image
	add	rdx, 184	# tmp1325,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1329, image
	add	rdx, 184	# tmp1329,
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_dest_negative	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_destaturize_std	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1333, image
	add	rdx, 184	# tmp1333,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_destaturize_std	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	r13d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1338,
	lea	rax, [rax+rcx*4]	# tmp1340,
	sal	rax, 4	# tmp1341,
	add	rax, QWORD PTR fm[rip]	# tmp1341, fm
	mov	QWORD PTR [rsp+192], rax	# %sfp, tmp1341
	add	edx, 1	# tmp1343,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1343
	mov	edx, 5	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1341
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 511	#,
	mov	esi, 24	#,
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+192]	#, %sfp
	mov	BYTE PTR [rax+165], 1	# MEM[(struct Widget *)fmenu_189].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1345, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1347,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1347
	mov	esi, OFFSET FLAT:.LC29	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# tmp1349, lab_198->text_block.text
	add	rdi, 11	# tmp1349,
	movsx	r8d, WORD PTR img_off[rip]	#, img_off
	mov	ecx, OFFSET FLAT:.LC30	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 36	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1353, image
	add	rdx, 184	# tmp1353,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1361, image
	add	rdx, 184	# tmp1361,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1365, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1367,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1367
	mov	esi, OFFSET FLAT:.LC31	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movss	xmm0, DWORD PTR img_mul[rip]	# tmp1368, img_mul
	cvtps2pd	xmm0, xmm0	# tmp1368, tmp1368
	mov	rdi, QWORD PTR [rbx+352]	# tmp1369, lab_224->text_block.text
	add	rdi, 11	# tmp1369,
	mov	ecx, OFFSET FLAT:.LC32	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 1	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1374, image
	add	rdx, 184	# tmp1374,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1381, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1383,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1383
	mov	esi, OFFSET FLAT:.LC33	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	cmp	BYTE PTR img_overflow[rip], 0	# img_overflow,
	mov	eax, OFFSET FLAT:.LC2	# tmp2095,
	mov	esi, OFFSET FLAT:.LC3	# tmp2094,
	cmovne	rsi, rax	# tmp2094,, iftmp.79, tmp2095
	mov	rdi, QWORD PTR [rbx+352]	# tmp1384, lab_245->text_block.text
	add	rdi, 9	# tmp1384,
	call	strcpy	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1388, image
	add	rdx, 184	# tmp1388,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 7	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, r13w	# D.10120, label_off
	lea	r15d, [rax+3]	# D.10122,
	cmp	eax, r15d	# D.10120, D.10122
	jge	.L41	#,
	mov	ebx, 4	# f,
.L14:
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1401,
	lea	rbp, [rax+rcx*4]	# tmp1403,
	sal	rbp, 4	# tmp1404,
	add	rbp, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1406,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1406
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1408, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1410,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1410
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10113
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	movzx	r14d, bx	# D.10114, f
	mov	rax, QWORD PTR click_handler[0+r14*8]	# D.10115, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_281].click_handler, D.10115
	mov	DWORD PTR [r12+160], 1	# MEM[(struct Widget *)butimg_281].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1414, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1416,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1416
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10116
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+r14*8]	# D.10115, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_290].click_handler, D.10115
	mov	DWORD PTR [r12+160], 0	# MEM[(struct Widget *)butimg_290].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, sliy2
	call	Widget_refresh	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1422,
	lea	r12, [rax+rcx*4]	# tmp1424,
	sal	r12, 4	# tmp1425,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1427,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1427
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	mov	DWORD PTR [rsp+8], 10	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, sliy2
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	movzx	esi, r13w	# k, k
	imul	rsi, rsi, 408	# tmp1429, k,
	add	rsi, QWORD PTR label[rip]	# tmp1430, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 4	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 0	#,
	mov	r8d, 4	#,
	mov	ecx, 3	#,
	mov	edx, 4	#,
	mov	rsi, r12	#, slix
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	add	r13d, 1	# k,
	add	ebx, 1	# f,
	movzx	eax, r13w	# k, k
	cmp	eax, r15d	# k, D.10122
	jl	.L14	#,
	jmp	.L13	#
.L41:
	mov	ebx, 4	# f,
.L13:
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebp, ax	# c_button.85, c_button.85
	imul	rbp, rbp, 1816	# tmp1434, c_button.85,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1436,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1436
	mov	esi, OFFSET FLAT:.LC34	#,
	mov	rdi, rbp	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 221	#,
	mov	esi, 23	#,
	mov	rdi, rbp	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_brightness_reset	# MEM[(struct Widget *)but_311].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 10	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, but
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1440,
	lea	rax, [rax+rcx*4]	# tmp1442,
	sal	rax, 4	# tmp1443,
	add	rax, QWORD PTR fm[rip]	# tmp1443, fm
	mov	QWORD PTR [rsp+208], rax	# %sfp, tmp1443
	add	edx, 1	# tmp1445,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1445
	mov	edx, 4	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1443
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 324	#,
	mov	esi, 1319	#,
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	Widget_setPosition	#
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	BYTE PTR [rdx+165], 1	# MEM[(struct Widget *)fmenu_318].draggable,
	mov	rsi, rdx	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	r8d, 0	#,
	mov	ecx, 7	#,
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_histogram[rip]	# c_histogram.87, c_histogram
	movzx	edx, ax	# c_histogram.87, c_histogram.87
	lea	rdx, [rdx+rdx*4]	# tmp1449,
	lea	rcx, [rdx+rdx*4]	# tmp1451,
	mov	rdx, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rbp, [rdx+rcx*8]	# hist,
	add	eax, 1	# tmp1454,
	mov	WORD PTR c_histogram[rip], ax	# c_histogram, tmp1454
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 16711680	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rdi, rbp	#, hist
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 5	#,
	mov	r8d, 2	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hist
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_histogram[rip]	# c_histogram.87, c_histogram
	movzx	edx, ax	# c_histogram.87, c_histogram.87
	lea	rdx, [rdx+rdx*4]	# tmp1458,
	lea	rcx, [rdx+rdx*4]	# tmp1460,
	mov	rdx, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rbp, [rdx+rcx*8]	# hist,
	add	eax, 1	# tmp1463,
	mov	WORD PTR c_histogram[rip], ax	# c_histogram, tmp1463
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 65280	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rdi, rbp	#, hist
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 5	#,
	mov	r8d, 2	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hist
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_histogram[rip]	# c_histogram.87, c_histogram
	movzx	edx, ax	# c_histogram.87, c_histogram.87
	lea	rdx, [rdx+rdx*4]	# tmp1467,
	lea	rcx, [rdx+rdx*4]	# tmp1469,
	mov	rdx, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rbp, [rdx+rcx*8]	# hist,
	add	eax, 1	# tmp1472,
	mov	WORD PTR c_histogram[rip], ax	# c_histogram, tmp1472
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 255	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rdi, rbp	#, hist
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 5	#,
	mov	r8d, 2	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hist
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	Widget_setVisible	#
	movzx	r15d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1476,
	lea	rax, [rax+rcx*4]	# tmp1478,
	sal	rax, 4	# tmp1479,
	add	rax, QWORD PTR fm[rip]	# tmp1479, fm
	mov	QWORD PTR [rsp+200], rax	# %sfp, tmp1479
	add	edx, 1	# tmp1481,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1481
	mov	edx, 5	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1479
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 511	#,
	mov	esi, 413	#,
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+200]	#, %sfp
	mov	BYTE PTR [rax+165], 1	# MEM[(struct Widget *)fmenu_347].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# lab_algo_ind, c_label
	movzx	r13d, ax	# lab_algo_ind, lab_algo_ind
	imul	r13, r13, 408	# D.10067, lab_algo_ind,
	mov	rbp, QWORD PTR label[rip]	# lab, label
	add	rbp, r13	# lab, D.10067
	add	eax, 1	# tmp1484,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1484
	mov	esi, OFFSET FLAT:.LC37	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	cmp	BYTE PTR t_algo[rip], 0	# t_algo,
	mov	eax, OFFSET FLAT:.LC4	# tmp2097,
	mov	r8d, OFFSET FLAT:.LC5	# tmp2096,
	cmovne	r8, rax	# tmp2096,, iftmp.89, tmp2097
	mov	rdi, QWORD PTR [rbp+352]	# tmp1485, lab_357->text_block.text
	add	rdi, 10	# tmp1485,
	mov	ecx, OFFSET FLAT:.LC38	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 45	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, lab
	call	Label_applyDefaultStyle	#
	movzx	eax, WORD PTR c_label[rip]	# lab_hist_ind, c_label
	movzx	r12d, ax	# lab_hist_ind, lab_hist_ind
	imul	r12, r12, 408	# D.10067, lab_hist_ind,
	mov	rbp, QWORD PTR label[rip]	# lab, label
	add	rbp, r12	# lab, D.10067
	add	eax, 1	# tmp1489,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1489
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	movzx	eax, BYTE PTR num_hist[rip]	# num_hist, num_hist
	mov	rdi, QWORD PTR [rbp+352]	# tmp1494, lab_370->text_block.text
	add	rdi, 18	# tmp1494,
	mov	r8, QWORD PTR HIST_NAMES[0+rax*8]	#, HIST_NAMES
	mov	ecx, OFFSET FLAT:.LC40	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 18	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, lab
	call	Label_applyDefaultStyle	#
	movzx	eax, WORD PTR c_label[rip]	# lab_thr_ind, c_label
	movzx	edx, ax	# lab_thr_ind, lab_thr_ind
	imul	rdx, rdx, 408	#, lab_thr_ind,
	mov	QWORD PTR [rsp+176], rdx	# %sfp,
	mov	rbp, rdx	# lab,
	add	rbp, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1498,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1498
	mov	esi, OFFSET FLAT:.LC41	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 50	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, lab
	call	Label_applyDefaultStyle	#
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	rdx, rbp	#, lab
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	rdx, rbp	#, lab
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	rdx, rbp	#, lab
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	rdx, rbp	#, lab
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR label[rip]	# tmp1500, label
	add	rdx, r13	# tmp1500, D.10067
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:t_algo	#,
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR label[rip]	# tmp1505, label
	add	rdx, r12	# tmp1505, D.10067
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR [rsp+176]	# tmp1508, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1508, label
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:num_hist	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:HIST_NAMES	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:colors	#,
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR [rsp+176]	# tmp1518, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1518, label
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_threshold_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_threshold_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_threshold_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1523, image
	add	rdx, 184	# tmp1523,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_threshold_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_threshold_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_dest_splotfilter	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1528, image
	add	rdx, 184	# tmp1528,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_dest_splotfilter	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR gtsf[rip]	#, gtsf
	mov	esi, OFFSET FLAT:button_dest_splotfilter	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, r15w	# D.10120, label_off
	lea	edx, [rax+3]	#,
	mov	DWORD PTR [rsp+168], edx	# %sfp,
	cmp	eax, edx	# D.10120,
	jge	.L16	#,
.L18:
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1534,
	lea	r12, [rax+rcx*4]	# tmp1536,
	sal	r12, 4	# tmp1537,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1539,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1539
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r14, r14, 1688	# tmp1541, c_buttonimage.64,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1543,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1543
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10152
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	movzx	ebp, bx	# D.10114, f
	mov	rax, QWORD PTR click_handler[0+rbp*8]	# D.10115, click_handler
	mov	QWORD PTR [r14+8], rax	# MEM[(struct Widget *)butimg_449].click_handler, D.10115
	mov	DWORD PTR [r14+160], 1	# MEM[(struct Widget *)butimg_449].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r13d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r13, r13, 1688	# tmp1547, c_buttonimage.64,
	add	r13, QWORD PTR buttonimage[rip]	# butimg2, buttonimage
	add	eax, 1	# tmp1549,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1549
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10153
	mov	rdi, r13	#, butimg2
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+rbp*8]	# D.10115, click_handler
	mov	QWORD PTR [r13+8], rax	# MEM[(struct Widget *)butimg2_458].click_handler, D.10115
	mov	DWORD PTR [r13+160], 0	# MEM[(struct Widget *)butimg2_458].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, butimg2
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, sliy2
	call	Widget_refresh	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1555,
	lea	rbp, [rax+rcx*4]	# tmp1557,
	sal	rbp, 4	# tmp1558,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1560,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1560
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, slix
	call	StackList_new	#
	mov	DWORD PTR [rsp+8], 10	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, sliy2
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	movzx	esi, r15w	# k, k
	imul	rsi, rsi, 408	# tmp1562, k,
	add	rsi, QWORD PTR label[rip]	# tmp1563, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 4	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 0	#,
	mov	r8d, 4	#,
	mov	ecx, 3	#,
	mov	edx, 4	#,
	mov	rsi, rbp	#, slix
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	cmp	bx, 9	# f,
	jne	.L17	#,
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
.L17:
	add	r15d, 1	# k,
	add	ebx, 1	# f,
	movzx	eax, r15w	# k, k
	cmp	eax, DWORD PTR [rsp+168]	# k, %sfp
	jl	.L18	#,
.L16:
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage, c_buttonimage
	imul	rax, rax, 1688	# tmp1579, c_buttonimage,
	mov	rdx, QWORD PTR buttonimage[rip]	# buttonimage, buttonimage
	lea	rdi, [rdx-3376+rax]	# tmp1581,
	mov	esi, 0	#,
	call	ButtonImage_setEnabled	#
	movzx	edi, WORD PTR c_buttonimage[rip]	# c_buttonimage, c_buttonimage
	sub	rdi, 1	# tmp1584,
	imul	rdi, rdi, 1688	# tmp1585, tmp1584,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp1586, buttonimage
	mov	esi, 0	#,
	call	ButtonImage_setEnabled	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1591,
	lea	rbx, [rax+rcx*4]	# tmp1593,
	sal	rbx, 4	# tmp1594,
	add	rbx, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1596,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1596
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebp, ax	# c_button.85, c_button.85
	imul	rbp, rbp, 1816	# tmp1598, c_button.85,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1600,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1600
	mov	esi, OFFSET FLAT:.LC42	#,
	mov	rdi, rbp	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 4	#,
	mov	r8d, 3	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_bin_create_histograms	# MEM[(struct Widget *)but_509].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 10	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, but
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:colors	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR [rsp+176]	# tmp1606, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1606, label
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 7	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 8	#,
	mov	edx, OFFSET FLAT:num_hist	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 9	#,
	mov	edx, OFFSET FLAT:t_algo	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebp, ax	# c_button.85, c_button.85
	imul	rbp, rbp, 1816	# tmp1612, c_button.85,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1614,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1614
	mov	esi, OFFSET FLAT:.LC43	#,
	mov	rdi, rbp	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 4	#,
	mov	r8d, 3	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_threshold_apply	# MEM[(struct Widget *)but_530].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 10	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, but
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbx	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 4	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 0	#,
	mov	r8d, 4	#,
	mov	ecx, 3	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, slix
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1618,
	lea	rax, [rax+rcx*4]	# tmp1620,
	sal	rax, 4	# tmp1621,
	add	rax, QWORD PTR fm[rip]	# tmp1621, fm
	mov	QWORD PTR [rsp+224], rax	# %sfp, tmp1621
	add	edx, 1	# tmp1623,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1623
	mov	edx, 4	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1621
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 16	#,
	mov	esi, 771	#,
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+224]	#, %sfp
	mov	BYTE PTR [rax+165], 1	# MEM[(struct Widget *)fmenu_537].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC44	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_grid[rip]	# c_grid.94, c_grid
	movzx	edx, ax	# c_grid.94, c_grid.94
	lea	rdx, [rdx+rdx*2]	# tmp1627,
	lea	rcx, [rdx+rdx*8]	# tmp1629,
	mov	rdx, QWORD PTR grid[rip]	# grid, grid
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+176], rdx	# %sfp,
	add	eax, 1	# tmp1632,
	mov	WORD PTR c_grid[rip], ax	# c_grid, tmp1632
	mov	edx, 6	#,
	mov	esi, 3	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_new	#
	mov	edx, 0	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Container_setPadding	#
	movzx	eax, WORD PTR c_label[rip]	# c_label, c_label
	imul	rax, rax, 408	# tmp1634, c_label,
	add	rax, QWORD PTR label[rip]	# tmp1634, label
	mov	QWORD PTR [rsp+216], rax	# %sfp, tmp1634
	mov	DWORD PTR [rsp+168], 0	# %sfp,
	mov	WORD PTR [rsp+184], 8	# %sfp,
	jmp	.L19	#
.L21:
	mov	r14d, r13d	# x, ivtmp.164
	movzx	r15d, WORD PTR [rsp+184]	# D.10474, %sfp
	sub	r15d, r14d	# D.10474, x
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1637, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1639,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1639
	mov	esi, OFFSET FLAT:.LC45	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movzx	r15d, r15w	# D.10120, D.10474
	movsx	rdx, r15d	# D.10120, D.10120
	mov	rax, QWORD PTR gtsf[rip]	# gtsf, gtsf
	movss	xmm0, DWORD PTR [rax+12+rdx*4]	# tmp1642, gtsf.92_563->weight
	cvtps2pd	xmm0, xmm0	# tmp1642, tmp1642
	mov	rdi, QWORD PTR [rbx+352]	# lab_561->text_block.text, lab_561->text_block.text
	mov	r8d, OFFSET FLAT:.LC46	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 7	#,
	mov	eax, 1	#,
	call	__snprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	cmp	r13w, 2	# x,
	mov	eax, 0	# tmp2099,
	mov	edx, 20	#,
	cmovne	eax, edx	#,, iftmp.96
	add	r14d, r14d	# D.10173
	lea	ecx, [r14+1]	# tmp1644,
	movzx	ecx, cx	# tmp1645, tmp1644
	mov	DWORD PTR [rsp+24], eax	#, iftmp.96
	mov	DWORD PTR [rsp+16], 10	#,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 3	#,
	mov	r8d, 4	#,
	mov	edx, DWORD PTR [rsp+168]	#, %sfp
	mov	rsi, rbx	#, lab
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_add	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1649,
	lea	rbp, [rax+rcx*4]	# tmp1651,
	sal	rbp, 4	# tmp1652,
	add	rbp, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1654,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1654
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1656, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1658,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1658
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10177
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_change_filter_weight	# MEM[(struct Widget *)butimg_585].click_handler,
	add	r15d, r15d	# D.10178
	lea	eax, [r15+1]	# tmp1659,
	mov	DWORD PTR [r12+160], eax	# MEM[(struct Widget *)butimg_585].id, tmp1659
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1661, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1663,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1663
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10181
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_change_filter_weight	# MEM[(struct Widget *)butimg_596].click_handler,
	mov	DWORD PTR [r12+160], r15d	# MEM[(struct Widget *)butimg_596].id, D.10178
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, sliy2
	call	Widget_refresh	#
	movzx	ecx, r14w	# D.10173, D.10173
	mov	DWORD PTR [rsp+24], 2	#,
	mov	DWORD PTR [rsp+16], 10	#,
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	edx, DWORD PTR [rsp+168]	#, %sfp
	mov	rsi, rbp	#, sliy2
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_add	#
	add	r13d, 1	# ivtmp.164,
	cmp	r13d, 3	# ivtmp.164,
	jne	.L21	#,
	sub	WORD PTR [rsp+184], 3	# %sfp,
	add	DWORD PTR [rsp+168], 1	# %sfp,
	cmp	WORD PTR [rsp+184], -1	# %sfp,
	je	.L22	#,
.L19:
	mov	r13d, 0	# ivtmp.164,
	jmp	.L21	#
.L22:
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, QWORD PTR [rsp+176]	#, %sfp
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1666, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1668,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1668
	mov	esi, OFFSET FLAT:.LC47	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR gtsf[rip]	#, gtsf
	call	GToolsSplotFilter_getFilterName	#
	mov	r9, rax	# D.10184,
	mov	rdi, QWORD PTR [rbx+352]	# tmp1669, lab_612->text_block.text
	add	rdi, 5	# tmp1669,
	mov	r8d, OFFSET FLAT:.LC48	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 32	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 60	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+24], 20	#,
	mov	DWORD PTR [rsp+16], 10	#,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 3	#,
	mov	r8d, 4	#,
	mov	ecx, 7	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, lab
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_add	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_change_filter_weight	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR gtsf[rip]	#, gtsf
	mov	esi, OFFSET FLAT:button_change_filter_weight	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_change_filter_predef	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR gtsf[rip]	#, gtsf
	mov	esi, OFFSET FLAT:button_change_filter_predef	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR [rsp+216]	#, %sfp
	mov	esi, OFFSET FLAT:button_change_filter_predef	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1679,
	lea	rbp, [rax+rcx*4]	# tmp1681,
	sal	rbp, 4	# tmp1682,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1684,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1684
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, slix
	call	StackList_new	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1688,
	lea	r12, [rax+rcx*4]	# tmp1690,
	sal	r12, 4	# tmp1691,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1693,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1693
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r13d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r13, r13, 1688	# tmp1695, c_buttonimage.64,
	add	r13, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1697,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1697
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10190
	mov	rdi, r13	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_change_filter_predef	# MEM[(struct Widget *)butimg_648].click_handler,
	mov	DWORD PTR [r13+160], 1	# MEM[(struct Widget *)butimg_648].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r13d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r13, r13, 1688	# tmp1699, c_buttonimage.64,
	add	r13, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1701,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1701
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10191
	mov	rdi, r13	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_change_filter_predef	# MEM[(struct Widget *)butimg_655].click_handler,
	mov	DWORD PTR [r13+160], 0	# MEM[(struct Widget *)butimg_655].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, sliy2
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 2	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, sliy2
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, slix
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebx, ax	# c_button.85, c_button.85
	imul	rbx, rbx, 1816	# tmp1703, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1705,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1705
	mov	esi, OFFSET FLAT:.LC49	#,
	mov	rdi, rbx	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_dest_splotfilter	# MEM[(struct Widget *)but_662].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 7	#,
	mov	r9d, 3	#,
	mov	r8d, 15	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, but
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1709,
	lea	rax, [rax+rcx*4]	# tmp1711,
	sal	rax, 4	# tmp1712,
	add	rax, QWORD PTR fm[rip]	# tmp1712, fm
	mov	QWORD PTR [rsp+216], rax	# %sfp, tmp1712
	add	edx, 1	# tmp1714,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1714
	mov	edx, 3	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1712
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 300	#,
	mov	esi, 800	#,
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+216]	#, %sfp
	mov	BYTE PTR [rax+165], 1	# MEM[(struct Widget *)fmenu_669].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC50	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_pdb[rip]	# c_pdb.99, c_pdb
	movzx	ebx, ax	# c_pdb.99, c_pdb.99
	mov	rdx, rbx	# tmp1717, c_pdb.99
	sal	rdx, 4	# tmp1717,
	sal	rbx, 8	# tmp1718,
	sub	rbx, rdx	# tmp1719, tmp1717
	add	rbx, QWORD PTR pdb[rip]	# pd, pdb
	add	eax, 1	# tmp1721,
	mov	WORD PTR c_pdb[rip], ax	# c_pdb, tmp1721
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 4	#,
	mov	r8d, 30	#,
	mov	ecx, 30	#,
	mov	edx, 450	#,
	mov	esi, 450	#,
	mov	rdi, rbx	#, pd
	call	PixelDrawBox_new	#
	mov	edx, 541	#,
	mov	esi, 894	#,
	mov	rdi, rbx	#, pd
	call	PixelDrawBox_setPosition	#
	mov	edx, 1	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, pd
	call	PixelDrawBox_setPadding	#
	mov	BYTE PTR [rbx+208], 1	# MEM[(struct Grid *)pd_678].showBorder,
	mov	rdi, rbx	#, pd
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, pd
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_change_strelem_size	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_dilate_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1724, image
	add	rdx, 184	# tmp1724,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_dilate_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_dilate_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_erode_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1729, image
	add	rdx, 184	# tmp1729,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_erode_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_erode_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_morph_open_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1734, image
	add	rdx, 184	# tmp1734,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_morph_open_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_morph_open_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_morph_close_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1739, image
	add	rdx, 184	# tmp1739,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_morph_close_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_morph_close_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_grid[rip]	# c_grid.94, c_grid
	movzx	edx, ax	# c_grid.94, c_grid.94
	lea	rdx, [rdx+rdx*2]	# tmp1745,
	lea	rcx, [rdx+rdx*8]	# tmp1747,
	mov	rdx, QWORD PTR grid[rip]	# grid, grid
	lea	r14, [rdx+rcx*8]	# gri,
	add	eax, 1	# tmp1750,
	mov	WORD PTR c_grid[rip], ax	# c_grid, tmp1750
	mov	edx, 2	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, gri
	call	Grid_new	#
	mov	edx, 2	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, gri
	call	Container_setPadding	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1752, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1754,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1754
	mov	esi, OFFSET FLAT:.LC51	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 1	#,
	mov	r8d, 1	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+24], 0	#,
	mov	DWORD PTR [rsp+16], 0	#,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r14	#, gri
	call	Grid_add	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1756, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1758,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1758
	mov	esi, OFFSET FLAT:.LC52	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 1	#,
	mov	r8d, 1	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+24], 0	#,
	mov	DWORD PTR [rsp+16], 0	#,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 1	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r14	#, gri
	call	Grid_add	#
	mov	r15d, 1	# ivtmp.163,
	mov	ebp, 0	# ivtmp.153,
.L25:
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1760, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1762,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1762
	mov	esi, OFFSET FLAT:.LC53	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	test	bp, bp	# ivtmp.153
	jne	.L23	#,
	mov	rax, QWORD PTR pdb[rip]	# pdb, pdb
	movzx	r9d, WORD PTR [rax+228]	# iftmp.101, pdb.98_733->actY
	jmp	.L24	#
.L23:
	mov	rax, QWORD PTR pdb[rip]	# pdb, pdb
	movzx	r9d, WORD PTR [rax+226]	# iftmp.101, pdb.98_736->actX
.L24:
	mov	rdi, QWORD PTR [rbx+352]	# lab_731->text_block.text, lab_731->text_block.text
	mov	r8d, OFFSET FLAT:.LC54	#,
	mov	rcx, -1	#,
	mov	edx, 1	#,
	mov	esi, 4	#,
	mov	eax, 0	#,
	call	__snprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 20	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1770,
	lea	r13, [rax+rcx*4]	# tmp1772,
	sal	r13, 4	# tmp1773,
	add	r13, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1775,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1775
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1777, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1779,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1779
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10203
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_change_strelem_size	# MEM[(struct Widget *)butimg_751].click_handler,
	lea	eax, [rbp+rbp]	# tmp1780,
	mov	DWORD PTR [r12+160], eax	# MEM[(struct Widget *)butimg_751].id, tmp1780
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1782, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1784,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1784
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10205
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_change_strelem_size	# MEM[(struct Widget *)butimg_760].click_handler,
	mov	DWORD PTR [r12+160], r15d	# MEM[(struct Widget *)butimg_760].id, ivtmp.163
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, r13	#, sliy2
	call	Widget_refresh	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1788,
	lea	r12, [rax+rcx*4]	# tmp1790,
	sal	r12, 4	# tmp1791,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1793,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1793
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, sliy2
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+24], 0	#,
	mov	DWORD PTR [rsp+16], 0	#,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, ebp	#, ivtmp.153
	mov	edx, 1	#,
	mov	rsi, r12	#, slix
	mov	rdi, r14	#, gri
	call	Grid_add	#
	add	ebp, 1	# ivtmp.153,
	add	r15d, 2	# ivtmp.163,
	cmp	ebp, 2	# ivtmp.153,
	jne	.L25	#,
	mov	rdi, r14	#, gri
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, gri
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1797,
	lea	rax, [rax+rcx*4]	# tmp1799,
	sal	rax, 4	# tmp1800,
	add	rax, QWORD PTR fm[rip]	# tmp1800, fm
	mov	QWORD PTR [rsp+168], rax	# %sfp, tmp1800
	add	edx, 1	# tmp1802,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1802
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1800
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 679	#,
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	Widget_setPosition	#
	mov	rdx, QWORD PTR [rsp+168]	#, %sfp
	mov	BYTE PTR [rdx+165], 1	# MEM[(struct Widget *)fmenu_777].draggable,
	mov	rsi, rdx	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC55	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_dilate_click	#,
	mov	edx, OFFSET FLAT:.LC56	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_erode_click	#,
	mov	edx, OFFSET FLAT:.LC57	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_morph_open_click	#,
	mov	edx, OFFSET FLAT:.LC58	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_morph_close_click	#,
	mov	edx, OFFSET FLAT:.LC59	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	edx, OFFSET FLAT:.LC60	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addLabelLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_dilate_click	#,
	mov	edx, OFFSET FLAT:.LC56	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_erode_click	#,
	mov	edx, OFFSET FLAT:.LC57	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_morph_open_click	#,
	mov	edx, OFFSET FLAT:.LC58	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_morph_close_click	#,
	mov	edx, OFFSET FLAT:.LC59	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1806,
	lea	rax, [rax+rcx*4]	# tmp1808,
	sal	rax, 4	# tmp1809,
	add	rax, QWORD PTR fm[rip]	# tmp1809, fm
	mov	QWORD PTR [rsp+184], rax	# %sfp, tmp1809
	add	edx, 1	# tmp1811,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1811
	mov	edx, 3	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1809
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 1309	#,
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+184]	#, %sfp
	mov	BYTE PTR [rax+165], 1	# MEM[(struct Widget *)fmenu_795].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC61	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_create_histograms_click	#,
	mov	edx, OFFSET FLAT:.LC42	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_histograms_equalize	#,
	mov	edx, OFFSET FLAT:.LC62	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	Widget_setVisible	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR image[rip]	# tmp1813, image
	add	rdx, 184	# tmp1813,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:colors	#,
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+184]	#, %sfp
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1821,
	lea	rax, [rax+rcx*4]	# tmp1823,
	sal	rax, 4	# tmp1824,
	add	rax, QWORD PTR fm[rip]	# tmp1824, fm
	mov	QWORD PTR [rsp+232], rax	# %sfp, tmp1824
	add	edx, 1	# tmp1826,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1826
	mov	edx, 3	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1824
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 984	#,
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	Widget_setPosition	#
	mov	rdx, QWORD PTR [rsp+232]	#, %sfp
	mov	BYTE PTR [rdx+165], 1	# MEM[(struct Widget *)fmenu_813].draggable,
	mov	rsi, rdx	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC63	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebx, ax	# c_button.85, c_button.85
	imul	rbx, rbx, 1816	# tmp1828, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1830,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1830
	mov	esi, OFFSET FLAT:.LC64	#,
	mov	rdi, rbx	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 221	#,
	mov	esi, 23	#,
	mov	rdi, rbx	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_reconstruction_marker_open	# MEM[(struct Widget *)but_822].click_handler,
	mov	rsi, QWORD PTR image[rip]	# tmp1831, image
	add	rsi, 368	# tmp1831,
	mov	edx, 2	#,
	mov	rdi, rbx	#, but
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbx	#, but
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 0	#,
	mov	r8d, 12	#,
	mov	ecx, 2	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, but
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1834, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1836,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1836
	mov	esi, OFFSET FLAT:.LC45	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# lab_832->text_block.text, lab_832->text_block.text
	movzx	r8d, WORD PTR reconst_limit[rip]	#, reconst_limit
	mov	ecx, OFFSET FLAT:.LC65	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 20	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1842,
	lea	r12, [rax+rcx*4]	# tmp1844,
	sal	r12, 4	# tmp1845,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1847,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1847
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbp, rbp, 1688	# tmp1849, c_buttonimage.64,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1851,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1851
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10210
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:reconst_limit	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_change_reconst_limit	# MEM[(struct Widget *)butimg_848].click_handler,
	mov	DWORD PTR [rbp+160], 1	# MEM[(struct Widget *)butimg_848].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbp, rbp, 1688	# tmp1853, c_buttonimage.64,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1855,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1855
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10211
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:reconst_limit	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_change_reconst_limit	# MEM[(struct Widget *)butimg_855].click_handler,
	mov	DWORD PTR [rbp+160], 0	# MEM[(struct Widget *)butimg_855].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, sliy2
	call	Widget_refresh	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1859,
	lea	rbp, [rax+rcx*4]	# tmp1861,
	sal	rbp, 4	# tmp1862,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1864,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1864
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, slix
	call	StackList_new	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 5	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, sliy2
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, slix
	call	Widget_refresh	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1868,
	lea	rbx, [rax+rcx*4]	# tmp1870,
	sal	rbx, 4	# tmp1871,
	add	rbx, QWORD PTR stacklist[rip]	# sliy, stacklist
	add	edx, 1	# tmp1873,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1873
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, sliy
	call	StackList_new	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	r12d, ax	# c_label.67, c_label.67
	imul	r12, r12, 408	# tmp1875, c_label.67,
	add	r12, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1877,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1877
	mov	esi, OFFSET FLAT:.LC66	#,
	mov	rdi, r12	#, lab
	call	Label_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 20	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, lab
	mov	rdi, rbx	#, sliy
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, slix
	mov	rdi, rbx	#, sliy
	call	StackList_addWidgetLast	#
	mov	rdi, rbx	#, sliy
	call	Widget_refresh	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1881,
	lea	rbp, [rax+rcx*4]	# tmp1883,
	sal	rbp, 4	# tmp1884,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1886,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1886
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, slix
	call	StackList_new	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, sliy
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebx, ax	# c_button.85, c_button.85
	imul	rbx, rbx, 1816	# tmp1888, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1890,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1890
	mov	esi, OFFSET FLAT:.LC67	#,
	mov	rdi, rbx	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 4	#,
	mov	r8d, 4	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 221	#,
	mov	esi, 23	#,
	mov	rdi, rbx	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_apply_reconstruction_filter	# MEM[(struct Widget *)but_887].click_handler,
	mov	edx, 3	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbx	#, but
	call	Widget_addVParam	#
	mov	rsi, QWORD PTR image[rip]	# tmp1891, image
	add	rsi, 368	# tmp1891,
	mov	edx, 3	#,
	mov	rdi, rbx	#, but
	call	Widget_addVParam	#
	mov	edx, 3	#,
	mov	esi, OFFSET FLAT:reconst_limit	#,
	mov	rdi, rbx	#, but
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 12	#,
	mov	ecx, 2	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, but
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 12	#,
	mov	ecx, 2	#,
	mov	edx, 4	#,
	mov	rsi, rbp	#, slix
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp1896,
	lea	rax, [rax+rcx*4]	# tmp1898,
	sal	rax, 4	# tmp1899,
	add	rax, QWORD PTR fm[rip]	# tmp1899, fm
	mov	QWORD PTR [rsp+176], rax	# %sfp, tmp1899
	add	edx, 1	# tmp1901,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp1901
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp1899
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 167	#,
	mov	esi, 1557	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+176]	#, %sfp
	mov	BYTE PTR [rax+165], 1	# MEM[(struct Widget *)fmenu_897].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC68	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1903, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1905,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1905
	mov	esi, OFFSET FLAT:.LC69	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# tmp1907, lab_906->text_block.text
	add	rdi, 7	# tmp1907,
	movzx	r8d, BYTE PTR rep_thr[rip]	#, rep_thr
	mov	ecx, OFFSET FLAT:.LC70	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 37	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_rep_col_change_threshold	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:rep_thr	#,
	mov	esi, OFFSET FLAT:button_rep_col_change_threshold	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1912, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1914,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1914
	mov	esi, OFFSET FLAT:.LC71	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	eax, DWORD PTR rep_cond[rip]	# rep_cond, rep_cond
	mov	rdi, QWORD PTR [rbx+352]	# tmp1918, lab_919->text_block.text
	add	rdi, 9	# tmp1918,
	mov	r8, QWORD PTR COND_SYM[0+rax*8]	#, COND_SYM
	mov	ecx, OFFSET FLAT:.LC72	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 20	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_rep_col_change_condition	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:rep_cond	#,
	mov	esi, OFFSET FLAT:button_rep_col_change_condition	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	r15d, WORD PTR c_label[rip]	# c_label.67, c_label
	lea	r14d, [r15-2]	# j,
	mov	r13d, OFFSET FLAT:click_handler+240	# ivtmp.149,
.L26:
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1925,
	lea	rbx, [rax+rcx*4]	# tmp1927,
	sal	rbx, 4	# tmp1928,
	add	rbx, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1930,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1930
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1934,
	lea	rbp, [rax+rcx*4]	# tmp1936,
	sal	rbp, 4	# tmp1937,
	add	rbp, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1939,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1939
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1941, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1943,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1943
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10217
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR [r13+0]	# D.10115, MEM[base: D.10450_1018, offset: 0B]
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_948].click_handler, D.10115
	mov	DWORD PTR [r12+160], 1	# MEM[(struct Widget *)butimg_948].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1688	# tmp1945, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1947,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1947
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10218
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR [r13+0]	# D.10115, MEM[base: D.10450_1018, offset: 0B]
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_957].click_handler, D.10115
	mov	DWORD PTR [r12+160], 0	# MEM[(struct Widget *)butimg_957].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, sliy2
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 7	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, sliy2
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	movzx	esi, r14w	# j, j
	imul	rsi, rsi, 408	# tmp1949, j,
	add	rsi, QWORD PTR label[rip]	# tmp1950, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbx	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 10	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 10	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, slix
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	add	r14d, 1	# j,
	add	r13, 8	# ivtmp.149,
	cmp	r14w, r15w	# j, c_label.67
	jne	.L26	#,
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1953, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1955,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1955
	mov	esi, OFFSET FLAT:.LC73	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 20	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	mov	DWORD PTR [rsp+8], 10	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 10	#,
	mov	r8d, 10	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, lab
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1959,
	lea	r14, [rax+rcx*4]	# tmp1961,
	sal	r14, 4	# tmp1962,
	add	r14, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp1964,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1964
	mov	edx, 6	#,
	mov	esi, 0	#,
	mov	rdi, r14	#, slix
	call	StackList_new	#
	mov	r13d, 0	# ivtmp.129,
.L27:
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 408	# tmp1966, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1968,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1968
	mov	esi, OFFSET FLAT:.LC53	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+352]	# lab_987->text_block.text, lab_987->text_block.text
	movzx	r8d, BYTE PTR rep_new[r13]	#, MEM[symbol: rep_new, index: ivtmp.129_1978, offset: 0B]
	mov	ecx, OFFSET FLAT:.LC70	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, lab
	call	Label_applyDefaultStyle	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp1975,
	lea	r12, [rax+rcx*4]	# tmp1977,
	sal	r12, 4	# tmp1978,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp1980,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp1980
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbp, rbp, 1688	# tmp1982, c_buttonimage.64,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1984,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1984
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10224
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	movsx	r15, r13d	# ivtmp.129, ivtmp.129
	add	r15, OFFSET FLAT:rep_new	# D.10225,
	mov	edx, 2	#,
	mov	rsi, r15	#, D.10225
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_rep_col_change_new_color	# MEM[(struct Widget *)butimg_1004].click_handler,
	mov	DWORD PTR [rbp+160], 1	# MEM[(struct Widget *)butimg_1004].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbp, rbp, 1688	# tmp1987, c_buttonimage.64,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1989,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1989
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10226
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, r15	#, D.10225
	mov	rdi, rbp	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_rep_col_change_new_color	# MEM[(struct Widget *)butimg_1013].click_handler,
	mov	DWORD PTR [rbp+160], 0	# MEM[(struct Widget *)butimg_1013].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, sliy2
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, sliy2
	mov	rdi, r14	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r14	#, slix
	call	StackList_addWidgetLast	#
	add	r13, 1	# ivtmp.129,
	cmp	r13, 3	# ivtmp.129,
	jne	.L27	#,
	mov	rdi, r14	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, slix
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebx, ax	# c_button.85, c_button.85
	imul	rbx, rbx, 1816	# tmp1991, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1993,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1993
	mov	esi, OFFSET FLAT:.LC74	#,
	mov	rdi, rbx	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 221	#,
	mov	esi, 23	#,
	mov	rdi, rbx	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_rep_col_apply	# MEM[(struct Widget *)but_1023].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, but
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1996, image
	add	rdx, 184	# tmp1996,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	edx, OFFSET FLAT:rep_cond	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:rep_thr	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:rep_new	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp2004,
	lea	rbx, [rax+rcx*4]	# tmp2006,
	sal	rbx, 4	# tmp2007,
	add	rbx, QWORD PTR fm[rip]	# fmenu, fm
	add	edx, 1	# tmp2009,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp2009
	mov	edx, 3	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, rbx	#, fmenu
	call	Container_setPadding	#
	mov	edx, 120	#,
	mov	esi, 870	#,
	mov	rdi, rbx	#, fmenu
	call	Widget_setPosition	#
	mov	BYTE PTR [rbx+165], 1	# MEM[(struct Widget *)fmenu_1038].draggable,
	mov	rsi, rbx	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC75	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_hsg[rip]	# c_hsg.106, c_hsg
	movzx	edx, ax	# c_hsg.106, c_hsg.106
	lea	rdx, [rdx+rdx*8]	# tmp2013,
	lea	rcx, [rdx+rdx*8]	# tmp2015,
	mov	rdx, QWORD PTR hsg[rip]	# hsg, hsg
	lea	rbp, [rdx+rcx*8]	# hs,
	add	eax, 1	# tmp2018,
	mov	WORD PTR c_hsg[rip], ax	# c_hsg, tmp2018
	mov	edx, 8	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, hs
	call	HistStretchGraph_new	#
	mov	rdi, rbp	#, hs
	call	Widget_refresh	#
	mov	edx, 2	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbp	#, hs
	call	Widget_addVParam	#
	mov	rsi, QWORD PTR image[rip]	# tmp2019, image
	add	rsi, 184	# tmp2019,
	mov	edx, 2	#,
	mov	rdi, rbp	#, hs
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hs
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	r13d, ax	# c_label.67, c_label.67
	imul	r13, r13, 408	# tmp2022, c_label.67,
	add	r13, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2024,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2024
	mov	esi, OFFSET FLAT:.LC76	#,
	mov	rdi, r13	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [r13+352]	# tmp2026, lab_1057->text_block.text
	add	rdi, 18	# tmp2026,
	movzx	r8d, WORD PTR [rbp+632]	#, hs_1047->size
	mov	ecx, OFFSET FLAT:.LC54	#,
	mov	rdx, -1	#,
	mov	esi, 1	#,
	mov	eax, 0	#,
	call	__sprintf_chk	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 2	#,
	mov	r8d, 10	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, r13	#, lab
	call	Label_applyDefaultStyle	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp2031,
	lea	r12, [rax+rcx*4]	# tmp2033,
	sal	r12, 4	# tmp2034,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	edx, 1	# tmp2036,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp2036
	mov	edx, 3	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	movzx	edx, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	eax, dx	# c_stacklist.82, c_stacklist.82
	lea	rcx, [rax+rax*2]	# tmp2040,
	lea	r15, [rax+rcx*4]	# tmp2042,
	sal	r15, 4	# tmp2043,
	add	r15, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	edx, 1	# tmp2045,
	mov	WORD PTR c_stacklist[rip], dx	# c_stacklist, tmp2045
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r15	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r14, r14, 1688	# tmp2047, c_buttonimage.64,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2049,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2049
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10234
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, r13	#, lab
	mov	rdi, r14	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r14	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r14+8], OFFSET FLAT:button_change_hist_stretch_nodes	# MEM[(struct Widget *)butimg_1080].click_handler,
	mov	DWORD PTR [r14+160], 1	# MEM[(struct Widget *)butimg_1080].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r15	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r14, r14, 1688	# tmp2051, c_buttonimage.64,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2053,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2053
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10235
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, r13	#, lab
	mov	rdi, r14	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r14	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r14+8], OFFSET FLAT:button_change_hist_stretch_nodes	# MEM[(struct Widget *)butimg_1087].click_handler,
	mov	DWORD PTR [r14+160], 0	# MEM[(struct Widget *)butimg_1087].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r15	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rdi, r15	#, sliy2
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, r15	#, sliy2
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+8], 50	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, lab
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	r13d, ax	# c_button.85, c_button.85
	imul	r13, r13, 1816	# tmp2055, c_button.85,
	add	r13, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp2057,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp2057
	mov	esi, OFFSET FLAT:.LC74	#,
	mov	rdi, r13	#, but
	call	Button_new	#
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	rcx, QWORD PTR font2[rip]	#, font2
	mov	edx, 221	#,
	mov	esi, 23	#,
	mov	rdi, r13	#, but
	call	Button_applyDefaultStyle	#
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_hist_stretch_apply	# MEM[(struct Widget *)but_1094].click_handler,
	mov	edx, 1	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r13	#, but
	call	Widget_addVParam	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, but
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, slix
	call	Widget_refresh	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, slix
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addWidgetLast	#
	mov	rdi, rbx	#, fmenu
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, fmenu
	call	Widget_setVisible	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp2061,
	lea	r12, [rax+rcx*4]	# tmp2063,
	sal	r12, 4	# tmp2064,
	add	r12, QWORD PTR fm[rip]	# fmenu, fm
	add	edx, 1	# tmp2066,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp2066
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, r12	#, fmenu
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 1220	#,
	mov	rdi, r12	#, fmenu
	call	Widget_setPosition	#
	mov	BYTE PTR [r12+165], 1	# MEM[(struct Widget *)fmenu_1101].draggable,
	mov	rsi, r12	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC77	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC78	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC79	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 2	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC80	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 3	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC81	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 4	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC82	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	rdi, r12	#, fmenu
	call	Widget_refresh	#
	mov	esi, 0	#,
	mov	rdi, r12	#, fmenu
	call	Widget_setVisible	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_generic_filter_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp2069, image
	add	rdx, 184	# tmp2069,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_generic_filter_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	edx, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	eax, dx	# c_fm.74, c_fm.74
	lea	rcx, [rax+rax*2]	# tmp2074,
	lea	rbp, [rax+rcx*4]	# tmp2076,
	sal	rbp, 4	# tmp2077,
	add	rbp, QWORD PTR fm[rip]	# fmenu, fm
	add	edx, 1	# tmp2079,
	mov	WORD PTR c_fm[rip], dx	# c_fm, tmp2079
	mov	edx, 16	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, rbp	#, fmenu
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 435	#,
	mov	rdi, rbp	#, fmenu
	call	Widget_setPosition	#
	mov	BYTE PTR [rbp+165], 1	# MEM[(struct Widget *)fmenu_1120].draggable,
	mov	rsi, rbp	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC83	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC84	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L28	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+192]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L28:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L29	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+200]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L29:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L30	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+208]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L30:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC44	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L31	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+224]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L31:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC50	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L32	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+216]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L32:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC55	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L33	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+168]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L33:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC61	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L34	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+184]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L34:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC63	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L35	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+232]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L35:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC68	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L36	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+176]	#, %sfp
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L36:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC75	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L37	#,
	mov	edx, 1	#,
	mov	rsi, rbx	#, fmenu
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L37:
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC77	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L38	#,
	mov	edx, 1	#,
	mov	rsi, r12	#, fmenu
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L38:
	mov	rdi, rbp	#, fmenu
	call	Widget_refresh	#
	movzx	r9d, WORD PTR c_button[rip]	# c_button, c_button
	movzx	ecx, WORD PTR c_image[rip]	# c_image, c_image
	mov	DWORD PTR [rsp+144], 2	#,
	movzx	eax, WORD PTR c_grid[rip]	# c_grid, c_grid
	mov	DWORD PTR [rsp+136], eax	#, c_grid
	mov	DWORD PTR [rsp+128], 20	#,
	movzx	eax, WORD PTR c_fm[rip]	# c_fm, c_fm
	mov	DWORD PTR [rsp+120], eax	#, c_fm
	mov	DWORD PTR [rsp+112], 60	#,
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist, c_stacklist
	mov	DWORD PTR [rsp+104], eax	#, c_stacklist
	mov	DWORD PTR [rsp+96], 3	#,
	movzx	eax, WORD PTR c_histogram[rip]	# c_histogram, c_histogram
	mov	DWORD PTR [rsp+88], eax	#, c_histogram
	mov	DWORD PTR [rsp+80], 0	#,
	movzx	eax, WORD PTR c_rectangle[rip]	# c_rectangle, c_rectangle
	mov	DWORD PTR [rsp+72], eax	#, c_rectangle
	mov	DWORD PTR [rsp+64], 54	#,
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage, c_buttonimage
	mov	DWORD PTR [rsp+56], eax	#, c_buttonimage
	mov	DWORD PTR [rsp+48], 0	#,
	movzx	eax, WORD PTR c_labelimage[rip]	# c_labelimage, c_labelimage
	mov	DWORD PTR [rsp+40], eax	#, c_labelimage
	mov	DWORD PTR [rsp+32], 31	#,
	movzx	eax, WORD PTR c_label[rip]	# c_label, c_label
	mov	DWORD PTR [rsp+24], eax	#, c_label
	mov	DWORD PTR [rsp+16], 0	#,
	movzx	eax, WORD PTR c_textblock[rip]	# c_textblock, c_textblock
	mov	DWORD PTR [rsp+8], eax	#, c_textblock
	mov	DWORD PTR [rsp], 58	#,
	mov	r8d, 3	#,
	mov	edx, OFFSET FLAT:.LC85	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR is_inited[rip], 1	# is_inited,
	mov	eax, 0	# D.10042,
.L7:
	add	rsp, 264	#,
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
.LFE94:
	.size	GraphicsMain_createInterface, .-GraphicsMain_createInterface
	.section	.rodata.str1.8
	.align 8
.LC86:
	.string	"GraphicsMain_Initialize: Screen_new failed with error %s\n"
	.align 8
.LC87:
	.string	"GraphicsMain_Initialize:GraphicsMain failed\n"
	.text
	.globl	GraphicsMain_Initialize
	.type	GraphicsMain_Initialize, @function
GraphicsMain_Initialize:
.LFB95:
	.cfi_startproc
	mov	eax, 0	# D.10006,
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L58	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [rsp+12], 0	# e,
	mov	rax, QWORD PTR Screen_class[rip]	# Screen_class, Screen_class
	mov	rdi, QWORD PTR [rax+8]	# Screen_class.36_4->size, Screen_class.36_4->size
	mov	edx, 1345	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wmalloc	#
	mov	edx, 0	#,
	lea	rsi, [rsp+12]	#,
	mov	rdi, rax	#, D.10009
	call	Screen_new	#
	mov	QWORD PTR sc[rip], rax	# sc, sc.37
	mov	edi, DWORD PTR [rsp+12]	# e.38, e
	test	edi, edi	# e.38
	je	.L53	#,
	call	perr_getName	#
	mov	rcx, rax	#, D.10014
	mov	edx, OFFSET FLAT:.LC86	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 1348	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.10017
	call	wfree	#
	mov	eax, 1	# D.10006,
	jmp	.L52	#
.L53:
	mov	edx, 34	#,
	mov	esi, OFFSET FLAT:click_handler	#,
	mov	rdi, rax	#, sc.37
	call	Screen_CallbackCreate	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	mov	QWORD PTR [rax+96], OFFSET FLAT:gdragon_toogle	# sc.40_17->toogle_drag_on,
	mov	ecx, 1355	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip], rax	# colors, D.10019
	mov	ecx, 1356	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip+8], rax	# colors, D.10020
	mov	ecx, 1357	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip+16], rax	# colors, D.10021
	mov	eax, 4294967295	#,
	mov	QWORD PTR t[rip], rax	# t,
	mov	eax, 0	#,
	call	GraphicsMain_createInterface	#
	mov	edx, eax	# D.10022,
	mov	eax, 0	# D.10006,
	test	edx, edx	# D.10022
	je	.L52	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 44	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC87	#,
	call	fwrite	#
	mov	eax, 1	# D.10006,
.L52:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
.L58:
	rep
	ret
	.cfi_endproc
.LFE95:
	.size	GraphicsMain_Initialize, .-GraphicsMain_Initialize
	.section	.rodata.str1.8
	.align 8
.LC88:
	.string	"GraphicsMain_Main:GraphicsMain SubProgram NOT initialized\n"
	.text
	.globl	GraphicsMain_Main
	.type	GraphicsMain_Main, @function
GraphicsMain_Main:
.LFB96:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L60	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 58	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC88	#,
	call	fwrite	#
	mov	eax, 1	# D.9998,
	jmp	.L61	#
.L60:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_MainStart	#
	mov	eax, 0	# D.9998,
.L61:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE96:
	.size	GraphicsMain_Main, .-GraphicsMain_Main
	.globl	GraphicsMain_Destroy
	.type	GraphicsMain_Destroy, @function
GraphicsMain_Destroy:
.LFB97:
	.cfi_startproc
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	je	.L127	#,
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rdi, QWORD PTR sc[rip]	# sc.1, sc
	test	rdi, rdi	# sc.1
	je	.L65	#,
	call	delete	#
	mov	edx, 1385	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.9894
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L65:
	mov	rdi, QWORD PTR background[rip]	# background.2, background
	test	rdi, rdi	# background.2
	je	.L66	#,
	call	delete	#
	mov	edx, 1386	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.9898
	call	wfree	#
.L66:
	cmp	QWORD PTR image[rip], 0	# image,
	je	.L67	#,
	cmp	WORD PTR c_image[rip], 0	# c_image,
	je	.L68	#,
	mov	ebx, 0	# i,
.L69:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp215, i,
	add	rdi, QWORD PTR image[rip]	# tmp216, image
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_image[rip], bx	# c_image, i
	ja	.L69	#,
.L68:
	mov	edx, 1388	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR image[rip]	#, image
	call	wfree	#
	mov	QWORD PTR image[rip], 0	# image,
	mov	WORD PTR c_image[rip], 0	# c_image,
.L67:
	cmp	QWORD PTR text_block[rip], 0	# text_block,
	je	.L70	#,
	cmp	WORD PTR c_textblock[rip], 0	# c_textblock,
	je	.L71	#,
	mov	ebx, 0	# i,
.L72:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp221,
	lea	rdi, [rax+rdx*4]	# tmp223,
	sal	rdi, 4	# tmp224,
	add	rdi, QWORD PTR text_block[rip]	# tmp225, text_block
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_textblock[rip], bx	# c_textblock, i
	ja	.L72	#,
.L71:
	mov	edx, 1389	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR text_block[rip]	#, text_block
	call	wfree	#
	mov	QWORD PTR text_block[rip], 0	# text_block,
	mov	WORD PTR c_textblock[rip], 0	# c_textblock,
.L70:
	cmp	QWORD PTR button[rip], 0	# button,
	je	.L73	#,
	cmp	WORD PTR c_button[rip], 0	# c_button,
	je	.L74	#,
	mov	ebx, 0	# i,
.L75:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 1816	# tmp228, i,
	add	rdi, QWORD PTR button[rip]	# tmp229, button
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_button[rip], bx	# c_button, i
	ja	.L75	#,
.L74:
	mov	edx, 1390	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR button[rip]	#, button
	call	wfree	#
	mov	QWORD PTR button[rip], 0	# button,
	mov	WORD PTR c_button[rip], 0	# c_button,
.L73:
	cmp	QWORD PTR label[rip], 0	# label,
	je	.L76	#,
	cmp	WORD PTR c_label[rip], 0	# c_label,
	je	.L77	#,
	mov	ebx, 0	# i,
.L78:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 408	# tmp232, i,
	add	rdi, QWORD PTR label[rip]	# tmp233, label
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_label[rip], bx	# c_label, i
	ja	.L78	#,
.L77:
	mov	edx, 1391	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR label[rip]	#, label
	call	wfree	#
	mov	QWORD PTR label[rip], 0	# label,
	mov	WORD PTR c_label[rip], 0	# c_label,
.L76:
	cmp	QWORD PTR labelimage[rip], 0	# labelimage,
	je	.L79	#,
	cmp	WORD PTR c_labelimage[rip], 0	# c_labelimage,
	je	.L80	#,
	mov	ebx, 0	# i,
.L81:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 376	# tmp236, i,
	add	rdi, QWORD PTR labelimage[rip]	# tmp237, labelimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_labelimage[rip], bx	# c_labelimage, i
	ja	.L81	#,
.L80:
	mov	edx, 1392	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR labelimage[rip]	#, labelimage
	call	wfree	#
	mov	QWORD PTR labelimage[rip], 0	# labelimage,
	mov	WORD PTR c_labelimage[rip], 0	# c_labelimage,
.L79:
	cmp	QWORD PTR buttonimage[rip], 0	# buttonimage,
	je	.L82	#,
	cmp	WORD PTR c_buttonimage[rip], 0	# c_buttonimage,
	je	.L83	#,
	mov	ebx, 0	# i,
.L84:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 1688	# tmp240, i,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp241, buttonimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_buttonimage[rip], bx	# c_buttonimage, i
	ja	.L84	#,
.L83:
	mov	edx, 1393	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR buttonimage[rip]	#, buttonimage
	call	wfree	#
	mov	QWORD PTR buttonimage[rip], 0	# buttonimage,
	mov	WORD PTR c_buttonimage[rip], 0	# c_buttonimage,
.L82:
	cmp	QWORD PTR rectangle[rip], 0	# rectangle,
	je	.L85	#,
	cmp	WORD PTR c_rectangle[rip], 0	# c_rectangle,
	je	.L86	#,
	mov	ebx, 0	# i,
.L87:
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp244, i,
	add	rdi, QWORD PTR rectangle[rip]	# tmp245, rectangle
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_rectangle[rip], bx	# c_rectangle, i
	ja	.L87	#,
.L86:
	mov	edx, 1394	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR rectangle[rip]	#, rectangle
	call	wfree	#
	mov	QWORD PTR rectangle[rip], 0	# rectangle,
	mov	WORD PTR c_rectangle[rip], 0	# c_rectangle,
.L85:
	cmp	QWORD PTR histogram[rip], 0	# histogram,
	je	.L88	#,
	cmp	WORD PTR c_histogram[rip], 0	# c_histogram,
	je	.L89	#,
	mov	ebx, 0	# i,
.L90:
	movzx	eax, bx	# i, i
	lea	rax, [rax+rax*4]	# tmp250,
	lea	rdx, [rax+rax*4]	# tmp252,
	mov	rax, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rdi, [rax+rdx*8]	# tmp254,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_histogram[rip], bx	# c_histogram, i
	ja	.L90	#,
.L89:
	mov	edx, 1395	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR histogram[rip]	#, histogram
	call	wfree	#
	mov	QWORD PTR histogram[rip], 0	# histogram,
	mov	WORD PTR c_histogram[rip], 0	# c_histogram,
.L88:
	cmp	QWORD PTR pdb[rip], 0	# pdb,
	je	.L91	#,
	cmp	WORD PTR c_pdb[rip], 0	# c_pdb,
	je	.L92	#,
	mov	ebx, 0	# i,
.L93:
	movzx	edi, bx	# i, i
	mov	rax, rdi	# tmp258, i
	sal	rax, 4	# tmp258,
	sal	rdi, 8	# tmp259,
	sub	rdi, rax	# tmp260, tmp258
	add	rdi, QWORD PTR pdb[rip]	# tmp261, pdb
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_pdb[rip], bx	# c_pdb, i
	ja	.L93	#,
.L92:
	mov	edx, 1396	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR pdb[rip]	#, pdb
	call	wfree	#
	mov	QWORD PTR pdb[rip], 0	# pdb,
	mov	WORD PTR c_pdb[rip], 0	# c_pdb,
.L91:
	cmp	QWORD PTR hsg[rip], 0	# hsg,
	je	.L94	#,
	cmp	WORD PTR c_hsg[rip], 0	# c_hsg,
	je	.L95	#,
	mov	ebx, 0	# i,
.L96:
	movzx	eax, bx	# i, i
	lea	rax, [rax+rax*8]	# tmp266,
	lea	rdx, [rax+rax*8]	# tmp268,
	mov	rax, QWORD PTR hsg[rip]	# hsg, hsg
	lea	rdi, [rax+rdx*8]	# tmp270,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_hsg[rip], bx	# c_hsg, i
	ja	.L96	#,
.L95:
	mov	edx, 1397	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR hsg[rip]	#, hsg
	call	wfree	#
	mov	QWORD PTR hsg[rip], 0	# hsg,
	mov	WORD PTR c_hsg[rip], 0	# c_hsg,
.L94:
	cmp	QWORD PTR stacklist[rip], 0	# stacklist,
	je	.L97	#,
	cmp	WORD PTR c_stacklist[rip], 0	# c_stacklist,
	je	.L98	#,
	mov	ebx, 0	# i,
.L99:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp275,
	lea	rdi, [rax+rdx*4]	# tmp277,
	sal	rdi, 4	# tmp278,
	add	rdi, QWORD PTR stacklist[rip]	# tmp279, stacklist
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_stacklist[rip], bx	# c_stacklist, i
	ja	.L99	#,
.L98:
	mov	edx, 1398	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR stacklist[rip]	#, stacklist
	call	wfree	#
	mov	QWORD PTR stacklist[rip], 0	# stacklist,
	mov	WORD PTR c_stacklist[rip], 0	# c_stacklist,
.L97:
	cmp	QWORD PTR fm[rip], 0	# fm,
	je	.L100	#,
	cmp	WORD PTR c_fm[rip], 0	# c_fm,
	je	.L101	#,
	mov	ebx, 0	# i,
.L102:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp284,
	lea	rdi, [rax+rdx*4]	# tmp286,
	sal	rdi, 4	# tmp287,
	add	rdi, QWORD PTR fm[rip]	# tmp288, fm
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_fm[rip], bx	# c_fm, i
	ja	.L102	#,
.L101:
	mov	edx, 1399	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR fm[rip]	#, fm
	call	wfree	#
	mov	QWORD PTR fm[rip], 0	# fm,
	mov	WORD PTR c_fm[rip], 0	# c_fm,
.L100:
	cmp	QWORD PTR grid[rip], 0	# grid,
	je	.L103	#,
	cmp	WORD PTR c_grid[rip], 0	# c_grid,
	je	.L104	#,
	mov	ebx, 0	# i,
.L105:
	movzx	eax, bx	# i, i
	lea	rax, [rax+rax*2]	# tmp293,
	lea	rdx, [rax+rax*8]	# tmp295,
	mov	rax, QWORD PTR grid[rip]	# grid, grid
	lea	rdi, [rax+rdx*8]	# tmp297,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_grid[rip], bx	# c_grid, i
	ja	.L105	#,
.L104:
	mov	edx, 1400	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR grid[rip]	#, grid
	call	wfree	#
	mov	QWORD PTR grid[rip], 0	# grid,
	mov	WORD PTR c_grid[rip], 0	# c_grid,
.L103:
	mov	rdi, QWORD PTR gtsf[rip]	# gtsf.29, gtsf
	test	rdi, rdi	# gtsf.29
	je	.L106	#,
	call	delete	#
	mov	edx, 1401	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR gtsf[rip]	#, gtsf
	call	wfree	#
	mov	QWORD PTR gtsf[rip], 0	# gtsf,
.L106:
	mov	rdi, QWORD PTR font2[rip]	# font2.30, font2
	test	rdi, rdi	# font2.30
	je	.L107	#,
	mov	edx, 1403	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font2[rip], 0	# font2,
.L107:
	mov	rdi, QWORD PTR font4[rip]	# font4.31, font4
	test	rdi, rdi	# font4.31
	je	.L108	#,
	mov	edx, 1404	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font4[rip], 0	# font4,
.L108:
	mov	rdi, QWORD PTR colors[rip]	# D.9984, colors
	test	rdi, rdi	# D.9984
	je	.L109	#,
	mov	edx, 1406	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR colors[rip], 0	# colors,
.L109:
	mov	rdi, QWORD PTR colors[rip+8]	# D.9987, colors
	test	rdi, rdi	# D.9987
	je	.L110	#,
	mov	edx, 1407	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR colors[rip+8], 0	# colors,
.L110:
	mov	rdi, QWORD PTR colors[rip+16]	# D.9990, colors
	test	rdi, rdi	# D.9990
	je	.L111	#,
	mov	edx, 1408	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR colors[rip+16], 0	# colors,
.L111:
	mov	BYTE PTR is_inited[rip], 0	# is_inited,
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L127:
	rep
	ret
	.cfi_endproc
.LFE97:
	.size	GraphicsMain_Destroy, .-GraphicsMain_Destroy
	.local	label
	.comm	label,8,8
	.local	image
	.comm	image,8,8
	.local	text_block
	.comm	text_block,8,8
	.local	button
	.comm	button,8,8
	.local	labelimage
	.comm	labelimage,8,8
	.local	buttonimage
	.comm	buttonimage,8,8
	.local	rectangle
	.comm	rectangle,8,8
	.local	histogram
	.comm	histogram,8,8
	.local	pdb
	.comm	pdb,8,8
	.local	hsg
	.comm	hsg,8,8
	.local	stacklist
	.comm	stacklist,8,8
	.local	grid
	.comm	grid,8,8
	.local	fm
	.comm	fm,8,8
	.local	font2
	.comm	font2,8,8
	.local	background
	.comm	background,8,8
	.local	sc
	.comm	sc,8,8
	.local	font4
	.comm	font4,8,8
	.local	gtsf
	.comm	gtsf,8,8
	.local	c_buttonimage
	.comm	c_buttonimage,2,2
	.local	c_label
	.comm	c_label,2,2
	.local	c_image
	.comm	c_image,2,2
	.local	c_fm
	.comm	c_fm,2,2
	.data
	.align 8
	.type	t, @object
	.size	t, 8
t:
	.quad	4294967295
	.local	img_off
	.comm	img_off,2,2
	.align 4
	.type	img_mul, @object
	.size	img_mul, 4
img_mul:
	.long	1065353216
	.local	img_overflow
	.comm	img_overflow,1,1
	.local	c_stacklist
	.comm	c_stacklist,2,2
	.align 32
	.type	click_handler, @object
	.size	click_handler, 272
click_handler:
	.quad	0
	.quad	button_imgsrc_open
	.quad	button_src_restore
	.quad	button_src_to_dest
	.quad	button_brightness_change
	.quad	button_contrast_change
	.quad	button_overflow_change
	.quad	button_bin_algo_toggle
	.quad	button_used_hist_toggle
	.quad	button_threshold_change
	.quad	button_change_filter_weight
	.quad	button_change_filter_predef
	.quad	button_brightness_reset
	.quad	button_dest_to_src
	.quad	button_src_save
	.quad	button_dest_save
	.quad	button_destaturize_std
	.quad	button_create_histograms_click
	.quad	button_bin_create_histograms
	.quad	button_threshold_apply
	.quad	button_dest_negative
	.quad	button_dest_splotfilter
	.quad	button_view_click
	.quad	button_change_strelem_size
	.quad	button_dilate_click
	.quad	button_erode_click
	.quad	button_morph_open_click
	.quad	button_morph_close_click
	.quad	button_histograms_equalize
	.quad	button_change_reconst_limit
	.quad	button_rep_col_change_threshold
	.quad	button_rep_col_change_condition
	.quad	button_rep_col_apply
	.quad	button_generic_filter_apply
	.local	c_button
	.comm	c_button,2,2
	.local	c_histogram
	.comm	c_histogram,2,2
	.type	t_algo, @object
	.size	t_algo, 1
t_algo:
	.byte	1
	.local	num_hist
	.comm	num_hist,1,1
	.section	.rodata.str1.1
.LC89:
	.string	"red"
.LC90:
	.string	"green"
.LC91:
	.string	"blue"
	.data
	.align 16
	.type	HIST_NAMES, @object
	.size	HIST_NAMES, 24
HIST_NAMES:
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.local	colors
	.comm	colors,24,16
	.local	c_grid
	.comm	c_grid,2,2
	.local	c_pdb
	.comm	c_pdb,2,2
	.align 2
	.type	reconst_limit, @object
	.size	reconst_limit, 2
reconst_limit:
	.value	100
	.type	rep_thr, @object
	.size	rep_thr, 1
rep_thr:
	.byte	20
	.local	rep_cond
	.comm	rep_cond,4,4
	.type	rep_new, @object
	.size	rep_new, 3
rep_new:
	.byte	-1
	.byte	-1
	.byte	-1
	.local	c_hsg
	.comm	c_hsg,2,2
	.local	c_rectangle
	.comm	c_rectangle,2,2
	.local	c_labelimage
	.comm	c_labelimage,2,2
	.local	c_textblock
	.comm	c_textblock,2,2
	.local	is_inited
	.comm	is_inited,1,1
	.ident	"GCC: (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
