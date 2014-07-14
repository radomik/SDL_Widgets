/*
 *      GraphicsCallbacks.c - this file is part of SDL_Widgets
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
#include "FileBrowsePanel.h"
#include "Memory.h"
#include "Widget.h"
#include "Image.h"
#include "Button.h"
#include "TextBlock.h"
#include "Label.h"
#include "LabelImage.h"
#include "ButtonImage.h"
#include "Rectangle.h"
#include "StackList.h"
#include "StackListX.h"
#include "StackListY.h"
#include "StackListY.h"
#include "Grid.h"
#include "Container.h"
#include "GToolsPoint.h"
#include "GToolsSplotFilter.h"
#include "GToolsFilters.h"
#include "GToolsMorph.h"
#include "GraphicsMain.h"
#include "GraphicsCallbacks.h"
#include "Histogram.h"
#include "PixelDrawBox.h"
#include "HistStretchGraph.h"

/*! Open source and destination image from file
 *  Obvious parameters:
 * sender->cparam[0]   -- source image (must be created)										as Image*
 * sender->cparam[1]   -- destination image (must be created)									as Image*
 * sender->cparam[2]   -- Histogram histogram[3] array											as Histogram*
 * sender->cparam[3]   -- label binarization threshold will set to "" <- at text+7				as Label*
 * sender->cparam[4]   -- buttonimage binarization threshold up will be disabled				as ButtonImage*
 * sender->cparam[5]   -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
 * sender->cparam[6]   -- binarization threshold thr_value will be set to 0xFFFFFFFF			as u64
 */
void button_imgsrc_open(Widget *sender, Screen *screen) {
	FileBrowsePanel panel;
	FileBrowsePanel_new(&panel, IMAGE_SUPPORTED_FILES);
	
	const char *sel_path = FileBrowsePanel_show(&panel, true, false);
	delete(&panel);
	
	if (sel_path != NULL) { // file selected
		Image		*imgsrc 		= IMAGE( sender->cparam[0] );
		Image		*imgdst			= IMAGE( sender->cparam[1] );
		Histogram	*histogram		= HISTOGRAM( sender->cparam[2] );
		Label		*thr_bin_label	= LABEL( sender->cparam[3] );
		ButtonImage	*but_thr_up		= BUTTON_IMAGE( sender->cparam[4] );
		ButtonImage	*but_thr_dn		= BUTTON_IMAGE( sender->cparam[5] );
		u64			*thr_value		= (u64*) sender->cparam[6];
		
		b8		imgsrc_draggable  = WIDGET(imgsrc)->draggable;
		b8 		hist_vis 		  = WIDGET(&histogram[0])->visible;
		u16		src_x			  = WIDGET(imgsrc)->pos.x;
		u16		src_y			  = WIDGET(imgsrc)->pos.y;
		u16 	dst_x 			  = WIDGET(imgdst)->pos.x;
		u16 	dst_y 			  = WIDGET(imgdst)->pos.y;
		delete(imgsrc);
		delete(imgdst);
		Image_new(imgsrc, sel_path, src_x, src_y);
		
		if (WIDGET(imgsrc)->pos.w > WIDGET(imgsrc)->pos.h) {
			if (WIDGET(imgsrc)->pos.w > W_SCREEN_WIDTH) {
				const double scale = (double)W_SCREEN_WIDTH / (double)WIDGET(imgsrc)->pos.w;
				Widget_scale(WIDGET(imgsrc), scale, scale, 0);
			}
		}
		else {
			if (WIDGET(imgsrc)->pos.h > W_SCREEN_HEIGHT) {
				const double scale = (double)W_SCREEN_HEIGHT / (double)WIDGET(imgsrc)->pos.h;
				Widget_scale(WIDGET(imgsrc), scale, scale, 0);
			}
		}
		Image_copy(imgdst, imgsrc, true);
		Widget_setPosition(WIDGET(imgdst), dst_x, dst_y);
		
		WIDGET(imgsrc)->draggable = WIDGET(imgdst)->draggable = imgsrc_draggable;	
		
		histogram[0].data = histogram[1].data = histogram[2].data = NULL; // be careful
		Widget_refresh(WIDGET(&histogram[0])); 
		Widget_refresh(WIDGET(&histogram[1]));
		Widget_refresh(WIDGET(&histogram[2]));
		if (! hist_vis) {
			Widget_setVisible(WIDGET(&histogram[0]), false);
			Widget_setVisible(WIDGET(&histogram[1]), false);
			Widget_setVisible(WIDGET(&histogram[2]), false);
		}
		
		if (*thr_value <= 255) {
			*thr_value = 0xFFFFFFFF;
			thr_bin_label->text_block.text[7] = '\0'; /// @todo class String and setter access
			//sprintf(thr_bin_label->text_block.text+7, ""/*"\0"*/); 
			Widget_refresh(WIDGET(thr_bin_label));
			ButtonImage_setEnabled(but_thr_up, false);
			ButtonImage_setEnabled(but_thr_dn, false);
		}
	}
	screen->need_reload = true;
}

/*! Restore source image from file (using path from destination image)
 *  Obvious parameters:
 * sender->cparam[0]   -- source image															as Image*
 * sender->cparam[1]   -- destination image														as const Image*
 * sender->cparam[2]   -- Histogram histogram[3] array											as Histogram*
 * sender->cparam[3]   -- label binarization threshold will set to "" <- at text+7				as Label*
 * sender->cparam[4]   -- buttonimage binarization threshold up will be disabled				as ButtonImage*
 * sender->cparam[5]   -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
 * sender->cparam[6]   -- binarization threshold thr_value will be set to 0xFFFFFFFF			as u64
 * sender->cparam[7]   -- containter containing histograms (hide if not visible)				as Container*
 */
