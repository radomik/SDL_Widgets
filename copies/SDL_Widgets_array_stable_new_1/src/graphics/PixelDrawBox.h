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
	
	struct PixelDrawBox {
		Grid		grid;		// inherits from Grid
		
		bool		enabled;	// whether Widget is enabled to interact with user
		bool		mouse_ispressed;
		
		usint		width;		// desired width and height of this Widget
		usint		height;
		
		usint		rect_w;		// one rectangle width
		usint		rect_h;		// one rectangle height
		
		usint		actX;		// count of accesible rectangles in X; actX <= perX && actX > 0
		usint		actY;		// count of accesible rectangles in Y; actY <= perY && actY > 0
		
		// private (really?)
		usint		spec_pix_x;
		usint		spec_pix_y;
	};
	
	//! Returns rectangle color of given row and col in PixelDrawBox
	//! prototype uint PixelDrawBox_getPixel(PixelDrawBox *pdb, usint row, usint col)
	//! If given pointer PDB_ptr is NULL macro returns maximum value of uint
	#define PixelDrawBox_getPixel(PDB_ptr, ROW, COL) ((PDB_ptr) ? (((Rectangle*)((PDB_ptr)->grid.items[ROW][COL].widget))->color) : (UINF))
	#define PDB_FGCOLOR			0x000000
	#define	PDB_BGCOLOR			0xFFFFFF
	#define PDB_SELCOLOR		0x0EAA00
	#define PDB_SELCOLOR_NOINCL 0xB9FFB3
	#define PDB_DISABLED_COLOR	0xABABAB
	#define	PDB_BORDER_COLOR	0x0800A1
	
	PixelDrawBox* PixelDrawBox_new(PixelDrawBox *this, 	usint width, usint height, 
														usint c_col, usint c_row,
														usint actX,  usint actY);
	// default
	void PixelDrawBox_refresh(PixelDrawBox *pdb);
	
	// protected - called by parent Grid widget by Grid_refresh()
	/** @OBSOLETE void PixelDrawBox_refresh2(PixelDrawBox *pdb); */
	
	inline void PixelDrawBox_setPosition(PixelDrawBox *pdb, usint minx, usint miny);

	inline void PixelDrawBox_setPadding(PixelDrawBox *pdb, usint padx, usint pady);
	
	char* PixelDrawBox_toString(PixelDrawBox *pdb);
	
	inline void PixelDrawBox_setEnabled(PixelDrawBox *pdb, bool sel);
	
	//!void PixelDrawBox_setBorder(PixelDrawBox *pdb, bool sel);
	
	inline void PixelDrawBox_increaseActX(PixelDrawBox *pdb, usint dx);
	inline void PixelDrawBox_increaseActY(PixelDrawBox *pdb, usint dy);
	inline void PixelDrawBox_decreaseActX(PixelDrawBox *pdb, usint dx);
	inline void PixelDrawBox_decreaseActY(PixelDrawBox *pdb, usint dy);
#endif
