/*
 *      PixelDrawBox.c - this file is part of SDL_Widgets
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
#include "Memory.h"
#include "Widget.h"
#include "Rectangle.h"
#include "Grid.h"
#include "PixelDrawBox.h"

static const void* vtable[] = {
	PixelDrawBox_vdestroy,
	Grid_vmevent,
	Grid_vdraw,
	PixelDrawBox_vrefresh,
	Grid_vdrag,
	Grid_vsetVisible
};

static coClass type = {
	.size	= sizeof(PixelDrawBox),
	.name	= "PixelDrawBox",
	.vtable	= vtable
};
const coClass *PixelDrawBox_class = &type;

const char *PixelDrawBox_toString(const PixelDrawBox *pdb) {
	static char str_id[204];
	if (! pdb) return "pdb=NULL";
	snprintf(str_id, sizeof(str_id), "PixelDrawBox: (width,height)=(%hu,%hu), (c_col,c_row)=(%hu,%hu), (actX,actY)=\
(%hu,%hu), (rect_w,rect_h)=(%hu,%hu), (spec_x,spec_y)=(%hu,%hu)", pdb->width, pdb->height, GRID(pdb)->c_col, GRID(pdb)->c_row, 
	pdb->actX, pdb->actY, pdb->rect_w, pdb->rect_h, pdb->spec_pix_x, pdb->spec_pix_y);
	return str_id;
}

void PixelDrawBox_parseClick(PixelDrawBox *pdb, Widget *sender, Screen *screen,
								u8 butmask, b8 check_spec) {
	u16 x = sender->id >> 16;
	u16 y = sender->id & 0x0000FFFF;
	
	
	if ((x >= pdb->actX) || (y >= pdb->actY)) return;
	Rectangle *press_rect = RECTANGLE( GRID(pdb)->items[y][x].widget );
	
	b8 reload = false;
	switch (butmask) {
		case SDL_BUTTON_LMASK:	// change rectangle background color to  PDB_FGCOLOR
			//!fprintf(stderr, "Left button pressed\n");
			if (press_rect->color == PDB_BGCOLOR) {
				press_rect->color = PDB_FGCOLOR; reload = true;
			}
			else {
				if (press_rect->color == PDB_SELCOLOR) {
					press_rect->color = PDB_SELCOLOR_NOINCL; reload = true;
				}
			}
			break;
		case SDL_BUTTON_MMASK: // if spec_x == 0xFFFF, set rectangle background color to PDB_SELCOLOR and update spec_x, spec_y
			if (! check_spec) return;
			//!fprintf(stderr, "Middle button pressed\n");
			if ((pdb->spec_pix_x == USINF) && (press_rect->color == PDB_BGCOLOR)) {
				press_rect->color = PDB_SELCOLOR;
				reload = true;
				pdb->spec_pix_x = x;
				pdb->spec_pix_y = y;
			}
			break;
		case SDL_BUTTON_RMASK:	// if press_rect has color != 
			//!fprintf(stderr, "Right button pressed\n");
			if (press_rect->color == PDB_FGCOLOR) {
				press_rect->color = PDB_BGCOLOR; reload = true;
			}
			else {
				if (press_rect->color == PDB_SELCOLOR || press_rect->color == PDB_SELCOLOR_NOINCL) {
					press_rect->color = PDB_BGCOLOR; reload = true;
					pdb->spec_pix_x = pdb->spec_pix_y = USINF;
				}
			}
			break;
	}
	if (reload) {
		//pdb->mouse_ispressed = true;
		Widget_refresh(WIDGET(press_rect));
		screen->need_reload = true;
	}
}

void rectangle_press(Widget *sender, Screen *screen) {
	PIXEL_DRAW_BOX(sender->void_parameter)->mouse_ispressed = true;
	screen->pool_events = true;
	PixelDrawBox_parseClick(PIXEL_DRAW_BOX(sender->void_parameter), sender, screen,
								SDL_BUTTON(screen->event.button.button), true);
}

void rectangle_mouse_enter(Widget *sender, Screen *screen) {
	if ( ! PIXEL_DRAW_BOX(sender->void_parameter)->mouse_ispressed ) return;
	PixelDrawBox_parseClick(PIXEL_DRAW_BOX(sender->void_parameter), sender, screen,
								screen->event.motion.state, false);
}

void rectangle_mouse_released(Widget *sender, Screen *screen) {
	PIXEL_DRAW_BOX(sender->void_parameter)->mouse_ispressed = false;
	screen->pool_events = false;
}

void PixelDrawBox_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	if (GRID(vthis)->items) { //! Delete dynamically allocated rectangles (destroy + free)
		Widget		*rect_wt;
		u16			y, x;
		
		for (y = 0; y < GRID(vthis)->c_row; y++) {			// foreach grid row
			for (x = 0; x < GRID(vthis)->c_col; x++) {		// foreach grid col
				rect_wt = GRID(vthis)->items[y][x].widget;
				if (rect_wt) free(delete(rect_wt));
				else
					fprintf(stderr, "PixelDrawBox_destroy[%s]: Found NULL widget at (y,x)=(%hu,%hu)\n", Widget_toString(WIDGET(vthis)), y, x);
			}
		}
	}
	else
		fprintf(stderr, "PixelDrawBox_destroy[%s]: Parent grid object has NULL items array\n", Widget_toString(WIDGET(vthis)));
	
	/*! Delete parent object !*/
	Grid_vdestroy(vthis);
}

