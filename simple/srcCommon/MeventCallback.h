/*      Object containing and managing mevent callbacks.
 * 
 *      MeventCallback.h - this file is part of SDL_Widgets
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
#ifndef _MeventCallback_h_
	#define _MeventCallback_h_
	#include "StdDefinitions.h"
	#include "Types.h"
	#include "Object.h"
	
	/** Public definitions and typedefs **/
	enum mevent_type {
		MOUSE_CLICK    = 0,
		MOUSE_PRESS    = 1,
		MOUSE_RELEASE  = 2,
		MOUSE_ENTER    = 3,
		MOUSE_EXIT     = 4,
		MOUSE_DRAG     = 5,
		MOUSE_COUNT    = 6,
		MOUSE_NONE     = 10
	};
	
	/** ####################################################################### **/
	/**  					class MeventCallback 								**/
	/** Attributes: cloneable  													**/
	#define 			MEVENT_CALLBACK(VTHIS) ((MeventCallback*)VTHIS)
	extern const Type  *MeventCallback_t;
	inline const Type  *MeventCallback_gt(); 	/** getter of MeventCallback_t 	**/
	struct MeventCallback {
		Object				_super;		/** extends from Object **/
		MeventCallbackItem	*cb;
	};
	/** ####################################################### **/
	
	/** constructors 											**/
	inline MeventCallback* 	MeventCallback_new();
	inline MeventCallback* MeventCallback_clone(MeventCallback *src);
	
	/** initializers											**/
	void 			MeventCallback_new2(MeventCallback *this);
	void			MeventCallback_clone2(MeventCallback *this, MeventCallback *src);
	
	/** deinitializer											**/
	void 			MeventCallback_destroy(MeventCallback *this);
	
	/** print fields of only this class							**/
	void 			MeventCallback_print(MeventCallback *this);
	
	
	/** public objective and static methods						**/

	perr MeventCallback_addHandler(MeventCallback *this, mevent_type type, void (*cb)(Widget*, Screen*), uint def_size);
	inline void MeventCallback_callAll(MeventCallback *this, mevent_type type, Widget *sender, Screen *screen);
	inline bool MeventCallback_hasType(MeventCallback *this, mevent_type type);
	
	const char *MeventCallback_getMeventName(mevent_type type);
#endif

