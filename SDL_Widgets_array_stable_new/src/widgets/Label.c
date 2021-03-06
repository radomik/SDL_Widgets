/*		[label with text (Label with added border and paddings)]
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

#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "Label.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = Label_vdestroy,
	.toString = Label_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= Label_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(Label),
	.name	= "Label",
	.vtable	= vtable
};
const coClass *Label_class = &type;

void Label_vrefresh(void *vthis) {
	Label 		*label 	= LABEL(vthis);
	TextBlock	*tb     = &label->text_block;
	Widget		*widget = WIDGET(label);
	Widget		*tbw    = WIDGET(tb); //! @note Label have to inherit from Widget
	SDL_Surface	*bg_surf;
	u16		tw, th;
	b8		child_visible;
	
	/* (Re)Create inner text_block */
	//fprintf(stderr, "Label_refresh:Label> Refreshing inner Label\n");
	Widget_refresh(tbw);
	child_visible = tbw->visible;
	//fprintf(stderr, "Label_refresh:Label> Refreshed, visible=%d\n", label->text_block.widget.visible);
	
	/* Get child width and height (handle error if no child created) */
	if (! child_visible) { // not critical error
		fprintf(stderr, "Label_refresh: Inner Label is still not visible after refresh\n");
		tw = th = 10;
	}
	else { // get text_block width and height
		tw = tbw->pos.w;
		th = tbw->pos.h;
	}
	
	/* Set properties of Label (pos.x & pos.y set elsewhere) */
	if (! label->fixed_width) {
		widget->pos.w = tw + ((label->padx+label->border_width)<<1);	// width
		widget->pos.h = th + ((label->pady+label->border_width)<<1); 	// height
	}
	
	/* Set position of text_block */
	tbw->pos.x = widget->pos.x + ((widget->pos.w - tw)>>1);
	tbw->pos.y = widget->pos.y + ((widget->pos.h - th)>>1);
	
	/* Create base surface (for whole label) */
	bg_surf = Static_newSurface(widget->pos.w, widget->pos.h);
	if (! bg_surf) {
		fprintf(stderr, "Label_refresh: Failed to create base SDL_Surface bg_surf\n");
		Widget_setVisible(widget, false);
		return;
	} 
	
	/* Fill base surface with border color */
	if (SDL_FillRect(bg_surf, NULL, label->border_color)) {
		fprintf(stderr, "Label_refresh: Failed to fill background surface with border color (FillRect)\n");
		Widget_setVisible(widget, false);
		return;
	}
	
	/* Draw inner background inside bg_surf (leave unfilled border) */
	tw = label->border_width;
	th = label->border_width << 1;
	SDL_Rect bgr = {
		tw,					// x
		tw,					// y
		widget->pos.w - th,	// w
		widget->pos.h - th	// h
	};
	if (SDL_FillRect(bg_surf, &bgr, tb->background)) {
		fprintf(stderr, "Label_refresh: Failed to fill background surface with background color (FillRect)\n");
		Widget_setVisible(widget, false);
		return;
	}
	
	if (child_visible) {	// if text_block is valid
		/* BlitSurface text_block onto bg_surf */
		bgr.x = tbw->pos.x - widget->pos.x;
		bgr.w = tbw->pos.w;
		bgr.y = tbw->pos.y - widget->pos.y;
		bgr.h = tbw->pos.h;
		if (SDL_BlitSurface(tbw->surf, NULL, bg_surf, &bgr)) {
			fprintf(stderr, "Label_refresh: SDL_BlitSurface(label->text_block.widget.surf, NULL, bg_surf, &bgr) failed: %s\n", SDL_GetError());
			Widget_setVisible(widget, false);
			return;
		}
	}
	
	SDL_FreeSurface(widget->surf);
	widget->surf = bg_surf;
	Widget_updateMaxXY(widget);
	Widget_setVisible(widget, true);
}

void Label_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif

	/*! Delete self stuff !*/
	delete(&(LABEL(vthis)->text_block));
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

const char *Label_vtoString(const void *vthis) {
	return Label_getText(LABEL(vthis));
}

static void Label_commonInit(Label *this) {
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	this->fixed_width		= false;// this ought to be set to false before first run of refresh
	this->padx				= 5;
	this->pady				= 5;
	this->border_width 		= 1;
	this->border_color		= W_DEFAULT_BORDER_COLOR;
}

