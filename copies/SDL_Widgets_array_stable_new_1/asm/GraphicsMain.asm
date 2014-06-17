	.file	"GraphicsMain.c"
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
# -D _GNU_SOURCE=1 -D _REENTRANT GraphicsMain.c -march=core2 -mcx16 -msahf
# -mno-movbe -mno-aes -mno-pclmul -mno-popcnt -mno-abm -mno-lwp -mno-fma
# -mno-fma4 -mno-xop -mno-bmi -mno-bmi2 -mno-tbm -mno-avx -mno-avx2
# -mno-sse4.2 -mno-sse4.1 -mno-lzcnt -mno-rdrnd -mno-f16c -mno-fsgsbase
# --param l1-cache-size=32 --param l1-cache-line-size=64
# --param l2-cache-size=4096 -mtune=core2 -msse3 -masm=intel
# -auxbase-strip /home/darek/Dropbox/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/asm/GraphicsMain.asm
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
	cmp	BYTE PTR [rdi+131], 0	# screen_2(D)->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp72,
	mov	edx, OFFSET FLAT:.LC1	# tmp71,
	cmovne	rdx, rax	# tmp71,, iftmp.108, tmp72
	mov	rax, QWORD PTR label[rip]	# label, label
	mov	rax, QWORD PTR [rax+288]	# label.109_6->text_block.text, label.109_6->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp69,* iftmp.108
	mov	QWORD PTR [rax+15], rcx	#, tmp69
	mov	edx, DWORD PTR [rdx+8]	# tmp70,
	mov	DWORD PTR [rax+23], edx	#, tmp70
	mov	rdi, QWORD PTR label[rip]	#, label
	call	Label_refresh	#
	mov	BYTE PTR [rbx+132], 1	# screen_2(D)->need_reload,
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
	.string	"GraphicsMain_createInterface:GraphicsMain failed to load font \"fonts/ariblk.ttf\"\n"
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
	.string	"GraphicsMain_createInterface:GraphicsMain failed to load font \"onts/verdanab.ttf\"\n"
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
	mov	ecx, 153	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 152	#,
	mov	edi, 3	#,
	call	wcalloc	#
	mov	QWORD PTR image[rip], rax	# image, image.41
	mov	QWORD PTR text_block[rip], 0	# text_block,
	mov	ecx, 155	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1528	#,
	mov	edi, 58	#,
	call	wcalloc	#
	mov	QWORD PTR button[rip], rax	# button, button.42
	mov	ecx, 156	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 344	#,
	mov	edi, 31	#,
	call	wcalloc	#
	mov	QWORD PTR label[rip], rax	# label, label.43
	mov	QWORD PTR labelimage[rip], 0	# labelimage,
	mov	ecx, 158	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 1400	#,
	mov	edi, 54	#,
	call	wcalloc	#
	mov	QWORD PTR buttonimage[rip], rax	# buttonimage, buttonimage.44
	mov	QWORD PTR rectangle[rip], 0	# rectangle,
	mov	ecx, 160	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 168	#,
	mov	edi, 3	#,
	call	wcalloc	#
	mov	QWORD PTR histogram[rip], rax	# histogram, histogram.45
	mov	ecx, 161	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 208	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR pdb[rip], rax	# pdb, pdb.46
	mov	ecx, 162	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 552	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	QWORD PTR hsg[rip], rax	# hsg, hsg.47
	mov	ecx, 163	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 184	#,
	mov	edi, 60	#,
	call	wcalloc	#
	mov	QWORD PTR stacklist[rip], rax	# stacklist, stacklist.48
	mov	ecx, 164	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 184	#,
	mov	edi, 2	#,
	call	wcalloc	#
	mov	QWORD PTR grid[rip], rax	# grid, grid.49
	mov	ecx, 165	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 184	#,
	mov	edi, 20	#,
	call	wcalloc	#
	mov	QWORD PTR fm[rip], rax	# fm, fm.50
	mov	esi, 20	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	call	Static_getFont	#
	mov	QWORD PTR font2[rip], rax	# font2, font2.51
	test	rax, rax	# font2.51
	jne	.L6	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 81	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	fwrite	#
	mov	eax, 1	# D.9773,
	jmp	.L7	#
.L6:
	mov	rdi, rax	#, font2.51
	call	TTF_FontHeight	#
	mov	ecx, eax	#, D.9774
	mov	edx, OFFSET FLAT:.LC9	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	ecx, 173	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 152	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	esi, OFFSET FLAT:.LC10	#,
	mov	rdi, rax	#, D.9775
	call	Image_new	#
	mov	QWORD PTR background[rip], rax	# background, background.54
	mov	edx, 0	#,
	mov	rsi, rax	#, background.54
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_setBackgroundWidget	#
	mov	ecx, 179	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 16	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	wTTF_OpenFont	#
	mov	QWORD PTR font4[rip], rax	# font4, font4.57
	test	rax, rax	# font4.57
	jne	.L8	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 82	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC12	#,
	call	fwrite	#
	mov	eax, 1	# D.9773,
	jmp	.L7	#
.L8:
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	ecx, 200	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 72	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	rdi, rax	#, D.9783
	call	GToolsSplotFilter_new	#
	mov	QWORD PTR gtsf[rip], rax	# gtsf, gtsf.59
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	ebx, ax	# c_buttonimage.61, c_buttonimage.61
	imul	rbx, rbx, 1400	# tmp1244, c_buttonimage.61,
	add	rbx, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1246,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1246
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
	mov	QWORD PTR [rbx+16], OFFSET FLAT:Screen_buttonExitClicked	# MEM[(struct Widget *)butimg_54].click_handler,
	mov	rsi, rbx	#, butimg
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1248, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1250,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1250
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	cmp	BYTE PTR [rax+131], 0	# sc.56_63->drag_on,
	mov	eax, OFFSET FLAT:.LC0	# tmp1920,
	mov	edx, OFFSET FLAT:.LC1	# tmp1919,
	cmovne	rdx, rax	# tmp1919,, iftmp.66, tmp1920
	mov	rax, QWORD PTR [rbx+288]	# lab_61->text_block.text, lab_61->text_block.text
	mov	rcx, QWORD PTR [rdx]	# tmp1254,* iftmp.66
	mov	QWORD PTR [rax+15], rcx	#, tmp1254
	mov	edx, DWORD PTR [rdx+8]	# tmp1255,
	mov	DWORD PTR [rax+23], edx	#, tmp1255
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
	movzx	edx, WORD PTR c_image[rip]	# c_image.68, c_image
	movzx	eax, dx	# c_image.68, c_image.68
	lea	rcx, [rax+rax*8]	# tmp1259,
	lea	rcx, [rax+rcx*2]	# tmp1261,
	mov	rax, QWORD PTR image[rip]	# image, image
	lea	rbp, [rax+rcx*8]	# img,
	add	edx, 1	# tmp1264,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp1264
	mov	ecx, 546	#,
	mov	edx, 159	#,
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbp	#, img
	call	Image_new	#
	mov	BYTE PTR [rbp+128], 1	# MEM[(struct Widget *)img_75].draggable,
	mov	DWORD PTR [rbp+116], 0	# MEM[(struct Widget *)img_75].id,
	mov	rsi, rbp	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_image[rip]	# c_image.68, c_image
	movzx	eax, dx	# c_image.68, c_image.68
	lea	rcx, [rax+rax*8]	# tmp1268,
	lea	rcx, [rax+rcx*2]	# tmp1270,
	mov	rax, QWORD PTR image[rip]	# image, image
	lea	rbx, [rax+rcx*8]	# img,
	add	edx, 1	# tmp1273,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp1273
	movzx	ecx, WORD PTR [rbp+58]	# MEM[(struct Widget *)img_75].pos.y, MEM[(struct Widget *)img_75].pos.y
	movzx	edx, WORD PTR [rbp+112]	# MEM[(struct Widget *)img_75].maxx, MEM[(struct Widget *)img_75].maxx
	add	edx, 10	# tmp1275,
	movzx	edx, dx	# tmp1277, tmp1275
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbx	#, img
	call	Image_new	#
	mov	BYTE PTR [rbx+128], 1	# MEM[(struct Widget *)img_83].draggable,
	mov	DWORD PTR [rbx+116], 1	# MEM[(struct Widget *)img_83].id,
	mov	rsi, rbx	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	edx, WORD PTR c_image[rip]	# c_image.68, c_image
	movzx	eax, dx	# c_image.68, c_image.68
	lea	rcx, [rax+rax*8]	# tmp1281,
	lea	rcx, [rax+rcx*2]	# tmp1283,
	mov	rax, QWORD PTR image[rip]	# image, image
	lea	rbp, [rax+rcx*8]	# img,
	add	edx, 1	# tmp1286,
	mov	WORD PTR c_image[rip], dx	# c_image, tmp1286
	movzx	ecx, WORD PTR [rbx+58]	# MEM[(struct Widget *)img_83].pos.y, MEM[(struct Widget *)img_83].pos.y
	movzx	edx, WORD PTR [rbx+112]	# MEM[(struct Widget *)img_83].maxx, MEM[(struct Widget *)img_83].maxx
	add	edx, 10	# tmp1288,
	movzx	edx, dx	# tmp1290, tmp1288
	mov	esi, OFFSET FLAT:.LC15	#,
	mov	rdi, rbp	#, img
	call	Image_new	#
	mov	BYTE PTR [rbp+128], 1	# MEM[(struct Widget *)img_97].draggable,
	mov	BYTE PTR [rbp+130], 0	# MEM[(struct Widget *)img_97].visible,
	mov	DWORD PTR [rbp+116], 2	# MEM[(struct Widget *)img_97].id,
	mov	rsi, rbp	#, img
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	ebx, ax	# c_fm.71, c_fm.71
	imul	rbx, rbx, 184	# tmp1292, c_fm.71,
	add	rbx, QWORD PTR fm[rip]	# fmenu, fm
	add	eax, 1	# tmp1294,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1294
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
	mov	BYTE PTR [rbx+128], 1	# MEM[(struct Widget *)fmenu_110].draggable,
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
	call	FloatingMenu_refresh	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1297, image
	add	rdx, 152	# tmp1297,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1303, image
	add	rdx, 152	# tmp1303,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_src_save	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_src_to_dest	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1309, image
	add	rdx, 152	# tmp1309,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_src_to_dest	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	ebx, ax	# c_fm.71, c_fm.71
	imul	rbx, rbx, 184	# tmp1312, c_fm.71,
	add	rbx, QWORD PTR fm[rip]	# fmenu, fm
	add	eax, 1	# tmp1314,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1314
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
	mov	BYTE PTR [rbx+128], 1	# MEM[(struct Widget *)fmenu_145].draggable,
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
	mov	rsi, QWORD PTR image[rip]	# tmp1315, image
	add	rsi, 152	# tmp1315,
	mov	edx, 1	#,
	mov	rdi, rax	#, but
	call	Widget_addParameter	#
