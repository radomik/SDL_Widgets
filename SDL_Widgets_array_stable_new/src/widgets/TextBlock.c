/*		[text on one color background, no paddings nor border, more lightweight than Label]
 *      TextBlock.c - this file is part of SDL_Widgets
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
#include "Memory.h"
#include "TextBlock.h"
#include "Widget.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = TextBlock_vdestroy,
	.toString = TextBlock_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= TextBlock_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(TextBlock),
	.name	= "TextBlock",
	.vtable	= vtable
};
const coClass *TextBlock_class = &type;

void TextBlock_vrefresh(void *vthis) {
	TextBlock 		*text_block = TEXTBLOCK(vthis);
	Widget 			*widget 	= WIDGET(vthis);
	if ((! text_block->text) || (! text_block->font)) { 
		Widget_setVisible(widget, false);
		return;
	}
	
	SDL_Surface		*bg_surf    = widget->surf, // background surface initialize with existing(?) surface
					*text_surf  = NULL;			// temporary text surface
	int 			w=0, h=0;
	int 			et = TTF_SizeUTF8(text_block->font, text_block->text, &w, &h);
	
	if ((et == -1) || (w <= 0) || (h <= 0)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to determine font size or invalid size (exit_code=%d, w=%d, h=%d)\n", text_block->text, et, w, h);
		Widget_setVisible(widget, false);
		return;
	}
	
	//SDL_Rect	bgr = { 0, 0, (u16)w, (u16)h };		// SDL blitting rectangle
	
	/* Create surface if needed */
	if ((bg_surf) && (bg_surf->w >= w) && (bg_surf->h >= h)) {
		/*fprintf(stderr, "TextBlock_refresh[%s] Notice: Surface already exists. Does not creating new one.\n", text_block->text);*/
	}
	else {
		SDL_FreeSurface(bg_surf); // free current surface (safe to pass NULL)
		bg_surf = Static_newSurface((u16)w, (u16)h);
		if (! bg_surf) {
			fprintf(stderr, "TextBlock_refresh[%s] CreateRGBSurface (bg_surf) failed: %s\n", text_block->text, SDL_GetError());
			Widget_setVisible(widget, false);
			return;
		}
	}
	
	//fprintf(stderr, "TextBlock_refresh:TextBlock>> bg_surf{w,h}=(%hu,%hu) color=%X[r=%X,g=%X,b=%X]\n", bg_surf->w, bg_surf->h, Static_rgbFromColor(text_block->background), text_block->background.r, text_block->background.g, text_block->background.b);
	if (SDL_FillRect(bg_surf, NULL, text_block->background)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to fill background surface (FillRect): %s\n", text_block->text, SDL_GetError());
	}
	
	/* Convert foreground RGB color (u32) to SDL_Color if needed */
	if (text_block->foreground_changed) {
		Static_getColorFromRGB(text_block->fgcolor, text_block->foreground, Screen_getBaseSurfaceFormat());
		text_block->foreground_changed = false;
	}
	
    if (! (text_surf = TTF_RenderUTF8_Solid(text_block->font, text_block->text, text_block->fgcolor))) {
		fprintf(stderr, "TextBlock_refresh[%s] TTF_RenderUTF8_Solid (text_surf) failed [%s]\n", text_block->text, TTF_GetError());
	}
	
	if (SDL_BlitSurface(text_surf, NULL, bg_surf, NULL)) {
		fprintf(stderr, "TextBlock_refresh[%s] SDL_BlitSurface(bg_surf, NULL, text_surf, NULL) failed: %s\n", text_block->text, SDL_GetError());
	}
	
	widget->surf = bg_surf;
	Widget_setSizeUpdatePos(widget, w, h);
	Widget_setVisible(widget, true);
	SDL_FreeSurface(text_surf);		// delete temporary text surface
}

void TextBlock_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	free(TEXTBLOCK(vthis)->text);					// delete text char* array
	TEXTBLOCK(vthis)->text=NULL;					/// @todo replace char* with coString object
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

// Constructor
TextBlock* TextBlock_new(TextBlock *this, const char *text) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: text='%s'\n", __FUNCTION__, text);
		return NULL;
	}
	
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	this->text 	 	 = NULL;
	
	if (text != NULL) TextBlock_setText(this, text);
	
	this->font         = Static_getDefaultFont();
	if (! this->font) {
		fprintf(stderr, "TextBlock_new: Failed to set default font %s\n", W_DEFAULT_FONT);
		Widget_setVisible(WIDGET(this), false);		
		return this;
	}
	this->foreground = W_DEFAULT_FGCOLOR;
	this->background = W_DEFAULT_BGCOLOR;
	this->foreground_changed = true;
	return this;
}

void TextBlock_setText(TextBlock *this, const char *text) {
	u16 l = strlen(text);
	u16 n = (this->text==NULL) ? 0 : strlen(this->text);
	if (l <= n) {
		strcpy(this->text, text);
	}
	else {
		if (this->text) free(this->text);
		this->text = strdup(text);
	}
}

void TextBlock_setFont(TextBlock *this, TTF_Font *font) { 
	if ((font) && (this)) { 
		this->font = font; /*WIDGET(this)->need_refresh = true;*/ 
	} 
}
	
void TextBlock_setForegroundColor(TextBlock *this, u32 rgb) { 
	this->foreground = rgb; this->foreground_changed = true; 
	/*WIDGET(this)->need_refresh = true;*/
}

inline void TextBlock_setBackgroundColor(TextBlock *this, u32 rgb) {
	this->background = rgb;
	/*WIDGET(this)->need_refresh = true;*/
}

const char *TextBlock_vtoString(const void *vthis) {
	static char str_id[512];
	snprintf(str_id, sizeof(str_id), "%s", TEXTBLOCK(vthis)->text);
	return str_id;
}

inline void TextBlock_staticGetTextSize(TTF_Font *font, const char *text, int *w, int *h) { 
	TTF_SizeUTF8(font, text, w, h); 
}