PixelDrawBox* PixelDrawBox_new(PixelDrawBox *this, 	u16 width, u16 height, 
													u16 c_col, u16 c_row,
													u16 actX,  u16 actY) {
														
	if (! this) {
		Static_nullThis();
		fprintf(stderr, "%20s:\tWithin context: (width,height,c_col,c_row,actX,actY)=(%hu,%hu,%hu,%hu,%hu,%hu)\n\n", 
			__FUNCTION__, width, height, c_col, c_row, actX, actY);
		return NULL;
	}
	Grid_new(GRID(this), c_row, c_col);
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	fprintf(stderr, "PixelDrawBox_new[this=%p]: Creating\n", this);
	
	GRID(this)->bord_color	= PDB_BORDER_COLOR;
	
	/* Set standard and copy custom settings */
	this->enabled = true;
	this->width   = width;
	this->height  = height;
	this->mouse_ispressed = false;
	
	this->actX   = actX;
	this->actY   = actY;
	
	this->spec_pix_x = this->spec_pix_y = USINF;	// no special pixel selected
	
	/* Check whether settings are proper */
	if ((width < 1) || (height < 1) || (c_col < 1) || (c_row < 1) || (actX < 1) || (actY < 1)) {
		fprintf(stderr, "PixelDrawBox_new: Wrong initialization: %s\n", PixelDrawBox_toString(this));
	}
	return this;
}

inline void PixelDrawBox_setPosition(PixelDrawBox *pdb, u16 minx, u16 miny) {
	Widget_setPosition(WIDGET(pdb), minx, miny);
}

inline void PixelDrawBox_setPadding(PixelDrawBox *pdb, u16 padx, u16 pady) { 
	Container_setPadding(CONTAINER(pdb), padx, pady);
}