.L10:
	mov	r8d, 1	#,
	mov	ecx, OFFSET FLAT:button_dest_resize	#,
	mov	edx, OFFSET FLAT:.LC27	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addMenuButtonLast	#
	test	rax, rax	# but
	je	.L11	#,
	mov	rsi, QWORD PTR image[rip]	# tmp1317, image
	add	rsi, 152	# tmp1317,
	mov	edx, 1	#,
	mov	rdi, rax	#, but
	call	Widget_addParameter	#
.L11:
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_refresh	#
	mov	rdx, QWORD PTR image[rip]	# tmp1319, image
	add	rdx, 152	# tmp1319,
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_dest_save	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1323, image
	add	rdx, 152	# tmp1323,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1327, image
	add	rdx, 152	# tmp1327,
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_dest_negative	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_destaturize_std	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1331, image
	add	rdx, 152	# tmp1331,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_destaturize_std	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	r13d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1334, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1334, fm
	mov	QWORD PTR [rsp+192], rdx	# %sfp, tmp1334
	add	eax, 1	# tmp1336,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1336
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
	mov	BYTE PTR [rax+128], 1	# MEM[(struct Widget *)fmenu_185].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC28	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1338, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1340,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1340
	mov	esi, OFFSET FLAT:.LC29	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# tmp1342, lab_194->text_block.text
	add	rdi, 11	# tmp1342,
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
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1346, image
	add	rdx, 152	# tmp1346,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_brightness_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1354, image
	add	rdx, 152	# tmp1354,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1358, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1360,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1360
	mov	esi, OFFSET FLAT:.LC31	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movss	xmm0, DWORD PTR img_mul[rip]	# tmp1361, img_mul
	cvtps2pd	xmm0, xmm0	# tmp1361, tmp1361
	mov	rdi, QWORD PTR [rbx+288]	# tmp1362, lab_220->text_block.text
	add	rdi, 11	# tmp1362,
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
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1367, image
	add	rdx, 152	# tmp1367,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_contrast_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1374, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1376,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1376
	mov	esi, OFFSET FLAT:.LC33	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	cmp	BYTE PTR img_overflow[rip], 0	# img_overflow,
	mov	eax, OFFSET FLAT:.LC2	# tmp1922,
	mov	esi, OFFSET FLAT:.LC3	# tmp1921,
	cmovne	rsi, rax	# tmp1921,, iftmp.76, tmp1922
	mov	rdi, QWORD PTR [rbx+288]	# tmp1377, lab_241->text_block.text
	add	rdi, 9	# tmp1377,
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
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1381, image
	add	rdx, 152	# tmp1381,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_overflow_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:img_off	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:img_mul	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 7	#,
	mov	edx, OFFSET FLAT:img_overflow	#,
	mov	esi, OFFSET FLAT:button_brightness_reset	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, r13w	# D.9847, label_off
	lea	r15d, [rax+3]	# D.9849,
	cmp	eax, r15d	# D.9847, D.9849
	jge	.L41	#,
	mov	ebx, 4	# f,
.L14:
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebp, ax	# c_stacklist.79, c_stacklist.79
	imul	rbp, rbp, 184	# tmp1392, c_stacklist.79,
	add	rbp, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1394,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1394
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1396, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1398,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1398
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9840
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	movzx	r14d, bx	# D.9841, f
	mov	rax, QWORD PTR click_handler[0+r14*8]	# D.9842, click_handler
	mov	QWORD PTR [r12+16], rax	# MEM[(struct Widget *)butimg_277].click_handler, D.9842
	mov	DWORD PTR [r12+116], 1	# MEM[(struct Widget *)butimg_277].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1402, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1404,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1404
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9843
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+r14*8]	# D.9842, click_handler
	mov	QWORD PTR [r12+16], rax	# MEM[(struct Widget *)butimg_286].click_handler, D.9842
	mov	DWORD PTR [r12+116], 0	# MEM[(struct Widget *)butimg_286].id,
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
	call	StackList_refresh	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r12d, ax	# c_stacklist.79, c_stacklist.79
	imul	r12, r12, 184	# tmp1408, c_stacklist.79,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1410,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1410
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
	imul	rsi, rsi, 344	# tmp1412, k,
	add	rsi, QWORD PTR label[rip]	# tmp1413, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, r12	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, r12	#, slix
	call	StackList_refresh	#
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
	cmp	eax, r15d	# k, D.9849
	jl	.L14	#,
	jmp	.L13	#
.L41:
	mov	ebx, 4	# f,
