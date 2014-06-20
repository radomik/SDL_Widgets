/*
 *      Screen.c - this file is part of SDL_Widgets
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

#include "../srcFastEvents/FeFastEvents.h"
#include "../srcWidgets/Widget.h"
#include "StdDefinitions.h"
#include "Memory.h"
#include "Screen.h"
#include "Static.h"
#include "Object.h"
#include "Types.h"
#include "perr.h"

/// static methods and private typedefs; private or virtual methods implementations
static void Screen_vdestroy(void *vthis) { Screen_destroy(SCREEN(vthis)); }
static perr Screen_MainInit();
static inline void Screen_MainDestroy();

/// Object type info
static Type type = {
	.size      = sizeof(Screen),
	.name      = "Screen",
	.super_get = Widget_gt,
	.vclone	   = NULL,
	.vprint    = Screen_vprint,
	.vdestroy  = Screen_vdestroy
};

/// Object type info getters
const Type *Screen_t = &type;
const Type *Screen_gt() { return Screen_t; }

/// static fields
static SDL_Surface		*BASE_SURFACE			= NULL;
static SDL_PixelFormat	*BASE_SURFACE_FORMAT	= NULL;
static Uint32			BASE_SURFACE_FLAGS		= SDL_OPENGL;
static uint				SCREEN_COUNT			= 0;
static usint			BASE_SURFACE_WIDTH		= W_SCREEN_WIDTH;
static usint			BASE_SURFACE_HEIGHT		= W_SCREEN_HEIGHT;
static usint			BASE_SURFACE_MAXWIDTH	= W_SCREEN_MAX_WIDTH;
static usint			BASE_SURFACE_MAXHEIGHT  = W_SCREEN_MAX_HEIGHT;
static usint			PREV_WIDTH				= W_SCREEN_WIDTH;
static usint			PREV_HEIGHT				= W_SCREEN_HEIGHT;
static bool				BASE_SURFACE_FULLSCR	= false;

/// print only this class fields
void Screen_print(Screen *this) {
	fprintf(stderr, "Screen[this=%p]:\n\
\t.widget:                 %p\n\
\t.widget_ontop:           %p\n\
\t.c_widget:               %u\n\
\t.size_widget:            %u\n\
\t.last_widget_ind:        %u\n\
\t.mevent.x:               %hu\n\
\t.mevent.y:               %hu\n\
\t.mevent_handled:         %s\n\
\t.has_exited:             %s\n\
\t.all_widgets_internal:   %s\n\
", 
this, this->widget, this->widget_ontop, this->c_widget, this->size_widget, this->last_widget_ind,
this->mevent.x, this->mevent.y, Bool_toString(this->mevent_handled), Bool_toString(this->has_exited),
 Bool_toString(this->all_widgets_internal));
	Widget_print(WIDGET(this));
}
inline void Screen_vprint(void *vthis)   { Screen_print(SCREEN(vthis)); Widget_vprint(vthis); }


void Screen_destroy(Screen *this) {
	if (this->widget) {
		Widget *wt;
		uint   i = 0;
		for (; i < this->c_widget; i++) {
			if ((wt = this->widget[i]) && (Widget_fisInternal(wt)))
				delete(wt);
		}
		free(this->widget); this->widget = NULL;
	}
	if ((this->background.bg_widget) && (Widget_fisInternal(this->background.bg_widget))) {
		delete(this->background.bg_widget);
		this->background.bg_widget = NULL;
	}
	
	if (--SCREEN_COUNT == 0) {
		//fprintf(stderr, "Screen_destroy: NOTICE: Ending SDL session.\n");
		Screen_MainDestroy();
	}
	
	(WIDGET(this))->surf = NULL; // prevents from deleting in Widget_destroy()
	
	/* Delete parent object */
	Widget_destroy(WIDGET(this));
}

inline Screen *Screen_new(uint size_widget, bool all_widgets_internal) {
	Screen *this = new(&type); if (this) Screen_new2(this, size_widget, all_widgets_internal); return this;
}

