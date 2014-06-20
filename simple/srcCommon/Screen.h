/*
 *      Screen.h - this file is part of SDL_Widgets
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

#ifndef _Screen_h_
	#define _Screen_h_
	#include "../srcWidgets/Widget.h"
	#include "StdDefinitions.h"
	#include "Types.h"
	#include "perr.h"
	
	/** Public definitions and typedefs **/
	struct ScreenBackground { 			// private struct
		Widget			*bg_widget;		// any Widget pointer if NULL is not drown
		uint			bgcolor;		// background RGB color
		uchar			bg_mode;		// either: BG_STRETCH or BG_CENTERED
		bool			fillcolor;		// if true FillRect is called before bg_widget is drown
	};
	
	/** ####################################################################### **/
	/**  					class Screen 										**/
	/** Attributes: NOT thread safe (global static variables with no mutex)		**/
	#define 			SCREEN(VTHIS) ((Screen*)VTHIS)
	extern const Type  *Screen_t;
	inline const Type  *Screen_gt(); 	/** getter of Screen_t 	**/
	struct Screen {
		Widget				_super;		/** extends from Widget **/
		SDL_Event			event;
		ScreenBackground	background;
		int					(*get_event)(SDL_Event*); // private (either SDL_PollEvent or SDL_WaitEvent
		void				(*key_up)( Screen*, SDLKey );
		void				(*toogle_drag_on)( Screen* );
		Widget				**widget;
		Widget				*widget_ontop;
		CallBack			*callback;		/*read-only - Callback array with cparam-s */
		uint				c_widget;
		uint				size_widget;
		uint				last_widget_ind;
		Point				mevent;
		bool				mevent_handled;
		bool 				mevent_switch;
		bool				drag_on;
		bool				has_exited;
		//bool				pool_event;
		bool				all_widgets_internal;	// default false
	};
	/** ####################################################################### **/
	
	/** constructors 											**/
	/// constructor (size_widget is approx count of widget, can be 0 for default)
	/// if all_widgets_internal = true then Screen sets every added widget .internal = true
	/// then, on screen destroy all widgets with .internal = true are deleted
	/// if all_widgets_internal=false then only deleted widgets are this with manually set flag .internal
	inline Screen* 	Screen_new(uint size_widget, bool all_widgets_internal);
	
	/** initializers											**/
	void 			Screen_new2(Screen *this, uint size_widget, bool all_widgets_internal);
	
	/** deinitializer											**/
	void 			Screen_destroy(Screen *this);
	
	/** print fields of only this class							**/
	void 			Screen_print(Screen *this);
	
	/** print fields of this class and all of its super-classes **/
	inline void 	Screen_vprint(void *vthis);
	
	/** public objective and static methods						**/
	
	// get base SDL_Surface
	inline SDL_Surface*			Screen_getBaseSurface();
	
	// get SDL_Surface.format of base SDL_Surface
	inline SDL_PixelFormat*		Screen_getBaseSurfaceFormat();

	// set options parsed by MainProgram_parseOptions()
	void 		Screen_setOptions(options *op);

	// get SDL_Event name
	const char* Screen_getEventName(Uint8 sdl_event_type);
	
	// Sets background widget of current screen
	#define BG_STRETCH		0
	#define BG_CENTERED		1
	inline void Screen_setBackgroundWidget(Screen *this, Widget *bg_widget, uchar mode);
	
	// Sets background color of current screen
	inline void Screen_setBackgroundColor(Screen *this, uint rgb);
	
	// Common handler for close window button
	inline void Screen_buttonExitClicked(Widget *sender, Screen *screen);

	// add widget to screen
	perr 		Screen_addWidget(Screen *this, Widget *widget, usint x, usint y);

	// immediately refreshes widgets and redraws screen
	void 		Screen_refresh(Screen *this);
	
	/// fast reblit of all of widgets on screen
	/// @NOTE: this method doesn't refresh children widgets
	void 		Screen_fastDraw(Screen *this);

	// start main screen loop
	void 		Screen_MainStart(Screen *this);
	
	// Try to set given widget pointer as most top widget
	// public method with error checking
	// returns E_NO_ERROR on success, value greater than zero otherwise
	perr Screen_setWidgetTop(Screen *this, Widget *widget);
#endif
