/*
 *      FileBrowsePanel.h - this file is part of SDL_Widgets
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

#ifndef _FileBrowsePanel_h_
	#define	_FileBrowsePanel_h_
	#include "StdDefinitions.h"
	#include "Screen.h"
	#include "Image.h"
	#include "Rectangle.h"
	#include "Button.h"
	#include "File.h"
	
	extern const coClass *FileBrowsePanel_class;
	#define FILE_BROWSE_PANEL(VTHIS) ((FileBrowsePanel*)VTHIS)
	
	struct FileBrowsePanel {
		coObject	_super;		// dziedziczy z coObject
		
		Screen		screen;
		Image		backgroundImage;
		Rectangle	topFileRect, bottomFileRect;
		Button		butOk, butCancel;
		Image		previewImage;
		
		TTF_Font 	*font;
		
		FbpFileInfo	*fileInfoArray;	// old name tblist
		
		FbpFileInfo	*changeDirItem;
		
		const char	(*fileTypes)[][MAX_EXT_SIZE];	// pointer to external array with file extensions to be shown 
													// like: char types[][MAX_EXT_SIZE] = {"bmp", "jpeg", "\0"};
		
		char		prevDirPath[PATH_MAX_SIZE];
		char 		sel_path[PATH_MAX_SIZE];
		
		
		
		u32			fileInfoArraySize;
		
		u32			firstScreenIndex;
		u32			lastScreenIndex;
		u32			selIndex;
		u32			prevClicked;
		
		u16 		p_x, p_y, p_w, p_h;
		
		u8			nameHeight;
		b8			sel : 1;
		b8			is_inited : 1;
	};
	
	FileBrowsePanel* FileBrowsePanel_new(FileBrowsePanel *this, const char (*fileTypes)[][MAX_EXT_SIZE]);
	
	/// optional, @see Screen_setBackgroundWidget
	b8 FileBrowsePanel_setBgImage(FileBrowsePanel *this, const char *imagePath, u8 mode);
	
	/** Show FileBrowsePanel screen and return selected file/directory path (or NULL if none)
	 * @note FileBrowsePanel (this) cannot be deallocated as long as returned pointer is needed
	 * @note Returned pointer is either this->sel_path or NULL */
	const char* FileBrowsePanel_show(FileBrowsePanel *this, b8 sel_files, b8 sel_directories);
	
	void FileBrowsePanel_vdestroy(void *vthis);
	
#endif