void Screen_new2(Screen *this, uint size_widget, bool all_widgets_internal) {
	Widget_new2(WIDGET(this));
	
	printf("after widgetnew2\n");
	this->all_widgets_internal  = all_widgets_internal;
	
	if (! BASE_SURFACE) {
		perr ee = E_NO_ERROR;
		//fprintf(stderr, "Screen_init[this=%p]: NOTICE: Starting SDL session.\n", this);
		if (ee = Screen_MainInit()) {
			fprintf(stderr, "Screen_init: Screen_MainInit() failed with error: %s\n", perr_getName(ee));
			return;
		}
	}
	printf("after screen main init\n");
	
	if (size_widget) {
		this->widget         = calloc(size_widget, sizeof(Widget*));
		this->size_widget    = size_widget;
	}
	
	this->background.bg_widget 	= NULL;
	this->background.bgcolor	= 0x000000;
	this->background.bg_mode	= BG_STRETCH;
	this->background.fillcolor	= true;
	this->get_event				= SDL_WaitEvent;
	
	(WIDGET(this))->surf = BASE_SURFACE;
	
	SCREEN_COUNT++;
	printf("end of screen create\n");
}

/** private static method -- initializes base SDL_Surface and other SDL libraries and so on */
static perr Screen_MainInit() {
	/* SDL initialize */
	if (SDL_Init(SDL_INIT_EVERYTHING|SDL_INIT_EVENTTHREAD) < 0) return E_SDL__SDL_Init;
	
	//~ if (FE_Init() < 0) {
		//~ fprintf(stderr, "Screen_MainInit: FE_Init() failed: %s\n", FE_GetError());
		//~ SDL_Quit();
		//~ return E_SDL__FE_Init;
	//~ }
	//~ 
	/* Create base surface */
	SDL_Surface *sdl_screen  = SDL_SetVideoMode(
					BASE_SURFACE_WIDTH, BASE_SURFACE_HEIGHT, 
					W_BPP, BASE_SURFACE_FLAGS); // width, height, bpp, initializer
	
	if (! sdl_screen) {
		fprintf(stderr, "Screen_MainInit: SDL_SetVideoMode() failed: %s\n", SDL_GetError());
		//~ FE_Quit();
		SDL_Quit();
		return E_SDL__SDL_SetVideoMode;
	}
	
	/* Initialize SDL_ttf */ // http://info.wsisiz.edu.pl/~szymank0/doku.php?id=public:programowanie:sdl:sdltutorial7 */
	if (TTF_Init()) {
		fprintf(stderr, "Screen_MainInit: TTF_Init() failed: %s\n", TTF_GetError());
		SDL_FreeSurface(sdl_screen);
		//~ FE_Quit();
		SDL_Quit();
		return E_SDL__TTF_Init;
	}
	
	/* Initialize SDL_Image */
	int flags   = IMG_INIT_JPG | IMG_INIT_PNG;
	int initted = IMG_Init(flags);
	if ( initted & flags != flags) {	// http://stackoverflow.com/questions/4425901/blitting-a-transparent-png-image-onto-a-screen
		fprintf(stderr, "Screen_MainInit: IMG_Init() failed: %s\n", IMG_GetError());
		SDL_FreeSurface(sdl_screen);
		TTF_Quit();
		//~ FE_Quit();
		SDL_Quit();
		return E_SDL__IMG_Init;
    }
	
	/* Set window title */
	SDL_WM_SetCaption(W_WINDOW_TITLE, NULL);
	srand(time(NULL));
	
	BASE_SURFACE		= sdl_screen;
	BASE_SURFACE_FORMAT	= sdl_screen->format;
	return E_NO_ERROR;
}

/** private static method Deinitializes SDL libraries */
static inline void Screen_MainDestroy() {
	SDL_FreeSurface(BASE_SURFACE);
	BASE_SURFACE		= NULL;
	BASE_SURFACE_FORMAT = NULL;
	Static_quit();
	TTF_Quit();
	IMG_Quit();
	//~ FE_Quit();
	SDL_Quit();
}

inline SDL_Surface*			Screen_getBaseSurface()			{ return BASE_SURFACE; }
inline SDL_PixelFormat*		Screen_getBaseSurfaceFormat()	{ return BASE_SURFACE_FORMAT; }