void PixelDrawBox_vrefresh(void *vthis) { 
	PixelDrawBox	*pdb		= PIXEL_DRAW_BOX(vthis);
	Grid   			*grid   	= GRID(vthis);
	Widget			*widget 	= WIDGET(vthis);
	//fprintf(stderr, "actX,actY=%hu,%hu, need_refresh=%d, need_reload=%d\n", pdb->actX, pdb->actY, widget->need_refresh, widget->need_reload);
	//~ if (count > 0) {
		//~ fprintf(stderr, "Second attempt to run  PixelDrawBox_refresh\n");
		//~ return;
		//~ 
	//~ }
	//~ count++;
	
	/* Calculate rectangle width/height */
	pdb->rect_w = pdb->width  / grid->c_col;
	pdb->rect_h = pdb->height / grid->c_row;
	
	if ((pdb->rect_w <= 2) || (pdb->rect_h <= 2)) {
		fprintf(stderr, "PixelDrawBox_vrefresh: Pixel dimension is too small. Try increasing PixelDrawBox.width or PixelDrawBox.height or decresing PixelDrawBox.grid.c_col, PixelDrawBox.grid.c_row\n");
		Widget_setVisible(widget, false);
		return;
	}
	
	pdb->rect_w -= 2;
	pdb->rect_h -= 2;
	
	u16 		x, y;
	Rectangle 	*rect;
	Widget 		*rect_wt;
	b8 		create;
	u32 		col;
	
	for (y = 0; y < grid->c_row; y++) {				// foreach row in grid
		for (x = 0; x < grid->c_col; x++) {			// foreach column in grid
			//!fprintf(stderr, "Reload (y,x)=(%hu,%hu)\n", y, x);
			rect_wt = grid->items[y][x].widget;	// get grid item widget from y,x cell
			//!fprintf(stderr, "\trect_wt = %p %s\n", rect_wt, (rect_wt) ? Widget_toString(rect_wt) : "(null)");
			create = true;
			col = ((y < pdb->actY && x < pdb->actX) ? PDB_BGCOLOR : PDB_DISABLED_COLOR);
			if (rect_wt) {								// if there is already widget
				if (classof_fast(rect_wt) != Rectangle_class) {	// if type is not rectangle
					fprintf(stderr, "PixelDrawBox_refresh: Found Widget of invalid type: %s at (y,x)=(%hu,%hu). Deleting\n",
						classname_fast(rect_wt), y, x);
					delete(rect_wt);
				}
				else {
					/* Found rectangle at (y,x) cell */
					rect = RECTANGLE(rect_wt);
					if ((rect_wt->pos.w != pdb->rect_w) || 			// if rectangle size changed
						(rect_wt->pos.h != pdb->rect_h)) {			// change it and refresh
							Rectangle_setSize(rect, pdb->rect_w, pdb->rect_h);
							if (((col == PDB_DISABLED_COLOR)&&(rect->color != PDB_DISABLED_COLOR)) ||((col == PDB_BGCOLOR)&&(rect->color == PDB_DISABLED_COLOR))) {
								if (rect->color == PDB_SELCOLOR) pdb->spec_pix_x = pdb->spec_pix_y = USINF;
								rect->color = PDB_DISABLED_COLOR;
							}
							Widget_refresh( WIDGET(rect) );
					}
					else {
						if (((col == PDB_DISABLED_COLOR)&&(rect->color != PDB_DISABLED_COLOR)) ||((col == PDB_BGCOLOR)&&(rect->color == PDB_DISABLED_COLOR))) {
							if (rect->color == PDB_SELCOLOR) pdb->spec_pix_x = pdb->spec_pix_y = USINF;
							rect->color = col;
							Widget_refresh( WIDGET(rect) );
						}
					}
					create = false;
				}
			}
			
			if (create) {
				/* Determine new rectangle color (either background or disabled) */
				/* Create rectangle only first time */
				//!fprintf(stderr, "\t actY,actX = %hu,%hu, create=true, col=%X, press_handler=%p\n", pdb->actY, pdb->actX, col, rectangle_press);
				
				/*! Create new rectangle !*/
				rect = Rectangle_new(new(Rectangle_class), col);
				rect_wt = WIDGET(rect);
				rect_wt->id = ((u32)x << 16) | (u32)y;
				rect_wt->void_parameter = pdb;
				rect_wt->press_handler  = rectangle_press;
				rect_wt->mouse_enter_handler = rectangle_mouse_enter;
				rect_wt->release_handler = rectangle_mouse_released;
				Rectangle_setSize(rect, pdb->rect_w, pdb->rect_h);
				Widget_refresh( rect_wt );
				
				//!fprintf(stderr, "\t\tRECTANGLE WIDGET: %s\n", Widget_toString(rect_wt));
				/* Add rectangle to this->grid */
				Grid_add(grid, rect_wt, y, x, ALIGN_CENTER, ALIGN_CENTER, 1, 1, 1, 1);
			}
		}
	}
	
	/* Refresh parent grid (call to super.refresh()) */
	Grid_vrefresh(grid);
}

void PixelDrawBox_increaseActX(PixelDrawBox *pdb, u16 dx) { 
	if (pdb->actX < GRID(pdb)->c_col) { 
		if (pdb->actX + dx > GRID(pdb)->c_col) pdb->actX = GRID(pdb)->c_col;
		else pdb->actX += dx;
		Widget_refresh(WIDGET(pdb));
	}
}

void PixelDrawBox_increaseActY(PixelDrawBox *pdb, u16 dy) { 
	if (pdb->actY < GRID(pdb)->c_row) { 
		if (pdb->actY + dy > GRID(pdb)->c_row) pdb->actY = GRID(pdb)->c_row;
		else pdb->actY += dy;
		Widget_refresh(WIDGET(pdb));
	}
}
void PixelDrawBox_decreaseActX(PixelDrawBox *pdb, u16 dx) { 
	if (pdb->actX > 1) { 
		if (pdb->actX + 1 > dx) pdb->actX -= dx;
		else pdb->actX = 1;
		Widget_refresh(WIDGET(pdb));
	}
}

void PixelDrawBox_decreaseActY(PixelDrawBox *pdb, u16 dy) { 
	if (pdb->actY > 1) { 
		if (pdb->actY + 1 > dy) pdb->actY -= dy;
		else pdb->actY = 1; 
		Widget_refresh(WIDGET(pdb));
	}
}

inline void PixelDrawBox_setEnabled(PixelDrawBox *pdb, b8 sel) {
	// add some code here
	//pdb->enabled = sel;
}

