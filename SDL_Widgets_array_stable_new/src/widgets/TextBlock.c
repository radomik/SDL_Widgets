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
	const char 		*text		= String_cstr(&text_block->string);
	if ((! text) || (! text_block->font)) { 
		Widget_setVisible(widget, false);
		return;
	}
	
	SDL_Surface		*bg_surf    = widget->surf, // background surface initialize with existing(?) surface
					*text_surf  = NULL;			// temporary text surface
	int 			w=0, h=0;
	int 			et = TTF_SizeUTF8(text_block->font, text, &w, &h);
	
	if ((et == -1) || (w <= 0) || (h <= 0)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to determine font size or invalid size (exit_code=%d, w=%d, h=%d)\n", 
			text, et, w, h);
		Widget_setVisible(widget, false);
		return;
	}
	
	/* Create surface if needed */
	if ((bg_surf) && (bg_surf->w >= w) && (bg_surf->h >= h)) {
		/*fprintf(stderr, "TextBlock_refresh[%s] Notice: Surface already exists. Does not creating new one.\n", text_block->text);*/
	}
	else {
		SDL_FreeSurface(bg_surf); // free current surface (safe to pass NULL)
		bg_surf = Static_newSurface((u16)w, (u16)h);
		if (! bg_surf) {
			fprintf(stderr, "TextBlock_refresh[%s] CreateRGBSurface (bg_surf) failed: %s\n", text, SDL_GetError());
			Widget_setVisible(widget, false);
			return;
		}
	}
	
	//fprintf(stderr, "TextBlock_refresh:TextBlock>> bg_surf{w,h}=(%hu,%hu) color=%X[r=%X,g=%X,b=%X]\n", bg_surf->w, bg_surf->h, Static_rgbFromColor(text_block->background), text_block->background.r, text_block->background.g, text_block->background.b);
	if (SDL_FillRect(bg_surf, NULL, text_block->background)) {
		fprintf(stderr, "TextBlock_refresh[%s] Failed to fill background surface (FillRect): %s\n", text, SDL_GetError());
	}
	
	/* Convert foreground RGB color (u32) to SDL_Color if needed */
	if (text_block->foreground_changed) {
		Static_getColorFromRGB(text_block->fgcolor, text_block->foreground, Screen_getBaseSurfaceFormat());
		text_block->foreground_changed = false;
	}
	
    if (! (text_surf = TTF_RenderUTF8_Solid(text_block->font, text, text_block->fgcolor))) {
		fprintf(stderr, "TextBlock_refresh[%s] TTF_RenderUTF8_Solid (text_surf) failed [%s]\n", text, TTF_GetError());
	}
	
	if (SDL_BlitSurface(text_surf, NULL, bg_surf, NULL)) {
		fprintf(stderr, "TextBlock_refresh[%s] SDL_BlitSurface(bg_surf, NULL, text_surf, NULL) failed: %s\n", text, SDL_GetError());
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
	delete( &(TEXTBLOCK(vthis)->string) );
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

const char *TextBlock_vtoString(const void *vthis) {
	return TextBlock_getText(TEXTBLOCK(vthis));
}

static void TextBlock_commonInit(TextBlock *this) {
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	this->font         = Static_getDefaultFont();
	if (! this->font) {
		fprintf(stderr, "%s: Failed to set default font %s\n", __FUNCTION__, W_DEFAULT_FONT);
		Widget_setVisible(WIDGET(this), false);		
		return;
	}
	this->foreground = W_DEFAULT_FGCOLOR;
	this->background = W_DEFAULT_BGCOLOR;
	this->foreground_changed = true;
}

// Constructor
TextBlock* TextBlock_newText(TextBlock *this, const char *text) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: text='%s'\n", __FUNCTION__, text);
		return NULL;
	}
	TextBlock_commonInit(this);
	String_newText(&this->string, text);
	
	return this;
}

TextBlock* TextBlock_newString(TextBlock *this, const String *string) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: string='%s'\n", __FUNCTION__, String_cstr(string));
		return NULL;
	}
	
	TextBlock_commonInit(this);
	String_copy(&this->string, string);
	
	return this;
}

TextBlock* TextBlock_newLen(TextBlock *this, size_t length) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: length=%lu\n", __FUNCTION__, length);
		return NULL;
	}
	
	TextBlock_commonInit(this);
	String_newLen(&this->string, length);
	
	return this;
}

TextBlock* TextBlock_copy(TextBlock *this, const TextBlock *src, b8 copy_pos) {
	if ((! this) || (! src)) {
		fprintf(stderr, "TextBlock_copy: Passed NULL: this(%p) or src(%p)\n", this, src);
		return NULL;
	}
	Widget_copy(WIDGET(this), WIDGET(src), copy_pos, true);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	String_copy(&this->string, &src->string);
	
	this->font 				= src->font;
	this->fgcolor 			= src->fgcolor;
	this->foreground 		= src->foreground;
	this->background		= src->background;
	this->foreground_changed= src->foreground_changed;
	
	return this;
} 

inline void TextBlock_stringCutAtIndex(TextBlock *this, size_t index) {
	String_cutAtIndex(&this->string, index);
}

inline TextBlock* TextBlock_stringAppendText(TextBlock *this, const char *text) {
	String_appendText(&this->string, text);
	return this;
}

inline TextBlock* TextBlock_stringAppend(TextBlock *this, const String *string) {
	String_append(&this->string, string);
	return this;
}

int TextBlock_stringPrintf(TextBlock *this, size_t _offset, const char *const format, ...) {
	va_list ap;
	int		ret_val;
	
	va_start(ap, format);
	ret_val = String_vprintf(&this->string, _offset, format, ap);
	va_end(ap);
	return ret_val;
}

inline int TextBlock_stringVprintf(TextBlock *this, size_t _offset, const char *const format, va_list ap) {
	return String_vprintf(&this->string, _offset, format, ap);
}

inline void TextBlock_stringClear(TextBlock *this) {
	String_clear(&this->string);
}

inline void TextBlock_stringWipe(TextBlock *this) {
	String_wipe(&this->string);
}

inline const String* TextBlock_getString(const TextBlock *this) {
	return &this->string;
}

inline const char* TextBlock_getText(const TextBlock *this) {
	return String_cstr(&this->string);
}

inline void TextBlock_setText(TextBlock *this, const char *text) {
	String_setText(&this->string, text);
}

inline void TextBlock_setString(TextBlock *this, const String *string) {
	String_set(&this->string, string);
}

inline void TextBlock_setFont(TextBlock *this, TTF_Font *font) { 
	this->font = font;
}
	
inline void TextBlock_setForegroundColor(TextBlock *this, u32 rgb) { 
	this->foreground = rgb; this->foreground_changed = true; 
	/*WIDGET(this)->need_refresh = true;*/
}

inline void TextBlock_setBackgroundColor(TextBlock *this, u32 rgb) {
	this->background = rgb;
	/*WIDGET(this)->need_refresh = true;*/
}

inline void TextBlock_staticGetTextSize(TTF_Font *font, const char *text, int *w, int *h) { 
	TTF_SizeUTF8(font, text, w, h); 
}
