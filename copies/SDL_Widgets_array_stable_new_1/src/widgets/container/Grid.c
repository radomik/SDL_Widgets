/*		[grid container]
 *      Grid.c - this file is part of SDL_Widgets
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
#include "PixelDrawBox.h"
#include "Object.h"
#include "Memory.h"
#include "Widget.h"
#include "Screen.h"
#include "Grid.h"
#include "Container.h"

#define BORDER_COLOR 	0x000000FF	// default border color RGBA

static const char *type = "Grid";

inline void Grid_dragItems(Grid *grid, signed short dx, signed short dy) {
	Widget *item_wt=&(grid->container.widget);
	usint x, y=0; 
	item_wt->pos.x += dx; 
	item_wt->pos.y += dy; 
	item_wt->maxx += dx; 
	item_wt->maxy += dy;  
	for (; y < grid->c_row; y++) {
		for (x = 0; x < grid->c_col; x++) {
			item_wt = grid->items[y][x].widget;
			if (item_wt) {
				if (item_wt->type == CONTAINER_TYPE) Container_dragItems((Container*)item_wt, dx, dy); 
				else { item_wt->pos.x+=dx; item_wt->maxx+=dx; item_wt->pos.y+=dy; item_wt->maxy+=dy; } 
			}
		}
	}
}

static inline void Grid_destroy_common(Grid *this, const char *fname) {
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", (fname)?(fname):"Grid_destroy_common", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	if (this->items) {
		usint i = 0; 
		for (; i < this->c_row; i++) free(this->items[i]);
		free(this->items);
		this->items = NULL;
		this->c_col = this->c_row = 0;
	}
	
	/*! Delete parent object !*/
	Container_destroy((Container*)this);
}

static void Grid_vdestroy(void *vthis) {
	Grid_destroy_common((Grid*)vthis, "Grid_vdestroy");
}

void Grid_destroy(Grid *this) {
	Grid_destroy_common(this, "Grid_destroy");
}

static inline void Grid_new_common(Grid *this, usint c_row, usint c_col, const char *fname) {
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", (fname)?(fname):"Grid_new_common", Object_getType((Object*)this), this);
	
	this->showBorder = false;
	this->bord_color = BORDER_COLOR;
	
	if ((! c_row) || (! c_col)) {
		this->c_row = this->c_col = 0;
		this->items = NULL;
	}
	else {
		this->items = (ContainerItem**) calloc(c_row, sizeof(ContainerItem*));
		usint i = 0; for (; i < c_row; i++) this->items[i] = (ContainerItem*) calloc(c_col, sizeof(ContainerItem));
		this->c_col = c_col;
		this->c_row = c_row;
	}
}

// Create Grid object
Grid* Grid_new(Grid *this, usint c_row, usint c_col) {
	if (! this) {
		fprintf(stderr, "Grid_new: Passed NULL this pointer. c_row=%hu, c_col=%hu\n", c_row, c_col);
		return NULL;
	} 
	Container_init_type((Container*)this, CGRID_TYPE, Grid_vdestroy, type);	// initialize parent Container class
	Grid_new_common(this, c_row, c_col, "Grid_new");
	this->type = GGRID_TYPE;
	return this;
}

// type constructor used by classes inheriting from Grid
//! @NOTE: Grid is not abstract class such as: Widget, Container, etc.
//! @NOTE: vdestroy can be NULL therefore Grid_vdestroy is used
void Grid_init_type(	Grid 			*grid, 
						gridtype 		grid_type,
						usint 			c_row, 
						usint 			c_col,
						void 			(*vdestroy) (void* vthis),
						const char		*type) {
	Container_init_type((Container*)grid, CGRID_TYPE, (vdestroy)?(vdestroy):Grid_vdestroy, type);	// initialize parent Container class
	Grid_new_common(grid, c_row, c_col, "Grid_init_type");
	grid->type  = grid_type;
}

