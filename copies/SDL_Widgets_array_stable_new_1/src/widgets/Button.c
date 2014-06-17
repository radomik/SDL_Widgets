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
#include "Object.h"
#include "Memory.h"
#include "Button.h"
#include "Label.h"
#include "Widget.h"

static const char *type = "Button";

void Button_refresh(Button *button) {
	Widget *widget = (Widget*)button;
	int i = 0; for(; i < 4; i++) {
		button->label[i].widget.pos.x = widget->pos.x;
		button->label[i].widget.pos.y = widget->pos.y;
		Label_refresh(&(button->label[i]));
	}
	widget->surf		= button->label[BUT_NORMAL].widget.surf;
	widget->visible		= true;
	widget->need_reload = true;
	widget->maxx		= button->widget.pos.x + button->label[BUT_NORMAL].widget.pos.w;
	widget->maxy		= button->widget.pos.y + button->label[BUT_NORMAL].widget.pos.h;
	widget->pos.w		= button->label[BUT_NORMAL].widget.pos.w;
	widget->pos.h		= button->label[BUT_NORMAL].widget.pos.h;
}

/** Current destructor (virtual) use delete() handler to call it */
static void Button_vdestroy(void *vthis) {
	Button *this = (Button*) vthis;
	
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "Button_vdestroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	int i = 0; for(; i < 4; i++)	// delete composed labels (with their surfaces)
		delete(&(this->label[i]));
		
	((Widget*)this)->surf = NULL;	// prevents from deleting below, it was pointer to one of composed labels surface
									// (destroyed above)
	/*! Delete parent object !*/
	Widget_destroy((Widget*)this);
}

