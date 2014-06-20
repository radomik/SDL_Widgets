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
#include "../srcCommon/StdDefinitions.h"
#include "../srcCommon/Types.h"
#include "../srcCommon/Screen.h"
#include "../srcCommon/Static.h"
#include "../srcCommon/Object.h"
#include "../srcCommon/Memory.h"
#include "../srcCommon/Font.h"
#include "../srcCommon/String.h"
#include "TextBlock.h"
#include "Widget.h"
static void TextBlock_vprint(void *vthis);
static void TextBlock_vdestroy(void *vthis);

static Type type = {
	.size      = sizeof(TextBlock),
	.name      = "TextBlock",
	.super_get = Widget_gt,
	.vprint    = TextBlock_vprint,
	.vdestroy  = TextBlock_vdestroy
};
const Type *TextBlock_t = &type;
const Type *TextBlock_gt() { return TextBlock_t; }

static void TextBlock_vprint(void *vthis) {
	TextBlock *this = (TextBlock*)vthis;
	fprintf(stderr, "TextBlock[this=%p]:\n\
\t.string:                 %p[%s]\n\
\t.font:                   %p[%s]\n\
\t._fgcolor:               0x%02X%02X%02X\n\
\t.fgcolor:                0x%08X\n\
\t.bgcolor:                0x%08X\n\
\t.fgcolor_changed:        %s\n", 
this, this->string, String_getText(this->string),
this->font, Font_getFileName(this->font),
this->_fgcolor.r, this->_fgcolor.g, this->_fgcolor.b,
this->fgcolor, this->bgcolor, Bool_toString(this->fgcolor_changed));
	Widget_print(WIDGET(this));
}
inline void TextBlock_print(TextBlock *this) { TextBlock_vprint(this); }

inline void TextBlock_destroy(TextBlock *this) {
	//_error("TextBlock_destroy", this, ".font=%p, .font.font_file=%p[%s]\n", this->font, (this->font)?(this->font->font_file):NULL, Font_getFileName(this->font));
	if (this->text_surf) {
		SDL_FreeSurface(this->text_surf);
		this->text_surf = NULL;
	}
	if (this->string) {
		delete(this->string);
		this->string = NULL;
	}
	if (this->font) {
		delete(this->font);
		this->font = NULL;
	}
	
	Widget_destroy(WIDGET(this));
}
static void TextBlock_vdestroy(void *vthis) { TextBlock_destroy((TextBlock*)vthis); }

void TextBlock_vrefresh(void *vthis) {
	TextBlock *this = (TextBlock*)vthis;
	TTF_Font  *ttf_font = Font_getTTF(this->font);
	
	_error("TextBlock_vrefresh", this, "1Refreshing...%s\n", String_getText(this->string));
	
	if ((! this->string) || (! ttf_font)) {
		_error("TextBlock_vrefresh", this, "Error: this.string[%p][%s] or ttf_font[%p] is NULL (this->font is [%p][%s])\n", 
			this->string, String_getText(this->string), ttf_font, this->font, Font_getFileName(this->font));
		Widget_fsetInvalid(this, true);
		return;
	}
	_error("TextBlock_vrefresh", this, "2Refreshing...\n");
	Widget 			*this_wt 	= (Widget*) this;
	SDL_Surface		*bg_surf    = this_wt->surf; // background surface initialize with existing(?) surface
	int 			w = 0, h = 0;
	int 			et = TTF_SizeUTF8(ttf_font, String_getText(this->string), &w, &h);
	if ((et < 0) || (w <= 0) || (h <= 0) || (w > USINF) || (h > USINF)) {
		_error("TextBlock_vrefresh", this, "Error: TTF_SizeUTF8() failed \
(string=%s, font=%s, exit_code=%d, w=%d, h=%d, e=\"%s\")\n", 
		String_getText(this->string), Font_getFileName(this->font), et, w, h, TTF_GetError());
		Widget_fsetInvalid(this, true);
		return;
	}
	_error("TextBlock_vrefresh", this, "3Refreshing...\n");
	SDL_Rect	bgr = { 0, 0, w, h };		// SDL blitting rectangle
	
	/* Create surface if needed */
	if ((! bg_surf) || (bg_surf->w != w) || (bg_surf->h != h)) {
		SDL_FreeSurface(bg_surf); // free current surface (safe to pass NULL)
		bg_surf = Static_NewSurface((usint)w, (usint)h);
		if (! bg_surf) {
			_error("TextBlock_vrefresh", this, "Error: CreateRGBSurface (bg_surf) failed. (text=%s, e=%s)\n", 
				String_getText(this->string), SDL_GetError());
			Widget_fsetInvalid(this, true);
			return;
		}
	}
	_error("TextBlock_vrefresh", this, "4Refreshing...\n");
	if (SDL_FillRect(bg_surf, NULL, this->bgcolor)) {
		_error("TextBlock_vrefresh", this, "Warning: Failed to fill surface with bgcolor. (text=%s, e=%s)\n", 
				String_getText(this->string), SDL_GetError());
	}
	
	/* Convert foreground RGB color (uint) to SDL_Color if needed */
	if (this->fgcolor_changed) {
		Static_getColorFromRGB(&(this->_fgcolor), this->fgcolor);
		this->fgcolor_changed = false;
	}
	
	if (this->text_surf) SDL_FreeSurface(this->text_surf);
	
    if (! (this->text_surf = TTF_RenderUTF8_Solid(ttf_font, String_getText(this->string), this->_fgcolor))) {
		_error("TextBlock_vrefresh", this, "Warning: Failed to draw text with TTF_RenderUTF8_Solid. (text=%s, e=%s)\n", 
				String_getText(this->string), TTF_GetError());
	}
	
	if ((this->text_surf) && (SDL_BlitSurface(this->text_surf, NULL, bg_surf, NULL))) {
		_error("TextBlock_vrefresh", this, "Warning: Failed to blit text surface onto base surface. (text=%s, e=%s)\n", 
				String_getText(this->string), SDL_GetError());
	}
	
	this_wt->surf = bg_surf;
	Widget_updateSize(this_wt, w, h);
}

