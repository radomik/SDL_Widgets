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

#include "StdDefinitions.h"
#include "Screen.h"
#include "Object.h"
#include "Static.h"
#include "Memory.h"
#include "Widget.h"
#include "TextBlock.h"
#include "Label.h"

static const char *type = "Label";

void Label_refresh(Label *label) {
	SDL_Surface	*bg_surf;
	TextBlock	*tb     = &(label->text_block);
	Widget		*widget = (Widget*)label;
	Widget		*tbw    = (Widget*)tb; //! @NOTE: TextBlock have to inherit from Widget
	usint		tw, th;
	bool		child_visible;
	
	if (! tb->text) { widget->visible = false; return; }
	
	/* (Re)Create inner text_block */
	//fprintf(stderr, "Label_refresh:Label> Refreshing inner TextBlock\n");
	TextBlock_refresh(tb);
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
	bg_surf = Static_NewSurface(widget->pos.w, widget->pos.h);
	if (! bg_surf) {
		fprintf(stderr, "Label_refresh:Label> Failed to create base SDL_Surface bg_surf\n");
		widget->visible = false;
		return;
	} 
	
	/* Fill base surface with border color */
	if (SDL_FillRect(bg_surf, NULL, label->border)) {
		fprintf(stderr, "Label_refresh:Label> Failed to fill background surface with border color (FillRect)\n");
		widget->visible = false;
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
		fprintf(stderr, "Label_refresh:Label> Failed to fill background surface with background color (FillRect)\n");
		widget->visible = false;
		return;
	}
	
	if (child_visible) {	// if text_block is valid
		/* BlitSurface text_block onto bg_surf */
		bgr.x = tbw->pos.x - widget->pos.x;
		bgr.w = tbw->pos.w;
		bgr.y = tbw->pos.y - widget->pos.y;
		bgr.h = tbw->pos.h;
		if (SDL_BlitSurface(tbw->surf, NULL, bg_surf, &bgr)) {
			fprintf(stderr, "Label_refresh:Label> SDL_BlitSurface(label->text_block.widget.surf, NULL, bg_surf, &bgr) failed: %s\n", SDL_GetError());
			widget->visible = false;
			return;
		}
	}
	
	SDL_FreeSurface(widget->surf);
	widget->surf = bg_surf;
	widget->maxx = widget->pos.x + widget->pos.w;
	widget->maxy = widget->pos.y + widget->pos.h;
	widget->visible = true;
}

/** Current destructor (virtual) use delete() handler to call it */
static void Label_vdestroy(void *vthis) { 
	Label *this = (Label*) vthis;
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "Label_vdestroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	delete(&(this->text_block));
	
	/*! Delete parent object !*/
	Widget_destroy((Widget*)this);
}


Label* Label_new(	Label 		*this,
					const char 	*text) {
	if (! this) {
		fprintf(stderr, "Label_new: Passed NULL this pointer. text=%s\n", text);
		return NULL;
	}
	Widget_init_type((Widget*)this, LABEL_TYPE, Label_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Label_new", Object_getType((Object*)this), this);
	
	TextBlock_new(&(this->text_block), text);
	
	this->fixed_width		= false;// this ought to be set to false before first run of refresh
	this->padx				= 5;
	this->pady				= 5;
	this->border_width 		= 1;
	this->border			= W_DEFAULT_BORDER_COLOR;
	return this;
}

inline void Label_setBorder(Label *label, usint bord_width, uint rgb) {
	label->border_width = bord_width;
	label->border       = rgb;
}

inline void Label_setPadding(Label *label, usint padx, usint pady) {
	label->padx = padx;
	label->pady = pady;
}

//void Label_setAlignment(Label *label, Alignment halign, Alignment valign) {
//	label->halign = halign;
//	label->valign = valign;
//}

inline void Label_setFont(Label *label, TTF_Font *font) 
	{ TextBlock_setFont(&(label->text_block), font); }
	
inline void Label_setFontColor(Label *label, uint rgb) 
	{ TextBlock_setForegroundColor(&(label->text_block), rgb); /*label->widget.need_refresh = true;*/ }
	
inline void Label_setBgColor(Label *label, uint rgb) 
	{ TextBlock_setBackgroundColor(&(label->text_block), rgb); /*label->widget.need_refresh = true;*/ }

inline void Label_setText(Label *label, const char *text) 
	{ TextBlock_setText(&(label->text_block), text); }
	
void Label_applyDefaultStyle(	Label *label, 		usint posx, usint posy, 
								TTF_Font *font2, 	usint padx, usint pady,
								bool fixed_width) {
	((Widget*)label)->pos.x = posx;
	((Widget*)label)->pos.y = posy;
	
	// normal state
	Label_setPadding(label, padx, pady);
	Label_setFont(label, font2);
	Label_setFontColor(label, 0x003FE1);
	Label_setBgColor(label, 0xFFF9A7);
	Label_setBorder(label, 4, 0xFF006C);
	
	Label_refresh(label);
	label->fixed_width = fixed_width;
}

static char str_id[128];
char *Label_toString(Label *label) {
	if (! label) return "label=NULL";
	snprintf(str_id, 128, "%s", TextBlock_toString(&(label->text_block)));
	return str_id;
}
