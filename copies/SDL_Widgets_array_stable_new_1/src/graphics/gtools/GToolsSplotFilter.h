/* 
 *		Implementation of convolution filter (filtracja splotowa) 
 * 		Methods works for 24 bit and 32 bit images represented by one-dimensional array of bytes
 * 
 *      GToolsSplotFilter.h - this file is part of SDL_Widgets
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

#ifndef _GToolsSplotFilter_h_
	#define _GToolsSplotFilter_h_
	/* Splot filter operations, static methods */
	#include "StdDefinitions.h"
	#include "Object.h"
	
    /** GToolsSplotFilter enables some extra control of filter divider (which isn't obvious to use):
     * to change .divider value use GToolsSplotFilter_increaseDivider() and GToolsSplotFilter_decreaseDivider()
     +---------------------+---------------------+------------------------------------------------------------------+
     | .has_widget_        | .divider_usage      |      APPROACH                                                    |
     |    changing_divider |                     |                                                                  |
     +---------------------+---------------------+------------------------------------------------------------------+
 (1) |          FALSE      | FILTER_SPEC_DIVIDER | (Default) For predefinied filters uses filter                    |
     |                     |                     | specified divider (see *.c file: predef_filter variable)         |
     |                     |                     | For custom filters uses sum of weights (or 1.0 if sum equal 0)   |
     +---------------------+---------------------+------------------------------------------------------------------+
 (2) |          FALSE      |    CUSTOM_DIVIDER   | Uses default (1) approach and print warnings                     |
     +---------------------+---------------------+------------------------------------------------------------------+
 (3) |          FALSE      | SUM_OF_WEIGHTS_DIV..| Always uses sum of weights (also for predef. filters)            |
     +---------------------+---------------------+------------------------------------------------------------------+
 (4) |          TRUE       | FILTER_SPEC_DIVIDER | Same as default (1)                                              |
     +---------------------+---------------------+------------------------------------------------------------------+
 (5) |          TRUE       |    CUSTOM_DIVIDER   | Always uses .divider field vaule as divider (or 1.0, if equ 0)   |
     +---------------------+---------------------+------------------------------------------------------------------+
 (3) |          TRUE       | SUM_OF_WEIGHTS_DIV..| Always uses sum of weights (also for predef. filters)            |
     +---------------------+---------------------+------------------------------------------------------------------+
	**/
	
	/* Note weight array is indexed in this way:
	 * +---+---+---+
	 * | 8 | 7 | 6 |
	 * +---+---+---+
	 * | 5 | 4 | 3 |
	 * +---+---+---+
	 * | 2 | 1 | 0 |
	 * +---+---+---+
	 */
	
	 
	typedef enum {
		FILTER_SPEC_DIVIDER,
		CUSTOM_DIVIDER,
		SUM_OF_WEIGHTS_DIVIDER
	} GToolsSplotFilter_divider_usage;
	
	struct GToolsSplotFilter {
		Object								object;				// inherits from Object
		usint								predef_filter_ind;
		float								weight[9];
		float								divider;
		GToolsSplotFilter_divider_usage		divider_usage;
		bool								has_widget_changing_divider;
	};
	
	// Constructor
	GToolsSplotFilter* GToolsSplotFilter_new(GToolsSplotFilter *this);
	
	// apply filter
	uchar GToolsSplotFilter_applyFilter(GToolsSplotFilter *gtsf, SDL_Surface *imgsrc, SDL_Surface *imgdst);
	
	// set predefinied filter index to none (USINF)
	inline void  GToolsSplotFilter_resetFilter(GToolsSplotFilter *gtsf);
	
	// get current filter index
	inline usint GToolsSplotFilter_getFilterInd(GToolsSplotFilter *gtsf);
	
	// get current predefinied filter name ("" if none)
	inline const char* GToolsSplotFilter_getFilterName(GToolsSplotFilter *gtsf);

	// increase predefinied filter index [ returns true if filter changed ]
	inline bool GToolsSplotFilter_increaseFilterInd(GToolsSplotFilter *gtsf);

	// decrease predefinied filter index [ returns true if filter changed ]
	inline bool GToolsSplotFilter_decreaseFilterInd(GToolsSplotFilter *gtsf);
	
	// increase custom divider
	inline bool GToolsSplotFilter_increaseDivider(GToolsSplotFilter *gtsf);
	
	// decrease custom divider
	inline bool GToolsSplotFilter_decreaseDivider(GToolsSplotFilter *gtsf);

	// increase weight at position (custom weight array) [ returns true if weight changed ]
	inline bool GToolsSplotFilter_increaseWeightAt(GToolsSplotFilter *gtsf, uchar w);

	// decrease weight at position (custom weight array) [ returns true if weight changed ]
	inline bool GToolsSplotFilter_decreaseWeightAt(GToolsSplotFilter *gtsf, uchar w);
	
#endif
