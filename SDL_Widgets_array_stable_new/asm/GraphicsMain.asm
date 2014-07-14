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
# -I /home/darek/Dropbox/e/KCK/SDL_Widgets/v2.0/CObject_2/include
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
.LFB107:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# screen, screen
	cmp	BYTE PTR [rdi+172], 0	# screen_2(D)->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp80,
	mov	edx, OFFSET FLAT:.LC1	# tmp79,
	cmovne	rdx, rax	# tmp79,, iftmp.111, tmp80
	mov	rax, QWORD PTR label[rip]	# label, label
	mov	rax, QWORD PTR [rax+336]	# label.112_6->text_block.text, label.112_6->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp73,* iftmp.111
	mov	QWORD PTR [rax+15], rcx	#, tmp73
	mov	edx, DWORD PTR [rdx+8]	# tmp74,
	mov	DWORD PTR [rax+23], edx	#, tmp74
	mov	rdi, QWORD PTR label[rip]	# label.112, label
	mov	rax, QWORD PTR [rdi]	# MEM[(struct coObject *)label.112_9].class, MEM[(struct coObject *)label.112_9].class
	mov	rax, QWORD PTR [rax+16]	# D.10947_10->vtable, D.10947_10->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10948_11 + 8B], MEM[(const void * *)D.10948_11 + 8B]
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10950_13].refresh
	mov	BYTE PTR [rbx+173], 1	# screen_2(D)->need_reload,
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE107:
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
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"%s: Creating PixelDrawBox @ %p [%s]\n"
	.section	.rodata.str1.1
.LC52:
	.string	"Wierszy:"
.LC53:
	.string	"Kolumn:"
.LC54:
	.string	"    "
.LC55:
	.string	"%3hu"
.LC56:
	.string	"Operacje morfologiczne"
.LC57:
	.string	"Dylatacja"
.LC58:
	.string	"Erozja"
.LC59:
	.string	"Otwarcie"
.LC60:
	.string	"Zamkni\304\231cie"
.LC61:
	.string	"Geodezyjne:"
.LC62:
	.string	"Wyr\303\263wnanie histogramu"
.LC63:
	.string	"Wyr\303\263wnanie"
.LC64:
	.string	"Rekonstrukcja"
.LC65:
	.string	"Otw\303\263rz marker"
.LC66:
	.string	"%5hu"
.LC67:
	.string	"Limit iteracji:"
.LC68:
	.string	"Wykonaj"
.LC69:
	.string	"Zamiana kolor\303\263w"
.LC70:
	.string	"Pr\303\263g:     "
.LC71:
	.string	"%3d"
.LC72:
	.string	"Warunek:      "
.LC73:
	.string	"`%2s`"
.LC74:
	.string	"Nowy kolor"
.LC75:
	.string	"Zastosuj"
.LC76:
	.string	"Rozci\304\205ganie histogramu"
.LC77:
	.string	"Liczba w\304\231z\305\202\303\263w:    "
.LC78:
	.string	"Filtry"
.LC79:
	.string	"Medianowy"
.LC80:
	.string	"\305\232rednia"
.LC81:
	.string	"Minimum"
.LC82:
	.string	"Maksimum"
.LC83:
	.string	"Maks-Min"
.LC84:
	.string	"Widok"
.LC85:
	.string	"Jasno\305\233\304\207/kontrast"
	.section	.rodata.str1.8
	.align 8
.LC86:
	.string	"GraphicsMain - count of widget:\n\tImages %hu/%d\n\tButtons %hu/%d\n\tTextBlocks %hu/%d\n\tLabels %hu/%d\n\tLabelImages %hu/%d\n\tButtonImages %hu/%d\n\tRectangles %hu/%d\n\tHistograms %hu/%d\n\tStackList %hu/%d\n\tFloatingMenus %hu/%d\n\tGrids %hu/%d\n"
	.text
	.globl	GraphicsMain_createInterface
	.type	GraphicsMain_createInterface, @function
GraphicsMain_createInterface:
.LFB108:
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
	mov	edi, 528	#,
	call	wmalloc	#
	mov	QWORD PTR image[rip], rax	# image, image.42
	mov	QWORD PTR text_block[rip], 0	# text_block,
	mov	edx, 152	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 101152	#,
	call	wmalloc	#
	mov	QWORD PTR button[rip], rax	# button, button.43
	mov	edx, 153	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 12152	#,
	call	wmalloc	#
	mov	QWORD PTR label[rip], rax	# label, label.44
	mov	QWORD PTR labelimage[rip], 0	# labelimage,
	mov	edx, 155	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 87264	#,
	call	wmalloc	#
	mov	QWORD PTR buttonimage[rip], rax	# buttonimage, buttonimage.45
	mov	QWORD PTR rectangle[rip], 0	# rectangle,
	mov	edx, 157	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 576	#,
	call	wmalloc	#
	mov	QWORD PTR histogram[rip], rax	# histogram, histogram.46
	mov	edx, 158	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 232	#,
	call	wmalloc	#
	mov	QWORD PTR pdb[rip], rax	# pdb, pdb.47
	mov	edx, 159	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 624	#,
	call	wmalloc	#
	mov	QWORD PTR hsg[rip], rax	# hsg, hsg.48
	mov	edx, 160	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 12000	#,
	call	wmalloc	#
	mov	QWORD PTR stacklist[rip], rax	# stacklist, stacklist.49
	mov	edx, 161	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 416	#,
	call	wmalloc	#
	mov	QWORD PTR grid[rip], rax	# grid, grid.50
	mov	edx, 162	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	edi, 4000	#,
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
	mov	eax, 1	# D.10651,
	jmp	.L7	#
.L6:
	mov	rdi, rax	#, font2.52
	call	TTF_FontHeight	#
	mov	ecx, eax	#, D.10652
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	edx, 171	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rax, QWORD PTR Image_class[rip]	# Image_class, Image_class
	mov	rdi, QWORD PTR [rax]	#, Image_class.55_40->size
	call	wmalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	rdi, rax	#, D.10655
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
	mov	eax, 1	# D.10651,
	jmp	.L7	#
