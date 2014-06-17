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
	#include "Object.h"
	#include "StdDefinitions.h"
	#include "perr.h"

	
	/* Widget types (global) */
	enum widgettype {	IMAGE_TYPE=0,
						BUTTON_TYPE=1,
						TEXTBLOCK_TYPE=2,
						LABEL_TYPE=3,
						LABELIMAGE_TYPE=4,
						BUTTONIMAGE_TYPE=5,
						RECTANGLE_TYPE=6,
						HISTOGRAM_TYPE=7,
						WAVEDRAWBOX_TYPE=8,
						CONTAINER_TYPE=9,
						HISTSTRETCHGRAPH_TYPE=10
					};
	//~ 
	//~ struct Screen;
	//~ 
	struct Widget {
		Object 				object;					// Widget inherits from Object
		void				(*click_handler)(struct Widget*, struct Screen*);
		void				(*press_handler)(struct Widget*, struct Screen*);
		void				(*release_handler)(struct Widget*, struct Screen*);
		void				(*mouse_enter_handler)(struct Widget*, struct Screen*);
		SDL_Surface 		*surf;			// SDL object
		SDL_Rect 			pos;			// SDL position
		
		/* Some parameters pointers (obsolete) use widget.vparam and Widget_addParameter(Widget*, void *) instead */
		struct Widget		*parameter;		// pointer to any widget (used by mouse click handler)
		void				*void_parameter; // parameter pointer to what you want
		void				*void_parameter2;// parameter pointer to what you want
		
		/* Pointer to Screen specified cparam array */
		void 				**cparam;
		
		/* Array of void parameters (read-only) - to add void parameter use Widget_addParameter(Widget*, void *)
		 * which places given parameter on the end of vparam array */
		void 				**vparam;		/*read-only*/
		uint				vparam_size;	/*read-only*/
		uint				vparam_count;	/*read-only*/
		usint				maxx;
		usint				maxy;			// right-lower corner of widget
		//~ 
		uint				id;				// id works as simple widget tag, it is much useful sometimes, keep backward compatibility with FileBrowsePanel 
		bool				cparam_exist;
		widgettype  		type;			// type of widget
		bool 				draggable;		// if draggable 
		bool				dragging;		// true while dragging
		bool 				visible;		// if visible
		bool 				mevent;			// if widget itself changes while events (e.g. button hovered by mouse pointer)
		bool 				need_reload;	// whether need redraw
		
		uchar				mouse_state;	// key pressed same as in SDL
		bool				mouse_over;		// if mouse pointer over widget
		bool 				mouse_move_listen; // if widget itself changes while mouse move event (so far always false)
		
		bool				internal;		/** read-only **/
	};
	
	// Initialize Widget object with given type and child pointer
	// It is run from constructors of classes inheriting from Widget
	// allows to perform downcasting (for example from Widget to Image)
	//! @NOTE: vdestroy can be NULL, therefore Widget_vdestroy is used as a virtual destructor
	void Widget_init_type(Widget *widget, widgettype widget_type, void (*vdestroy) (void* vthis), const char *type);
	
	void Widget_draw(Widget *widget, Screen *screen, bool flip);
	
	void Widget_mevent(Widget *widget, Screen *screen);
	
	// add void parameter to vparam array, see widget.vparam field definition
	perr Widget_addParameter(Widget* widget, void *vparam, uint def_size);
	
	// copy constructor most of fields are copied but not all (see Widget.c)
	void Widget_copy(Widget *widget_dest, Widget *widget_src, bool copy_pos, bool copy_surf);
	
	// destructor called by classes inheriting from Widget
	void Widget_destroy(Widget *widget);
	
	char *Widget_toString(Widget *widget);
	
	//! Scale widget, creates new .surf, updates .pos.w, .pos.h, .maxx, .maxy
	void Widget_scale(Widget *widget, double xscale, double yscale, int smooth);
	
	//! Returns true if given widget pointer contains usint x,y absolute point (use .pos as reference)
	inline bool Widget_contains(Widget *widget, usint x, usint y);
	
	//! Updates .pos.x, .pos.y, .minx, .miny
	void Widget_setPosition(Widget *widget, usint minx, usint miny);

	//! Updates .pos.w and .pos.h
	void Widget_setSize(Widget *widget, usint width, usint height);

	//! Updates .pos.w, .pos.h, .maxx, .maxy
	void Widget_setSizeUpdatePos(Widget *widget, usint width, usint height);

	//! Updates .pos.x, .pos.y, .pos.w, .pos.h, .maxx, .maxy
	void Widget_setRect(Widget *widget, usint minx, usint miny, usint width, usint height);

	//! Updates .visible or call Container_setVisible()
	void Widget_setVisible(Widget *widget, bool vis);

	//! Gets center of widget (uses .pos as reference)
	void Widget_getCenter(Widget *widget, usint *cx, usint *cy);

	//! Sets center of widget (updates .pos.x, .pos.y, .maxx, .maxy
	void Widget_setCenter(Widget *widget, usint cx, usint cy);
	
	void Widget_printMemoryUsage();
#endif