static void Screen_reloadBgWidget(Screen *this) {
	if ((this) && (BASE_SURFACE) && (this->background.bg_widget)) {
		usint sw = BASE_SURFACE_WIDTH;
		usint sh = BASE_SURFACE_HEIGHT;
		usint w  = this->background.bg_widget->w;
		usint h  = this->background.bg_widget->h;
		if (this->background.bg_mode == BG_STRETCH) {
			if ((w != sw) || (h != sh)) {
				Widget_scaleSize(this->background.bg_widget, sw, sh, SCALE_SIZE_TO_NONE);
				Widget_setPosition(this->background.bg_widget, 0, 0);
				this->background.fillcolor = false;
			}
		}
		else {
			if (this->background.bg_mode == BG_CENTERED) {
				Widget_setCenter(this->background.bg_widget, (sw>>1), (sh>>1));
			}
			if ((w < sw) || (h < sh)) this->background.fillcolor = true;
			else this->background.fillcolor = false;
		}
	}
}

void Screen_setOptions(options *op) {
	if (op->fullscreen) {
		BASE_SURFACE_FLAGS = SDL_OPENGL|SDL_FULLSCREEN;
		if (op->screen_maxwidth) {
			BASE_SURFACE_MAXWIDTH  = BASE_SURFACE_WIDTH  = op->screen_maxwidth;
		}
		else {
			BASE_SURFACE_WIDTH = BASE_SURFACE_MAXWIDTH;
		}
		if (op->screen_maxheight) {
			BASE_SURFACE_MAXHEIGHT  = BASE_SURFACE_HEIGHT  = op->screen_maxheight;
		}
		else {
			BASE_SURFACE_HEIGHT = BASE_SURFACE_MAXHEIGHT;
		}
		BASE_SURFACE_FULLSCR = true;
		if (op->screen_width)  PREV_WIDTH  = op->screen_width;
		if (op->screen_height) PREV_HEIGHT = op->screen_height;
	}
	else {
		BASE_SURFACE_FLAGS = SDL_OPENGL|SDL_RESIZABLE;
		BASE_SURFACE_FULLSCR = false;
		if (op->screen_width)  PREV_WIDTH = BASE_SURFACE_WIDTH = op->screen_width;
		if (op->screen_height) PREV_HEIGHT = BASE_SURFACE_HEIGHT = op->screen_height;
		if (op->screen_maxwidth) BASE_SURFACE_MAXWIDTH = op->screen_maxwidth;
		if (op->screen_maxheight) BASE_SURFACE_MAXHEIGHT = op->screen_maxheight;
	}
}

void Screen_switchFullscreen(Screen *this) {
	if (BASE_SURFACE) {
		//~ SDL_WM_ToggleFullScreen(BASE_SURFACE);
		//~ BASE_SURFACE_FULLSCR = ! BASE_SURFACE_FULLSCR;
		//~ fprintf(stderr, "%ssize=[%hu,%hu]\n", (BASE_SURFACE_FULLSCR) ? ("fullscreen:  ") : ("window mode: "), BASE_SURFACE->w, BASE_SURFACE->h);
		//~ return;
		
		SDL_Surface *sdl_screen;
		Uint32	base_surface_flags   = W_SDL_FLAGS;
		bool 	base_surface_fullscr = ! BASE_SURFACE_FULLSCR;
		
		if (base_surface_fullscr) { // window -> fullscreen
			
			usint prev_width  = BASE_SURFACE_WIDTH;
			usint prev_height = BASE_SURFACE_HEIGHT;
			base_surface_flags |= SDL_FULLSCREEN;
				
			sdl_screen = SDL_SetVideoMode(BASE_SURFACE_MAXWIDTH, BASE_SURFACE_MAXHEIGHT, W_BPP, base_surface_flags);
			if (sdl_screen) { // succeded
				SDL_Surface *old_surf = BASE_SURFACE;
				BASE_SURFACE_FORMAT = sdl_screen->format;
				BASE_SURFACE_WIDTH  = sdl_screen->w;
				BASE_SURFACE_HEIGHT = sdl_screen->h;
				PREV_WIDTH          = prev_width;
				PREV_HEIGHT         = prev_height;
				BASE_SURFACE_FULLSCR= base_surface_fullscr;
				//fprintf(stderr, "In fullscreen: %hu x %hu\n", BASE_SURFACE_WIDTH, BASE_SURFACE_HEIGHT);
				BASE_SURFACE 		= sdl_screen;
				Screen_reloadBgWidget(this);
				Screen_refresh(this);
				SDL_FreeSurface(old_surf);
			}
			else {
				fprintf(stderr, "Screen_switchFullscreen: Failed to switch to fullscreen mode: %s\n", SDL_GetError());
			}
		}
		else { // fullscreen -> window
			//fprintf(stderr, "Fullscreen: %hu X %hu\n", BASE_SURFACE->w, BASE_SURFACE->h);
			base_surface_flags |= SDL_RESIZABLE;
			sdl_screen = SDL_SetVideoMode(PREV_WIDTH, PREV_HEIGHT, W_BPP, base_surface_flags);
			if (sdl_screen) { // succeded
				SDL_Surface *old_surf = BASE_SURFACE;
				BASE_SURFACE_FORMAT = sdl_screen->format;
				BASE_SURFACE_WIDTH  = PREV_WIDTH;
				BASE_SURFACE_HEIGHT = PREV_HEIGHT;
				BASE_SURFACE_FULLSCR= base_surface_fullscr;
				//fprintf(stderr, "In window: %hu x %hu\n", BASE_SURFACE_WIDTH, BASE_SURFACE_HEIGHT);
				BASE_SURFACE 		= sdl_screen;
				Screen_reloadBgWidget(this);
				Screen_refresh(this);
				SDL_FreeSurface(old_surf);		
			}
			else {
				fprintf(stderr, "Screen_switchFullscreen: Failed to switch to window mode: %s\n", SDL_GetError());
			}
		}
	}
}

