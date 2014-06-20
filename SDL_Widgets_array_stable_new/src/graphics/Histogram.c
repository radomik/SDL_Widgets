/*
 *      Histogram.c - this file is part of SDL_Widgets
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
#include "Histogram.h"

static const void* vtable[] = {
	Widget_vdestroy,
	Widget_vmevent,
	Widget_vdraw,
	Histogram_vrefresh,
	Widget_vdrag,
	Widget_vsetVisible
};

static coClass type = {
	.size	= sizeof(Histogram),
	.name	= "Histogram",
	.vtable	= vtable
};
const coClass *Histogram_class = &type;

void Histogram_vrefresh(void *vthis) {
	Histogram *histogram = HISTOGRAM(vthis);
	Widget *widget = WIDGET(vthis);
	
	/* Create base surface (assume that pos.x && pos.y are already set */
	SDL_FreeSurface(widget->surf);	// delete old surface
	widget->surf = Static_newSurface(HIST_W, HIST_H);
	if (! widget->surf) {
		fprintf(stderr, "Histogram_vrefresh: CreateRGBSurface failed: %s\n", SDL_GetError());
        Widget_setVisible(widget, false);
        return;
	}
	
	/* Fill created surface with background (white) color */
	if (SDL_FillRect(widget->surf, NULL, 0x00FFFFFF)) {
		fprintf(stderr, "Histogram_vrefresh: Failed to fill background surface (FillRect)\n");
		Widget_setVisible(widget, false);
		return;
	}
	
	/* Calculate maxx and maxxy, assing WIDTH and HEIGHT */
	widget->pos.w = HIST_W;
	widget->pos.h = HIST_H;
	widget->maxx  = widget->pos.x + HIST_W;
	widget->maxy  = widget->pos.y + HIST_H;
	
	/* Draw histogram data if not null */
	/* assuming one color from 256 on bar of width 2px and height relative to histogram height */
	if (histogram->data) {
		histogram->max_value = 0;
		histogram->min_value = 0xFFFFFFFF;
		u16 i = 0;
		for (; i < 256; i++) { 
			if (histogram->data[i] > histogram->max_value) histogram->max_value = histogram->data[i];
			if (histogram->data[i] < histogram->min_value) histogram->min_value = histogram->data[i];
		}
		if (histogram->max_value == 0) return;	// all data is zero
		
		u16 x = 0;	// x dimension inside histogram rectangle
		u16 y1 = widget->maxy - widget->pos.y;
		for (i=0; i < 256; i++) {
			// calculate y2 of line
			u16 y2 = y1 - ((histogram->data[i] * HIST_H)/ histogram->max_value);
			//fprintf(stderr, "Histogram [%hu] value=%u, max_value=%u, y1=%hu, y2=%hu, pos.y=%hu, maxy=%hu, (/)=%u\n", i, histogram->data[i], histogram->max_value, y1, y2, widget->pos.y, widget->maxy, ((histogram->data[i] * HIST_H)/ histogram->max_value));
			vlineColor(widget->surf, x++, y1, y2, 0x000000FF);	// draw first line
			vlineColor(widget->surf, x++, y1, y2, 0x000000FF);	// draw second line
		}
	}
	
	Widget_setVisible(widget, true);
}

void Histogram_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

Histogram* Histogram_new(Histogram *this) {
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	this->data = NULL;
	this->max_value = 0;
	this->min_value = 0;
	this->color = 0;
	return this;
}

void Histogram_setColor(Histogram *this, u32 color_rgb) { 
	color_rgb <<= 8; color_rgb |= 0xFF; this->color = color_rgb;
}

const char *Histogram_toString(const Histogram *this) {
	static char str_id[64];
	snprintf(str_id, sizeof(str_id), "histogram data=%p", this->data);
	return str_id;
}