void button_src_restore(Widget *sender, Screen *screen) {
	Image		*imgsrc 		  = IMAGE( sender->cparam[0] );
	const Image	*imgdst			  = IMAGE( sender->cparam[1] );
	Histogram	*histogram		  = HISTOGRAM( sender->cparam[2] );
	Label		*thr_bin_label	  = LABEL( sender->cparam[3] );
	ButtonImage	*but_thr_up		  = BUTTON_IMAGE( sender->cparam[4] );
	ButtonImage	*but_thr_dn		  = BUTTON_IMAGE( sender->cparam[5] );
	u64			*thr_value	 	  = (u64*) sender->cparam[6];
	Widget		*hist_cont_wt	  = WIDGET( sender->cparam[7] );
	
	b8			imgsrc_draggable  = WIDGET(imgsrc)->draggable;
	b8			hist_cont_visible = hist_cont_wt->visible;
	u16			src_x			  = WIDGET(imgsrc)->pos.x;
	u16			src_y			  = WIDGET(imgsrc)->pos.y;
	delete(imgsrc);
	Image_new(imgsrc, imgdst->path, src_x, src_y);
	WIDGET(imgsrc)->draggable = imgsrc_draggable;
	
	if (WIDGET(imgsrc)->pos.w > WIDGET(imgsrc)->pos.h) {
		if (WIDGET(imgsrc)->pos.w > W_SCREEN_WIDTH) {
			const double scale = (double)W_SCREEN_WIDTH / (double)WIDGET(imgsrc)->pos.w;
			Widget_scale(WIDGET(imgsrc), scale, scale, 0);
		}
	}
	else {
		if (WIDGET(imgsrc)->pos.h > W_SCREEN_HEIGHT) {
			const double scale = (double)W_SCREEN_HEIGHT / (double)WIDGET(imgsrc)->pos.h;
			Widget_scale(WIDGET(imgsrc), scale, scale, 0);
		}
	}
	
	histogram[0].data = histogram[1].data = histogram[2].data = NULL; // be careful
	Widget_refresh(WIDGET(&histogram[0]));
	Widget_refresh(WIDGET(&histogram[1]));
	Widget_refresh(WIDGET(&histogram[2]));
	if (! hist_cont_visible) Widget_setVisible(hist_cont_wt, false);
	
	if (*thr_value <= 255) {
		*thr_value = 0xFFFFFFFF;
		thr_bin_label->text_block.text[7] = '\0'; /// @todo class String and setter access
		//sprintf(thr_bin_label->text_block.text+7, "\0"); 
		Widget_refresh(WIDGET(thr_bin_label));
		ButtonImage_setEnabled(but_thr_up, false);
		ButtonImage_setEnabled(but_thr_dn, false);
	}
	
	screen->need_reload = true;
}

/*! Copy source image to destination image
 *  Obvious parameters:
 * sender->cparam[0]   -- source image 			as const Image*
 * sender->cparam[1]   -- destination image 	as Image*
 */
void button_src_to_dest(Widget *sender, Screen *screen) {
	const Image	*imgsrc   = IMAGE( sender->cparam[0] );
	Image		*imgdst   = IMAGE( sender->cparam[1] );
	
	b8			draggable = WIDGET(imgdst)->draggable;
	u16			posx 	  = WIDGET(imgdst)->pos.x;
	u16			posy      = WIDGET(imgdst)->pos.y;
	delete(imgdst);
	Image_copy(imgdst, imgsrc, false);
	Widget_setPosition(WIDGET(imgdst), posx, posy);
	WIDGET(imgdst)->draggable = draggable;
	screen->need_reload = true;
}

/*! Button brightness up/down click
 *  Obvious parameters:
 * sender->id == 1    -- clicked button brightness UP
 * sender->id == 0    -- clicked button brightness DOWN
 * sender->cparam[0]  -- source image 							as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- destination image 						as Image* [ or Widget* ]
 * sender->cparam[2]  -- label "%hd" text+11 with short img_off	as Label*
 * sender->cparam[3]  -- brightness: 	 short img_off			as s16*
 * sender->cparam[4]  -- contrast:	 	 float img_mul			as const float*
 * sender->cparam[5]  -- allow_overflow: b8  allow_overflow		as const b8*
 */ 
void button_brightness_change(Widget *sender, Screen *screen) {
	const SDL_Surface 	*imgsrc   = WIDGET( sender->cparam[0] )->surf;
	SDL_Surface 		*imgdst   = WIDGET( sender->cparam[1] )->surf;
	Label				*label    = LABEL( sender->cparam[2] );
	s16					*img_off  = (s16*) sender->cparam[3];
	const float			*img_mul  = (float*) sender->cparam[4];
	const b8			*allow_of = (b8*) sender->cparam[5];
	u8			s;
	
	if (sender->id) {
		if (*img_off <= 250) *img_off += 2; else return;
	}
	else {
		if (*img_off >= -250) *img_off -= 2; else return;
	}
	sprintf(label->text_block.text+11, "%hd", *img_off); 
	Widget_refresh(WIDGET(label));
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_brightness_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
	screen->need_reload = true;
}

/*! Button contrast up/down click
 *  Obvious parameters:
 * sender->id == 1        -- clicked button contrast UP
 * sender->id == 0        -- clicked button contrast DOWN
 * sender->cparam[0]  -- source image 								as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- destination image 							as Image* [ or Widget* ]
 * sender->cparam[2]  -- label "%5.2f" text+11 with float img_mul	as Label*
 * sender->cparam[3]  -- brightness: 	 short img_off				as const s16*
 * sender->cparam[4]  -- contrast:	 	 float img_mul				as float*
 * sender->cparam[5]  -- allow_overflow: b8  allow_overflow			as const b8*
 */ 
void button_contrast_change(Widget *sender, Screen *screen) {
	const SDL_Surface 	*imgsrc = WIDGET( sender->cparam[0] )->surf;
	SDL_Surface 		*imgdst = WIDGET( sender->cparam[1] )->surf;
	Label				*label  = LABEL( sender->cparam[2] );
	const s16			*img_off= (s16*) sender->cparam[3];
	float				*img_mul= (float*) sender->cparam[4];
	const b8			*allow_of=(b8*)  sender->cparam[5];
	u8 	s;
	
	if (sender->id) {
		if (*img_mul < 99.95f) *img_mul += 0.02f; else return;
	}
	else {
		if (*img_mul >= -99.95f) *img_mul -= 0.02f; else return;
	}
	sprintf((label->text_block.text+11), "%5.2f", *img_mul); 
	Widget_refresh(WIDGET(label));
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_contrast_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
	screen->need_reload = true;
}

/*! Button overflow in brightness/contrast up/down click
 *  Obvious parameters:
 * sender->id == 1    -- clicked button overflow UP 	[change to no overflow]
 * sender->id == 0    -- clicked button overflow DOWN	[change to overflow]
 * sender->cparam[0]  -- source image 															as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- destination image 														as Image* [ or Widget* ]
 * sender->cparam[2]  -- label "%s" text+9 with (allow_overflow)?"przepełnienie":"do skrajnych"	as Label*
 * sender->cparam[3]  -- brightness: 	 short img_off											as const s16*
 * sender->cparam[4]  -- contrast:	 	 float img_mul											as const float*
 * sender->cparam[5]  -- allow_overflow: b8  allow_overflow										as b8*
 */ 
void button_overflow_change(Widget *sender, Screen *screen) {
	const SDL_Surface 	*imgsrc   = WIDGET( sender->cparam[0] )->surf;
	SDL_Surface 		*imgdst   = WIDGET( sender->cparam[1] )->surf;
	Label				*label    = LABEL( sender->cparam[2] );
	const s16			*img_off  = (const s16*)   sender->cparam[3];
	const float			*img_mul  = (const float*) sender->cparam[4];
	b8					*allow_of = (b8*) sender->cparam[5];
	u8		s;
	
	if (sender->id) {
		if (*allow_of) *allow_of = false; else return;
	}
	else {
		if (! *allow_of) *allow_of = true; else return;
	}
	sprintf(label->text_block.text+9, "%s", (*allow_of)?"przepełnienie":"do skrajnych"); 
	Widget_refresh(WIDGET(label));
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_overflow_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
	screen->need_reload = true;
}