.L8:
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	edx, 196	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rax, QWORD PTR GToolsSplotFilter_class[rip]	# GToolsSplotFilter_class, GToolsSplotFilter_class
	mov	rdi, QWORD PTR [rax]	#, GToolsSplotFilter_class.61_50->size
	call	wmalloc	#
	mov	rdi, rax	#, D.10665
	call	GToolsSplotFilter_new	#
	mov	QWORD PTR gtsf[rip], rax	# gtsf, gtsf.62
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbx, rbx, 1616	# tmp1468, c_buttonimage.64,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1470,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1470
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
	movzx	ebp, WORD PTR [rbx+98]	# D.10674, MEM[(struct Widget *)butimg_58].pos.y
	mov	eax, 0	#,
	call	Screen_getWidth	#
	sub	ax, WORD PTR [rbx+100]	# tmp1471, MEM[(struct Widget *)butimg_58].pos.w
	lea	esi, [rax-50]	# tmp1473,
	movzx	esi, si	# tmp1474, tmp1473
	mov	edx, ebp	#, D.10674
	mov	rdi, rbx	#, butimg
	call	Widget_setPosition	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:Screen_buttonExitClicked	# MEM[(struct Widget *)butimg_58].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 392	# tmp1476, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1478,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1478
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	cmp	BYTE PTR [rax+172], 0	# sc.58_75->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp2525,
	mov	edx, OFFSET FLAT:.LC1	# tmp2524,
	cmovne	rdx, rax	# tmp2524,, iftmp.69, tmp2525
	mov	rax, QWORD PTR [rbx+336]	# lab_73->text_block.text, lab_73->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp1482,* iftmp.69
	mov	QWORD PTR [rax+15], rcx	#, tmp1482
	mov	edx, DWORD PTR [rdx+8]	# tmp1483,
	mov	DWORD PTR [rax+23], edx	#, tmp1483
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
	movzx	edx, WORD PTR c_image[rip]	# c_image.71, c_image
	movzx	eax, dx	# c_image.71, c_image.71
	lea	rcx, [rax+rax*4]	# tmp1487,
	lea	rbp, [rax+rcx*2]	# tmp1489,
	sal	rbp, 4	# tmp1490,
	add	rbp, QWORD PTR image[rip]	# img, image
	add	edx, 1	# tmp1492,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp1492
	mov	ecx, 546	#,
	mov	edx, 159	#,
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbp	#, img
	call	Image_new	#
	mov	BYTE PTR [rbp+157], 1	# MEM[(struct Widget *)img_87].draggable,
	mov	DWORD PTR [rbp+152], 0	# MEM[(struct Widget *)img_87].id,
	mov	rsi, rbp	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_image[rip]	# c_image.71, c_image
	movzx	eax, dx	# c_image.71, c_image.71
	lea	rcx, [rax+rax*4]	# tmp1496,
	lea	rbx, [rax+rcx*2]	# tmp1498,
	sal	rbx, 4	# tmp1499,
	add	rbx, QWORD PTR image[rip]	# img, image
	add	edx, 1	# tmp1501,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp1501
	movzx	ecx, WORD PTR [rbp+98]	# MEM[(struct Widget *)img_87].pos.y, MEM[(struct Widget *)img_87].pos.y
	movzx	edx, WORD PTR [rbp+144]	# MEM[(struct Widget *)img_87].maxx, MEM[(struct Widget *)img_87].maxx
	add	edx, 10	# tmp1503,
	movzx	edx, dx	# tmp1505, tmp1503
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbx	#, img
	call	Image_new	#
	mov	BYTE PTR [rbx+157], 1	# MEM[(struct Widget *)img_95].draggable,
	mov	DWORD PTR [rbx+152], 1	# MEM[(struct Widget *)img_95].id,
	mov	rsi, rbx	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_image[rip]	# c_image.71, c_image
	movzx	eax, dx	# c_image.71, c_image.71
	lea	rcx, [rax+rax*4]	# tmp1509,
	lea	rbp, [rax+rcx*2]	# tmp1511,
	sal	rbp, 4	# tmp1512,
	add	rbp, QWORD PTR image[rip]	# img, image
	add	edx, 1	# tmp1514,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp1514
	movzx	ecx, WORD PTR [rbx+98]	# MEM[(struct Widget *)img_95].pos.y, MEM[(struct Widget *)img_95].pos.y
	movzx	edx, WORD PTR [rbx+144]	# MEM[(struct Widget *)img_95].maxx, MEM[(struct Widget *)img_95].maxx
	add	edx, 10	# tmp1516,
	movzx	edx, dx	# tmp1518, tmp1516
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbp	#, img
	call	Image_new	#
	mov	BYTE PTR [rbp+157], 1	# MEM[(struct Widget *)img_109].draggable,
	mov	BYTE PTR [rbp+159], 0	# MEM[(struct Widget *)img_109].visible,
	mov	DWORD PTR [rbp+152], 2	# MEM[(struct Widget *)img_109].id,
	mov	rsi, rbp	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp1522,
	lea	rcx, [rdx+rdx*4]	# tmp1524,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rbx, [rdx+rcx*8]	# fmenu,
	add	eax, 1	# tmp1527,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1527
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
	mov	BYTE PTR [rbx+157], 1	# MEM[(struct Widget *)fmenu_122].draggable,
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
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)fmenu_122].class, MEM[(struct coObject *)fmenu_122].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_130->vtable, D.10708_130->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_131 + 8B], MEM[(const void * *)D.10709_131 + 8B]
	mov	rdi, rbx	#, fmenu
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_133].refresh
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp1534, image
	add	rdx, 176	# tmp1534,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1540, image
	add	rdx, 176	# tmp1540,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1546, image
	add	rdx, 176	# tmp1546,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_src_to_dest	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp1551,
	lea	rcx, [rdx+rdx*4]	# tmp1553,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rbx, [rdx+rcx*8]	# fmenu,
	add	eax, 1	# tmp1556,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1556
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
	mov	BYTE PTR [rbx+157], 1	# MEM[(struct Widget *)fmenu_162].draggable,
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
	mov	rsi, QWORD PTR image[rip]	# tmp1557, image
	add	rsi, 176	# tmp1557,
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
	mov	rsi, QWORD PTR image[rip]	# tmp1559, image
	add	rsi, 176	# tmp1559,
	mov	edx, 1	#,
	mov	rdi, rax	#, but
	call	Widget_addVParam	#
.L11:
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)fmenu_162].class, MEM[(struct coObject *)fmenu_162].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_178->vtable, D.10708_178->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_179 + 8B], MEM[(const void * *)D.10709_179 + 8B]
	mov	rdi, rbx	#, fmenu
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_181].refresh
	mov	rdx, QWORD PTR image[rip]	# tmp1565, image
	add	rdx, 176	# tmp1565,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1569, image
	add	rdx, 176	# tmp1569,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1573, image
	add	rdx, 176	# tmp1573,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1577, image
	add	rdx, 176	# tmp1577,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_destaturize_std	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	r13d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp1582,
	lea	rcx, [rdx+rdx*4]	# tmp1584,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+192], rdx	# %sfp,
	add	eax, 1	# tmp1587,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1587
	mov	edx, 5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
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
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_207].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 392	# tmp1589, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1591,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1591
	mov	esi, OFFSET FLAT:.LC29	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# tmp1593, lab_216->text_block.text
	add	rdi, 11	# tmp1593,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1597, image
	add	rdx, 176	# tmp1597,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1605, image
	add	rdx, 176	# tmp1605,
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
	imul	rbx, rbx, 392	# tmp1609, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1611,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1611
	mov	esi, OFFSET FLAT:.LC31	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movss	xmm0, DWORD PTR img_mul[rip]	# tmp1612, img_mul
	cvtps2pd	xmm0, xmm0	# tmp1612, tmp1612
	mov	rdi, QWORD PTR [rbx+336]	# tmp1613, lab_242->text_block.text
	add	rdi, 11	# tmp1613,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1618, image
	add	rdx, 176	# tmp1618,
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
	imul	rbx, rbx, 392	# tmp1625, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1627,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1627
	mov	esi, OFFSET FLAT:.LC33	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	cmp	BYTE PTR img_overflow[rip], 0	# img_overflow,
	mov	eax, OFFSET FLAT:.LC2	# tmp2527,
	mov	esi, OFFSET FLAT:.LC3	# tmp2526,
	cmovne	rsi, rax	# tmp2526,, iftmp.79, tmp2527
	mov	rdi, QWORD PTR [rbx+336]	# tmp1628, lab_263->text_block.text
	add	rdi, 9	# tmp1628,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1632, image
	add	rdx, 176	# tmp1632,
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
	movzx	eax, r13w	# D.10752, label_off
	lea	r15d, [rax+3]	# D.10754,
	cmp	eax, r15d	# D.10752, D.10754
	jge	.L41	#,
	mov	ebx, 4	# f,
.L14:
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1645,
	lea	rcx, [rdx+rdx*4]	# tmp1647,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp1650,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1650
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1616	# tmp1652, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1654,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1654
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10735
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	movzx	r14d, bx	# D.10736, f
	mov	rax, QWORD PTR click_handler[0+r14*8]	# D.10737, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_299].click_handler, D.10737
	mov	DWORD PTR [r12+152], 1	# MEM[(struct Widget *)butimg_299].id,
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
	imul	r12, r12, 1616	# tmp1658, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1660,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1660
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10738
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+r14*8]	# D.10737, click_handler
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_308].click_handler, D.10737
	mov	DWORD PTR [r12+152], 0	# MEM[(struct Widget *)butimg_308].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)sliy2_293].class, MEM[(struct coObject *)sliy2_293].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_313->vtable, D.10739_313->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_314 + 8B], MEM[(const void * *)D.10740_314 + 8B]
	mov	rdi, rbp	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_316].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1670,
	lea	rcx, [rdx+rdx*4]	# tmp1672,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp1675,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1675
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
	imul	rsi, rsi, 392	# tmp1677, k,
	add	rsi, QWORD PTR label[rip]	# tmp1678, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)slix_322].class, MEM[(struct coObject *)slix_322].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_328->vtable, D.10747_328->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_329 + 8B], MEM[(const void * *)D.10748_329 + 8B]
	mov	rdi, r12	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_331].refresh
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
	cmp	eax, r15d	# k, D.10754
	jl	.L14	#,
	jmp	.L13	#
.L41:
	mov	ebx, 4	# f,