void Grid_add(Grid *grid, Widget *widget, usint row, usint col,
						alignment halign, alignment valign,
						usint marg_top, usint marg_left, 
						usint marg_bot, usint marg_right) {
	if ((row < grid->c_row) && (col < grid->c_col)) {
		ContainerItem *item = &(grid->items[row][col]);
		uchar d;
		if (halign == ALIGN_CENTER) {	// if center calculate average of horizontal margineses
			marg_left += marg_right;
			d = marg_left & 1; 	// modulo 2
			marg_left 	>>= 1;
			marg_right 	=  marg_left;
			marg_right  += d;
		}
		if (valign == ALIGN_CENTER) {	// if center calculate average of vertical margineses
			marg_top += marg_bot;
			d = marg_top & 1; // modulo 2
			marg_top >>= 1;
			marg_bot =  marg_top;
			marg_bot += d;
		}
		item->halign 		= halign;
		item->valign 		= valign;
		item->margin_top    = marg_top;
		item->margin_left   = marg_left;
		item->margin_bottom = marg_bot;
		item->margin_right  = marg_right;
		item->widget        = widget;
	}
	else {
		fprintf(stderr, "Grid_add:Grid > index items[%hu][%hu] out of bounds rows=%hu, cols=%hu\n", row, col, grid->c_row, grid->c_col);
	}
}

