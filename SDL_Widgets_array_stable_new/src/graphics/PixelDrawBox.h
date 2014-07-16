/*
 *      PixelDrawBox.h - this file is part of SDL_Widgets
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

#ifndef _PixelDrawBox_h
	#define _PixelDrawBox_h
	#include "StdDefinitions.h"
	#include "Grid.h"
	
	/*! PixelDrawBox inherits from Grid !*/
	
	extern const coClass *PixelDrawBox_class;
	#define PIXEL_DRAW_BOX(VTHIS) ((PixelDrawBox*)VTHIS)
	
	struct PixelDrawBox {
		Grid	_super;		// inherits from Grid
		
		u16		width;		// desired width and height of this Widget
		u16		height;
		
		u16		rect_w;		// one rectangle width
		u16		rect_h;		// one rectangle height
		
		u16		actX;		// count of accesible rectangles in X; actX <= perX && actX > 0
		u16		actY;		// count of accesible rectangles in Y; actY <= perY && actY > 0
		
		// private
		u16		spec_pix_x;
		u16		spec_pix_y;
		
		b8		enabled : 1;	// whether Widget is enabled to interact with user
		b8		mouse_ispressed : 1;
	};
	
	//! Returns rectangle color of given row and col in PixelDrawBox
	//! prototype u32 PixelDrawBox_getPixel(PixelDrawBox *pdb, u16 row, u16 col)
	//! If given pointer PDB_ptr is NULL macro returns maximum value of u32
	#define PixelDrawBox_getPixel(PDB_ptr, ROW, COL) ((PDB_ptr) ? (((const Rectangle*)((PDB_ptr)->_super.items[ROW][COL].widget))->color) : (UINF))
	#define PDB_FGCOLOR			0x000000
	#define	PDB_BGCOLOR			0xFFFFFF
	#define PDB_SELCOLOR		0x0EAA00
	#define PDB_SELCOLOR_NOINCL 0xB9FFB3
	#define PDB_DISABLED_COLOR	0xABABAB
	#define	PDB_BORDER_COLOR	0x0800A1
	
	PixelDrawBox* PixelDrawBox_new(PixelDrawBox *this, 	u16 width, u16 height, 
														u16 c_col, u16 c_row,
														u16 actX,  u16 actY);
														
	void PixelDrawBox_vdestroy(void *vthis);
	
	// default
	void PixelDrawBox_vrefresh(void *vthis);
	
	// protected - called by parent Grid widget by Grid_refresh()
	/** @OBSOLETE void PixelDrawBox_refresh2(PixelDrawBox *pdb); */
	
	inline void PixelDrawBox_setPosition(PixelDrawBox *pdb, u16 minx, u16 miny);

	inline void PixelDrawBox_setPadding(PixelDrawBox *pdb, u16 padx, u16 pady);
	
	const char *PixelDrawBox_vtoString(const void *vthis);
	
	inline void PixelDrawBox_setEnabled(PixelDrawBox *pdb, b8 sel);
	
	//!void PixelDrawBox_setBorder(PixelDrawBox *pdb, b8 sel);
	
	void PixelDrawBox_increaseActX(PixelDrawBox *pdb, u16 dx);
	void PixelDrawBox_increaseActY(PixelDrawBox *pdb, u16 dy);
	void PixelDrawBox_decreaseActX(PixelDrawBox *pdb, u16 dx);
	void PixelDrawBox_decreaseActY(PixelDrawBox *pdb, u16 dy);
#endif
