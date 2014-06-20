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
	#include "../srcCommon/Object.h"
	#include "../srcCommon/StdDefinitions.h"
	#include "../srcCommon/Types.h"
	#include "../srcCommon/perr.h"
	
	extern const Type *Widget_t;
	inline const Type *Widget_gt(); // getter for Widget_t
	
	#define WIDGET(VTHIS) ((Widget*)VTHIS)
	
	struct Widget {
		Object			object;
		Widget			*parent;	// for Screen parent is NULL
		SDL_Surface		*surf;
		SDL_Rect		*srcrect;
		void			**vparam;
		
		MeventCallback	*mhandle;
		void			(*vrefresh)(void *vthis); /// to call this method use Widget_refresh() wrapper
		void			(*vmevent)(void *vthis, Screen *screen);
		
		SDL_Rect		relmin;
		
		uint			id;
		uint			vparam_size;
		uint			vparam_count;
		
		Point			relmax;
		usint			w;
		usint			h;
		
		uint16_t			flags;
			#define		WT_CPARAM_EXIST_M			0x0001
			#define		WT_DRAGGABLE_M				0x0002	/** if draggable **/
			#define		WT_DRAGGING_M			 	0x0004	/** true while dragging @OBSOLETE **/
			#define		WT_VISIBLE_M				0x0008	/** if visible **/
			#define		WT_NEED_REFRESH_M		 	0x0010	/** whether widget need refresh **/
			#define		WT_MOUSE_OVER_M				0x0020	/** if mouse pointer over widget **/
			#define		WT_HAS_USER_MEVENTS_M	 	0x0040	
			#define		WT_HAS_INTERNAL_MEVENTS_M	0x0080
			#define		WT_INTERNAL_M				0x0100	/** true when widget need to be deleted by parent container **/
															/** (only dynamic objects) **/
			#define		WT_INVALID_M				0x0200	/** when true widget IS NOT refreshed and blitted **/
			#define		WT_CONTAINER_M				0x0400	/** whether widget have Container class in inheriting tree **/
			#define		WT_SIZEPOS_CHANGED_M		0x0800	/** whether widget surface size or position have changed **/
															/** and after change was made call to Widget_setParentRefresh() **/
															/** this should be reseted by containers including screen **/
		uchar			mouse_state;	// (private) mouse button state same as in SDL
	};
	
	/** Do common initialization of direct super class and of current class object **/
	/** Constructor can be used by classes inheriting from current class           **/
	/** or by self class constructor after create this pointer                     **/
	inline void Widget_new2(Widget *this);
	
	/** Copy constructor (called by children classes copy constructors) **/
	void Widget_copy2(Widget *this, Widget *src);
	
	// destructor (called by inheriting classes destructors)
	inline void Widget_destroy(Widget *this);
	
	// virtual method vrefresh wrapper (do not directly call function pointer)
	inline void Widget_refresh(Widget *this);

	// whether widget contains relative point (x,y)
	inline bool Widget_contains(Widget *this, usint x, usint y);

	// blit widget surface onto widget.parent surface with error checking
	void Widget_draw(Widget *this);
	
	// Widget specified vmevent method implementation 
	// called e.g. by Containers to handle mevents like clicks on
	// Container border, background etc.
	void Widget_vmevent(void *vthis, Screen *screen);
	
	// Call to virtual vmevent method of widget with error checking
	inline void Widget_mevent(Widget *this, Screen *screen);

	// add void* parameter to widget at the end of this.vparam array
	perr Widget_addParameter(Widget* this, void *vparam, uint def_size);
	
	// get void* parameter from widget pointer PWT (doesn't matter of pointer type)
	// from IND index of Widget.vparam[] . Returns NULL on error
	// see also: checkPointers() method from Static.h
	#define	 Widget_fgetVparam(PWT, IND) 	(((PWT)&&(((Widget*)(PWT))->vparam)&&((IND)<(((Widget*)(PWT))->vparam_count)))?(((Widget*)(PWT))->vparam[(IND)]):(NULL))

	// set widget to be refreshed by parent screen
	// this method simply sets .need_refresh = true for this widget
	// and all of its ancestors (including Containers)
	// up to Screen widget
	inline void Widget_setRefresh(Widget *this);

	// does almost the same but starts setting .need_refresh=true
	// from this->parent, useful when this widget should only 
	// be reblitted onto parent widget surface
	inline void Widget_setParentRefresh(Widget *this);

	// Rescale widget - wrapper to zoomSurface() SDL function
	// method also does error checking and updates max positions
	// and size of widget
	void Widget_scale(Widget *this, double xscale, double yscale);
	
	// Rescale to given size
	#define SCALE_SIZE_TO_NONE		0
	#define SCALE_SIZE_TO_WIDTH		1
	#define SCALE_SIZE_TO_HEIGHT	2
	void Widget_scaleSize(Widget *this, usint new_w, usint new_h, uchar scale_size);

	// Set this.w, this.h of widget and updates max positions
	inline void Widget_setSize(Widget *this, usint w, usint h);
	
	// Set position of widget
	inline void Widget_setPosition(Widget *this, usint x, usint y);
	
	// Get absolute (relative to screen) coordinates of most top-left
	// point of widget. Widget can be embedded in any number of containers
	// or can be placed directly on screen.
	inline void Widget_getAbsMinPos(Widget *this, Point *p);
	
	// reset mouse state flags for widget (all button release)
	inline void Widget_mouseRelease(Widget *this);
	
	// add mouse event callback function
	void Widget_addMeventHandler(Widget *this, mevent_type type, void (*cb)(Widget*, Screen*), uint def_size);

	/** inline void Widget_drawTree(Widget *this);
	 *  Reblit @param this widget on @param this->parent widget surface 
	 *  then replace this := this->parent and do this until typeof(this)
	 *  not equals Screen_t then do SDL_Flip(this->surf)
	 * 
	 * This method can be useful for widgets which need to manually listen
	 * to SDL_Events e.g. drawing, dragging, mouse moving.
	 * 
	 * Note that this method does only simple rebliting of widgets surfaces.
	 * Custom method pseudo-code example can look like: 
	 * @code 
			void press_handler(Widget *this_wt, Screen *screen) {
				...
				Point abs;
				Widget_getAbsMinPos(this_wt, &abs); 	// get absolute position of this widget
				...										// prepare
				Screen_setWidgetTop(screen, this_wt);	// set widget on top (handle errors if needed)
				Screen_refresh(screen); 				// redraw all widgets on screen
				while (true) {
					while (SDL_PollEvent(&(screen->event))) { 
						if (screen->event.type == SDL_MOUSEMOTION) { // mouse moved/dragged
							// do sth with screen->event.motion.x screen->event.motion.y
							// substract from them abs.x and abs.y to get coordinates relative
							// to self widget surface
							
							// draw on self surface, refresh it, but remember not to change 
							// surface size and relative position Widget.relmin, Widget.relmax
							// due to Widget_drawTree() only blits surfaces
							// and any change will result in intersecting pictures
							
							// to make changes visible:
							Widget_drawTree(this_wt);
						}
						else {
							if (screen->event.type == SDL_MOUSEBUTTONUP) {
								Widget_mouseRelease(this_wt); // reset this_wt->mouse_state
								...							  // end with activities
								return;
							}
						}
					}
				}
	 * @endcode
	 **/
	inline void Widget_drawTree(Widget *this);
	
	//! Gets center of widget (uses .relmin, .w, .h as reference)
	void Widget_getCenter(Widget *this, usint *cx, usint *cy);

	//! Sets center of widget (updates .relmin.x, .relmin.y, .relmax.x, .relmax.y
	void Widget_setCenter(Widget *this, usint cx, usint cy);
	
	// position and size updating methods (NOTE: these methods doesn't set .need_refresh=true
	inline void  Widget_updateMaxX(Widget *this);			// .relmax.x = .relmin.x + .w - 1;
	inline void  Widget_updateMaxY(Widget *this);			// .relmax.y = .relmin.y + .h - 1;
	inline void  Widget_updateMaxXY(Widget *this);			// Widget_updateMaxX(); Widget_updateMaxY();
	inline void  Widget_updateMinX(Widget *this, usint x);	// .relmin.x = x; Widget_updateMaxX();
	inline void  Widget_updateMinY(Widget *this, usint y);	// .relmin.y = y; Widget_updateMaxY();
	inline void Widget_updateMinXY(Widget *this, usint x, usint y); // Widget_updateMinX(x); Widget_updateMinY(y);
	inline void  Widget_updateWidth(Widget *this, usint w);			// .w = w;
	inline void Widget_updateHeight(Widget *this, usint h);			// .h = h;
	inline void   Widget_updateSize(Widget *this, usint w, usint h);// .w = w; .h = h;
	
	/// flag setters
	#define		Widget_fsetCparamExist(PWT, SEL) 		(setFlag((Widget*)(PWT), SEL, WT_CPARAM_EXIST_M))
	#define		Widget_fsetDraggable(PWT, SEL) 			(setFlag((Widget*)(PWT), SEL, WT_DRAGGABLE_M))
	#define		Widget_fsetDragging(PWT, SEL) 			(setFlag((Widget*)(PWT), SEL, WT_DRAGGING_M))	/** @OBSOLETE **/
	#define		Widget_fsetVisible(PWT, SEL) 			(setFlag((Widget*)(PWT), SEL, WT_VISIBLE_M))
	#define		Widget_fsetNeedRefresh(PWT, SEL) 		(setFlag((Widget*)(PWT), SEL, WT_NEED_REFRESH_M))
	#define		Widget_fsetMouseOver(PWT, SEL) 			(setFlag((Widget*)(PWT), SEL, WT_MOUSE_OVER_M))
	#define		Widget_fsetHasUserMevents(PWT, SEL) 	(setFlag((Widget*)(PWT), SEL, WT_HAS_USER_MEVENTS_M))
	#define		Widget_fsetHasInternalMevents(PWT, SEL) (setFlag((Widget*)(PWT), SEL, WT_HAS_INTERNAL_MEVENTS_M))
	#define		Widget_fsetInternal(PWT, SEL) 			(setFlag((Widget*)(PWT), SEL, WT_INTERNAL_M))
	#define		Widget_fsetInvalid(PWT, SEL) 			(setFlag((Widget*)(PWT), SEL, WT_INVALID_M))
	#define		Widget_fsetContainer(PWT, SEL) 			(setFlag((Widget*)(PWT), SEL, WT_CONTAINER_M))
	#define		Widget_fsetSizePosChanged(PWT, SEL) 	(setFlag((Widget*)(PWT), SEL, WT_SIZEPOS_CHANGED_M))
	/// flag getters
	#define		Widget_fisCparamExist(PWT) 				(getFlag((Widget*)(PWT), WT_CPARAM_EXIST_M))
	#define		Widget_fisDraggable(PWT) 				(getFlag((Widget*)(PWT), WT_DRAGGABLE_M))
	#define		Widget_fisDragging(PWT) 				(getFlag((Widget*)(PWT), WT_DRAGGING_M))	/** @OBSOLETE **/
	#define		Widget_fisVisible(PWT) 					(getFlag((Widget*)(PWT), WT_VISIBLE_M))
	#define		Widget_fisNeedRefresh(PWT) 				(getFlag((Widget*)(PWT), WT_NEED_REFRESH_M))
	#define		Widget_fisMouseOver(PWT) 				(getFlag((Widget*)(PWT), WT_MOUSE_OVER_M))
	#define		Widget_fisHasUserMevents(PWT) 			(getFlag((Widget*)(PWT), WT_HAS_USER_MEVENTS_M))
	#define		Widget_fisHasInternalMevents(PWT)		(getFlag((Widget*)(PWT), WT_HAS_INTERNAL_MEVENTS_M))
	#define		Widget_fisInternal(PWT) 				(getFlag((Widget*)(PWT), WT_INTERNAL_M))
	#define		Widget_fisInvalid(PWT) 					(getFlag((Widget*)(PWT), WT_INVALID_M))
	#define		Widget_fisContainer(PWT) 				(getFlag((Widget*)(PWT), WT_CONTAINER_M))
	#define		Widget_fisSizePosChanged(PWT) 			(getFlag((Widget*)(PWT), WT_SIZEPOS_CHANGED_M))
	
	void Widget_print(Widget *this);
	void Widget_vprint(void *vthis);
	
	void Widget_p();
	
#endif