// Constructor
Button* Button_new(	Button 		*this,
					const char	*text) {
	if (! this) {
		fprintf(stderr, "Button_new: Passed NULL this pointer. text=%s\n", text);
		return NULL;
	}
	Widget_init_type((Widget*)this, BUTTON_TYPE, Button_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Button_new", Object_getType((Object*)this), this);
	
	((Widget*)this)->mevent	= true;		// class Button itself changes widget look on mouse events
	this->enabled			= true;
	
	int i=0; for (; i < 4; i++)
		Label_new(&(this->label[i]), text);
	return this;
}

inline void Button_setBgColor(Button *button, uint rgb) 
	{ int i = 0; for(; i < 4; i++) Label_setBgColor(&(button->label[i]), rgb); }

inline void Button_setBorder(Button *button, usint bord_width, uint rgb) 
	{ int i = 0; for(; i < 4; i++) Label_setBorder(&(button->label[i]), bord_width, rgb); }

void Button_setEnabled(Button *button, bool sel) {
	if (sel == button->enabled) return;
	button->enabled = sel;
	((Widget*)button)->surf = (sel) ? button->label[BUT_NORMAL].widget.surf : button->label[BUT_DISABLED].widget.surf;
	((Widget*)button)->need_reload = true;
}

inline void Button_setFixedWidth(Button *button, bool sel) { 
	int i = 0; for(; i < 4; i++) button->label[i].fixed_width = sel; 
}

inline void Button_setText(Button *button, const char *text) {
	int i=0; for(;i<4;i++) Label_setText(&(button->label[i]), text);
	Button_refresh(button);
}

void Button_applyDefaultStyle(	Button *button,  usint posx, usint posy, 
								TTF_Font *font2, usint padx, usint pady,
								bool fixed_width) {
	((Widget*)button)->pos.x = posx;
	((Widget*)button)->pos.y = posy;
	
	// normal state
	Label *lab = &(button->label[BUT_NORMAL]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x9F00F0);
	Label_setBgColor(lab, 0xDBFFD0);
	Label_setBorder(lab, 5, 0x3967FF);
	
	// mouse over
	lab = &(button->label[BUT_MOUSE_OVER]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x9F00F0);
	Label_setBgColor(lab, 0xB5FF9E);
	Label_setBorder(lab, 5, 0x3967FF);
	
	// pressed
	lab = &(button->label[BUT_PRESSED]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x9F00F0);
	Label_setBgColor(lab, 0xFFDE59);
	Label_setBorder(lab, 5, 0x00C9D1);
	
	// disabled
	lab = &(button->label[BUT_DISABLED]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xABABAB);
	Label_setBgColor(lab, 0xDFDFDF);
	Label_setBorder(lab, 5, 0x717171);
	
	Button_refresh(button);				// apply changes
	Button_setFixedWidth(button, fixed_width);
}

void Button_applyDefaultStyle2(	Button *button,  usint posx, usint posy, 
								TTF_Font *font2, usint padx, usint pady,
								bool fixed_width) {
	((Widget*)button)->pos.x = posx;
	((Widget*)button)->pos.y = posy;
	
	// normal state
	Label *lab = &(button->label[BUT_NORMAL]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0x000000);
	Label_setBgColor(lab, 0xEDECEB);
	Label_setBorder(lab, 1, 0xEDECEB);
	
	// mouse over
	lab = &(button->label[BUT_MOUSE_OVER]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xFFFFFF);
	Label_setBgColor(lab, 0x7EA4D4);
	Label_setBorder(lab, 1, 0x7EA4D4);
	
	// pressed
	lab = &(button->label[BUT_PRESSED]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xFFFFFF);
	Label_setBgColor(lab, 0xF25560);
	Label_setBorder(lab, 1, 0xEDECEB);
	
	// disabled
	lab = &(button->label[BUT_DISABLED]); // get pointer of Button field
	Label_setPadding(lab, padx, pady);
	Label_setFont(lab, font2);
	Label_setFontColor(lab, 0xAEAEAE);
	Label_setBgColor(lab, 0xFFFFFF);
	Label_setBorder(lab, 1, 0xEDECEB);
	
	Button_refresh(button);				// apply changes
	Button_setFixedWidth(button, fixed_width);
}

void Button_mousePressed(Button *button, Screen *screen) { // button pressed (change style until Releases)
	if (! button->enabled) return;
	if (screen->event.button.button == 1) { 	// left mouse button
		((Widget*)button)->surf = button->label[BUT_PRESSED].widget.surf;
		((Widget*)button)->need_reload = true;
		Widget_draw((Widget*)button, screen, true);
	}
}

void Button_mouseDragging(Button *button, Screen *screen) { }

void Button_mouseReleased(Button *button, Screen *screen) { // button releaes - turn back to normal style
	if (! button->enabled) return;
	if (Widget_contains((Widget*)button, screen->event.button.x, screen->event.button.y))
		/* mouse still over button (switch to highlighted Surface) */
		((Widget*)button)->surf = button->label[BUT_MOUSE_OVER].widget.surf;
	else // mouse released outside buttonimage
		((Widget*)button)->surf = button->label[BUT_NORMAL].widget.surf;
		
	((Widget*)button)->need_reload = true;
	Widget_draw((Widget*)button, screen, true);
}

void Button_mouseEnter(Button *button, Screen *screen) { 	// mouse enters button (highlight on)
	screen->event_handled = true;
	if (! button->enabled) return;
	((Widget*)button)->surf = button->label[BUT_MOUSE_OVER].widget.surf;
	((Widget*)button)->need_reload = true;
	Widget_draw((Widget*)button, screen, true);
}

void Button_mouseExit(Button *button, Screen *screen) { 	// mouse leaves button (highlight off)
	screen->event_handled = true;
	if (! button->enabled) return;
	((Widget*)button)->surf = button->label[BUT_NORMAL].widget.surf;
	((Widget*)button)->need_reload = true;
	Widget_draw((Widget*)button, screen, true);
}
void Button_mouseMove(Button *button, Screen *screen) { }
void Button_mouseClicked(Button *button, Screen *screen) { } // handle clicks moved to Widget class

static char str_id[128];
char *Button_toString(Button *button) {
	if (! button) return "button=NULL";
	snprintf(str_id, 128, "%s", Label_toString(&(button->label[BUT_NORMAL])));
	return str_id;
}
