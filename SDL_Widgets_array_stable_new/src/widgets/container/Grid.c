/*		[this container]
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
#include "Memory.h"
#include "Screen.h"
#include "Static.h"
#include "Grid.h"

static const void* vtable[] = {
	Grid_vdestroy,
	Grid_vmevent,
	Grid_vdraw,
	Grid_vrefresh,
	Grid_vdrag,
	Grid_vsetVisible
};

static coClass type = {
	.size	= sizeof(Grid),
	.name	= "Grid",
	.vtable	= vtable
};
const coClass *Grid_class = &type;

#define BORDER_COLOR 	0x000000FF	// default border color RGBA

void Grid_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	if (GRID(vthis)->items) {
		u16 i = 0; 
		for (; i < GRID(vthis)->c_row; i++) free(GRID(vthis)->items[i]);
		free(GRID(vthis)->items);
		GRID(vthis)->items = NULL;
		GRID(vthis)->c_col = GRID(vthis)->c_row = 0;
	}
	free(GRID(vthis)->maxw); GRID(vthis)->maxw = NULL;
	
	/*! Delete parent object !*/
	Container_vdestroy(CONTAINER(vthis));
}

void Grid_vmevent(void *vthis, Screen *screen) {
	Widget *widget;
	u16 x, y;
	
	for (y = 0; y < GRID(vthis)->c_row; y++) {
		for (x = 0; x < GRID(vthis)->c_col; x++) {
			widget = GRID(vthis)->items[y][x].widget;
			if (widget) {
				Widget_mevent(widget, screen);
				if (screen->event_handled) return;
			}
		}
	}
	
	Widget_vmevent(vthis, screen);
}


void Grid_vdraw(void *vthis, Screen *screen, b8 flip) {
	Widget *widget;
	u16 x, y;
	
	Widget_vdraw(vthis, screen, false);
	
	for (y = 0; y < GRID(vthis)->c_row; y++) {
		for (x = 0; x < GRID(vthis)->c_col; x++) {
			widget = GRID(vthis)->items[y][x].widget;
			if (widget) {
				Widget_draw(widget, screen, false);
			}
		}
	}
	
	if (flip) Screen_flip(screen);
}

void Grid_vrefresh(void *vthis) {
	Grid *this = GRID(vthis);
	
	if ((! this->c_row) || (! this->c_col) || (! this->items)) {
		fprintf(stderr, "Grid_refresh: Failed on condition: (! this->c_row) || (! this->c_col) || (! this->items) [%hu,%hu,%p]\n",
						this->c_row, this->c_col, this->items);
		WIDGET(this)->visible = false;
		return;
	}
	
	memset(this->maxw, 0, this->c_col * sizeof(u16));
	
	ContainerItem 	*item 		= NULL;
	u16				*maxw 		= this->maxw;
	u16 x, y, maxh, w, h, maxx=CONTAINER(this)->padx, maxy=CONTAINER(this)->pady;
	u16 _y = CONTAINER(this)->pady + WIDGET(vthis)->pos.y;
	u16 _x;
	
	/* Validates grid on Y axis and in the same time finds maxw[0...c_cols-1]
	 * which are max width of widgets in each column */
	for (y = 0; y < this->c_row; y++) {			// foreach row
		maxh = 0;								// will find max height of widgets in row
		for (x = 0; x < this->c_col; x++) {		// (1) foreach column [find maximums]
			item = &this->items[y][x];		// get item from cell[y][x]
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
		for (x = 0; x < this->c_col; x++) {		// (2) foreach column [validate row on Y axis]
			item = &(this->items[y][x]);		// get item from cell[y][x]
			item->cell_rect.y = _y;
			item->cell_rect.h = maxh;			// cell height equals max height in a row
			item->maxy = item->cell_rect.y + maxh - 1;	// cell maxy = miny + height - 1
			
			if (item->widget) {					// if cell is occupied
				if (item->valign == ALIGN_TOP) {// update widget pos.y and maxy
					item->widget->pos.y = 		// depending on vertical alignment and margins 
						item->cell_rect.y +		// widget.pos.y = cell_rect.y + margin_top
						item->margin_top;		// 
						item->widget->maxy = 	// and update widget.maxy as
						item->widget->pos.y + 	// widget.miny + widget.height -1
						item->widget->pos.h - 1;// assume that widget.height is valid
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
						item->widget->pos.y + 		// widget.miny + widget.height -1
						item->widget->pos.h - 1;	// assume that widget.height is valid
					}
				}
			}
		}
		if (item) _y = item->maxy;
	}
	//!fprintf(stderr, "First for\n");
	//!for (y = 0; y < this->c_row; y++) {
	//!	for (x = 0; x < this->c_col; x++) {
	//!		item = &(this->items[y][x]);
	//!		fprintf(stderr, "[%hu][%hu] item: %s\n", y, x, ContainerItem_toString(item));
	//!	}
	//!}
	
	
	/* Validates grid on X axis using calculated previously array maxw[0...c_cols-1] */
	for (y = 0; y < this->c_row; y++) {					// foreach row
		_x = CONTAINER(this)->padx + WIDGET(this)->pos.x;
		for (x = 0; x < this->c_col; x++) {				// foreach column
			item = &this->items[y][x];					// get item from cell[y][x]
			item->cell_rect.x = _x;
			item->cell_rect.w = maxw[x];				// width of cell is width of the widest cell in column
			item->maxx = maxw[x] +
				item->cell_rect.x - 1;					// cell.maxx = cell.width+cell.minx
				
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
						item->widget->pos.x + 	// widget.minx + widget.width -1
						item->widget->pos.w - 1;// assume that widget.width is valid
					}
				}
				if (item->widget->is_container) {
					Widget_refresh(item->widget);
				}
			}
		}
	}
	
	free(maxw);
	
	//!fprintf(stderr, "Second for\n");
	//!for (y = 0; y < this->c_row; y++) {
	//!	for (x = 0; x < this->c_col; x++) {
	//!		item = &(this->items[y][x]);
	//!		fprintf(stderr, "[%hu][%hu] item: %s\n", y, x, ContainerItem_toString(item));
	//!	}
	//!}
	
	/* 3. Assuming that grid minx and miny are set externally
	 * now find grid maxx, maxy, width and height */
	
	WIDGET(this)->maxx  = maxx + CONTAINER(this)->padx;
	WIDGET(this)->maxy  = maxy + CONTAINER(this)->pady;
	WIDGET(this)->pos.w = WIDGET(this)->maxx - WIDGET(this)->pos.x;
	WIDGET(this)->pos.h = WIDGET(this)->maxy - WIDGET(this)->pos.y;
	
	
	Container_createSurfaceIfNeeded(CONTAINER(this));
	
	
	if (this->showBorder) { // if set to draw grid lines
		/* Draw vertical lines */
		h = WIDGET(this)->pos.h - (CONTAINER(this)->pady<<1);	// line height = container.widget.pos.h - container.pady*2
		
		w = WIDGET(this)->pos.x;							// is absoulute x dimension of minx of this grid
		
		/* Draw last yline */
		y = CONTAINER(this)->pady;							// get miny of first row cell rectangles (relative to grid surface)
		h += y;												// y2 of line is y1 + line height
		vlineColor(WIDGET(this)->surf, this->items[0][this->c_col-1].maxx - w, y, h, this->bord_color);	// draw last line
		
		for (x = 0; x < this->c_col; x++)
			vlineColor(WIDGET(this)->surf, this->items[0][x].cell_rect.x - w, y, h, this->bord_color);	// draw next lines
		
		
		/* Draw horizontal lines */
		h = WIDGET(this)->pos.y;								// is absoulute y dimension of miny of this grid
		
		w = WIDGET(this)->pos.w - (CONTAINER(this)->padx<<1);	// line width = container.widget.pos.w - container.padx*2
		
		/* Draw last xline */
		x = CONTAINER(this)->padx;					// get minx of first col cell rectangles (relative to grid surface)
		w += x;										// x2 of line is x1 + line width
		hlineColor(WIDGET(this)->surf, x, w, this->items[this->c_row-1][0].maxy - h, this->bord_color);	// draw last line
		
		for (y = 0; y < this->c_row; y++)
			hlineColor(WIDGET(this)->surf, x, w, this->items[y][0].cell_rect.y - h, this->bord_color);	// draw next line
	}
}

