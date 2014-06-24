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

#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "LabelImage.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = LabelImage_vdestroy,
	.toString = LabelImage_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= LabelImage_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(LabelImage),
	.name	= "LabelImage",
	.vtable	= vtable
};
const coClass *LabelImage_class = &type;

void LabelImage_vrefresh(void *vthis) {
	LabelImage  *labelimage = LABEL_IMAGE(vthis);
	Image 		*im 	= &labelimage->image;
	Widget		*widget = WIDGET(vthis);
	Widget		*imw	= WIDGET(im);			//! @note Image have to inherit from Widget
	SDL_Surface *bg_surf;
	u16		iw		= imw->pos.w;	// image width and height
	u16		ih		= imw->pos.h;
	
	/* Set properties of LabelImage (pos.x & pos.y set elsewhere) */
	if (! labelimage->fixed_width) {
		widget->pos.w = iw + ((labelimage->padx+labelimage->border_width)<<1);	// width
		widget->pos.h = ih + ((labelimage->pady+labelimage->border_width)<<1); 	// height
	}
	
	/* Set position of image */
	imw->pos.x = widget->pos.x + ((widget->pos.w - iw)>>1);
	imw->pos.y = widget->pos.y + ((widget->pos.h - ih)>>1);
	
	/* Create base surface (for whole labelimage) */
	bg_surf = Static_newSurface(widget->pos.w, widget->pos.h);
	if (! bg_surf) {
		fprintf(stderr, "LabelImage_refresh: Failed to create base SDL_Surface bg_surf [%s]\n", SDL_GetError());
		Widget_setVisible(widget, false);
		return;
	} 
	
	/* Fill base surface with border color */
	if (SDL_FillRect(bg_surf, NULL, labelimage->border)) {
		fprintf(stderr, "LabelImage_refresh: Failed to fill background surface with border color (FillRect) [%s]\n", SDL_GetError());
		Widget_setVisible(widget, false);
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
		fprintf(stderr, "LabelImage_refresh: Failed to fill background surface with background color (FillRect) [%s]\n", SDL_GetError());
		Widget_setVisible(widget, false);
		return;
	}
	
	//if (child_visible) {	// if text_block is valid
		/* BlitSurface image onto bg_surf */
		bgr.x = imw->pos.x - widget->pos.x;
		bgr.w = imw->pos.w;
		bgr.y = imw->pos.y - widget->pos.y;
		bgr.h = imw->pos.h;
		if (SDL_BlitSurface(imw->surf, NULL, bg_surf, &bgr)) {
			fprintf(stderr, "LabelImage_refresh: SDL_BlitSurface(labelimage->image.widget.surf, NULL, bg_surf, &bgr) failed: [%s]\n", SDL_GetError());
			Widget_setVisible(widget, false);
			return;
		}
	//}
	SDL_FreeSurface(widget->surf);
	widget->surf = bg_surf;
	Widget_updateMaxXY(widget);
	Widget_setVisible(widget, true);
}

void LabelImage_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	delete(&(LABEL_IMAGE(vthis)->image));
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

LabelImage* LabelImage_new(LabelImage *this, const char	*img_path) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: img_path=%s\n", __FUNCTION__, img_path);
		return NULL;
	}
	
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	Image_new(&this->image, img_path, 0, 0);
	
	this->fixed_width		= false;  // this ought to be set to false before first run of refresh
	
	this->padx				= 5;
	this->pady				= 5;
	this->border_width		= 1;
	this->border			= W_DEFAULT_BORDER_COLOR;
	this->border			= W_DEFAULT_BORDER_COLOR;
	return this;
}

LabelImage* LabelImage_copy(LabelImage *this, const LabelImage *src, b8 copy_pos) {
	if ((! this) || (! src)) {
		fprintf(stderr, "LabelImage_copy: Passed NULL: this(%p) or src(%p)\n", this, src);
		return NULL;
	}
	Widget_copy(WIDGET(this), WIDGET(src), copy_pos, true);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	Image_copy(&this->image, &src->image, copy_pos);
	
	this->border 		= src->border;
	this->background 	= src->background;
	this->border_width 	= src->border_width;
	this->padx 			= src->padx;
	this->pady 			= src->pady;
	this->fixed_width 	= src->fixed_width;
	return this;
} 

void LabelImage_setBorder(LabelImage *this, u16 bord_width, u32 rgb) {
	this->border_width = bord_width;
	this->border	   = rgb;
}

void LabelImage_setPadding(LabelImage *this, u16 padx, u16 pady) {
	this->padx = padx;
	this->pady = pady;
}

inline void LabelImage_setBgColor(LabelImage *this, u32 rgb) { 
	this->background = rgb; 
}

void LabelImage_setImageFromFile(LabelImage *this, const char* img_path) {
	const u16 posx = WIDGET(&this->image)->pos.x;
	const u16 posy = WIDGET(&this->image)->pos.y;
	delete(&this->image);
	Image_new(&this->image, img_path, posx, posy);
}

void LabelImage_setImage(LabelImage *this, const Image *image) {
	const u16 posx = WIDGET(&this->image)->pos.x;
	const u16 posy = WIDGET(&this->image)->pos.y;
	delete(&this->image);
	Image_copy(&this->image, image, false);
	Widget_setPosition(WIDGET(&this->image), posx, posy);
}

inline void LabelImage_scale(LabelImage *this, double xscale, double yscale, int smooth) { 
	Widget_scale(WIDGET(this), xscale, yscale, smooth); 
}

const char *LabelImage_vtoString(const void *vthis) {
	static char str_id[128];
	snprintf(str_id, sizeof(str_id), "%s", toString( &( LABEL_IMAGE(vthis)->image ) ) );
	return str_id;
}
