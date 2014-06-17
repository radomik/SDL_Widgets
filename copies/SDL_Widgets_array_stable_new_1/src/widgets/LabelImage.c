/*		[label with image (rest the same as for Label)]
 *      LabelImage.c - this file is part of SDL_Widgets
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
#include "Object.h"
#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "Widget.h"
#include "Image.h"
#include "LabelImage.h"

static const char *type = "LabelImage";

void LabelImage_refresh(LabelImage *labelimage) {
	SDL_Surface *bg_surf;
	Image 	*im 	= &(labelimage->image);
	Widget	*widget = (Widget*)labelimage;
	Widget	*imw	= (Widget*)im;			//! @NOTE: Image have to inherit from Widget
	
	usint	iw		= imw->pos.w;	// image width and height
	usint	ih		= imw->pos.h;
	
	/* Set properties of LabelImage (pos.x & pos.y set elsewhere) */
	if (! labelimage->fixed_width) {
		widget->pos.w = iw + ((labelimage->padx+labelimage->border_width)<<1);	// width
		widget->pos.h = ih + ((labelimage->pady+labelimage->border_width)<<1); 	// height
	}
	
	/* Set position of image */
	imw->pos.x = widget->pos.x + ((widget->pos.w - iw)>>1);
	imw->pos.y = widget->pos.y + ((widget->pos.h - ih)>>1);
	
	/* Create base surface (for whole labelimage) */
	bg_surf = Static_NewSurface(widget->pos.w, widget->pos.h);
	if (! bg_surf) {
		fprintf(stderr, "LabelImage_refresh:LabelImage> Failed to create base SDL_Surface bg_surf\n");
		widget->visible = false;
		return;
	} 
	
	/* Fill base surface with border color */
	if (SDL_FillRect(bg_surf, NULL, labelimage->border)) {
		fprintf(stderr, "LabelImage_refresh:LabelImage> Failed to fill background surface with border color (FillRect)\n");
		widget->visible = false;
		return;
	}
	
	/* Draw inner background inside bg_surf (leave unfilled border) */
	iw = labelimage->border_width;
	ih = labelimage->border_width << 1;
	SDL_Rect bgr = {
		iw,					// x
		iw,					// y
		widget->pos.w - ih,	// w
		widget->pos.h - ih	// h
	};
	if (SDL_FillRect(bg_surf, &bgr, labelimage->background)) {
		fprintf(stderr, "LabelImage_refresh:LabelImage> Failed to fill background surface with background color (FillRect)\n");
		widget->visible = false;
		return;
	}
	
	//if (child_visible) {	// if text_block is valid
		/* BlitSurface image onto bg_surf */
		bgr.x = imw->pos.x - widget->pos.x;
		bgr.w = imw->pos.w;
		bgr.y = imw->pos.y - widget->pos.y;
		bgr.h = imw->pos.h;
		if (SDL_BlitSurface(imw->surf, NULL, bg_surf, &bgr)) {
			fprintf(stderr, "LabelImage_refresh:LabelImage> SDL_BlitSurface(labelimage->image.widget.surf, NULL, bg_surf, &bgr) failed: %s\n", SDL_GetError());
			widget->visible = false;
			return;
		}
	//}
	SDL_FreeSurface(widget->surf);
	widget->surf = bg_surf;
	widget->maxx = widget->pos.x + widget->pos.w;
	widget->maxy = widget->pos.y + widget->pos.h;
	widget->visible = true;
}

/** Current destructor (virtual) use delete() handler to call it */
static void LabelImage_vdestroy(void *vthis) { 
	LabelImage *this = (LabelImage*) vthis;
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "LabelImage_vdestroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	delete(&(this->image));
	
	/*! Delete parent object !*/
	Widget_destroy((Widget*)this);
}

LabelImage* LabelImage_new(	LabelImage 	*this,
							const char 	*img_path) {
	if (! this) {
		fprintf(stderr, "LabelImage_new: Passed NULL this pointer. img_path=%s\n", img_path);
		return NULL;
	}
	Widget_init_type((Widget*)this, LABELIMAGE_TYPE, LabelImage_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "LabelImage_new", Object_getType((Object*)this), this);
	
	Image_new(&(this->image), img_path, 0, 0);
	
	this->fixed_width			= false;  // this ought to be set to false before first run of refresh
	
	this->padx				= 5;
	this->pady				= 5;
	this->border_width		= 1;
	this->border			= W_DEFAULT_BORDER_COLOR;
	this->border			= W_DEFAULT_BORDER_COLOR;
	return this;
}

LabelImage* LabelImage_copy(LabelImage *labelimage_dest, LabelImage *labelimage_src, bool copy_pos) {
	if ((! labelimage_dest) || (! labelimage_src)) {
		fprintf(stderr, "LabelImage_copy: Passed NULL: labelimage_dest(%p) or labelimage_src(%p)\n", labelimage_dest, labelimage_src);
		return NULL;
	}
	Widget_copy((Widget*)labelimage_dest, (Widget*)labelimage_src, copy_pos, true);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "LabelImage_copy", Object_getType((Object*)labelimage_dest), labelimage_dest);
	
	Image_copy(&(labelimage_dest->image), &(labelimage_src->image), copy_pos);
	
	labelimage_dest->border = labelimage_src->border;
	labelimage_dest->background = labelimage_src->background;
	labelimage_dest->border_width = labelimage_src->border_width;
	labelimage_dest->padx = labelimage_src->padx;
	labelimage_dest->pady = labelimage_src->pady;
	labelimage_dest->fixed_width = labelimage_src->fixed_width;
	return labelimage_dest;
} 

inline void LabelImage_setBorder(LabelImage *labelimage, usint bord_width, uint rgb) {
	labelimage->border_width = bord_width;
	labelimage->border		 = rgb;
}

inline void LabelImage_setPadding(LabelImage *labelimage, usint padx, usint pady) {
	labelimage->padx = padx;
	labelimage->pady = pady;
}

inline void LabelImage_setBgColor(LabelImage *labelimage, uint rgb) 
	{ labelimage->background = rgb; }

void LabelImage_setImageFromFile(LabelImage *labelimage, char* img_path) {
	usint posx = labelimage->image.widget.pos.x;
	usint posy = labelimage->image.widget.pos.y;
	delete(&(labelimage->image));
	Image_new(&(labelimage->image), img_path, posx, posy);
}

void LabelImage_setImage(LabelImage *labelimage, Image *image) {
	usint posx = labelimage->image.widget.pos.x;
	usint posy = labelimage->image.widget.pos.y;
	delete(&(labelimage->image));
	Image_copy(&(labelimage->image), image, false);
	Widget_setPosition(&(labelimage->image.widget), posx, posy);
}

inline void LabelImage_scale(LabelImage *labelimage, double xscale, double yscale, int smooth) 
	{ Widget_scale((Widget*)labelimage, xscale, yscale, smooth); }

static char str_id[128];
char *LabelImage_toString(LabelImage *labelimage) {
	if (! labelimage) return "labelimage=NULL";
	snprintf(str_id, 128, "%s", Image_toString(&(labelimage->image)));
	return str_id;
}
