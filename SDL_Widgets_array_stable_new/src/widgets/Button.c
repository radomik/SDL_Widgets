/*		[button with text]
 *      Button.c - this file is part of SDL_Widgets
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

static const void* vtable[] = {
	Button_vdestroy,
	Widget_vmevent,
	Widget_vdraw,
	Button_vrefresh,
	Widget_vdrag,
	Widget_vsetVisible
};

static coClass type = {
	.size	= sizeof(Button),
	.name	= "Button",
	.vtable	= vtable
};
const coClass *Button_class = &type;

static void Button_mousePressed(Widget *sender, Screen *screen) { // button pressed (change style until Releases)
	if (! BUTTON(sender)->enabled) return;
	if (screen->event.button.button == 1) { 	// left mouse button
		sender->surf = WIDGET( &(BUTTON(sender)->label[BUT_PRESSED]) )->surf;
		sender->need_reload = true;
		Widget_vdraw(sender, screen, true);
	}
}

static void Button_mouseReleased(Widget *sender, Screen *screen) { // button releaes - turn back to normal style
	if (! BUTTON(sender)->enabled) return;
	if (Widget_contains(sender, screen->event.button.x, screen->event.button.y))
		/* mouse still over button (switch to highlighted Surface) */
		sender->surf = WIDGET( &(BUTTON(sender)->label[BUT_MOUSE_OVER]) )->surf;
	else // mouse released outside button
		sender->surf = WIDGET( &(BUTTON(sender)->label[BUT_NORMAL]) )->surf;
		
	sender->need_reload = true;
	Widget_vdraw(sender, screen, true);
}

static void Button_mouseEnter(Widget *sender, Screen *screen) { 	// mouse enters button (highlight on)
	screen->event_handled = true;
	if (! BUTTON(sender)->enabled) return;
	sender->surf = WIDGET( &(BUTTON(sender)->label[BUT_MOUSE_OVER]) )->surf;
	sender->need_reload = true;
	Widget_vdraw(sender, screen, true);
}

static void Button_mouseExit(Widget *sender, Screen *screen) { 	// mouse leaves button (highlight off)
	screen->event_handled = true;
	if (! BUTTON(sender)->enabled) return;
	sender->surf = WIDGET( &(BUTTON(sender)->label[BUT_NORMAL]) )->surf;
	sender->need_reload = true;
	Widget_vdraw(sender, screen, true);
}

/// Button implementation of Widget_refresh virtual method
void Button_vrefresh(void *vthis) {
	Button *this = BUTTON(vthis);
	
	int i = 0; for(; i < 4; i++) {
		//~ WIDGET(this->label[i])->pos.x = WIDGET(this)->pos.x;
		//~ WIDGET(this->label[i])->pos.y = WIDGET(this)->pos.y;
		Widget_refresh( WIDGET(&this->label[i]) );
	}
	
	Widget *label_wt = WIDGET(&this->label[BUT_NORMAL]);
	
	WIDGET(this)->surf	      = label_wt->surf;
	WIDGET(this)->pos.w		  = label_wt->pos.w;
	WIDGET(this)->pos.h		  = label_wt->pos.h;
	WIDGET(this)->visible	  = label_wt->visible;
	WIDGET(this)->need_reload = true;
	WIDGET(this)->maxx		  = WIDGET(this)->pos.x + label_wt->pos.w;
	WIDGET(this)->maxy		  = WIDGET(this)->pos.y + label_wt->pos.h;
}

void Button_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	int i = 0; for(; i < 4; i++)	// delete composed labels (with their surfaces)
		delete(&(BUTTON(vthis)->label[i]));
		
	WIDGET(vthis)->surf = NULL;	// prevents from deleting below, it was pointer to one of composed labels surface
								// (destroyed above)
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

