/*		[parent class for any container, shouldn't be instantined]
 *      Container.c - this file is part of SDL_Widgets
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
#include "Object.h"
#include "Static.h"
#include "Memory.h"
#include "Container.h"
#include "StackList.h"
#include "Grid.h"
#include "Widget.h"


// constructor called by inheriting classes
//! @NOTE: vdestroy can be NULL, therefore Widget_vdestroy is used as a virtual destructor
//! @NOTE: Container_vdestroy is never used because it has nothing to destroy
void Container_init_type(	Container 			*container,
							enum containertype 	container_type,
							void 				(*vdestroy) (void* vthis),
							const char			*type
							) {
	Widget_init_type((Widget*)container, CONTAINER_TYPE, vdestroy, type);	// initialize parent Widget class
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "Container_init_type", Object_getType((Object*)container), container);
	
	container->type  = container_type;
	
	/* Default fields values */
	container->padx   = 0;
	container->pady   = 0;
	container->color  = W_DEFAULT_BGCOLOR;
}

/** Destructor called by inheriting classes */
void Container_destroy(Container *this) {
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "Container_destroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	// is empty
	
	/*! Delete parent object !*/
	Widget_destroy((Widget*)this);
}

void Container_dragItems(Container *container, signed short dx, signed short dy) {
	switch (container->type) {
		case CSTACKLIST_TYPE: StackList_dragItems((StackList*)container, dx, dy); return;
		case CGRID_TYPE: 	  Grid_dragItems((Grid*)container, dx, dy); return;
	}
}

void Container_draw(Container *container, Screen *screen, bool flip) {
	switch (container->type) {
		case CSTACKLIST_TYPE: StackList_draw((StackList*)container, screen, flip); return;
		case CGRID_TYPE: 	  Grid_draw((Grid*)container, screen, flip); return;
	}
}
//~ 
void Container_mevent(Container *container, Screen *screen) {
	switch (container->type) {
		case CSTACKLIST_TYPE: StackList_mevent((StackList*)container, screen); return;
		case CGRID_TYPE: 	  Grid_mevent((Grid*)container, screen); return;
	}
}

void Container_refresh(Container *container) {
	switch (container->type) {
		case CSTACKLIST_TYPE:
			StackList_validate((StackList*)container);
			StackList_refresh((StackList*)container); 
			return;
		case CGRID_TYPE: 	  Grid_refresh((Grid*)container); return;
	}
}

void Container_setVisible(Container *container, bool vis) {
	switch (container->type) {
		case CSTACKLIST_TYPE: StackList_setVisible((StackList*)container, vis); return;
		case CGRID_TYPE: 	  Grid_setVisible((Grid*)container, vis); return;
	}
}

inline void Container_setPadding(Container *container, usint padx, usint pady) {
	container->padx = padx; container->pady = pady; 
}

char *Container_alignmentToString(alignment align) {
	switch (align) {
		case ALIGN_TOP :	return "TOP";
		case ALIGN_BOTTOM: 	return "BOTTOM";
		case ALIGN_CENTER: 	return "CENTER";
		case ALIGN_LEFT: 	return "LEFT";
		case ALIGN_RIGHT: 	return "RIGHT";
		default: 			return "UNKNOWN";
	}
}

void Container_createSurfaceIfNeeded(Container *container) {
	/* Create container surface */
	Widget 	*widget = &(container->widget);
	bool	create_surf = true;
	
	/* Create container surface 
	//!fprintf(stderr, "Grid_refresh:Grid > surface properties: %s\n", Widget_toString(widget));
	widget->surf = Static_NewSurface(widget->pos.w, widget->pos.h);
	if (! widget->surf) {
		fprintf(stderr, "Grid_refresh:Grid> CreateRGBSurface of container failed: %s\n", SDL_GetError());
		widget->visible = false;	// only container background not visible (items are separate widgets)
		return;
	}
	
	if (SDL_FillRect(widget->surf, NULL, container->color)) {
		fprintf(stderr, "Grid_refresh:Grid> Failed to fill background surface (FillRect)\n");
		widget->visible = false;
		return;
	}*/
	
	if (widget->surf) {		// container surface already exist, delete it and recreate if is smaller
		if ((widget->surf->w < widget->pos.w) || (widget->surf->w < widget->pos.w))		// surface exists and is smaller
			SDL_FreeSurface(widget->surf);												// than needed
		else
			create_surf = false;	// surface exists and is at least as big as needed
	}
	
	if (create_surf)
		widget->surf = Static_NewSurface(widget->pos.w, widget->pos.h);
	if (! widget->surf) {
		fprintf(stderr, "Container::Container_createSurfaceIfNeeded()> CreateRGBSurface of container failed: %s\n", SDL_GetError());
		widget->visible = false;	// only container background not visible (items are separate widgets)
		return;
	}
	
	if (SDL_FillRect(widget->surf, NULL, container->color)) {
		fprintf(stderr, "Container::Container_createSurfaceIfNeeded()> Failed to fill background surface (FillRect)\n");
		widget->visible = false;
		return;
	}
	widget->visible     = true;
	widget->need_reload = true;
}

static char str_id[600];
char *ContainerItem_toString(ContainerItem *container_item) {
	if (! container_item) return "container_item=NULL";
	snprintf(str_id, 600, "ContainerItem: widget=%s, margins=[%hu,%hu,%hu,%hu], halign=%s, valign=%s, cell_rect=[%hu,%hu,%hu,%hu], cell_max=(%hu,%hu)",
					(container_item->widget) ? Widget_toString(container_item->widget) : "(null)",
					container_item->margin_top, container_item->margin_left, container_item->margin_bottom,
					container_item->margin_right, Container_alignmentToString(container_item->halign),
					Container_alignmentToString(container_item->valign), container_item->cell_rect.x,
					container_item->cell_rect.y, container_item->cell_rect.w, container_item->cell_rect.h,
					container_item->maxx, container_item->maxy);
	
	return str_id;
}

char *Container_toString(Container *container) {
	if (! container) return "container=NULL";
	/* This ought to be no more than 128 chars see Widget_toString() */	
	snprintf(str_id, 600, "Container(%s): color=0x%X, padx=%hu, pady=%hu", 
	Object_getType((Object*)container),
	container->color, container->padx, container->pady);
	return str_id;
}
