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
#include "Object.h"
#include "Memory.h"
#include "Widget.h"
#include "Rectangle.h"
#include "Grid.h"
#include "PixelDrawBox.h"

static const char *type = "PixelDrawBox";

static char str_id[204];
char *PixelDrawBox_toString(PixelDrawBox *pdb) {
	if (! pdb) return "pdb=NULL";
	snprintf(str_id, 204, "PixelDrawBox: (width,height)=(%hu,%hu), (c_col,c_row)=(%hu,%hu), (actX,actY)=\
(%hu,%hu), (rect_w,rect_h)=(%hu,%hu), (spec_x,spec_y)=(%hu,%hu)", pdb->width, pdb->height, pdb->grid.c_col, pdb->grid.c_row, 
	pdb->actX, pdb->actY, pdb->rect_w, pdb->rect_h, pdb->spec_pix_x, pdb->spec_pix_y);
	return str_id;
}

void PixelDrawBox_parseClick(PixelDrawBox *pdb, Widget *sender, Screen *screen,
								uchar butmask, bool check_spec) {
	usint x = sender->id >> 16;
	usint y = sender->id & 0x0000FFFF;
	
	
	if ((x >= pdb->actX) || (y >= pdb->actY)) return;
	Rectangle *press_rect = (Rectangle*) pdb->grid.items[y][x].widget;
	
	bool reload = false;
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
		Rectangle_refresh(press_rect);
		screen->need_reload = true;
	}
}

void rectangle_press(Widget *sender, Screen *screen) {
	((PixelDrawBox*)sender->void_parameter)->mouse_ispressed = true;
	screen->pool_events = true;
	PixelDrawBox_parseClick((PixelDrawBox*) sender->void_parameter, sender, screen,
								SDL_BUTTON(screen->event.button.button), true);
}

void rectangle_mouse_enter(Widget *sender, Screen *screen) {
	PixelDrawBox *pdb = (PixelDrawBox*) sender->void_parameter;
	if (! pdb->mouse_ispressed) return;
	PixelDrawBox_parseClick((PixelDrawBox*) sender->void_parameter, sender, screen,
								screen->event.motion.state, false);
}

void rectangle_mouse_released(Widget *sender, Screen *screen) {
	((PixelDrawBox*)sender->void_parameter)->mouse_ispressed = false;
	screen->pool_events = false;
}

/** Current destructor (virtual) use delete() handler to call it */
static void PixelDrawBox_vdestroy(void *vthis) { 
	PixelDrawBox *this = (PixelDrawBox*) vthis;
	

	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "PixelDrawBox_vdestroy", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	if (((Grid*)this)->items) { //! Delete dynamically allocated rectangles (destroy + free)
		Widget		*rect_wt;
		usint		y, x;
		
		for (y = 0; y < ((Grid*)this)->c_row; y++) {			// foreach grid row
			for (x = 0; x < ((Grid*)this)->c_col; x++) {		// foreach grid col
				rect_wt = ((Grid*)this)->items[y][x].widget;
				if (rect_wt) free(delete(rect_wt));
				else
					fprintf(stderr, "PixelDrawBox_destroy[%s]: Found NULL widget at (y,x)=(%hu,%hu)\n", Widget_toString((Widget*)this), y, x);
			}
		}
	}
	else
		fprintf(stderr, "PixelDrawBox_destroy[%s]: Parent grid object has NULL items array\n", Widget_toString((Widget*)this));
	
	/*! Delete parent object !*/
	Grid_destroy((Grid*)this);
}

PixelDrawBox* PixelDrawBox_new(PixelDrawBox *this, 	usint width, usint height, 
													usint c_col, usint c_row,
													usint actX,  usint actY) {
	if (! this) {
		fprintf(stderr, "PixelDrawBox_new: Passed NULL this pointer. Other parameters (in order): %hu,%hu,%hu,%hu,%hu,%hu\n",
			width, height, c_col, c_row, actX, actY);
		return NULL;
	}
	Grid_init_type(&(this->grid), GPIXELDRAWBOX_TYPE, c_row, c_col, PixelDrawBox_vdestroy, type);
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "PixelDrawBox_new", Object_getType((Object*)this), this);
	
	this->grid.bord_color	= PDB_BORDER_COLOR;
	
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
		fprintf(stderr, "PixelDrawBox_new() > Wrong initialization: %s\n", PixelDrawBox_toString(this));
	}
	return this;
}

