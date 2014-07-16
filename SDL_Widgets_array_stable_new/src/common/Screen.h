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
	#include "perr.h"
	
	#define VERBOSE_EVENTS	 0
	#define VERBOSE2_EVENTS  1
	
	struct ScreenBackground {
		Widget		*bg_widget;			// any Widget pointer if NULL is not drown
		u32			bgcolor;			// background RGB color
		u8			bg_mode : 1;		// either: BG_STRETCH or BG_CENTERED
		b8			fillcolor : 1;		// if true FillRect is called before bg_widget is drown
	};
	typedef struct ScreenBackground ScreenBackground;
	
	extern const coClass *Screen_class;
	#define SCREEN(VTHIS) ((Screen*)VTHIS)
	
	struct Screen {
		coObject			_super;		// extends from coObject (to consider: from Widget or Container)
		SDL_Event			event;
		
		
		/* Array with widgets on screen */
		Widget				**widget;
		Widget				*widget_ontop;
		u32					c_widget;
		u32 				size_widget;
		
		
		SDL_Surface			*screen;
		SDL_Event			*pevent;
		void				(*key_up)(Screen*, SDLKey, void *param);
		void				(*toogle_drag_on)(Screen*);
		void				(*user_event)(Screen*, SDL_UserEvent*);
		
		// method called before or after painting background widget and all screen widgets
		void				(*before_paint)(Screen*, void *param);
		void				(*after_paint)(Screen*, void *param);
		
		void				(*mouse_down)(Screen*, void *param);
		void				(*mouse_up)(Screen*, void *param);
		void				(*mouse_move)(Screen*, void *param);
		
		void 				*param;
		
		/* Callback array with cparam-s */
		Callback			*callback;		/*read-only*/
		
		ScreenBackground	background;
		
		/* Event info */
		b8				has_exited : 1;		// set to true if user press ESC, CTRL-C, or window closes
		b8				event_handled : 1;	// set to true before run user callback function
		b8				pool_events : 1;
		
		b8				disable_auto_flip : 1;	// disable autoflip of surface after repaint - default false
		b8				drag_on : 1;
		b8				need_reload : 1;
	};										// void mouse_click(Widget *sender, Screen *screen)
											// to prevent passing event through tree of widgets
											// simply set screen->event_handled=true at the beginning
											// of callback function
	//#include "Widget.h"
	
	/** Constructor, second parameter is optional error parameter pointer (recommended to use)
	 * last parameter is optional count of widget to be placed on screen */
	Screen* Screen_new(Screen *this, perr *e, u32 size_widget);
	
	void Screen_vdestroy(void *vthis);
	
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
	void Screen_setBackgroundWidget(Screen *screen, Widget *bg_widget, u8 mode);
	
	// Sets background color of current screen
	void Screen_setBackgroundColor(Screen *screen, u32 rgb);
	
	// Common handler for close window button
	inline void Screen_buttonExitClicked(Widget *sender, Screen *screen);
	
	// ToStrings()
	const char *Screen_lastWidgetToString(const Screen *screen);
	const char *Screen_vtoString(const void *vthis);
	const char *Screen_getEventName(Uint8 sdl_event_type);
	
	inline const char *Screen_currentEventName(const Screen *this);
	
	inline u8 Screen_getEventButtonIndex(const Screen *this);
	
	// Wrappers used to manage cparams 
	// Call this function after Screen_init to initialize callback cparam 
	// array with given array of click handlers function pointers of size: size
	void Screen_CallbackCreate(	Screen *screen, 
								void	(*click_handler[])(Widget*, Screen*),
								u32 	size);
								
	perr Screen_addCParam(	Screen 	*screen, 
								void	(*click_handler)(Widget*, Screen*),
								void 	*parameter,
								u32 	position,
								u32	*startPos);
								
	b8 Screen_getCParam(		Screen *screen,
								void	(*click_handler)(Widget*, Screen*),
								void 	***cparam
							);
							
	inline void Screen_flip(Screen *this);
	inline SDL_Surface*			Screen_getBaseSurface();
	inline SDL_PixelFormat*		Screen_getBaseSurfaceFormat();
	
	void Screen_setOptions(options *op);
	inline u16 Screen_getWidth();
	inline u16 Screen_getHeight();
	
#endif
