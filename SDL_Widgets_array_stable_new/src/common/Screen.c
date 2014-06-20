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
#include "perr.h"
#include "Widget.h"
#include "Image.h"

static const void* vtable[] = {
	Screen_vdestroy
};

static coClass type = {
	.size	= sizeof(Screen),
	.name	= "Screen",
	.vtable	= vtable
};
const coClass *Screen_class = &type;

static SDL_Surface		*BASE_SURFACE			= NULL;
static SDL_PixelFormat	*BASE_SURFACE_FORMAT	= NULL;
static const SDL_VideoInfo	*vinfo				= NULL;
static Uint32			BASE_SURFACE_FLAGS		= W_SDL_FLAGS|SDL_RESIZABLE;
static u32				SCREEN_COUNT			= 0;
static u16			BASE_SURFACE_WIDTH		= W_SCREEN_WIDTH;
static u16			BASE_SURFACE_HEIGHT		= W_SCREEN_HEIGHT;
static u16			BASE_SURFACE_MAXWIDTH	= W_SCREEN_MAX_WIDTH;
static u16			BASE_SURFACE_MAXHEIGHT  = W_SCREEN_MAX_HEIGHT;
static u16			PREV_WIDTH				= W_SCREEN_WIDTH;
static u16			PREV_HEIGHT				= W_SCREEN_HEIGHT;
static b8				BASE_SURFACE_FULLSCR	= false;


inline u16 				Screen_getWidth() 				{ return (vinfo)?(vinfo)->current_w:0; }
inline u16 				Screen_getHeight() 				{ return (vinfo)?(vinfo)->current_h:0; }
inline SDL_Surface*			Screen_getBaseSurface()			{ return BASE_SURFACE; }
inline SDL_PixelFormat*		Screen_getBaseSurfaceFormat()	{ return BASE_SURFACE_FORMAT; }

// Common handler for close window button
inline void 				Screen_buttonExitClicked(Widget *sender, Screen *screen) { screen->has_exited = true; }

inline void Screen_flip(Screen *this) { SDL_Flip(this->screen); }