/// constructors
inline TextBlock* TextBlock_new() {
	TextBlock *this = new(&type); if (this) TextBlock_new2(this); return this;
}
TextBlock* TextBlock_newText(char *text) { 
	TextBlock *this = new(&type); if (this) TextBlock_new2Text(this, text); return this; 
}
inline TextBlock* TextBlock_newString(String *string) { 
	TextBlock *this = new(&type); if (this) TextBlock_new2String(this, string); return this; 
}
///


void TextBlock_new2Text(TextBlock *this, char *text) {
	Widget_new2(WIDGET(this));
	
	if (! (this->string = String_newText(text))) {
		_error("TextBlock_new2Text", this, "Failed to create composed string object (@param text=%s)\n", text);
		Widget_fsetInvalid(this, true);
	}
	
	if (! (this->font = Font_getDefaultFont())) {
		_error("TextBlock_new2Text", this, "Failed to get default font (@param text=%s)\n", text);
		Widget_fsetInvalid(this, true);
	}
	
	this->fgcolor = W_DEFAULT_FGCOLOR;
	this->bgcolor = W_DEFAULT_BGCOLOR;
	this->fgcolor_changed = true;
	(WIDGET(this))->vrefresh = TextBlock_vrefresh;
}

void TextBlock_new2String(TextBlock *this, String *string) {
	Widget_new2(WIDGET(this));
	
	if (! (this->string = String_copy(string))) {
		_error("TextBlock_new2String", this, "Failed to create composed string object (@param string=[%p][%s])\n", 
			string, String_getText(string));
		Widget_fsetInvalid(this, true);
	}
	
	if (! (this->font = Font_getDefaultFont())) {
		_error("TextBlock_new2String", this, "Failed to get default font (@param string=%s)\n", String_getText(string));
		Widget_fsetInvalid(this, true);
	}
	
	this->fgcolor = W_DEFAULT_FGCOLOR;
	this->bgcolor = W_DEFAULT_BGCOLOR;
	this->fgcolor_changed = true;
	(WIDGET(this))->vrefresh = TextBlock_vrefresh;
}

void TextBlock_new2(TextBlock *this) {
	Widget_new2(WIDGET(this));
	
	if (! (this->string = String_new())) {
		_error("TextBlock_new2", this, "Failed to create composed string object.\n");
		Widget_fsetInvalid(this, true);
	}
	
	if (! (this->font = Font_getDefaultFont())) {
		_error("TextBlock_new2", this, "Failed to get default font.\n");
		Widget_fsetInvalid(this, true);
	}
	
	this->fgcolor = W_DEFAULT_FGCOLOR;
	this->bgcolor = W_DEFAULT_BGCOLOR;
	this->fgcolor_changed = true;
	(WIDGET(this))->vrefresh = TextBlock_vrefresh;
}