.L13:
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebp, ax	# c_button.85, c_button.85
	imul	rbp, rbp, 1744	# tmp1686, c_button.85,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1688,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1688
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_brightness_reset	# MEM[(struct Widget *)but_339].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 10	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, but
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdx, QWORD PTR [rsp+192]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_207].class, MEM[(struct coObject *)fmenu_207].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_342->vtable, D.10708_342->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_343 + 8B], MEM[(const void * *)D.10709_343 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_345].refresh
	mov	rdx, QWORD PTR [rsp+192]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_207].class, MEM[(struct coObject *)fmenu_207].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_347->vtable, D.10708_347->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_348 + 8B], MEM[(const void * *)D.10709_348 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_350].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp1700,
	lea	rcx, [rdx+rdx*4]	# tmp1702,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+208], rdx	# %sfp,
	add	eax, 1	# tmp1705,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1705
	mov	edx, 4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 324	#,
	mov	esi, 1319	#,
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+208]	#, %sfp
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_356].draggable,
	mov	rsi, rax	#,
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
	lea	rbp, [rdx+rdx*2]	# tmp1709,
	sal	rbp, 6	# tmp1710,
	add	rbp, QWORD PTR histogram[rip]	# hist, histogram
	add	eax, 1	# tmp1712,
	mov	WORD PTR c_histogram[rip], ax	# c_histogram, tmp1712
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 16711680	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)hist_366].class, MEM[(struct coObject *)hist_366].class
	mov	rax, QWORD PTR [rax+16]	# D.10765_368->vtable, D.10765_368->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10766_369 + 8B], MEM[(const void * *)D.10766_369 + 8B]
	mov	rdi, rbp	#, hist
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10768_371].refresh
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
	lea	rbp, [rdx+rdx*2]	# tmp1720,
	sal	rbp, 6	# tmp1721,
	add	rbp, QWORD PTR histogram[rip]	# hist, histogram
	add	eax, 1	# tmp1723,
	mov	WORD PTR c_histogram[rip], ax	# c_histogram, tmp1723
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 65280	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)hist_377].class, MEM[(struct coObject *)hist_377].class
	mov	rax, QWORD PTR [rax+16]	# D.10765_379->vtable, D.10765_379->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10766_380 + 8B], MEM[(const void * *)D.10766_380 + 8B]
	mov	rdi, rbp	#, hist
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10768_382].refresh
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
	lea	rbp, [rdx+rdx*2]	# tmp1731,
	sal	rbp, 6	# tmp1732,
	add	rbp, QWORD PTR histogram[rip]	# hist, histogram
	add	eax, 1	# tmp1734,
	mov	WORD PTR c_histogram[rip], ax	# c_histogram, tmp1734
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 255	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)hist_388].class, MEM[(struct coObject *)hist_388].class
	mov	rax, QWORD PTR [rax+16]	# D.10765_390->vtable, D.10765_390->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10766_391 + 8B], MEM[(const void * *)D.10766_391 + 8B]
	mov	rdi, rbp	#, hist
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10768_393].refresh
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 5	#,
	mov	r8d, 2	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hist
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_356].class, MEM[(struct coObject *)fmenu_356].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_395->vtable, D.10708_395->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_396 + 8B], MEM[(const void * *)D.10709_396 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_398].refresh
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_356].class, MEM[(struct coObject *)fmenu_356].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_400->vtable, D.10708_400->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_401 + 8B], MEM[(const void * *)D.10709_401 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_403].setVisible
	movzx	r15d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp1750,
	lea	rcx, [rdx+rdx*4]	# tmp1752,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+200], rdx	# %sfp,
	add	eax, 1	# tmp1755,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1755
	mov	edx, 5	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
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
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_410].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# lab_algo_ind, c_label
	movzx	r13d, ax	# lab_algo_ind, lab_algo_ind
	imul	r13, r13, 392	# D.10684, lab_algo_ind,
	mov	rbp, QWORD PTR label[rip]	# lab, label
	add	rbp, r13	# lab, D.10684
	add	eax, 1	# tmp1758,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1758
	mov	esi, OFFSET FLAT:.LC37	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	cmp	BYTE PTR t_algo[rip], 0	# t_algo,
	mov	eax, OFFSET FLAT:.LC4	# tmp2529,
	mov	r8d, OFFSET FLAT:.LC5	# tmp2528,
	cmovne	r8, rax	# tmp2528,, iftmp.89, tmp2529
	mov	rdi, QWORD PTR [rbp+336]	# tmp1759, lab_420->text_block.text
	add	rdi, 10	# tmp1759,
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
	imul	r12, r12, 392	# D.10684, lab_hist_ind,
	mov	rbp, QWORD PTR label[rip]	# lab, label
	add	rbp, r12	# lab, D.10684
	add	eax, 1	# tmp1763,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1763
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	movzx	eax, BYTE PTR num_hist[rip]	# num_hist, num_hist
	mov	rdi, QWORD PTR [rbp+336]	# tmp1768, lab_433->text_block.text
	add	rdi, 18	# tmp1768,
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
	imul	rdx, rdx, 392	#, lab_thr_ind,
	mov	QWORD PTR [rsp+176], rdx	# %sfp,
	mov	rbp, rdx	# lab,
	add	rbp, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1772,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1772
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
	mov	rdx, QWORD PTR label[rip]	# tmp1774, label
	add	rdx, r13	# tmp1774, D.10684
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
	mov	rdx, QWORD PTR label[rip]	# tmp1779, label
	add	rdx, r12	# tmp1779, D.10684
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR [rsp+176]	# tmp1782, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1782, label
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
	mov	rdx, QWORD PTR [rsp+176]	# tmp1792, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1792, label
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
	mov	rdx, QWORD PTR image[rip]	# tmp1797, image
	add	rdx, 176	# tmp1797,
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
	mov	rdx, QWORD PTR image[rip]	# tmp1802, image
	add	rdx, 176	# tmp1802,
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
	movzx	eax, r15w	# D.10752, label_off
	lea	edx, [rax+3]	#,
	mov	DWORD PTR [rsp+168], edx	# %sfp,
	cmp	eax, edx	# D.10752,
	jge	.L16	#,
.L18:
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1808,
	lea	rcx, [rdx+rdx*4]	# tmp1810,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp1813,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1813
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r14, r14, 1616	# tmp1815, c_buttonimage.64,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1817,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1817
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10790
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	movzx	ebp, bx	# D.10736, f
	mov	rax, QWORD PTR click_handler[0+rbp*8]	# D.10737, click_handler
	mov	QWORD PTR [r14+8], rax	# MEM[(struct Widget *)butimg_512].click_handler, D.10737
	mov	DWORD PTR [r14+152], 1	# MEM[(struct Widget *)butimg_512].id,
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
	imul	r13, r13, 1616	# tmp1821, c_buttonimage.64,
	add	r13, QWORD PTR buttonimage[rip]	# butimg2, buttonimage
	add	eax, 1	# tmp1823,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1823
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10791
	mov	rdi, r13	#, butimg2
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+rbp*8]	# D.10737, click_handler
	mov	QWORD PTR [r13+8], rax	# MEM[(struct Widget *)butimg2_521].click_handler, D.10737
	mov	DWORD PTR [r13+152], 0	# MEM[(struct Widget *)butimg2_521].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, butimg2
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)sliy2_506].class, MEM[(struct coObject *)sliy2_506].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_526->vtable, D.10739_526->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_527 + 8B], MEM[(const void * *)D.10740_527 + 8B]
	mov	rdi, r12	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_529].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1833,
	lea	rcx, [rdx+rdx*4]	# tmp1835,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp1838,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1838
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
	imul	rsi, rsi, 392	# tmp1840, k,
	add	rsi, QWORD PTR label[rip]	# tmp1841, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)slix_535].class, MEM[(struct coObject *)slix_535].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_541->vtable, D.10747_541->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_542 + 8B], MEM[(const void * *)D.10748_542 + 8B]
	mov	rdi, rbp	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_544].refresh
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
	imul	rax, rax, 1616	# tmp1861, c_buttonimage,
	mov	rdx, QWORD PTR buttonimage[rip]	# buttonimage, buttonimage
	lea	rdi, [rdx-3232+rax]	# tmp1863,
	mov	esi, 0	#,
	call	ButtonImage_setEnabled	#
	movzx	edi, WORD PTR c_buttonimage[rip]	# c_buttonimage, c_buttonimage
	sub	rdi, 1	# tmp1866,
	imul	rdi, rdi, 1616	# tmp1867, tmp1866,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp1868, buttonimage
	mov	esi, 0	#,
	call	ButtonImage_setEnabled	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1873,
	lea	rcx, [rdx+rdx*4]	# tmp1875,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbx, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp1878,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1878
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebp, ax	# c_button.85, c_button.85
	imul	rbp, rbp, 1744	# tmp1880, c_button.85,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1882,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1882
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_bin_create_histograms	# MEM[(struct Widget *)but_582].click_handler,
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
	mov	rdx, QWORD PTR [rsp+176]	# tmp1888, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1888, label
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
	imul	rbp, rbp, 1744	# tmp1894, c_button.85,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1896,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1896
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_threshold_apply	# MEM[(struct Widget *)but_603].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 1	#,
	mov	r9d, 3	#,
	mov	r8d, 10	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, but
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)slix_576].class, MEM[(struct coObject *)slix_576].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_606->vtable, D.10747_606->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_607 + 8B], MEM[(const void * *)D.10748_607 + 8B]
	mov	rdi, rbx	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_609].refresh
	mov	DWORD PTR [rsp+8], 4	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 0	#,
	mov	r8d, 4	#,
	mov	ecx, 3	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, slix
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdx, QWORD PTR [rsp+200]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_410].class, MEM[(struct coObject *)fmenu_410].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_611->vtable, D.10708_611->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_612 + 8B], MEM[(const void * *)D.10709_612 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_614].refresh
	mov	rdx, QWORD PTR [rsp+200]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_410].class, MEM[(struct coObject *)fmenu_410].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_616->vtable, D.10708_616->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_617 + 8B], MEM[(const void * *)D.10709_617 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_619].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp1912,
	lea	rcx, [rdx+rdx*4]	# tmp1914,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+224], rdx	# %sfp,
	add	eax, 1	# tmp1917,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1917
	mov	edx, 4	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
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
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_625].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC44	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	edx, WORD PTR c_grid[rip]	# c_grid.94, c_grid
	movzx	eax, dx	# c_grid.94, c_grid.94
	lea	rcx, [rax+rax*2]	# tmp1921,
	lea	rax, [rax+rcx*4]	# tmp1923,
	sal	rax, 4	# tmp1924,
	add	rax, QWORD PTR grid[rip]	# tmp1924, grid
	mov	QWORD PTR [rsp+176], rax	# %sfp, tmp1924
	add	edx, 1	# tmp1926,
	mov	WORD PTR c_grid[rip], dx	# c_grid, tmp1926
	mov	edx, 6	#,
	mov	esi, 3	#,
	mov	rdi, rax	#, tmp1924
	call	Grid_new	#
	mov	edx, 0	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Container_setPadding	#
	movzx	eax, WORD PTR c_label[rip]	# c_label, c_label
	imul	rax, rax, 392	# tmp1928, c_label,
	add	rax, QWORD PTR label[rip]	# tmp1928, label
	mov	QWORD PTR [rsp+216], rax	# %sfp, tmp1928
	mov	DWORD PTR [rsp+168], 0	# %sfp,
	mov	WORD PTR [rsp+184], 8	# %sfp,
	jmp	.L19	#
