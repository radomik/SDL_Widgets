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
		FILTER_SPEC_DIVIDER = 0,
		CUSTOM_DIVIDER,
		SUM_OF_WEIGHTS_DIVIDER
	} GToolsSplotFilter_divider_usage;
	
	extern const coClass *GToolsSplotFilter_class;
	#define GTOOLS_SPLOT_FILTER(VTHIS) ((GToolsSplotFilter*)VTHIS)
	
	struct GToolsSplotFilter {
		coObject							_super;				// inherits from Object
		float								weight[9];
		float								divider;
		u16									predef_filter_ind;
		GToolsSplotFilter_divider_usage		divider_usage : 2;
		b8									has_widget_changing_divider : 1;
	};
	
	// Constructor
	GToolsSplotFilter* GToolsSplotFilter_new(GToolsSplotFilter *this);
	
	// apply filter
	u8 GToolsSplotFilter_applyFilter(const GToolsSplotFilter *gtsf, const SDL_Surface *imgsrc, SDL_Surface *imgdst);
	
	// set predefinied filter index to none (USINF)
	inline void  GToolsSplotFilter_resetFilter(GToolsSplotFilter *gtsf);
	
	// get current filter index
	inline u16 GToolsSplotFilter_getFilterInd(const GToolsSplotFilter *gtsf);
	
	// get current predefinied filter name ("" if none)
	inline const char* GToolsSplotFilter_getFilterName(const GToolsSplotFilter *gtsf);

	// increase predefinied filter index [ returns true if filter changed ]
	inline b8 GToolsSplotFilter_increaseFilterInd(GToolsSplotFilter *gtsf);

	// decrease predefinied filter index [ returns true if filter changed ]
	inline b8 GToolsSplotFilter_decreaseFilterInd(GToolsSplotFilter *gtsf);
	
	// increase custom divider
	inline b8 GToolsSplotFilter_increaseDivider(GToolsSplotFilter *gtsf);
	
	// decrease custom divider
	inline b8 GToolsSplotFilter_decreaseDivider(GToolsSplotFilter *gtsf);

	// increase weight at position (custom weight array) [ returns true if weight changed ]
	inline b8 GToolsSplotFilter_increaseWeightAt(GToolsSplotFilter *gtsf, u8 w);

	// decrease weight at position (custom weight array) [ returns true if weight changed ]
	inline b8 GToolsSplotFilter_decreaseWeightAt(GToolsSplotFilter *gtsf, u8 w);
	
	// get weight from given index (see above)
	inline float GToolsSplotFilter_getWeightAt(const GToolsSplotFilter *gtsf, u8 w);

	// get string description of current divider
	const char *GToolsSplotFilter_getDividerUsageDesc(const GToolsSplotFilter *gtsf);
	
#endif
