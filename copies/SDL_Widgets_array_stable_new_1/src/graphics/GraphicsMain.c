/*      This file is responsible for graphics main program 
 *
 *      GraphicsMain.c - this file is part of SDL_Widgets
 *
 *      Copyright (C) 2013 Dariusz Mikołajczuk <radomik(at)gmail(dot)com>
 *
 *      This program is free software; you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License as published by
 *      the Free Software Foundation; either version 2 of the License, or
 *      (at your option) any later version.
 *
 *      This program is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *
 *      You should have received a copy of the GNU General Public License along
 *      with this program; if not, write to the Free Software Foundation, Inc.,
 *      51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */
#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "Object.h"
#include "Memory.h"
#include "FileBrowsePanel.h"
#include "Widget.h"
#include "Image.h"
#include "Button.h"
#include "TextBlock.h"
#include "Label.h"
#include "LabelImage.h"
#include "ButtonImage.h"
#include "Rectangle.h"
#include "StackList.h"
#include "Grid.h"
#include "Container.h"
#include "FloatingMenu.h"
#include "GToolsPoint.h"
#include "GToolsFilters.h"
#include "GToolsSplotFilter.h"
#include "GToolsMorph.h"
#include "GraphicsMain.h"
#include "GraphicsCallbacks.h"
#include "Histogram.h"
#include "HistStretchGraph.h"
#include "PixelDrawBox.h"

/* SECTION USER INTERFACE */
/* Count of each type of widget, can't be lower than needed */
#define cIMAGE			(3)
#define cBUTTON 		(58)
#define cTEXTBLOCK 		(0)
#define cLABEL 			(31)
#define cLABELIMAGE 	(0)
#define cBUTTONIMAGE 	(54)
#define cRECTANGLE 		(0)
#define cHISTOGRAM 		(3)
#define cPIXELDRAWBOX 	(1)
#define cHISTSTRETCHGRAPH 	(1)
#define cSTACKLIST		(60)
#define cGRID		 	(2)
#define cFLOATINGMENU	(20)

static Image 		*image;
static TextBlock 	*text_block;
static Button 		*button;
static Label 		*label;
static LabelImage 	*labelimage;
static ButtonImage  *buttonimage;
static Rectangle    *rectangle;
static Histogram    *histogram;
static PixelDrawBox *pdb;
static HistStretchGraph *hsg;
static StackList	*stacklist;
static Grid			*grid;
static GToolsSplotFilter *gtsf;
static Image		*background;
static Screen 		*sc;
static FloatingMenu	*fm;

						// calculate real value here:
static usint c_image=0, c_button=0, c_textblock=0, c_label=0, c_labelimage=0, c_grid=0, c_fm = 0,
			c_buttonimage = 0, c_rectangle=0, c_histogram=0, c_stacklist=0, c_pdb=0, c_hsg=0;


static float 		img_mul = 1.0f;			// image multiplier (contrast) [assume range 0.00 - 99.99]
static short 		img_off = 0;			// image offset (brightness) [assume range -255 ... 255]
static bool  		img_overflow = false;	// false - over 0xFF set to 0xFF below 0 to 0x00
							// true  - treat as normal overflow
static bool  		t_algo = true;
static uchar 		num_hist = 0;
static bool  		is_inited = false;
static ullong 		t = 0xFFFFFFFF;
static uint			*colors[3];
static usint		reconst_limit = 100;

static uchar		rep_thr  = 20;
static condition	rep_cond = LOWER;
static uchar		rep_new[3] = {255,255,255};
static char *cond_sym[] = {	//! same order as in GToolsPoint.h
	LOWER_SYM, GREATER_SYM, LOWER_EQUAL_SYM, GREATER_EQUAL_SYM, EQUAL_SYM, NOT_EQUAL_SYM };

static char *hist_names[] = {"red", "green", "blue"};

static void (*click_handler[])(Widget*, Screen*) = {
	button_main_floating_menu_click,// 0
	button_imgsrc_open,				// 1
	button_src_restore,				// 2
	button_src_to_dest,				// 3		f indexer:
	button_brightness_change,		// 4 <-
	button_contrast_change,			// 5		first for loop
	button_overflow_change,			// 6 <-
	button_bin_algo_toggle,			// 7	<-
	button_used_hist_toggle,		// 8		second for loop
	button_threshold_change,		// 9	<-
	button_change_filter_weight,	// 10
	button_change_filter_predef,	// 11
	button_brightness_reset,		// 12
	button_dest_to_src,				// 13
	button_src_save,				// 14
	button_dest_save,				// 15
	button_destaturize_std,			// 16
	button_create_histograms_click,	// 17
	button_bin_create_histograms,	// 18
	button_threshold_apply,			// 19
	button_dest_negative,			// 20
	button_dest_splotfilter,		// 21
	button_view_click,				// 22
	button_change_strelem_size,		// 23
	button_dilate_click,			// 24
	button_erode_click,				// 25
	button_morph_open_click,		// 26
	button_morph_close_click,		// 27
	button_histograms_equalize,		// 28
	button_change_reconst_limit,	// 29
	button_rep_col_change_threshold,// 30
	button_rep_col_change_condition,// 31
	button_rep_col_apply,			// 32
	button_generic_filter_apply		// 33
};
static uint GRAPHICS_CALLBACKS_COUNT = sizeof(click_handler) / sizeof(void (*)(Widget*, Screen*)); // 34

void gdragon_toogle(Screen *screen) {
	sprintf(label[0].text_block.text+15, "%s", (screen->drag_on) ? " WŁĄCZONE" : "WYŁĄCZONE");
	Label_refresh(&(label[0]));
	screen->need_reload = true;
}

static TTF_Font *font2, *font4;

