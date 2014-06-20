/*		[label with text (TextBlock with added border and paddings)]
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

static const void* vtable[] = {
	Label_vdestroy,
	Widget_vmevent,
	Widget_vdraw,
	Label_vrefresh,
	Widget_vdrag,
	Widget_vsetVisible
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
	Widget		*tbw    = WIDGET(tb); //! @note TextBlock have to inherit from Widget
	SDL_Surface	*bg_surf;
	u16		tw, th;
	b8		child_visible;
	
	if (! tb->text) { 
		fprintf(stderr, "Label_refresh: Inner TextBlock .text is NULL\n");
		Widget_setVisible(widget, false);
		return; 
	}
	
	/* (Re)Create inner text_block */
	//fprintf(stderr, "Label_refresh:Label> Refreshing inner TextBlock\n");
	Widget_refresh(tbw);
	child_visible = tbw->visible;
	//fprintf(stderr, "Label_refresh:Label> Refreshed, visible=%d\n", label->text_block.widget.visible);
	
	/* Get child width and height (handle error if no child created) */
	if (! child_visible) { // not critical error
		fprintf(stderr, "Label_refresh: Inner TextBlock is still not visible after refresh\n");
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
	if (SDL_FillRect(bg_surf, NULL, label->border)) {
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

Label* Label_new(Label *this, const char *text) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: text=%s\n", __FUNCTION__, text);
		return NULL;
	}
	
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	TextBlock_new(&this->text_block, text);
	
	this->fixed_width		= false;// this ought to be set to false before first run of refresh
	this->padx				= 5;
	this->pady				= 5;
	this->border_width 		= 1;
	this->border			= W_DEFAULT_BORDER_COLOR;
	return this;
}

void Label_setBorder(Label *this, u16 bord_width, u32 rgb) {
	this->border_width = bord_width;
	this->border       = rgb;
}

void Label_setPadding(Label *this, u16 padx, u16 pady) {
	this->padx = padx;
	this->pady = pady;
}

//void Label_setAlignment(Label *this, Alignment halign, Alignment valign) {
//	this->halign = halign;
//	this->valign = valign;
//}

inline void Label_setFont(Label *this, TTF_Font *font) { 
	TextBlock_setFont(&this->text_block, font); 
}
	
inline void Label_setFontColor(Label *this, u32 rgb) { 
	TextBlock_setForegroundColor(&this->text_block, rgb); 
	/*WIDGET(this)->need_refresh = true;*/ 
}
	
inline void Label_setBgColor(Label *this, u32 rgb) { 
	TextBlock_setBackgroundColor(&this->text_block, rgb); 
	/*WIDGET(this)->need_refresh = true;*/ 
}

inline void Label_setText(Label *this, const char *text) { 
	TextBlock_setText(&this->text_block, text); 
}
	
void Label_applyDefaultStyle(	Label *this, 		u16 posx, u16 posy, 
								TTF_Font *font2, 	u16 padx, u16 pady,
								b8 fixed_width) {
	WIDGET(this)->pos.x = posx;
	WIDGET(this)->pos.y = posy;
	
	// normal state
	Label_setPadding(this, padx, pady);
	Label_setFont(this, font2);
	Label_setFontColor(this, 0x003FE1);
	Label_setBgColor(this, 0xFFF9A7);
	Label_setBorder(this, 4, 0xFF006C);
	
	Widget_refresh(WIDGET(this));
	this->fixed_width = fixed_width;
}

const char *Label_toString(const Label *this) {
	static char str_id[128];
	if (! this) return "label=NULL";
	snprintf(str_id, sizeof(str_id), "%s", TextBlock_toString(&this->text_block));
	return str_id;
}