/*! Button reset brightness/contrast/overflow
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 															as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- destination image 														as Image* [ or Widget* ]
 * sender->cparam[2]  -- label "%hd" text+11 with short img_off									as Label*
 * sender->cparam[3]  -- label "%5.2f" text+11 with float img_mul								as Label*
 * sender->cparam[4]  -- label "%s" text+9 with (allow_overflow)?"przepełnienie":"do skrajnych"	as Label*
 * sender->cparam[5]  -- brightness: 	 short img_off											as s16*
 * sender->cparam[6]  -- contrast:	 	 float img_mul											as float*
 * sender->cparam[7]  -- allow_overflow: b8  allow_overflow										as b8* 
 */ 
void button_brightness_reset(Widget *sender, Screen *screen) {
	const SDL_Surface 	*imgsrc 	= WIDGET( sender->cparam[0] )->surf;
	SDL_Surface			*imgdst 	= WIDGET( sender->cparam[1] )->surf;
	Label				*label_off  = LABEL( sender->cparam[2] );
	Label				*label_mul  = LABEL( sender->cparam[3] );
	Label				*label_of   = LABEL( sender->cparam[4] );
	s16					*img_off	= (s16*) sender->cparam[5];
	float				*img_mul	= (float*) sender->cparam[6];
	b8					*allow_of	= (b8*)  sender->cparam[7];
	u8	s;
	
	*img_off = 0; *img_mul = 1.0f; *allow_of = false;
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_brightness_reset() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
		
	sprintf((label_off->text_block.text+11), "%hd", *img_off);  // brightness
	sprintf((label_mul->text_block.text+11), "%5.2f", *img_mul);	// contrast
	sprintf((label_of->text_block.text+9),   "%s", (*allow_of)?"przepełnienie":"do skrajnych");
	Widget_refresh(WIDGET(label_off));
	Widget_refresh(WIDGET(label_mul));
	Widget_refresh(WIDGET(label_of));
	screen->need_reload = true;
}

/*! Button copy destination image to source image
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 															as Image*
 * sender->cparam[1]  -- destination image 														as const Image*
 * sender->cparam[2]  -- array histogram[3]	will be reseted										as Histogram*
 * sender->cparam[3]  -- label binarization threshold will set to "\0" at text+7				as Label*
 * sender->cparam[4]  -- buttonimage binarization threshold up will be disabled					as ButtonImage*
 * sender->cparam[5]  -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
 * sender->cparam[6]  -- binarization threshold value will set to 0xFFFFFFFF					as u64*
 * 
 */
void button_dest_to_src(Widget *sender, Screen *screen) {
	Image 		*imgsrc 		= IMAGE( sender->cparam[0] );
	const Image *imgdst 		= IMAGE( sender->cparam[1] );
	Histogram 	*histogram		= HISTOGRAM( sender->cparam[2] );
	Label		*thr_bin_label	= LABEL( sender->cparam[3] );
	ButtonImage *thr_up_butimg	= BUTTON_IMAGE( sender->cparam[4] );
	ButtonImage *thr_dn_butimg	= BUTTON_IMAGE( sender->cparam[5] );
	u64			*thr_value		= (u64*) sender->cparam[6];
	
	u16 		posx = WIDGET(imgsrc)->pos.x;
	u16 		posy = WIDGET(imgsrc)->pos.y;
	b8		draggable= WIDGET(imgsrc)->draggable;
	b8		hist_vis = WIDGET(&histogram[0])->visible;
	delete(imgsrc);
	Image_copy(imgsrc, imgdst, false);
	Widget_setPosition(WIDGET(imgsrc), posx, posy);
	WIDGET(imgsrc)->draggable = draggable;
	
	// reset histograms and threshold
	*thr_value = 0xFFFFFFFF;
	histogram[0].data = histogram[1].data = histogram[2].data = NULL; // be careful
	Widget_refresh(WIDGET(&histogram[0])); 
	Widget_refresh(WIDGET(&histogram[1]));
	Widget_refresh(WIDGET(&histogram[2]));
	if (! hist_vis) {
		Widget_setVisible(WIDGET(&histogram[0]), false);
		Widget_setVisible(WIDGET(&histogram[1]), false);
		Widget_setVisible(WIDGET(&histogram[2]), false);
	}
	thr_bin_label->text_block.text[7] = '\0';
	//sprintf(thr_bin_label->text_block.text+7, "\0"); 
	Widget_refresh(WIDGET(thr_bin_label)); // reset "Próg:"
	ButtonImage_setEnabled(thr_up_butimg, false);
	ButtonImage_setEnabled(thr_dn_butimg, false);
	screen->need_reload = true;
}

/*! Button save source image to file "img/00_file_src.bmp"
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 														as Image*
 */
void button_src_save(Widget *sender, Screen *screen) {
	Widget *imgsrc = WIDGET( sender->cparam[0] );
	SDL_SaveBMP(imgsrc->surf, "img/00_file_src.bmp");
}

/*! Button save destination image to file "img/00_file_dest.bmp"
 *  Obvious parameters:
 * sender->cparam[0]  -- destination image 													as Image*
 */
void button_dest_save(Widget *sender, Screen *screen) {
	Widget *imgdst = WIDGET( sender->cparam[0] );
	SDL_SaveBMP(imgdst->surf, "img/00_file_dest.bmp");
}

/*! Button desaturize from source image to destination image
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 														as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- destination image													as Image*
 */
void button_destaturize_std(Widget *sender, Screen *screen) {
	const Widget *imgsrc = WIDGET(sender->cparam[0]);
	Widget 		 *imgdst = WIDGET(sender->cparam[1]);
	u8 s;
	if ( (s = GToolsPoint_desaturize_std(imgsrc->surf, imgdst->surf)) )
		fprintf(stderr, "button_destaturize_std() >> Error in GToolsPoint_desaturize_std() [exited with code %d]\n", s);
	else
		screen->need_reload = true;
}

/*! Button change binarization algorithm
 *  Obvious parameters:
 * sender->id == 1    -- clicked button algorithm UP 	[change to Otsu method]
 * sender->id == 0    -- clicked button algorithm DOWN	[change to tom3k.info method]
 * sender->cparam[0]  -- label binarization threshold will set to "\0" at text+7						as Label*
 * sender->cparam[1]  -- label bin. algorithm will set to "%s" (t_algo)?"Otsu":"tom3k.info" at text+10	as Label*
 * sender->cparam[2]  -- buttonimage binarization threshold up will be disabled							as ButtonImage*
 * sender->cparam[3]  -- buttonimage binarization threshold down will be disabled						as ButtonImage* 
 * sender->cparam[4]  -- boolean t_algo																	as b8*
 * sender->cparam[5]  -- binarization threshold value will set to 0xFFFFFFFF							as u64*
 * 
 */ 
