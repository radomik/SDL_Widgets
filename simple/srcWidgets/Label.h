/*		[label]
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
	#define 	_Label_h_
	#include "../srcCommon/StdDefinitions.h"
	#include "../srcCommon/Types.h"
	#include "TextBlock.h"
	
	struct LabelStyle {
		const char  *name;
		uint		fgcolor; // ARGB
		uint		bgcolor; // ARGB
		uint		border_color; // ARGB
		usint		border_width;
		sint		border_radius;  // -1 - one pixel width border, transparent inner, 90 degrees corners
									// 0  - fill with one color, 90degress corners (default)
									// >0 - fill with one color, with rounded corners of .radius
		
	};
	extern LabelStyle *LABEL_STYLE_0;	// predefinied label styles
	extern LabelStyle *LABEL_STYLE_1;
	
	extern const Type *Label_t;
	inline const Type *Label_gt(); // getter for Label_t
	struct Label {
		TextBlock 	_super;
		Spacing		padding;
		
		LabelStyle	*style;			// by default LABEL_STYLE_0
		
		bool 		fixed_width;	// private (default TRUE)
		bool		first_refresh;	// private
	};
	
	// constructors
	inline Label*	Label_new();
	inline Label* 	Label_newText(char *text);
	inline Label*	Label_newString(String *string);
	inline Label*	Label_copy(Label *src);
	
	// constructors and destructor used by inheriting classes 
	void Label_new2(Label *this);
	void Label_new2Text(Label *this, char *text);
	void Label_new2String(Label *this, String *string);
	void Label_copy2(Label *this, Label *src);
	void Label_destroy(Label *this);
	
	/// get string.text or string from Label
	inline const char*	Label_getText(Label *this);
	inline String*		Label_getString(Label *this);
	
	/// get string length
	inline size_t Label_getStringLen(Label *this);

	/// set text of Label using c-string or String
	inline void Label_setText(Label *this, char *text);
	inline void Label_setString(Label *this, String *string);
	
	/// set font of Label to existing Font object pointer
	/// @param font is copied in method so it have to be deleted
	/// after call to _setFont
	inline void Label_setFont(Label *this, Font *font);
	
	/// set current font style (font styles are definied in Font.h)
	inline void Label_setFontStyle(Label *this, usint font_style);
	
	/// set background and foreground color of Label
	void 		Label_setBgColor(Label *this, uint bgcolor);
	inline void Label_setFgColor(Label *this, uint fgcolor);
	
	/// set border width, border color and border corners radius
	inline void Label_setBorder(Label *this, usint border_width, uint border_color);
	inline void Label_setBorderRadius(Label *this, sint border_radius);
	
	/// set padding
	inline void Label_setPadding(Label *this, usint pad_top, usint pad_left, usint pad_bottom, usint pad_right);
	
	/// set style of label
	inline void Label_setStyle(Label *this, LabelStyle *style);
	
	/// print formatted string onto Label.string
	int 		Label_printf(Label *this, size_t _offset, const char *format, ...);
	inline int 	Label_vprintf(Label *this, size_t _offset, const char *format, va_list ap);
	
	/// print fields of Label object and all of its superclasses
	inline void	Label_print(Label *this);
#endif