void Grid_vdrag(void *vthis, s16 dx, s16 dy) {
	Widget *item_wt;
	u16 x, y=0; 
	
	Widget_vdrag(vthis, dx, dy);
	
	for (; y < GRID(vthis)->c_row; y++) {
		for (x = 0; x < GRID(vthis)->c_col; x++) {
			item_wt = GRID(vthis)->items[y][x].widget;
			if (item_wt) {
				Widget_drag(item_wt, dx, dy);
			}
		}
	}
}

void Grid_vsetVisible(void *vthis, b8 vis) { 
	Widget *item_wt;
	u16 x, y=0; 
	
	Widget_vsetVisible(vthis, vis);
	
	for (; y < GRID(vthis)->c_row; y++) {
		for (x = 0; x < GRID(vthis)->c_col; x++) {
			item_wt = GRID(vthis)->items[y][x].widget;
			if (item_wt) {
				Widget_setVisible(item_wt, vis);
			}
		}
	} 
}

// Create Grid object
Grid* Grid_new(Grid *this, u16 c_row, u16 c_col) {
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: c_row=%hu, c_col=%hu\n", __FUNCTION__, c_row, c_col);
		return NULL;
	}
	
	Container_new(CONTAINER(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	this->showBorder = false;
	this->bord_color = BORDER_COLOR;
	
	this->c_col = c_col ? c_col : 1;
	this->c_row = c_row ? c_row : 1;

	fprintf(stderr, "Grid_new[this=%p]: Allocating this->maxw of size: %lu bytes\n", this, this->c_col * sizeof(u16));
	this->maxw  = malloc(this->c_col * sizeof(u16));
	this->items = calloc(c_row, sizeof(ContainerItem*));
	u16 i = 0; for (; i < c_row; i++) this->items[i] = calloc(c_col, sizeof(ContainerItem));
	
	return this;
}

void Grid_add(Grid *this, Widget *widget, u16 row, u16 col,
						alignment halign, alignment valign,
						u16 marg_top, u16 marg_left, 
						u16 marg_bot, u16 marg_right) {
	if ((row < this->c_row) && (col < this->c_col)) {
		ContainerItem *item = &this->items[row][col];
		u8 d;
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
		fprintf(stderr, "Grid_add: Index items[%hu][%hu] out of bounds rows=%hu, cols=%hu\n", row, col, this->c_row, this->c_col);
	}
}

const char *Grid_toString(const Grid *this) {
	static char str_id[64];
	if (! this) return "grid=NULL";
	snprintf(str_id, sizeof(str_id), "GRID(%s): c_row=%hu, c_col=%hu", 
		classname_fast(this), this->c_row, this->c_col);
	return str_id;
}