void Grid_refresh(Grid *grid) {
	if ((! grid->c_row) || (! grid->c_col) || (! grid->items)) {
		fprintf(stderr, "Grid_refresh:Grid > Failed on condition: (! grid->c_row) || (! grid->c_col) || (! grid->items) [%hu,%hu,%p]\n",
						grid->c_row, grid->c_col, grid->items);
		grid->container.widget.visible = false;
		return;
	}
	
	//~ if (grid->type != GGRID_TYPE) {	// run child specific refresh method then refresh this Grid
		//~ if (grid->type == GPIXELDRAWBOX_TYPE) PixelDrawBox_refresh2((PixelDrawBox*) grid);
	//~ }
	
	
	ContainerItem 	*item = NULL;
	Container 		*container 	= &(grid->container);	// get parent container
	usint 			*maxw 		= calloc(grid->c_col, sizeof(usint));
	usint x, y, maxh, w, h, maxx=container->padx, maxy=container->pady;
	usint _y = container->pady + container->widget.pos.y;
	usint _x;
	
	/* Validates grid on Y axis and in the same time finds maxw[0...c_cols-1]
	 * which are max width of widgets in each column */
	for (y = 0; y < grid->c_row; y++) {			// foreach row
		maxh = 0;								// will find max height of widgets in row
		for (x = 0; x < grid->c_col; x++) {		// (1) foreach column [find maximums]
			item = &(grid->items[y][x]);		// get item from cell[y][x]
			if (item->widget) {					// if cell is occupied
				h = item->widget->pos.h + 		// find full height of cell
					item->margin_top +			// assuming that widget height
					item->margin_bottom;		// is valid
				if (h > maxh) maxh = h;			// replace maximum height in row if needed
				w = item->widget->pos.w +		// find full width of cell
					item->margin_left +			// assuming that widget width
					item->margin_right;			// is valid
				if (w > maxw[x])				// replace maximum width per column (global)
					maxw[x] = w;				// if needed
			}
		}
		for (x = 0; x < grid->c_col; x++) {		// (2) foreach column [validate row on Y axis]
			item = &(grid->items[y][x]);		// get item from cell[y][x]
			item->cell_rect.y = _y;
			//~ if (y == 0) {						// first row
				//~ item->cell_rect.y = 			// miny of cell_rect is 
					//~ container->widget.pos.y +	// container.miny + 
					//~ container->pady;			//	 container.pady
			//~ }
			//~ else {								// not first row
				//~ item->cell_rect.y = 			// miny of cell_rect is
					//~ grid->items[y-1][x].maxy; 	// previous cell maxy
			//~ }
			item->cell_rect.h = maxh;			// cell height equals max height in a row
			item->maxy = item->cell_rect.y + maxh;	// cell maxy = miny + height
			
			if (item->widget) {					// if cell is occupied
				if (item->valign == ALIGN_TOP) {// update widget pos.y and maxy
					item->widget->pos.y = 		// depending on vertical alignment and margins 
						item->cell_rect.y +		// widget.pos.y = cell_rect.y + margin_top
						item->margin_top;		// 
						item->widget->maxy = 	// and update widget.maxy as
						item->widget->pos.y + 	// widget.miny + widget.height
						item->widget->pos.h;	// assume that widget.height is valid
				}
				else {
					if (item->valign == ALIGN_BOTTOM) {
						item->widget->maxy = 	// valign BOTTOM, widget.maxy = 
							item->maxy - 		// 		cell.maxy - margin_bottom
							item->margin_bottom;//
						item->widget->pos.y =	// 		widget.pos.y = widget.maxy - widget.h
							item->widget->maxy -//
							item->widget->pos.h;//
					}
					else {						// default - vertical alignment center
						item->widget->pos.y = 					// widget.pos.y = 
							item->cell_rect.y +					// cell_rect.y +
							((maxh - item->widget->pos.h)>>1);	// (cell_height-widget.h)/2
						item->widget->maxy = 		// and update widget.maxy as
						item->widget->pos.y + 		// widget.miny + widget.height
						item->widget->pos.h;		// assume that widget.height is valid
					}
				}
			}
		}
		if (item) _y = item->maxy;
	}
	//!fprintf(stderr, "First for\n");
	//!for (y = 0; y < grid->c_row; y++) {
	//!	for (x = 0; x < grid->c_col; x++) {
	//!		item = &(grid->items[y][x]);
	//!		fprintf(stderr, "[%hu][%hu] item: %s\n", y, x, ContainerItem_toString(item));
	//!	}
	//!}
	
	
	/* Validates grid on X axis using calculated previously array maxw[0...c_cols-1] */
	for (y = 0; y < grid->c_row; y++) {			// foreach row
		_x = container->padx + container->widget.pos.x;
		for (x = 0; x < grid->c_col; x++) {		// foreach column
			item = &(grid->items[y][x]);		// get item from cell[y][x]
			item->cell_rect.x = _x;
			//~ if (x == 0) {						// first column
				//~ item->cell_rect.x = 			// minx of cell_rect is
					//~ container->widget.pos.x + 	// container.minx
					//~ container->padx;			// + container.padx 
			//~ }
			//~ else {								// column other than first
				//~ item->cell_rect.x =				// minx of cell_rect is 
					//~ grid->items[y][x-1].maxx;	// previous cell maxx
			//~ }
			item->cell_rect.w = maxw[x];		// width of cell is width of the widest cell in column
			item->maxx = maxw[x] +
				item->cell_rect.x;				// cell.maxx = cell.width+cell.minx
				
			if (item->maxy > maxy) maxy = item->maxy;	// find the greatest x,y dimension
			if (item->maxx > maxx) maxx = item->maxx;	// it will be most bottom-right corner of content
			_x = item->maxx;
			
			if (item->widget) {					// if cell is occupied
				item->widget->draggable = false; // there is no such thing like dragging inside Grid
				if (item->halign == ALIGN_LEFT) {// update pos.x and maxx of widget
					item->widget->pos.x = 		// depending on horizontal alignment and margins
						item->cell_rect.x + 	// HALIGN_LEFT:
						item->margin_left;		// widget.pos.x = cell_rect.x + margin_left
						item->widget->maxx = 	// and update widget.maxx as
						item->widget->pos.x + 	// widget.minx + widget.width
						item->widget->pos.w;	// assume that widget.width is valid
				}
				else {
					if (item->halign == ALIGN_RIGHT) {
						item->widget->maxx = 	// HALIGN_RIGHT:
							item->maxx - 		// widget.maxx = cell_rect.maxx - margin_right
							item->margin_right;	//
						item->widget->pos.x = 	// widget.pos.x = widget.maxx - widget.pos.w
							item->widget->maxx - 
							item->widget->pos.w;
					}
					else {						// HALIGN_CENTER
						item->widget->pos.x = 	// widget.pos.x = cell_rect.x + 
							item->cell_rect.x + //		maxw_in_col - widget.pos.h
							((maxw[x] - item->widget->pos.w)>>1);
						item->widget->maxx = 	// and update widget.maxx as
						item->widget->pos.x + 	// widget.minx + widget.width
						item->widget->pos.w;	// assume that widget.width is valid
					}
				}
				if (item->widget->type == CONTAINER_TYPE) {	// if widget is a container
					Container_refresh((Container*)item->widget);
												// refresh container embedded in this grid
				}
			}
		}
	}
	
	free(maxw);
	
	//!fprintf(stderr, "Second for\n");
	//!for (y = 0; y < grid->c_row; y++) {
	//!	for (x = 0; x < grid->c_col; x++) {
	//!		item = &(grid->items[y][x]);
	//!		fprintf(stderr, "[%hu][%hu] item: %s\n", y, x, ContainerItem_toString(item));
	//!	}
	//!}
	
	/* 3. Assuming that grid minx and miny are set externally
	 * now find grid maxx, maxy, width and height */
	Widget *widget = &(container->widget);
	
	widget->maxx  = maxx + container->padx;
	widget->maxy  = maxy + container->pady;
	widget->pos.w = widget->maxx - widget->pos.x;
	widget->pos.h = widget->maxy - widget->pos.y;
	
	
	Container_createSurfaceIfNeeded(container);
	
	
	if (grid->showBorder) { // if set to draw grid lines
		/* Draw vertical lines */
		h = widget->pos.h - (container->pady<<1);	// line height = container.widget.pos.h - container.pady*2
		
		w = widget->pos.x;							// is absoulute x dimension of minx of this grid
		
		/* Draw last yline */
		y = container->pady;						// get miny of first row cell rectangles (relative to grid surface)
		h += y;										// y2 of line is y1 + line height
		vlineColor(widget->surf, grid->items[0][grid->c_col-1].maxx - w, y, h, grid->bord_color);	// draw last line
		
		for (x = 0; x < grid->c_col; x++)
			vlineColor(widget->surf, grid->items[0][x].cell_rect.x - w, y, h, grid->bord_color);	// draw next lines
		
		
		/* Draw horizontal lines */
		h = widget->pos.y;							// is absoulute y dimension of miny of this grid
		
		w = widget->pos.w - (container->padx<<1);	// line width = container.widget.pos.w - container.padx*2
		
		/* Draw last xline */
		x = container->padx;						// get minx of first col cell rectangles (relative to grid surface)
		w += x;										// x2 of line is x1 + line width
		hlineColor(widget->surf, x, w, grid->items[grid->c_row-1][0].maxy - h, grid->bord_color);	// draw last line
		
		for (y = 0; y < grid->c_row; y++)
			hlineColor(widget->surf, x, w, grid->items[y][0].cell_rect.y - h, grid->bord_color);		// draw next line
	}
}