const char *Screen_getEventName(Uint8 sdl_event_type) {
	switch(sdl_event_type) {				/** Copied from SDL_events.h **/
		case 0: return "SDL_NOEVENT"; 		// = 0,			/**< Unused (do not remove) */
		case 1: return "SDL_ACTIVEEVENT";	//,			/**< Application loses/gains visibility */
		case 2: return "SDL_KEYDOWN";		//,			/**< Keys pressed */
		case 3: return "SDL_KEYUP";			//,			/**< Keys released */
		case 4: return "SDL_MOUSEMOTION";	//,			/**< Mouse moved */
		case 5: return "SDL_MOUSEBUTTONDOWN";//,		/**< Mouse button pressed */
		case 6: return "SDL_MOUSEBUTTONUP";		//,		/**< Mouse button released */
		case 7: return "SDL_JOYAXISMOTION";		//,		/**< Joystick axis motion */
		case 8: return "SDL_JOYBALLMOTION";		//,		/**< Joystick trackball motion */
		case 9: return "SDL_JOYHATMOTION";		//,		/**< Joystick hat position change */
		case 10: return "SDL_JOYBUTTONDOWN";	//,		/**< Joystick button pressed */
		case 11: return "SDL_JOYBUTTONUP";		//,			/**< Joystick button released */
		case 12: return "SDL_QUIT";				//,			/**< User-requested quit */
		case 13: return "SDL_SYSWMEVENT";		//,			/**< System specific event */
		case 14: return "SDL_EVENT_RESERVEDA";	//,		/**< Reserved for future use.. */
		case 15: return "SDL_EVENT_RESERVEDB";	//,		/**< Reserved for future use.. */
		case 16: return "SDL_VIDEORESIZE";		//,			/**< User resized video mode */
		case 17: return "SDL_VIDEOEXPOSE";		//,			/**< Screen needs to be redrawn */
		case 18: return "SDL_EVENT_RESERVED2";	//,		/**< Reserved for future use.. */
		case 19: return "SDL_EVENT_RESERVED3";	//,		/**< Reserved for future use.. */
		case 20: return "SDL_EVENT_RESERVED4";	//,		/**< Reserved for future use.. */
		case 21: return "SDL_EVENT_RESERVED5";	//,		/**< Reserved for future use.. */
		case 22: return "SDL_EVENT_RESERVED6";	//,		/**< Reserved for future use.. */
		case 23: return "SDL_EVENT_RESERVED7";	//,		/**< Reserved for future use.. */
       /** Events SDL_USEREVENT through SDL_MAXEVENTS-1 are for your use */
		case 24: return "SDL_USEREVENT";
       /** This last event is only for bounding internal arrays
		*  It is the number of bits in the event mask datatype -- Uint32
        */
		case 32: return "SDL_NUMEVENTS";
		default: return "UNKNOWN";
	}
}

