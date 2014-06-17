/*
 *      Types.h - this file is part of SDL_Widgets
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

#ifndef _Types_h_
	#define _Types_h_
	typedef struct Object Object;
	typedef struct Audio Audio;
	typedef struct AudioSinus AudioSinus;
	typedef struct AudioTest AudioTest;
	typedef struct WaveDrawBox WaveDrawBox;
	typedef struct AudioFromGraph AudioFromGraph;
	
	typedef struct Callback Callback;
	typedef struct Screen Screen;
	typedef struct Histogram Histogram;
	typedef struct PixelDrawBox PixelDrawBox;
	typedef struct HistStretchGraph HistStretchGraph;
	typedef struct Button Button;
	typedef struct ButtonImage ButtonImage;
	typedef struct Image Image;
	typedef struct Label Label;
	typedef struct LabelImage LabelImage;
	typedef struct Widget Widget;
	typedef struct Rectangle Rectangle;
	typedef struct TextBlock TextBlock;
	
	typedef struct GToolsSplotFilter GToolsSplotFilter;
	
	typedef struct ContainerItem ContainerItem;
	typedef struct Container Container;
	typedef struct Grid Grid;
	typedef struct StackList StackList;
	typedef struct FloatingMenu FloatingMenu;
	
	typedef struct wdb_point wdb_point;
	
	typedef struct List2D List2D;
	typedef struct List2DItem List2DItem;
	
	typedef struct options options;
	
	typedef enum layouttype layouttype;
	typedef enum stacklisttype stacklisttype;
	typedef enum gridtype gridtype;
	typedef enum containertype containertype;
	typedef enum widgettype widgettype;
	typedef enum alignment alignment;
#endif