Label* Label_newText(Label *this, const char *text) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: text=%s\n", __FUNCTION__, text);
		return NULL;
	}
	Label_commonInit(this);
	TextBlock_newText(&this->text_block, text);
	return this;
}

Label* Label_newString(Label *this, const String *string) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: string=%s\n", __FUNCTION__, String_cstr(string));
		return NULL;
	}
	Label_commonInit(this);
	TextBlock_newString(&this->text_block, string);
	return this;
}

Label* Label_newLen(Label *this, size_t length) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: length=%lu\n", __FUNCTION__, length);
		return NULL;
	}
	Label_commonInit(this);
	TextBlock_newLen(&this->text_block, length);
	return this;
}

Label* Label_copy(Label *this, const Label *src, b8 copy_pos) {
	if ((! this) || (! src)) {
		fprintf(stderr, "Label_copy: Passed NULL: this(%p) or src(%p)\n", this, src);
		return NULL;
	}
	Widget_copy(WIDGET(this), WIDGET(src), copy_pos, true);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	TextBlock_copy(&this->text_block, &src->text_block, copy_pos);
	
	this->background		= src->background;
	this->border_color		= src->border_color;
	this->border_width		= src->border_width;
	this->padx				= src->padx;
	this->pady				= src->pady;
	this->fixed_width		= src->fixed_width;
	
	return this;
} 

void Label_setBorder(Label *this, u16 border_width, u32 border_color) {
	this->border_width = border_width;
	this->border_color = border_color;
}

void Label_setPadding(Label *this, u16 padx, u16 pady) {
	this->padx = padx;
	this->pady = pady;
}

inline void Label_stringCutAtIndex(Label *this, size_t index) {
	TextBlock_stringCutAtIndex(&this->text_block, index);
}

inline Label* Label_stringAppendText(Label *this, const char *text) {
	TextBlock_stringAppendText(&this->text_block, text);
	return this;
}

inline Label* Label_stringAppend(Label *this, const String *string) {
	TextBlock_stringAppend(&this->text_block, string);
	return this;
}

int Label_stringPrintf(Label *this, size_t _offset, const char *const format, ...) {
	va_list ap;
	int		ret_val;
	
	va_start(ap, format);
	ret_val = TextBlock_stringVprintf(&this->text_block, _offset, format, ap);
	va_end(ap);
	return ret_val;
}

inline int Label_stringVprintf(Label *this, size_t _offset, const char *const format, va_list ap) {
	return TextBlock_stringVprintf(&this->text_block, _offset, format, ap);
}

inline void Label_stringClear(Label *this) {
	return TextBlock_stringClear(&this->text_block);
}

inline void Label_stringWipe(Label *this) {
	return TextBlock_stringWipe(&this->text_block);
}

/// get string for constant operations on string
inline const String* Label_getString(const Label *this) {
	return TextBlock_getString(&this->text_block);
}

inline const char* Label_getText(const Label *this) {
	return TextBlock_getText(&this->text_block);
}

inline void Label_setText(Label *this, const char *text) {
	TextBlock_setText(&this->text_block, text);
}

inline void Label_setString(Label *this, const String *string) {
	TextBlock_setString(&this->text_block, string);
}

inline void Label_setFont(Label *this, TTF_Font *font) {
	TextBlock_setFont(&this->text_block, font);
}
	
inline void Label_setForegroundColor(Label *this, u32 rgb) {
	TextBlock_setForegroundColor(&this->text_block, rgb);
}

inline void Label_setBackgroundColor(Label *this, u32 rgb) {
	TextBlock_setBackgroundColor(&this->text_block, rgb);
}
	
void Label_applyDefaultStyle(	Label *this, 		u16 posx, u16 posy, 
								TTF_Font *font2, 	u16 padx, u16 pady,
								b8 fixed_width) {
	WIDGET(this)->pos.x = posx;
	WIDGET(this)->pos.y = posy;
	
	// normal state
	Label_setPadding(this, padx, pady);
	Label_setFont(this, font2);
	Label_setForegroundColor(this, 0x003FE1);
	Label_setBackgroundColor(this, 0xFFF9A7);
	Label_setBorder(this, 4, 0xFF006C);
	
	Widget_refresh(WIDGET(this));
	this->fixed_width = fixed_width;
}
