/*		[label]
 *      Label.c - this file is part of SDL_Widgets
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
#include "../srcCommon/TextBlock.h"
#include "Label.h"
#include "Widget.h"
static void Label_vprint(void *vthis);
static void Label_vdestroy(void *vthis);

static Type type = {
	.size      = sizeof(Label),
	.name      = "Label",
	.super_get = TextBlock_gt,
	.vprint    = Label_vprint,
	.vdestroy  = NULL
};
const Type *Label_t = &type;
const Type *Label_gt() { return Label_t; }

static LabelStyle style_0 = {
	.name           = "Default label style",
	.fgcolor        = 0xFF003FE1,
	.bgcolor        = 0xFFFFF9A7,
	.border_color   = 0xFFFF006C,
	.border_width   = 4,
	.border_radius  = 4
};
static LabelStyle style_1 = {
	.name           = "Second style",
	.fgcolor        = 0xFF9F00F0,
	.bgcolor        = 0xFFDBFFD0,
	.border_color   = 0xFF3967FF,
	.border_width   = 5,
	.border_radius  = 4
};
LabelStyle *LABEL_STYLE_0 = &style_0;
LabelStyle *LABEL_STYLE_1 = &style_1;

static void Label_vprint(void *vthis) {
	Label *this = (Label*)vthis;
	fprintf(stderr, "Label[this=%p]:\n\
\t.padding.top:            %hu\n\
\t.padding.left:           %hu\n\
\t.padding.bottom:         %hu\n\
\t.padding.right:          %hu\n\
\t.style:                  %p[%s]\n\
\t.fixed_width:            %s\n\
\t.first_refresh:          %s\n", this,
	this->padding.top, this->padding.left, this->padding.bottom, this->padding.right, 
	this->style, CSTR(this->style->name), Bool_toString(this->fixed_width), Bool_toString(this->first_refresh));
	TextBlock_print((TextBlock*)this);
}
inline void Label_print(Label *this) { Label_vprint(this); }

inline void Label_destroy(Label *this) {
	TextBlock_destroy((TextBlock*)this);
}
static void Label_vdestroy(void *vthis) { Label_destroy((Label*)vthis); }

void Label_vrefresh(void *vthis) {
	Label		*this 	 = (Label*)vthis;
	TextBlock	*this_tb = (TextBlock*)vthis;;
	Widget		*this_wt = WIDGET(vthis);
	SDL_Surface	*bg_surf;
	usint		b	  = (this->style) ? this->style->border_width : 0;
	usint		w 	  = this_wt->w;		 // previous widget size
	usint		h 	  = this_wt->h;		 // --//--
	usint		b2	  = b << 1; 		 // b2 = b * 2
	sint		rad   = (this->style) ? this->style->border_radius : 0;
	SDL_Rect	text_onto_bg = {				// TextBlock blitting rectangle
		.x = b + this->padding.left, 
		.y = b + this->padding.top,
		.w = 50,
		.h = 10
	};
	SDL_Rect	inner_rect = {					 // interior (no border) background rectangle
		.x = b,			 // x1
		.y = b,			 // y1
		//.w = w - b - 1,	 // x2
		//.h = h - b - 1	 // y2
	};
	Uint8 		a, r, g, b;
	bool		valid;
	
	if (! this->style) {
		_error("Label_vrefresh", this, "Error, private field this->style is NULL\n");
		Widget_fsetInvalid(this, true);
		return;
	}
	
	///Widget_fsetNeedRefresh(this, false); // done below by TextBlock_refresh()
	
	/* Refresh inner text_block */
	TextBlock_refresh(this_tb);
	valid = ! Widget_fisInvalid(this_tb);  // TextBlock refresh succeded ?
	
	/* Set properties of Label (pos.x & pos.y set else-where) */
	if ((! this->fixed_width) || (this->first_refresh))
	{	// update size of label if .fixed_width == false ...
		// or .fixed_width == true && .first_refresh == true
		if (valid) 
		{ 	// TextBlock is valid:
			// 1. Store only TextBlock size
			text_onto_bg.w = this_wt->w;
			text_onto_bg.h = this_wt->h;
			// 2. Update whole label size:
			// after else block
		}
		///else 
		///{	// TextBlock is invalid:
		///	// 1. TextBlock size is default (in declaration of text_onto_bg)
		///	// 2. Update whole label size + after else block
		///	
		///}
		w = text_onto_bg.w;
		h = text_onto_bg.h;
		
		w += (this->padding.left + this->padding.right  + b2);
		h += (this->padding.top  + this->padding.bottom + b2);
		
		// next refresh is not first
		this->first_refresh = false; 
	}
	else 
	{	// .fixed_width == true && .first_refresh == false
		// restore previous size of label 
		Widget_updateSize(this_wt, w, h);
		// size of interior background rectangle already set in declaration
	}
	
	/* Create base surface (for whole label) */
	bg_surf = Static_NewTransparentSurface(w, h);
	if (! bg_surf) {
		fprintf(stderr, "Label_vrefresh[this=%p] Failed to create base SDL_Surface: bg_surf %s\n", this, SDL_GetError());
		if (valid) Widget_fsetInvalid(this_wt, true);
		return;
	}
	
	/* Fill base surface with border color */
	if (b2) {
		if ((rad > 0) || (rad == -1)) {
			ARGB_CONV(this->style->border_color, a, r, g, b);
			
			if (roundedBoxRGBA(bg_surf, 0, 0, w-1, h-1, rad, r, g, b, a)) {
				_error("Label_vrefresh", this, "Failed to draw rounded rectangle [border] (roundedBoxRGBA) (%s)\n", 
					this, SDL_GetError());
			}
		}
		else {
			if (SDL_FillRect(bg_surf, NULL, this->style->border_color)) {
				_error("Label_vrefresh", this, "Failed to fill background surface [border] (FillRect) (%s)\n", 
					this, SDL_GetError());
			}
		}
	}
	
	/* Draw inner background rectangle inside bg_surf (leave unfilled border) */	
	if ((rad > 0) || (rad == -1)) {
		ARGB_CONV(this->style->bg_color, a, r, g, b);
		// Update (x2,y2) of interior background rectangle
		inner_rect.w = w - b - 1;
		inner_rect.h = h - b - 1;
		
		if (roundedBoxRGBA(bg_surf, inner_rect.x, inner_rect.y, inner_rect.w, inner_rect.h, rad, r, g, b, a)) {
			_error("Label_vrefresh", this, "Failed to draw rounded rectangle [inner] (roundedBoxRGBA) (%s)\n", 
				this, SDL_GetError());
		}
	}
	else {
		inner_rect.w = w - b2;
		inner_rect.h = h - b2;
		
		if (SDL_FillRect(bg_surf, &inner_rect, this->style->bg_color)) {
			_error("Label_vrefresh", this, "Failed to fill background surface [inner] (FillRect) (%s)\n", 
				this, SDL_GetError());
		}
	}
	
	/* Draw TextBlock surface onto bg_surf */
	if (valid) {	// if text_block is valid
		if (SDL_BlitSurface(this_wt->surf, NULL, bg_surf, &text_onto_bg)) {
			fprintf(stderr, "Label_vrefresh[this=%p] Failed to blit TextBlock onto Label surface %s\n", this, SDL_GetError());
		}
	}
	else
		Widget_fsetInvalid(this_wt, false);
	
	SDL_FreeSurface(this_wt->surf);
	this_wt->surf = bg_surf;
	Widget_updateSize(this_wt, w, h);
}