int GraphicsMain_createInterface() {
	image			= (cIMAGE > 0) 		? calloc(cIMAGE, sizeof(Image)) 							: NULL;
	text_block		= (cTEXTBLOCK > 0)	? calloc(cTEXTBLOCK, sizeof(TextBlock)) 					: NULL;
	button 			= (cBUTTON > 0) 	? calloc(cBUTTON, sizeof(Button)) 							: NULL;
	label 			= (cLABEL > 0) 		? calloc(cLABEL, sizeof(Label)) 							: NULL;
	labelimage 		= (cLABELIMAGE > 0)	? calloc(cLABELIMAGE, sizeof(LabelImage)) 					: NULL;
	buttonimage 	= (cBUTTONIMAGE > 0)? calloc(cBUTTONIMAGE, sizeof(ButtonImage))					: NULL;
	rectangle		= (cRECTANGLE > 0)	? calloc(cRECTANGLE, sizeof(Rectangle))						: NULL;
	histogram		= (cHISTOGRAM > 0)	? calloc(cHISTOGRAM, sizeof(Histogram))						: NULL;
	pdb				= (cPIXELDRAWBOX >0)? calloc(cPIXELDRAWBOX, sizeof(PixelDrawBox))				: NULL;
	hsg				= (cHISTSTRETCHGRAPH >0)? calloc(cHISTSTRETCHGRAPH, sizeof(HistStretchGraph))	: NULL;
	stacklist		= (cSTACKLIST > 0)	? calloc(cSTACKLIST, sizeof(StackList))						: NULL;
	grid			= (cGRID > 0)		? calloc(cGRID, sizeof(Grid))								: NULL;
	fm				= (cFLOATINGMENU > 0)?calloc(cFLOATINGMENU, sizeof(FloatingMenu))				: NULL;
	
	font2 = Static_getFont("fonts/ariblk.ttf", 20);
	if (! font2) {
		fprintf(stderr, "GraphicsMain_createInterface:GraphicsMain failed to load font \"fonts/ariblk.ttf\"\n");
		return 1;
	}
	fprintf(stderr, "font2: height=%d\n", TTF_FontHeight(font2));
	background = Image_new(calloc(1, sizeof(Image)), "img/FreeGreatPicture.com-25614-colorful-high-resolution-background.jpg", 0, 0);
	//Screen_setBackgroundColor(sc, 0x90EE90);
	Screen_setBackgroundWidget(sc, (Widget*)background, BG_STRETCH);
	//Screen_setBackground(sc, "img/FreeGreatPicture.com-25614-colorful-high-resolution-background.jpg");
	//Image_scale(sc.background, 0.989583333, 0.833333333, 1);
	
	font4 = TTF_OpenFont("fonts/verdanab.ttf", 16);
	if (! font4) {
		fprintf(stderr, "GraphicsMain_createInterface:GraphicsMain failed to load font \"onts/verdanab.ttf\"\n");
		return 1;
	}
	
	Image		*img;
	Label		*lab;
	StackList	*slix, *sliy, *sliy2;
	ButtonImage *butimg, *butimg2;
	Container 	*cont_jasn_kontr, *cont_binary, *cont_hist, *cont_fsplot, *cont_elem_struct, 
				*cont_morf, *cont_equal, *cont_reconst, *cont_rep, *cont_hsg, *cont_filters;
	FloatingMenu *fmenu;
	Histogram	*hist;
	Button		*but;
	Widget		*wt;
	Grid		*gri;
	uint		cparam_off = 0;
	usint		label_off, i, j, k, f, x, y;
	usint		lab_thr_ind, lab_algo_ind, lab_hist_ind;
	
	gtsf = GToolsSplotFilter_new(calloc(1, sizeof(GToolsSplotFilter)));
	
	{/*!! Screen widgets section (ZERO SECTION) these widgets aren't placed in containers !!*/
		// Create buttonimage[0] (app exit) and add it to screen
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_new(butimg, "img/application-exit-5.png");
		ButtonImage_applyDefaultStyle(butimg, 1750, 14, 20, 20, true);
		((Widget*)butimg)->click_handler = Screen_buttonExitClicked;
		Screen_addWidget(sc, (Widget*)butimg);
		
		// Create label[0] (drag on/off indicator) and add it to screen
		lab = &(label[c_label++]);
		Label_new(lab, "Przeciąganie:              ");
		sprintf(lab->text_block.text+15, "%s", (sc->drag_on) ? " WŁĄCZONE" : "WYŁĄCZONE");
		Label_applyDefaultStyle(lab, 1, 950, font2, 10, 5, true);
		Screen_addWidget(sc, (Widget*)lab);
		
		/* Working images */
		// image[0] // id=0
		img = &(image[c_image++]);
		Image_new(img, "img/harewood.jpg", 159, 546);
		wt  = (Widget*)img;
		wt->draggable	= true;
		wt->id			= 0;
		Screen_addWidget(sc, wt);
		
		// image[1] // id=1
		img = &(image[c_image++]);
		Image_new(img, "img/harewood.jpg", wt->maxx+10, wt->pos.y);
		wt  = (Widget*)img;
		wt->draggable	= true;
		wt->id			= 1;
		Screen_addWidget(sc, wt);
		
		// image[2] // id=2
		img = &(image[c_image++]);
		Image_new(img,  "img/harewood.jpg", wt->maxx+10, wt->pos.y);
		((Widget*)img)->draggable	= true;
		((Widget*)img)->visible		= false;
		((Widget*)img)->id			= 2;
		Screen_addWidget(sc, (Widget*)img);
	}
	
	{/*!! Section source file main options floating menu !!*/
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 0);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 1, 1);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Obraz źródłowy");
		
		// Add buttons
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Otwórz SRC i DEST",		button_imgsrc_open,		0);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Przywróć SRC",			button_src_restore,		1);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Zapisz SRC",				button_src_save,		2);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Kopiuj SRC do DEST",		button_src_to_dest,		3);
		FloatingMenu_refresh(fmenu);
		
		{ /** SubSection cparams only **/
			cparam_off = 0; //! add some cparams to function button_imgsrc_open
			Screen_addParameter(sc, button_imgsrc_open, (void*)&(image[0]), 0, &cparam_off);
			Screen_addParameter(sc, button_imgsrc_open, (void*)&(image[1]), 1, &cparam_off);
			Screen_addParameter(sc, button_imgsrc_open, (void*)histogram,   2, &cparam_off);
			Screen_addParameter(sc, button_imgsrc_open, (void*)&t,			6, &cparam_off);
			
			
			cparam_off = 0; //! add some cparams to function button_src_restore
			Screen_addParameter(sc, button_src_restore, (void*)&(image[0]), 0, &cparam_off);
			Screen_addParameter(sc, button_src_restore, (void*)&(image[1]), 1, &cparam_off);
			Screen_addParameter(sc, button_src_restore, (void*)histogram,   2, &cparam_off);
			Screen_addParameter(sc, button_src_restore, (void*)&t,			6, &cparam_off);
			
			//! add some cparams to function button_src_save
			Screen_addParameter(sc, button_src_save, (void*)&(image[0]), 0, NULL);
			
			//! add some cparams to function button_src_to_dest
			cparam_off = 0;
			Screen_addParameter(sc, button_src_to_dest, (void*)&(image[0]), 0, &cparam_off);
			Screen_addParameter(sc, button_src_to_dest, (void*)&(image[1]), 1, &cparam_off);
		} /** END SubSection cparams only **/
	}
	
	{/*!! Section destination file main options floating menu !!*/
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 0);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 215, 1);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Obraz docelowy");
		
		// Add buttons
		FloatingMenu_addMenuButtonLast(fmenu, font4, 		"Zapisz DEST",				button_dest_save,		0);
		FloatingMenu_addMenuButtonLast(fmenu, font4, 		"Kopiuj DEST do SRC",		button_dest_to_src,		1);
		FloatingMenu_addMenuButtonLast(fmenu, font4,		"Negatyw",					button_dest_negative,	2);
		FloatingMenu_addMenuButtonLast(fmenu, font4, 		"Odcienie szarości",		button_destaturize_std,	3);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4,  "Pomniejsz",				button_dest_resize,		0);
		if (but) Widget_addParameter((Widget*)but, &image[1], 1); // destination image
		but = FloatingMenu_addMenuButtonLast(fmenu, font4,  "Powiększ",					button_dest_resize,		1);
		if (but) Widget_addParameter((Widget*)but, &image[1], 1); // destination image
		FloatingMenu_refresh(fmenu);
		
		{ /** SubSection cparams only **/
			//! add some cparams to function button_dest_save
			Screen_addParameter(sc, button_dest_save, (void*)&(image[1]), 0, NULL);
			
			cparam_off = 0; //! add some cparams to function button_dest_to_src
			Screen_addParameter(sc, button_dest_to_src, (void*)&(image[0]), 0, &cparam_off);
			Screen_addParameter(sc, button_dest_to_src, (void*)&(image[1]), 1, &cparam_off);
			Screen_addParameter(sc, button_dest_to_src, (void*)histogram,   2, &cparam_off);
			Screen_addParameter(sc, button_dest_to_src, (void*)&t,			6, &cparam_off);
			
			//! add some cparams to function button_dest_negative
			Screen_addParameter(sc, button_dest_negative, (void*)&(image[1]), 0, NULL);
			
			cparam_off = 0; //! add some cparams to function button_destaturize_std
			Screen_addParameter(sc, button_destaturize_std, (void*)&(image[0]), 0, &cparam_off);
			Screen_addParameter(sc, button_destaturize_std, (void*)&(image[1]), 1, &cparam_off);
		} /** END SubSection cparams only **/
	}
	
	{/*!! Section brightness/contrast floating menu !!*/
		label_off = c_label;
		
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 5);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 24, 511);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_jasn_kontr = (Container*)fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Jasność/Kontrast");
		
		// label[label_off] "Jasność:     "
		lab			= &(label[c_label++]);
		Label_new(lab, "Jasność:     ");
		sprintf(lab->text_block.text+11, "%hd", img_off);
		Label_applyDefaultStyle(lab, 0, 0, font2, 36, 5, true);
		//! add some cparams to function button_brightness_change and button_brightness_reset
			cparam_off = 0;
			Screen_addParameter(sc, button_brightness_change, &(image[0]), 		0, &cparam_off);
			Screen_addParameter(sc, button_brightness_change, &(image[1]), 		1, &cparam_off);
			Screen_addParameter(sc, button_brightness_change, lab,				2, &cparam_off);
			Screen_addParameter(sc, button_brightness_change, &img_off,			3, &cparam_off);
			Screen_addParameter(sc, button_brightness_change, &img_mul,			4, &cparam_off);
			Screen_addParameter(sc, button_brightness_change, &img_overflow,	5, &cparam_off); 
			cparam_off = 0;
			Screen_addParameter(sc, button_brightness_reset,  &(image[0]),		0, &cparam_off);
			Screen_addParameter(sc, button_brightness_reset,  &(image[1]),		1, &cparam_off);
			Screen_addParameter(sc, button_brightness_reset,  lab,				2, &cparam_off);
		
		// label[label_off+1] "Kontrast:         "
		lab			= &(label[c_label++]);
		Label_new(lab, "Kontrast:         ");
		sprintf(lab->text_block.text+11, "%5.2f", img_mul);
		Label_applyDefaultStyle(lab, 0, 0, font2, 10, 5, true);
		//! add some cparams to function button_brightness_reset and button_contrast_change
			Screen_addParameter(sc, button_brightness_reset, lab,			3, &cparam_off); 
			cparam_off = 0;
			Screen_addParameter(sc, button_contrast_change, &(image[0]),	0, &cparam_off);
			Screen_addParameter(sc, button_contrast_change, &(image[1]),	1, &cparam_off);
			Screen_addParameter(sc, button_contrast_change, lab,			2, &cparam_off);
			Screen_addParameter(sc, button_contrast_change, &img_off,		3, &cparam_off);
			Screen_addParameter(sc, button_contrast_change, &img_mul,		4, &cparam_off);
			Screen_addParameter(sc, button_contrast_change, &img_overflow,	5, &cparam_off);
		
		// label[label_off+2] "Nadmiar:                    "
		lab				= &(label[c_label++]);
		Label_new(lab, "Nadmiar:                    ");
		sprintf(lab->text_block.text+9, "%s", (img_overflow)?"przepełnienie":"do skrajnych");
		Label_applyDefaultStyle(lab, 0, 0, font2, 10, 5, true);
		//! add some cparams to function button_overflow_change and button_brightness_reset
			cparam_off = 0;
			Screen_addParameter(sc, button_overflow_change, &(image[0]),		0, &cparam_off);
			Screen_addParameter(sc, button_overflow_change, &(image[1]),		1, &cparam_off);
			Screen_addParameter(sc, button_overflow_change, lab,				2, &cparam_off);
			Screen_addParameter(sc, button_overflow_change, &img_off,			3, &cparam_off);
			Screen_addParameter(sc, button_overflow_change, &img_mul,			4, &cparam_off);
			Screen_addParameter(sc, button_overflow_change, &img_overflow,		5, &cparam_off); 
			cparam_off = 0;
			Screen_addParameter(sc, button_brightness_reset, lab,				4, &cparam_off);
			Screen_addParameter(sc, button_brightness_reset, &img_off,			5, &cparam_off);
			Screen_addParameter(sc, button_brightness_reset, &img_mul,			6, &cparam_off);
			Screen_addParameter(sc, button_brightness_reset, &img_overflow,		7, &cparam_off);
			
		
		for (k = label_off, f = 4; k < label_off+3; k++, f++) {
			// create StackList(sliy2) (contains arrow buttons placed along Y axis)
			sliy2 = &(stacklist[c_stacklist++]);
			StackList_new(sliy2, VERTICAL, 2);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
			((Widget*)butimg)->click_handler = click_handler[f];
			((Widget*)butimg)->id = 1;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
			((Widget*)butimg)->click_handler = click_handler[f];
			((Widget*)butimg)->id = 0;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// Refresh StackList(sliy2) with buttons already filled
			StackList_refresh(sliy2);
			
			// create stacklist(slix) (full row)
			slix = &(stacklist[c_stacklist++]);
			StackList_new(slix, HORIZONTAL, 2);
			
			// add stacklist(sliy2) and label[k] to stacklist(slix)
			StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 10);
			StackList_addWidgetLast(slix, (Widget*)&label[k], ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			StackList_refresh(slix);
			
			// add stacklist(slix) to base FloatingMenu(fmenu) (full row)
			FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_LEFT, ALIGN_CENTER, 4, 0, 2, 4);
		}
		
		// create Button "Resetuj" and add it to last row of FloatingMenu(fmenu)
		but = &(button[c_button++]);
		Button_new(but, "Resetuj");
		Button_applyDefaultStyle(but, 23, 221, font2, 5, 5, true);
		((Widget*)but)->click_handler = button_brightness_reset;
		FloatingMenu_addWidgetLast(fmenu, (Widget*)but, ALIGN_CENTER, ALIGN_BOTTOM, 10, 3, 1, 3);
		
		// refresh base FloatingMenu(fmenu) and set it invisible
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}
	
	{/*!! Section histograms floating menu !!*/
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 4);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 1319, 324);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_hist = (Container*)fmenu;
		//! add some cparams to function button_src_restore
			Screen_addParameter(sc, button_src_restore, (Container*)fmenu, 7, NULL);
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Histogramy");
		
		// Create histogram[0] RED and add it to FloatingMenu(fmenu)
		hist = &(histogram[c_histogram++]);
		Histogram_new(hist);
		Histogram_setColor(hist, 0xFF0000);
		Histogram_refresh(hist);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)hist, ALIGN_CENTER, ALIGN_CENTER, 2, 5, 2, 5);
		
		// Create histogram[1] GREEN and add it to FloatingMenu(fmenu)
		hist = &(histogram[c_histogram++]);
		Histogram_new(hist);
		Histogram_setColor(hist, 0x00FF00);
		Histogram_refresh(hist);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)hist, ALIGN_CENTER, ALIGN_CENTER, 2, 5, 2, 5);
		
		// Create histogram[2] BLUE and add it to FloatingMenu(fmenu)
		hist = &(histogram[c_histogram++]);
		Histogram_new(hist);
		Histogram_setColor(hist, 0x0000FF);
		Histogram_refresh(hist);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)hist, ALIGN_CENTER, ALIGN_CENTER, 2, 5, 2, 5);
		
		// refresh base FloatingMenu(fmenu) and set it invisible
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}
	
	{/*!! Section binarization and histograms floating menu !!*/
		label_off = c_label;
		
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 5);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 413, 511);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_binary = (Container*)fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Binaryzacja");
		
		// label[label_off] "Algorytm:           "
		lab_algo_ind	= c_label;
		lab				= &(label[c_label++]);
		Label_new(lab, "Algorytm:           ");
		sprintf(lab->text_block.text+10, "%10s", (t_algo)?"Otsu":"tom3k.info");
		Label_applyDefaultStyle(lab, 0, 0, font2, 45, 5, true);
		
		// label[label_off+1] "Użyty histogram:       "
		lab_hist_ind	= c_label;
		lab				= &(label[c_label++]);
		Label_new(lab, "Użyty histogram:       ");
		sprintf(lab->text_block.text+18, "%5s", hist_names[num_hist]);
		Label_applyDefaultStyle(lab, 0, 0, font2, 18, 5, true);
		
		// label[label_off+2] "Próg:       "
		lab_thr_ind		= c_label;
		lab				= &(label[c_label++]);
		Label_new(lab, "Próg:       ");
		Label_applyDefaultStyle(lab, 0, 0, font2, 50, 5, true);
			//! add some cparams to functions which use label with binarization threshold value
			Screen_addParameter(sc, button_dest_to_src,		lab,	3, NULL);
			Screen_addParameter(sc, button_src_restore,		lab,	3, NULL);
			Screen_addParameter(sc, button_imgsrc_open,		lab,	3, NULL);
			Screen_addParameter(sc, button_bin_algo_toggle,	lab,	0, NULL);
		
		
		{ /** SubSection cparams only **/
			cparam_off = 0; //! function: button_bin_algo_toggle
			Screen_addParameter(sc, button_bin_algo_toggle, &(label[lab_algo_ind]),		1, &cparam_off);
			Screen_addParameter(sc, button_bin_algo_toggle, &t_algo,					4, &cparam_off);
			Screen_addParameter(sc, button_bin_algo_toggle, &t,							5, &cparam_off);
			
			cparam_off = 0; //! function: button_used_hist_toggle
			Screen_addParameter(sc, button_used_hist_toggle, &(label[lab_hist_ind]),	0, &cparam_off);
			Screen_addParameter(sc, button_used_hist_toggle, &(label[lab_thr_ind]),		1, &cparam_off);
			Screen_addParameter(sc, button_used_hist_toggle, &num_hist,					4, &cparam_off);
			Screen_addParameter(sc, button_used_hist_toggle, hist_names,				5, &cparam_off);
			Screen_addParameter(sc, button_used_hist_toggle, &t,						6, &cparam_off);
			
			cparam_off = 0; //! function: button_create_histograms_click
			Screen_addParameter(sc, button_create_histograms_click, &(image[0]),		0, &cparam_off);
			Screen_addParameter(sc, button_create_histograms_click, colors,				1, &cparam_off);
			Screen_addParameter(sc, button_create_histograms_click, histogram,			2, &cparam_off);
			Screen_addParameter(sc, button_create_histograms_click, cont_hist,			3, &cparam_off);
			
			cparam_off = 0; //! function: button_threshold_change
			Screen_addParameter(sc, button_threshold_change, &(label[lab_thr_ind]),		0, &cparam_off);
			Screen_addParameter(sc, button_threshold_change, &t,						1, &cparam_off);
			
			cparam_off = 0; //! function: button_threshold_apply
			Screen_addParameter(sc, button_threshold_apply, &(image[0]),				0, &cparam_off);
			Screen_addParameter(sc, button_threshold_apply, &(image[1]),				1, &cparam_off);
			Screen_addParameter(sc, button_threshold_apply, &t,							2, &cparam_off);
			
			cparam_off = 0; //! function: button_dest_splotfilter 
			Screen_addParameter(sc, button_dest_splotfilter, &(image[0]),				0, &cparam_off);
			Screen_addParameter(sc, button_dest_splotfilter, &(image[1]),				1, &cparam_off);
			Screen_addParameter(sc, button_dest_splotfilter, gtsf,						2, &cparam_off);
		}	/** END SubSection cparams only **/
		
		for (k = label_off; k < label_off+3; k++, f++) {
			// create StackList(sliy2) (contains arrow buttons placed along Y axis)
			sliy2 = &(stacklist[c_stacklist++]);
			StackList_new(sliy2, VERTICAL, 2);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
			((Widget*)butimg)->click_handler = click_handler[f];
			((Widget*)butimg)->id = 1;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
			butimg2 = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg2, Static_getArrowDnButton(), false);
			((Widget*)butimg2)->click_handler = click_handler[f];
			((Widget*)butimg2)->id = 0;
			StackList_addWidgetLast(sliy2, (Widget*)butimg2, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// Refresh StackList(sliy2) with buttons already filled
			StackList_refresh(sliy2);
			
			// create stacklist(slix) (full row)
			slix = &(stacklist[c_stacklist++]);
			StackList_new(slix, HORIZONTAL, 2);
			
			// add stacklist(sliy2) and label[k] to stacklist(slix)
			StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 10);
			StackList_addWidgetLast(slix, (Widget*)&label[k], ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			StackList_refresh(slix);
			
			// add stacklist(slix) to base FloatingMenu(fmenu) (full row)
			FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_LEFT, ALIGN_CENTER, 4, 0, 2, 4);
			
			if (f == 9) { // created buttons threshold up/down; add them as cparam-s to many handlers
						  // these handlers want to enable/disable these buttons
				cparam_off = 0; //! function: button_bin_create_histograms
				Screen_addParameter(sc, button_bin_create_histograms,	butimg,		4, &cparam_off);
				Screen_addParameter(sc, button_bin_create_histograms,	butimg2,	5, &cparam_off);
				cparam_off = 0; //! function: button_used_hist_toggle
				Screen_addParameter(sc, button_used_hist_toggle,		butimg,		2, &cparam_off);
				Screen_addParameter(sc, button_used_hist_toggle,		butimg2,	3, &cparam_off);
				cparam_off = 0; //! function: button_bin_algo_toggle
				Screen_addParameter(sc, button_bin_algo_toggle,			butimg,		2, &cparam_off);
				Screen_addParameter(sc, button_bin_algo_toggle,			butimg2,	3, &cparam_off);
				cparam_off = 0; //! function: button_dest_to_src
				Screen_addParameter(sc, button_dest_to_src,				butimg,		4, &cparam_off);
				Screen_addParameter(sc, button_dest_to_src,				butimg2,	5, &cparam_off);
				cparam_off = 0; //! function: button_src_restore
				Screen_addParameter(sc, button_src_restore,				butimg,		4, &cparam_off);
				Screen_addParameter(sc, button_src_restore,				butimg2,	5, &cparam_off);
				cparam_off = 0; //! function: button_imgsrc_open
				Screen_addParameter(sc, button_imgsrc_open,				butimg,		4, &cparam_off);
				Screen_addParameter(sc, button_imgsrc_open,				butimg2,	5, &cparam_off);
			}
		}
		
		// Disable arrow buttons: threshold value up and down (lately added buttonimages)
		ButtonImage_setEnabled(&(buttonimage[c_buttonimage-2]), false);
		ButtonImage_setEnabled(&(buttonimage[c_buttonimage-1]), false);
		
		// Create stacklist(slix) with lower buttons
		slix = &(stacklist[c_stacklist++]);
		StackList_new(slix, HORIZONTAL, 2);
		
		// Button "Utwórz histogramy" and add to StackList(slix)
		but = &(button[c_button++]);
		Button_new(but, "Utwórz histogramy");
		Button_applyDefaultStyle(but, 0, 0, font2, 3, 4, true);
		((Widget*)but)->click_handler = button_bin_create_histograms; 
		StackList_addWidgetLast(slix, (Widget*)but, ALIGN_CENTER, ALIGN_BOTTOM, 10, 3, 1, 3);
			//! add some cparams to function button_bin_create_histograms
			cparam_off = 0;
			Screen_addParameter(sc, button_bin_create_histograms, &(image[0]),				0, &cparam_off);
			Screen_addParameter(sc, button_bin_create_histograms, colors,					1, &cparam_off);
			Screen_addParameter(sc, button_bin_create_histograms, histogram,				2, &cparam_off);
			Screen_addParameter(sc, button_bin_create_histograms, cont_hist,				3, &cparam_off);
			Screen_addParameter(sc, button_bin_create_histograms, &(label[lab_thr_ind]),	6, &cparam_off);
			Screen_addParameter(sc, button_bin_create_histograms, &t,						7, &cparam_off);
			Screen_addParameter(sc, button_bin_create_histograms, &num_hist,				8, &cparam_off);
			Screen_addParameter(sc, button_bin_create_histograms, &t_algo,					9, &cparam_off);
		
		// Button "Zastosuj próg" and add to StackList(slix)
		but = &(button[c_button++]);
		Button_new(but, "Zastosuj próg");
		Button_applyDefaultStyle(but, 0, 0, font2, 3, 4, true);
		((Widget*)but)->click_handler = button_threshold_apply; 
		StackList_addWidgetLast(slix, (Widget*)but, ALIGN_CENTER, ALIGN_BOTTOM, 10, 3, 1, 3);
		
		// Refresh stacklist(slix) with lower buttons and add it to base FloatingMenu(fmenu)
		StackList_refresh(slix);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_LEFT, ALIGN_CENTER, 4, 0, 2, 4);
		
		// Refresh base FloatingMenu(fmenu) and set it invisible
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}
	
	{ /*! SECTION "Filtracja splotowa" !*/
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 4);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 771, 16);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_fsplot = (Container*)fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Filtracja splotowa");
	
		// Create Grid[3][6] in (gri) for filtration weights spinners
		gri = &(grid[c_grid++]);
		Grid_new(gri, 3, 6);
		Container_setPadding((Container*)gri, 10, 0);
		k = 8; // weight index (reverse order, see GToolsSplotFilter.* for details)
		Label *lab_weight_first = &(label[c_label]); // ptr to first label avaliable for construction
		// add pointer (void*)label[c_label] to button_change_filter_weight as cparam
		for (y = 0; y < 3; y++) {			// foreach row of grid
			for (x = 0; x < 3; x++) {		// foreach column of grid
				// Create Label with weight value and add it to grid(gri) at [y][2*x+1] = [0,1,2][1,3,5]
				lab = &(label[c_label++]);
				Label_new(lab, "       ");
				snprintf(lab->text_block.text, 7, "%6.2f", gtsf->weight[k]);
				Label_applyDefaultStyle(lab, 0, 0, font2, 10, 2, true);
				Grid_add(gri, (Widget*)lab, y, (x<<1)+1, ALIGN_LEFT, ALIGN_CENTER, 10, 3, 10, (x==2)?0:20);
				
				// create StackList(sliy2) (contains arrow buttons placed along Y axis)
				sliy2 = &(stacklist[c_stacklist++]);
				StackList_new(sliy2, VERTICAL, 2);
				
				// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
				butimg = &(buttonimage[c_buttonimage++]);
				ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
				Widget_addParameter((Widget*)butimg, lab, 1);					// label with weight (above)
				((Widget*)butimg)->click_handler = button_change_filter_weight;	// callback function
				((Widget*)butimg)->id = (k << 1) + 1; 							// arrow up id: 2*k + 1
				StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
				
				// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
				butimg = &(buttonimage[c_buttonimage++]);
				ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
				Widget_addParameter((Widget*)butimg, lab, 1);					// label with weight (above)
				((Widget*)butimg)->click_handler = button_change_filter_weight;	// callback function
				((Widget*)butimg)->id = (k << 1);								// arrow down id: 2*k
				StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
				
				// Refresh StackList(sliy2) with buttons already filled
				StackList_refresh(sliy2);
				
				// Add stacklist(sliy2) to grid(gri) at [y][2*x] = [0,1,2][0,2,4]
				Grid_add(gri, (Widget*)sliy2, y, x<<1, ALIGN_CENTER, ALIGN_CENTER, 10, 5, 10, 2);
				
				// decrease weight index
				k--;
			}
		}
		
		// Refresh Grid(gri) and add it to base FloatingMenu(fmenu)
		Grid_refresh(gri);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)gri, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		
		// Create Label with predefinied filter name
		lab = &(label[c_label++]);
		Label_new(lab, "STD:                                    ");
		snprintf(lab->text_block.text+5, 32, "%32s", GToolsSplotFilter_getFilterName(gtsf));
		Label_applyDefaultStyle(lab, 0, 0, font2, 60, 2, true);
		Grid_add(gri, (Widget*)lab, y, (x<<1)+1, ALIGN_LEFT, ALIGN_CENTER, 10, 3, 10, (x==2)?0:20);
		//! add some cparams for function button_change_filter_weight and button_change_filter_predef
			cparam_off = 0; 
			Screen_addParameter(sc, button_change_filter_weight, lab,				0, &cparam_off);
			Screen_addParameter(sc, button_change_filter_weight, gtsf,				1, &cparam_off);
			cparam_off = 0; 
			Screen_addParameter(sc, button_change_filter_predef, lab,				0, &cparam_off);
			Screen_addParameter(sc, button_change_filter_predef, gtsf,				1, &cparam_off);
			Screen_addParameter(sc, button_change_filter_predef, lab_weight_first,	2, &cparam_off);
		
		// create stacklist(slix): spinner with predefinied filter name (label created above)
		slix = &(stacklist[c_stacklist++]);
		StackList_new(slix, HORIZONTAL, 2);
		
		// create StackList(sliy2) (contains arrow buttons placed along Y axis)
		sliy2 = &(stacklist[c_stacklist++]);
		StackList_new(sliy2, VERTICAL, 2);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
		((Widget*)butimg)->click_handler = button_change_filter_predef;	// callback function
		((Widget*)butimg)->id = 1;
		StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
		((Widget*)butimg)->click_handler = button_change_filter_predef;	// callback function
		((Widget*)butimg)->id = 0;
		StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// Refresh StackList(sliy2) with buttons already filled
		StackList_refresh(sliy2);
		
		// Add StackList(sliy2) with buttons and label(lab) with predef filter name to stacklist(slix) and refresh (slix)
		StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_CENTER, 5, 5, 5, 2);
		StackList_addWidgetLast(slix, (Widget*)lab,   ALIGN_LEFT,   ALIGN_CENTER, 5, 5, 5, 5);
		StackList_refresh(slix);
		
		// Add stacklist(slix) to base FloatingMenu(fmenu)
		FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_CENTER, ALIGN_CENTER, 5, 5, 5, 5);
		
		// Create Button "Zastosuj filtr" and add it to base FloatingMenu(fmenu)
		but = &(button[c_button++]);
		Button_new(but, "Zastosuj filtr");
		Button_applyDefaultStyle(but, 0, 0, font2, 5, 5, true);
		((Widget*)but)->click_handler = button_dest_splotfilter;
		FloatingMenu_addWidgetLast(fmenu, (Widget*)but, ALIGN_CENTER, ALIGN_BOTTOM, 15, 3, 7, 3);
		
		// Refresh base FloatingMenu(fmenu) and set it invisible
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	} /*! END SECTION "Filtracja splotowa" !*/
	
	{/*! Section Structuring element editor */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 3);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 800, 300);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_elem_struct = (Container*)fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Element strukturalny");
	
		//!!! PixelDrawBox in second row of base FloatingMenu(fmenu) in (pd)
		PixelDrawBox *pd = &pdb[c_pdb++];
		PixelDrawBox_new(pd, 450, 450, 30, 30, 4, 3);
		PixelDrawBox_setPosition(pd, 894, 541);
		PixelDrawBox_setPadding(pd, 1, 1);
		pd->grid.showBorder = true;
		PixelDrawBox_refresh(pd);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)pd, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		{ /** SubSection cparams only (mainly using PixelDrawBox(pd) **/
			 //! function: button_change_strelem_size
			Screen_addParameter(sc, button_change_strelem_size, pd,				0, NULL);
			
			cparam_off = 0; //! function: button_dilate_click
			Screen_addParameter(sc, button_dilate_click,		&image[0],		0, &cparam_off);
			Screen_addParameter(sc, button_dilate_click,		&image[1],		1, &cparam_off);
			Screen_addParameter(sc, button_dilate_click,		pd,				2, &cparam_off);
			
			cparam_off = 0; //! function: button_erode_click
			Screen_addParameter(sc, button_erode_click,			&image[0],		0, &cparam_off);
			Screen_addParameter(sc, button_erode_click,			&image[1],		1, &cparam_off);
			Screen_addParameter(sc, button_erode_click,			pd,				2, &cparam_off);
			
			cparam_off = 0; //! function: button_morph_open_click
			Screen_addParameter(sc, button_morph_open_click,	&image[0],		0, &cparam_off);
			Screen_addParameter(sc, button_morph_open_click,	&image[1],		1, &cparam_off);
			Screen_addParameter(sc, button_morph_open_click,	pd,				2, &cparam_off);
			
			cparam_off = 0; //! function: button_morph_close_click
			Screen_addParameter(sc, button_morph_close_click,	&image[0],		0, &cparam_off);
			Screen_addParameter(sc, button_morph_close_click,	&image[1],		1, &cparam_off);
			Screen_addParameter(sc, button_morph_close_click,	pd,				2, &cparam_off);
		}	/** END SubSection cparams only **/
		
		// Grid(gri) 2x2 containing labels, up/down arrows and its labels (used for changing size of structuring element)
		gri = &(grid[c_grid++]);
		Grid_new(gri, 2, 2);
		Container_setPadding((Container*)gri, 2, 2);
		
		/** Two header labels, will be added to first row of grid(gri) **/
		// label "Wierszy:" add to grid(gri) at [0][0]
		lab = &(label[c_label++]);
		Label_new(lab, "Wierszy:");
		Label_applyDefaultStyle(lab, 0, 0, font2, 1, 1, true);
		Grid_add(gri, (Widget*)lab, 0, 0, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// label "Kolumn:" add to grid(gri) at [0][1]
		lab = &(label[c_label++]);
		Label_new(lab, "Kolumn:");
		Label_applyDefaultStyle(lab, 0, 0, font2, 1, 1, true);
		Grid_add(gri, (Widget*)lab, 0, 1, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		/** Two spinners for count or rows/cols of structuring element manipulation  **/
		/** two cells in second row of grid have similar content **/
		for (i = 0, k = 0; i < 2; i++) {
			// Create Label(lab) with rows or cols count
			// [1][i=0] - rows(pdb->actY), [1][i=1] - cols(pdb->actX)
			lab = &(label[c_label++]);
			Label_new(lab, "    ");
			snprintf(lab->text_block.text, 4, "%3hu", (i==0)?pdb->actY:pdb->actX); 
			Label_applyDefaultStyle(lab, 0, 0, font2, 20, 2, true);
			
			// create StackList(sliy2) (contains arrow buttons placed along Y axis)
			sliy2 = &(stacklist[c_stacklist++]);
			StackList_new(sliy2, VERTICAL, 2);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
			Widget_addParameter((Widget*)butimg, lab, 1);
			((Widget*)butimg)->click_handler = button_change_strelem_size;	// callback function
			((Widget*)butimg)->id = k++;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
			Widget_addParameter((Widget*)butimg, lab, 1);
			((Widget*)butimg)->click_handler = button_change_strelem_size;	// callback function
			((Widget*)butimg)->id = k++;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// Refresh StackList(sliy2) with buttons already filled
			StackList_refresh(sliy2);
			
			// Create stacklist(slix) and add to it buttons stacklist(sliy2) and label(lab) and refresh (slix)
			slix = &(stacklist[c_stacklist++]);
			StackList_new(slix, HORIZONTAL, 2);
			StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			StackList_addWidgetLast(slix, (Widget*)lab,   ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			StackList_refresh(slix);
			
			// add stacklist(slix) to grid(gri) at [1][i]=[1][0,1]
			Grid_add(gri, (Widget*)slix, 1, i, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		}
		
		// Refresh grid(gri) and add it to base FloatingMenu(fmenu)
		Grid_refresh(gri); 
		FloatingMenu_addWidgetLast(fmenu, (Widget*)gri, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// refresh base FloatingMenu(fmenu) and set it invisible
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}/*! End Section Structuring element editor */
	
	{/*! SECTION MORPHOLOGY menu */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 6);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 679, 1);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_morf = (Container*)fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Operacje morfologiczne");
		
		// Add buttons
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Dylatacja",				button_dilate_click,		0);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Erozja",					button_erode_click,			0);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Otwarcie",				button_morph_open_click,	0);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Zamknięcie",				button_morph_close_click,	0);
		FloatingMenu_addLabelLast(fmenu, font2, "Geodezyjne:");
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Dylatacja",				button_dilate_click,		1);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Erozja",					button_erode_click,			1);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Otwarcie",				button_morph_open_click,	1);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Zamknięcie",				button_morph_close_click,	1);
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}/*! END SECTION MORPHOLOGY */
	
	{/*! SECTION histogram equalization */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 3);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 1309, 1);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_equal = (Container*)fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Wyrównanie histogramu");
		
		// Add buttons
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Utwórz histogramy",		button_create_histograms_click,		0);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Wyrównanie",				button_histograms_equalize,			0);
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	
		cparam_off = 0; 
		Screen_addParameter(sc, button_histograms_equalize, &(image[1]), 0, &cparam_off);
		Screen_addParameter(sc, button_histograms_equalize, colors,     1, &cparam_off);
		Screen_addParameter(sc, button_histograms_equalize, histogram,  2, &cparam_off);
		Screen_addParameter(sc, button_histograms_equalize, cont_equal, 3, &cparam_off);
		
	}/*! END SECTION Histogram equalization */
	
	{/*! Section reconstruction menu */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 3);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 984, 1);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_reconst = (Container*)fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Rekonstrukcja");
		
		// button: "Otwórz marker", add to FloatingMenu(fmenu)
		but = &(button[c_button++]);
		Button_new(but, "Otwórz marker");
		Button_applyDefaultStyle(but, 23, 221, font2, 5, 5, true);
		((Widget*)but)->click_handler  = button_reconstruction_marker_open;
		Widget_addParameter((Widget*)but, &(image[2]), 2);
		Widget_addParameter((Widget*)but, &(image[0]), 2);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)but, ALIGN_LEFT, ALIGN_BOTTOM, 12, 0, 10, 0);
		
		// label with reconstruction limit (for spinner)
		lab = &(label[c_label++]);
		Label_new(lab, "       ");
		sprintf(lab->text_block.text,  "%5hu", reconst_limit);
		Label_applyDefaultStyle(lab, 0, 0, font2, 20, 2, true);
		
		// create StackList(sliy2) (contains arrow buttons placed along Y axis)
		sliy2 = &(stacklist[c_stacklist++]);
		StackList_new(sliy2, VERTICAL, 2);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
		Widget_addParameter((Widget*)butimg, lab, 2);
		Widget_addParameter((Widget*)butimg, &reconst_limit, 2);
		((Widget*)butimg)->click_handler = button_change_reconst_limit;	// callback function
		((Widget*)butimg)->id = 1;
		StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
		Widget_addParameter((Widget*)butimg, lab, 2);
		Widget_addParameter((Widget*)butimg, &reconst_limit, 2);
		((Widget*)butimg)->click_handler = button_change_reconst_limit;	// callback function
		((Widget*)butimg)->id = 0;
		StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// Refresh StackList(sliy2) with buttons already filled
		StackList_refresh(sliy2);
		
		// create stacklist(slix) and add to it buttons stacklist(sliy2) and label(lab)
		slix = &(stacklist[c_stacklist++]);
		StackList_new(slix, HORIZONTAL, 2);
		StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_BOTTOM, 5, 0, 0, 0);
		StackList_addWidgetLast(slix, (Widget*)lab, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		StackList_refresh(slix);
		
		// create stacklist(sliy) with label "Limit iteracji:" and already created spinner(slix)
		sliy = &(stacklist[c_stacklist++]);
		StackList_new(sliy, VERTICAL, 2);
		
		// label "Limit iteracji:" add to stacklist(sliy)
		lab = &(label[c_label++]);
		Label_new(lab, "Limit iteracji:");
		Label_applyDefaultStyle(lab, 0, 0, font2, 20, 2, true);
		
		StackList_addWidgetLast(sliy, (Widget*)lab, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		StackList_addWidgetLast(sliy, (Widget*)slix, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		StackList_refresh(sliy);
		
		// create stacklist(slix) with already created stacklist(sliy) and button "Wykonaj"
		slix = &(stacklist[c_stacklist++]);
		StackList_new(slix, HORIZONTAL, 2);
		StackList_addWidgetLast(slix, (Widget*)sliy, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// button "Wykonaj" add to stacklist(slix)
		but = &(button[c_button++]);
		Button_new(but, "Wykonaj");
		Button_applyDefaultStyle(but, 23, 221, font2, 4, 4, true);
		((Widget*)but)->click_handler  = button_apply_reconstruction_filter;
		Widget_addParameter((Widget*)but, &(image[0]), 3);
		Widget_addParameter((Widget*)but, &(image[2]), 3);
		Widget_addParameter((Widget*)but, &reconst_limit, 3);
		StackList_addWidgetLast(slix, (Widget*)but, ALIGN_LEFT, ALIGN_BOTTOM, 12, 0, 0, 0);
		StackList_refresh(slix);
		
		// add stacklist(slix) to base FloatingMenu(fmenu) and set it invisible
		
		FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_LEFT, ALIGN_BOTTOM, 12, 0, 0, 0);
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}/*! END section reconstruction */
	
	{/*! Section "Replace colors" */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 6);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 1557, 167);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_rep = (Container*) fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Zamiana kolorów");
	
		// label(lab) "Próg:     "
		lab = &(label[c_label++]);
		Label_new(lab, "Próg:     ");
		sprintf(lab->text_block.text+7, "%3d", rep_thr);
		Label_applyDefaultStyle(lab, 0, 0, font2, 37, 2, true);
		//!
			cparam_off = 0; 
			Screen_addParameter(sc, button_rep_col_change_threshold, lab, 		0, &cparam_off);
			Screen_addParameter(sc, button_rep_col_change_threshold, &rep_thr, 	1, &cparam_off);
		
		// label(lab) "Warunek:      "
		lab = &(label[c_label++]);
		Label_new(lab, "Warunek:      ");
		sprintf(lab->text_block.text+9, "`%2s`", cond_sym[rep_cond]);
		Label_applyDefaultStyle(lab, 0, 0, font2, 20, 2, true);
		//!
			cparam_off = 0; 
			Screen_addParameter(sc, button_rep_col_change_condition, lab, 			0, &cparam_off);
			Screen_addParameter(sc, button_rep_col_change_condition, &rep_cond, 	1, &cparam_off);
			Screen_addParameter(sc, button_rep_col_change_condition, cond_sym, 		2, &cparam_off);
		
		for (i = 0, f = 30, j=c_label-2; i < 2; i++, f++, j++) {
			// stacklist(slix) (whole spinner)
			slix = &(stacklist[c_stacklist++]);
			StackList_new(slix, HORIZONTAL, 2);
			
			// create StackList(sliy2) (contains arrow buttons placed along Y axis)
			sliy2 = &(stacklist[c_stacklist++]);
			StackList_new(sliy2, VERTICAL, 2);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
			((Widget*)butimg)->click_handler = click_handler[f];	// callback function
			((Widget*)butimg)->id = 1;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
			((Widget*)butimg)->click_handler = click_handler[f];	// callback function
			((Widget*)butimg)->id = 0;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// Refresh StackList(sliy2) with buttons already filled
			StackList_refresh(sliy2);
			
			// StackList(sliy2) with buttons filled and add it to StackList(slix)
			StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 7);
			
			// add label[j] to StackList(slix) and refresh it 
			StackList_addWidgetLast(slix, (Widget*)&label[j], ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			StackList_refresh(slix);
			
			// add StackList(slix) to base FloatingMenu(fmenu)
			FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_CENTER, ALIGN_CENTER, 5, 10, 5, 10);
		}
		
		// label(lab) "Nowy kolor" add to base FloatingMenu(fmenu)
		lab = &(label[c_label++]);
		Label_new(lab, "Nowy kolor");
		Label_applyDefaultStyle(lab, 0, 0, font2, 20, 2, true);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)lab, ALIGN_CENTER, ALIGN_BOTTOM, 10, 10, 2, 10);
		
		// stacklist(slix) with replacement color three spinners
		slix = &(stacklist[c_stacklist++]);
		StackList_new(slix, HORIZONTAL, 6);
		
		for (i = 0; i < 3; i++) {
			// label(lab) with spinner value
			lab = &(label[c_label++]);
			Label_new(lab, "    ");
			sprintf(lab->text_block.text, "%3d", rep_new[i]);
			Label_applyDefaultStyle(lab, 0, 0, font2, 10, 2, true);
			
			// create StackList(sliy2) (contains arrow buttons placed along Y axis)
			sliy2 = &(stacklist[c_stacklist++]);
			StackList_new(sliy2, VERTICAL, 2);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
			Widget_addParameter((Widget*)butimg, lab, 2);
			Widget_addParameter((Widget*)butimg, &rep_new[i], 2);
			((Widget*)butimg)->click_handler = button_rep_col_change_new_color;	// callback function
			((Widget*)butimg)->id = 1;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
			Widget_addParameter((Widget*)butimg, lab, 2);
			Widget_addParameter((Widget*)butimg, &rep_new[i], 2);
			((Widget*)butimg)->click_handler = button_rep_col_change_new_color;	// callback function
			((Widget*)butimg)->id = 0;
			StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// Refresh StackList(sliy2) with buttons already filled add to stacklist(slix)
			StackList_refresh(sliy2);
			StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// add label(lab) with spinner value to stacklist(slix)
			StackList_addWidgetLast(slix, (Widget*)lab, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		}
		
		// refresh stacklist(slix) and add it to base FloatingMenu(fmenu)
		StackList_refresh(slix);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// Button "Zastosuj" and add to FloatingMenu(fmenu)
		but = &(button[c_button++]);
		Button_new(but, "Zastosuj");
		Button_applyDefaultStyle(but, 23, 221, font2, 5, 5, true);
		((Widget*)but)->click_handler = button_rep_col_apply;
		FloatingMenu_addWidgetLast(fmenu, (Widget*)but, ALIGN_CENTER, ALIGN_BOTTOM, 3, 3, 3, 3);
		
		//!
		cparam_off = 0; 
		Screen_addParameter(sc, button_rep_col_apply, &(image[0]), 0, &cparam_off);
		Screen_addParameter(sc, button_rep_col_apply, &(image[1]), 1, &cparam_off);
		Screen_addParameter(sc, button_rep_col_apply, &rep_cond, 2, &cparam_off);
		Screen_addParameter(sc, button_rep_col_apply, &rep_thr, 3, &cparam_off);
		Screen_addParameter(sc, button_rep_col_apply, rep_new, 4, &cparam_off);
		
		// 
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}/*! End Section "Replace colors" */
	
	{/*! SECTION HistStretchGraph */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 3);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 870, 120);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_hsg = (Container*) fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Rozciąganie histogramu");
		
		// HistStretchGraph object add to fmenu
		HistStretchGraph *hs = &(hsg[c_hsg++]);
		HistStretchGraph_new(hs, font4, 8);
		HistStretchGraph_refresh(hs);
		//hs->release_handler = histogram_stretch_on_mouse_release;
		Widget_addParameter((Widget*)hs, &image[0], 2);
		Widget_addParameter((Widget*)hs, &image[1], 2);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)hs, ALIGN_CENTER, ALIGN_BOTTOM, 3, 3, 3, 3);
		
		// label (lab) "Liczba węzłów:    "
		lab = &(label[c_label++]);
		Label_new(lab, "Liczba węzłów:    ");
		sprintf(lab->text_block.text+18, "%3hu", hs->size);
		Label_applyDefaultStyle(lab, 0, 0, font2, 10, 2, true);
		
		// last row stacklist(slix)
		slix = &(stacklist[c_stacklist++]);
		StackList_new(slix, HORIZONTAL, 3);
		
		// create StackList(sliy2) (contains arrow buttons placed along Y axis)
		sliy2 = &(stacklist[c_stacklist++]);
		StackList_new(sliy2, VERTICAL, 2);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
		Widget_addParameter((Widget*)butimg, lab, 2);
		Widget_addParameter((Widget*)butimg, hs, 2);
		((Widget*)butimg)->click_handler = button_change_hist_stretch_nodes;	// callback function
		((Widget*)butimg)->id = 1;
		StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
		Widget_addParameter((Widget*)butimg, lab, 2);
		Widget_addParameter((Widget*)butimg, hs, 2);
		((Widget*)butimg)->click_handler = button_change_hist_stretch_nodes;	// callback function
		((Widget*)butimg)->id = 0;
		StackList_addWidgetLast(sliy2, (Widget*)butimg, ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// Refresh StackList(sliy2) with buttons already filled
		StackList_refresh(sliy2);
		
		// Add StackList(sliy2) to stacklist(slix)
		StackList_addWidgetLast(slix, (Widget*)sliy2, ALIGN_CENTER, ALIGN_BOTTOM, 3, 3, 3, 3);
		// Add label(lab)
		StackList_addWidgetLast(slix, (Widget*)lab, ALIGN_CENTER, ALIGN_CENTER, 3, 3, 3, 50);
		
		// Button(but) "Zastosuj"
		but = &(button[c_button++]);
		Button_new(but, "Zastosuj");
		Button_applyDefaultStyle(but, 23, 221, font2, 5, 5, true);
		((Widget*)but)->click_handler = button_hist_stretch_apply;
		Widget_addParameter((Widget*)but, hs, 1);
		StackList_addWidgetLast(slix, (Widget*)but, ALIGN_CENTER, ALIGN_BOTTOM, 3, 3, 3, 3);
		
		// refresh last row stacklist(slix) and add to base FloatingMenu(fmenu)
		StackList_refresh(slix);
		FloatingMenu_addWidgetLast(fmenu, (Widget*)slix, ALIGN_CENTER, ALIGN_BOTTOM, 3, 3, 3, 3);
		
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
	}/*! END SECTION HistStretchGraph */
	
	{/*! SECTION FILTERS */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 6);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 1220, 1);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		cont_filters = (Container*) fmenu;
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Filtry");
		
		// Add buttons
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Medianowy", 	button_generic_filter_apply, FILTER_MEDIAN);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Średnia", 	button_generic_filter_apply, FILTER_AVERAGE);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Minimum", 	button_generic_filter_apply, FILTER_MIN);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Maksimum",	button_generic_filter_apply, FILTER_MAX);
		FloatingMenu_addMenuButtonLast(fmenu, font4, "Maks-Min",	button_generic_filter_apply, FILTER_MAX_MINUS_MIN);
		
		FloatingMenu_refresh(fmenu);
		FloatingMenu_setVisible(fmenu, false);
		
		//!
		cparam_off = 0; Screen_addParameter(sc, button_generic_filter_apply, (void*)&(image[0]), 0, &cparam_off);
		Screen_addParameter(sc, button_generic_filter_apply, (void*)&(image[1]), 1, &cparam_off);
	}/*! END SECTION FILTERS */
		
	{/*! SECTION View menu */
		// Create FloatingMenu(fmenu) and add it to screen
		fmenu = &(fm[c_fm++]);
		FloatingMenu_new(fmenu, VERTICAL, 16);
		Container_setPadding((Container*)fmenu, 10, 10);
		Widget_setPosition((Widget*)fmenu, 435, 1);
		((Widget*)fmenu)->draggable = true;
		Screen_addWidget(sc, (Widget*)fmenu);
		
		// Add header button
		FloatingMenu_addBaseHeader(fmenu, font2, "Widok");
		
		// Add buttons
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Jasność/kontrast", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_jasn_kontr, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Binaryzacja", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_binary, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Histogramy", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_hist, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Filtracja splotowa", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_fsplot, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Element strukturalny", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_elem_struct, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Operacje morfologiczne", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_morf, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Wyrównanie histogramu", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_equal, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Rekonstrukcja", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_reconst, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Zamiana kolorów", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_rep, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Rozciąganie histogramu", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_hsg, 1);
		but = FloatingMenu_addMenuButtonLast(fmenu, font4, "Filtry", button_view_click, 0);
		if (but) Widget_addParameter((Widget*)but, cont_filters, 1);
		
		FloatingMenu_refresh(fmenu);
	}/*! END SECTION VIEW */
	
	
	fprintf(stderr, "GraphicsMain - count of widget:\n\tImages %hu/%d\n\tButtons %hu/%d\n\tTextBlocks %hu/%d\n\tLabels %hu/%d\n\tLabelImages %hu/%d\n\tButtonImages %hu/%d\n\tRectangles %hu/%d\n\tHistograms %hu/%d\n\tStackList %hu/%d\n\tFloatingMenus %hu/%d\n\tGrids %hu/%d\n",
					c_image, cIMAGE, c_button, cBUTTON, c_textblock, cTEXTBLOCK, c_label, cLABEL, c_labelimage, cLABELIMAGE, c_buttonimage, cBUTTONIMAGE, c_rectangle, cRECTANGLE, c_histogram, cHISTOGRAM, c_stacklist, cSTACKLIST, c_fm, cFLOATINGMENU, c_grid, cGRID);
	
	is_inited = true;
	return 0;
}