/** @OBSOLETE
void PixelDrawBox_refresh2(PixelDrawBox *pdb) {
	
	//~ static 		int 	count;
	
	Grid   		*grid   	= &(pdb->grid);		// get pointers to parent classes objects
	Container	*container 	= &(grid->container);
	Widget		*widget 	= &(container->widget);
	
	//fprintf(stderr, "actX,actY=%hu,%hu, need_refresh=%d, need_reload=%d\n", pdb->actX, pdb->actY, widget->need_refresh, widget->need_reload);
	//~ if (count > 0) {
		//~ fprintf(stderr, "Second attempt to run  PixelDrawBox_refresh\n");
		//~ return;
		//~ 
	//~ }
	//~ count++;
	
	// Calculate rectangle width/height //
	pdb->rect_w = pdb->width  / grid->c_col;
	pdb->rect_h = pdb->height / grid->c_row;
	
	if ((pdb->rect_w <= 2) || (pdb->rect_h <= 2)) {
		fprintf(stderr, "PixelDrawBox::PixelDrawBox_refresh() > Pixel dimension is too small. Try increasing PixelDrawBox.width or PixelDrawBox.height or decresing PixelDrawBox.grid.c_col, PixelDrawBox.grid.c_row\n");
		widget->visible = false;
		return;
	}
	
	pdb->rect_w -= 2;
	pdb->rect_h -= 2;
	
	u16 x, y;
	Rectangle *rect;
	Widget *rect_wt;
	b8 create;
	u32 col;
	
	for (y = 0; y < grid->c_row; y++) {				// foreach row in grid
		for (x = 0; x < grid->c_col; x++) {			// foreach column in grid
			//!fprintf(stderr, "Reload (y,x)=(%hu,%hu)\n", y, x);
			rect_wt = grid->items[y][x].widget;	// get grid item widget from y,x cell
			//!fprintf(stderr, "\trect_wt = %p %s\n", rect_wt, (rect_wt) ? Widget_toString(rect_wt) : "(null)");
			create = true;
			col = ((y < pdb->actY && x < pdb->actX) ? PDB_BGCOLOR : PDB_DISABLED_COLOR);
			if (rect_wt) {								// if there is already widget
				if (rect_wt->type != RECTANGLE_TYPE) {	// if type is not rectangle
					fprintf(stderr, "PixelDrawBox_refresh: Need to use dynamically linked destructor. Found Widget of type(%s) != RECTANGLE_TYPE at (y,x)=(%hu,%hu). Deleting only Widget so far\n",
						Widget_getTypeString(rect_wt), y, x);
					delete(rect_wt);
				}
				else {	
					rect = (Rectangle*) rect_wt;											// it is rectangle
					if ((rect_wt->pos.w != pdb->rect_w) || 		// if rectangle size changed
						(rect_wt->pos.h != pdb->rect_h)) {			// change it and refresh
							Rectangle_setSize(rect, pdb->rect_w, pdb->rect_h);
							if (((col == PDB_DISABLED_COLOR)&&(rect->color != PDB_DISABLED_COLOR)) ||((col == PDB_BGCOLOR)&&(rect->color == PDB_DISABLED_COLOR))) {
								if (rect->color == PDB_SELCOLOR) pdb->spec_pix_x = pdb->spec_pix_y = USINF;
								rect->color = PDB_DISABLED_COLOR;
							}
							Rectangle_refresh(rect);
					}
					else {
						if (((col == PDB_DISABLED_COLOR)&&(rect->color != PDB_DISABLED_COLOR)) ||((col == PDB_BGCOLOR)&&(rect->color == PDB_DISABLED_COLOR))) {
							if (rect->color == PDB_SELCOLOR) pdb->spec_pix_x = pdb->spec_pix_y = USINF;
							rect->color = col;
							Rectangle_refresh(rect);
						}
					}
					create = false;
				}
			}
			
			if (create) {
				// Determine new rectangle color (either background or disabled) //
				
				//!fprintf(stderr, "\t actY,actX = %hu,%hu, create=true, col=%X, press_handler=%p\n", pdb->actY, pdb->actX, col, rectangle_press);
				
				//! Create new rectangle 
				//! (doesn't matter of destruction it'll be done by Grid - !! OF COURSE NOT !!) 
				rect = malloc(sizeof(Rectangle));
				Rectangle_new(rect, container->screen, col);
				rect_wt = &(rect->widget);
				rect_wt->id = ((u32)x << 16) | (u32)y;
				rect_wt->void_parameter = (void*)pdb;
				rect_wt->press_handler  = rectangle_press;
				rect_wt->mouse_enter_handler = rectangle_mouse_enter;
				rect_wt->release_handler = rectangle_mouse_released;
				Rectangle_setSize(rect, pdb->rect_w, pdb->rect_h);
				Rectangle_refresh(rect);
				
				//!fprintf(stderr, "\t\tRECTANGLE WIDGET: %s\n", Widget_toString(rect_wt));
				// Add rectangle to this->grid 
				Grid_add(grid, rect_wt, y, x, ALIGN_CENTER, ALIGN_CENTER, 1, 1, 1, 1);
			}
		}
	}
	
	// Refresh grid 
	//Grid_refresh2(grid);
}
**/