.L21:
	mov	r14d, r13d	# x, ivtmp.164
	movzx	r15d, WORD PTR [rsp+184]	# D.11143, %sfp
	sub	r15d, r14d	# D.11143, x
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebp, ax	# c_label.67, c_label.67
	imul	rbp, rbp, 392	# tmp1931, c_label.67,
	add	rbp, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1933,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1933
	mov	esi, OFFSET FLAT:.LC45	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	movzx	r15d, r15w	# D.10752, D.11143
	movsx	rdx, r15d	# D.10752, D.10752
	mov	rax, QWORD PTR gtsf[rip]	# gtsf, gtsf
	movss	xmm0, DWORD PTR [rax+12+rdx*4]	# tmp1936, gtsf.92_651->weight
	cvtps2pd	xmm0, xmm0	# tmp1936, tmp1936
	mov	rdi, QWORD PTR [rbp+336]	# lab_649->text_block.text, lab_649->text_block.text
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
	mov	rdi, rbp	#, lab
	call	Label_applyDefaultStyle	#
	cmp	r13w, 2	# x,
	mov	eax, 0	# tmp2531,
	mov	edx, 20	#,
	cmovne	eax, edx	#,, iftmp.96
	add	r14d, r14d	# D.10811
	lea	ecx, [r14+1]	# tmp1938,
	movzx	ecx, cx	# tmp1939, tmp1938
	mov	DWORD PTR [rsp+24], eax	#, iftmp.96
	mov	DWORD PTR [rsp+16], 10	#,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 3	#,
	mov	r8d, 4	#,
	mov	edx, DWORD PTR [rsp+168]	#, %sfp
	mov	rsi, rbp	#, lab
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_add	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1943,
	lea	rcx, [rdx+rdx*4]	# tmp1945,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbx, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp1948,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1948
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1616	# tmp1950, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1952,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1952
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10815
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbp	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_change_filter_weight	# MEM[(struct Widget *)butimg_673].click_handler,
	add	r15d, r15d	# D.10816
	lea	eax, [r15+1]	# tmp1953,
	mov	DWORD PTR [r12+152], eax	# MEM[(struct Widget *)butimg_673].id, tmp1953
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbx	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1616	# tmp1955, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1957,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1957
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10819
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbp	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_change_filter_weight	# MEM[(struct Widget *)butimg_684].click_handler,
	mov	DWORD PTR [r12+152], r15d	# MEM[(struct Widget *)butimg_684].id, D.10816
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbx	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)sliy2_667].class, MEM[(struct coObject *)sliy2_667].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_690->vtable, D.10739_690->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_691 + 8B], MEM[(const void * *)D.10740_691 + 8B]
	mov	rdi, rbx	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_693].refresh
	movzx	ecx, r14w	# D.10811, D.10811
	mov	DWORD PTR [rsp+24], 2	#,
	mov	DWORD PTR [rsp+16], 10	#,
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	edx, DWORD PTR [rsp+168]	#, %sfp
	mov	rsi, rbx	#, sliy2
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
	mov	rdx, QWORD PTR [rsp+176]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)gri_634].class, MEM[(struct coObject *)gri_634].class
	mov	rax, QWORD PTR [rax+16]	# D.10822_701->vtable, D.10822_701->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10823_702 + 8B], MEM[(const void * *)D.10823_702 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10825_704].refresh
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
	imul	rbx, rbx, 392	# tmp1968, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1970,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1970
	mov	esi, OFFSET FLAT:.LC47	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR gtsf[rip]	#, gtsf
	call	GToolsSplotFilter_getFilterName	#
	mov	r9, rax	# D.10827,
	mov	rdi, QWORD PTR [rbx+336]	# tmp1971, lab_710->text_block.text
	add	rdi, 5	# tmp1971,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1981,
	lea	rcx, [rdx+rdx*4]	# tmp1983,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp1986,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1986
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp1990,
	lea	rcx, [rdx+rdx*4]	# tmp1992,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp1995,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1995
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r13d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r13, r13, 1616	# tmp1997, c_buttonimage.64,
	add	r13, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1999,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1999
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10833
	mov	rdi, r13	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_change_filter_predef	# MEM[(struct Widget *)butimg_746].click_handler,
	mov	DWORD PTR [r13+152], 1	# MEM[(struct Widget *)butimg_746].id,
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
	imul	r13, r13, 1616	# tmp2001, c_buttonimage.64,
	add	r13, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2003,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2003
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10834
	mov	rdi, r13	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_change_filter_predef	# MEM[(struct Widget *)butimg_753].click_handler,
	mov	DWORD PTR [r13+152], 0	# MEM[(struct Widget *)butimg_753].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)sliy2_740].class, MEM[(struct coObject *)sliy2_740].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_756->vtable, D.10739_756->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_757 + 8B], MEM[(const void * *)D.10740_757 + 8B]
	mov	rdi, r12	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_759].refresh
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
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)slix_734].class, MEM[(struct coObject *)slix_734].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_761->vtable, D.10747_761->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_762 + 8B], MEM[(const void * *)D.10748_762 + 8B]
	mov	rdi, rbp	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_764].refresh
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
	imul	rbx, rbx, 1744	# tmp2013, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp2015,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp2015
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
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_dest_splotfilter	# MEM[(struct Widget *)but_770].click_handler,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 7	#,
	mov	r9d, 3	#,
	mov	r8d, 15	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, but
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdx, QWORD PTR [rsp+224]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_625].class, MEM[(struct coObject *)fmenu_625].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_773->vtable, D.10708_773->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_774 + 8B], MEM[(const void * *)D.10709_774 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_776].refresh
	mov	rdx, QWORD PTR [rsp+224]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_625].class, MEM[(struct coObject *)fmenu_625].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_778->vtable, D.10708_778->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_779 + 8B], MEM[(const void * *)D.10709_779 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_781].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2027,
	lea	rcx, [rdx+rdx*4]	# tmp2029,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+216], rdx	# %sfp,
	add	eax, 1	# tmp2032,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2032
	mov	edx, 3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
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
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_787].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC50	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_pdb[rip]	# c_pdb.99, c_pdb
	movzx	ebx, ax	# c_pdb.99, c_pdb.99
	imul	rbx, rbx, 232	# tmp2034, c_pdb.99,
	add	rbx, QWORD PTR pdb[rip]	# pd, pdb
	add	eax, 1	# tmp2036,
	mov	WORD PTR c_pdb[rip], ax	# c_pdb, tmp2036
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)pd_796].class, MEM[(struct coObject *)pd_796].class
	mov	r9, QWORD PTR [rax+8]	#, D.10840_798->name
	mov	r8, rbx	#, pd
	mov	ecx, OFFSET FLAT:__FUNCTION__.10438	#,
	mov	edx, OFFSET FLAT:.LC51	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
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
	mov	BYTE PTR [rbx+200], 1	# MEM[(struct Grid *)pd_796].showBorder,
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)pd_796].class, MEM[(struct coObject *)pd_796].class
	mov	rax, QWORD PTR [rax+16]	# D.10840_801->vtable, D.10840_801->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10842_802 + 8B], MEM[(const void * *)D.10842_802 + 8B]
	mov	rdi, rbx	#, pd
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10844_804].refresh
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
	mov	rdx, QWORD PTR image[rip]	# tmp2045, image
	add	rdx, 176	# tmp2045,
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
	mov	rdx, QWORD PTR image[rip]	# tmp2050, image
	add	rdx, 176	# tmp2050,
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
	mov	rdx, QWORD PTR image[rip]	# tmp2055, image
	add	rdx, 176	# tmp2055,
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
	mov	rdx, QWORD PTR image[rip]	# tmp2060, image
	add	rdx, 176	# tmp2060,
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
	movzx	edx, WORD PTR c_grid[rip]	# c_grid.94, c_grid
	movzx	eax, dx	# c_grid.94, c_grid.94
	lea	rcx, [rax+rax*2]	# tmp2066,
	lea	r14, [rax+rcx*4]	# tmp2068,
	sal	r14, 4	# tmp2069,
	add	r14, QWORD PTR grid[rip]	# gri, grid
	add	edx, 1	# tmp2071,
	mov	WORD PTR c_grid[rip], dx	# c_grid, tmp2071
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
	imul	rbx, rbx, 392	# tmp2073, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2075,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2075
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
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r14	#, gri
	call	Grid_add	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 392	# tmp2077, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2079,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2079
	mov	esi, OFFSET FLAT:.LC53	#,
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
	mov	r13d, 0	# ivtmp.153,