int GraphicsMain_Initialize() {
	if (is_inited) return 0;	// already initialized
	
	perr e = E_NO_ERROR;
	sc = Screen_new(calloc(1, sizeof(Screen)), &e, 0);
	if (e) {
		fprintf(stderr, "GraphicsMain_Initialize: Screen_new failed with error %s\n", perr_getName(e));
		free(delete(sc));
		return 1;
	}
	Screen_CallbackCreate(sc, click_handler, GRAPHICS_CALLBACKS_COUNT);
	sc->toogle_drag_on = gdragon_toogle;	// add handler to drag on toogle events
	
	// graphics threshold
	colors[0] = (uint*) calloc(256, sizeof(uint));	// R
	colors[1] = (uint*) calloc(256, sizeof(uint));	// G
	colors[2] = (uint*) calloc(256, sizeof(uint));	// B
	t = 0xFFFFFFFF;
	
	/* Create user interface */
	if (GraphicsMain_createInterface()) {
		fprintf(stderr, "GraphicsMain_Initialize:GraphicsMain failed\n");
		return 1;
	}
	
	return 0;
}

int GraphicsMain_Main() {
	//fprintf(stderr, "GraphicsMain_Main()\n");
	if (! is_inited) {
		fprintf(stderr, "GraphicsMain_Main:GraphicsMain SubProgram NOT initialized\n");
		return 1;
	}
	
	Screen_MainStart(sc);
	
	return 0;
}