void button_bin_algo_toggle(Widget *sender, Screen *screen) {
	Label		*thr_bin_label		= LABEL( sender->cparam[0] );
	Label		*thr_bin_algo_label	= LABEL( sender->cparam[1] );
	ButtonImage *thr_up_butimg		= BUTTON_IMAGE( sender->cparam[2] );
	ButtonImage *thr_dn_butimg		= BUTTON_IMAGE( sender->cparam[3] );
	b8			*t_algo				= (b8*) sender->cparam[4];
	u64			*thr_value			= (u64*) sender->cparam[5];
	if (sender->id) {
		if (! *t_algo) *t_algo = true; else return;
	}
	else {
		if (*t_algo)   *t_algo = false; else return;
	}
	
	*thr_value = 0xFFFFFFFF;
	
	sprintf(thr_bin_algo_label->text_block.text+10, (*t_algo)?"Otsu":"tom3k.info"); 
	Widget_refresh(WIDGET(thr_bin_algo_label));
	thr_bin_label->text_block.text[7] = '\0';
	//sprintf(thr_bin_label->text_block.text+7, "\0");
	ButtonImage_setEnabled(thr_up_butimg, false);
	ButtonImage_setEnabled(thr_dn_butimg, false);
	screen->need_reload = true;
}

/*! Button change used histogram in binarization
 *  Obvious parameters:
 * sender->id == 1    -- clicked button histogram UP
 * sender->id == 0    -- clicked button histogram DOWN
 * sender->cparam[0]  -- label used histogram will set to "%5s" <- hist_names[num_hist] at text+18	as Label*
 * sender->cparam[1]  -- label binarization threshold will set to "\0" at text+7					as Label*
 * sender->cparam[2]  -- buttonimage binarization threshold up will be disabled						as ButtonImage*
 * sender->cparam[3]  -- buttonimage binarization threshold down will be disabled					as ButtonImage* 
 * sender->cparam[4]  -- current histogram num_hist													as u8*
 * sender->cparam[5]  -- char** array of histogram names											as const char**
 * sender->cparam[6]  -- binarization threshold value will set to 0xFFFFFFFF						as u64*
 * 
 */ 
void button_used_hist_toggle(Widget *sender, Screen *screen) {
	Label		*lab_used_hist		= LABEL( sender->cparam[0] );
	Label		*thr_bin_label		= LABEL( sender->cparam[1] );
	ButtonImage *thr_up_butimg		= BUTTON_IMAGE( sender->cparam[2] );
	ButtonImage *thr_dn_butimg		= BUTTON_IMAGE( sender->cparam[3] );
	u8			*num_hist			= (u8*) sender->cparam[4];
	const char	**hist_names		= (const char**) sender->cparam[5];
	u64			*thr_value			= (u64*)sender->cparam[6];
	
	if (sender->id) { if (*num_hist > 0) (*num_hist)--; else return; }
	else { if (*num_hist < 2) (*num_hist)++; else return; }
	
	*thr_value = 0xFFFFFFFF;
	
	sprintf(lab_used_hist->text_block.text+18, "%5s", hist_names[*num_hist]);
	Widget_refresh(WIDGET(lab_used_hist));
	thr_bin_label->text_block.text[7] = '\0';
	//sprintf(thr_bin_label->text_block.text+7, "\0"); 
	Widget_refresh(WIDGET(thr_bin_label));
	ButtonImage_setEnabled(thr_up_butimg, false);
	ButtonImage_setEnabled(thr_dn_butimg, false);
	screen->need_reload = true;
}


/*! Button change threshold in binarization
 *  Obvious parameters:
 * sender->id == 1    -- clicked button threshold UP 
 * sender->id == 0    -- clicked button threshold DOWN
 * sender->cparam[0]  -- label binarization threshold will set to "%Lu" <- thr_value at text+7		as Label*
 * sender->cparam[1]  -- binarization threshold thr_value will increase/decrease					as u64*
 * 
 */ 
void button_threshold_change(Widget *sender, Screen *screen) {
	Label 	*thr_bin_label		= LABEL( sender->cparam[0] );
	u64		*thr_value			= (u64*)sender->cparam[1];
	if (*thr_value <= 255) {
		if (sender->id) { if (*thr_value <= 254) *thr_value += 1; else return; }
		else { if (*thr_value >= 1) *thr_value -= 1; else return; }
		sprintf(thr_bin_label->text_block.text+7, "%lu", *thr_value); 
		Widget_refresh(WIDGET(thr_bin_label));
		screen->need_reload = true;
	}
}

/*! Button create histograms and show them
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 													as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- u32 **colors array (3 rows, 256 cols) [already ALLOCATED]		as u32**
 * sender->cparam[2]  -- array histogram[3] which will be filled with data				as Histogram*
 * sender->cparam[3]  -- container containing histograms								as Container* [ or Widget* ]
 */
void button_create_histograms_click(Widget *sender, Screen *screen) {
	const Widget 	*imgsrc 		= WIDGET( sender->cparam[0] );
	u32				**colors		= (u32**) sender->cparam[1];
	Histogram 		*histogram		= HISTOGRAM( sender->cparam[2] );
	Widget			*hist_cont_wt	= WIDGET( sender->cparam[3] );
	u8		s;
	if ( (s = GToolsPoint_create_histograms(imgsrc->surf, colors)) ) {
		fprintf(stderr, "button_create_histograms_click() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n", s);
	}
	else {	// refresh histograms
		histogram[0].data = colors[0];		// source for histogram R
		histogram[1].data = colors[1];		// source for histogram G
		histogram[2].data = colors[2];		// source for histogram B
		Widget_refresh(WIDGET(&histogram[0]));
		Widget_refresh(WIDGET(&histogram[1]));
		Widget_refresh(WIDGET(&histogram[2]));
		Widget_setVisible(hist_cont_wt, true);
		screen->need_reload = true;
	}
}

/*! Button apply histograms equalization in destination 
 *  Obvious parameters:
 * sender->cparam[0]   -- destination image												as Image* [ or Widget* ]
 * sender->cparam[1]   -- u32 **colors array (3 rows, 256 cols) [already ALLOCATED]		as u32**
 * sender->cparam[2]   -- array histogram[3] which will be filled with data				as Histogram*
 * sender->cparam[3]   -- container containing histograms								as Container* [ or Widget* ]
 */
void button_histograms_equalize(Widget *sender, Screen *screen) {
	Widget 		*imgdst 		= WIDGET( sender->cparam[0] );
	u32			**colors		= (u32**) sender->cparam[1];
	Histogram 	*histogram		= HISTOGRAM( sender->cparam[2] );
	Widget		*hist_cont_wt	= WIDGET( sender->cparam[3] );
	u8		s;
	if (histogram[0].data == NULL) {
		fprintf(stderr, "button_histograms_equalize() To use this tool, histograms have to be created first.\n");
		return;
	}
	if ( (s = GToolsPoint_histEqualize(imgdst->surf, colors)) ) {
		fprintf(stderr, "button_histograms_equalize() >> Error in GToolsPoint_histEqualize() [exited with code %d]\n", s);
	}
	else {
		histogram[0].data = colors[0];		// source for histogram R
		histogram[1].data = colors[1];		// source for histogram G
		histogram[2].data = colors[2];		// source for histogram B
		Widget_refresh(WIDGET(&histogram[0]));
		Widget_refresh(WIDGET(&histogram[1]));
		Widget_refresh(WIDGET(&histogram[2]));
		Widget_setVisible(hist_cont_wt, true);
		screen->need_reload = true;
	}
	
}

