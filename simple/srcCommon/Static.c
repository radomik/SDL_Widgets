/*
 *      Static.c - this file is part of SDL_Widgets
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

#include "../srcWidgets/Widget.h"
#include "StdDefinitions.h"
#include "Memory.h"
#include "Screen.h"
#include "Object.h"
#include "Types.h"
#include "Static.h"
#include "perr.h"

#include <stdarg.h>

const char *true_str  = "true";
const char *false_str = "false";
const char *null_str  = "(null)";
const char *vertical_str = "vertical";
const char *horizontal_str = "horizontal";


#include <sys/stat.h>
inline bool Static_fileExist(char *path) { if (! path) return false; struct stat st; if (stat(path, &st) == 0) return true; else return false; }

inline uint Static_rgbFromColor(SDL_Color *color_struct) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();
	return ((spx)&&(color_struct)) 
				? ( ( ((uint)color_struct->r) << spx->Rshift ) |
					( ((uint)color_struct->g) << spx->Gshift ) |
					( ((uint)color_struct->b) << spx->Bshift ) 
				  )
				: 0;
}

inline void Static_getColorFromRGB(SDL_Color *color_struct, uint rgb_value) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();																			\
	if ((spx) && (color_struct)) {
		color_struct->r = (Uint8)((rgb_value & spx->Rmask) >> spx->Rshift);
		color_struct->g = (Uint8)((rgb_value & spx->Gmask) >> spx->Gshift);
		color_struct->b = (Uint8)((rgb_value & spx->Bmask) >> spx->Bshift);
	}
}

// http://sdl.5483.n7.nabble.com/Copying-one-SDL-Surface-to-another-SDL-Surface-how-i-do-it-properly-td18814.html
// Jonathan Dearborn
inline SDL_Surface* Static_CopySurface(SDL_Surface* src) { 
	if (! src) return NULL;
	else
		return SDL_ConvertSurface(src, src->format, W_SDL_FLAGS); 
}



static const char *_Static_NewSurface = 
	"%s:(w=%hu, h=%hu): Screen_getBaseSurfaceFormat() returned NULL. Whether SDL initialized ?\n";
SDL_Surface* Static_NewSurface(usint w, usint h) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();
	if (! spx) {
		fprintf(stderr, _Static_NewSurface, "Static_NewSurface", w, h);
		return NULL;
	}
	return SDL_CreateRGBSurface(W_SDL_FLAGS, w, h, spx->BitsPerPixel, spx->Rmask, spx->Gmask, spx->Bmask, spx->Amask);
}
SDL_Surface* Static_NewTransparentSurface(usint w, usint h) {
	SDL_PixelFormat *spx = Screen_getBaseSurfaceFormat();
	if (! spx) {
		fprintf(stderr, _Static_NewSurface, "Static_NewTransparentSurface", w, h);
		return NULL;
	}
	uint Amask = 0xFFFFFFFF ^ (spx->Rmask|spx->Gmask|spx->Bmask);
	return SDL_CreateRGBSurface(W_SDL_FLAGS, w, h, spx->BitsPerPixel, spx->Rmask, spx->Gmask, spx->Bmask, Amask);
}

static ButtonImage *bt_arrow_up, *bt_arrow_dn;

ButtonImage* Static_getArrowUpButton() {
	fprintf(stderr, "Static_getArrowUpButton: Not implemented yet\n");
	return NULL;
	//~ if (! bt_arrow_up) {
		//~ // buttonimage arrow up [dynamic object]
		//~ bt_arrow_up = ButtonImage_new("img/arrow-up.png");
		//~ if (! bt_arrow_up) {
			//~ fprintf(stderr, "Static_getArrowUpButton: ButtonImage_new() returned NULL pointer. Probably calloc failed.\n");
			//~ return NULL;
		//~ }
		//~ ButtonImage_applyDefaultStyle3(bt_arrow_up, 0, 0, 4, 2, false);
		//~ ButtonImage_scale(bt_arrow_up, 1.0, 0.87, 1);
	//~ }
	//~ return bt_arrow_up;
}

ButtonImage* Static_getArrowDnButton() {
	fprintf(stderr, "Static_getArrowUpButton: Not implemented yet\n");
	return NULL;
	//~ if (! bt_arrow_dn) {
		//~ // buttonimage arrow down [dynamic object]
		//~ bt_arrow_dn = ButtonImage_new("img/arrow-down.png");
		//~ if (! bt_arrow_dn) {
			//~ fprintf(stderr, "Static_getArrowDnButton: ButtonImage_new() returned NULL pointer. Probably calloc failed.\n");
			//~ return NULL;
		//~ }
		//~ ButtonImage_applyDefaultStyle3(bt_arrow_dn, 0, 0, 4, 2, false);
		//~ ButtonImage_scale(bt_arrow_dn, 1.0, 0.87, 1);
	//~ }
	//~ return bt_arrow_dn;
}

// function returns true if all of pointers to check are other than NULL
// function returns false when first NULL pointer is found,
// therefore it also prints 4 first this function parameters
// and number (starting from 0) of found NULL pointer
bool checkPointers(		const char *func_name, 		// function name
						const char *file_name, 		// file name
						int 		line, 			// file line
						uint 		ptr_count, 		// count of pointers
						...							// pointers
					) 
{
	va_list	va;
	uint 	i = 0;
	va_start(va, ptr_count);
	for (; i < ptr_count; i++) {
		if (! va_arg(va, void*)) {
			fprintf(stderr, "checkPointers: Found NULL pointer at index %u. Source: %s @ %s() line: %d\n",
				i, file_name?file_name:"unknown_file.c", func_name?func_name:"unknown_function", line);
			va_end(va);
			return false;
		}
	}
	va_end(va);
	return true;
}

inline void Static_quit() {
	if (bt_arrow_up) { delete(bt_arrow_up); bt_arrow_up = NULL; }
	if (bt_arrow_dn) { delete(bt_arrow_dn); bt_arrow_dn = NULL; }
	FontCache_quit();
}

// Grow any dynamic 1D array
// Parameters:
// e              - optional pointer to perr type variable (for error information)
// array          - dynamic array base pointer, when passed NULL pointer
//                  new array of def_size (filled with zeros) is created
// ext_size       - pointer to external variable with current array size
// new_pos        - position wanted to be covered by array 
//                  (new_pos ought to be not less than current size of array)
// curr_count     - current count of valid items in array to be copied on reallocation
// def_size       - default size of array (allocated first time)
// max_size       - maximal size of array
// item_size      - sizeof single item of array
// flag			  - bitwise alternative of following:
//					GROW_NOFLAG == 0 -- use realloc to grow array, do not 
//										fill with zeros newly created space
//					GROW_REALLOC     -- same as GROW_NOFLAG
//					GROW_MEMSET_ZERO -- fill with zeros newly created space
//										only useful as GROW_REALLOC|GROW_MEMSET_ZERO
//										or GROW_MEMSET_ZERO
//					GROW_CALLOC		 -- create new array with calloc, then copy 
//										existing items and free old array
//
// On success:
// Function returns pointer to newly created/reallocated array
// 1st parameter (if not NULL) is set to E_NO_ERROR
// 3rd parameter is changed to new size of array
// All of items up to curr_count-1 index are copied, new space is filled with zeros.
// 
// 
// On error:
// Third parameter (ext_size) is unchanged.
// Function returns NULL pointer and appropiate error is stored in first parameter (e) if it isn't NULL.
// Returned errors:
//	E_ARRAY_GROW_INTRO_FAILED        - NULL: ext_size; new_pos below *ext_size; Equal 0: def_size or item_size
//	E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX  - passed def_size > max_size when *ext_size == 0
//	E_ARRAY_GROW_EXCEED_MAX_SIZE     - exceed max_size or exceed size variable numeric range
//	E_ARRAY_GROW_BAD_REALLOC or E_ARRAY_GROW_BAD_CALLOC - failed to allocate new array
//  E_ARRAY_GROW_BAD_FLAG            - flag is not valid

void* Static_growArray(	perr *e, void *array, uint *ext_size, 
						uint new_pos, uint curr_count,
						const uint def_size, const uint max_size,
						const size_t item_size,
						uchar flag) {
	/* Performs some sanity checks */
	if ((! ext_size) 			||			// passed NULL pointer to array size external variable
		(new_pos < *ext_size) 	||			// new position is already covered by current array size
		(! def_size) 			||			// default size of array cannot be 0
		(! item_size))						// single array item size cannot be 0
	{
		if (e) *e = E_ARRAY_GROW_INTRO_FAILED;
		return NULL;
	}
	uint new_size  = *ext_size;				// local: new size of array = current size
	uint prev_size = *ext_size;				// local: previous size of array = current size
	uint i;
	
	/* Calculate new size of array */
	while (new_size <= new_pos)	{			// increase new_size until it covers new_pos
		if (new_size == 0) {				// new_size==0 (first grow) -->new_size = def_size
			if (def_size > max_size) 		// default size greater than maximum size
			{
				if (e) *e = E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX;
				return NULL;
			}
			new_size = def_size;			// new_size = def_size
		}
		else {								// new_size != 0
			i = new_size;					// store current new_size
			new_size <<= 1;					// multiply new_size by 2
			if ((i >= new_size) || 			// 1. overflow of new_size number variable type, or
				(new_size <= prev_size) ||	// 2. new_size IS NOT greater than previous size, or
					(new_size > max_size)) 	// 3. new_size exceeds maximium size, then
						{
							if (e) *e = E_ARRAY_GROW_EXCEED_MAX_SIZE;
							return NULL;
						}
		}
	}
	
	/* Allocate new array of new_size and item_size*/
	void *_array;
	if ((! flag) || (flag == GROW_MEMSET_ZERO) || (flag & GROW_REALLOC)) {
		//_error2("Static_growArray", "array=%p, _array=%p, new_size=%u, prev_size=%u\n", array, _array, new_size, prev_size);
		_array = realloc(array, new_size*item_size);
		//_error2("Static_growArray", "array=%p, _array=%p, new_size=%u, prev_size=%u\n", array, _array, new_size, prev_size);
		if (! _array) {
			if (e) *e = E_ARRAY_GROW_BAD_REALLOC;
			return NULL;
		}
		if (flag & GROW_MEMSET_ZERO) {
			memset(_array + curr_count*item_size, 0, (new_size-curr_count)*item_size); 
		}
	}
	else { // flag != 0 && (! flag & GROW_REALLOC)
		if (flag & GROW_CALLOC) {
			_array = calloc(new_size, item_size);
			if (! _array) {
				if (e) *e = E_ARRAY_GROW_BAD_CALLOC;
				return NULL;
			}
			
			/* Copy previous items if such exists */
			if ((curr_count) && (array)) {							// if there are any items in old array, 
				memcpy(_array, array, (curr_count) * item_size);	// rewrite them to new array and 
				free(array);										// delete old array
			}
		}
		else
			if (e) *e = E_ARRAY_GROW_BAD_FLAG;
			return NULL;
	}
	
	
	
	/* Assign new array size and error info */
	*ext_size = new_size;
	if (e) *e = E_NO_ERROR;
	
	/* Return newly created array pointer */
	return _array;
}

void _error(const char 	*fname,
			void		*this,
			const char 	*format,
			...) {
	va_list va;
	fprintf(stderr, "%s[this=%p]: ", fname, this);
	va_start(va, format);
	vprintf(format, va);
	va_end(va);
}

void _error2(	const char 	*fname,
				const char 	*format,
			...) {
	va_list va;
	fprintf(stderr, "%s: ", fname);
	va_start(va, format);
	vprintf(format, va);
	va_end(va);
}
