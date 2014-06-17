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

/*! Button -- header of floating menu
 *  Obvious parameters:
 * sender->vparam[0]  -- container containing clicked Button			as Container*
 */
void button_main_floating_menu_click(Widget *sender, Screen *screen) {
	Container *cont = (Container*)sender->vparam[0];
	Widget    *wt   = &(cont->widget);
	if (wt->visible) {									// if menu is visible
		if (screen->widget_ontop == wt) {				// if menu is on top
			Container_setVisible(cont, false);			// hide menu
			sender->visible = true;						// leave header button visible
			screen->need_reload = true;					// reload screen
			screen->widget_ontop = NULL;				// no widget on top
		}
		else {											// menu visible, not on top
			screen->widget_ontop = wt;					// set it on top
			Container_draw(cont, screen, true);			// redraw menu
		}
	}
	else {												// menu is hidden
		Container_setVisible(cont, true);				// set it visible
		screen->widget_ontop = wt;						// set it on top
		Container_draw(cont, screen, true);				// redraw menu
	}
}

/*! Open source and destination image from file
 *  Obvious parameters:
 * sender->cparam[0]   -- source image															as Image*
 * sender->cparam[1]   -- destination image														as Image*
 * sender->cparam[2]   -- Histogram histogram[3] array											as Histogram*
 * sender->cparam[3]   -- label binarization threshold will set to "" <- at text+7				as Label*
 * sender->cparam[4]   -- buttonimage binarization threshold up will be disabled				as ButtonImage*
 * sender->cparam[5]   -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
 * sender->cparam[6]   -- binarization threshold thr_value will be set to 0xFFFFFFFF			as ullong
 */
void button_imgsrc_open(Widget *sender, Screen *screen) {
	char *sel_path = FileBrowsePanel_Main(screen->screen);
	if (sel_path != NULL) { // file selected
		Image		*imgsrc 		= (Image*) sender->cparam[0];
		Image		*imgdst			= (Image*) sender->cparam[1];
		Histogram	*histogram		= (Histogram*) sender->cparam[2];
		Label		*thr_bin_label	= (Label*) sender->cparam[3];
		ButtonImage	*but_thr_up		= (ButtonImage*) sender->cparam[4];
		ButtonImage	*but_thr_dn		= (ButtonImage*) sender->cparam[5];
		ullong		*thr_value		= (ullong*) sender->cparam[6];
		
		bool		imgsrc_draggable  = imgsrc->widget.draggable;
		bool 		hist_vis 		  = histogram[0].widget.visible;
		usint		src_x			  = imgsrc->widget.pos.x;
		usint		src_y			  = imgsrc->widget.pos.y;
		usint 		dst_x 			  = imgdst->widget.pos.x;
		usint 		dst_y 			  = imgdst->widget.pos.y;
		delete(imgsrc);
		delete(imgdst);
		Image_new(imgsrc, sel_path, src_x, src_y);
		
		if (imgsrc->widget.pos.w > imgsrc->widget.pos.h) {
			if (imgsrc->widget.pos.w > W_SCREEN_WIDTH) {
				double scale = (double)W_SCREEN_WIDTH / (double)imgsrc->widget.pos.w;
				Image_scale(imgsrc, scale, scale, 0);
			}
		}
		else {
			if (imgsrc->widget.pos.h > W_SCREEN_HEIGHT) {
				double scale = (double)W_SCREEN_HEIGHT / (double)imgsrc->widget.pos.h;
				Image_scale(imgsrc, scale, scale, 0);
			}
		}
		Image_copy(imgdst, imgsrc, true);
		Image_setPosition(imgdst, dst_x, dst_y);
		
		imgsrc->widget.draggable = imgdst->widget.draggable = imgsrc_draggable;	
		
		histogram[0].data = histogram[1].data = histogram[2].data = NULL; // be careful
		Histogram_refresh(&(histogram[0])); Histogram_refresh(&(histogram[1])); Histogram_refresh(&(histogram[2]));
		if (! hist_vis) {
			histogram[0].widget.visible = histogram[1].widget.visible = histogram[2].widget.visible = false;
		}
		
		if (*thr_value <= 255) {
			*thr_value = 0xFFFFFFFF;
			thr_bin_label->text_block.text[7] = '\0'; /// @todo class String and setter access
			//sprintf(thr_bin_label->text_block.text+7, ""/*"\0"*/); 
			Label_refresh(thr_bin_label);
			ButtonImage_setEnabled(but_thr_up, false);
			ButtonImage_setEnabled(but_thr_dn, false);
		}
	}
	screen->need_reload = true;
}

/*! Restore source image from file (using path from destination image
 *  Obvious parameters:
 * sender->cparam[0]   -- source image															as Image*
 * sender->cparam[1]   -- destination image														as Image*
 * sender->cparam[2]   -- Histogram histogram[3] array											as Histogram*
 * sender->cparam[3]   -- label binarization threshold will set to "" <- at text+7				as Label*
 * sender->cparam[4]   -- buttonimage binarization threshold up will be disabled				as ButtonImage*
 * sender->cparam[5]   -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
 * sender->cparam[6]   -- binarization threshold thr_value will be set to 0xFFFFFFFF			as ullong
 * sender->cparam[7]   -- containter containing histograms (hide if not visible)				as Container*
 */