/*! Button create histograms, show them and calculate threshold
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 															as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- u32 **colors array (3 rows, 256 cols) [already ALLOCATED]				as u32**
 * sender->cparam[2]  -- array histogram[3] which will be filled with data						as Histogram*
 * sender->cparam[3]  -- container containing histograms										as Container* [ or Widget* ]
 * sender->cparam[4]  -- buttonimage binarization threshold up will be enabled					as ButtonImage*
 * sender->cparam[5]  -- buttonimage binarization threshold down will be enabled				as ButtonImage* 
 * sender->cparam[6]  -- label binarization threshold will set to "%Lu" <- thr_value at text+7	as Label*
 * sender->cparam[7]  -- binarization threshold thr_value will calculate						as u64*
 * sender->cparam[8]  -- currently used histogram num_hist										as const u8*
 * sender->cparam[9]  -- boolean t_algo [current threshold algorithm]							as const b8*
 */
void button_bin_create_histograms(Widget *sender, Screen *screen) {
	const Widget *imgsrc 		= WIDGET( sender->cparam[0]);
	u32			 **colors		= (u32**) sender->cparam[1];
	Histogram 	 *histogram		= HISTOGRAM( sender->cparam[2] );
	Widget		 *hist_cont_wt	= WIDGET( sender->cparam[3]);
	ButtonImage  *thr_up_butimg	= BUTTON_IMAGE( sender->cparam[4] );
	ButtonImage  *thr_dn_butimg	= BUTTON_IMAGE( sender->cparam[5] );
	Label		 *thr_bin_label	= LABEL( sender->cparam[6] );
	u64	 		 *thr_value		= (u64*) sender->cparam[7];
	const u8	 *num_hist		= (const u8*) sender->cparam[8];
	const b8	 *t_algo		= (const b8*) sender->cparam[9];
	u8		s;
	if ( (s = GToolsPoint_create_histograms(imgsrc->surf, colors)) ) {
		fprintf(stderr, "button_bin_create_histograms() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n", s);
	}
	else {	// refresh histograms
		histogram[0].data = colors[0];		// source for histogram R
		histogram[1].data = colors[1];		// source for histogram G
		histogram[2].data = colors[2];		// source for histogram B
		
		Widget_refresh(WIDGET(&histogram[0]));
		Widget_refresh(WIDGET(&histogram[1]));
		Widget_refresh(WIDGET(&histogram[2]));
		
		Widget_setVisible(hist_cont_wt, true);
		
		if ( (s = GToolsPoint_calculate_binary_threshold(histogram[*num_hist].data, thr_value, *t_algo)) ) {
			fprintf(stderr, "button_bin_create_histograms() >> Error in GToolsPoint_calculate_binary_threshold() [exited with code %d]\n", s);
			thr_bin_label->text_block.text[7] = '\0';
			//sprintf(thr_bin_label->text_block.text+7, "\0"); 
		}
		else {
			sprintf(thr_bin_label->text_block.text+7, "%lu", *thr_value);
		}
		ButtonImage_setEnabled(thr_up_butimg, !s);
		ButtonImage_setEnabled(thr_dn_butimg, !s);
			
		Widget_refresh(WIDGET(thr_bin_label));
		screen->need_reload = true;
	}
}

/*! Apply calculated binary threshold
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 								as const Image* [ or const Widget* ]
 * sender->cparam[1]  -- destination image							as Image* [ or Widget* ]
 * sender->cparam[2]  -- binarization threshold thr_value 			as const u64*
 */
void button_threshold_apply(Widget *sender, Screen *screen) {
	const Widget	*imgsrc 	= WIDGET( sender->cparam[0] );
	Widget			*imgdst 	= WIDGET( sender->cparam[1] );
	const u64		*thr_value 	= (const u64*)( sender->cparam[2] );
	u8	s;
	if (*thr_value <= 255) {
		if ( (s = GToolsPoint_apply_bin_threshold(imgsrc->surf, imgdst->surf, *thr_value)) )
			fprintf(stderr, "button_threshold_apply() >> Error in GToolsPoint_apply_bin_threshold() [exited with code %d]\n", s);
		else
			screen->need_reload = true;
	}
}


/*! Apply negative filter in destination
 *  Obvious parameters:
 * sender->cparam[0]  -- destination image 	   as Image*  [ or Widget* ]
 */
void button_dest_negative(Widget *sender, Screen *screen) {
	SDL_Surface *surf = WIDGET( sender->cparam[0] )->surf;
	u8 s;
	fprintf(stderr, "In DESTINATION:\n\tBpp=%d\n\tpitch=%5hu\n\twidth*Bpp=%u\n\twidth=%5hu\n\theight=%5hu\n\trefcount=%d\n", 
		surf->format->BytesPerPixel, surf->pitch, surf->w * surf->format->BytesPerPixel, surf->w, surf->h, surf->refcount);
	if ( (s = GToolsPoint_negative(surf)) )
		fprintf(stderr, "button_dest_negative() >> Error in GToolsPoint_negative() [exited with code %d]\n", s);
	else screen->need_reload = true;
}

/*! Apply splot filter
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 				as Image*
 * sender->cparam[1]  -- destination image			as Image*
 * sender->cparam[2]  -- GToolsSplotFilter object	as GToolsSplotFilter*
 */
void button_dest_splotfilter(Widget *sender, Screen *screen) {
	Widget 				*imgsrc = WIDGET( sender->cparam[0] );
	Widget 				*imgdst = WIDGET( sender->cparam[1] );
	GToolsSplotFilter 	*gtsf 	= GTOOLS_SPLOT_FILTER( sender->cparam[2] );
	u8 s;
	if ( (s = GToolsSplotFilter_applyFilter(gtsf, imgsrc->surf, imgdst->surf)) )
		fprintf(stderr, "button_dest_splotfilter() >> Error in GToolsSplotFilter_applyFilter() [exited with code %d]\n", s);
	else screen->need_reload = true;
}

/*! Change splot filter weight
 *  Obvious parameters:
 * sender->id  			-- is equal to index of changed weight [0...8]
 * sender->vparam[0] 	-- label attached to changed weight set to "%6.2f" <- new_weight at text	as Label*
 * sender->cparam[0] 	-- label with predefinied name, will set to "STD: " at text+9				as Label*
 * sender->cparam[1]  	-- GToolsSplotFilter object													as GToolsSplotFilter*
 */