.L25:
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebp, ax	# c_label.67, c_label.67
	imul	rbp, rbp, 392	# tmp2081, c_label.67,
	add	rbp, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2083,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2083
	mov	esi, OFFSET FLAT:.LC54	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	test	r13w, r13w	# ivtmp.153
	jne	.L23	#,
	mov	rax, QWORD PTR pdb[rip]	# pdb, pdb
	movzx	r9d, WORD PTR [rax+220]	# iftmp.101, pdb.98_859->actY
	jmp	.L24	#
.L23:
	mov	rax, QWORD PTR pdb[rip]	# pdb, pdb
	movzx	r9d, WORD PTR [rax+218]	# iftmp.101, pdb.98_862->actX
.L24:
	mov	rdi, QWORD PTR [rbp+336]	# lab_857->text_block.text, lab_857->text_block.text
	mov	r8d, OFFSET FLAT:.LC55	#,
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
	mov	rdi, rbp	#, lab
	call	Label_applyDefaultStyle	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2091,
	lea	rcx, [rdx+rdx*4]	# tmp2093,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp2096,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2096
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbx, rbx, 1616	# tmp2098, c_buttonimage.64,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2100,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2100
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10852
	mov	rdi, rbx	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbp	#, lab
	mov	rdi, rbx	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_change_strelem_size	# MEM[(struct Widget *)butimg_877].click_handler,
	lea	eax, [r13+r13]	# tmp2101,
	mov	DWORD PTR [rbx+152], eax	# MEM[(struct Widget *)butimg_877].id, tmp2101
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbx, rbx, 1616	# tmp2103, c_buttonimage.64,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2105,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2105
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10854
	mov	rdi, rbx	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbp	#, lab
	mov	rdi, rbx	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_change_strelem_size	# MEM[(struct Widget *)butimg_886].click_handler,
	mov	DWORD PTR [rbx+152], r15d	# MEM[(struct Widget *)butimg_886].id, ivtmp.163
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbx	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)sliy2_871].class, MEM[(struct coObject *)sliy2_871].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_891->vtable, D.10739_891->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_892 + 8B], MEM[(const void * *)D.10740_892 + 8B]
	mov	rdi, r12	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_894].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2113,
	lea	rcx, [rdx+rdx*4]	# tmp2115,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbx, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp2118,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2118
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, sliy2
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, lab
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)slix_900].class, MEM[(struct coObject *)slix_900].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_902->vtable, D.10747_902->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_903 + 8B], MEM[(const void * *)D.10748_903 + 8B]
	mov	rdi, rbx	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_905].refresh
	mov	DWORD PTR [rsp+24], 0	#,
	mov	DWORD PTR [rsp+16], 0	#,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, r13d	#, ivtmp.153
	mov	edx, 1	#,
	mov	rsi, rbx	#, slix
	mov	rdi, r14	#, gri
	call	Grid_add	#
	add	r13d, 1	# ivtmp.153,
	add	r15d, 2	# ivtmp.163,
	cmp	r13d, 2	# ivtmp.153,
	jne	.L25	#,
	mov	rax, QWORD PTR [r14]	# MEM[(struct coObject *)gri_835].class, MEM[(struct coObject *)gri_835].class
	mov	rax, QWORD PTR [rax+16]	# D.10822_909->vtable, D.10822_909->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10823_910 + 8B], MEM[(const void * *)D.10823_910 + 8B]
	mov	rdi, r14	#, gri
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10825_912].refresh
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, gri
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdx, QWORD PTR [rsp+216]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_787].class, MEM[(struct coObject *)fmenu_787].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_914->vtable, D.10708_914->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_915 + 8B], MEM[(const void * *)D.10709_915 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_917].refresh
	mov	rdx, QWORD PTR [rsp+216]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_787].class, MEM[(struct coObject *)fmenu_787].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_919->vtable, D.10708_919->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_920 + 8B], MEM[(const void * *)D.10709_920 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_922].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2138,
	lea	rcx, [rdx+rdx*4]	# tmp2140,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+168], rdx	# %sfp,
	add	eax, 1	# tmp2143,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2143
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 679	#,
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+168]	#, %sfp
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_928].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC56	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_dilate_click	#,
	mov	edx, OFFSET FLAT:.LC57	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_erode_click	#,
	mov	edx, OFFSET FLAT:.LC58	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_morph_open_click	#,
	mov	edx, OFFSET FLAT:.LC59	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_morph_close_click	#,
	mov	edx, OFFSET FLAT:.LC60	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	edx, OFFSET FLAT:.LC61	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addLabelLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_dilate_click	#,
	mov	edx, OFFSET FLAT:.LC57	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_erode_click	#,
	mov	edx, OFFSET FLAT:.LC58	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_morph_open_click	#,
	mov	edx, OFFSET FLAT:.LC59	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_morph_close_click	#,
	mov	edx, OFFSET FLAT:.LC60	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	rdx, QWORD PTR [rsp+168]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_928].class, MEM[(struct coObject *)fmenu_928].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_942->vtable, D.10708_942->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_943 + 8B], MEM[(const void * *)D.10709_943 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_945].refresh
	mov	rdx, QWORD PTR [rsp+168]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_928].class, MEM[(struct coObject *)fmenu_928].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_947->vtable, D.10708_947->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_948 + 8B], MEM[(const void * *)D.10709_948 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_950].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2155,
	lea	rcx, [rdx+rdx*4]	# tmp2157,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+184], rdx	# %sfp,
	add	eax, 1	# tmp2160,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2160
	mov	edx, 3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
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
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_956].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC62	#,
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
	mov	edx, OFFSET FLAT:.LC63	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	FloatingMenu_addMenuButtonLast	#
	mov	rdx, QWORD PTR [rsp+184]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_956].class, MEM[(struct coObject *)fmenu_956].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_963->vtable, D.10708_963->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_964 + 8B], MEM[(const void * *)D.10709_964 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_966].refresh
	mov	rdx, QWORD PTR [rsp+184]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_956].class, MEM[(struct coObject *)fmenu_956].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_968->vtable, D.10708_968->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_969 + 8B], MEM[(const void * *)D.10709_969 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_971].setVisible
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR image[rip]	# tmp2170, image
	add	rdx, 176	# tmp2170,
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
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2178,
	lea	rcx, [rdx+rdx*4]	# tmp2180,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+232], rdx	# %sfp,
	add	eax, 1	# tmp2183,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2183
	mov	edx, 3	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_new	#
	mov	edx, 10	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	Container_setPadding	#
	mov	edx, 1	#,
	mov	esi, 984	#,
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	Widget_setPosition	#
	mov	rax, QWORD PTR [rsp+232]	#, %sfp
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_984].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC64	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.85, c_button
	movzx	ebx, ax	# c_button.85, c_button.85
	imul	rbx, rbx, 1744	# tmp2185, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp2187,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp2187
	mov	esi, OFFSET FLAT:.LC65	#,
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
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_reconstruction_marker_open	# MEM[(struct Widget *)but_993].click_handler,
	mov	rsi, QWORD PTR image[rip]	# tmp2188, image
	add	rsi, 352	# tmp2188,
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
	imul	rbx, rbx, 392	# tmp2191, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2193,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2193
	mov	esi, OFFSET FLAT:.LC45	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# lab_1003->text_block.text, lab_1003->text_block.text
	movzx	r8d, WORD PTR reconst_limit[rip]	#, reconst_limit
	mov	ecx, OFFSET FLAT:.LC66	#,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2199,
	lea	rcx, [rdx+rdx*4]	# tmp2201,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp2204,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2204
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.64, c_buttonimage.64
	imul	rbp, rbp, 1616	# tmp2206, c_buttonimage.64,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2208,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2208
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10859
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_change_reconst_limit	# MEM[(struct Widget *)butimg_1019].click_handler,
	mov	DWORD PTR [rbp+152], 1	# MEM[(struct Widget *)butimg_1019].id,
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
	imul	rbp, rbp, 1616	# tmp2210, c_buttonimage.64,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2212,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2212
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10860
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
	mov	QWORD PTR [rbp+8], OFFSET FLAT:button_change_reconst_limit	# MEM[(struct Widget *)butimg_1026].click_handler,
	mov	DWORD PTR [rbp+152], 0	# MEM[(struct Widget *)butimg_1026].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)sliy2_1013].class, MEM[(struct coObject *)sliy2_1013].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_1029->vtable, D.10739_1029->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_1030 + 8B], MEM[(const void * *)D.10740_1030 + 8B]
	mov	rdi, r12	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_1032].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2220,
	lea	rcx, [rdx+rdx*4]	# tmp2222,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp2225,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2225
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
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)slix_1038].class, MEM[(struct coObject *)slix_1038].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_1040->vtable, D.10747_1040->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_1041 + 8B], MEM[(const void * *)D.10748_1041 + 8B]
	mov	rdi, rbp	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_1043].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2233,
	lea	rcx, [rdx+rdx*4]	# tmp2235,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbx, [rdx+rcx*8]	# sliy,
	add	eax, 1	# tmp2238,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2238
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, sliy
	call	StackList_new	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	r12d, ax	# c_label.67, c_label.67
	imul	r12, r12, 392	# tmp2240, c_label.67,
	add	r12, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2242,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2242
	mov	esi, OFFSET FLAT:.LC67	#,
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
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)sliy_1049].class, MEM[(struct coObject *)sliy_1049].class
	mov	rax, QWORD PTR [rax+16]	# D.10861_1058->vtable, D.10861_1058->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10862_1059 + 8B], MEM[(const void * *)D.10862_1059 + 8B]
	mov	rdi, rbx	#, sliy
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10864_1061].refresh
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2250,
	lea	rcx, [rdx+rdx*4]	# tmp2252,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp2255,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2255
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
	imul	rbx, rbx, 1744	# tmp2257, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp2259,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp2259
	mov	esi, OFFSET FLAT:.LC68	#,
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
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_apply_reconstruction_filter	# MEM[(struct Widget *)but_1073].click_handler,
	mov	edx, 3	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbx	#, but
	call	Widget_addVParam	#
	mov	rsi, QWORD PTR image[rip]	# tmp2260, image
	add	rsi, 352	# tmp2260,
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
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)slix_1067].class, MEM[(struct coObject *)slix_1067].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_1079->vtable, D.10747_1079->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_1080 + 8B], MEM[(const void * *)D.10748_1080 + 8B]
	mov	rdi, rbp	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_1082].refresh
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 12	#,
	mov	ecx, 2	#,
	mov	edx, 4	#,
	mov	rsi, rbp	#, slix
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	mov	rdx, QWORD PTR [rsp+232]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_984].class, MEM[(struct coObject *)fmenu_984].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1084->vtable, D.10708_1084->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1085 + 8B], MEM[(const void * *)D.10709_1085 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_1087].refresh
	mov	rdx, QWORD PTR [rsp+232]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_984].class, MEM[(struct coObject *)fmenu_984].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1089->vtable, D.10708_1089->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1090 + 8B], MEM[(const void * *)D.10709_1090 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_1092].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2277,
	lea	rcx, [rdx+rdx*4]	# tmp2279,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rdx, [rdx+rcx*8]	#,
	mov	QWORD PTR [rsp+176], rdx	# %sfp,
	add	eax, 1	# tmp2282,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2282
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
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
	mov	BYTE PTR [rax+157], 1	# MEM[(struct Widget *)fmenu_1098].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC69	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 392	# tmp2284, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2286,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2286
	mov	esi, OFFSET FLAT:.LC70	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# tmp2288, lab_1107->text_block.text
	add	rdi, 7	# tmp2288,
	movzx	r8d, BYTE PTR rep_thr[rip]	#, rep_thr
	mov	ecx, OFFSET FLAT:.LC71	#,
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
	imul	rbx, rbx, 392	# tmp2293, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2295,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2295
	mov	esi, OFFSET FLAT:.LC72	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	eax, DWORD PTR rep_cond[rip]	# rep_cond, rep_cond
	mov	rdi, QWORD PTR [rbx+336]	# tmp2299, lab_1120->text_block.text
	add	rdi, 9	# tmp2299,
	mov	r8, QWORD PTR COND_SYM[0+rax*8]	#, COND_SYM
	mov	ecx, OFFSET FLAT:.LC73	#,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2306,
	lea	rcx, [rdx+rdx*4]	# tmp2308,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbx, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp2311,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2311
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2315,
	lea	rcx, [rdx+rdx*4]	# tmp2317,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp2320,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2320
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1616	# tmp2322, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2324,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2324
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10871
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR [r13+0]	# D.10737, MEM[base: D.11119_1234, offset: 0B]
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_1149].click_handler, D.10737
	mov	DWORD PTR [r12+152], 1	# MEM[(struct Widget *)butimg_1149].id,
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
	imul	r12, r12, 1616	# tmp2326, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2328,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2328
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10872
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR [r13+0]	# D.10737, MEM[base: D.11119_1234, offset: 0B]
	mov	QWORD PTR [r12+8], rax	# MEM[(struct Widget *)butimg_1158].click_handler, D.10737
	mov	DWORD PTR [r12+152], 0	# MEM[(struct Widget *)butimg_1158].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)sliy2_1143].class, MEM[(struct coObject *)sliy2_1143].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_1163->vtable, D.10739_1163->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_1164 + 8B], MEM[(const void * *)D.10740_1164 + 8B]
	mov	rdi, rbp	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_1166].refresh
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
	imul	rsi, rsi, 392	# tmp2334, j,
	add	rsi, QWORD PTR label[rip]	# tmp2335, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)slix_1137].class, MEM[(struct coObject *)slix_1137].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_1172->vtable, D.10747_1172->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_1173 + 8B], MEM[(const void * *)D.10748_1173 + 8B]
	mov	rdi, rbx	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_1175].refresh
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
	imul	rbx, rbx, 392	# tmp2342, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2344,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2344
	mov	esi, OFFSET FLAT:.LC74	#,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2348,
	lea	rcx, [rdx+rdx*4]	# tmp2350,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r14, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp2353,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2353
	mov	edx, 6	#,
	mov	esi, 0	#,
	mov	rdi, r14	#, slix
	call	StackList_new	#
	mov	r13d, 0	# ivtmp.129,
