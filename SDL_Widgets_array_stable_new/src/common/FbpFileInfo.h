/*
 *      FbpFileInfo.h - this file is part of SDL_Widgets
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

#ifndef FBPFILEINFO_H
#define	FBPFILEINFO_H
#include "StdDefinitions.h"
#include "TextBlock.h"

#define FBP_FILE_INFO_FGCOLOR			(0x000000)
#define FBP_FILE_INFO_BGCOLOR_UNSEL 	(0xFFF4B1)
#define FBP_FILE_INFO_BGCOLOR_SEL   	(0xFF8459)

/** Class representing file item consisting on TextBlock with filename
 * used by FileBrowsePanel */
extern const coClass *FbpFileInfo_class;
#define FBP_FILE_INFO(VTHIS) ((FbpFileInfo*)VTHIS)
struct FbpFileInfo {
	TextBlock	_super;				// TextBlock with filename (basename)
	b8			is_selected;			// whether file is selected (by file manager - initialized to false)
	b8			is_directory;			// whether file is a directory
	b8			is_image;				// whether file is an image supported by Image class
};

FbpFileInfo* FbpFileInfo_new(FbpFileInfo *this, 
							const char *name, b8 is_directory,
							TTF_Font *font);

void 		FbpFileInfo_vdestroy(void *vthis);

const char *FbpFileInfo_vtoString(const void *vthis);


inline const char *FbpFileInfo_getFilename(const FbpFileInfo *this);

inline void FbpFileInfo_setClickHandler(FbpFileInfo *this, void (*func)(Widget*, Screen*), void *param);

inline void FbpFileInfo_setBackgroundColor(FbpFileInfo *this, u32 bgcolor);

void 	FbpFileInfo_select(FbpFileInfo *this);

void 	FbpFileInfo_unselect(FbpFileInfo *this);



FbpFileInfo* FbpFileInfo_arrayRealloc(FbpFileInfo *fileInfoArray, const u32 fsize);

void 		 FbpFileInfo_arrayDelete(FbpFileInfo **p_fileInfoArray, const u32 fsize, b8 del_array);

/** Sort array alphabeticaly with folders first */
void 		 FbpFileInfo_arraySort(FbpFileInfo *fileInfoArray, u32 fsize);

void 		 FbpFileInfo_arrayUpdateIds(FbpFileInfo *fileInfoArray, const u32 fsize);

void 		 FbpFileInfo_arrayShow(const FbpFileInfo *fileInfoArray, const u32 fsize, FILE *file);

#endif
