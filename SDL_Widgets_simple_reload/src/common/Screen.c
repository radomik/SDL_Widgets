
static const void* vtable[] = {
	Screen_vdestroy,
	Widget_vmevent,
	Widget_vdraw,
	Widget_vrefresh,
	Widget_vdrag,
	Widget_vsetVisible
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
static u16				BASE_SURFACE_WIDTH		= W_SCREEN_WIDTH;
static u16				BASE_SURFACE_HEIGHT		= W_SCREEN_HEIGHT;
static u16				BASE_SURFACE_MAXWIDTH	= W_SCREEN_MAX_WIDTH;
static u16				BASE_SURFACE_MAXHEIGHT  = W_SCREEN_MAX_HEIGHT;
static u16				PREV_WIDTH				= W_SCREEN_WIDTH;
static u16				PREV_HEIGHT				= W_SCREEN_HEIGHT;
static b8				BASE_SURFACE_FULLSCR	= false;


inline u16 					Screen_getWidth() 				{ return (vinfo)?(vinfo)->current_w:0; }
inline u16 					Screen_getHeight() 				{ return (vinfo)?(vinfo)->current_h:0; }
inline SDL_Surface*			Screen_getBaseSurface()			{ return BASE_SURFACE; }
inline SDL_PixelFormat*		Screen_getBaseSurfaceFormat()	{ return BASE_SURFACE_FORMAT; }

// Common handler for close window button
inline void 				Screen_buttonExitClicked(Widget *sender, Screen *screen) { screen->has_exited = true; }
inline void 				Screen_flip(Screen *this) { SDL_Flip(this->screen); }

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
	snprintf(str_id, sizeof(str_id), "Screen:\n\twidget=%p\n\tc_widget=%u\n\tsize_widget=%u\n\tscreen=%p\n\tevent.type=%d\n\tpevent=%p(real %p)\n\tbackground.bg_widget=%p\n\tdrag_on=%d\n",
		this->widget, this->c_widget, this->size_widget,
		WIDGET(this)->surf, this->event.type, &(this->event), &(this->event),
		this->background.bg_widget, this->drag_on);
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

void Screen_setBackgroundWidget(Screen *this, Widget *bg_widget, uchar mode) {
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

void Screen_setBackgroundColor(Screen *this, uint rgb) { 
	this->background.bgcolor = rgb; Widget_setRefresh(WIDGET(this));
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
	
	WIDGET(vthis)->surf = NULL;	// prevents from deleting in Widget_destroy()
	
	if (--SCREEN_COUNT == 0) {
		fprintf(stderr, "Screen_destroy: NOTICE: Ending SDL session.\n");
		Screen_MainDestroy();
	}
	
	/*! Delete parent object !*/
	Widget_destroy(WIDGET(vthis));
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
	Widget_new(WIDGET(this));
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
	
	this->get_event				= SDL_WaitEvent;
	this->key_up         		= NULL;
	this->toogle_drag_on		= NULL;
	
	this->widget         		= NULL;
	this->widget_ontop         	= NULL;
	this->c_widget       		= 0;
	this->size_widget			= 0;
	this->last_widget_ind		= 0;
	
	this->mevent.x = this->mevent.y = 0;
	
	this->callback       		= NULL;
	this->has_exited			= false;
	this->mevent_handled		= false;
	this->mevent_switch			= false;
	this->drag_on        		= true;
	
	if (! BASE_SURFACE) {
		perr ee = E_NO_ERROR;
		fprintf(stderr, "%s[this=%p]: NOTICE: Starting SDL session.\n", __FUNCTION__, this);
		if ( (ee = Screen_MainInit()) ) {
			fprintf(stderr, "%s: Screen_MainInit() failed with error: %s\n", __FUNCTION__, perr_getName(ee));
			if (e) *e = ee;
			return this;
		}
	}
	WIDGET(this)->surf         = BASE_SURFACE;
	
	if (size_widget) {
		this->widget         = calloc(size_widget, sizeof(Widget*));
		this->size_widget    = size_widget;
	}
	
	SCREEN_COUNT++;
	return this;
}

perr Screen_addWidget(Screen *this, Widget *widget, usint x, usint y) {
	if (! widget) return E_INTRO_FAILED;
	if (this->c_widget == this->size_widget) {
		perr e;
		Widget** new_array = Static_growArray(	&e,							// error management
												this->widget, 				// array to grow
												&this->size_widget,			// current size
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