.L13:
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	ebp, ax	# c_button.82, c_button.82
	imul	rbp, rbp, 1528	# tmp1417, c_button.82,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1419,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1419
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
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_brightness_reset	# MEM[(struct Widget *)but_307].click_handler,
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+192]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1421, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1421, fm
	mov	QWORD PTR [rsp+208], rdx	# %sfp, tmp1421
	add	eax, 1	# tmp1423,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1423
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
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	BYTE PTR [rdx+128], 1	# MEM[(struct Widget *)fmenu_314].draggable,
	mov	rsi, rdx	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	r8d, 0	#,
	mov	ecx, 7	#,
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	edx, OFFSET FLAT:.LC35	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	edx, WORD PTR c_histogram[rip]	# c_histogram.84, c_histogram
	movzx	eax, dx	# c_histogram.84, c_histogram.84
	lea	rcx, [rax+rax*4]	# tmp1427,
	lea	rcx, [rax+rcx*4]	# tmp1429,
	mov	rax, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rbp, [rax+rcx*8]	# hist,
	add	edx, 1	# tmp1432,
	mov	WORD PTR c_histogram[rip], dx	# c_histogram, tmp1432
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 16711680	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rdi, rbp	#, hist
	call	Histogram_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 5	#,
	mov	r8d, 2	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hist
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	edx, WORD PTR c_histogram[rip]	# c_histogram.84, c_histogram
	movzx	eax, dx	# c_histogram.84, c_histogram.84
	lea	rcx, [rax+rax*4]	# tmp1436,
	lea	rcx, [rax+rcx*4]	# tmp1438,
	mov	rax, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rbp, [rax+rcx*8]	# hist,
	add	edx, 1	# tmp1441,
	mov	WORD PTR c_histogram[rip], dx	# c_histogram, tmp1441
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 65280	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rdi, rbp	#, hist
	call	Histogram_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 2	#,
	mov	r9d, 5	#,
	mov	r8d, 2	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hist
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	edx, WORD PTR c_histogram[rip]	# c_histogram.84, c_histogram
	movzx	eax, dx	# c_histogram.84, c_histogram.84
	lea	rcx, [rax+rax*4]	# tmp1445,
	lea	rcx, [rax+rcx*4]	# tmp1447,
	mov	rax, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rbp, [rax+rcx*8]	# hist,
	add	edx, 1	# tmp1450,
	mov	WORD PTR c_histogram[rip], dx	# c_histogram, tmp1450
	mov	rdi, rbp	#, hist
	call	Histogram_new	#
	mov	esi, 255	#,
	mov	rdi, rbp	#, hist
	call	Histogram_setColor	#
	mov	rdi, rbp	#, hist
	call	Histogram_refresh	#
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+208]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	r15d, WORD PTR c_label[rip]	# label_off, c_label
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1452, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1452, fm
	mov	QWORD PTR [rsp+200], rdx	# %sfp, tmp1452
	add	eax, 1	# tmp1454,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1454
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
	mov	BYTE PTR [rax+128], 1	# MEM[(struct Widget *)fmenu_343].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC36	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# lab_algo_ind, c_label
	movzx	r13d, ax	# lab_algo_ind, lab_algo_ind
	imul	r13, r13, 344	# D.9794, lab_algo_ind,
	mov	rbp, QWORD PTR label[rip]	# lab, label
	add	rbp, r13	# lab, D.9794
	add	eax, 1	# tmp1457,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1457
	mov	esi, OFFSET FLAT:.LC37	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	cmp	BYTE PTR t_algo[rip], 0	# t_algo,
	mov	eax, OFFSET FLAT:.LC4	# tmp1924,
	mov	r8d, OFFSET FLAT:.LC5	# tmp1923,
	cmovne	r8, rax	# tmp1923,, iftmp.86, tmp1924
	mov	rdi, QWORD PTR [rbp+288]	# tmp1458, lab_353->text_block.text
	add	rdi, 10	# tmp1458,
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
	imul	r12, r12, 344	# D.9794, lab_hist_ind,
	mov	rbp, QWORD PTR label[rip]	# lab, label
	add	rbp, r12	# lab, D.9794
	add	eax, 1	# tmp1462,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1462
	mov	esi, OFFSET FLAT:.LC39	#,
	mov	rdi, rbp	#, lab
	call	Label_new	#
	movzx	eax, BYTE PTR num_hist[rip]	# num_hist, num_hist
	mov	rdi, QWORD PTR [rbp+288]	# tmp1467, lab_366->text_block.text
	add	rdi, 18	# tmp1467,
	mov	r8, QWORD PTR hist_names[0+rax*8]	#, hist_names
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
	imul	rdx, rdx, 344	#, lab_thr_ind,
	mov	QWORD PTR [rsp+176], rdx	# %sfp,
	mov	rbp, rdx	# lab,
	add	rbp, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1471,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1471
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
	call	Screen_addParameter	#
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	rdx, rbp	#, lab
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	rdx, rbp	#, lab
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	rdx, rbp	#, lab
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR label[rip]	# tmp1473, label
	add	rdx, r13	# tmp1473, D.9794
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:t_algo	#,
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR label[rip]	# tmp1478, label
	add	rdx, r12	# tmp1478, D.9794
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR [rsp+176]	# tmp1481, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1481, label
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:num_hist	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	edx, OFFSET FLAT:hist_names	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:colors	#,
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	esi, OFFSET FLAT:button_create_histograms_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR [rsp+176]	# tmp1491, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1491, label
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_threshold_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_threshold_change	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_threshold_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1496, image
	add	rdx, 152	# tmp1496,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_threshold_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_threshold_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_dest_splotfilter	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1501, image
	add	rdx, 152	# tmp1501,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_dest_splotfilter	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR gtsf[rip]	#, gtsf
	mov	esi, OFFSET FLAT:button_dest_splotfilter	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, r15w	# D.9847, label_off
	lea	edx, [rax+3]	#,
	mov	DWORD PTR [rsp+168], edx	# %sfp,
	cmp	eax, edx	# D.9847,
	jge	.L16	#,
.L18:
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r12d, ax	# c_stacklist.79, c_stacklist.79
	imul	r12, r12, 184	# tmp1505, c_stacklist.79,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1507,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1507
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r14, r14, 1400	# tmp1509, c_buttonimage.61,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1511,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1511
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9879
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	movzx	ebp, bx	# D.9841, f
	mov	rax, QWORD PTR click_handler[0+rbp*8]	# D.9842, click_handler
	mov	QWORD PTR [r14+16], rax	# MEM[(struct Widget *)butimg_445].click_handler, D.9842
	mov	DWORD PTR [r14+116], 1	# MEM[(struct Widget *)butimg_445].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r13d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r13, r13, 1400	# tmp1515, c_buttonimage.61,
	add	r13, QWORD PTR buttonimage[rip]	# butimg2, buttonimage
	add	eax, 1	# tmp1517,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1517
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9880
	mov	rdi, r13	#, butimg2
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR click_handler[0+rbp*8]	# D.9842, click_handler
	mov	QWORD PTR [r13+16], rax	# MEM[(struct Widget *)butimg2_454].click_handler, D.9842
	mov	DWORD PTR [r13+116], 0	# MEM[(struct Widget *)butimg2_454].id,
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
	call	StackList_refresh	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebp, ax	# c_stacklist.79, c_stacklist.79
	imul	rbp, rbp, 184	# tmp1521, c_stacklist.79,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1523,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1523
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
	imul	rsi, rsi, 344	# tmp1525, k,
	add	rsi, QWORD PTR label[rip]	# tmp1526, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, rbp	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbp	#, slix
	call	StackList_refresh	#
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
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_used_hist_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_bin_algo_toggle	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_dest_to_src	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_src_restore	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	rdx, r14	#, butimg
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 5	#,
	mov	rdx, r13	#, butimg2
	mov	esi, OFFSET FLAT:button_imgsrc_open	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
.L17:
	add	r15d, 1	# k,
	add	ebx, 1	# f,
	movzx	eax, r15w	# k, k
	cmp	eax, DWORD PTR [rsp+168]	# k, %sfp
	jl	.L18	#,
