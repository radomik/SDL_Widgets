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
	
	#include "StdDefinitions.h"
	#include "Object.h"
	#include "perr.h"
	
	#define VERBOSE_EVENTS	 0
	#define VERBOSE2_EVENTS  1
	
	struct ScreenBackground {
		Widget			*bg_widget;		// any Widget pointer if NULL is not drown
		uint			bgcolor;		// background RGB color
		uchar			bg_mode;		// either: BG_STRETCH or BG_CENTERED
		bool			fillcolor;		// if true FillRect is called before bg_widget is drown
	};
	typedef struct ScreenBackground ScreenBackground;
	
	struct Screen {
		Object				object;		// extends from Object (to consider: from Widget or Container)
		SDL_Event			event;
		ScreenBackground	background;
		
		/* Array with widgets on screen */
		struct Widget		**widget;
		struct Widget		*widget_ontop;
		uint				c_widget;
		uint 				size_widget;
		
		
		SDL_Surface			*screen;
		SDL_Event			*pevent;
		void				(*key_up)(struct Screen*, SDLKey);
		void				(*toogle_drag_on)(struct Screen*);
		void				(*user_event)(struct Screen*, SDL_UserEvent*);
		
		/* Callback array with cparam-s */
		struct Callback		*callback;		/*read-only*/
		
		/* Event info */
		bool				has_exited;		// set to true if user press ESC, CTRL-C, or window closes
		bool				event_handled;	// set to true before run user callback function
		bool				pool_events;
		
		
		bool				drag_on;
		bool				need_reload;
	};										// void mouse_click(Widget *sender, Screen *screen)
											// to prevent passing event through tree of widgets
											// simply set screen->event_handled=true at the beginning
											// of callback function
	//#include "Widget.h"
	
	/** Constructor, second parameter is optional error parameter pointer (recommended to use)
	 * last parameter is optional count of widget to be placed on screen */
	Screen* Screen_new(Screen *this, perr *e, uint size_widget);
	
	// This simply draws all widgets on screen
	void Screen_draw(Screen *sc);
	
	// Add widget to screen
	perr Screen_addWidget(Screen *screen, Widget *widget);
	
	// Screen main loop:
	//	runs in the background, 
	//	calls user specified callback events (indirectly)
	//	performs dragging (indirectly)
	//	redraws screen when screen->need_reload is set
	//	exits when screen->has_exited is set (by ESC, Ctrl->C, exit button click or user specified)
	void Screen_MainStart(Screen *screen);
	
	// Sets background widget of current screen
	#define BG_STRETCH		0
	#define BG_CENTERED		1
	void Screen_setBackgroundWidget(Screen *screen, Widget *bg_widget, uchar mode);
	
	// Sets background color of current screen
	inline void Screen_setBackgroundColor(Screen *screen, uint rgb);
	
	// Common handler for close window button
	inline void Screen_buttonExitClicked(Widget *sender, Screen *screen);
	
	// ToStrings()
	inline char *Screen_lastWidgetToString(Screen *screen);
	char *Screen_toString(Screen *screen);
	char *Screen_getEventName(Uint8 sdl_event_type);
	
	// Wrappers used to manage cparams 
	// Call this function after Screen_init to initialize callback cparam 
	// array with given array of click handlers function pointers of size: size
	void Screen_CallbackCreate(	Screen *screen, 
								void	(*click_handler[])(struct Widget*, struct Screen*),
								uint 	size);
								
	perr Screen_addParameter(	Screen 	*screen, 
								void	(*click_handler)(struct Widget*, struct Screen*),
								void 	*parameter,
								uint 	position,
								uint	*startPos);
								
	bool Screen_getCParam(		Screen *screen,
								void	(*click_handler)(struct Widget*, struct Screen*),
								void 	***cparam
							);
	inline SDL_Surface*			Screen_getBaseSurface();
	inline SDL_PixelFormat*		Screen_getBaseSurfaceFormat();
	
	void Screen_setOptions(options *op);
	inline usint Screen_getWidth();
	inline usint Screen_getHeight();
#endif
