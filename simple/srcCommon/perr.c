/*      [Basic error management]
 *      perr.c - this file is part of SDL_Widgets
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
 
#include "perr.h"
#include <stdlib.h>

static const char*	names[] = {
	"E_NO_ERROR",
	"E_INTRO_FAILED",
	"E_NULL_THIS_POINTER",
	"E_EXIT_REQUESTED",
	"E_BAD_ALLOC",
	"E_BAD_PATH",
	"E_PARENT_BAD_OR_NULL",
	"E_CHILD_BAD_OR_NULL",
	"E_SURFACE_NULL",
	"E_SURFACE_PIXELS_NULL",
	"E_SURFACE_FORMAT_NULL",
	"E_IS_DESTROYED",
	"E_ARRAY_GROW_ZERO_DEF_SIZE",
	"E_ARRAY_GROW_INTRO_FAILED",
	"E_ARRAY_GROW_DEF_SIZE_ABOVE_MAX",
	"E_ARRAY_GROW_EXCEED_MAX_SIZE",
	"E_ARRAY_GROW_BAD_CALLOC",
	"E_ARRAY_GROW_BAD_REALLOC",
	"E_ARRAY_GROW_BAD_FLAG",
	"E_ARRAY_GROW_LAST_IND_ABOVE_SIZE",
	"E_ARRAY_GROW_NULL_RESULT_ARRAY",
	"E_INDEX_OUT_OF_RANGE",
	"E_CALLBACK_FUNCTION_NOT_FOUND",
	"E_CALLBACK_ARRAY_NOT_EXIST",
	"E_SETWIDGETTOP__passed_null_widget",
	"E_SETWIDGETTOP__have_no_widgets",
	"E_SETWIDGETTOP__screen_not_contain_widget",
	"E_SETWIDGETTOP__screen_not_contain_widget_2",
	"E_OBJECT_failed_to_alloc_objlist",
	"E_OBJECT_failed_to_create_mutex",
	"E_SDL__IMG_Load",
	"E_SDL__zoomSurface",
	"E_SDL__ConvertSurface",
	"E_SDL__CreateRGBSurface",
	"E_SDL__TTF_SizeUTF8",
	"E_SDL__TTF_RenderUTF8_Solid",
	"E_SDL__FillRect",
	"E_SDL__BlitSurface",
	"E_SDL__SDL_Init",
	"E_SDL__FE_Init",
	"E_SDL__SDL_SetVideoMode",
	"E_SDL__TTF_Init",
	"E_SDL__IMG_Init"
};

const size_t names_size = sizeof(names)/sizeof(char*);

inline const char *perr_getName(perr err_code) { return ( ((err_code < 0) || (err_code >= names_size)) ? (NULL) : (names[err_code]) ); }