.L16:
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage, c_buttonimage
	imul	rax, rax, 1400	# tmp1542, c_buttonimage,
	mov	rdx, QWORD PTR buttonimage[rip]	# buttonimage, buttonimage
	lea	rdi, [rdx-2800+rax]	# tmp1544,
	mov	esi, 0	#,
	call	ButtonImage_setEnabled	#
	movzx	edi, WORD PTR c_buttonimage[rip]	# c_buttonimage, c_buttonimage
	sub	rdi, 1	# tmp1547,
	imul	rdi, rdi, 1400	# tmp1548, tmp1547,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp1549, buttonimage
	mov	esi, 0	#,
	call	ButtonImage_setEnabled	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebx, ax	# c_stacklist.79, c_stacklist.79
	imul	rbx, rbx, 184	# tmp1552, c_stacklist.79,
	add	rbx, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1554,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1554
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	ebp, ax	# c_button.82, c_button.82
	imul	rbp, rbp, 1528	# tmp1556, c_button.82,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1558,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1558
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
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_bin_create_histograms	# MEM[(struct Widget *)but_505].click_handler,
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
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:colors	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+208]	#, %sfp
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR [rsp+176]	# tmp1564, %sfp
	add	rdx, QWORD PTR label[rip]	# tmp1564, label
	lea	r8, [rsp+252]	#,
	mov	ecx, 6	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 7	#,
	mov	edx, OFFSET FLAT:t	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 8	#,
	mov	edx, OFFSET FLAT:num_hist	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 9	#,
	mov	edx, OFFSET FLAT:t_algo	#,
	mov	esi, OFFSET FLAT:button_bin_create_histograms	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	ebp, ax	# c_button.82, c_button.82
	imul	rbp, rbp, 1528	# tmp1570, c_button.82,
	add	rbp, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1572,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1572
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
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_threshold_apply	# MEM[(struct Widget *)but_526].click_handler,
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
	call	StackList_refresh	#
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+200]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1574, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1574, fm
	mov	QWORD PTR [rsp+224], rdx	# %sfp, tmp1574
	add	eax, 1	# tmp1576,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1576
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
	mov	BYTE PTR [rax+128], 1	# MEM[(struct Widget *)fmenu_533].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC44	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_grid[rip]	# c_grid.91, c_grid
	movzx	edx, ax	# c_grid.91, c_grid.91
	imul	rdx, rdx, 184	# tmp1578, c_grid.91,
	add	rdx, QWORD PTR grid[rip]	# tmp1578, grid
	mov	QWORD PTR [rsp+176], rdx	# %sfp, tmp1578
	add	eax, 1	# tmp1580,
	mov	WORD PTR c_grid[rip], ax	# c_grid, tmp1580
	mov	edx, 6	#,
	mov	esi, 3	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_new	#
	mov	edx, 0	#,
	mov	esi, 10	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Container_setPadding	#
	movzx	eax, WORD PTR c_label[rip]	# c_label, c_label
	imul	rax, rax, 344	# tmp1582, c_label,
	add	rax, QWORD PTR label[rip]	# tmp1582, label
	mov	QWORD PTR [rsp+216], rax	# %sfp, tmp1582
	mov	DWORD PTR [rsp+168], 0	# %sfp,
	mov	WORD PTR [rsp+184], 8	# %sfp,
	jmp	.L19	#
.L21:
	mov	r14d, r13d	# x, ivtmp.161
	movzx	r15d, WORD PTR [rsp+184]	# D.10201, %sfp
	sub	r15d, r14d	# D.10201, x
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1585, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1587,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1587
	mov	esi, OFFSET FLAT:.LC45	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	movzx	r15d, r15w	# D.9847, D.10201
	movsx	rdx, r15d	# D.9847, D.9847
	mov	rax, QWORD PTR gtsf[rip]	# gtsf, gtsf
	movss	xmm0, DWORD PTR [rax+20+rdx*4]	# tmp1591, gtsf.89_559->weight
	cvtps2pd	xmm0, xmm0	# tmp1591, tmp1591
	mov	rdi, QWORD PTR [rbx+288]	# lab_557->text_block.text, lab_557->text_block.text
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
	mov	eax, 0	# tmp1926,
	mov	edx, 20	#,
	cmovne	eax, edx	#,, iftmp.93
	add	r14d, r14d	# D.9900
	lea	ecx, [r14+1]	# tmp1593,
	movzx	ecx, cx	# tmp1594, tmp1593
	mov	DWORD PTR [rsp+24], eax	#, iftmp.93
	mov	DWORD PTR [rsp+16], 10	#,
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 3	#,
	mov	r8d, 4	#,
	mov	edx, DWORD PTR [rsp+168]	#, %sfp
	mov	rsi, rbx	#, lab
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_add	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebp, ax	# c_stacklist.79, c_stacklist.79
	imul	rbp, rbp, 184	# tmp1596, c_stacklist.79,
	add	rbp, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1598,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1598
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1600, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1602,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1602
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9904
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [r12+16], OFFSET FLAT:button_change_filter_weight	# MEM[(struct Widget *)butimg_581].click_handler,
	add	r15d, r15d	# D.9905
	lea	eax, [r15+1]	# tmp1603,
	mov	DWORD PTR [r12+116], eax	# MEM[(struct Widget *)butimg_581].id, tmp1603
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1605, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1607,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1607
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9908
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [r12+16], OFFSET FLAT:button_change_filter_weight	# MEM[(struct Widget *)butimg_592].click_handler,
	mov	DWORD PTR [r12+116], r15d	# MEM[(struct Widget *)butimg_592].id, D.9905
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
	call	StackList_refresh	#
	movzx	ecx, r14w	# D.9900, D.9900
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
	add	r13d, 1	# ivtmp.161,
	cmp	r13d, 3	# ivtmp.161,
	jne	.L21	#,
	sub	WORD PTR [rsp+184], 3	# %sfp,
	add	DWORD PTR [rsp+168], 1	# %sfp,
	cmp	WORD PTR [rsp+184], -1	# %sfp,
	je	.L22	#,
.L19:
	mov	r13d, 0	# ivtmp.161,
	jmp	.L21	#
.L22:
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	Grid_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, QWORD PTR [rsp+176]	#, %sfp
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1610, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1612,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1612
	mov	esi, OFFSET FLAT:.LC47	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR gtsf[rip]	#, gtsf
	call	GToolsSplotFilter_getFilterName	#
	mov	r9, rax	# D.9911,
	mov	rdi, QWORD PTR [rbx+288]	# tmp1613, lab_608->text_block.text
	add	rdi, 5	# tmp1613,
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
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR gtsf[rip]	#, gtsf
	mov	esi, OFFSET FLAT:button_change_filter_weight	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, rbx	#, lab
	mov	esi, OFFSET FLAT:button_change_filter_predef	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	rdx, QWORD PTR gtsf[rip]	#, gtsf
	mov	esi, OFFSET FLAT:button_change_filter_predef	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR [rsp+216]	#, %sfp
	mov	esi, OFFSET FLAT:button_change_filter_predef	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebp, ax	# c_stacklist.79, c_stacklist.79
	imul	rbp, rbp, 184	# tmp1621, c_stacklist.79,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1623,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1623
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbp	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r12d, ax	# c_stacklist.79, c_stacklist.79
	imul	r12, r12, 184	# tmp1625, c_stacklist.79,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1627,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1627
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r13d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r13, r13, 1400	# tmp1629, c_buttonimage.61,
	add	r13, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1631,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1631
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9917
	mov	rdi, r13	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r13+16], OFFSET FLAT:button_change_filter_predef	# MEM[(struct Widget *)butimg_644].click_handler,
	mov	DWORD PTR [r13+116], 1	# MEM[(struct Widget *)butimg_644].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r13	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r13d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r13, r13, 1400	# tmp1633, c_buttonimage.61,
	add	r13, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1635,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1635
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9918
	mov	rdi, r13	#, butimg
	call	ButtonImage_copy	#
	mov	QWORD PTR [r13+16], OFFSET FLAT:button_change_filter_predef	# MEM[(struct Widget *)butimg_651].click_handler,
	mov	DWORD PTR [r13+116], 0	# MEM[(struct Widget *)butimg_651].id,
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
	call	StackList_refresh	#
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
	call	StackList_refresh	#
	mov	DWORD PTR [rsp+8], 5	#,
	mov	DWORD PTR [rsp], 5	#,
	mov	r9d, 5	#,
	mov	r8d, 5	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, slix
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	ebx, ax	# c_button.82, c_button.82
	imul	rbx, rbx, 1528	# tmp1637, c_button.82,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1639,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1639
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
	mov	QWORD PTR [rbx+16], OFFSET FLAT:button_dest_splotfilter	# MEM[(struct Widget *)but_658].click_handler,
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+224]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1641, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1641, fm
	mov	QWORD PTR [rsp+216], rdx	# %sfp, tmp1641
	add	eax, 1	# tmp1643,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1643
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
	mov	BYTE PTR [rax+128], 1	# MEM[(struct Widget *)fmenu_665].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC50	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	edx, WORD PTR c_pdb[rip]	# c_pdb.96, c_pdb
	movzx	eax, dx	# c_pdb.96, c_pdb.96
	lea	rcx, [rax+rax*2]	# tmp1647,
	lea	rbx, [rax+rcx*4]	# tmp1649,
	sal	rbx, 4	# tmp1650,
	add	rbx, QWORD PTR pdb[rip]	# pd, pdb
	add	edx, 1	# tmp1652,
	mov	WORD PTR c_pdb[rip], dx	# c_pdb, tmp1652
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
	mov	BYTE PTR [rbx+180], 1	# pd_674->grid.showBorder,
	mov	rdi, rbx	#, pd
	call	PixelDrawBox_refresh	#
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
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_dilate_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1655, image
	add	rdx, 152	# tmp1655,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_dilate_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_dilate_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_erode_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1660, image
	add	rdx, 152	# tmp1660,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_erode_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_erode_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_morph_open_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1665, image
	add	rdx, 152	# tmp1665,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_morph_open_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_morph_open_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_morph_close_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1670, image
	add	rdx, 152	# tmp1670,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_morph_close_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, rbx	#, pd
	mov	esi, OFFSET FLAT:button_morph_close_click	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_grid[rip]	# c_grid.91, c_grid
	movzx	r14d, ax	# c_grid.91, c_grid.91
	imul	r14, r14, 184	# tmp1674, c_grid.91,
	add	r14, QWORD PTR grid[rip]	# gri, grid
	add	eax, 1	# tmp1676,
	mov	WORD PTR c_grid[rip], ax	# c_grid, tmp1676
	mov	edx, 2	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, gri
	call	Grid_new	#
	mov	edx, 2	#,
	mov	esi, 2	#,
	mov	rdi, r14	#, gri
	call	Container_setPadding	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1678, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1680,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1680
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
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1682, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1684,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1684
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
	mov	r15d, 1	# ivtmp.160,
	mov	ebp, 0	# ivtmp.150,
