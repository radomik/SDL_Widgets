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
#include "Object.h"
#include "Memory.h"
#include "ButtonImage.h"
#include "LabelImage.h"
#include "Button.h"
#include "Image.h"
#include "Widget.h"

static const char *type = "ButtonImage";

void ButtonImage_refresh(ButtonImage *buttonimage) {
	Widget *widget = (Widget*)buttonimage;
	int i = 0; for(; i < 4; i++) {
		buttonimage->labelimage[i].widget.pos.x = widget->pos.x;
		buttonimage->labelimage[i].widget.pos.y = widget->pos.y;
		LabelImage_refresh(&(buttonimage->labelimage[i]));
	}
	widget->surf = buttonimage->labelimage[BUT_NORMAL].widget.surf;
	widget->visible = true;
	widget->need_reload = true;
	widget->maxx  = widget->pos.x + buttonimage->labelimage[BUT_NORMAL].widget.pos.w;
	widget->maxy  = widget->pos.y + buttonimage->labelimage[BUT_NORMAL].widget.pos.h;
	widget->pos.w = buttonimage->labelimage[BUT_NORMAL].widget.pos.w;
	widget->pos.h = buttonimage->labelimage[BUT_NORMAL].widget.pos.h;
}

/** Current destructor (virtual) use delete() handler to call it */
static void ButtonImage_vdestroy(void *vthis) {
	ButtonImage *this = (ButtonImage*) vthis;
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "ButtonImage_vdestroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	int i = 0; for(; i < 4; i++)	// delete composed labelimages (with their surfaces)
		delete(&(this->labelimage[i]));
		
	((Widget*)this)->surf = NULL;	// prevents from deleting below, it was pointer to one of composed labelimage surface
									// (destroyed above)
	
	/*! Delete parent object !*/
	Widget_destroy((Widget*)this);
}

// Constructor
ButtonImage* ButtonImage_new(	ButtonImage *this,
								const char	*img_path) {
	if (! this) {
		fprintf(stderr, "ButtonImage_new: Passed NULL this pointer. img_path=%s\n", img_path);
		return NULL;
	}
	Widget_init_type((Widget*)this, BUTTONIMAGE_TYPE, ButtonImage_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "ButtonImage_new", Object_getType((Object*)this), this);
	
	((Widget*)this)->mevent		= true;
	this->enabled				= true;
	int i=0; for (; i < 4; i++) LabelImage_new(&(this->labelimage[i]), img_path);
	return this;
}

ButtonImage* ButtonImage_copy(ButtonImage *btimage_dest, ButtonImage *btimage_src, bool copy_pos) {
	if ((! btimage_dest) || (! btimage_src)) {
		fprintf(stderr, "ButtonImage_copy: Passed NULL: btimage_dest(%p) or btimage_src(%p)\n", btimage_dest, btimage_src);
		return NULL;
	}
	Widget_copy((Widget*)btimage_dest, (Widget*)btimage_src, copy_pos, false);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "ButtonImage_copy", Object_getType((Object*)btimage_dest), btimage_dest);
	
	int i = 0; for (; i < 4; i++) 
		LabelImage_copy(&(btimage_dest->labelimage[i]), &(btimage_src->labelimage[i]), copy_pos);
	btimage_dest->enabled = btimage_src->enabled;
	
	((Widget*)btimage_dest)->surf = btimage_dest->labelimage[BUT_NORMAL].widget.surf;
	((Widget*)btimage_dest)->visible = true;
	return btimage_dest;
}

void ButtonImage_setEnabled(ButtonImage *buttonimage, bool sel) {
	if (sel == buttonimage->enabled) return;
	buttonimage->enabled = sel;
	((Widget*)buttonimage)->surf = (sel) ? buttonimage->labelimage[BUT_NORMAL].widget.surf : buttonimage->labelimage[BUT_DISABLED].widget.surf;
	((Widget*)buttonimage)->need_reload = true;
}

inline void ButtonImage_setBorder(ButtonImage *buttonimage, usint bord_width, uint rgb) 
	{ int i = 0; for(; i < 4; i++) LabelImage_setBorder(&(buttonimage->labelimage[i]), bord_width, rgb); }

inline void ButtonImage_setFixedWidth(ButtonImage *buttonimage, bool sel) 
	{ int i = 0; for(; i < 4; i++)  buttonimage->labelimage[i].fixed_width = sel; }

void ButtonImage_applyDefaultStyle(ButtonImage *buttonimage, 	usint posx, usint posy, 
																usint padx, usint pady,
																bool  fixed_width) {
	((Widget*)buttonimage)->pos.x = posx;
	((Widget*)buttonimage)->pos.y = posy;
	usint dpadx = padx+2, dpady = pady+2;
	
	// normal state
	LabelImage *labimg = &(buttonimage->labelimage[BUT_NORMAL]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, dpadx, dpady);
	LabelImage_setBgColor(labimg, 0xDBFFD0);
	LabelImage_setBorder(labimg, 5, 0x3967FF);
	
	// mouse over
	labimg = &(buttonimage->labelimage[BUT_MOUSE_OVER]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, dpadx, dpady);
	LabelImage_setBgColor(labimg, 0xB5FF9E);
	LabelImage_setBorder(labimg, 5, 0x3967FF);
	
	// pressed
	labimg = &(buttonimage->labelimage[BUT_PRESSED]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xFFDE59);
	LabelImage_setBorder(labimg, 7, 0xFF0000);
	
	// disabled
	labimg = &(buttonimage->labelimage[BUT_DISABLED]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, dpadx, dpady);
	LabelImage_setBgColor(labimg, 0xDFDFDF);
	LabelImage_setBorder(labimg, 5, 0x717171);
	
	ButtonImage_refresh(buttonimage);				// apply changes
	ButtonImage_setFixedWidth(buttonimage, fixed_width);
}

