/*		[Widget is parent class for many widgets and containers (shouldn't be instantined)]
 *      Widget.h - this file is part of SDL_Widgets
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

#ifndef _Widget_h_
	#define _Widget_h_
	#include "StdDefinitions.h"
	#include "IWidget.h"
	#include "perr.h"

	extern const coClass *Widget_class;
	#define WIDGET(VTHIS) ((Widget*)VTHIS)

	struct Widget {
		coObject 			_super;					// Widget inherits from Object
		void				(*click_handler)(Widget*, Screen*);
		void				(*press_handler)(Widget*, Screen*);
		void				(*release_handler)(Widget*, Screen*);
		void				(*mouse_enter_handler)(Widget*, Screen*);
		void				(*mouse_exit_handler)(Widget*, Screen*);
		
		struct {	// these events are only enabled when .mevent == true
			void				(*click)(Widget*, Screen*);
			void				(*press)(Widget*, Screen*);
			void				(*release)(Widget*, Screen*);
			void				(*mouse_enter)(Widget*, Screen*);
			void				(*mouse_exit)(Widget*, Screen*);
		} mevent_internal;
		
		SDL_Surface 	*surf;			// SDL object
		SDL_Rect 		pos;			// SDL position
		
		/* Some parameters pointers (obsolete) use widget.vparam and Widget_addVParam(Widget*, void *) instead */
		struct Widget	*parameter;		// pointer to any widget (used by mouse click handler)
		void			*void_parameter; // parameter pointer to what you want
		
		/* Pointer to Screen specified cparam array */
		void 			**cparam;
		
		/* Array of void parameters (read-only) - to add void parameter use Widget_addVParam(Widget*, void *)
		 * which places given parameter on the end of vparam array */
		void 			**vparam;		/*read-only*/
		u32				id;				// id works as simple widget tag, it is much useful sometimes, keep backward compatibility with FileBrowsePanel 
		u32				vparam_size;	/*read-only*/
		u32				vparam_count;	/*read-only*/
		u16				maxx;
		u16				maxy;			// right-lower corner of widget
		u16				stx, sty;		// for dragging
		//~ 
		
		u8				mouse_state;	// key pressed same as in SDL
		
		
		b8				cparam_exist : 1;
		b8 				draggable : 1;		// if draggable 
		b8				dragging : 1;		// true while dragging
		b8 				visible : 1;		// if visible
		b8 				mevent : 1;			// if widget itself changes while events (e.g. button hovered by mouse pointer)
		b8 				need_reload : 1;	// whether need redraw
		
		
		b8				mouse_over : 1;		// if mouse pointer over widget
		b8 				mouse_move_listen : 1; // if widget itself changes while mouse move event (so far always false)
		b8				is_container : 1;
		b8				internal : 1; 		/** read-only **/
	};
	
	/** Default constructor */
	Widget* Widget_new(Widget *this);
	
	/** Copy constructor */
	Widget* Widget_copy(Widget *this, const Widget *src, b8 copy_pos, b8 copy_surf);
	
	/** Destructor (call this method only from derived classes destructors) */
	void Widget_vdestroy(void *vthis);
	
	/** ### Default virtual methods implementations ### */
	
	/// mouse event handler [ default virtual method implementation ]
	void Widget_vmevent(void *vthis, Screen *screen);
	
	/// draw widget [ default virtual method implementation ]
	void Widget_vdraw(void *vthis, Screen *screen, b8 flip);
	
	/// refresh widget [ default virtual method implementation ]
	void Widget_vrefresh(void *vthis);
	
	/// drag widget [ default virtual method implementation ]
	void Widget_vdrag(void *vthis, s16 dx, s16 dy);
	
	/// change visibility [ default virtual method implementation ]
	inline void Widget_vsetVisible(void *vthis, b8 vis);
	
	/** ### Wrappers to the most current virtual methods implementations ### */
	
	/// mouse event handler [ virtual method implementation ]
	#define Widget_mevent(VTHIS, SCREEN)	 		( IWidget_mevent(VTHIS, SCREEN) )
	
	/// draw widget [ virtual method implementation ]
	#define Widget_draw(VTHIS, SCREEN, FLIP) 		( IWidget_draw(VTHIS, SCREEN, FLIP) )
	
	/// refresh widget [ virtual method implementation ]
	#define Widget_drag(VTHIS, DX, DY)				( IWidget_drag(VTHIS, DX, DY) )
	
	/// drag widget [ virtual method implementation ]
	#define Widget_refresh(VTHIS) 					( IWidget_refresh(VTHIS) )
	
	/// change visibility [ virtual method implementation ]
	#define Widget_setVisible(VTHIS, VIS) 			( IWidget_setVisible(VTHIS, VIS) )

	/**/
	
	// add void parameter to vparam array, see widget.vparam field definition
	perr Widget_addVParam(Widget* this, void *vparam, u32 def_size);
	
	const char *Widget_vtoString(const void *vthis);
	const char *Widget_toString(const Widget* this);
	
	//! Scale widget, creates new .surf, updates .pos.w, .pos.h, .maxx, .maxy
	void Widget_scale(Widget *this, double xscale, double yscale, int smooth);
	
	//! Returns true if given widget pointer contains u16 x,y absolute point (use .pos as reference)
	inline b8 Widget_contains(const Widget *this, u16 x, u16 y);
	
	//! Updates .pos.x, .pos.y, .minx, .miny
	void Widget_setPosition(Widget *this, u16 minx, u16 miny);

	//! Updates .pos.w and .pos.h
	void Widget_setSize(Widget *this, u16 width, u16 height);

	//! Updates .pos.w, .pos.h, .maxx, .maxy
	void Widget_setSizeUpdatePos(Widget *this, u16 width, u16 height);

	//! Updates .pos.x, .pos.y, .pos.w, .pos.h, .maxx, .maxy
	void Widget_setRect(Widget *this, u16 minx, u16 miny, u16 width, u16 height);

	//! Gets center of widget (uses .pos as reference)
	void Widget_getCenter(const Widget *this, u16 *cx, u16 *cy);

	//! Sets center of widget (updates .pos.x, .pos.y, .maxx, .maxy
	void Widget_setCenter(Widget *this, u16 cx, u16 cy);
	
	/// widget->maxx        = widget->pos.x + widget->pos.w - 1;
	/// widget->maxy        = widget->pos.y + widget->pos.h - 1;
	void Widget_updateMaxXY(Widget *this);
#endif
