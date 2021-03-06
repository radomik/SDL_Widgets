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
#include "Static.h"
#include "Memory.h"
#include "Container.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = Widget_vdestroy,
	.toString = Container_vtoString
};

/** Methods overriden from interface IWidget */
static const IWidget override_IWidget = {
	.mevent 	= Widget_vmevent,
	.draw 		= Widget_vdraw,
	.refresh	= Widget_vrefresh,
	.drag		= Widget_vdrag,
	.setVisible	= Widget_vsetVisible
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IWidget
};

static coClass type = {
	.size	= sizeof(Container),
	.name	= "Container",
	.vtable	= vtable
};
const coClass *Container_class = &type;

Container* Container_new(Container *this) {
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	
	Widget_new(WIDGET(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	WIDGET(this)->is_container = true; 
	this->padx   = 0;
	this->pady   = 0;
	this->color  = W_DEFAULT_BGCOLOR;
	return this;
}

void Container_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	
	/*! Delete parent object !*/
	Widget_vdestroy(vthis);
}

void Container_setPadding(Container *this, u16 padx, u16 pady) {
	this->padx = padx; this->pady = pady; 
}

const char *Container_alignmentToString(alignment align) {
	switch (align) {
		case ALIGN_TOP :	return "TOP";
		case ALIGN_BOTTOM: 	return "BOTTOM";
		case ALIGN_CENTER: 	return "CENTER";
		case ALIGN_LEFT: 	return "LEFT";
		case ALIGN_RIGHT: 	return "RIGHT";
		default: 			return "UNKNOWN";
	}
}

void Container_createSurfaceIfNeeded(Container *this) {
	/* Create container surface */
	Widget 	*widget = WIDGET(this);
	b8	create_surf = true;
	
	if (widget->surf) {		// container surface already exist, delete it and recreate if is smaller
		if ((widget->surf->w < widget->pos.w) || (widget->surf->w < widget->pos.w))		// surface exists and is smaller
			SDL_FreeSurface(widget->surf);												// than needed
		else
			create_surf = false;	// surface exists and is at least as big as needed
	}
	
	if (create_surf) {
		//fprintf(stderr, "%s: Creating surface of size w=%hu, h=%hu\n", __FUNCTION__, widget->pos.w, widget->pos.h);
		widget->surf = Static_newSurface(widget->pos.w, widget->pos.h);
	}
	if (! widget->surf) {
		fprintf(stderr, "Container_createSurfaceIfNeeded: CreateRGBSurface of container failed: %s\n", SDL_GetError());
		widget->visible = false;	// only container background not visible (items are separate widgets)
		return;
	}
	
	if (SDL_FillRect(widget->surf, NULL, this->color)) {
		fprintf(stderr, "Container_createSurfaceIfNeeded: Failed to fill background surface (FillRect)\n");
		widget->visible = false;
		return;
	}
	widget->visible     = true;
	widget->need_reload = true;
	//fprintf(stderr, "%s: Surface size is w=%hu, h=%hu\n", __FUNCTION__, widget->surf->w, widget->surf->h);
}

static char str_id[750];
const char *ContainerItem_toString(const ContainerItem *item) {
	
	if (! item) return "container_item=NULL";
	snprintf(str_id, sizeof(str_id), "ContainerItem: widget=%s\n\t\
marginTLBR=[%hu,%hu,%hu,%hu], halign=%s, valign=%s, cell_rectXYWH=[%hu,%hu,%hu,%hu], cell_rect_MX,MY=(%hu,%hu)",
					(item->widget) ? Widget_toString(item->widget) : "(null)",
					item->margin_top, item->margin_left, item->margin_bottom,
					item->margin_right, Container_alignmentToString(item->halign),
					Container_alignmentToString(item->valign), item->cell_rect.x,
					item->cell_rect.y, item->cell_rect.w, item->cell_rect.h,
					item->maxx, item->maxy);
	
	return str_id;
}

const char *Container_vtoString(const void *vthis) {
	const Container *this = CONTAINER(vthis);
	snprintf(str_id, sizeof(str_id), "Container(%s): color=0x%X, padx=%hu, pady=%hu", 
		classname(this), this->color, this->padx, this->pady);
	return str_id;
}
