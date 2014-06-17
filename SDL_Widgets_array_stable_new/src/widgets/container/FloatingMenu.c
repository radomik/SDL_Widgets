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

#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "Button.h"
#include "Label.h"
#include "FloatingMenu.h"

static const void* vtable[] = {
	FloatingMenu_vdestroy,
	StackList_vmevent,
	StackList_vdraw,
	StackList_vrefresh,
	StackList_vdrag,
	StackList_vsetVisible
};

static coClass type = {
	.size	= sizeof(FloatingMenu),
	.name	= "FloatingMenu",
	.vtable	= vtable
};
const coClass *FloatingMenu_class = &type;

void FloatingMenu_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif

	/*! Delete self stuff !*/
	if (STACKLIST(vthis)->items) {
		ContainerItem *c;
		u32 i = 0;
		for (; i < STACKLIST(vthis)->count; i++) {
			c = &(STACKLIST(vthis)->items[i]);
			if ((c->widget) && (c->widget->internal)) 
				free(delete(c->widget));
		}
		free(STACKLIST(vthis)->items);
		STACKLIST(vthis)->items = NULL;
		STACKLIST(vthis)->size = STACKLIST(vthis)->count = 0;
	}
	
	/*! Delete parent object !*/
	StackList_vdestroy(vthis);
}

FloatingMenu* FloatingMenu_new(FloatingMenu *this, layouttype layout, u32 size) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: layout='%s', size=%u\n", __FUNCTION__, StackList_getLayoutName(layout), size);
		return NULL;
	}
	
	StackList_new(STACKLIST(this), layout, size);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	//~ this->font_header = this->font_button = this->font_label = Static_getDefaultFont();
	return this;
}

//~ inline void FloatingMenu_setHeaderFont(FloatingMenu *this, TTF_Font *font) { this->font_header = font; }
//~ inline void FloatingMenu_setButtonFont(FloatingMenu *this, TTF_Font *font) { this->font_button = font; }
//~ inline void FloatingMenu_setLabelFont(FloatingMenu  *this, TTF_Font *font) { this->font_label  = font; }

/*! Button -- header of floating menu
 *  Obvious parameters:
 * sender->vparam[0]  -- container containing clicked Button			as Container* [ or Widget* ]
 */
static void FloatingMenu_click(Widget *sender, Screen *screen) {
	Widget    *cont_wt   = WIDGET( sender->vparam[0] );
	if (cont_wt->visible) {								// if menu is visible
		if (screen->widget_ontop == cont_wt) {			// if menu is on top
			Widget_setVisible(cont_wt, false);			// hide menu (and all of its items)
			sender->visible = true;						// leave header button visible
			screen->need_reload = true;					// reload screen
			screen->widget_ontop = NULL;				// no widget on top
		}
		else {											// menu visible, not on top
			screen->widget_ontop = cont_wt;				// set it on top
			Widget_draw(cont_wt, screen, true);			// redraw menu (and all of its items)
		}
	}
	else {												// menu is hidden
		Widget_setVisible(cont_wt, true);				// set it visible
		screen->widget_ontop = cont_wt;					// set it on top
		Widget_draw(cont_wt, screen, true);				// redraw menu
	}
}

Button* FloatingMenu_addBaseHeader(FloatingMenu *this, TTF_Font *font, const char *text) {
	Button *but = Button_new(new(Button_class), text);
	if (! but) {
		fprintf(stderr, "FloatingMenu_addBaseHeader[this=%p, text=%s]: Failed to allocate/create header Button.\n", this, text);
		return NULL;
	}
	Button_applyDefaultStyle(but, 0, 0, font, 5, 5, true);
	WIDGET(but)->click_handler = FloatingMenu_click;
	WIDGET(but)->internal = true;
	Widget_addVParam(WIDGET(but), this, 1); // container containing header button
	StackList_appendWidgetAt(STACKLIST(this), WIDGET(but), 0, ALIGN_CENTER, ALIGN_BOTTOM, 3, 3, 3, 15);
	return but;
}

Button* FloatingMenu_addMenuButtonLast(	FloatingMenu	*this, 
										TTF_Font		*font,
										const char		*text, 
										void			(*click_handler)(Widget*, Screen*),
										u32			id) {
	Button *but = Button_new(new(Button_class), text);
	if (! but) {
		fprintf(stderr, "FloatingMenu_addButton[this=%p, text=%s]: Failed to allocate/create button Button.\n", this, text);
		return NULL;
	}
	Button_applyDefaultStyle2(but, 0, 0, font, 3, 3, true);
	WIDGET(but)->click_handler = click_handler;
	WIDGET(but)->id = id;
	WIDGET(but)->internal = true;
	StackList_addWidgetLast(STACKLIST(this), WIDGET(but), ALIGN_LEFT, ALIGN_BOTTOM, 0, 0, 0, 0);
	return but;
}

Label* FloatingMenu_addLabelLast(FloatingMenu *this, TTF_Font *font, const char *text) {
	Label *lab = Label_new(new(Label_class), text);
	if (! lab) {
		fprintf(stderr, "FloatingMenu_addLabel[this=%p, text=%s]: Failed to allocate/create label.\n", this, text);
		return NULL;
	}
	Label_applyDefaultStyle(lab, 0, 0, font, 10, 5, true);
	WIDGET(lab)->internal = true;
	StackList_addWidgetLast(STACKLIST(this), WIDGET(lab), ALIGN_LEFT, ALIGN_BOTTOM, 0, 0, 0, 0);
	return lab;
}

Widget* FloatingMenu_addWidgetLast(	FloatingMenu *this, Widget *widget, 
									alignment halign,   alignment valign, 
									u16 marg_top,     u16 marg_left, 
									u16 marg_bot,     u16 marg_right) {
	widget->internal = false;
	StackList_addWidgetLast(STACKLIST(this), widget, halign, valign, marg_top, marg_left, marg_bot, marg_right);
	return widget;
}