inline void Screen_setBackgroundWidget(Screen *this, Widget *bg_widget, uchar mode) {
	this->background.bg_widget = bg_widget;
	this->background.bg_mode   = mode;
	Widget_setRefresh(WIDGET(this));
	if (bg_widget) {
		if (mode == BG_STRETCH) this->background.fillcolor = false;
		else this->background.fillcolor = true;
		bg_widget->parent = WIDGET(this);
		Screen_reloadBgWidget(this);
	}
	else {
		this->background.fillcolor = true;
	}
}

inline void Screen_setBackgroundColor(Screen *this, uint rgb) { 
	this->background.bgcolor = rgb; Widget_setRefresh(WIDGET(this));
}

perr Screen_addWidget(Screen *this, Widget *widget, usint x, usint y) {
	if (! widget) return E_INTRO_FAILED;
	if (this->c_widget == this->size_widget) {
		perr e;
		Widget** new_array = Static_growArray(	&e,							// error management
												this->widget, 				// array to grow
												&(this->size_widget),		// current size
												this->c_widget,				// position of adding
												this->c_widget,				// count to restore
												(uint)64, 					// default size
												(uint)0xFFFFFFFF,			// maximum size
												sizeof(Widget*),			// sizeof item
												GROW_MEMSET_ZERO);
		if (! new_array) {
			fprintf(stderr, "Screen_addWidget[this=%p]: Fatal error occured while creating/growing screen.widget array. \
Method Static_growArray exited with error %s\n", this, perr_getName(e));
			return e;
		}
		else 
			this->widget = new_array;
	}
	if (Widget_fisNeedRefresh(widget)) Widget_refresh(widget);
	
	Widget_fsetNeedRefresh(this, true);
	
	if (this->all_widgets_internal) Widget_fsetInternal(widget, true);
	widget->parent = WIDGET(this);
	widget->relmin.x = x;
	widget->relmin.y = y;
	widget->relmax.x = x + widget->w - 1;
	widget->relmax.y = y + widget->h - 1;
	this->widget[this->c_widget] = widget;
	this->last_widget_ind = this->c_widget++;
	this->widget_ontop    = widget;
	return E_NO_ERROR;
}

void Screen_refresh(Screen *this) {
	Widget	*wt;
	uint	i=0;
	bool	has_bg_widget = ((this->background.bg_widget) && 
							 (this->background.bg_widget->surf) && 
							 (! (Widget_fisInvalid(this->background.bg_widget))));
	
	_error("Screen_refresh", this, "has_bg_widget=%s\n", Bool_toString(has_bg_widget));
	
	if ((! has_bg_widget) || (this->background.fillcolor)) 
		SDL_FillRect((WIDGET(this))->surf, NULL, this->background.bgcolor);
	
	if (has_bg_widget) {
		if (Widget_fisNeedRefresh(this->background.bg_widget))
			Widget_refresh(this->background.bg_widget);
		Widget_draw(this->background.bg_widget);
	}
	
	for (; i < this->c_widget; i++) {
		if (wt = this->widget[i]) {
			if (Widget_fisNeedRefresh(wt)) {
				Widget_refresh(wt);
				Widget_updateMaxXY(wt);
			}
			if (Widget_fisSizePosChanged(wt)) Widget_fsetSizePosChanged(wt, false);
			_error("Screen_refresh", this, "Draw widget[%u]: %s\n", i, typename(wt));
			Widget_draw(wt);
		}
	}
	
	SDL_Flip(BASE_SURFACE);
	Widget_fsetNeedRefresh(this, false);
}

void Screen_fastDraw(Screen *this) {
	Widget			*wt = this->background.bg_widget;
	register uint	i = 0;
	
	if (this->background.fillcolor)
		SDL_FillRect(BASE_SURFACE, NULL, this->background.bgcolor);
	
	if ((wt) && (wt->surf))
		SDL_BlitSurface(wt->surf, NULL, BASE_SURFACE, &(wt->relmin));
	
	for (; i < this->c_widget; i++) {
		wt = this->widget[i];
		if ((wt->surf) && (Widget_fisVisible(wt))) 
			SDL_BlitSurface(wt->surf, NULL, BASE_SURFACE, &(wt->relmin));
	}
	
	SDL_Flip(BASE_SURFACE);
}

