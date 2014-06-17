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

#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "Callback.h"
#include "Memory.h"
#include "Object.h"
#include "perr.h"
#include "Widget.h"
#include "Image.h"
#include "Container.h"

static const char		*type					= "Screen";
static SDL_Surface		*BASE_SURFACE			= NULL;
static SDL_PixelFormat	*BASE_SURFACE_FORMAT	= NULL;
static const SDL_VideoInfo	*vinfo				= NULL;
static Uint32			BASE_SURFACE_FLAGS		= W_SDL_FLAGS|SDL_RESIZABLE;
static uint				SCREEN_COUNT			= 0;
static usint			BASE_SURFACE_WIDTH		= W_SCREEN_WIDTH;
static usint			BASE_SURFACE_HEIGHT		= W_SCREEN_HEIGHT;
static usint			BASE_SURFACE_MAXWIDTH	= W_SCREEN_MAX_WIDTH;
static usint			BASE_SURFACE_MAXHEIGHT  = W_SCREEN_MAX_HEIGHT;
static usint			PREV_WIDTH				= W_SCREEN_WIDTH;
static usint			PREV_HEIGHT				= W_SCREEN_HEIGHT;
static bool				BASE_SURFACE_FULLSCR	= false;
static char				str_id[380];

inline usint Screen_getWidth() { return (vinfo)?(vinfo)->current_w:0; }
inline usint Screen_getHeight() { return (vinfo)?(vinfo)->current_h:0; }

static void Screen_reloadBgWidget(Screen *this) {
	if ((this) && (BASE_SURFACE) && (this->background.bg_widget)) {
		usint sw = BASE_SURFACE_WIDTH;
		usint sh = BASE_SURFACE_HEIGHT;
		usint w  = this->background.bg_widget->pos.w;
		usint h  = this->background.bg_widget->pos.h;
		if (this->background.bg_mode == BG_STRETCH) {
			if ((w != sw) || (h != sh)) {
				double sx = ((double)sw) / ((double)w);
				double sy = ((double)sh) / ((double)h);
				Widget_scale(this->background.bg_widget, sx, sy, 1);
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
		BASE_SURFACE_FLAGS = W_SDL_FLAGS|SDL_FULLSCREEN;
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
		BASE_SURFACE_FLAGS = W_SDL_FLAGS|SDL_RESIZABLE;
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
				Screen_draw(this);
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
				Screen_draw(this);
				SDL_FreeSurface(old_surf);		
			}
			else {
				fprintf(stderr, "Screen_switchFullscreen: Failed to switch to window mode: %s\n", SDL_GetError());
			}
		}
	}
}

inline SDL_Surface*			Screen_getBaseSurface()			{ return BASE_SURFACE; }
inline SDL_PixelFormat*		Screen_getBaseSurfaceFormat()	{ return BASE_SURFACE_FORMAT; }

char *Screen_toString(Screen *screen) {
	snprintf(str_id, 380, "Screen:\n\twidget=%p\n\tc_widget=%u\n\tsize_widget=%u\n\tscreen=%p\n\tevent.type=%d\n\tpevent=%p(real %p)\n\tbackground.bg_widget=%p\n\tdrag_on=%d\n\tneed_reload=%d\n",
		screen->widget, screen->c_widget, screen->size_widget,
		screen->screen, screen->event.type, screen->pevent, &(screen->event),
		screen->background.bg_widget, screen->drag_on, screen->need_reload);
	return str_id;
}