void button_src_restore(Widget *sender, Screen *screen) {
	Image		*imgsrc 		  = (Image*) sender->cparam[0];
	Image		*imgdst			  = (Image*) sender->cparam[1];
	Histogram	*histogram		  = (Histogram*) sender->cparam[2];
	Label		*thr_bin_label	  = (Label*) sender->cparam[3];
	ButtonImage	*but_thr_up		  = (ButtonImage*) sender->cparam[4];
	ButtonImage	*but_thr_dn		  = (ButtonImage*) sender->cparam[5];
	ullong		*thr_value		  = (ullong*) sender->cparam[6];
	Container	*hist_cont		  = (Container*) sender->cparam[7];
	bool		imgsrc_draggable  = imgsrc->widget.draggable;
	bool		hist_cont_visible = hist_cont->widget.visible;
	usint		src_x			  = imgsrc->widget.pos.x;
	usint		src_y			  = imgsrc->widget.pos.y;
	delete(imgsrc);
	Image_new(imgsrc, imgdst->path, src_x, src_y);
	imgsrc->widget.draggable = imgsrc_draggable;
	
	if (imgsrc->widget.pos.w > imgsrc->widget.pos.h) {
		if (imgsrc->widget.pos.w > W_SCREEN_WIDTH) {
			double scale = (double)W_SCREEN_WIDTH / (double)imgsrc->widget.pos.w;
			Image_scale(imgsrc, scale, scale, 0);
		}
	}
	else {
		if (imgsrc->widget.pos.h > W_SCREEN_HEIGHT) {
			double scale = (double)W_SCREEN_HEIGHT / (double)imgsrc->widget.pos.h;
			Image_scale(imgsrc, scale, scale, 0);
		}
	}
	
	histogram[0].data = histogram[1].data = histogram[2].data = NULL; // be careful
	Histogram_refresh(&(histogram[0])); Histogram_refresh(&(histogram[1])); Histogram_refresh(&(histogram[2]));
	if (! hist_cont_visible) Container_setVisible(hist_cont, false);
	
	if (*thr_value <= 255) {
		*thr_value = 0xFFFFFFFF;
		thr_bin_label->text_block.text[7] = '\0'; /// @todo class String and setter access
		//sprintf(thr_bin_label->text_block.text+7, "\0"); 
		Label_refresh(thr_bin_label);
		ButtonImage_setEnabled(but_thr_up, false);
		ButtonImage_setEnabled(but_thr_dn, false);
	}
	
	screen->need_reload = true;
}

/*! Copy source image to destination image
 *  Obvious parameters:
 * sender->cparam[0]   -- source image 			as Image*
 * sender->cparam[1]   -- destination image 	as Image*
 */
void button_src_to_dest(Widget *sender, Screen *screen) {
	Image	*imgsrc   = (Image*) sender->cparam[0];
	Image	*imgdst   = (Image*) sender->cparam[1];
	bool	draggable = imgdst->widget.draggable;
	usint	posx 	  = imgdst->widget.pos.x;
	usint	posy      = imgdst->widget.pos.y;
	delete(imgdst);
	Image_copy(imgdst, imgsrc, false);
	Image_setPosition(imgdst, posx, posy);
	imgdst->widget.draggable = draggable;
	screen->need_reload = true;
}

/*! Button brightness up/down click
 *  Obvious parameters:
 * sender->id == 1    -- clicked button brightness UP
 * sender->id == 0    -- clicked button brightness DOWN
 * sender->cparam[0]  -- source image 							as Image*
 * sender->cparam[1]  -- destination image 						as Image*
 * sender->cparam[2]  -- label "%hd" text+11 with short img_off	as Label*
 * sender->cparam[3]  -- brightness: 	 short img_off			as short*
 * sender->cparam[4]  -- contrast:	 	 float img_mul			as float*
 * sender->cparam[5]  -- allow_overflow: bool  allow_overflow	as bool*
 */ 
void button_brightness_change(Widget *sender, Screen *screen) {
	SDL_Surface *imgsrc = ((Image*)sender->cparam[0])->widget.surf;
	SDL_Surface *imgdst = ((Image*)sender->cparam[1])->widget.surf;
	Label		*label  = (Label*) sender->cparam[2];
	short		*img_off= (short*) sender->cparam[3];
	float		*img_mul= (float*) sender->cparam[4];
	bool		*allow_of=(bool*)  sender->cparam[5];
	uchar		s;
	
	if (sender->id) {
		if (*img_off <= 250) *img_off += 2; else return;
	}
	else {
		if (*img_off >= -250) *img_off -= 2; else return;
	}
	sprintf((label->text_block.text+11), "%hd", *img_off); Label_refresh(label);
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_brightness_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
	screen->need_reload = true;
}

/*! Button contrast up/down click
 *  Obvious parameters:
 * sender->id == 1        -- clicked button contrast UP
 * sender->id == 0        -- clicked button contrast DOWN
 * sender->cparam[0]  -- source image 								as Image*
 * sender->cparam[1]  -- destination image 							as Image*
 * sender->cparam[2]  -- label "%5.2f" text+11 with float img_mul	as Label*
 * sender->cparam[3]  -- brightness: 	 short img_off				as short*
 * sender->cparam[4]  -- contrast:	 	 float img_mul				as float*
 * sender->cparam[5]  -- allow_overflow: bool  allow_overflow		as bool*
 */ 
void button_contrast_change(Widget *sender, Screen *screen) {
	SDL_Surface *imgsrc = ((Image*)sender->cparam[0])->widget.surf;
	SDL_Surface *imgdst = ((Image*)sender->cparam[1])->widget.surf;
	Label		*label  = (Label*) sender->cparam[2];
	short		*img_off= (short*) sender->cparam[3];
	float		*img_mul= (float*) sender->cparam[4];
	bool		*allow_of=(bool*)  sender->cparam[5];
	uchar		s;
	
	if (sender->id) {
		if (*img_mul < 99.95f) *img_mul += 0.02f; else return;
	}
	else {
		if (*img_mul >= -99.95f) *img_mul -= 0.02f; else return;
	}
	sprintf((label->text_block.text+11), "%5.2f", *img_mul); Label_refresh(label);
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_contrast_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
	screen->need_reload = true;
}

/*! Button overflow in brightness/contrast up/down click
 *  Obvious parameters:
 * sender->id == 1    -- clicked button overflow UP 	[change to no overflow]
 * sender->id == 0    -- clicked button overflow DOWN	[change to overflow]
 * sender->cparam[0]  -- source image 															as Image*
 * sender->cparam[1]  -- destination image 														as Image*
 * sender->cparam[2]  -- label "%s" text+9 with (allow_overflow)?"przepełnienie":"do skrajnych"	as Label*
 * sender->cparam[3]  -- brightness: 	 short img_off											as short*
 * sender->cparam[4]  -- contrast:	 	 float img_mul											as float*
 * sender->cparam[5]  -- allow_overflow: bool  allow_overflow									as bool*
 */ 