static void Screen_reloadBgWidget(Screen *this) {
	if ((this) && (BASE_SURFACE) && (this->background.bg_widget)) {
		fprintf(stderr, "%s: BASE_SURFACE_WIDTH(%hu), BASE_SURFACE_HEIGHT(%hu), BASE_SURFACE->w(%hu), BASE_SURFACE->h(%hu)\n",
			__FUNCTION__, BASE_SURFACE_WIDTH, BASE_SURFACE_HEIGHT, BASE_SURFACE->w, BASE_SURFACE->h);
		u16 sw = (BASE_SURFACE_WIDTH = BASE_SURFACE->w);
		u16 sh = (BASE_SURFACE_HEIGHT = BASE_SURFACE->h);
		u16 w  = this->background.bg_widget->pos.w;
		u16 h  = this->background.bg_widget->pos.h;
		fprintf(stderr, "%s: sw(%hu), sh(%hu)\n", __FUNCTION__, sw, sh);
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

/** private method -- initializes base SDL_Surface and other SDL libraries and so on */
static perr Screen_MainInit() {
	/* SDL initialize */
	if (SDL_Init(SDL_INIT_EVERYTHING) < 0) {
		fprintf(stderr, "%s: Failed to SDL_Init() [%s]\n", __FUNCTION__, SDL_GetError());
		return E_SDL__SDL_Init;
	}
	
	/* Create base surface */
	SDL_Surface *sdl_screen  = SDL_SetVideoMode(
					BASE_SURFACE_WIDTH, BASE_SURFACE_HEIGHT, 
					W_BPP, BASE_SURFACE_FLAGS); // width, height, bpp, initializer
	
	if (! sdl_screen) {
		fprintf(stderr, "%s: Failed to SDL_SetVideoMode() [%s]\n", __FUNCTION__, SDL_GetError());
		SDL_Quit();
		return E_SDL__SDL_SetVideoMode;
	}
	
	/* Initialize SDL_ttf */ // http://info.wsisiz.edu.pl/~szymank0/doku.php?id=public:programowanie:sdl:sdltutorial7 */
	if (TTF_Init()) {
		fprintf(stderr, "%s: Failed to TTF_Init() [%s]\n", __FUNCTION__, SDL_GetError());
		SDL_FreeSurface(sdl_screen);
		SDL_Quit();
		return E_SDL__TTF_Init;
	}
	
	/* Initialize SDL_Image */
	int flags   = IMG_INIT_JPG | IMG_INIT_PNG;
	int initted = IMG_Init(flags);
	if ((initted & flags) != flags) {	// http://stackoverflow.com/questions/4425901/blitting-a-transparent-png-image-onto-a-screen
		fprintf(stderr, "%s: Failed to IMG_Init() [%s]\n", __FUNCTION__, SDL_GetError());
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
		b8 	base_surface_fullscr = ! BASE_SURFACE_FULLSCR;
		
		if (base_surface_fullscr) { // window -> fullscreen
			
			u16 prev_width  = BASE_SURFACE_WIDTH;
			u16 prev_height = BASE_SURFACE_HEIGHT;
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

const char *Screen_toString(const Screen *this) {
	static char	str_id[380];
	snprintf(str_id, sizeof(str_id), "Screen:\n\twidget=%p\n\tc_widget=%u\n\tsize_widget=%u\n\tscreen=%p\n\tevent.type=%d\n\tpevent=%p(real %p)\n\tbackground.bg_widget=%p\n\tdrag_on=%d\n\tneed_reload=%d\n",
		this->widget, this->c_widget, this->size_widget,
		this->screen, this->event.type, this->pevent, &(this->event),
		this->background.bg_widget, this->drag_on, this->need_reload);
	return str_id;
}

const char *Screen_getEventName(Uint8 sdl_event_type) {
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

void Screen_setBackgroundWidget(Screen *this, Widget *bg_widget, u8 mode) {
	this->background.bg_widget = bg_widget;
	this->background.bg_mode   = mode;
	this->need_reload = true;
	if (! bg_widget) return;
	Screen_reloadBgWidget(this);
}

void Screen_setBackgroundColor(Screen *this, u32 rgb) { 
	this->background.bgcolor = rgb; 
	this->need_reload = true; 
}

const char *Screen_lastWidgetToString(const Screen *this) { 
	return (this->c_widget) ? Widget_toString(this->widget[this->c_widget-1]) : "(no widgets)";
}

/** Destructor, after last screen is destroyed also SDL session is ended */
void Screen_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	/* Delete Callback object if exists */
	if (SCREEN(vthis)->callback) {
		free(delete(SCREEN(vthis)->callback));
		SCREEN(vthis)->callback = NULL;
	}
	
	/* Delete array of Widget's pointers */
	free(SCREEN(vthis)->widget); SCREEN(vthis)->widget = NULL;
	
	SCREEN(vthis)->need_reload = false;	// prevents from redrawing
	
	if (--SCREEN_COUNT == 0) {
		fprintf(stderr, "Screen_destroy: NOTICE: Ending SDL session.\n");
		Screen_MainDestroy();
	}
	
	/*! Delete parent object !*/
	coObject_vdestroy(vthis);
}

/** Constructor, second parameter is optional error parameter pointer (recommended to use)
 * last parameter is optional count of widget to be placed on screen */
Screen* Screen_new(Screen *this, perr *e, u32 size_widget) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: e=%p, size_widget=%u\n", __FUNCTION__, e, size_widget);
		if (e) *e = E_NULL_THIS_POINTER;
		return NULL;
	}
	coObject_new(this);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	/* Initialize fields to default values */
	memset(&this->event, 0, sizeof(this->event));
	this->background.bg_widget 	= NULL;
	this->background.bgcolor	= 0x000000;
	this->background.bg_mode	= BG_STRETCH;
	this->background.fillcolor	= true;
	this->widget         		= NULL;
	this->widget_ontop         	= NULL;
	this->c_widget       		= 0;
	this->size_widget			= 0;
	this->screen         		= NULL;
	this->pevent         		= &(this->event);
	this->key_up         		= NULL;
	this->toogle_drag_on		= NULL;
	this->user_event     		= NULL;
	this->callback       		= NULL;
	this->has_exited			= false;
	this->event_handled			= false;
	this->pool_events    		= false;
	this->drag_on        		= true;
	this->need_reload    		= false;
	
	if (! BASE_SURFACE) {
		perr ee = E_NO_ERROR;
		fprintf(stderr, "%s[this=%p]: NOTICE: Starting SDL session.\n", __FUNCTION__, this);
		if ( (ee = Screen_MainInit()) ) {
			fprintf(stderr, "%s: Screen_MainInit() failed with error: %s\n", __FUNCTION__, perr_getName(ee));
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

perr Screen_addWidget(Screen *this, Widget *widget) {
	if (this->c_widget >= this->size_widget) {
		perr e;
		Widget** new_array = Static_growArray(	&e,							// error management
												this->widget, 				// array to grow
												&this->size_widget,			// current size
												this->c_widget,				// position of adding
												this->c_widget,				// count to restore
												(u32)64, 					// default size
												(u32)0xFFFFFFFF,			// maximum size
												sizeof(Widget*));			// sizeof item
		if (! new_array) {
			fprintf(stderr, "Screen_addWidget: Fatal error occured while creating/growing this.widget array. Method Static_growArray exited with error %s\n", perr_getName(e));
			return e;
		}
		else 
			this->widget = new_array;
	}
	this->widget[this->c_widget] = widget;
	this->c_widget++;
	return E_NO_ERROR;
}

void Screen_draw(Screen *this) {
	Widget	*widget;
	u32	i=0;
	b8	has_bg_widget = ((this->background.bg_widget) && (this->background.bg_widget->surf) && (this->background.bg_widget->visible));
	
	if ((! has_bg_widget) || (this->background.fillcolor)) 
		SDL_FillRect(this->screen, NULL, this->background.bgcolor);
	
	if (has_bg_widget)
		SDL_BlitSurface(this->background.bg_widget->surf, NULL, this->screen, &this->background.bg_widget->pos);
	
	for (; i < this->c_widget; i++) {
		widget = this->widget[i];
		if ((widget) && (widget != this->widget_ontop)) {
			Widget_draw(widget, this, false);
		}
	}
	
	if ( (widget = this->widget_ontop) ) {
		Widget_draw(widget, this, false);
	}
	
	Screen_flip(this);
	this->need_reload = false;
}

void Screen_MainStart(Screen *this) {
	Widget *widget;
	u32 i;
	
	if (! this->screen) {
		fprintf(stderr, "Screen_MainStart:Screen > Exiting. Screen appears to be not initialized SDL_Surface *.screen==NULL\n");
		this->has_exited = true;
		return;
	}
	this->need_reload = true;
	this->has_exited  = false;
	
	Screen_reloadBgWidget(this);
	
	while (! this->has_exited) {
		/* Draw all widgets if needed */
		if ((BASE_SURFACE_WIDTH != BASE_SURFACE->w) || (BASE_SURFACE_HEIGHT != BASE_SURFACE->h)) 
			Screen_reloadBgWidget(this);
		if (this->need_reload) 
			Screen_draw(this);
		
		/* Process events by screen and run user specified callback event handlers from inside */
		event_loop:
			this->event_handled = false;
			if (this->pool_events) SDL_PollEvent(this->pevent);
			else SDL_WaitEvent(this->pevent);
			switch (this->event.type) {
				case SDL_USEREVENT:
					if (this->user_event)
						this->user_event(this, &this->event.user);
					else
						fprintf(stderr, "Screen_MainStart: Unhandled user event of code %d\n", this->event.user.code);
					break;
				case SDL_QUIT:	// window close
					this->has_exited = true; return;
				case SDL_VIDEORESIZE:
				{
					SDL_Surface *sdl_surface = SDL_SetVideoMode(
						this->event.resize.w, this->event.resize.h, 
						W_BPP, W_SDL_FLAGS|SDL_RESIZABLE);
					if (sdl_surface) {
						SDL_Surface *old_surface = BASE_SURFACE;
						BASE_SURFACE_WIDTH = this->event.resize.w;
						BASE_SURFACE_HEIGHT = this->event.resize.h;
						BASE_SURFACE_FORMAT = BASE_SURFACE->format;
						BASE_SURFACE = sdl_surface;
						if (this->background.bg_widget) {
							Screen_reloadBgWidget(this);
						}
						Screen_draw(this);
						SDL_FreeSurface(old_surface);
					}
					else
						fprintf(stderr, "Screen_MainStart[this=%p]: Failed to resize window: %s\n", this, SDL_GetError());
					break;
				}
				case SDL_KEYUP:
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
						default: break;
					}
					if (this->key_up) {		// run user specified key_up callback function
						this->key_up(this, this->event.key.keysym.sym); // on Screen level
					}
					break;
				case SDL_MOUSEBUTTONDOWN:
				case SDL_MOUSEBUTTONUP:
				case SDL_MOUSEMOTION:  /** Mouse events (mevents) **/
					if (this->widget_ontop) { // pass event to widget on top
						Widget_mevent(this->widget_ontop, this);
						if (this->event_handled) break;
					}
					
					for (i = 0; i < this->c_widget; i++) {
						widget = this->widget[i];
						if (widget) {
							Widget_mevent(widget, this);
							if (this->event_handled) break;
						}
					}
					break;
				default: goto event_loop;
			}	// end switch
			if (this->has_exited) return;
			if (! this->need_reload) goto event_loop;
		/* End event_loop */
	} /* End main loop */
}

// Call this function after Screen_init to initialize callback cparam 
// array with given array of click handlers function pointers of size: size
void Screen_CallbackCreate(	Screen	*this, 
							void	(*click_handler[])(Widget*, Screen*),
							u32 	size) {
	if (this->callback) {
		fprintf(stderr, "Screen_CallbackCreate[this=%p]: Callback object already exists: this->callback=%p\n", this, this->callback);
	}
	else {
		this->callback = Callback_new(new(Callback_class), click_handler, size); // dynamically allocated object
		if (! this->callback)
			fprintf(stderr, "Screen_CallbackCreate[this=%p]: Failed to allocate this->callback object\n", this);
	}
}

perr Screen_addCParam(	Screen 	*this, 
							void	(*click_handler)(Widget*, Screen*),
							void 	*parameter,
							u32 	position,
							u32	*startPos) 
{
	if (! this) {
		fprintf(stderr, "Screen_addCParam: Passed NULL this object\n");
		return E_INTRO_FAILED;
	}
	if (! this->callback) {
		fprintf(stderr, "Screen_addCParam: Callback array doesn't exist. To add cparameters first create Callback array with Screen_CallbackCreate()\n");
		return E_CALLBACK_ARRAY_NOT_EXIST;
	}
	
	perr e = Callback_addParameter(this->callback, click_handler, parameter, position, startPos);
	
	if (e) 
		fprintf(stderr, "Screen_addCParam: Failed to add parameter. Callback_addParameter exited with error %s\n", perr_getName(e));
	return e;
}

b8 Screen_getCParam(	Screen *this,
						void	(*click_handler)(Widget*, Screen*),
						void 	***cparam
						) 
						
{
	if (! this->callback) {
		//fprintf(stderr, "Screen_getCParam(): Callback array doesn't exist. To add cparameters first create Callback array with Screen_CallbackCreate()\n");
		return false;
	}
	
	b8 t = Callback_getCParam(this->callback, click_handler, cparam);
	return t;
}