void ButtonImage_applyDefaultStyle3(ButtonImage *buttonimage, 	usint posx, usint posy, 
																usint padx, usint pady,
																bool fixed_width) {
	((Widget*)buttonimage)->pos.x = posx;
	((Widget*)buttonimage)->pos.y = posy;
	
	// normal state
	LabelImage *labimg = &(buttonimage->labelimage[BUT_NORMAL]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xDBFFD0);
	LabelImage_setBorder(labimg, 2, 0x3967FF);
	
	// mouse over
	labimg = &(buttonimage->labelimage[BUT_MOUSE_OVER]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xB5FF9E);
	LabelImage_setBorder(labimg, 2, 0x3967FF);
	
	// pressed
	labimg = &(buttonimage->labelimage[BUT_PRESSED]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xFFDE59);
	LabelImage_setBorder(labimg, 2, 0xFF0000);
	
	// disabled
	labimg = &(buttonimage->labelimage[BUT_DISABLED]); // get pointer of ButtonImage field
	LabelImage_setPadding(labimg, padx, pady);
	LabelImage_setBgColor(labimg, 0xDFDFDF);
	LabelImage_setBorder(labimg, 2, 0x717171);
	
	ButtonImage_refresh(buttonimage);				// apply changes
	ButtonImage_setFixedWidth(buttonimage, fixed_width);
}

void ButtonImage_mousePressed(ButtonImage *buttonimage, Screen *screen) { // buttonimage pressed (change style until Releases)
	if (! buttonimage->enabled) return;
	if (screen->event.button.button == 1) { 	// left mouse button
		((Widget*)buttonimage)->surf = buttonimage->labelimage[BUT_PRESSED].widget.surf;
		((Widget*)buttonimage)->need_reload = true;
		Widget_draw((Widget*)buttonimage, screen, true);
	}
}

void ButtonImage_mouseDragging(ButtonImage *buttonimage, Screen *screen) { }

void ButtonImage_mouseReleased(ButtonImage *buttonimage, Screen *screen) { // buttonimage releaes - turn back to normal style
	if (! buttonimage->enabled) return;
	if (Widget_contains((Widget*)buttonimage, screen->event.button.x, screen->event.button.y))
		/* mouse still over buttonimage (switch to highlighted Surface) */
		((Widget*)buttonimage)->surf = buttonimage->labelimage[BUT_MOUSE_OVER].widget.surf;
	else // mouse released outside buttonimage
		((Widget*)buttonimage)->surf = buttonimage->labelimage[BUT_NORMAL].widget.surf;
		
	((Widget*)buttonimage)->need_reload = true;
	Widget_draw((Widget*)buttonimage, screen, true);
}

inline void ButtonImage_setImage(ButtonImage *buttonimage, Image *image) {
	int i=0; for(;i<4;i++) LabelImage_setImage(&(buttonimage->labelimage[i]), image);
	ButtonImage_refresh(buttonimage);
}

inline void ButtonImage_scale(ButtonImage *buttonimage, double xscale, double yscale, int smooth) { 
	//Widget_scale(&(buttonimage->widget), xscale, yscale, smooth); 
	int i=0; for(;i<4;i++) LabelImage_scale(&(buttonimage->labelimage[i]), xscale, yscale, smooth); 
	ButtonImage_refresh(buttonimage);
}

void ButtonImage_mouseEnter(ButtonImage *buttonimage, Screen *screen) { 	// mouse enters buttonimage (highlight on)
	screen->event_handled = true;
	if (! buttonimage->enabled) return;
	((Widget*)buttonimage)->surf = buttonimage->labelimage[BUT_MOUSE_OVER].widget.surf;
	((Widget*)buttonimage)->need_reload = true;
	Widget_draw((Widget*)buttonimage, screen, true);
}
void ButtonImage_mouseExit(ButtonImage *buttonimage, Screen *screen) { 	// mouse leaves buttonimage (highlight off)
	screen->event_handled = true;
	if (! buttonimage->enabled) return;
	((Widget*)buttonimage)->surf = buttonimage->labelimage[BUT_NORMAL].widget.surf;
	((Widget*)buttonimage)->need_reload = true;
	Widget_draw((Widget*)buttonimage, screen, true);
}
void ButtonImage_mouseMove(ButtonImage *buttonimage, Screen *screen) { }
void ButtonImage_mouseClicked(ButtonImage *buttonimage, Screen *screen) { } // handle clicks moved to Widget class

static char str_id[128];
char *ButtonImage_toString(ButtonImage *buttonimage) {
	if (! buttonimage) return "buttonimage=NULL";
	snprintf(str_id, 128, "%s", LabelImage_toString(&(buttonimage->labelimage[BUT_NORMAL])));
	return str_id;
}