void GraphicsMain_Destroy() {
	if (!is_inited) return;
	usint i;
	
	if (sc) { free(delete(sc)); sc = NULL; }
	if (background) free(delete(background));
	
	if (image)			{ for (i = 0; i < c_image; i++) 			delete(&image[i]); 			free(image);		image = NULL;		c_image = 0; }
	if (text_block)		{ for (i = 0; i < c_textblock; i++) 		delete(&text_block[i]);		free(text_block);	text_block = NULL;	c_textblock = 0; }
	if (button)			{ for (i = 0; i < c_button; i++)			delete(&button[i]); 		free(button);		button = NULL;		c_button = 0; }
	if (label)			{ for (i = 0; i < c_label; i++)				delete(&label[i]);			free(label);		label = NULL;		c_label = 0; }
	if (labelimage)		{ for (i = 0; i < c_labelimage; i++) 		delete(&labelimage[i]);		free(labelimage);	labelimage = NULL;	c_labelimage = 0; }
	if (buttonimage)	{ for (i = 0; i < c_buttonimage; i++) 		delete(&buttonimage[i]);	free(buttonimage);	buttonimage = NULL;	c_buttonimage = 0; }
	if (rectangle)		{ for (i = 0; i < c_rectangle; i++) 		delete(&rectangle[i]); 		free(rectangle);	rectangle = NULL;	c_rectangle = 0; }
	if (histogram)		{ for (i = 0; i < c_histogram; i++) 		delete(&histogram[i]);		free(histogram);	histogram = NULL;	c_histogram = 0; }
	if (pdb)			{ for (i = 0; i < c_pdb; i++)				delete(&pdb[i]);			free(pdb);			pdb = NULL;			c_pdb = 0; }
	if (hsg)			{ for (i = 0; i < c_hsg; i++)				delete(&hsg[i]);			free(hsg);			hsg = NULL;			c_hsg = 0; }
	if (stacklist)		{ for (i = 0; i < c_stacklist; i++) 		delete(&stacklist[i]);		free(stacklist);	stacklist = NULL;	c_stacklist = 0; }
	if (fm)				{ for (i = 0; i < c_fm; i++)				delete(&fm[i]);				free(fm);			fm = NULL; 			c_fm = 0; }
	if (grid)			{ for (i = 0; i < c_grid; i++) 				delete(&grid[i]);			free(grid);			grid = NULL;		c_grid = 0; }
	if (gtsf)			{ 											delete(gtsf);				free(gtsf);			gtsf = NULL;}
	
	if (font2) { TTF_CloseFont(font2); font2 = NULL; }
	if (font4) { TTF_CloseFont(font4); font4 = NULL; }
	
	if (colors[0]) { free(colors[0]); colors[0] = NULL; }
	if (colors[1]) { free(colors[1]); colors[1] = NULL; }
	if (colors[2]) { free(colors[2]); colors[2] = NULL; }
	
	is_inited = false;
}