void TextBlock_copy2(TextBlock *this, TextBlock *src) {
	Widget_copy2(WIDGET(this), (Widget*)src);
	
	if (! (this->string = String_copy(src->string))) {
		_error("TextBlock_copy2", this, "Failed to copy String object from src[%p][%s]\n", 
			src, TextBlock_getText(src));
		Widget_fsetInvalid(this, true);
	}
	
	if (! (this->font = Font_copy(src->font))) {
		_error("TextBlock_copy2", this, "Failed to copy Font object from src[%p][%s]\n", 
			src, TextBlock_getText(src));
		Widget_fsetInvalid(this, true);
	}
	this->_fgcolor   = src->_fgcolor;
	this->fgcolor    = src->fgcolor;
	this->bgcolor    = src->bgcolor;
	this->fgcolor_changed = src->fgcolor_changed;
	this->text_surf  = Static_CopySurface(src->text_surf);
}

inline TextBlock* TextBlock_copy(TextBlock *src) {
	if (! src) {
		_error("TextBlock_copy", NULL, "Passed NULL @param: src pointer"); return NULL; 
	}
	
	/** Create this pointer **/
	TextBlock *this = new(&type);
	if (! this) { 
		_error("TextBlock_copy", this, "new() failed. Parameter: src[%p][%s]\n", 
			src, TextBlock_getText(src));
		return this; 
	}
	
	/** Do common initialization of direct super class and of current class object **/
	TextBlock_copy2(this, src);
	
	/** Return newly created this pointer **/
	return this;
}

inline const char *TextBlock_getText(TextBlock *this) {
	return ((this) ? (String_getText(this->string)) : ("(null textblock)"));
}

inline size_t TextBlock_getStringLen(TextBlock *this) {
	return String_getLen(this->string);
}

inline String *TextBlock_getString(TextBlock *this) {
	return ((this) ? (this->string) : NULL);
}

inline void TextBlock_setFont(TextBlock *this, Font *font) {
	if (font) {
		Font *new_font = Font_copy(font);
		if (new_font) {
			if (this->font) delete(this->font);
			this->font = new_font;
			Widget_setRefresh(WIDGET(this));
		}
	}
}

inline void TextBlock_setFontStyle(TextBlock *this, usint font_style) {
	if ((this->font) && (this->font->font_style != font_style)) {
		Font_setStyle(this->font, font_style);;
		Widget_setRefresh(WIDGET(this));
	}
}

inline void TextBlock_setText(TextBlock *this, char *text) {
	if ((text) && (this->string)) {
		String_setText(this->string, text);
		Widget_setRefresh(WIDGET(this));
	}
}

inline void TextBlock_setString(TextBlock *this, String *string) {
	if ((string) && (this->string)) {
		String_setString(this->string, string);
		Widget_setRefresh(WIDGET(this));
	}
}

void TextBlock_setBgColor(TextBlock *this, uint bgcolor) {
	if (this->bgcolor == bgcolor) return;
	this->bgcolor = bgcolor; 
	
	if (((WIDGET(this))->surf) && (this->text_surf) && (! Widget_fisNeedRefresh(this)) && (! Widget_fisInvalid(this))) {
		SDL_Surface *surf = (WIDGET(this))->surf;
		if (SDL_FillRect(surf, NULL, bgcolor)) 
			_error("TextBlock_setBgColor", this, "Failed to fill base widget surface[%p] with bgcolor\n", surf);
		if (SDL_BlitSurface(this->text_surf, NULL, surf, NULL))
			_error("TextBlock_setBgColor", this, "Failed to blit text_surf[%p] onto base widget surface \n", 
				this->text_surf, surf);
		Widget_setParentRefresh(WIDGET(this));
	}
	else {
		Widget_setRefresh(WIDGET(this));
	}
}

inline void TextBlock_setFgColor(TextBlock *this, uint fgcolor) {
	if (this->fgcolor == fgcolor) return;
	this->fgcolor = fgcolor; 
	this->fgcolor_changed = true; 
	Widget_setRefresh(WIDGET(this)); 
}

int TextBlock_printf(TextBlock *this, size_t _offset, const char *format, ...) {
	if (! this->string) return 0;
	va_list ap;
	va_start(ap, format);
	int ret_val = String_vprintf(this->string, _offset, format, ap);
	va_end(ap);
	Widget_setRefresh(WIDGET(this));
	return ret_val;
}

inline int TextBlock_vprintf(TextBlock *this, size_t _offset, const char *format, va_list ap) {
	if (! this->string) return 0;
	int ret_val = String_vprintf(this->string, _offset, format, ap);
	Widget_setRefresh(WIDGET(this));
	return ret_val;
}