void button_overflow_change(Widget *sender, Screen *screen) {
	SDL_Surface *imgsrc = ((Image*)sender->cparam[0])->widget.surf;
	SDL_Surface *imgdst = ((Image*)sender->cparam[1])->widget.surf;
	Label		*label  = (Label*) sender->cparam[2];
	short		*img_off= (short*) sender->cparam[3];
	float		*img_mul= (float*) sender->cparam[4];
	bool		*allow_of=(bool*)  sender->cparam[5];
	uchar		s;
	
	if (sender->id) {
		if (*allow_of) *allow_of = false; else return;
	}
	else {
		if (! *allow_of) *allow_of = true; else return;
	}
	sprintf((label->text_block.text+9), "%s", (*allow_of)?"przepełnienie":"do skrajnych"); Label_refresh(label);
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_overflow_change() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
	screen->need_reload = true;
}

/*! Button reset brightness/contrast/overflow
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 															as Image*
 * sender->cparam[1]  -- destination image 														as Image*
 * sender->cparam[2]  -- label "%hd" text+11 with short img_off									as Label*
 * sender->cparam[3]  -- label "%5.2f" text+11 with float img_mul								as Label*
 * sender->cparam[4]  -- label "%s" text+9 with (allow_overflow)?"przepełnienie":"do skrajnych"	as Label*
 * sender->cparam[5]  -- brightness: 	 short img_off											as short*
 * sender->cparam[6]  -- contrast:	 	 float img_mul											as float*
 * sender->cparam[7]  -- allow_overflow: bool  allow_overflow									as bool*
 */ 
void button_brightness_reset(Widget *sender, Screen *screen) {
	SDL_Surface *imgsrc 	= ((Image*)sender->cparam[0])->widget.surf;
	SDL_Surface *imgdst 	= ((Image*)sender->cparam[1])->widget.surf;
	Label		*label_off  = (Label*) sender->cparam[2];
	Label		*label_mul  = (Label*) sender->cparam[3];
	Label		*label_of   = (Label*) sender->cparam[4];
	short		*img_off	= (short*) sender->cparam[5];
	float		*img_mul	= (float*) sender->cparam[6];
	bool		*allow_of	= (bool*)  sender->cparam[7];
	uchar		s;
	
	*img_off = 0; *img_mul = 1.0f; *allow_of = false;
	
	if ( (s = GToolsPoint_apply_brightness_contrast(imgsrc, imgdst, *img_mul, *img_off, *allow_of)) )
		fprintf(stderr, "button_brightness_reset() >> Error in GToolsPoint_apply_brightness_contrast() [exited with code %d]\n", s);
		
	sprintf((label_off->text_block.text+11), "%hd", *img_off);  // brightness
	sprintf((label_mul->text_block.text+11), "%5.2f", *img_mul);	// contrast
	sprintf((label_of->text_block.text+9),   "%s", (*allow_of)?"przepełnienie":"do skrajnych");
	Label_refresh(label_off);
	Label_refresh(label_mul);
	Label_refresh(label_of);
	screen->need_reload = true;
}

/*! Button copy destination image to source image
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 															as Image*
 * sender->cparam[1]  -- destination image 														as Image*
 * sender->cparam[2]  -- array histogram[3]	will be reseted										as Histogram*
 * sender->cparam[3]  -- label binarization threshold will set to "\0" at text+7				as Label*
 * sender->cparam[4]  -- buttonimage binarization threshold up will be disabled					as ButtonImage*
 * sender->cparam[5]  -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
 * sender->cparam[6]  -- binarization threshold value will set to 0xFFFFFFFF					as ullong*
 * 
 */
void button_dest_to_src(Widget *sender, Screen *screen) {
	Image 		*imgsrc 		= (Image*) sender->cparam[0];
	Image 		*imgdst 		= (Image*) sender->cparam[1];
	Histogram 	*histogram		= (Histogram*) sender->cparam[2];
	Label		*thr_bin_label	= (Label*) sender->cparam[3];
	ButtonImage *thr_up_butimg	= (ButtonImage*) sender->cparam[4];
	ButtonImage *thr_dn_butimg	= (ButtonImage*) sender->cparam[5];
	ullong		*thr_value		= (ullong*) sender->cparam[6];
	
	usint 		posx = imgsrc->widget.pos.x;
	usint 		posy = imgsrc->widget.pos.y;
	bool		draggable = imgsrc->widget.draggable;
	bool		hist_vis = histogram[0].widget.visible;
	delete(imgsrc);
	Image_copy(imgsrc, imgdst, false);
	Image_setPosition(imgsrc, posx, posy);
	imgsrc->widget.draggable = draggable;
	
	// reset histograms and threshold
	*thr_value = 0xFFFFFFFF;
	histogram[0].data = histogram[1].data = histogram[2].data = NULL; // be careful
	Histogram_refresh(&(histogram[0])); Histogram_refresh(&(histogram[1])); Histogram_refresh(&(histogram[2]));
	if (! hist_vis) {
		histogram[0].widget.visible = histogram[1].widget.visible = histogram[2].widget.visible = false;
	}
	thr_bin_label->text_block.text[7] = '\0';
	//sprintf(thr_bin_label->text_block.text+7, "\0"); 
	Label_refresh(thr_bin_label); // reset "Próg:"
	ButtonImage_setEnabled(thr_up_butimg, false);
	ButtonImage_setEnabled(thr_dn_butimg, false);
	screen->need_reload = true;
}

/*! Button save source image to file "img/file_src.bmp"
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 														as Image*
 */
void button_src_save(Widget *sender, Screen *screen) {
	Image *imgsrc = (Image*)sender->cparam[0];
	SDL_SaveBMP(imgsrc->widget.surf, "img/00_file_src.bmp");
}

