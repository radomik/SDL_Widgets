/*		[text on one color background, no paddings nor border, more lightweight than Label]
 *      TextBlock.h - this file is part of SDL_Widgets
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

#ifndef _TextBlock_h_
	#define _TextBlock_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	
	struct TextBlock {
		Widget 		widget;			// TextBlock inherits from Widget
		char		*text;
		TTF_Font	*font;
		SDL_Color	fgcolor;
		uint		foreground;		// to set colors use setters, otherwise color wouldn't change
		uint		background;
		bool		foreground_changed;
	};
	
	TextBlock* TextBlock_new(	TextBlock 	*this,
								const char 		*text);
	void TextBlock_refresh(TextBlock *text_block);
	void TextBlock_setText(TextBlock *text_block, const char *text);
	inline void TextBlock_setFont(TextBlock *text_block, TTF_Font *font);
	inline void TextBlock_setForegroundColor(TextBlock *text_block, uint rgb);
	inline void TextBlock_setBackgroundColor(TextBlock *text_block, uint rgb);
	char *TextBlock_toString(TextBlock *text_block);
	inline void TextBlock_staticGetTextSize(TTF_Font *font, const char *text, int *w, int *h);
#endif