/// set this->widget[index] as most top widget 
/// @note: @param index must be valid, this->c_widget must be above zero
/// @param new_wt_top must equal this->widget[index] and cannot be NULL
static inline void Screen_setWidgetTop_priv(Screen *this, uint index, Widget *new_wt_top) {
	if (new_wt_top == this->widget_ontop) return;
	//_error("Screen_setWidgetTop_priv", this, "BEFORE c_widget=%u, last_widget_ind=%u, prev_wt_top=%p[%s], index=%u, new_wt_top=%p[%s]\n",
	//	this->c_widget, this->last_widget_ind, this->widget_ontop, typename(this->widget_ontop), index, new_wt_top, typename(new_wt_top));
	//uint i = 0;
	//for(; i < this->c_widget; i++) 
	//	_error("Screen_setWidgetTop_priv", this, "All[%u] is %s @ %p\n", i, typename(this->widget[i]), this->widget[i]);
	if (index < this->last_widget_ind) { // middle widget, need to shift items
		memmove(&(this->widget[index]), &(this->widget[index+1]), 
					(this->last_widget_ind - index) * sizeof(Widget*));
		this->widget[this->last_widget_ind] = new_wt_top;
	}
	this->widget_ontop = new_wt_top;
	
	//_error("Screen_setWidgetTop_priv", this, "AFTER  c_widget=%u, last_widget_ind=%u, prev_wt_top=%p[%s], index=%u, new_wt_top=%p[%s]\n",
	//	this->c_widget, this->last_widget_ind, this->widget_ontop, typename(this->widget_ontop), index, new_wt_top, typename(new_wt_top));
	//for(i=0; i < this->c_widget; i++) 
	//	_error("Screen_setWidgetTop_priv", this, "All[%u] is %s @ %p\n", i, typename(this->widget[i]), this->widget[i]);	
}

// Try to set given widget pointer as most top widget
// public method with error checking
// returns E_NO_ERROR on success, value greater than zero otherwise
perr Screen_setWidgetTop(Screen *this, Widget *widget) {
	if (! widget) return E_SETWIDGETTOP__passed_null_widget;
	if (widget == this->widget_ontop) return E_NO_ERROR; // already on top
	if (! this->c_widget) return E_SETWIDGETTOP__have_no_widgets;
	
	while ((widget->parent != WIDGET(this)) && (widget)) // find ancestor placed directly on screen
		widget = widget->parent;
		
	if (! widget) // screen doesn't contain requested widget
		return E_SETWIDGETTOP__screen_not_contain_widget; 
	
	// find index of found widget
	uint i = 0;
	for (; i < this->c_widget && this->widget[i] != widget; i++);
	if (i == this->c_widget) return E_SETWIDGETTOP__screen_not_contain_widget_2;
	
	Screen_setWidgetTop_priv(this, i, widget);
	
	Widget_fsetNeedRefresh(this, true);
	return E_NO_ERROR;
}

// Common handler for close window button
inline void Screen_buttonExitClicked(Widget *sender, Screen *screen) {
	screen->has_exited = true;
}