.L27:
	movzx	eax, WORD PTR c_label[rip]	# c_label.67, c_label
	movzx	ebx, ax	# c_label.67, c_label.67
	imul	rbx, rbx, 392	# tmp2355, c_label.67,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2357,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2357
	mov	esi, OFFSET FLAT:.LC54	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+336]	# lab_1198->text_block.text, lab_1198->text_block.text
	movzx	r8d, BYTE PTR rep_new[r13]	#, MEM[symbol: rep_new, index: ivtmp.129_2252, offset: 0B]
	mov	ecx, OFFSET FLAT:.LC71	#,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2364,
	lea	rcx, [rdx+rdx*4]	# tmp2366,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rbp, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp2369,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2369
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r12, r12, 1616	# tmp2371, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2373,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2373
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10878
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	movsx	r15, r13d	# ivtmp.129, ivtmp.129
	add	r15, OFFSET FLAT:rep_new	# D.10879,
	mov	edx, 2	#,
	mov	rsi, r15	#, D.10879
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_rep_col_change_new_color	# MEM[(struct Widget *)butimg_1215].click_handler,
	mov	DWORD PTR [r12+152], 1	# MEM[(struct Widget *)butimg_1215].id,
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
	imul	r12, r12, 1616	# tmp2376, c_buttonimage.64,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2378,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2378
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10880
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, r15	#, D.10879
	mov	rdi, r12	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r12+8], OFFSET FLAT:button_rep_col_change_new_color	# MEM[(struct Widget *)butimg_1224].click_handler,
	mov	DWORD PTR [r12+152], 0	# MEM[(struct Widget *)butimg_1224].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)sliy2_1209].class, MEM[(struct coObject *)sliy2_1209].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_1229->vtable, D.10739_1229->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_1230 + 8B], MEM[(const void * *)D.10740_1230 + 8B]
	mov	rdi, rbp	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_1232].refresh
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, sliy2
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
	mov	rax, QWORD PTR [r14]	# MEM[(struct coObject *)slix_1191].class, MEM[(struct coObject *)slix_1191].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_1235->vtable, D.10747_1235->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_1236 + 8B], MEM[(const void * *)D.10748_1236 + 8B]
	mov	rdi, r14	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_1238].refresh
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
	imul	rbx, rbx, 1744	# tmp2388, c_button.85,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp2390,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp2390
	mov	esi, OFFSET FLAT:.LC75	#,
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
	mov	QWORD PTR [rbx+8], OFFSET FLAT:button_rep_col_apply	# MEM[(struct Widget *)but_1244].click_handler,
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
	mov	rdx, QWORD PTR image[rip]	# tmp2393, image
	add	rdx, 176	# tmp2393,
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
	mov	rdx, QWORD PTR [rsp+176]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_1098].class, MEM[(struct coObject *)fmenu_1098].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1255->vtable, D.10708_1255->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1256 + 8B], MEM[(const void * *)D.10709_1256 + 8B]
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_1258].refresh
	mov	rdx, QWORD PTR [rsp+176]	#, %sfp
	mov	rax, QWORD PTR [rdx]	# MEM[(struct coObject *)fmenu_1098].class, MEM[(struct coObject *)fmenu_1098].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1260->vtable, D.10708_1260->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1261 + 8B], MEM[(const void * *)D.10709_1261 + 8B]
	mov	esi, 0	#,
	mov	rdi, rdx	#,
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_1263].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2409,
	lea	rcx, [rdx+rdx*4]	# tmp2411,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rbx, [rdx+rcx*8]	# fmenu,
	add	eax, 1	# tmp2414,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2414
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
	mov	BYTE PTR [rbx+157], 1	# MEM[(struct Widget *)fmenu_1269].draggable,
	mov	rsi, rbx	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC76	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_hsg[rip]	# c_hsg.106, c_hsg
	movzx	ebp, ax	# c_hsg.106, c_hsg.106
	imul	rbp, rbp, 624	# tmp2416, c_hsg.106,
	add	rbp, QWORD PTR hsg[rip]	# hs, hsg
	add	eax, 1	# tmp2418,
	mov	WORD PTR c_hsg[rip], ax	# c_hsg, tmp2418
	mov	edx, 8	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, hs
	call	HistStretchGraph_new	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)hs_1278].class, MEM[(struct coObject *)hs_1278].class
	mov	rax, QWORD PTR [rax+16]	# D.10886_1281->vtable, D.10886_1281->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10887_1282 + 8B], MEM[(const void * *)D.10887_1282 + 8B]
	mov	rdi, rbp	#, hs
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10889_1284].refresh
	mov	edx, 2	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbp	#, hs
	call	Widget_addVParam	#
	mov	rsi, QWORD PTR image[rip]	# tmp2423, image
	add	rsi, 176	# tmp2423,
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
	imul	r13, r13, 392	# tmp2426, c_label.67,
	add	r13, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp2428,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp2428
	mov	esi, OFFSET FLAT:.LC77	#,
	mov	rdi, r13	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [r13+336]	# tmp2430, lab_1293->text_block.text
	add	rdi, 18	# tmp2430,
	movzx	r8d, WORD PTR [rbp+608]	#, hs_1278->size
	mov	ecx, OFFSET FLAT:.LC55	#,
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2435,
	lea	rcx, [rdx+rdx*4]	# tmp2437,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r12, [rdx+rcx*8]	# slix,
	add	eax, 1	# tmp2440,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2440
	mov	edx, 3	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.82, c_stacklist
	movzx	edx, ax	# c_stacklist.82, c_stacklist.82
	lea	rdx, [rdx+rdx*4]	# tmp2444,
	lea	rcx, [rdx+rdx*4]	# tmp2446,
	mov	rdx, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	r14, [rdx+rcx*8]	# sliy2,
	add	eax, 1	# tmp2449,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp2449
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r14	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r15d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r15, r15, 1616	# tmp2451, c_buttonimage.64,
	add	r15, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2453,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2453
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10893
	mov	rdi, r15	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, r13	#, lab
	mov	rdi, r15	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r15	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r15+8], OFFSET FLAT:button_change_hist_stretch_nodes	# MEM[(struct Widget *)butimg_1316].click_handler,
	mov	DWORD PTR [r15+152], 1	# MEM[(struct Widget *)butimg_1316].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r15	#, butimg
	mov	rdi, r14	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.64, c_buttonimage
	movzx	r15d, ax	# c_buttonimage.64, c_buttonimage.64
	imul	r15, r15, 1616	# tmp2455, c_buttonimage.64,
	add	r15, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp2457,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp2457
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.10894
	mov	rdi, r15	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, r13	#, lab
	mov	rdi, r15	#, butimg
	call	Widget_addVParam	#
	mov	edx, 2	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r15	#, butimg
	call	Widget_addVParam	#
	mov	QWORD PTR [r15+8], OFFSET FLAT:button_change_hist_stretch_nodes	# MEM[(struct Widget *)butimg_1323].click_handler,
	mov	DWORD PTR [r15+152], 0	# MEM[(struct Widget *)butimg_1323].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r15	#, butimg
	mov	rdi, r14	#, sliy2
	call	StackList_addWidgetLast	#
	mov	rax, QWORD PTR [r14]	# MEM[(struct coObject *)sliy2_1310].class, MEM[(struct coObject *)sliy2_1310].class
	mov	rax, QWORD PTR [rax+16]	# D.10739_1326->vtable, D.10739_1326->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10740_1327 + 8B], MEM[(const void * *)D.10740_1327 + 8B]
	mov	rdi, r14	#, sliy2
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10742_1329].refresh
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, sliy2
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
	imul	r13, r13, 1744	# tmp2463, c_button.85,
	add	r13, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp2465,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp2465
	mov	esi, OFFSET FLAT:.LC75	#,
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
	mov	QWORD PTR [r13+8], OFFSET FLAT:button_hist_stretch_apply	# MEM[(struct Widget *)but_1335].click_handler,
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
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)slix_1304].class, MEM[(struct coObject *)slix_1304].class
	mov	rax, QWORD PTR [rax+16]	# D.10747_1338->vtable, D.10747_1338->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10748_1339 + 8B], MEM[(const void * *)D.10748_1339 + 8B]
	mov	rdi, r12	#, slix
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10750_1341].refresh
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, slix
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addWidgetLast	#
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)fmenu_1269].class, MEM[(struct coObject *)fmenu_1269].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1343->vtable, D.10708_1343->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1344 + 8B], MEM[(const void * *)D.10709_1344 + 8B]
	mov	rdi, rbx	#, fmenu
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_1346].refresh
	mov	rax, QWORD PTR [rbx]	# MEM[(struct coObject *)fmenu_1269].class, MEM[(struct coObject *)fmenu_1269].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1348->vtable, D.10708_1348->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1349 + 8B], MEM[(const void * *)D.10709_1349 + 8B]
	mov	esi, 0	#,
	mov	rdi, rbx	#, fmenu
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_1351].setVisible
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2481,
	lea	rcx, [rdx+rdx*4]	# tmp2483,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	r12, [rdx+rcx*8]	# fmenu,
	add	eax, 1	# tmp2486,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2486
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
	mov	BYTE PTR [r12+157], 1	# MEM[(struct Widget *)fmenu_1357].draggable,
	mov	rsi, r12	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC78	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC79	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC80	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 2	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC81	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 3	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC82	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	r8d, 4	#,
	mov	ecx, OFFSET FLAT:button_generic_filter_apply	#,
	mov	edx, OFFSET FLAT:.LC83	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)fmenu_1357].class, MEM[(struct coObject *)fmenu_1357].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1367->vtable, D.10708_1367->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1368 + 8B], MEM[(const void * *)D.10709_1368 + 8B]
	mov	rdi, r12	#, fmenu
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_1370].refresh
	mov	rax, QWORD PTR [r12]	# MEM[(struct coObject *)fmenu_1357].class, MEM[(struct coObject *)fmenu_1357].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1372->vtable, D.10708_1372->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1373 + 8B], MEM[(const void * *)D.10709_1373 + 8B]
	mov	esi, 0	#,
	mov	rdi, r12	#, fmenu
	call	[QWORD PTR [rax+32]]	# MEM[(struct IWidget *)D.10711_1375].setVisible
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_generic_filter_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	mov	rdx, QWORD PTR image[rip]	# tmp2497, image
	add	rdx, 176	# tmp2497,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_generic_filter_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addCParam	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.74, c_fm
	movzx	edx, ax	# c_fm.74, c_fm.74
	lea	rdx, [rdx+rdx*4]	# tmp2502,
	lea	rcx, [rdx+rdx*4]	# tmp2504,
	mov	rdx, QWORD PTR fm[rip]	# fm, fm
	lea	rbp, [rdx+rcx*8]	# fmenu,
	add	eax, 1	# tmp2507,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp2507
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
	mov	BYTE PTR [rbp+157], 1	# MEM[(struct Widget *)fmenu_1386].draggable,
	mov	rsi, rbp	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC84	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	mov	r8d, 0	#,
	mov	ecx, OFFSET FLAT:button_view_click	#,
	mov	edx, OFFSET FLAT:.LC85	#,
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
	mov	edx, OFFSET FLAT:.LC56	#,
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
	mov	edx, OFFSET FLAT:.LC62	#,
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
	mov	edx, OFFSET FLAT:.LC64	#,
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
	mov	edx, OFFSET FLAT:.LC69	#,
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
	mov	edx, OFFSET FLAT:.LC76	#,
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
	mov	edx, OFFSET FLAT:.LC78	#,
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
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct coObject *)fmenu_1386].class, MEM[(struct coObject *)fmenu_1386].class
	mov	rax, QWORD PTR [rax+16]	# D.10708_1412->vtable, D.10708_1412->vtable
	mov	rax, QWORD PTR [rax+8]	# MEM[(const void * *)D.10709_1413 + 8B], MEM[(const void * *)D.10709_1413 + 8B]
	mov	rdi, rbp	#, fmenu
	call	[QWORD PTR [rax+16]]	# MEM[(struct IWidget *)D.10711_1415].refresh
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
	mov	edx, OFFSET FLAT:.LC86	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	BYTE PTR is_inited[rip], 1	# is_inited,
	mov	eax, 0	# D.10651,
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
.LFE108:
	.size	GraphicsMain_createInterface, .-GraphicsMain_createInterface
	.section	.rodata.str1.8
	.align 8
