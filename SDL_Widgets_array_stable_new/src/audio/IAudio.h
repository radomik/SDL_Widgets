/*		[ IAudio is an interface implemented by Audio and all classes derived from it ]
 *      IAudio.h - this file is part of SDL_Widgets
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

#ifndef _IAudio_h_
#define _IAudio_h_
#include "StdDefinitions.h"

/** This is the major problem of current implementation of interfaces
 *  index should be keeped by any class implementing interface 
 * 
 * Here using index = 1 because index = 0 is already occupied by coIObject */
#define IAUDIO_VTABLE_INDEX	1

#define IAUDIO(V) ((IAudio*)V)
struct IAudio {
	b8 (*play)(void *vthis, b8 start_paused);
};

/** extract const IAudio* entry from any const Audio* object pointer
 * @note no checks for NULL: VTHIS, VTHIS->class, VTHIS->class->vtable, 
 * VTHIS->class->vtable[IAUDIO_VTABLE_INDEX]
 */
#define IAudio_vptr(VTHIS) ( IAUDIO( vptrof(VTHIS, IAUDIO_VTABLE_INDEX) ) )


#define IAudio_play(VTHIS, START_PAUSED) ( IAudio_vptr(VTHIS)->play(VTHIS, START_PAUSED) )


#endif

