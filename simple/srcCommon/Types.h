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
	/*** All of classes, enums, structs typedefs ***/
	typedef struct Object Object;
	typedef struct Type Type;
	typedef struct Widget Widget;
	typedef struct Point Point;
	typedef struct Screen Screen;
	typedef struct ScreenBackground ScreenBackground;
	typedef struct Rectangle Rectangle;
	typedef struct ButtonImage ButtonImage;
	typedef struct Image Image;
	typedef struct Label Label;
	typedef struct LabelStyle LabelStyle;
	typedef struct ScrollView ScrollView;
	typedef struct StackListItem StackListItem;
	typedef struct StackList StackList;
	typedef struct Spacing Spacing;
	typedef struct String String;
	typedef enum   direction direction;
	typedef enum   layouttype layouttype;
	typedef enum   alignment alignment;
	typedef enum   mevent_type mevent_type;
	typedef struct options options;
	typedef struct List2DItem List2DItem;
	typedef struct List2D List2D;
	typedef struct List1DItem List1DItem;
	typedef struct List1D List1D;
	typedef struct Font Font;
	typedef struct TextBlock TextBlock;
	typedef struct MeventCallback MeventCallback;
	typedef struct MeventCallbackItem MeventCallbackItem;
	typedef struct Border Border;
	typedef struct CallBack CallBack;
	typedef enum   perr perr;
#endif
