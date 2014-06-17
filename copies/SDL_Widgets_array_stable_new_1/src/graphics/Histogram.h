/*
 *      Histogram.h - this file is part of SDL_Widgets
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

#ifndef _Histogram_h_
	#define _Histogram_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	
	// Size of histogram is constant
	// cannot be changed without changes in Histogram_refresh
	#define HIST_W	512
	#define	HIST_H	180
	
	struct Histogram {
		Widget 		widget;			// inherits from Widget
		uint		*data;			// assign here pointer to uint[256] array
		uint 		max_value;		// <- valid after refresh
		uint 		min_value;		// <-
		uint 		color;
	};
	
	Histogram* Histogram_new(Histogram *this);
	char *Histogram_toString(Histogram *histogram);
	void Histogram_refresh(Histogram *histogram);
	inline void Histogram_setColor(Histogram *histogram, uint color_rgb);
	
#endif