void button_change_filter_weight(Widget *sender, Screen *screen) {
	Label 				*weight_label = LABEL( sender->vparam[0] );
	Label				*predef_label = LABEL( sender->cparam[0] );
	GToolsSplotFilter 	*gtsf  		  = GTOOLS_SPLOT_FILTER( sender->cparam[1] );
	
	u16 				prev_ind = gtsf->predef_filter_ind;
	u8 					w;
	if (sender->id & 1) {				// id % 2 == 1 (weight up)
		w = (sender->id - 1) >> 1;		// w = (id - 1)/2	- convert sender->id to
		if (! GToolsSplotFilter_increaseWeightAt(gtsf, w)) return;
	}
	else {							// id % 2 == 0 (weight down)
		w = sender->id >> 1;
		if (! GToolsSplotFilter_decreaseWeightAt(gtsf, w)) return;
	}
	
	if (prev_ind != 0xFFFF) {	// value changed manually (reset predefinied filter label)
		sprintf(predef_label->text_block.text, "STD: ");
		Widget_refresh(WIDGET(predef_label));
	}
	
	snprintf(weight_label->text_block.text, 7, "%6.2f", gtsf->weight[w]);
	Widget_refresh(WIDGET(weight_label));
	screen->need_reload = true;
}

/*! Change predefinied splot filter_index
 *  Obvious parameters:
 * sender->id == 1    -- filter down (ind--)
 * sender->id == 0    -- filter up   (ind++)
 * sender->cparam[0]  -- label with predefinied name, will set to "%s" <- filter name at text+5		  as Label*
 * sender->cparam[1]  -- GToolsSplotFilter object													  as GToolsSplotFilter*
 * sender->cparam[2]  -- Array Label[9] with splot filter weights @see GToolsSplotFilter.h for order  as Label* 
 */ 
void button_change_filter_predef(Widget *sender, Screen *screen) {
	Label				*predef_label 	= LABEL( sender->cparam[0] );
	GToolsSplotFilter 	*gtsf  			= GTOOLS_SPLOT_FILTER( sender->cparam[1] );
	Label 				*weight_label 	= LABEL( sender->cparam[2] );
	u8				w;
	if (sender->id) {	// filter down
		if (! GToolsSplotFilter_decreaseFilterInd(gtsf)) return;
	}
	else {				// filter up
		if (! GToolsSplotFilter_increaseFilterInd(gtsf)) return;
	}
	
	// print filter name on sender->parameter label widget
	snprintf((predef_label->text_block.text+5), 32, "%s", GToolsSplotFilter_getFilterName(gtsf));
	Widget_refresh(WIDGET(predef_label));
	for (w = 0; w < 9; w++) {	// update weights on labels and in weight array
		snprintf(weight_label[w].text_block.text, 7, "%6.2f", gtsf->weight[w]);
		Widget_refresh(WIDGET(&weight_label[w]));
	}
	screen->need_reload = true;
}

/*! Click on view menu click item
 *  Obvious parameters:
 * sender->vparam[0]  -- container associated with menu item to show or hide		as Container* [ or Widget* ]
 */
void button_view_click(Widget *sender, Screen *screen) {
	if (sender->vparam[0]) {
		Widget *cont_wt = WIDGET( sender->vparam[0] );
		b8 vis = ! cont_wt->visible;
		Widget_setVisible(cont_wt, vis);
		if (vis) { // now container visible, set it on top
			screen->widget_ontop = cont_wt;
		}
		screen->need_reload = true;
	}
}

/*! Changed structuring element size:
 *  Obvious parameters:
 * sender->id == 0    -- increase rows count of PixelDrawBox
 * sender->id == 1    -- decrease rows count of PixelDrawBox
 * sender->id == 2    -- increase column count of PixelDrawBox
 * sender->id == 3    -- decrease column count of PixelDrawBox
 * sender->vparam[0]  -- label on which write new rows/cols count as "%3hu" at text		as Label*
 * sender->cparam[0]  -- PixelDrawBox object											as PixelDrawBox*
 */