.L25:
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1686, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1688,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1688
	mov	esi, OFFSET FLAT:.LC53	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	test	bp, bp	# ivtmp.150
	jne	.L23	#,
	mov	rax, QWORD PTR pdb[rip]	# pdb, pdb
	movzx	r9d, WORD PTR [rax+196]	# iftmp.98, pdb.95_729->actY
	jmp	.L24	#
.L23:
	mov	rax, QWORD PTR pdb[rip]	# pdb, pdb
	movzx	r9d, WORD PTR [rax+194]	# iftmp.98, pdb.95_732->actX
.L24:
	mov	rdi, QWORD PTR [rbx+288]	# lab_727->text_block.text, lab_727->text_block.text
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r13d, ax	# c_stacklist.79, c_stacklist.79
	imul	r13, r13, 184	# tmp1694, c_stacklist.79,
	add	r13, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1696,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1696
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r13	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1698, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1700,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1700
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9930
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [r12+16], OFFSET FLAT:button_change_strelem_size	# MEM[(struct Widget *)butimg_747].click_handler,
	lea	eax, [rbp+rbp]	# tmp1701,
	mov	DWORD PTR [r12+116], eax	# MEM[(struct Widget *)butimg_747].id, tmp1701
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, r13	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1703, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1705,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1705
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9932
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 1	#,
	mov	rsi, rbx	#, lab
	mov	rdi, r12	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [r12+16], OFFSET FLAT:button_change_strelem_size	# MEM[(struct Widget *)butimg_756].click_handler,
	mov	DWORD PTR [r12+116], r15d	# MEM[(struct Widget *)butimg_756].id, ivtmp.160
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
	call	StackList_refresh	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r12d, ax	# c_stacklist.79, c_stacklist.79
	imul	r12, r12, 184	# tmp1707, c_stacklist.79,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1709,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1709
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
	call	StackList_refresh	#
	mov	DWORD PTR [rsp+24], 0	#,
	mov	DWORD PTR [rsp+16], 0	#,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, ebp	#, ivtmp.150
	mov	edx, 1	#,
	mov	rsi, r12	#, slix
	mov	rdi, r14	#, gri
	call	Grid_add	#
	add	ebp, 1	# ivtmp.150,
	add	r15d, 2	# ivtmp.160,
	cmp	ebp, 2	# ivtmp.150,
	jne	.L25	#,
	mov	rdi, r14	#, gri
	call	Grid_refresh	#
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+216]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1711, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1711, fm
	mov	QWORD PTR [rsp+168], rdx	# %sfp, tmp1711
	add	eax, 1	# tmp1713,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1713
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
	mov	rdx, QWORD PTR [rsp+168]	#, %sfp
	mov	BYTE PTR [rdx+128], 1	# MEM[(struct Widget *)fmenu_773].draggable,
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+168]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1715, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1715, fm
	mov	QWORD PTR [rsp+184], rdx	# %sfp, tmp1715
	add	eax, 1	# tmp1717,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1717
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
	mov	BYTE PTR [rax+128], 1	# MEM[(struct Widget *)fmenu_791].draggable,
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+184]	#, %sfp
	call	FloatingMenu_setVisible	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	mov	rdx, QWORD PTR image[rip]	# tmp1719, image
	add	rdx, 152	# tmp1719,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:colors	#,
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	rdx, QWORD PTR histogram[rip]	#, histogram
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	rdx, QWORD PTR [rsp+184]	#, %sfp
	mov	esi, OFFSET FLAT:button_histograms_equalize	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1725, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1725, fm
	mov	QWORD PTR [rsp+232], rdx	# %sfp, tmp1725
	add	eax, 1	# tmp1727,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1727
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
	mov	rdx, QWORD PTR [rsp+232]	#, %sfp
	mov	BYTE PTR [rdx+128], 1	# MEM[(struct Widget *)fmenu_809].draggable,
	mov	rsi, rdx	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC63	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	ebx, ax	# c_button.82, c_button.82
	imul	rbx, rbx, 1528	# tmp1729, c_button.82,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1731,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1731
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
	mov	QWORD PTR [rbx+16], OFFSET FLAT:button_reconstruction_marker_open	# MEM[(struct Widget *)but_818].click_handler,
	mov	rsi, QWORD PTR image[rip]	# tmp1732, image
	add	rsi, 304	# tmp1732,
	mov	edx, 2	#,
	mov	rdi, rbx	#, but
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbx	#, but
	call	Widget_addParameter	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 10	#,
	mov	r9d, 0	#,
	mov	r8d, 12	#,
	mov	ecx, 2	#,
	mov	edx, 4	#,
	mov	rsi, rbx	#, but
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1735, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1737,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1737
	mov	esi, OFFSET FLAT:.LC45	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# lab_828->text_block.text, lab_828->text_block.text
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r12d, ax	# c_stacklist.79, c_stacklist.79
	imul	r12, r12, 184	# tmp1741, c_stacklist.79,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1743,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1743
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.61, c_buttonimage.61
	imul	rbp, rbp, 1400	# tmp1745, c_buttonimage.61,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1747,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1747
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9937
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:reconst_limit	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_change_reconst_limit	# MEM[(struct Widget *)butimg_844].click_handler,
	mov	DWORD PTR [rbp+116], 1	# MEM[(struct Widget *)butimg_844].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.61, c_buttonimage.61
	imul	rbp, rbp, 1400	# tmp1749, c_buttonimage.61,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1751,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1751
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9938
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	esi, OFFSET FLAT:reconst_limit	#,
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_change_reconst_limit	# MEM[(struct Widget *)butimg_851].click_handler,
	mov	DWORD PTR [rbp+116], 0	# MEM[(struct Widget *)butimg_851].id,
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
	call	StackList_refresh	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebp, ax	# c_stacklist.79, c_stacklist.79
	imul	rbp, rbp, 184	# tmp1753, c_stacklist.79,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1755,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1755
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
	call	StackList_refresh	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebx, ax	# c_stacklist.79, c_stacklist.79
	imul	rbx, rbx, 184	# tmp1757, c_stacklist.79,
	add	rbx, QWORD PTR stacklist[rip]	# sliy, stacklist
	add	eax, 1	# tmp1759,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1759
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbx	#, sliy
	call	StackList_new	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	r12d, ax	# c_label.64, c_label.64
	imul	r12, r12, 344	# tmp1761, c_label.64,
	add	r12, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1763,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1763
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
	call	StackList_refresh	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebp, ax	# c_stacklist.79, c_stacklist.79
	imul	rbp, rbp, 184	# tmp1765, c_stacklist.79,
	add	rbp, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1767,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1767
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
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	ebx, ax	# c_button.82, c_button.82
	imul	rbx, rbx, 1528	# tmp1769, c_button.82,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1771,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1771
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
	mov	QWORD PTR [rbx+16], OFFSET FLAT:button_apply_reconstruction_filter	# MEM[(struct Widget *)but_883].click_handler,
	mov	edx, 3	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbx	#, but
	call	Widget_addParameter	#
	mov	rsi, QWORD PTR image[rip]	# tmp1772, image
	add	rsi, 304	# tmp1772,
	mov	edx, 3	#,
	mov	rdi, rbx	#, but
	call	Widget_addParameter	#
	mov	edx, 3	#,
	mov	esi, OFFSET FLAT:reconst_limit	#,
	mov	rdi, rbx	#, but
	call	Widget_addParameter	#
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
	call	StackList_refresh	#
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+232]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	edx, ax	# c_fm.71, c_fm.71
	imul	rdx, rdx, 184	# tmp1775, c_fm.71,
	add	rdx, QWORD PTR fm[rip]	# tmp1775, fm
	mov	QWORD PTR [rsp+176], rdx	# %sfp, tmp1775
	add	eax, 1	# tmp1777,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1777
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
	mov	BYTE PTR [rax+128], 1	# MEM[(struct Widget *)fmenu_893].draggable,
	mov	rsi, rax	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC68	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1779, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1781,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1781
	mov	esi, OFFSET FLAT:.LC69	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# tmp1783, lab_902->text_block.text
	add	rdi, 7	# tmp1783,
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
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:rep_thr	#,
	mov	esi, OFFSET FLAT:button_rep_col_change_threshold	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1788, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1790,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1790
	mov	esi, OFFSET FLAT:.LC71	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	eax, DWORD PTR rep_cond[rip]	# rep_cond, rep_cond
	mov	rdi, QWORD PTR [rbx+288]	# tmp1794, lab_915->text_block.text
	add	rdi, 9	# tmp1794,
	mov	r8, QWORD PTR cond_sym[0+rax*8]	#, cond_sym
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
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	edx, OFFSET FLAT:rep_cond	#,
	mov	esi, OFFSET FLAT:button_rep_col_change_condition	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	edx, OFFSET FLAT:cond_sym	#,
	mov	esi, OFFSET FLAT:button_rep_col_change_condition	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	r15d, WORD PTR c_label[rip]	# c_label.64, c_label
	lea	r14d, [r15-2]	# j,
	mov	r13d, OFFSET FLAT:click_handler+240	# ivtmp.146,