// Constructor
Button* Button_new(Button *this, const char	*text) {
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
	WIDGET(this)->mevent_internal.mouse_enter = Button_mouseEnter;
	WIDGET(this)->mevent_internal.mouse_exit  = Button_mouseExit;
	WIDGET(this)->mevent_internal.press		  = Button_mousePressed;
	WIDGET(this)->mevent_internal.release	  = Button_mouseReleased;
	
	WIDGET(this)->mevent	= true;		// class Button itself changes widget look on mouse events
	this->enabled			= true;
	
	int i=0; for (; i < 4; i++)
		Label_new(&this->label[i], text);
	return this;
}

void Button_setBgColor(Button *this, u32 rgb) 
	{ int i = 0; for(; i < 4; i++) Label_setBgColor(&this->label[i], rgb); }

void Button_setBorder(Button *this, u16 bord_width, u32 rgb) 
	{ int i = 0; for(; i < 4; i++) Label_setBorder(&this->label[i], bord_width, rgb); }

void Button_setEnabled(Button *this, b8 sel) {
	if (sel == this->enabled) return;
	const int ind = sel ? BUT_NORMAL : BUT_DISABLED;
	this->enabled = sel;
	WIDGET(this)->surf = WIDGET( &this->label[ind] )->surf;
	WIDGET(this)->need_reload = true;
}

void Button_setFixedWidth(Button *this, b8 sel) { 
	int i = 0; for(; i < 4; i++) this->label[i].fixed_width = sel; 
}

void Button_setText(Button *this, const char *text) {
	int i=0; for(;i<4;i++) Label_setText(&this->label[i], text);
}

void Button_applyDefaultStyle(	Button *this,  u16 posx, u16 posy, 
								TTF_Font *font2, u16 padx, u16 pady,
								b8 fixed_width) {
	WIDGET(this)->pos.x = posx;
	WIDGET(this)->pos.y = posy;
	
	// normal state
	Label *lab = &this->label[BUT_NORMAL];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x9F00F0);
	Label_setBgColor(lab, 0xDBFFD0);
	Label_setBorder(lab, 5, 0x3967FF);
	
	// mouse over
	lab = &this->label[BUT_MOUSE_OVER];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x9F00F0);
	Label_setBgColor(lab, 0xB5FF9E);
	Label_setBorder(lab, 5, 0x3967FF);
	
	// pressed
	lab = &this->label[BUT_PRESSED];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x9F00F0);
	Label_setBgColor(lab, 0xFFDE59);
	Label_setBorder(lab, 5, 0x00C9D1);
	
	// disabled
	lab = &this->label[BUT_DISABLED];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xABABAB);
	Label_setBgColor(lab, 0xDFDFDF);
	Label_setBorder(lab, 5, 0x717171);
	
	Widget_refresh(WIDGET(this));				// apply changes
	Button_setFixedWidth(this, fixed_width);
}

void Button_applyDefaultStyle2(	Button *this,  u16 posx, u16 posy, 
								TTF_Font *font2, u16 padx, u16 pady,
								b8 fixed_width) {
	WIDGET(this)->pos.x = posx;
	WIDGET(this)->pos.y = posy;
	
	// normal state
	Label *lab = &this->label[BUT_NORMAL];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x000000);
	Label_setBgColor(lab, 0xEDECEB);
	Label_setBorder(lab, 1, 0xEDECEB);
	
	// mouse over
	lab = &this->label[BUT_MOUSE_OVER];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xFFFFFF);
	Label_setBgColor(lab, 0x7EA4D4);
	Label_setBorder(lab, 1, 0x7EA4D4);
	
	// pressed
	lab = &this->label[BUT_PRESSED];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xFFFFFF);
	Label_setBgColor(lab, 0xF25560);
	Label_setBorder(lab, 1, 0xEDECEB);
	
	// disabled
	lab = &this->label[BUT_DISABLED];
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xAEAEAE);
	Label_setBgColor(lab, 0xFFFFFF);
	Label_setBorder(lab, 1, 0xEDECEB);
	
	Widget_refresh(WIDGET(this));				// apply changes
	Button_setFixedWidth(this, fixed_width);
}

const char *Button_toString(const Button *this) {
	static char str_id[128];
	if (! this) return "button=NULL";
	snprintf(str_id, sizeof(str_id), "%s", Label_toString(&this->label[BUT_NORMAL]));
	return str_id;
}
