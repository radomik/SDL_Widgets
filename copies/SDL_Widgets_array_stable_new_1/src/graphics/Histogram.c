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
#include "Types.h"
#include "Screen.h"
#include "Static.h"
#include "Widget.h"
#include "Object.h"
#include "Memory.h"
#include "Histogram.h"

static const char *type = "Histogram";

void Histogram_refresh(Histogram *histogram) {
	Widget *widget = &(histogram->widget);
	/* Create base surface (assume that pos.x && pos.y are already set */
	SDL_FreeSurface(widget->surf);	// delete old surface
	widget->surf = Static_NewSurface(HIST_W, HIST_H);
	if (! widget->surf) {
		fprintf(stderr, "Histogram_refresh:Histogram> CreateRGBSurface failed: %s\n", SDL_GetError());
        widget->visible = false;
        return;
	}
	
	/* Fill created surface with background (white) color */
	if (SDL_FillRect(widget->surf, NULL, 0x00FFFFFF)) {
		fprintf(stderr, "Histogram_refresh:Histogram> Failed to fill background surface (FillRect)\n");
		widget->visible = false;
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
		usint i = 0;
		for (; i < 256; i++) { 
			if (histogram->data[i] > histogram->max_value) histogram->max_value = histogram->data[i];
			if (histogram->data[i] < histogram->min_value) histogram->min_value = histogram->data[i];
		}
		if (histogram->max_value == 0) return;	// all data is zero
		
		usint x = 0;	// x dimension inside histogram rectangle
		usint y1 = widget->maxy - widget->pos.y;
		for (i=0; i < 256; i++) {
			// calculate y2 of line
			usint y2 = y1 - ((histogram->data[i] * HIST_H)/ histogram->max_value);
			//fprintf(stderr, "Histogram [%hu] value=%u, max_value=%u, y1=%hu, y2=%hu, pos.y=%hu, maxy=%hu, (/)=%u\n", i, histogram->data[i], histogram->max_value, y1, y2, widget->pos.y, widget->maxy, ((histogram->data[i] * HIST_H)/ histogram->max_value));
			vlineColor(widget->surf, x++, y1, y2, 0x000000FF);	// draw first line
			vlineColor(widget->surf, x++, y1, y2, 0x000000FF);	// draw second line
		}
	}
	
	widget->visible = true;
}

Histogram* Histogram_new(Histogram *this) {
	if (! this) {
		fprintf(stderr, "Histogram_new: Passed NULL this pointer.\n");
		return NULL;
	}
	// last parameter is NULL due to Histogram uses parent Widget destructor
	Widget_init_type(&(this->widget), HISTOGRAM_TYPE, NULL, type);
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Histogram_new", Object_getType((Object*)this), this);
	this->data = NULL;
	return this;
}

inline void Histogram_setColor(Histogram *histogram, uint color_rgb) { 
	color_rgb <<= 8; color_rgb |= 0xFF; histogram->color = color_rgb;
}

static char str_id[64];
char *Histogram_toString(Histogram *histogram) {
	snprintf(str_id, 64, "histogram data=%p", histogram->data);
	return str_id;
}