.L26:
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebx, ax	# c_stacklist.79, c_stacklist.79
	imul	rbx, rbx, 184	# tmp1800, c_stacklist.79,
	add	rbx, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1802,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1802
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rbx	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	ebp, ax	# c_stacklist.79, c_stacklist.79
	imul	rbp, rbp, 184	# tmp1804, c_stacklist.79,
	add	rbp, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1806,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1806
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, rbp	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1808, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1810,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1810
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9944
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR [r13+0]	# D.9842, MEM[base: D.10177_1015, offset: 0B]
	mov	QWORD PTR [r12+16], rax	# MEM[(struct Widget *)butimg_945].click_handler, D.9842
	mov	DWORD PTR [r12+116], 1	# MEM[(struct Widget *)butimg_945].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r12	#, butimg
	mov	rdi, rbp	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r12d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r12, r12, 1400	# tmp1812, c_buttonimage.61,
	add	r12, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1814,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1814
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9945
	mov	rdi, r12	#, butimg
	call	ButtonImage_copy	#
	mov	rax, QWORD PTR [r13+0]	# D.9842, MEM[base: D.10177_1015, offset: 0B]
	mov	QWORD PTR [r12+16], rax	# MEM[(struct Widget *)butimg_954].click_handler, D.9842
	mov	DWORD PTR [r12+116], 0	# MEM[(struct Widget *)butimg_954].id,
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
	call	StackList_refresh	#
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
	imul	rsi, rsi, 344	# tmp1816, j,
	add	rsi, QWORD PTR label[rip]	# tmp1817, label
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rdi, rbx	#, slix
	call	StackList_addWidgetLast	#
	mov	rdi, rbx	#, slix
	call	StackList_refresh	#
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
	add	r13, 8	# ivtmp.146,
	cmp	r14w, r15w	# j, c_label.64
	jne	.L26	#,
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1820, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1822,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1822
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r14d, ax	# c_stacklist.79, c_stacklist.79
	imul	r14, r14, 184	# tmp1824, c_stacklist.79,
	add	r14, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1826,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1826
	mov	edx, 6	#,
	mov	esi, 0	#,
	mov	rdi, r14	#, slix
	call	StackList_new	#
	mov	r13d, 0	# ivtmp.126,