inline void PixelDrawBox_setPosition(PixelDrawBox *pdb, usint minx, usint miny) {
	Widget_setPosition((Widget*)pdb, minx, miny);
}

inline void PixelDrawBox_setPadding(PixelDrawBox *pdb, usint padx, usint pady) { 
	Container_setPadding((Container*)pdb, padx, pady);
}

void PixelDrawBox_refresh(PixelDrawBox *pdb) { 
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
	
	/* Calculate rectangle width/height */
	pdb->rect_w = pdb->width  / grid->c_col;
	pdb->rect_h = pdb->height / grid->c_row;
	
	if ((pdb->rect_w <= 2) || (pdb->rect_h <= 2)) {
		fprintf(stderr, "PixelDrawBox::PixelDrawBox_refresh() > Pixel dimension is too small. Try increasing PixelDrawBox.width or PixelDrawBox.height or decresing PixelDrawBox.grid.c_col, PixelDrawBox.grid.c_row\n");
		widget->visible = false;
		return;
	}
	
	pdb->rect_w -= 2;
	pdb->rect_h -= 2;
	
	usint x, y;
	Rectangle *rect;
	Widget *rect_wt;
	bool create;
	uint col;
	
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
						Object_getType((Object*)rect_wt), y, x);
					delete(rect_wt);
				}
				else {
					/* Found rectangle at (y,x) cell */
					rect = (Rectangle*) rect_wt;
					if ((rect_wt->pos.w != pdb->rect_w) || 			// if rectangle size changed
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
				/* Determine new rectangle color (either background or disabled) */
				/* Create rectangle only first time */
				//!fprintf(stderr, "\t actY,actX = %hu,%hu, create=true, col=%X, press_handler=%p\n", pdb->actY, pdb->actX, col, rectangle_press);
				
				/*! Create new rectangle 
				 * (doesn't matter of destruction it'll be done by Grid - !! OF COURSE NOT !!) !*/
				rect = Rectangle_new(calloc(1, sizeof(Rectangle)), col);
				rect_wt = &(rect->widget);
				rect_wt->id = ((uint)x << 16) | (uint)y;
				rect_wt->void_parameter = (void*)pdb;
				rect_wt->press_handler  = rectangle_press;
				rect_wt->mouse_enter_handler = rectangle_mouse_enter;
				rect_wt->release_handler = rectangle_mouse_released;
				Rectangle_setSize(rect, pdb->rect_w, pdb->rect_h);
				Rectangle_refresh(rect);
				
				//!fprintf(stderr, "\t\tRECTANGLE WIDGET: %s\n", Widget_toString(rect_wt));
				/* Add rectangle to this->grid */
				Grid_add(grid, rect_wt, y, x, ALIGN_CENTER, ALIGN_CENTER, 1, 1, 1, 1);
			}
		}
	}
	
	/* Refresh parent grid */
	Grid_refresh(grid);
}

inline void PixelDrawBox_increaseActX(PixelDrawBox *pdb, usint dx) { 
	if (pdb->actX < pdb->grid.c_col) { 
		if (pdb->actX + dx > pdb->grid.c_col) pdb->actX = pdb->grid.c_col;
		else pdb->actX += dx;
		PixelDrawBox_refresh(pdb); 
	}
}

inline void PixelDrawBox_increaseActY(PixelDrawBox *pdb, usint dy) { 
	if (pdb->actY < pdb->grid.c_row) { 
		if (pdb->actY + dy > pdb->grid.c_row) pdb->actY = pdb->grid.c_row;
		else pdb->actY += dy;
		PixelDrawBox_refresh(pdb); 
	}
}
inline void PixelDrawBox_decreaseActX(PixelDrawBox *pdb, usint dx) { 
	if (pdb->actX > 1) { 
		if (pdb->actX + 1 > dx) pdb->actX -= dx;
		else pdb->actX = 1;
		PixelDrawBox_refresh(pdb); 
	}
}

inline void PixelDrawBox_decreaseActY(PixelDrawBox *pdb, usint dy) { 
	if (pdb->actY > 1) { 
		if (pdb->actY + 1 > dy) pdb->actY -= dy;
		else pdb->actY = 1; 
		PixelDrawBox_refresh(pdb); 
	}
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
	
	usint x, y;
	Rectangle *rect;
	Widget *rect_wt;
	bool create;
	uint col;
	
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
				rect_wt->id = ((uint)x << 16) | (uint)y;
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

inline void PixelDrawBox_setEnabled(PixelDrawBox *pdb, bool sel) {
	pdb->enabled = sel; 
	// add some code here
}