inline void Label_new2Text(Label *this, char *text) {
	TextBlock_new2Text((TextBlock*)this, text);
	
	this->style = LABEL_STYLE_0;
	this->fixed_width = true;
	this->first_refresh = true;
	((TextBlock*)this)->bgcolor = LABEL_STYLE_0->bgcolor;
	((TextBlock*)this)->fgcolor = LABEL_STYLE_0->fgcolor;
	
	(WIDGET(this))->vrefresh = Label_vrefresh;
}

// default constructor
inline Label* Label_newText(char *text) { Label *this = new(&type); if (this) Label_new2Text(this, text); return this; }

inline void Label_new2String(Label *this, String *string) {
	Widget_new2(WIDGET(this));
	
	if (! (this->string = String_copy(string))) {
		_error("Label_new2String", this, "Failed to create composed string object (@param string=[%p][%s])\n", 
			string, String_getText(string));
		Widget_fsetInvalid(this, true);
	}
	
	if (! (this->font = Font_getDefaultFont())) {
		_error("Label_new2String", this, "Failed to get default font (@param string=%s)\n", String_getText(string));
		Widget_fsetInvalid(this, true);
	}
	
	this->fgcolor = W_DEFAULT_FGCOLOR;
	this->bgcolor = W_DEFAULT_BGCOLOR;
	this->fgcolor_changed = true;
	(WIDGET(this))->vrefresh = Label_vrefresh;
}

// default constructor
Label* Label_newString(String *string) {
	/** Create this pointer **/
	Label *this = new(&type);
	if (! this) { 
		_error("Label_newString", this, "new() failed. Parameter: string[%p][%s]\n", 
			string, String_getText(string));
		return this; 
	}
	
	/** Do common initialization of direct super class and of current class object **/
	Label_new2String(this, string);
	
	/** Return newly created this pointer **/
	return this;
}

inline void Label_new2(Label *this) {
	Widget_new2(WIDGET(this));
	
	if (! (this->string = String_new())) {
		_error("Label_new2", this, "Failed to create composed string object.\n");
		Widget_fsetInvalid(this, true);
	}
	
	if (! (this->font = Font_getDefaultFont())) {
		_error("Label_new2", this, "Failed to get default font.\n");
		Widget_fsetInvalid(this, true);
	}
	
	this->fgcolor = W_DEFAULT_FGCOLOR;
	this->bgcolor = W_DEFAULT_BGCOLOR;
	this->fgcolor_changed = true;
	(WIDGET(this))->vrefresh = Label_vrefresh;
}