/*! Button save destination image to file "img/file_dest.bmp"
 *  Obvious parameters:
 * sender->cparam[0]  -- destination image 														as Image*
 */
void button_dest_save(Widget *sender, Screen *screen) {
	Image *imgdst = (Image*)sender->cparam[0];
	SDL_SaveBMP(imgdst->widget.surf, "img/00_file_dest.bmp");
}

/*! Button desaturize from source image to destination image
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 														as Image*
 * sender->cparam[1]  -- destination image													as Image*
 */
void button_destaturize_std(Widget *sender, Screen *screen) {
	Image *imgsrc = (Image*)sender->cparam[0];
	Image *imgdst = (Image*)sender->cparam[1];
	uchar s;
	if ( (s = GToolsPoint_desaturize_std(imgsrc->widget.surf, imgdst->widget.surf)) )
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
 * sender->cparam[4]  -- boolean t_algo																	as bool*
 * sender->cparam[5]  -- binarization threshold value will set to 0xFFFFFFFF							as ullong*
 * 
 */ 
void button_bin_algo_toggle(Widget *sender, Screen *screen) {
	Label		*thr_bin_label		= (Label*) sender->cparam[0];
	Label		*thr_bin_algo_label	= (Label*) sender->cparam[1];
	ButtonImage *thr_up_butimg		= (ButtonImage*) sender->cparam[2];
	ButtonImage *thr_dn_butimg		= (ButtonImage*) sender->cparam[3];
	bool		*t_algo				= (bool*) sender->cparam[4];
	ullong		*thr_value			= (ullong*) sender->cparam[5];
	if (sender->id) {
		if (! *t_algo) *t_algo = true; else return;
	}
	else {
		if (*t_algo)   *t_algo = false; else return;
	}
	*thr_value = 0xFFFFFFFF;
	sprintf(thr_bin_algo_label->text_block.text+10, (*t_algo)?"Otsu":"tom3k.info"); Label_refresh(thr_bin_algo_label); 
	thr_bin_label->text_block.text[7] = '\0';
	//sprintf(thr_bin_label->text_block.text+7, "\0"); 
	Label_refresh(thr_bin_label);
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
 * sender->cparam[4]  -- current histogram num_hist													as uchar*
 * sender->cparam[5]  -- char** array of histogram names											as char**
 * sender->cparam[6]  -- binarization threshold value will set to 0xFFFFFFFF						as ullong*
 * 
 */ 
void button_used_hist_toggle(Widget *sender, Screen *screen) {
	Label		*lab_used_hist		= (Label*) sender->cparam[0];
	Label		*thr_bin_label		= (Label*) sender->cparam[1];
	ButtonImage *thr_up_butimg		= (ButtonImage*) sender->cparam[2];
	ButtonImage *thr_dn_butimg		= (ButtonImage*) sender->cparam[3];
	uchar		*num_hist			= (uchar*) sender->cparam[4];
	char		**hist_names		= (char**) sender->cparam[5];
	ullong		*thr_value			= (ullong*)sender->cparam[6];
	
	if (sender->id) { if (*num_hist > 0) (*num_hist)--; else return; }
	else { if (*num_hist < 2) (*num_hist)++; else return; }
	*thr_value = 0xFFFFFFFF;
	sprintf((lab_used_hist->text_block.text+18), "%5s", hist_names[*num_hist]); Label_refresh(lab_used_hist); 
	thr_bin_label->text_block.text[7] = '\0';
	//sprintf(thr_bin_label->text_block.text+7, "\0"); 
	Label_refresh(thr_bin_label);
	ButtonImage_setEnabled(thr_up_butimg, false);
	ButtonImage_setEnabled(thr_dn_butimg, false);
	screen->need_reload = true;
}


/*! Button change threshold in binarization
 *  Obvious parameters:
 * sender->id == 1    -- clicked button threshold UP 
 * sender->id == 0    -- clicked button threshold DOWN
 * sender->cparam[0]  -- label binarization threshold will set to "%Lu" <- thr_value at text+7		as Label*
 * sender->cparam[1]  -- binarization threshold thr_value will increase/decrease					as ullong*
 * 
 */ 
void button_threshold_change(Widget *sender, Screen *screen) {
	Label 	*thr_bin_label		= (Label*) sender->cparam[0];
	ullong	*thr_value			= (ullong*)sender->cparam[1];
	if (*thr_value <= 255) {
		if (sender->id) { if (*thr_value <= 254) *thr_value += 1; else return; }
		else { if (*thr_value >= 1) *thr_value -= 1; else return; }
		sprintf(thr_bin_label->text_block.text+7, "%Lu", *thr_value); Label_refresh(thr_bin_label);
		screen->need_reload = true;
	}
}

/*! Button create histograms and show them
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 													as Image*
 * sender->cparam[1]  -- uint **colors array (3 rows, 256 cols) [already ALLOCATED]		as uint**
 * sender->cparam[2]  -- array histogram[3] which will be filled with data				as Histogram*
 * sender->cparam[3]  -- container containing histograms								as Container*
 */
void button_create_histograms_click(Widget *sender, Screen *screen) {
	Image 		*imgsrc 	= (Image*) sender->cparam[0];
	uint		**colors	= (uint**) sender->cparam[1];
	Histogram 	*histogram	= (Histogram*) sender->cparam[2];
	Container	*hist_cont	= (Container*) sender->cparam[3];
	uchar		s;
	if ( (s = GToolsPoint_create_histograms(imgsrc->widget.surf, colors)) ) {
		fprintf(stderr, "button_create_histograms_click() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n", s);
	}
	else {	// refresh histograms
		histogram[0].data = colors[0];		// source for histogram R
		histogram[1].data = colors[1];		// source for histogram G
		histogram[2].data = colors[2];		// source for histogram B
		Histogram_refresh(&(histogram[0]));
		Histogram_refresh(&(histogram[1]));
		Histogram_refresh(&(histogram[2]));
		Container_setVisible(hist_cont, true);
		screen->need_reload = true;
	}
}

/*! Button apply histograms equalization in destination 
 *  Obvious parameters:
 * sender->cparam[0]   -- destination image												as Image*
 * sender->cparam[1]   -- uint **colors array (3 rows, 256 cols) [already ALLOCATED]	as uint**
 * sender->cparam[2]   -- array histogram[3] which will be filled with data				as Histogram*
 * sender->cparam[3]   -- container containing histograms								as Container*
 */
void button_histograms_equalize(Widget *sender, Screen *screen) {
	fprintf(stderr, "CM: &(image[1])....................%p\n", sender->cparam[0]);
	fprintf(stderr, "CM: colors.........................%p\n", sender->cparam[1]);
	fprintf(stderr, "CM: histogram......................%p\n", sender->cparam[2]);
	fprintf(stderr, "CM: cont_equal.....................%p\n", sender->cparam[3]);
	fprintf(stderr, "CM: callback.......................%p\n", button_histograms_equalize);
	fprintf(stderr, "CM: sender.........................%p\n", sender);
	
	Image 		*imgdst 	= (Image*) sender->cparam[0];
	uint		**colors	= (uint**) sender->cparam[1];
	Histogram 	*histogram	= (Histogram*) sender->cparam[2];
	Container	*hist_cont	= (Container*) sender->cparam[3];
	uchar		s;
	if (histogram[0].data == NULL) {
		fprintf(stderr, "button_histograms_equalize() To use this tool, histograms have to be created first.\n");
		return;
	}
	if ( (s = GToolsPoint_histEqualize(imgdst->widget.surf, colors)) ) {
		fprintf(stderr, "button_histograms_equalize() >> Error in GToolsPoint_histEqualize() [exited with code %d]\n", s);
	}
	else {
		histogram[0].data = colors[0];		// source for histogram R
		histogram[1].data = colors[1];		// source for histogram G
		histogram[2].data = colors[2];		// source for histogram B
		Histogram_refresh(&(histogram[0]));
		Histogram_refresh(&(histogram[1]));
		Histogram_refresh(&(histogram[2]));
		Container_setVisible(hist_cont, true);
		screen->need_reload = true;
	}
	
}

/*! Button create histograms, show them and calculate threshold
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 															as Image*
 * sender->cparam[1]  -- uint **colors array (3 rows, 256 cols) [already ALLOCATED]				as uint**
 * sender->cparam[2]  -- array histogram[3] which will be filled with data						as Histogram*
 * sender->cparam[3]  -- container containing histograms										as Container*
 * sender->cparam[4]  -- buttonimage binarization threshold up will be enabled					as ButtonImage*
 * sender->cparam[5]  -- buttonimage binarization threshold down will be enabled				as ButtonImage* 
 * sender->cparam[6]  -- label binarization threshold will set to "%Lu" <- thr_value at text+7	as Label*
 * sender->cparam[7]  -- binarization threshold thr_value will calculate						as ullong*
 * sender->cparam[8]  -- currently used histogram num_hist										as uchar*
 * sender->cparam[9]  -- boolean t_algo [current threshold algorithm]							as bool*
 */
void button_bin_create_histograms(Widget *sender, Screen *screen) {
	Image 		*imgsrc 		= (Image*) sender->cparam[0];
	uint		**colors		= (uint**) sender->cparam[1];
	Histogram 	*histogram		= (Histogram*) sender->cparam[2];
	Container	*hist_cont		= (Container*) sender->cparam[3];
	ButtonImage *thr_up_butimg	= (ButtonImage*) sender->cparam[4];
	ButtonImage *thr_dn_butimg	= (ButtonImage*) sender->cparam[5];
	Label		*thr_bin_label	= (Label*) sender->cparam[6];
	ullong		*thr_value		= (ullong*) sender->cparam[7];
	uchar		*num_hist		= (uchar*) sender->cparam[8];
	bool		*t_algo			= (bool*) sender->cparam[9];
	uchar		s;
	if ( (s = GToolsPoint_create_histograms(imgsrc->widget.surf, colors)) ) {
		fprintf(stderr, "button_bin_create_histograms() >> Error in GToolsPoint_create_histograms() [exited with code %d]\n", s);
	}
	else {	// refresh histograms
		
		screen->need_reload = true;
		histogram[0].data = colors[0];		// source for histogram R
		histogram[1].data = colors[1];		// source for histogram G
		histogram[2].data = colors[2];		// source for histogram B
		Histogram_refresh(&(histogram[0]));
		Histogram_refresh(&(histogram[1]));
		Histogram_refresh(&(histogram[2]));
		Container_setVisible(hist_cont, true);
		
		if ( (s = GToolsPoint_calculate_binary_threshold(histogram[*num_hist].data, thr_value, *t_algo)) ) {
			fprintf(stderr, "button_bin_create_histograms() >> Error in GToolsPoint_calculate_binary_threshold() [exited with code %d]\n", s);
			ButtonImage_setEnabled(thr_up_butimg, false);
			ButtonImage_setEnabled(thr_dn_butimg, false);
			thr_bin_label->text_block.text[7] = '\0';
			//sprintf(thr_bin_label->text_block.text+7, "\0"); 
			Label_refresh(thr_bin_label);
		}
		else {
			ButtonImage_setEnabled(thr_up_butimg, true);
			ButtonImage_setEnabled(thr_dn_butimg, true);
			sprintf(thr_bin_label->text_block.text+7, "%Lu", *thr_value); Label_refresh(thr_bin_label);
		}
	}
}

/*! Apply calculated binary threshold
 *  Obvious parameters:
 * sender->cparam[0]  -- source image 										as Image*
 * sender->cparam[1]  -- destination image									as Image*
 * sender->cparam[2]  -- binarization threshold thr_value 					as ullong*
 */
void button_threshold_apply(Widget *sender, Screen *screen) {
	Image	*imgsrc 	= (Image*) sender->cparam[0];
	Image	*imgdst 	= (Image*) sender->cparam[1];
	ullong	*thr_value 	= (ullong*) sender->cparam[2];
	uchar	s;
	if (*thr_value <= 255) {
		if ( (s = GToolsPoint_apply_bin_threshold(imgsrc->widget.surf, imgdst->widget.surf, *thr_value)) )
			fprintf(stderr, "button_threshold_apply() >> Error in GToolsPoint_apply_bin_threshold() [exited with code %d]\n", s);
		else
			screen->need_reload = true;
	}
}


/*! Apply negative filter in destination
 *  Obvious parameters:
 * sender->cparam[0]  -- destination image 									as Image*
 */
void button_dest_negative(Widget *sender, Screen *screen) {
	Image *imgdst = (Image*) sender->cparam[0];
	SDL_Surface *surf = imgdst->widget.surf;
	uchar s;
	fprintf(stderr, "In DESTINATION:\n\tBpp=%d\n\tpitch=%5hu\n\twidth*Bpp=%u\n\twidth=%5hu\n\theight=%5hu\n\trefcount=%d\n", surf->format->BytesPerPixel, surf->pitch, surf->w * surf->format->BytesPerPixel, surf->w, surf->h, surf->refcount);
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
	Image *imgsrc = (Image*) sender->cparam[0];
	Image *imgdst = (Image*) sender->cparam[1];
	GToolsSplotFilter *gtsf = (GToolsSplotFilter*) sender->cparam[2];
	uchar s;
	if ( (s = GToolsSplotFilter_applyFilter(gtsf, imgsrc->widget.surf, imgdst->widget.surf)) )
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
	Label 				*weight_label = (Label*) sender->vparam[0];
	Label				*predef_label = (Label*) sender->cparam[0];
	GToolsSplotFilter 	*gtsf  = (GToolsSplotFilter*) sender->cparam[1];
	usint 				prev_ind = gtsf->predef_filter_ind;
	uchar 				w;
	if (sender->id & 0x00000001) {				// id % 2 == 1 (weight up)
		w = (sender->id - 1) >> 1;				// w = (id - 1)/2	- convert sender->id to
		if (! GToolsSplotFilter_increaseWeightAt(gtsf, w)) return;
	}
	else {							// id % 2 == 0 (weight down)
		w = sender->id >> 1;
		if (! GToolsSplotFilter_decreaseWeightAt(gtsf, w)) return;
	}
	
	if (prev_ind != 0xFFFF) {	// value changed manually (reset predefinied filter label)
		sprintf(predef_label->text_block.text, "STD: ");
		Label_refresh(predef_label);
	}
	
	snprintf((weight_label->text_block.text), 7, "%6.2f", gtsf->weight[w]);
	Label_refresh(weight_label);
	screen->need_reload = true;
}

/*! Change predefinied splot filter_index
 *  Obvious parameters:
 * sender->id == 1    -- filter down (ind--)
 * sender->id == 0    -- filter up   (ind++)
 * sender->cparam[0]  -- label with predefinied name, will set to "%s" <- filter name at text+5		as Label*
 * sender->cparam[1]  -- GToolsSplotFilter object													as GToolsSplotFilter*
 * sender->cparam[2]  -- first label pointer from all labels array containing weight of splot filter as Label* 
 */ 
void button_change_filter_predef(Widget *sender, Screen *screen) {
	Label				*predef_label = (Label*) sender->cparam[0];
	GToolsSplotFilter 	*gtsf  = (GToolsSplotFilter*) sender->cparam[1];
	Label 				*weight_label = (Label*) sender->cparam[2];
	uchar				w;
	if (sender->id) {	// filter down
		if (! GToolsSplotFilter_decreaseFilterInd(gtsf)) return;
	}
	else {				// filter up
		if (! GToolsSplotFilter_increaseFilterInd(gtsf)) return;
	}
	
	// print filter name on sender->parameter label widget
	snprintf((predef_label->text_block.text+5), 32, "%s", GToolsSplotFilter_getFilterName(gtsf));
	Label_refresh(predef_label);
	for (w = 0; w < 9; w++) {	// update weights on labels and in weight array
		snprintf((weight_label[w].text_block.text), 7, "%6.2f", gtsf->weight[w]);
		Label_refresh(&(weight_label[w]));
	}
	screen->need_reload = true;
}

/*! Click on view menu click item
 *  Obvious parameters:
 * sender->vparam[0]  -- container associated with menu item to show or hide		as Container*
 */
void button_view_click(Widget *sender, Screen *screen) {
	if (sender->vparam[0]) {
		Container *container = (Container*)sender->vparam[0];
		bool vis = container->widget.visible;
		Container_setVisible(container, !vis);
		if (! vis) { // now container visible, set it on top
			screen->widget_ontop = &(container->widget);
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
	Label 			*label 	= (Label*) sender->vparam[0];
	PixelDrawBox 	*pdb 	= (PixelDrawBox*) sender->cparam[0];
	usint d = 1;
	switch (sender->id) {
		case 0: PixelDrawBox_increaseActY(pdb, d); if (! pdb->grid.container.widget.need_reload) return; break;
		case 1: PixelDrawBox_decreaseActY(pdb, d); if (! pdb->grid.container.widget.need_reload) return; break;
		case 2: PixelDrawBox_increaseActX(pdb, d); if (! pdb->grid.container.widget.need_reload) return; break;
		case 3: PixelDrawBox_decreaseActX(pdb, d); if (! pdb->grid.container.widget.need_reload) return; break;
		default: return;
	}
	if (sender->id < 2) snprintf(label->text_block.text, 4, "%3hu", pdb->actY);
	else snprintf(label->text_block.text, 4, "%3hu", pdb->actX);
	Label_refresh(label);
	screen->need_reload = true;
}

/*! Button dilate
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image*
 * sender->cparam[1]   -- destination image								as Image*
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
 */
void button_dilate_click(Widget *sender, Screen *screen) {
	if (! GToolsMorph_dilate(((Image*)sender->cparam[0])->widget.surf, ((Image*)sender->cparam[1])->widget.surf, (sender->id)?NULL:(PixelDrawBox*)sender->cparam[2])) screen->need_reload = true;
}

/*! Button erode
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image*
 * sender->cparam[1]   -- destination image								as Image*
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
 */
void button_erode_click(Widget *sender, Screen *screen) {
	if (! GToolsMorph_erode(((Image*)sender->cparam[0])->widget.surf, ((Image*)sender->cparam[1])->widget.surf, (sender->id)?NULL:(PixelDrawBox*)sender->cparam[2])) screen->need_reload = true;
}

/*! Button morph open
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image*
 * sender->cparam[1]   -- destination image								as Image*
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
 */
void button_morph_open_click(Widget *sender, Screen *screen) {
	if (! GToolsMorph_open(((Image*)sender->cparam[0])->widget.surf, ((Image*)sender->cparam[1])->widget.surf, (sender->id)?NULL:(PixelDrawBox*)sender->cparam[2])) screen->need_reload = true;
}

/*! Button morph close
 *  Obvious parameters:
 * sender->id == 0     -- use PixelDrawBox as structuring element
 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
 * sender->cparam[0]   -- source image									as Image*
 * sender->cparam[1]   -- destination image								as Image*
 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
 */
void button_morph_close_click(Widget *sender, Screen *screen) {
	if (! GToolsMorph_close(((Image*)sender->cparam[0])->widget.surf, ((Image*)sender->cparam[1])->widget.surf, (sender->id)?NULL:(PixelDrawBox*)sender->cparam[2])) screen->need_reload = true;
}

/*! Change reconstruction iteration limit
 *  Obvious parameters:
 * sender->id == 0     -- decrease limit count
 * sender->id == 1     -- increase limit count
 * sender->vparam[0]   -- label on which write new limit as "%5hu" at text+0			as Label*
 * sender->vparam[1]   -- limit value (0 - unlimited)									as usint*
 */
void button_change_reconst_limit(Widget *sender, Screen *screen) {
	Label *label = (Label*) sender->vparam[0];
	usint *limit = (usint*) sender->vparam[1];
	if (sender->id) {
		if (*limit < 10000) *limit += 5; else return;
	}
	else {
		if (*limit > 5) *limit -= 5; else return;
	}
	sprintf(label->text_block.text, "%5hu", *limit); Label_refresh(label);
	screen->need_reload = true;
}

/*! Open image file as marker for reconstruction
 *  Obvious parameters:
 * sender->vparam[0]   -- image in which open new image									as Image*
 * sender->vparam[1]   -- image used as comparision										as Image*
 */
void button_reconstruction_marker_open(Widget *sender, Screen *screen) {
	char *sel_path = FileBrowsePanel_Main(screen->screen);
	if (sel_path != NULL) { // file selected
		Image 		*imgdst = (Image*) sender->vparam[0];
		Image 		*imgcmp = (Image*) sender->vparam[1];
		Image 		*imgtmp = calloc(1, sizeof(Image));
		fprintf(stderr, "%s\n", Widget_toString(&(imgdst->widget)));
		Image_new(imgtmp, sel_path, 0, 0);
		if (Check_surfaces(imgtmp->widget.surf, imgcmp->widget.surf)) {
			fprintf(stderr, "button_reconstruction_marker_open() Marker and mask image format mismatch.\n");
			delete(imgtmp);
			free(imgtmp);
			screen->need_reload = true;
			return;
		}
		/* The same format in imgdst and imgtmp */
		usint 		posx 			= imgdst->widget.pos.x;
		usint 		posy 			= imgdst->widget.pos.y;
		bool		draggable 		= imgdst->widget.draggable;
		delete(imgdst);
		Image_copy(imgdst, imgtmp, false);
		Image_setPosition(imgdst, posx, posy);
		imgdst->widget.draggable = draggable;
		free(delete(imgtmp));
	}
	screen->need_reload = true;
}

/*! Apply reconstruction filter 
 *  Obvious parameters;
 *  sender->vparam[0]   -- image[0] as imgmask				as Image*
 *  sender->vparam[1]   -- image[2] as imgmarker			as Image*
 *  sender->vparam[2]   -- iterations limit 				as usint*
 */ 
void button_apply_reconstruction_filter(Widget *sender, Screen *screen) {
	Image 	*imgmask 	= (Image*) sender->vparam[0];
	Image	*imgmarker	= (Image*) sender->vparam[1];
	usint	*limit		= (usint*) sender->vparam[2];
	uchar 	s;
	if (! imgmarker->widget.visible) {
		fprintf(stderr, "button_apply_reconstruction_filter() Marker is invisible, cannot continue.\n");
		return;
	}
	if ( (s = GToolsMorph_reconstruction(imgmask->widget.surf, imgmarker->widget.surf, *limit)) ) {
		fprintf(stderr, "button_apply_reconstruction_filter(): Method GToolsMorph_reconstruction exited with error code %d\n", s);
	}
	else
		screen->need_reload = true;
	
	
}

/*! Resize destination image up/down a bit
 *  Obvious parameters;
 *  sender->id  == 1    -- grow image
 *  sender->id  == 0    -- make smaller
 *  sender->vparam[0]   -- image[1] as destination image			as Image*
 */ 
void button_dest_resize(Widget *sender, Screen *screen) {
	Image  *imgdst = (Image*) sender->vparam[0];
	Widget *wtdst = &(imgdst->widget);
	if (Check_surface(wtdst->surf)) {
		fprintf(stderr, "button_dest_resize(): Failed on assertion Check_surface()\n");
		return;
	}
	usint mindim = wtdst->pos.w < wtdst->pos.h ? wtdst->pos.w : wtdst->pos.h;
	usint maxdim = wtdst->pos.w > wtdst->pos.h ? wtdst->pos.w : wtdst->pos.h;
	usint sx = wtdst->pos.x, sy = wtdst->pos.y;
	double sw,sh;
	usint dim_det = 10;
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
	Image_setPosition(imgdst, sx, sy);
	screen->need_reload = true;
}

/*! Button replace colors threshold change 
 *  Obvious parameters:
 * sender->id == 1   -- threshold up
 * sender->id == 0   -- threshold down
 * sender->cparam[0] -- label on which writes "%3d", rep_thr at text+7		as Label*
 * sender->cparam[1] -- threshold value										as uchar*
 */
void button_rep_col_change_threshold(Widget *sender, Screen *screen) {
	Label *label   = (Label*) sender->cparam[0];
	uchar *rep_thr = (uchar*) sender->cparam[1];
	if (sender->id) { if (*rep_thr <= 254) (*rep_thr)++; else return; }
	else { if (*rep_thr >= 1) (*rep_thr)--; else return; }
	sprintf(label->text_block.text+7, "%3d", *rep_thr); Label_refresh(label);
	screen->need_reload = true;
}

/*! Button replace colors condition change 
 *  Obvious parameters:
 * sender->id == 1   -- condition up
 * sender->id == 0   -- condition down
 * sender->cparam[0] -- label on which writes "`%2s`", cond_name[rep_cond] at text+9	as Label*
 * sender->cparam[1] -- current condition rep_cond									as condition*
 * sender->cparam[2] -- condition names cond_name 									as uchar**
 */
void button_rep_col_change_condition(Widget *sender, Screen *screen) {
	Label 		*label   	= (Label*) 		sender->cparam[0];
	condition	*cond    	= (condition*)	sender->cparam[1];
	uchar		**cond_sym	= (uchar**) 	sender->cparam[2];
	if (sender->id) { if (*cond < CONDITION_MAXIND) (*cond)++; else return; }
	else { if (*cond > 0) (*cond)--; else return; }
	sprintf(label->text_block.text+9, "`%2s`", cond_sym[*cond]); Label_refresh(label);
	screen->need_reload = true;
}

/*! Button replace colors change new color 
 *  Obvious parameters:
 * sender->id == 1   -- channel up
 * sender->id == 0   -- channel down
 * sender->vparam[0] -- label on which writes "%3d", rep_channel at text+0			as Label*
 * sender->vparam[1] -- rep_channel value for attached channel						as uchar*
 */
void button_rep_col_change_new_color(Widget *sender, Screen *screen) {
	Label 	*label 			= (Label*) sender->vparam[0];
	uchar 	*rep_channel 	= (uchar*) sender->vparam[1];
	if (sender->id) { if (*rep_channel <= 254) (*rep_channel)++; else return; }
	else { if (*rep_channel >= 1) (*rep_channel)--; else return; }
	sprintf(label->text_block.text, "%3d", *rep_channel); Label_refresh(label);
	screen->need_reload = true;
}

/*! Button replace colors apply
 *  Obvious parameters:
 * sender->cparam[0] -- source image 									as Image*
 * sender->cparam[1] -- destination image								as Image*
 * sender->cparam[2] -- condition										as condition*
 * sender->cparam[3] -- threshold										as uchar*
 * sender->cparam[4] -- new color uchar new_col[3]						as uchar*
 */
void button_rep_col_apply(Widget *sender, Screen *screen) {
	Image 		*imgsrc = (Image*) 		sender->cparam[0];
	Image 		*imgdst = (Image*) 		sender->cparam[1];
	condition 	*cond   = (condition*) 	sender->cparam[2];
	uchar 		*thr    = (uchar*)      sender->cparam[3];
	uchar 		*new_col= (uchar*)		sender->cparam[4];
	uchar 		s;
	if ( (s = GToolsPoint_replace_pixels(imgsrc->widget.surf, imgdst->widget.surf, *cond, *thr, new_col)) )
		fprintf(stderr, "button_rep_col_apply: GToolsPoint_replace_pixels failed [exit code %d]\n", s);
	else
		screen->need_reload = true;
}

/*! Callback run by HistStretchGraph object after graph has changed on mouse release
 *   sender is HistStretchGraph
 *   sender->vparam[0] -- image[0] - source image 			as Image*
 *   sender->vparam[1] -- image[1] - destination image		as Image*
 */
void histogram_stretch_on_mouse_release(Widget *sender, Screen *screen) {
	HistStretchGraph *hsg = (HistStretchGraph*) sender;
	Image *imgsrc = (Image*) sender->vparam[0];
	Image *imgdst = (Image*) sender->vparam[1];
	uchar s;
	if ( (s = GToolsPoint_histogram_stretching(imgsrc->widget.surf, imgdst->widget.surf, hsg->x, hsg->y, hsg->size)) ) {
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
	Label 				*label 			= (Label*) 				sender->vparam[0];
	HistStretchGraph 	*hsg 			= (HistStretchGraph*) 	sender->vparam[1];
	uchar				s;
	if (sender->id) { if (hsg->size <= 31) HistStretchGraph_setCountPoints(hsg, hsg->size+1); else return; }
	else { if (hsg->size >= 3) HistStretchGraph_setCountPoints(hsg, hsg->size-1); else return; }
	sprintf(label->text_block.text+18, "%3d", hsg->size); Label_refresh(label);
	if ( (s = HistStretchGraph_refresh2(hsg)) ) {
		fprintf(stderr, "button_change_hist_stretch_nodes: HistStretchGraph_refresh2 failed [exit code %d]\n", s);
	}
	else screen->need_reload = true;
}

/*! Button apply generic filter (from GToolsFilters.h)
 * sender->id          -- is a name of filter 
 * sender->cparam[0]   -- source image 				as Image*
 * sender->cparam[1]   -- destination image			as Image*
 */
void button_generic_filter_apply(Widget *sender, Screen *screen) {
	Image *imgsrc = (Image*) sender->cparam[0];
	Image *imgdst = (Image*) sender->cparam[1];
	generictype type = sender->id;
	uchar s;
	if ( (s = GToolsFilter_apply(imgsrc->widget.surf, imgdst->widget.surf, type)) )
		fprintf(stderr, "button_generic_filter_apply: GToolsFilter_apply (filter: %d) failed [exit code %d]\n", type, s);
	else screen->need_reload = true;
}