char *Screen_getEventName(Uint8 sdl_event_type) {
	switch(sdl_event_type) {				/* From SDL_events.h */
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

void Screen_setBackgroundWidget(Screen *screen, Widget *bg_widget, uchar mode) {
	screen->background.bg_widget = bg_widget;
	screen->background.bg_mode   = mode;
	screen->need_reload = true;
	if (! bg_widget) return;
	Screen_reloadBgWidget(screen);
}

inline void Screen_setBackgroundColor(Screen *screen, uint rgb) { screen->background.bgcolor = rgb; screen->need_reload = true; }

inline char *Screen_lastWidgetToString(Screen *screen) { if (screen->c_widget==0)return NULL; return Widget_toString(screen->widget[screen->c_widget-1]); }

/** private method Deinitializes SDL libraries */
static inline void Screen_MainDestroy() {
	SDL_FreeSurface(BASE_SURFACE);
	BASE_SURFACE		= NULL;
	BASE_SURFACE_FORMAT = NULL;
	Static_quit();
	TTF_Quit();
	IMG_Quit();
	SDL_Quit();
}

/** Destructor, after last screen is destroyed also SDL session is ended */
static void Screen_vdestroy(void *vthis) {
	Screen *this = (Screen*) vthis;
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "Screen_vdestroy", Object_getType((Object*)this), this);
	
	/* Delete Callback object if exists */
	if (this->callback) {
		free(delete(this->callback));
		this->callback = NULL;
	}
	
	/* Delete array of Widget's pointers */
	free(this->widget); this->widget = NULL;
	
	this->need_reload = false;	// prevents from redrawing
	
	if (--SCREEN_COUNT == 0) {
		fprintf(stderr, "Screen_destroy: NOTICE: Ending SDL session.\n");
		Screen_MainDestroy();
	}
	
	/* Delete parent object */
	Object_destroy((Object*)vthis);
}

/** private method -- initializes base SDL_Surface and other SDL libraries and so on */
static perr Screen_MainInit() {
	/* SDL initialize */
	if (SDL_Init(SDL_INIT_EVERYTHING) < 0) return E_SDL__SDL_Init;
	
	/* Create base surface */
	SDL_Surface *sdl_screen  = SDL_SetVideoMode(
					BASE_SURFACE_WIDTH, BASE_SURFACE_HEIGHT, 
					W_BPP, BASE_SURFACE_FLAGS); // width, height, bpp, initializer
	
	if (! sdl_screen) {
		SDL_Quit();
		return E_SDL__SDL_SetVideoMode;
	}
	
	/* Initialize SDL_ttf */ // http://info.wsisiz.edu.pl/~szymank0/doku.php?id=public:programowanie:sdl:sdltutorial7 */
	if (TTF_Init()) {
		SDL_FreeSurface(sdl_screen);
		SDL_Quit();
		return E_SDL__TTF_Init;
	}
	
	/* Initialize SDL_Image */
	int flags   = IMG_INIT_JPG | IMG_INIT_PNG;
	int initted = IMG_Init(flags);
	if ((initted & flags) != flags) {	// http://stackoverflow.com/questions/4425901/blitting-a-transparent-png-image-onto-a-screen
		SDL_FreeSurface(sdl_screen);
		TTF_Quit();
		SDL_Quit();
		return E_SDL__IMG_Init;
    }
	
	/* Set window title */
	SDL_WM_SetCaption(W_WINDOW_TITLE, NULL);
	srand(time(NULL));
	
	BASE_SURFACE		= sdl_screen;
	BASE_SURFACE_FORMAT	= sdl_screen->format;
	
	vinfo = SDL_GetVideoInfo(); 
	
	return E_NO_ERROR;
}

/** Constructor, second parameter is optional error parameter pointer (recommended to use)
 * last parameter is optional count of widget to be placed on screen */
Screen* Screen_new(Screen *this, perr *e, uint size_widget) {
	if (! this) {
		fprintf(stderr, "Screen_new: Passed NULL this pointer. e=%p, size_widget=%u\n", e, size_widget);
		if (e) *e = E_NULL_THIS_POINTER;
		return NULL;
	}
	/* Initialize parent object and virtual destructor */
	Object_init_type((Object*)this, Screen_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Screen_new", Object_getType((Object*)this), this);
	
	/* Initialize fields to default values */
	this->screen         = NULL;
	this->drag_on        = true;
	this->c_widget       = 0;
	this->widget         = NULL;
	this->background.bg_widget 	= NULL;
	this->background.bgcolor	= 0x000000;
	this->background.bg_mode	= BG_STRETCH;
	this->background.fillcolor	= true;
	this->key_up         = NULL;
	this->toogle_drag_on = NULL;
	this->user_event     = NULL;
	this->callback       = NULL;
	this->need_reload    = false;
	this->size_widget    = 0;
	this->pevent         = &(this->event);
	this->has_exited     = this->event_handled = false;
	this->widget_ontop   = NULL;
	this->pool_events    = false;
	
	if (! BASE_SURFACE) {
		perr ee = E_NO_ERROR;
		fprintf(stderr, "Screen_init[this=%p]: NOTICE: Starting SDL session.\n", this);
		if ( (ee = Screen_MainInit()) ) {
			fprintf(stderr, "Screen_init: Screen_MainInit() failed with error: %s\n", perr_getName(ee));
			if (e) *e = ee;
			return this;
		}
	}
	this->screen         = BASE_SURFACE;
	
	if (size_widget) {
		this->widget         = calloc(size_widget, sizeof(Widget*));
		this->size_widget    = size_widget;
	}
	
	this->need_reload    = true;
	SCREEN_COUNT++;
	return this;
}

perr Screen_addWidget(Screen *screen, Widget *widget) {
	if (screen->c_widget >= screen->size_widget) {
		perr e;
		Widget** new_array = Static_growArray(	&e,							// error management
												screen->widget, 			// array to grow
												&(screen->size_widget),		// current size
												screen->c_widget,			// position of adding
												screen->c_widget,			// count to restore
												(uint)64, 					// default size
												(uint)0xFFFFFFFF,			// maximum size
												sizeof(Widget*));			// sizeof item
		if (! new_array) {
			fprintf(stderr, "Screen_addWidget: Fatal error occured while creating/growing screen.widget array. Method Static_growArray exited with error %s\n", perr_getName(e));
			return e;
		}
		else 
			screen->widget = new_array;
	}
	screen->widget[screen->c_widget] = widget;
	screen->c_widget++;
	return E_NO_ERROR;
}

void Screen_draw(Screen *screen) {
	Widget	*widget;
	uint	i=0;
	bool	has_bg_widget = ((screen->background.bg_widget) && (screen->background.bg_widget->surf) && (screen->background.bg_widget->visible));
	
	if ((! has_bg_widget) || (screen->background.fillcolor)) 
		SDL_FillRect(screen->screen, NULL, screen->background.bgcolor);
	
	if (has_bg_widget)
		SDL_BlitSurface(screen->background.bg_widget->surf, NULL, screen->screen, &(screen->background.bg_widget->pos));
	
	for (; i < screen->c_widget; i++) {
		widget = screen->widget[i];
		if ((widget) && (widget != screen->widget_ontop)) {
			if (widget->type == CONTAINER_TYPE)
				Container_draw((Container*)widget, screen, false);
			else
				Widget_draw(widget, screen, false);
		}
	}
	
	if ( (widget = screen->widget_ontop) ) {
		if (widget->type == CONTAINER_TYPE)
			Container_draw((Container*)widget, screen, false);
		else
			Widget_draw(widget, screen, false);
	}
	
	SDL_Flip(screen->screen);
	screen->need_reload = false;
}

// Common handler for close window button
inline void Screen_buttonExitClicked(Widget *sender, Screen *screen) {
	screen->has_exited = true;
}

void Screen_MainStart(Screen *screen) {
	Widget *widget;
	uint i;
	
	if (! screen->screen) {
		fprintf(stderr, "Screen_MainStart:Screen > Exiting. Screen appears to be not initialized SDL_Surface *screen==NULL\n");
		screen->has_exited = true;
		return;
	}
	screen->need_reload = true;
	screen->has_exited  = false;
	
	Screen_reloadBgWidget(screen);
	
	while (! screen->has_exited) {
		/* Draw all widgets if needed */
		if (screen->need_reload) Screen_draw(screen);
		
		/* Process events by screen and run user specified callback event handlers from inside */
		event_loop:
			screen->event_handled = false;
			if (screen->pool_events) SDL_PollEvent(screen->pevent);
			else SDL_WaitEvent(screen->pevent);
			switch (screen->event.type) {
				case SDL_USEREVENT:
					if (screen->user_event)
						screen->user_event(screen, &(screen->event.user));
					else
						fprintf(stderr, "Screen_MainStart: Unhandled user event of code %d\n", screen->event.user.code);
					break;
				case SDL_QUIT:	// window close
					screen->has_exited = true; return;
				case SDL_VIDEORESIZE:
				{
					SDL_Surface *sdl_surface = SDL_SetVideoMode(
						screen->event.resize.w, screen->event.resize.h, 
						W_BPP, W_SDL_FLAGS|SDL_RESIZABLE);
					if (sdl_surface) {
						SDL_Surface *old_surface = BASE_SURFACE;
						BASE_SURFACE_WIDTH = screen->event.resize.w;
						BASE_SURFACE_HEIGHT = screen->event.resize.h;
						BASE_SURFACE_FORMAT = BASE_SURFACE->format;
						BASE_SURFACE = sdl_surface;
						if (screen->background.bg_widget) {
							Screen_reloadBgWidget(screen);
						}
						Screen_draw(screen);
						SDL_FreeSurface(old_surface);
					}
					else
						fprintf(stderr, "Screen_MainStart[this=%p]: Failed to resize window: %s\n", screen, SDL_GetError());
					break;
				}
				case SDL_KEYUP:
					switch (screen->event.key.keysym.sym) { 	/* Perform standard operations */
						case SDLK_ESCAPE: 					/* key ESC -- screen exit */
							screen->has_exited = true;
							return;
						case SDLK_F1:
							screen->drag_on = ! screen->drag_on;
							if (screen->toogle_drag_on) {		// run user specified toogle drag on callback function
								screen->toogle_drag_on(screen);	// on Screen level
							}
							break;
						case SDLK_F11:
							Screen_switchFullscreen(screen);
							break;
						default: break;
					}
					if (screen->key_up) {		// run user specified key_up callback function
						screen->key_up(screen, screen->event.key.keysym.sym); // on Screen level
					}
					break;
				case SDL_MOUSEBUTTONDOWN:
				case SDL_MOUSEBUTTONUP:
				case SDL_MOUSEMOTION:  /** Mouse events (mevents) **/
					if ((screen->widget_ontop) && (screen->widget_ontop->visible)) { // pass event to widget on top
						if (screen->widget_ontop->type == CONTAINER_TYPE)
							Container_mevent((Container*)screen->widget_ontop, screen);
						else
							Widget_mevent(screen->widget_ontop, screen);
						if (screen->event_handled) break;
					}
					
					for (i = 0; i < screen->c_widget; i++) {
						widget = screen->widget[i];
						if (widget) {
							if (widget->type == CONTAINER_TYPE)
								Container_mevent((Container*)widget, screen);
							else
								Widget_mevent(widget, screen);
							if (screen->event_handled) break;
						}
					}
					break;
				default: goto event_loop;
			}	// end switch
			if (screen->has_exited) return;
			if (! screen->need_reload) goto event_loop;
		/* End event_loop */
	} /* End main loop */
}

// Call this function after Screen_init to initialize callback cparam 
// array with given array of click handlers function pointers of size: size
void Screen_CallbackCreate(	Screen	*screen, 
							void	(*click_handler[])(struct Widget*, struct Screen*),
							uint 	size) {
	if (screen->callback) {
		fprintf(stderr, "Screen_CallbackCreate[this=%p]: Callback object already exists: this->callback=%p\n", screen, screen->callback);
	}
	else {
		screen->callback = Callback_new(calloc(1, sizeof(Callback)), click_handler, size);
		if (! screen->callback)
			fprintf(stderr, "Screen_CallbackCreate[this=%p]: Failed to allocate this->callback object\n", screen);
			
	}
}

perr Screen_addParameter(	Screen 	*screen, 
							void	(*click_handler)(struct Widget*, struct Screen*),
							void 	*parameter,
							uint 	position,
							uint	*startPos) 
{
	if (! screen) {
		fprintf(stderr, "Screen_addParameter: Passed NULL screen object\n");
		return E_INTRO_FAILED;
	}
	if (! screen->callback) {
		fprintf(stderr, "Screen_addParameter: Callback array doesn't exist. To add cparameters first create Callback array with Screen_CallbackCreate()\n");
		return E_CALLBACK_ARRAY_NOT_EXIST;
	}
	
	perr e = Callback_addParameter(screen->callback, click_handler, parameter, position, startPos);
	
	if (e) 
		fprintf(stderr, "Screen_addParameter: Failed to add parameter. Callback_addParameter exited with error %s\n", perr_getName(e));
	return e;
}

bool Screen_getCParam(	Screen *screen,
						void	(*click_handler)(struct Widget*, struct Screen*),
						void 	***cparam
						) 
						
{
	if (! screen->callback) {
		//fprintf(stderr, "Screen_getCParam(): Callback array doesn't exist. To add cparameters first create Callback array with Screen_CallbackCreate()\n");
		return false;
	}
	
	bool t = Callback_getCParam(screen->callback, click_handler, cparam);
	return t;
}