.LC87:
	.string	"GraphicsMain_Initialize: Screen_new failed with error %s\n"
	.align 8
.LC88:
	.string	"GraphicsMain_Initialize:GraphicsMain failed\n"
	.text
	.globl	GraphicsMain_Initialize
	.type	GraphicsMain_Initialize, @function
GraphicsMain_Initialize:
.LFB109:
	.cfi_startproc
	mov	eax, 0	# D.10615,
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L58	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [rsp+12], 0	# e,
	mov	edx, 1347	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rax, QWORD PTR Screen_class[rip]	# Screen_class, Screen_class
	mov	rdi, QWORD PTR [rax]	#, Screen_class.36_4->size
	call	wmalloc	#
	mov	edx, 0	#,
	lea	rsi, [rsp+12]	#,
	mov	rdi, rax	#, D.10618
	call	Screen_new	#
	mov	QWORD PTR sc[rip], rax	# sc, sc.37
	mov	edi, DWORD PTR [rsp+12]	# e.38, e
	test	edi, edi	# e.38
	je	.L53	#,
	call	perr_getName	#
	mov	rcx, rax	#, D.10623
	mov	edx, OFFSET FLAT:.LC87	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 1350	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.10626
	call	wfree	#
	mov	eax, 1	# D.10615,
	jmp	.L52	#