.L27:
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	ebx, ax	# c_label.64, c_label.64
	imul	rbx, rbx, 344	# tmp1828, c_label.64,
	add	rbx, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1830,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1830
	mov	esi, OFFSET FLAT:.LC53	#,
	mov	rdi, rbx	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [rbx+288]	# lab_984->text_block.text, lab_984->text_block.text
	movzx	r8d, BYTE PTR rep_new[r13]	#, MEM[symbol: rep_new, index: ivtmp.126_1976, offset: 0B]
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r12d, ax	# c_stacklist.79, c_stacklist.79
	imul	r12, r12, 184	# tmp1835, c_stacklist.79,
	add	r12, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1837,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1837
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r12	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.61, c_buttonimage.61
	imul	rbp, rbp, 1400	# tmp1839, c_buttonimage.61,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1841,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1841
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9951
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	movsx	r15, r13d	# ivtmp.126, ivtmp.126
	add	r15, OFFSET FLAT:rep_new	# D.9952,
	mov	edx, 2	#,
	mov	rsi, r15	#, D.9952
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_rep_col_change_new_color	# MEM[(struct Widget *)butimg_1001].click_handler,
	mov	DWORD PTR [rbp+116], 1	# MEM[(struct Widget *)butimg_1001].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, butimg
	mov	rdi, r12	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	ebp, ax	# c_buttonimage.61, c_buttonimage.61
	imul	rbp, rbp, 1400	# tmp1844, c_buttonimage.61,
	add	rbp, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1846,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1846
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9953
	mov	rdi, rbp	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, rbx	#, lab
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	rsi, r15	#, D.9952
	mov	rdi, rbp	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [rbp+16], OFFSET FLAT:button_rep_col_change_new_color	# MEM[(struct Widget *)butimg_1010].click_handler,
	mov	DWORD PTR [rbp+116], 0	# MEM[(struct Widget *)butimg_1010].id,
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
	call	StackList_refresh	#
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
	add	r13, 1	# ivtmp.126,
	cmp	r13, 3	# ivtmp.126,
	jne	.L27	#,
	mov	rdi, r14	#, slix
	call	StackList_refresh	#
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, slix
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	ebx, ax	# c_button.82, c_button.82
	imul	rbx, rbx, 1528	# tmp1848, c_button.82,
	add	rbx, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1850,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1850
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
	mov	QWORD PTR [rbx+16], OFFSET FLAT:button_rep_col_apply	# MEM[(struct Widget *)but_1020].click_handler,
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
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1853, image
	add	rdx, 152	# tmp1853,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 2	#,
	mov	edx, OFFSET FLAT:rep_cond	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 3	#,
	mov	edx, OFFSET FLAT:rep_thr	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	lea	r8, [rsp+252]	#,
	mov	ecx, 4	#,
	mov	edx, OFFSET FLAT:rep_new	#,
	mov	esi, OFFSET FLAT:button_rep_col_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, QWORD PTR [rsp+176]	#, %sfp
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	ebx, ax	# c_fm.71, c_fm.71
	imul	rbx, rbx, 184	# tmp1859, c_fm.71,
	add	rbx, QWORD PTR fm[rip]	# fmenu, fm
	add	eax, 1	# tmp1861,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1861
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
	mov	BYTE PTR [rbx+128], 1	# MEM[(struct Widget *)fmenu_1035].draggable,
	mov	rsi, rbx	#, fmenu
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addWidget	#
	mov	edx, OFFSET FLAT:.LC75	#,
	mov	rsi, QWORD PTR font2[rip]	#, font2
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addBaseHeader	#
	movzx	eax, WORD PTR c_hsg[rip]	# c_hsg.103, c_hsg
	movzx	ebp, ax	# c_hsg.103, c_hsg.103
	imul	rbp, rbp, 552	# tmp1863, c_hsg.103,
	add	rbp, QWORD PTR hsg[rip]	# hs, hsg
	add	eax, 1	# tmp1865,
	mov	WORD PTR c_hsg[rip], ax	# c_hsg, tmp1865
	mov	edx, 8	#,
	mov	rsi, QWORD PTR font4[rip]	#, font4
	mov	rdi, rbp	#, hs
	call	HistStretchGraph_new	#
	mov	rdi, rbp	#, hs
	call	HistStretchGraph_refresh	#
	mov	edx, 2	#,
	mov	rsi, QWORD PTR image[rip]	#, image
	mov	rdi, rbp	#, hs
	call	Widget_addParameter	#
	mov	rsi, QWORD PTR image[rip]	# tmp1866, image
	add	rsi, 152	# tmp1866,
	mov	edx, 2	#,
	mov	rdi, rbp	#, hs
	call	Widget_addParameter	#
	mov	DWORD PTR [rsp+8], 3	#,
	mov	DWORD PTR [rsp], 3	#,
	mov	r9d, 3	#,
	mov	r8d, 3	#,
	mov	ecx, 2	#,
	mov	edx, 3	#,
	mov	rsi, rbp	#, hs
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_addWidgetLast	#
	movzx	eax, WORD PTR c_label[rip]	# c_label.64, c_label
	movzx	r13d, ax	# c_label.64, c_label.64
	imul	r13, r13, 344	# tmp1869, c_label.64,
	add	r13, QWORD PTR label[rip]	# lab, label
	add	eax, 1	# tmp1871,
	mov	WORD PTR c_label[rip], ax	# c_label, tmp1871
	mov	esi, OFFSET FLAT:.LC76	#,
	mov	rdi, r13	#, lab
	call	Label_new	#
	mov	rdi, QWORD PTR [r13+288]	# tmp1873, lab_1054->text_block.text
	add	rdi, 18	# tmp1873,
	movzx	r8d, WORD PTR [rbp+536]	#, hs_1044->size
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
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r12d, ax	# c_stacklist.79, c_stacklist.79
	imul	r12, r12, 184	# tmp1876, c_stacklist.79,
	add	r12, QWORD PTR stacklist[rip]	# slix, stacklist
	add	eax, 1	# tmp1878,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1878
	mov	edx, 3	#,
	mov	esi, 0	#,
	mov	rdi, r12	#, slix
	call	StackList_new	#
	movzx	eax, WORD PTR c_stacklist[rip]	# c_stacklist.79, c_stacklist
	movzx	r15d, ax	# c_stacklist.79, c_stacklist.79
	imul	r15, r15, 184	# tmp1880, c_stacklist.79,
	add	r15, QWORD PTR stacklist[rip]	# sliy2, stacklist
	add	eax, 1	# tmp1882,
	mov	WORD PTR c_stacklist[rip], ax	# c_stacklist, tmp1882
	mov	edx, 2	#,
	mov	esi, 1	#,
	mov	rdi, r15	#, sliy2
	call	StackList_new	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r14, r14, 1400	# tmp1884, c_buttonimage.61,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1886,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1886
	mov	eax, 0	#,
	call	Static_getArrowUpButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9961
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, r13	#, lab
	mov	rdi, r14	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r14	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [r14+16], OFFSET FLAT:button_change_hist_stretch_nodes	# MEM[(struct Widget *)butimg_1077].click_handler,
	mov	DWORD PTR [r14+116], 1	# MEM[(struct Widget *)butimg_1077].id,
	mov	DWORD PTR [rsp+8], 0	#,
	mov	DWORD PTR [rsp], 0	#,
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 3	#,
	mov	edx, 3	#,
	mov	rsi, r14	#, butimg
	mov	rdi, r15	#, sliy2
	call	StackList_addWidgetLast	#
	movzx	eax, WORD PTR c_buttonimage[rip]	# c_buttonimage.61, c_buttonimage
	movzx	r14d, ax	# c_buttonimage.61, c_buttonimage.61
	imul	r14, r14, 1400	# tmp1888, c_buttonimage.61,
	add	r14, QWORD PTR buttonimage[rip]	# butimg, buttonimage
	add	eax, 1	# tmp1890,
	mov	WORD PTR c_buttonimage[rip], ax	# c_buttonimage, tmp1890
	mov	eax, 0	#,
	call	Static_getArrowDnButton	#
	mov	edx, 0	#,
	mov	rsi, rax	#, D.9962
	mov	rdi, r14	#, butimg
	call	ButtonImage_copy	#
	mov	edx, 2	#,
	mov	rsi, r13	#, lab
	mov	rdi, r14	#, butimg
	call	Widget_addParameter	#
	mov	edx, 2	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r14	#, butimg
	call	Widget_addParameter	#
	mov	QWORD PTR [r14+16], OFFSET FLAT:button_change_hist_stretch_nodes	# MEM[(struct Widget *)butimg_1084].click_handler,
	mov	DWORD PTR [r14+116], 0	# MEM[(struct Widget *)butimg_1084].id,
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
	call	StackList_refresh	#
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
	movzx	eax, WORD PTR c_button[rip]	# c_button.82, c_button
	movzx	r13d, ax	# c_button.82, c_button.82
	imul	r13, r13, 1528	# tmp1892, c_button.82,
	add	r13, QWORD PTR button[rip]	# but, button
	add	eax, 1	# tmp1894,
	mov	WORD PTR c_button[rip], ax	# c_button, tmp1894
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
	mov	QWORD PTR [r13+16], OFFSET FLAT:button_hist_stretch_apply	# MEM[(struct Widget *)but_1091].click_handler,
	mov	edx, 1	#,
	mov	rsi, rbp	#, hs
	mov	rdi, r13	#, but
	call	Widget_addParameter	#
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
	call	StackList_refresh	#
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, rbx	#, fmenu
	call	FloatingMenu_setVisible	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	r12d, ax	# c_fm.71, c_fm.71
	imul	r12, r12, 184	# tmp1896, c_fm.71,
	add	r12, QWORD PTR fm[rip]	# fmenu, fm
	add	eax, 1	# tmp1898,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1898
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
	mov	BYTE PTR [r12+128], 1	# MEM[(struct Widget *)fmenu_1098].draggable,
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
	call	FloatingMenu_refresh	#
	mov	esi, 0	#,
	mov	rdi, r12	#, fmenu
	call	FloatingMenu_setVisible	#
	mov	DWORD PTR [rsp+252], 0	# cparam_off,
	lea	r8, [rsp+252]	#,
	mov	ecx, 0	#,
	mov	rdx, QWORD PTR image[rip]	#, image
	mov	esi, OFFSET FLAT:button_generic_filter_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	mov	rdx, QWORD PTR image[rip]	# tmp1901, image
	add	rdx, 152	# tmp1901,
	lea	r8, [rsp+252]	#,
	mov	ecx, 1	#,
	mov	esi, OFFSET FLAT:button_generic_filter_apply	#,
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_addParameter	#
	movzx	eax, WORD PTR c_fm[rip]	# c_fm.71, c_fm
	movzx	ebp, ax	# c_fm.71, c_fm.71
	imul	rbp, rbp, 184	# tmp1904, c_fm.71,
	add	rbp, QWORD PTR fm[rip]	# fmenu, fm
	add	eax, 1	# tmp1906,
	mov	WORD PTR c_fm[rip], ax	# c_fm, tmp1906
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
	mov	BYTE PTR [rbp+128], 1	# MEM[(struct Widget *)fmenu_1117].draggable,
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
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
	call	Widget_addParameter	#
.L38:
	mov	rdi, rbp	#, fmenu
	call	FloatingMenu_refresh	#
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
	mov	eax, 0	# D.9773,
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
	mov	eax, 0	# D.9739,
	cmp	BYTE PTR is_inited[rip], 0	# is_inited,
	jne	.L58	#,
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
	mov	DWORD PTR [rsp+12], 0	# e,
	mov	ecx, 1349	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 136	#,
	mov	edi, 1	#,
	call	wcalloc	#
	mov	edx, 0	#,
	lea	rsi, [rsp+12]	#,
	mov	rdi, rax	#, D.9740
	call	Screen_new	#
	mov	QWORD PTR sc[rip], rax	# sc, sc.36
	mov	edi, DWORD PTR [rsp+12]	# e.37, e
	test	edi, edi	# e.37
	je	.L53	#,
	call	perr_getName	#
	mov	rcx, rax	#, D.9745
	mov	edx, OFFSET FLAT:.LC86	#,
	mov	esi, 1	#,
	mov	rdi, QWORD PTR stderr[rip]	#, stderr
	mov	eax, 0	#,
	call	__fprintf_chk	#
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	delete	#
	mov	edx, 1352	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.9748
	call	wfree	#
	mov	eax, 1	# D.9739,
	jmp	.L52	#
