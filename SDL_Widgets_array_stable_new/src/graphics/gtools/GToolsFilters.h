/*      Generic filters (static class)
 *
 *      GToolsFilters.h - this file is part of SDL_Widgets
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
 
#ifndef	_GToolsFilters_h_
	#define _GToolsFilters_h_
	#include "StdDefinitions.h"
	
	typedef enum {
		FILTER_MEDIAN=0,
		FILTER_AVERAGE,
		FILTER_MIN,
		FILTER_MAX,
		FILTER_MAX_MINUS_MIN
	} generictype;
	
	u8 GToolsFilter_apply(const SDL_Surface *imgsrc, SDL_Surface *imgdst, const generictype type);
	
	const char* GToolsFilter_getName(const generictype type);
#endif