void Grid_draw(Grid *grid, Screen *screen, bool flip) {
	SDL_Surface *sscreen = screen->screen;
	Widget *widget = &(grid->container.widget);
	if (widget->visible) {		// draw Grid background
		SDL_BlitSurface(widget->surf, NULL, sscreen, &(widget->pos));
		widget->need_reload = false;
	}
		
	usint x, y;
	
	for (y = 0; y < grid->c_row; y++) {
		for (x = 0; x < grid->c_col; x++) {
			widget = grid->items[y][x].widget;
			if (widget) {
				if (widget->visible) {
					if (widget->type == CONTAINER_TYPE) {
						Container_draw((Container*)widget, screen, flip);
					}
					else {
						SDL_BlitSurface(widget->surf, NULL, sscreen, &(widget->pos));
						widget->need_reload = false;
					}
				}
			}
		}
	}
	if (flip) SDL_Flip(sscreen);
}

void Grid_mevent(Grid *grid, Screen *screen) {
	Widget *widget;
	usint x, y;
	
	for (y = 0; y < grid->c_row; y++) {
		for (x = 0; x < grid->c_col; x++) {
			widget = grid->items[y][x].widget;
			//!fprintf(stderr, "Grid_mevent[%s] Pass mevent to %s\n", Grid_toString(grid), Widget_toString(widget));
			if (widget) {
				if (widget->type == CONTAINER_TYPE)
					Container_mevent((Container*)widget, screen);
				else
					Widget_mevent(widget, screen);
				//!fprintf(stderr, "\tevent_handled=%d\n", screen->event_handled);
				if (screen->event_handled) return;
			}
		}
	}
	
	widget = &(grid->container.widget);
	if ((widget->draggable) || (widget->mevent)) {	//handle events (mainly dragging for container itself)
		Widget_mevent(widget, screen);
	}
}

inline void Grid_setVisible(Grid *grid, bool vis) { 
	grid->container.widget.visible = vis; 
	Widget *widget; 
	usint x, y=0; 
	for (; y<grid->c_row; y++) { 
		for (x=0; x < grid->c_col; x++) { 
			widget = grid->items[y][x].widget; 
			if (widget) { 
				if (widget->type == CONTAINER_TYPE) Container_setVisible((Container*)widget, vis); 
				else widget->visible=vis; 
			} 
		} 
	} 
}

static char str_id[64];
char *Grid_toString(Grid *grid) {
	if (! grid) return "grid=NULL";
	snprintf(str_id, 64, "GRID(%s): c_row=%hu, c_col=%hu", 
		Object_getType((Object*)grid), grid->c_row, grid->c_col);
	return str_id;
}
