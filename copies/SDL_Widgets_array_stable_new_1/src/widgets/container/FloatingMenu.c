/*		[ class inheriting from StackList, allows to create simple floating menus and containers ]
 *      FloatingMenu.c - this file is part of SDL_Widgets
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

#include "Widget.h"
#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "Object.h"
#include "Memory.h"
#include "Button.h"
#include "Label.h"
#include "StackList.h"
#include "Container.h"

static const char *type = "FloatingMenu";

inline void FloatingMenu_refresh(FloatingMenu *this) { StackList_refresh((StackList*)this); }

static void FloatingMenu_vdestroy(void *vthis) {
	//FloatingMenu	*this = (FloatingMenu*)vthis;
	StackList		*sli  = (StackList*)vthis;
	
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "FloatingMenu_vdestroy", Object_getType((Object*)vthis), vthis);
		
	/*! Delete self stuff !*/
	if (sli->items) {
		ContainerItem *c;
		uint i = 0;
		for (; i < sli->count; i++) {
			c = &(sli->items[i]);
			if ((c->widget) && (c->widget->internal)) 
				free(delete(c->widget));
		}
		free(sli->items);
		sli->items = NULL;
		sli->size = sli->count = 0;
	}
	
	/*! Delete parent object !*/
	StackList_destroy((StackList*)vthis);
}

FloatingMenu* FloatingMenu_new(FloatingMenu *this, layouttype layout, uint size) {
	if (! this) {
		fprintf(stderr, "FloatingMenu_new: Passed NULL this pointer. layout=%s, size=%u\n", StackList_getLayoutName(layout), size);
		return NULL;
	} 
	StackList_init_type((StackList*)this, SFLOATING_MENU_TYPE, layout, size, FloatingMenu_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "FloatingMenu_new", Object_getType((Object*)this), this);
	
	//~ this->font_header = this->font_button = this->font_label = Static_getDefaultFont();
	return this;
}

//~ inline void FloatingMenu_setHeaderFont(FloatingMenu *this, TTF_Font *font) { this->font_header = font; }
//~ inline void FloatingMenu_setButtonFont(FloatingMenu *this, TTF_Font *font) { this->font_button = font; }
//~ inline void FloatingMenu_setLabelFont(FloatingMenu  *this, TTF_Font *font) { this->font_label  = font; }


/*! Button -- header of floating menu
 *  Obvious parameters:
 * sender->vparam[0]  -- container containing clicked Button			as Container*
 */
static void FloatingMenu_click(Widget *sender, Screen *screen) {
	Container *cont = (Container*)sender->vparam[0];
	Widget    *wt   = &(cont->widget);
	if (wt->visible) {									// if menu is visible
		if (screen->widget_ontop == wt) {				// if menu is on top
			Container_setVisible(cont, false);			// hide menu
			sender->visible = true;						// leave header button visible
			screen->need_reload = true;					// reload screen
			screen->widget_ontop = NULL;				// no widget on top
		}
		else {											// menu visible, not on top
			screen->widget_ontop = wt;					// set it on top
			Container_draw(cont, screen, true);			// redraw menu
		}
	}
	else {												// menu is hidden
		Container_setVisible(cont, true);				// set it visible
		screen->widget_ontop = wt;						// set it on top
		Container_draw(cont, screen, true);				// redraw menu
	}
}

Button* FloatingMenu_addBaseHeader(FloatingMenu *this, TTF_Font *font, char *text) {
	Button *but = Button_new(calloc(1, sizeof(Button)), text);
	if (! but) {
		fprintf(stderr, "FloatingMenu_addBaseHeader[this=%p, text=%s]: Failed to allocate/create header Button.\n", this, text);
		return NULL;
	}
	Button_applyDefaultStyle(but, 0, 0, font, 5, 5, true);
	((Widget*)but)->click_handler = FloatingMenu_click;
	((Widget*)but)->internal = true;
	Widget_addParameter((Widget*)but, (void*)this, 1); // container containing header button
	StackList_appendWidgetAt((StackList*)this, (Widget*)but, 0, ALIGN_CENTER, ALIGN_BOTTOM, 3, 3, 3, 15);
	return but;
}

Button* FloatingMenu_addMenuButtonLast(	FloatingMenu	*this, 
										TTF_Font		*font,
										char			*text, 
										void			(*click_handler)(struct Widget*, struct Screen*),
										uint			id) {
	Button *but = Button_new(calloc(1, sizeof(Button)), text);
	if (! but) {
		fprintf(stderr, "FloatingMenu_addButton[this=%p, text=%s]: Failed to allocate/create button Button.\n", this, text);
		return NULL;
	}
	Button_applyDefaultStyle2(but, 0, 0, font, 3, 3, true);
	((Widget*)but)->click_handler = click_handler;
	((Widget*)but)->id = id;
	((Widget*)but)->internal = true;
	StackList_addWidgetLast((StackList*)this, (Widget*)but, ALIGN_LEFT, ALIGN_BOTTOM, 0, 0, 0, 0);
	return but;
}

Label* FloatingMenu_addLabelLast(FloatingMenu *this, TTF_Font *font, char *text) {
	Label *lab = Label_new(calloc(1, sizeof(Label)), text);
	if (! lab) {
		fprintf(stderr, "FloatingMenu_addLabel[this=%p, text=%s]: Failed to allocate/create label Label.\n", this, text);
		return NULL;
	}
	Label_applyDefaultStyle(lab, 0, 0, font, 10, 5, true);
	((Widget*)lab)->internal = true;
	StackList_addWidgetLast((StackList*)this, (Widget*)lab, ALIGN_LEFT, ALIGN_BOTTOM, 0, 0, 0, 0);
	return lab;
}

Widget* FloatingMenu_addWidgetLast(	FloatingMenu *this, Widget *widget, 
									alignment halign,   alignment valign, 
									usint marg_top,     usint marg_left, 
									usint marg_bot,     usint marg_right) {
	widget->internal = false;
	StackList_addWidgetLast((StackList*)this, widget, halign, valign, marg_top, marg_left, marg_bot, marg_right);
	return widget;
}

inline void FloatingMenu_setVisible(FloatingMenu *this, bool vis) { StackList_setVisible((StackList*)this, vis); }
