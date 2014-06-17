/*		[label with text (TextBlock with added border and paddings)]
 *      Label.h - this file is part of SDL_Widgets
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

#ifndef _Label_h_
	#define _Label_h_
	#include "StdDefinitions.h"
	#include "Widget.h"
	#include "TextBlock.h"
	
	struct Label {
		Widget 		widget;			// Label inherits from Widget
		TextBlock 	text_block;		// composed TextBlock
		SDL_Rect	background;		// size of inner without border
		uint		border;
		usint 		border_width;
		usint 		padx;
		usint 		pady;
		bool 		fixed_width;	// fixed_width can be set ONLY after first call to Label_refresh
	}; 
	
	void Label_refresh(Label *label);
	Label* Label_new(	Label 		*this,
						const char 	*text);
	inline void Label_setBorder(Label *label, usint bord_width, uint rgb);
	inline void Label_setPadding(Label *label, usint padx, usint pady);
	//void Label_setAlignment(Label *label, Alignment halign, Alignment valign);
	inline void Label_setFont(Label *label, TTF_Font *font);
	inline void Label_setFontColor(Label *label, uint rgb);
	inline void Label_setBgColor(Label *label, uint rgb);
	inline void Label_setText(Label *label, const char *text);
	
	void Label_applyDefaultStyle(	Label *label, 		usint posx, usint posy, 
									TTF_Font *font2, 	usint padx, usint pady,
									bool fixed_width);
								
	char *Label_toString(Label *label);
	
#endif