.L53:
	mov	edx, 34	#,
	mov	esi, OFFSET FLAT:click_handler	#,
	mov	rdi, rax	#, sc.36
	call	Screen_CallbackCreate	#
	mov	rax, QWORD PTR sc[rip]	# sc, sc
	mov	QWORD PTR [rax+104], OFFSET FLAT:gdragon_toogle	# sc.39_15->toogle_drag_on,
	mov	ecx, 1359	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip], rax	# colors, D.9750
	mov	ecx, 1360	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip+8], rax	# colors, D.9751
	mov	ecx, 1361	#,
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	esi, 4	#,
	mov	edi, 256	#,
	call	wcalloc	#
	mov	QWORD PTR colors[rip+16], rax	# colors, D.9752
	mov	eax, 4294967295	#,
	mov	QWORD PTR t[rip], rax	# t,
	mov	eax, 0	#,
	call	GraphicsMain_createInterface	#
	mov	edx, eax	# D.9753,
	mov	eax, 0	# D.9739,
	test	edx, edx	# D.9753
	je	.L52	#,
	mov	rcx, QWORD PTR stderr[rip]	#, stderr
	mov	edx, 44	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC87	#,
	call	fwrite	#
	mov	eax, 1	# D.9739,
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
	mov	eax, 1	# D.9731,
	jmp	.L61	#
.L60:
	mov	rdi, QWORD PTR sc[rip]	#, sc
	call	Screen_MainStart	#
	mov	eax, 0	# D.9731,
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
	mov	edx, 1389	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.9627
	call	wfree	#
	mov	QWORD PTR sc[rip], 0	# sc,
.L65:
	mov	rdi, QWORD PTR background[rip]	# background.2, background
	test	rdi, rdi	# background.2
	je	.L66	#,
	call	delete	#
	mov	edx, 1390	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, rax	#, D.9631
	call	wfree	#
.L66:
	cmp	QWORD PTR image[rip], 0	# image,
	je	.L67	#,
	cmp	WORD PTR c_image[rip], 0	# c_image,
	je	.L68	#,
	mov	ebx, 0	# i,
.L69:
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*8]	# tmp217,
	lea	rdx, [rax+rdx*2]	# tmp219,
	mov	rax, QWORD PTR image[rip]	# image, image
	lea	rdi, [rax+rdx*8]	# tmp221,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_image[rip], bx	# c_image, i
	ja	.L69	#,
.L68:
	mov	edx, 1392	#,
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
	lea	rdx, [rax+rax*4]	# tmp226,
	lea	rdi, [rax+rdx*2]	# tmp228,
	sal	rdi, 4	# tmp229,
	add	rdi, QWORD PTR text_block[rip]	# tmp230, text_block
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_textblock[rip], bx	# c_textblock, i
	ja	.L72	#,
.L71:
	mov	edx, 1393	#,
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
	imul	rdi, rdi, 1528	# tmp233, i,
	add	rdi, QWORD PTR button[rip]	# tmp234, button
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_button[rip], bx	# c_button, i
	ja	.L75	#,
.L74:
	mov	edx, 1394	#,
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
	imul	rdi, rdi, 344	# tmp237, i,
	add	rdi, QWORD PTR label[rip]	# tmp238, label
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_label[rip], bx	# c_label, i
	ja	.L78	#,
.L77:
	mov	edx, 1395	#,
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
	imul	rdi, rdi, 312	# tmp241, i,
	add	rdi, QWORD PTR labelimage[rip]	# tmp242, labelimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_labelimage[rip], bx	# c_labelimage, i
	ja	.L81	#,
.L80:
	mov	edx, 1396	#,
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
	imul	rdi, rdi, 1400	# tmp245, i,
	add	rdi, QWORD PTR buttonimage[rip]	# tmp246, buttonimage
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_buttonimage[rip], bx	# c_buttonimage, i
	ja	.L84	#,
.L83:
	mov	edx, 1397	#,
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
	lea	rdx, [rax+rax*8]	# tmp251,
	lea	rdx, [rax+rdx*2]	# tmp253,
	mov	rax, QWORD PTR rectangle[rip]	# rectangle, rectangle
	lea	rdi, [rax+rdx*8]	# tmp255,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_rectangle[rip], bx	# c_rectangle, i
	ja	.L87	#,
.L86:
	mov	edx, 1398	#,
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
	lea	rdx, [rax+rax*4]	# tmp260,
	lea	rdx, [rax+rdx*4]	# tmp262,
	mov	rax, QWORD PTR histogram[rip]	# histogram, histogram
	lea	rdi, [rax+rdx*8]	# tmp264,
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_histogram[rip], bx	# c_histogram, i
	ja	.L90	#,
.L89:
	mov	edx, 1399	#,
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
	movzx	eax, bx	# i, i
	lea	rdx, [rax+rax*2]	# tmp269,
	lea	rdi, [rax+rdx*4]	# tmp271,
	sal	rdi, 4	# tmp272,
	add	rdi, QWORD PTR pdb[rip]	# tmp273, pdb
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_pdb[rip], bx	# c_pdb, i
	ja	.L93	#,
.L92:
	mov	edx, 1400	#,
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
	imul	rdi, rdi, 552	# tmp276, i,
	add	rdi, QWORD PTR hsg[rip]	# tmp277, hsg
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_hsg[rip], bx	# c_hsg, i
	ja	.L96	#,
.L95:
	mov	edx, 1401	#,
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
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp280, i,
	add	rdi, QWORD PTR stacklist[rip]	# tmp281, stacklist
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_stacklist[rip], bx	# c_stacklist, i
	ja	.L99	#,
.L98:
	mov	edx, 1402	#,
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
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp284, i,
	add	rdi, QWORD PTR fm[rip]	# tmp285, fm
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_fm[rip], bx	# c_fm, i
	ja	.L102	#,
.L101:
	mov	edx, 1403	#,
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
	movzx	edi, bx	# i, i
	imul	rdi, rdi, 184	# tmp288, i,
	add	rdi, QWORD PTR grid[rip]	# tmp289, grid
	call	delete	#
	add	ebx, 1	# i,
	cmp	WORD PTR c_grid[rip], bx	# c_grid, i
	ja	.L105	#,
.L104:
	mov	edx, 1404	#,
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
	mov	edx, 1405	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	mov	rdi, QWORD PTR gtsf[rip]	#, gtsf
	call	wfree	#
	mov	QWORD PTR gtsf[rip], 0	# gtsf,
.L106:
	mov	rdi, QWORD PTR font2[rip]	# font2.30, font2
	test	rdi, rdi	# font2.30
	je	.L107	#,
	mov	edx, 1407	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font2[rip], 0	# font2,
.L107:
	mov	rdi, QWORD PTR font4[rip]	# font4.31, font4
	test	rdi, rdi	# font4.31
	je	.L108	#,
	mov	edx, 1408	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wTTF_CloseFont	#
	mov	QWORD PTR font4[rip], 0	# font4,
.L108:
	mov	rdi, QWORD PTR colors[rip]	# D.9717, colors
	test	rdi, rdi	# D.9717
	je	.L109	#,
	mov	edx, 1410	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR colors[rip], 0	# colors,
.L109:
	mov	rdi, QWORD PTR colors[rip+8]	# D.9720, colors
	test	rdi, rdi	# D.9720
	je	.L110	#,
	mov	edx, 1411	#,
	mov	esi, OFFSET FLAT:.LC6	#,
	call	wfree	#
	mov	QWORD PTR colors[rip+8], 0	# colors,
.L110:
	mov	rdi, QWORD PTR colors[rip+16]	# D.9723, colors
	test	rdi, rdi	# D.9723
	je	.L111	#,
	mov	edx, 1412	#,
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
	.quad	button_main_floating_menu_click
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
	.type	hist_names, @object
	.size	hist_names, 24
hist_names:
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
	.section	.rodata.str1.1
.LC92:
	.string	"<"
.LC93:
	.string	">"
.LC94:
	.string	"\342\211\244"
.LC95:
	.string	"\342\211\245"
.LC96:
	.string	"="
.LC97:
	.string	"\342\211\240"
	.data
	.align 32
	.type	cond_sym, @object
	.size	cond_sym, 48
cond_sym:
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
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