.L53:
	mov	edx, 34	#,
	mov	esi, OFFSET FLAT:click_handler	#,
	mov	rdi, rax	#, sc.37
	call	Screen_CallbackCreate	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	mov	QWORD PTR [rax+96], OFFSET FLAT:gdragon_toogle	# sc.40_17->toogle_drag_on,
	mov	ecx, 1357	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip], rax	# colors, D.10628
	mov	ecx, 1358	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip+8], rax	# colors, D.10629
	mov	ecx, 1359	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip+16], rax	# colors, D.10630
	mov	eax, 4294967295	#,
	mov	QWORD PTR t[rip], rax	# t,
	mov	eax, 0	#,
	call	GraphicsMain_createInterface	#
	mov	edx, eax	# D.10631,
	mov	eax, 0	# D.10615,
	test	edx, edx	# D.10631
	je	.L52	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 44	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC88	#,
	call	fwrite	#
	mov	eax, 1	# D.10615,
.L52:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
.L58:
	rep
	ret
	.cfi_endproc
.LFE109:
	.size	GraphicsMain_Initialize, .-GraphicsMain_Initialize
	.section	.rodata.str1.8
	.align 8
.LC89:
	.string	"GraphicsMain_Main:GraphicsMain SubProgram NOT initialized\n"
	.text
	.globl	GraphicsMain_Main
	.type	GraphicsMain_Main, @function
GraphicsMain_Main:
.LFB110:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L60	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 58	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC89	#,
	call	fwrite	#
	mov	eax, 1	# D.10607,
	jmp	.L61	#
.L60:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_MainStart	#
	mov	eax, 0	# D.10607,
.L61:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE110:
	.size	GraphicsMain_Main, .-GraphicsMain_Main
	.globl	GraphicsMain_Destroy
	.type	GraphicsMain_Destroy, @function
GraphicsMain_Destroy:
.LFB111:
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
	mov	edx, 1387	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.10503
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L65:
	mov	rdi, QWORD PTR background[rip]	# background.2, background
	test	rdi, rdi	# background.2
	je	.L66	#,
	call	delete	#
	mov	edx, 1388	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.10507
	call	wfree	#
.L66:
	cmp	QWORD PTR image[rip], 0	# image,
	je	.L67	#,
	cmp	WORD PTR c_image[rip], 0	# c_image,
	je	.L68	#,
	mov	ebx, 0	# i,
.L69:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*4]	# tmp217,
	lea	rdi, [rax+rdx*2]	# tmp219,
	sal	rdi, 4	# tmp220,
	add	rdi, QWORD PTR image[rip]	# tmp221, image
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_image[rip], bx	# c_image, i
	ja	.L69	#,
.L68:
	mov	edx, 1390	#,
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
	lea	rax, [rax+rax*4]	# tmp226,
	lea	rdx, [rax+rax*4]	# tmp228,
	mov	rax, QWORD PTR text_block[rip]	# text_block, text_block
	lea	rdi, [rax+rdx*8]	# tmp230,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_textblock[rip], bx	# c_textblock, i
	ja	.L72	#,
.L71:
	mov	edx, 1391	#,
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
	imul	rdi, rdi, 1744	# tmp233, i,
	add	rdi, QWORD PTR button[rip]	# tmp234, button
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_button[rip], bx	# c_button, i
	ja	.L75	#,
.L74:
	mov	edx, 1392	#,
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
	imul	rdi, rdi, 392	# tmp237, i,
	add	rdi, QWORD PTR label[rip]	# tmp238, label
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_label[rip], bx	# c_label, i
	ja	.L78	#,
.L77:
	mov	edx, 1393	#,
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
	imul	rdi, rdi, 360	# tmp241, i,
	add	rdi, QWORD PTR labelimage[rip]	# tmp242, labelimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_labelimage[rip], bx	# c_labelimage, i
	ja	.L81	#,
.L80:
	mov	edx, 1394	#,
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
	imul	rdi, rdi, 1616	# tmp245, i,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp246, buttonimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_buttonimage[rip], bx	# c_buttonimage, i
	ja	.L84	#,
.L83:
	mov	edx, 1395	#,
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
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*4]	# tmp251,
	lea	rdi, [rax+rdx*2]	# tmp253,
	sal	rdi, 4	# tmp254,
	add	rdi, QWORD PTR rectangle[rip]	# tmp255, rectangle
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_rectangle[rip], bx	# c_rectangle, i
	ja	.L87	#,
.L86:
	mov	edx, 1396	#,
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
	lea	rdi, [rax+rax*2]	# tmp260,
	sal	rdi, 6	# tmp261,
	add	rdi, QWORD PTR histogram[rip]	# tmp262, histogram
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_histogram[rip], bx	# c_histogram, i
	ja	.L90	#,
.L89:
	mov	edx, 1397	#,
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
	imul	rdi, rdi, 232	# tmp265, i,
	add	rdi, QWORD PTR pdb[rip]	# tmp266, pdb
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_pdb[rip], bx	# c_pdb, i
	ja	.L93	#,
.L92:
	mov	edx, 1398	#,
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
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 624	# tmp269, i,
	add	rdi, QWORD PTR hsg[rip]	# tmp270, hsg
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_hsg[rip], bx	# c_hsg, i
	ja	.L96	#,
.L95:
	mov	edx, 1399	#,
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
	lea	rax, [rax+rax*4]	# tmp275,
	lea	rdx, [rax+rax*4]	# tmp277,
	mov	rax, QWORD PTR stacklist[rip]	# stacklist, stacklist
	lea	rdi, [rax+rdx*8]	# tmp279,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_stacklist[rip], bx	# c_stacklist, i
	ja	.L99	#,
.L98:
	mov	edx, 1400	#,
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
	lea	rax, [rax+rax*4]	# tmp284,
	lea	rdx, [rax+rax*4]	# tmp286,
	mov	rax, QWORD PTR fm[rip]	# fm, fm
	lea	rdi, [rax+rdx*8]	# tmp288,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_fm[rip], bx	# c_fm, i
	ja	.L102	#,
.L101:
	mov	edx, 1401	#,
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
	lea	rdx, [rax+rax*2]	# tmp293,
	lea	rdi, [rax+rdx*4]	# tmp295,
	sal	rdi, 4	# tmp296,
	add	rdi, QWORD PTR grid[rip]	# tmp297, grid
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_grid[rip], bx	# c_grid, i
	ja	.L105	#,
.L104:
	mov	edx, 1402	#,
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
	mov	edx, 1403	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR gtsf[rip]	#, gtsf
	call	wfree	#
	mov	QWORD PTR gtsf[rip], 0	# gtsf,
.L106:
	mov	rdi, QWORD PTR font2[rip]	# font2.30, font2
	test	rdi, rdi	# font2.30
	je	.L107	#,
	mov	edx, 1405	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font2[rip], 0	# font2,
.L107:
	mov	rdi, QWORD PTR font4[rip]	# font4.31, font4
	test	rdi, rdi	# font4.31
	je	.L108	#,
	mov	edx, 1406	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font4[rip], 0	# font4,
.L108:
	mov	rdi, QWORD PTR colors[rip]	# D.10593, colors
	test	rdi, rdi	# D.10593
	je	.L109	#,
	mov	edx, 1408	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR colors[rip], 0	# colors,
.L109:
	mov	rdi, QWORD PTR colors[rip+8]	# D.10596, colors
	test	rdi, rdi	# D.10596
	je	.L110	#,
	mov	edx, 1409	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR colors[rip+8], 0	# colors,
.L110:
	mov	rdi, QWORD PTR colors[rip+16]	# D.10599, colors
	test	rdi, rdi	# D.10599
	je	.L111	#,
	mov	edx, 1410	#,
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
.LFE111:
	.size	GraphicsMain_Destroy, .-GraphicsMain_Destroy
	.comm	IMAGE_SUPPORTED_FILES,8,8
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
.LC90:
	.string	"red"
.LC91:
	.string	"green"
.LC92:
	.string	"blue"
	.data
	.align 16
	.type	HIST_NAMES, @object
	.size	HIST_NAMES, 24
HIST_NAMES:
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.local	colors
	.comm	colors,24,16
	.local	c_grid
	.comm	c_grid,2,2
	.local	c_pdb
	.comm	c_pdb,2,2
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10438, @object
	.size	__FUNCTION__.10438, 29
__FUNCTION__.10438:
	.string	"GraphicsMain_createInterface"
	.data
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
