#ifndef SCREEN_H
#define SCREEN_H

#include "StdDefinitions.h"
#include "Widget.h"
#include "Types.h"
#include "perr.h"

#define VERBOSE_EVENTS	 0
#define VERBOSE2_EVENTS  1

extern const coClass *Screen_class;
#define SCREEN(VTHIS) ((Screen*)VTHIS)

/** Public definitions and typedefs **/
typedef struct ScreenBackground ScreenBackground;
struct ScreenBackground { 		// private struct
	Widget		*bg_widget;		// any Widget pointer if NULL is not drown
	u32			bgcolor;		// background RGB color
	u8			bg_mode;		// either: BG_STRETCH or BG_CENTERED
	b8			fillcolor;		// if true FillRect is called before bg_widget is drown
};

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
	u32					c_widget;
	u32					size_widget;
	u32					last_widget_ind;
	
	Point				mevent;
	b8					mevent_handled;
	b8 					mevent_switch;
	b8					drag_on;
	b8					has_exited;
};

/** Constructor, second parameter is optional error parameter pointer (recommended to use)
 * last parameter is optional count of widget to be placed on screen */
Screen* Screen_new(Screen *this, perr *e, u32 size_widget);

void Screen_vdestroy(void *vthis);

#endif
