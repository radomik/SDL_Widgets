/*		[button with image]
 *      ButtonImage.c - this file is part of SDL_Widgets
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
#include "Button.h"
#include "ButtonImage.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = ButtonImage_vdestroy,
	.toString = ButtonImage_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= ButtonImage_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(ButtonImage),
	.name	= "ButtonImage",
	.vtable	= vtable
};
const coClass *ButtonImage_class = &type;

void ButtonImage_vrefresh(void *vthis) {
	ButtonImage *this = BUTTON_IMAGE(vthis);
	
	int i = 0; for(; i < 4; i++) {
		//~ WIDGET(this->label[i])->pos.x = WIDGET(this)->pos.x;
		//~ WIDGET(this->label[i])->pos.y = WIDGET(this)->pos.y;
		Widget_refresh( WIDGET(&this->labelimage[i]) );
	}
	
	Widget *label_wt = WIDGET(&this->labelimage[BUT_NORMAL]);
	
	WIDGET(this)->surf	      = label_wt->surf;
	WIDGET(this)->pos.w		  = label_wt->pos.w;
	WIDGET(this)->pos.h		  = label_wt->pos.h;
	WIDGET(this)->visible	  = label_wt->visible;
	WIDGET(this)->need_reload = true;
	Widget_updateMaxXY(WIDGET(this));
}

void ButtonImage_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif

	/*! Delete self stuff !*/
	int i = 0; for(; i < 4; i++)	// delete composed labelimages (with their surfaces)
		delete(&(BUTTON_IMAGE(vthis)->labelimage[i]));
		
	WIDGET(vthis)->surf = NULL;	// prevents from deleting below, it was pointer to one of composed labelimage surface
								// (destroyed above)
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

static void ButtonImage_mousePressed(Widget *sender, Screen *screen) {
	if (! BUTTON_IMAGE(sender)->enabled) return;
	if (screen->event.button.button == 1) { 	// left mouse button
		sender->surf = WIDGET( &( BUTTON_IMAGE(sender)->labelimage[BUT_PRESSED] ) )->surf;
		Screen_setRefresh(screen, sender);
	}
}

static void ButtonImage_mouseReleased(Widget *sender, Screen *screen) {
	if (! BUTTON_IMAGE(sender)->enabled) return;
	
	const int ind = (Widget_contains(sender, screen->event.button.x, screen->event.button.y)) 
					? BUT_MOUSE_OVER : BUT_NORMAL;
	
	sender->surf = WIDGET( &( BUTTON_IMAGE(sender)->labelimage[ind] ) )->surf;
		
	Screen_setRefresh(screen, sender);
}

static void ButtonImage_mouseEnter(Widget *sender, Screen *screen) {
	screen->event_handled = true;
	if (! BUTTON_IMAGE(sender)->enabled) return;
	sender->surf = WIDGET( &( BUTTON_IMAGE(sender)->labelimage[BUT_MOUSE_OVER] ) )->surf;
	Screen_setRefresh(screen, sender);
}

static void ButtonImage_mouseExit(Widget *sender, Screen *screen) {
	screen->event_handled = true;
	if (! BUTTON_IMAGE(sender)->enabled) return;
	sender->surf = WIDGET( &( BUTTON_IMAGE(sender)->labelimage[BUT_NORMAL] ) )->surf;
	Screen_setRefresh(screen, sender);
}

static void ButtonImage_initDefault(ButtonImage *this) {
	WIDGET(this)->mevent_internal.mouse_enter = ButtonImage_mouseEnter;
	WIDGET(this)->mevent_internal.mouse_exit  = ButtonImage_mouseExit;
	WIDGET(this)->mevent_internal.press		  = ButtonImage_mousePressed;
	WIDGET(this)->mevent_internal.release	  = ButtonImage_mouseReleased;
	WIDGET(this)->mevent		= true;
}

// Constructor
ButtonImage* ButtonImage_new(ButtonImage *this, const char *img_path) {
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
	ButtonImage_initDefault(this);
	this->enabled				= true;
	int i=0; for (; i < 4; i++) LabelImage_new(&this->labelimage[i], img_path);
	return this;
}

ButtonImage* ButtonImage_copy(ButtonImage *this, ButtonImage *src, b8 copy_pos) {
	if ((! this) || (! src)) {
		fprintf(stderr, "ButtonImage_copy: Passed NULL: this(%p) or src(%p)\n", this, src);
		return NULL;
	}
	Widget_copy(WIDGET(this), WIDGET(src), copy_pos, false);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	ButtonImage_initDefault(this);
	
	int i = 0; for (; i < 4; i++) 
		LabelImage_copy(&this->labelimage[i], &src->labelimage[i], copy_pos);
		
	this->enabled = src->enabled;
	
	WIDGET(this)->surf = WIDGET(&this->labelimage[BUT_NORMAL])->surf;
	WIDGET(this)->visible = true;
	return this;
}