// default constructor
Label* Label_new() {
	/** Create this pointer **/
	Label *this = new(&type);
	if (! this) { 
		_error("Label_new", this, "new() failed\n");
		return this; 
	}
	
	/** Do common initialization of direct super class and of current class object **/
	Label_new2(this);
	
	/** Return newly created this pointer **/
	return this;
}

inline void Label_copy2(Label *this, Label *src) {
	Widget_copy2(WIDGET(this), (Widget*)src);
	
	if (! (this->string = String_copy(src->string))) {
		_error("Label_copy2", this, "Failed to copy String object from src[%p][%s]\n", 
			src, Label_getText(src));
		Widget_fsetInvalid(this, true);
	}
	
	if (! (this->font = Font_copy(src->font))) {
		_error("Label_copy2", this, "Failed to copy Font object from src[%p][%s]\n", 
			src, Label_getText(src));
		Widget_fsetInvalid(this, true);
	}
	this->_fgcolor   = src->_fgcolor;
	this->fgcolor    = src->fgcolor;
	this->bgcolor    = src->bgcolor;
	this->fgcolor_changed = src->fgcolor_changed;
	this->text_surf  = Static_CopySurface(src->text_surf);
}

// default constructor
Label* Label_copy(Label *src) {
	if (! src) {
		_error("Label_copy", NULL, "Passed NULL @param: src pointer"); return NULL; 
	}
	
	/** Create this pointer **/
	Label *this = new(&type);
	if (! this) { 
		_error("Label_copy", this, "new() failed. Parameter: src[%p][%s]\n", 
			src, Label_getText(src));
		return this; 
	}
	
	/** Do common initialization of direct super class and of current class object **/
	Label_copy2(this, src);
	
	/** Return newly created this pointer **/
	return this;
}

inline const char *Label_getText(Label *this) {
	return ((this) ? (String_getText(this->string)) : ("(null textblock)"));
}

inline size_t Label_getStringLen(Label *this) {
	return String_getLen(this->string);
}

inline String *Label_getString(Label *this) {
	return ((this) ? (this->string) : NULL);
}

inline void Label_setFont(Label *this, Font *font) {
	if (font) {
		Font *new_font = Font_copy(font);
		if (new_font) {
			if (this->font) delete(this->font);
			this->font = new_font;
			Widget_setRefresh(WIDGET(this));
		}
	}
}

inline void Label_setFontStyle(Label *this, usint font_style) {
	if ((this->font) && (this->font->font_style != font_style)) {
		Font_setStyle(this->font, font_style);;
		Widget_setRefresh(WIDGET(this));
	}
}

inline void Label_setText(Label *this, char *text) {
	if ((text) && (this->string)) {
		String_setText(this->string, text);
		Widget_setRefresh(WIDGET(this));
	}
}

inline void Label_setString(Label *this, String *string) {
	if ((string) && (this->string)) {
		String_setString(this->string, string);
		Widget_setRefresh(WIDGET(this));
	}
}

void Label_setBgColor(Label *this, uint bgcolor) {
	if (this->bgcolor == bgcolor) return;
	this->bgcolor = bgcolor; 
	
	if (((WIDGET(this))->surf) && (this->text_surf) && (! Widget_fisNeedRefresh(this)) && (! Widget_fisInvalid(this))) {
		SDL_Surface *surf = (WIDGET(this))->surf;
		if (SDL_FillRect(surf, NULL, bgcolor)) 
			_error("Label_setBgColor", this, "Failed to fill base widget surface[%p] with bgcolor\n", surf);
		if (SDL_BlitSurface(this->text_surf, NULL, surf, NULL))
			_error("Label_setBgColor", this, "Failed to blit text_surf[%p] onto base widget surface \n", 
				this->text_surf, surf);
		Widget_setParentRefresh(WIDGET(this));
	}
	else {
		Widget_setRefresh(WIDGET(this));
	}
}

inline void Label_setFgColor(Label *this, uint fgcolor) {
	if (this->fgcolor == fgcolor) return;
	this->fgcolor = fgcolor; 
	this->fgcolor_changed = true; 
	Widget_setRefresh(WIDGET(this)); 
}

int Label_printf(Label *this, size_t _offset, const char *format, ...) {
	if (! this->string) return 0;
	va_list ap;
	va_start(ap, format);
	int ret_val = String_vprintf(this->string, _offset, format, ap);
	va_end(ap);
	Widget_setRefresh(WIDGET(this));
	return ret_val;
}

inline int Label_vprintf(Label *this, size_t _offset, const char *format, va_list ap) {
	if (! this->string) return 0;
	int ret_val = String_vprintf(this->string, _offset, format, ap);
	Widget_setRefresh(WIDGET(this));
	return ret_val;
}