void Screen_MainStart(Screen *this) {
	if (! BASE_SURFACE) {
		fprintf(stderr, "Screen_MainStart[this=%p] > Exiting. \
Screen appears to be not initialized: BASE_SURFACE is NULL\n", this);
		this->has_exited = true;
		return;
	}
	Widget *wt; uint i = 0;
	this->has_exited  = false;	//  screen not exited
	Screen_refresh(this);		//  draw screen on the beginning
	
	/** Process events by screen and run user specified callbacks **/
	//event_loop:
	while (true) {
		while (this->get_event(&(this->event))) {
			this->mevent_handled = this->mevent_switch = false;	  			// 1. Prepare
			//~ if (! this->pool_event)	FE_WaitEvent(&(this->event));		  	// 2. Wait for event
			//~ else FE_PollEvent(&(this->event));
			//_error("Screen_MainStart", this, "Got event of type=%s\n", Screen_getEventName(this->event.type));
			switch (this->event.type) {								  	  	// 3. Handle event
				case SDL_QUIT:		/** window close, CTRL+C **/
					this->has_exited = true; return;
				case SDL_KEYUP:		/** keyboard key up		 **/
					switch (this->event.key.keysym.sym) { 	/* Perform standard operations */
						case SDLK_ESCAPE: 					/* key ESC -- screen exit */
							this->has_exited = true;
							return;
						case SDLK_F1:
							this->drag_on = ! this->drag_on;
							if (this->toogle_drag_on) {		// run user specified toogle drag on callback function
								this->toogle_drag_on(this);	// on Screen level
							}
							break;
						case SDLK_F11:
							Screen_switchFullscreen(this);
							break;
					}
					
					/* Call any callback for keyboard key up on Screen level */
					if (this->key_up) this->key_up(this, this->event.key.keysym.sym); 
					break;
				case SDL_VIDEORESIZE:
				{
					SDL_Surface *sdl_surface = SDL_SetVideoMode(
						this->event.resize.w, this->event.resize.h, 
						W_BPP, W_SDL_FLAGS|SDL_RESIZABLE);
					if (sdl_surface) {
						SDL_Surface *old_surface = BASE_SURFACE;
						BASE_SURFACE_WIDTH = this->event.resize.w;
						BASE_SURFACE_HEIGHT = this->event.resize.h;
						BASE_SURFACE_FORMAT = sdl_surface->format;
						BASE_SURFACE = sdl_surface;
						if (this->background.bg_widget) Screen_reloadBgWidget(this);
						Screen_refresh(this);
						SDL_FreeSurface(old_surface);
					}
					else
						fprintf(stderr, "Screen_MainStart[this=%p]: Failed to resize window: %s\n", this, SDL_GetError());
					break;
				}
				case SDL_MOUSEBUTTONDOWN:
				case SDL_MOUSEBUTTONUP:
				case SDL_MOUSEMOTION:  /** Mouse events (mevents) **/
					if (this->c_widget) { // if have widgets
						if (this->event.type == SDL_MOUSEMOTION) {
							this->mevent.x = this->event.motion.x;
							this->mevent.y = this->event.motion.y;
						}
						else {
							this->mevent.x = this->event.button.x;
							this->mevent.y = this->event.button.y;
						}
						//~ if (this->widget_ontop) 
						//~ {	// Pass mevent to widget on top:
							//~ Widget_mevent(this->widget_ontop, this);
							//~ if (this->mevent_handled) break;
						//~ }
						// Pass mevent to other widgets:
						i = this->last_widget_ind; // starting from last (most top widget)
						while (true) {
							wt = this->widget[i];
							if (wt) {
								Widget_mevent(wt, this);
								if (this->mevent_handled) {
									if (this->mevent_switch) {
										_error("Screen_MainStart", this, "Setting widget_ontop to %p[%s]\n", wt, typename(wt));
										Widget_setRefresh(WIDGET(this));
										Screen_setWidgetTop_priv(this, i, wt);
									}
									break;
								}
							}
							if (! i) break;
							i--;
						}
						
						if (! this->mevent_switch) { // none of widget handled mevent
							/** Maybe pass mevent to background widget **/
							if ((i == 0) && (this->background.bg_widget)) 
								Widget_mevent(this->background.bg_widget, this);
						
							if ((this->event.type == SDL_MOUSEBUTTONDOWN) &&
								(this->event.button.button < 4)) {
								this->widget_ontop = NULL;
								///this->need_reload  = true;
								/** Maybe call any handler when unset widget_ontop **/
							}
						}
					}
					break;
				default:
					//fprintf(stderr, "Screen_MainStart[this=%p]: Got unhandled event of type: %s\n", this, Screen_getEventName(this->event.type));
					break;
			}	// end switch over event types
			if (this->has_exited) return;							// exit screen if needed
			if (Widget_fisNeedRefresh(this)) Screen_refresh(this);// redraw screen if needed
		}//	goto event_loop;										// continue waiting for events
	}
	/** end event_loop **/
}