void ButtonImage_setEnabled(ButtonImage *this, b8 sel) {
	if (sel == this->enabled) return;
	const int ind = (sel) ? BUT_NORMAL : BUT_DISABLED;
	this->enabled = sel;
	WIDGET(this)->surf = WIDGET(&this->labelimage[ind])->surf;
	WIDGET(this)->need_reload = true;
}

void ButtonImage_setBorder(ButtonImage *this, u16 bord_width, u32 rgb) 
	{ int i = 0; for(; i < 4; i++) LabelImage_setBorder(&this->labelimage[i], bord_width, rgb); }

void ButtonImage_setFixedWidth(ButtonImage *this, b8 sel) 
	{ int i = 0; for(; i < 4; i++)  this->labelimage[i].fixed_width = sel; }
	
void ButtonImage_setImage(ButtonImage *this, const Image *image) {
	int i=0; for(;i<4;i++) LabelImage_setImage(&this->labelimage[i], image);
}

void ButtonImage_scale(ButtonImage *this, double xscale, double yscale, int smooth) {
	LabelImage *lbimg;
	int i=0; 
	u16 w = 0, h = 0, w1 = 0, h1 = 0;
	
	WIDGET(this)->pos.w = WIDGET(this)->pos.h = 0;
	for(;i<4;i++) {
		lbimg = &this->labelimage[i];
		LabelImage_scale(lbimg, xscale, yscale, smooth);
		if ((w = WIDGET(lbimg)->pos.w) > w1) w1 = w;
		if ((h = WIDGET(lbimg)->pos.h) > h1) h1 = h;
	}
	Widget_setSizeUpdatePos(WIDGET(this), w1, h1);
}

void ButtonImage_applyDefaultStyle(ButtonImage *this, 	u16 posx, u16 posy, 
														u16 padx, u16 pady,
														b8  fixed_width) {
	WIDGET(this)->pos.x = posx;
	WIDGET(this)->pos.y = posy;
	u16 dpadx = padx+2, dpady = pady+2;
	
	// normal state
	LabelImage *labimg = &this->labelimage[BUT_NORMAL]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, dpadx, dpady);
	LabelImage_setBgColor(labimg, 0xDBFFD0);
	LabelImage_setBorder(labimg, 5, 0x3967FF);
	
	// mouse over
	labimg = &this->labelimage[BUT_MOUSE_OVER]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, dpadx, dpady);
	LabelImage_setBgColor(labimg, 0xB5FF9E);
	LabelImage_setBorder(labimg, 5, 0x3967FF);
	
	// pressed
	labimg = &this->labelimage[BUT_PRESSED]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xFFDE59);
	LabelImage_setBorder(labimg, 7, 0xFF0000);
	
	// disabled
	labimg = &this->labelimage[BUT_DISABLED]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, dpadx, dpady);
	LabelImage_setBgColor(labimg, 0xDFDFDF);
	LabelImage_setBorder(labimg, 5, 0x717171);
	
	Widget_refresh(WIDGET(this));				// apply changes
	ButtonImage_setFixedWidth(this, fixed_width);
}

void ButtonImage_applyDefaultStyle3(ButtonImage *this, 	u16 posx, u16 posy, 
														u16 padx, u16 pady,
														b8 fixed_width) {
	WIDGET(this)->pos.x = posx;
	WIDGET(this)->pos.y = posy;
	
	// normal state
	LabelImage *labimg = &this->labelimage[BUT_NORMAL]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xDBFFD0);
	LabelImage_setBorder(labimg, 2, 0x3967FF);
	
	// mouse over
	labimg = &this->labelimage[BUT_MOUSE_OVER]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xB5FF9E);
	LabelImage_setBorder(labimg, 2, 0x3967FF);
	
	// pressed
	labimg = &this->labelimage[BUT_PRESSED]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xFFDE59);
	LabelImage_setBorder(labimg, 2, 0xFF0000);
	
	// disabled
	labimg = &this->labelimage[BUT_DISABLED]; // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xDFDFDF);
	LabelImage_setBorder(labimg, 2, 0x717171);
	
	Widget_refresh(WIDGET(this));				// apply changes
	ButtonImage_setFixedWidth(this, fixed_width);
}

const char *ButtonImage_vtoString(const void *vthis) {
	static char str_id[128];
	snprintf(str_id, sizeof(str_id), "%s", toString( &( BUTTON_IMAGE(vthis)->labelimage[BUT_NORMAL] ) ) );
	return str_id;
}