void button_change_strelem_size(Widget *sender, Screen *screen) {
	Label 			*label 	= LABEL( sender->vparam[0] );
	PixelDrawBox 	*pdb 	= PIXEL_DRAW_BOX( sender->cparam[0] );
	u16 d = 1;
	switch (sender->id) {
		case 0: PixelDrawBox_increaseActY(pdb, d); if (! WIDGET(pdb)->need_reload) return; break;
		case 1: PixelDrawBox_decreaseActY(pdb, d); if (! WIDGET(pdb)->need_reload) return; break;
		case 2: PixelDrawBox_increaseActX(pdb, d); if (! WIDGET(pdb)->need_reload) return; break;
		case 3: PixelDrawBox_decreaseActX(pdb, d); if (! WIDGET(pdb)->need_reload) return; break;
		default: return;
	}
	snprintf(label->text_block.text, 4, "%3hu", (sender->id < 2) ? pdb->actY : pdb->actX);
	
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button dilate
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image* [ or Widget* ]
 * sender->cparam[1]   -- destination image								as Image* [ or Widget* ]
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as const PixelDrawBox*
 */
void button_dilate_click(Widget *sender, Screen *screen) {
	Widget				*imgsrc	= WIDGET( sender->cparam[0] );
	Widget				*imgdst	= WIDGET( sender->cparam[1] );
	const PixelDrawBox	*pdb 	= (sender->id)
									 ? NULL
									 : PIXEL_DRAW_BOX( sender->cparam[2] );
	u8 	s;
	if ( (s = GToolsMorph_dilate(imgsrc->surf, imgdst->surf, pdb)) )
		fprintf(stderr, "button_dilate_click: GToolsMorph_dilate() exited with error: %d\n", s);
	else
		screen->need_reload = true;
}

/*! Button erode
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image* [ or Widget* ]
 * sender->cparam[1]   -- destination image								as Image* [ or Widget* ]
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as const PixelDrawBox*
 */
void button_erode_click(Widget *sender, Screen *screen) {
	Widget				*imgsrc	= WIDGET( sender->cparam[0] );
	Widget				*imgdst	= WIDGET( sender->cparam[1] );
	const PixelDrawBox	*pdb 	= (sender->id)
									 ? NULL
									 : PIXEL_DRAW_BOX( sender->cparam[2] );
	u8 	s;
	if ( (s = GToolsMorph_erode(imgsrc->surf, imgdst->surf, pdb)) )
		fprintf(stderr, "button_erode_click: GToolsMorph_erode() exited with error: %d\n", s);
	else
		screen->need_reload = true;
}

/*! Button morph open
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image* [ or Widget* ]
 * sender->cparam[1]   -- destination image								as Image* [ or Widget* ]
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as const PixelDrawBox*
 */
void button_morph_open_click(Widget *sender, Screen *screen) {
	Widget				*imgsrc	= WIDGET( sender->cparam[0] );
	Widget				*imgdst	= WIDGET( sender->cparam[1] );
	const PixelDrawBox	*pdb 	= (sender->id)
									 ? NULL
									 : PIXEL_DRAW_BOX( sender->cparam[2] );
	u8 	s;
	if ( (s = GToolsMorph_open(imgsrc->surf, imgdst->surf, pdb)) )
		fprintf(stderr, "button_morph_open_click: GToolsMorph_open() exited with error: %d\n", s);
	else
		screen->need_reload = true;
}

/*! Button morph close
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image* [ or Widget* ]
 * sender->cparam[1]   -- destination image								as Image* [ or Widget* ]
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as const PixelDrawBox*
 */
void button_morph_close_click(Widget *sender, Screen *screen) {
	Widget				*imgsrc	= WIDGET( sender->cparam[0] );
	Widget				*imgdst	= WIDGET( sender->cparam[1] );
	const PixelDrawBox	*pdb 	= (sender->id)
									 ? NULL
									 : PIXEL_DRAW_BOX( sender->cparam[2] );
	u8 	s;
	if ( (s = GToolsMorph_close(imgsrc->surf, imgdst->surf, pdb)) )
		fprintf(stderr, "button_morph_close_click: GToolsMorph_close() exited with error: %d\n", s);
	else
		screen->need_reload = true;
}

/*! Change reconstruction iteration limit
 *  Obvious parameters:
 * sender->id == 0     -- decrease limit count
 * sender->id == 1     -- increase limit count
 * sender->vparam[0]   -- label on which write new limit as "%5hu" at text+0			as Label*
 * sender->vparam[1]   -- limit value (0 - unlimited)									as u16*
 */
void button_change_reconst_limit(Widget *sender, Screen *screen) {
	Label 	*label = LABEL( sender->vparam[0] );
	u16 	*limit = (u16*) sender->vparam[1];
	if (sender->id) {
		if (*limit < 10000) *limit += 5; else return;
	}
	else {
		if (*limit > 5) *limit -= 5; else return;
	}
	sprintf(label->text_block.text, "%5hu", *limit); 
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Open image file as marker for reconstruction
 *  Obvious parameters:
 * sender->vparam[0]   -- image in which open new image					as Image*
 * sender->vparam[1]   -- image used as comparision						as const Image*
 */
void button_reconstruction_marker_open(Widget *sender, Screen *screen) {
	FileBrowsePanel panel;
	FileBrowsePanel_new(&panel, IMAGE_SUPPORTED_FILES);
	
	const char *sel_path = FileBrowsePanel_show(&panel, true, false);
	delete(&panel);
	
	if (sel_path != NULL) { // file selected
		Image 		*imgdst = (Image*) sender->vparam[0];
		Image 		*imgcmp = (Image*) sender->vparam[1];
		Image 		*imgtmp = Image_new(new(Image_class), sel_path, 0, 0);
		b8			err = false;
		
		if (! WIDGET(imgtmp)->visible) {
			fprintf(stderr, "button_reconstruction_marker_open() Failed to load image '%s' [invisible]\n", sel_path);
			err = true;
		}
		
		if (Check_surfaces(WIDGET(imgtmp)->surf, WIDGET(imgcmp)->surf)) {
			fprintf(stderr, "button_reconstruction_marker_open() Marker and mask image format mismatch.\n");
			err = true;
		}
		
		if (err) {
			free(delete(imgtmp));
			screen->need_reload = true;
			return;
		}
		
		/* The same format in imgdst and imgtmp */
		u16 	posx 		= WIDGET(imgdst)->pos.x;
		u16 	posy 		= WIDGET(imgdst)->pos.y;
		b8		draggable 	= WIDGET(imgdst)->draggable;
		
		delete(imgdst);
		Image_copy(imgdst, imgtmp, false);
		Widget_setPosition(WIDGET(imgdst), posx, posy);
		WIDGET(imgdst)->draggable = draggable;
		free(delete(imgtmp));
	}
	screen->need_reload = true;
}

/*! Apply reconstruction filter 
 *  Obvious parameters;
 *  sender->vparam[0]   -- image[0] as imgmask				as Image* [ or Widget* ]
 *  sender->vparam[1]   -- image[2] as imgmarker			as Image* [ or Widget* ]
 *  sender->vparam[2]   -- iterations limit 				as const u16*
 */ 
void button_apply_reconstruction_filter(Widget *sender, Screen *screen) {
	Widget 		*imgmask 	= WIDGET( sender->vparam[0] );
	Widget		*imgmarker	= WIDGET( sender->vparam[1] );
	const u16	*limit		= (const u16*) sender->vparam[2];
	u8 	s;
	if (! imgmarker->visible) {
		fprintf(stderr, "button_apply_reconstruction_filter() Marker is invisible, cannot continue.\n");
		return;
	}
	if ( (s = GToolsMorph_reconstruction(imgmask->surf, imgmarker->surf, *limit)) ) {
		fprintf(stderr, "button_apply_reconstruction_filter(): Method GToolsMorph_reconstruction exited with error code %d\n", s);
	}
	else
		screen->need_reload = true;
}

/*! Resize destination image up/down a bit
 *  Obvious parameters;
 *  sender->id  == 1    -- grow image
 *  sender->id  == 0    -- make smaller
 *  sender->vparam[0]   -- image[1] as destination image			as Image* [ or Widget* ]
 */ 
void button_dest_resize(Widget *sender, Screen *screen) {
	Widget *wtdst  = WIDGET( sender->vparam[0] );
	if (Check_surface(wtdst->surf)) {
		fprintf(stderr, "button_dest_resize(): Failed on assertion Check_surface()\n");
		return;
	}
	u16 mindim = wtdst->pos.w < wtdst->pos.h ? wtdst->pos.w : wtdst->pos.h;
	u16 maxdim = wtdst->pos.w > wtdst->pos.h ? wtdst->pos.w : wtdst->pos.h;
	u16 sx = wtdst->pos.x, sy = wtdst->pos.y;
	double sw,sh;
	u16 dim_det = 10;
	if (mindim < 10) {
		fprintf(stderr, "button_dest_resize(): At least one dimension of Image is below 10px\n");
		return;
	}
	if (sender->id) {	// grow
		if (maxdim > 1000) {
			fprintf(stderr, "button_dest_resize(): Refuse to resize above %hu pixels\n", maxdim);
			return;
		}
		sw = ((double)(wtdst->pos.w + dim_det))/((double)wtdst->pos.w);
		sh = ((double)(wtdst->pos.h + dim_det))/((double)wtdst->pos.h);
	}
	else {
		if (mindim < 10) {// small
			fprintf(stderr, "button_dest_resize(): Refuse to resize below %hu pixels\n", mindim);
			return;
		}
		sw = ((double)wtdst->pos.w) / ((double)(wtdst->pos.w + dim_det));
		sh = ((double)wtdst->pos.h) / ((double)(wtdst->pos.h + dim_det));
	}
	
	Widget_scale(wtdst, sw, sh, 1);
	Widget_setPosition(wtdst, sx, sy);
	screen->need_reload = true;
}

/*! Button replace colors threshold change 
 *  Obvious parameters:
 * sender->id == 1   -- threshold up
 * sender->id == 0   -- threshold down
 * sender->cparam[0] -- label on which writes "%3d", rep_thr at text+7		as Label*
 * sender->cparam[1] -- threshold value										as u8*
 */
void button_rep_col_change_threshold(Widget *sender, Screen *screen) {
	Label 	*label   = LABEL( sender->cparam[0] );
	u8 		*rep_thr = (u8*) sender->cparam[1];
	
	if (sender->id) { if (*rep_thr <= 254) (*rep_thr)++; else return; }
	else { if (*rep_thr >= 1) (*rep_thr)--; else return; }
	
	sprintf(label->text_block.text+7, "%3d", *rep_thr); 
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button replace colors condition change 
 *  Obvious parameters:
 * sender->id == 1   -- condition up
 * sender->id == 0   -- condition down
 * sender->cparam[0] -- label on which writes "`%2s`", cond_name[rep_cond] at text+9	as Label*
 * sender->cparam[1] -- current condition rep_cond										as condition*
 */
void button_rep_col_change_condition(Widget *sender, Screen *screen) {
	Label 		*label   	= LABEL( sender->cparam[0] );
	condition	*cond    	= (condition*)sender->cparam[1];
	
	if (sender->id) { if (*cond < CONDITION_MAXIND) (*cond)++; else return; }
	else { if (*cond > 0) (*cond)--; else return; }
	
	sprintf(label->text_block.text+9, "`%2s`", COND_SYM[*cond]); 
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button replace colors change new color 
 *  Obvious parameters:
 * sender->id == 1   -- channel up
 * sender->id == 0   -- channel down
 * sender->vparam[0] -- label on which writes "%3d", rep_channel at text+0			as Label*
 * sender->vparam[1] -- rep_channel value for attached channel						as u8*
 */
void button_rep_col_change_new_color(Widget *sender, Screen *screen) {
	Label 	*label 			= LABEL( sender->vparam[0] );
	u8 		*rep_channel 	= (u8*) sender->vparam[1];
	
	if (sender->id) { if (*rep_channel <= 254) (*rep_channel)++; else return; }
	else { if (*rep_channel >= 1) (*rep_channel)--; else return; }
	
	sprintf(label->text_block.text, "%3d", *rep_channel); 
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button replace colors apply
 *  Obvious parameters:
 * sender->cparam[0] -- source image 							as const Image* [ or const Widget* ]
 * sender->cparam[1] -- destination image						as Image* [ or Widget* ]
 * sender->cparam[2] -- condition								as const condition*
 * sender->cparam[3] -- threshold								as const u8*
 * sender->cparam[4] -- new color u8 new_col[3]					as const u8*
 */
void button_rep_col_apply(Widget *sender, Screen *screen) {
	const Widget 	*imgsrc = WIDGET( sender->cparam[0] );
	Widget 		 	*imgdst = WIDGET( sender->cparam[1] );
	const condition *cond   = sender->cparam[2];
	const u8 		*thr    = sender->cparam[3];
	const u8 		*new_col= sender->cparam[4];
	u8 		s;
	if ( (s = GToolsPoint_replace_pixels(imgsrc->surf, imgdst->surf, *cond, *thr, new_col)) )
		fprintf(stderr, "button_rep_col_apply: GToolsPoint_replace_pixels failed [exit code %d]\n", s);
	else
		screen->need_reload = true;
}

/*! Callback run by HistStretchGraph object after graph has changed on mouse release
 *   sender 												as const HistStretchGraph*
 *   sender->vparam[0] -- image[0] - source image 			as const Image* [ or const Widget* ]
 *   sender->vparam[1] -- image[1] - destination image		as Image* [ or Widget* ]
 */
void histogram_stretch_on_mouse_release(Widget *sender, Screen *screen) {
	const HistStretchGraph 	*hsg 	= HIST_STRETCH_GRAPH( sender );
	const Widget 			*imgsrc = WIDGET( sender->vparam[0] );
	Widget 					*imgdst = WIDGET( sender->vparam[1] );
	u8 s;
	if ( (s = GToolsPoint_histogram_stretching(imgsrc->surf, imgdst->surf, hsg->x, hsg->y, hsg->size)) ) {
		fprintf(stderr, "histogram_stretch_on_mouse_release: GToolsPoint_histogram_stretching failed [exit code %d]\n", s);
	}
	else screen->need_reload = true;
}

/*! Button apply histogram stretch
 *  sender->vparam[0] -- HistStretchGraph object		as HistStretchGraph*
 */
void button_hist_stretch_apply(Widget *sender, Screen *screen) {
	histogram_stretch_on_mouse_release(sender->vparam[0], screen);
}

/*! Button change count of histogram stretching nodes
 *  sender->id == 1   -- count up
 *  sender->id == 0   -- cound down
 *  sender->vparam[0] -- label on which write new count as "%3hu" at text+18		as Label*
 *  sender->vparam[1] -- HistStretchGraph object									as HistStretchGraph*
 */
void button_change_hist_stretch_nodes(Widget *sender, Screen *screen) {
	Label 				*label 	= LABEL( sender->vparam[0] );
	HistStretchGraph 	*hsg 	= HIST_STRETCH_GRAPH( sender->vparam[1] );
	u8				s;
	if (sender->id) { 
		if (hsg->size <= 31) s = HistStretchGraph_setCountPoints(hsg, hsg->size+1); 
		else return; 
	}
	else { 
		if (hsg->size >= 3) s = HistStretchGraph_setCountPoints(hsg, hsg->size-1); 
		else return; 
	}
	sprintf(label->text_block.text+18, "%3d", hsg->size); 
	Widget_refresh(WIDGET(label));
	
	if ( s ) {
		fprintf(stderr, "button_change_hist_stretch_nodes: HistStretchGraph_setCountPoints failed [exit code %d]\n", s);
	}
	else screen->need_reload = true;
}

/*! Button apply generic filter (from GToolsFilters.h)
 * sender->id          -- is a name of filter 		as const generictype
 * sender->cparam[0]   -- source image 				as const Image* [ or const Widget* ]
 * sender->cparam[1]   -- destination image			as Image* [ or Widget* ]
 */
void button_generic_filter_apply(Widget *sender, Screen *screen) {
	const Widget 		*imgsrc = WIDGET( sender->cparam[0] );
	Widget 				*imgdst = WIDGET( sender->cparam[1] );
	const generictype 	type 	= sender->id;
	u8 s;
	if ( (s = GToolsFilter_apply(imgsrc->surf, imgdst->surf, type)) )
		fprintf(stderr, "button_generic_filter_apply: GToolsFilter_apply (filter: %s) failed [exit code %d]\n", 
			GToolsFilter_getName(type), s);
	else screen->need_reload = true;
}
