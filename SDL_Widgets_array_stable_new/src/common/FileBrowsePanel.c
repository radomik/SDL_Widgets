/*
 *      FileBrowsePanel.c - this file is part of SDL_Widgets
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

#include "FileBrowsePanel.h"
#include "Screen.h"
#include "Static.h"
#include "Memory.h"
#include "TextBlock.h"
#include "Image.h"
#include "Directory.h"
#include "DirFileInfo.h"
#include "FbpFileInfo.h"

#define UPPER_RESERV 		(50) // space reserved on top of browsing window
#define SEL_NONE_IND		(0xFFFFFFFF)


/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = FileBrowsePanel_vdestroy,
	.toString = coObject_coIObject_vtoString
};

static const void *vtable[] = {
	&override_coIObject
};

static coClass type = {
	.size	= sizeof(FileBrowsePanel),
	.name	= "FileBrowsePanel",
	.vtable	= vtable
};

const coClass *FileBrowsePanel_class = &type;

static void FileBrowsePanel_fileClicked(Widget *sender, Screen *screen);

static inline void FileBrowsePanel_showDebugList(const FileBrowsePanel *this) {
	FbpFileInfo_arrayShow(this->fileInfoArray, this->fileInfoArraySize, stderr);
}

static void FileBrowsePanel_deleteFileArray(FileBrowsePanel *this, b8 del_array) {
	if (! this->fileInfoArray) return;
	FbpFileInfo_arrayDelete(&this->fileInfoArray, this->fileInfoArraySize, del_array);
}

static b8 FileBrowsePanel_getFolderContent(FileBrowsePanel *this) {
	Directory 		dir;
	DirFileInfo 	finfo;
	FbpFileInfo		*fbinfo;
	FbpFileInfo		*fileInfoArray = this->fileInfoArray;
	u32				fsize = this->fileInfoArraySize, fcount = 0;
	u32 			i;
	u16				h;
	
	/// Open current directory
	Directory_new(&dir);
	if (! Directory_open(&dir, ".")) {
		fprintf(stderr, "%s: Failed to open directory\n", __FUNCTION__);
		delete(&dir);
		return false;
	}
	
	/// Delete old file info array content
	if (fileInfoArray) { // delete old array content if not null
		FileBrowsePanel_deleteFileArray(this, false);
	}
	
	/// enumerate on files to get file count
	//fprintf(stderr, "%s: Counting files in folder\n", __FUNCTION__);
	DirFileInfo_new(&finfo);
	while (Directory_getNext(&dir, &finfo, true)) {
		if (! DirFileInfo_isHidden(&finfo)) {
			if ((finfo.is_directory) || 
					((finfo.is_file) && 
					(DirFileInfo_checkExt(&finfo, this->fileTypes)))) 
			{
				fcount++;
			}
		}
	}
	
	/// close directory 
	//fprintf(stderr, "%s: Closing current directory (file count: %u)\n", __FUNCTION__, fcount);
	Directory_close(&dir);
	
	//fprintf(stderr, "%s: Previous array @ %p of size %u elements\n", __FUNCTION__, fileInfoArray, fsize);
	
	/// additional first ".." entry
	fsize = fcount + 1;
	
	/// allocate array
	//fprintf(stderr, "%s: Reallocating array to size %u items\n", __FUNCTION__, fsize);
	
	if (! (fileInfoArray = FbpFileInfo_arrayRealloc(fileInfoArray, fsize))) {
		fprintf(stderr, "%s: Failed to reallocate array\n", __FUNCTION__);
		delete(&finfo);
		delete(&dir);
		return false;
	}
	
	this->fileInfoArray = fileInfoArray;
	this->fileInfoArraySize = fsize;
	
	
	//fprintf(stderr, "%s: New: fcount=%u, fsize=%u, fileInfoArray: %p\n", 
	//	__FUNCTION__, fcount, fsize, fileInfoArray);
	
	/// create ".." entry
	//fprintf(stderr, "%s: Creating '..' entry\n", __FUNCTION__);
	fbinfo = &fileInfoArray[0];
	FbpFileInfo_new(fbinfo, "..", true, this->font);
	
	FbpFileInfo_setClickHandler(fbinfo, FileBrowsePanel_fileClicked, this);
	this->nameHeight = WIDGET(fbinfo)->pos.h;
	
	if (! fcount) { // no files in folder
		delete(&dir);
		delete(&finfo);
		return true; 
	}
	
	/// open directory again
	//fprintf(stderr, "%s: Opening directory again\n", __FUNCTION__);
	if (! Directory_open(&dir, ".")) {
		fprintf(stderr, "%s: Failed to open directory again\n", __FUNCTION__);
		delete(&dir);
		delete(&finfo);
		return false;
	}
	
	/// fill array with files
	//fprintf(stderr, "%s: Filling array\n", __FUNCTION__);
	i = 1;
	while ((i < fsize) && (Directory_getNext(&dir, &finfo, true))) 
	{
		if (! DirFileInfo_isHidden(&finfo)) 
		{
			fprintf(stderr, "%s: Adding: '%s'\n", __FUNCTION__, DirFileInfo_getName(&finfo));
			if ((finfo.is_directory) || 
					((finfo.is_file) && 
					(DirFileInfo_checkExt(&finfo, this->fileTypes)))) 
			{
				fbinfo = &fileInfoArray[i++];
				
				FbpFileInfo_new(fbinfo, DirFileInfo_getName(&finfo), finfo.is_directory, this->font);
					
				FbpFileInfo_setClickHandler(fbinfo, FileBrowsePanel_fileClicked, this);
				
				/// has image preview support ?
				if (finfo.is_file) // finfo.ext is already created (above (if) in DirFileInfo_checkExt())
					fbinfo->is_image = Image_isExtSupported(finfo.ext);
				
				/// find max height of filename
				h = WIDGET(fbinfo)->pos.h;
				if (h > this->nameHeight) this->nameHeight = h;
			}
		}
	}
	
	delete(&finfo);
	delete(&dir); // close and delete directory
	
	
	FbpFileInfo_arraySort(fileInfoArray, fsize);
	FbpFileInfo_arrayUpdateIds(fileInfoArray, fsize);
	
	//fprintf(stderr, "%s: Finished. Show debug list\n", __FUNCTION__);
	//FileBrowsePanel_showDebugList(this);
	
	return true;
}

static inline void FileBrowsePanel_createPreviewImage(FileBrowsePanel *this, FbpFileInfo *fbinfo) {
	Widget *wtImgPrev = WIDGET(&this->previewImage);
	double scale;
	
	delete(wtImgPrev);
	Image_new(IMAGE(wtImgPrev), FbpFileInfo_getFilename(fbinfo), this->p_x, this->p_y);
	
	if (! wtImgPrev->visible) {
		fprintf(stderr, "%s: Failed to load preview image for file: '%s'\n", __FUNCTION__, FbpFileInfo_getFilename(fbinfo));
		return;
	}
	
	if (wtImgPrev->pos.w > wtImgPrev->pos.h) {
		if (wtImgPrev->pos.w > this->p_w) {
			scale = ((double)this->p_w) / ((double)wtImgPrev->pos.w);
			Widget_scale(wtImgPrev, scale, scale, 1);
		}
		else {
			if (wtImgPrev->pos.h > this->p_h) {
				scale = ((double)this->p_h) / ((double)wtImgPrev->pos.h);
				Widget_scale(wtImgPrev, scale, scale, 1);
			}
		}
	}
	else {
		if (wtImgPrev->pos.h > this->p_h) {
			scale = ((double)this->p_h) / ((double)wtImgPrev->pos.h);
			Widget_scale(wtImgPrev, scale, scale, 1);
		}
		else {
			if (wtImgPrev->pos.w > this->p_w) {
				scale = ((double)this->p_w) / ((double)wtImgPrev->pos.w);
				Widget_scale(wtImgPrev, scale, scale, 1);
			}
		}
	}
	
	Widget_setPosition(wtImgPrev, 
						wtImgPrev->pos.x + (wtImgPrev->pos.w >> 1),
						wtImgPrev->pos.y + ((this->p_h - wtImgPrev->pos.h) >> 1));
}

static void FileBrowsePanel_fileClicked(Widget *sender, Screen *screen) {
	FileBrowsePanel *this = FILE_BROWSE_PANEL(sender->void_parameter);
	const u32 j = sender->id; // clicked textbox index, '..' has index 0 and so on
	FbpFileInfo *fileInfoArray = this->fileInfoArray;
	FbpFileInfo *fbinfo_j = &fileInfoArray[j];
	
	//fprintf(stderr, "%s: fbinfo_j: %p (%s)\n", __FUNCTION__, fbinfo_j, fbinfo_j?FbpFileInfo_getFilename(fbinfo_j):"");
	
	if (this->prevClicked == j) 			// clicked again on the same item
	{ 
		if (fbinfo_j->is_directory) 		// clicked again on directory
		{ 
			this->changeDirItem = fbinfo_j; // store clicked item
			// directory will be changed in FileBrowsePanel_screenMouseDownUp()
			// when sender widget is no more referenced and can be safely deleted
		} 
		else {								// clicked again on selected file
			screen->has_exited = true;		// exit FileBrowsePanel_show()
		}
		return;
	}
	else { // first click on item
		this->prevClicked = j;
	}
	
	if (this->selIndex != SEL_NONE_IND) { // unselect previously selected item if any
		FbpFileInfo *selItem = &fileInfoArray[this->selIndex];
		FbpFileInfo_unselect(selItem);
	}
	
	this->selIndex = j;					// set new selected item
	FbpFileInfo_select(fbinfo_j);
	
	if (fbinfo_j->is_image) { // if selected item is an image file -> generate preview
		FileBrowsePanel_createPreviewImage(this, fbinfo_j);
	}
	else { // not image -> hide preview image
		WIDGET(&this->previewImage)->visible = false;
	}
	screen->need_reload = true;
}


static void FileBrowsePanel_screenMouseDownUp(Screen *screen, void *vthis) {
	FileBrowsePanel *this = FILE_BROWSE_PANEL(vthis);
	FbpFileInfo *fileInfoArray = this->fileInfoArray;
	const u32 fileInfoArraySize = this->fileInfoArraySize;
	FbpFileInfo *fbinfo;
	u32 i = 0;
	
	//fprintf(stderr, "%s: event:     %s\n", __FUNCTION__, Screen_currentEventName(screen));
	
	if (! fileInfoArray) {
		fprintf(stderr, "%s: .fileInfoArray is NULL\n", __FUNCTION__);
		return;
	}
	
	for (; i < fileInfoArraySize; i++) { // passs mouse button event to each file item
		fbinfo = &fileInfoArray[i];
		//fprintf(stderr, "%s: Passing %s event to [%u] %s '%s'\n",
		//	__FUNCTION__, Screen_currentEventName(screen), i, fbinfo->is_directory ? "directory" : "file", FbpFileInfo_getFilename(fbinfo));
		
		if (Screen_getEventButtonIndex(screen) == 1) {// pass only left mouse button clicks
			Widget_mevent(WIDGET(fbinfo), screen);
			
			if (screen->event_handled) {
				//fprintf(stderr, "%s: Event handled, .changeDirItem: %p\n", __FUNCTION__, this->changeDirItem);
				
				if (this->changeDirItem) 
				{ // &fbinfo->text_block widget is no more referenced here 
				  // this code cannot be included in widget click handler
					fbinfo = this->changeDirItem;
					this->changeDirItem = NULL;
				  
					//fprintf(stderr, "%s: Changing directory to '%s'\n", __FUNCTION__, FbpFileInfo_getFilename(fbinfo));
					
					if (! chdir(FbpFileInfo_getFilename(fbinfo))) 
					{ // changed directory
						
						/// Get current folder content into array of FbpFileInfo (this->fileInfoArray)
						/// @note after that call this->changeDirItem and fbinfo are invalid pointers
						if (! FileBrowsePanel_getFolderContent(this)) {
							fprintf(stderr, "%s: Failed to get current folder content\n", __FUNCTION__);
						}
						else { // obtained current directory content
							this->firstScreenIndex = 0;
							this->prevClicked = SEL_NONE_IND;
							screen->need_reload = true;
						}
					}
					else {
						fprintf(stderr, "%s: Failed to change directory to '%s' [%s]\n", 
						__FUNCTION__, FbpFileInfo_getFilename(fbinfo), sys_getError());
					}
				}
				
				return;
			}
		}
		else { // mouse press/release with button other than left
			// pass event to background rectangle (scrolling list)
			Widget_mevent(WIDGET(&this->border_rect), screen);
			
			if (screen->event_handled) return;
		}
	}
}

static void FileBrowsePanel_butOkClicked(Widget *sender, Screen *screen) {
	FileBrowsePanel *this = FILE_BROWSE_PANEL(sender->void_parameter);
	
	if ((this->selIndex != 0) && (this->selIndex != SEL_NONE_IND)) 
		screen->has_exited = true;
}

static void FileBrowsePanel_butCancelClicked(Widget *sender, Screen *screen) {
	FileBrowsePanel *this = FILE_BROWSE_PANEL(sender->void_parameter);
	
	screen->has_exited = true;
	this->selIndex = SEL_NONE_IND;
}

static void FileBrowsePanel_keyUp(Screen *screen, SDLKey key, void *vthis) {
	if (key == SDLK_F2) {
		FileBrowsePanel *this = FILE_BROWSE_PANEL(vthis);
		FileBrowsePanel_showDebugList(this);
	}
}

static void FileBrowsePanel_wheelEvent(Widget *sender, Screen *screen) {
	FileBrowsePanel *this = FILE_BROWSE_PANEL(sender->void_parameter);
	u8 butInd = Screen_getEventButtonIndex(screen);
	
	if (butInd == 5) { // wheel down
		if (this->lastScreenIndex < this->fileInfoArraySize-1) {
			this->firstScreenIndex++;
			screen->need_reload = true;
		}
	}
	else {
		if (butInd == 4) { // wheel up
			if (this->firstScreenIndex > 0) {
				this->firstScreenIndex--;
				screen->need_reload = true;
			}
		}
	}
}

static void FileBrowsePanel_showFiles(FileBrowsePanel *this, Screen *screen) {
	Widget *widget;
	
	FbpFileInfo *fileInfoArray = this->fileInfoArray;
	u32 		y = UPPER_RESERV + WIDGET(&this->border_rect)->pos.y;
	const u32 	x = WIDGET(&this->border_rect)->pos.x + 5;
	u32 		i = this->firstScreenIndex;
	const u32 	fileInfoArraySize = this->fileInfoArraySize;
	
	
	while ((i < fileInfoArraySize) && (y < WIDGET(&this->border_rect)->maxy)) 
	{
		widget = WIDGET(&fileInfoArray[i]);
		
		//fprintf(stderr, "%s: Show widget [%u/%u] '%s'\n", __FUNCTION__, i, fileInfoArraySize, toString(widget));
			
		Widget_setPosition(widget, x, y);
		Widget_draw(widget, screen, false);
		
		i++;
		y += this->nameHeight;
	}
	this->lastScreenIndex = --i;
}

static void FileBrowsePanel_afterPaint(Screen *screen, void *vthis) {
	FileBrowsePanel *this = FILE_BROWSE_PANEL(vthis);
	
	u16 height = (Screen_getHeight() << 1) / 3;
	height -= (height-UPPER_RESERV) % this->nameHeight;
	
	WIDGET(&this->border_rect)->pos.h = height;
	WIDGET(&this->border_rect2)->pos.h = WIDGET(&this->border_rect)->pos.h + 10;
	Widget_refresh(&this->border_rect);
	Widget_refresh(&this->border_rect2);
	
	Widget_draw(&this->border_rect2, screen, false);
	Widget_draw(&this->border_rect, screen, false);
	
	FileBrowsePanel_showFiles(this, screen);
	Screen_flip(screen);
}

void FileBrowsePanel_vdestroy(void *vthis) {
	FileBrowsePanel *this = FILE_BROWSE_PANEL(vthis);
	
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	FileBrowsePanel_deleteFileArray(this, true);
	
	delete(&this->border_rect);
	delete(&this->border_rect2);
	delete(&this->butOk);
	delete(&this->butCancel);
	delete(&this->previewImage);
	delete(&this->backgroundImage);
	
	if (this->font) { TTF_CloseFont(this->font); this->font = NULL; }
	
	delete(&this->screen);
	
	/*! Delete parent object !*/
	coObject_vdestroy(vthis);
}

const char* FileBrowsePanel_show(FileBrowsePanel *this, b8 sel_files, b8 sel_directories) {
	const char *sel_path = NULL;
	if (! this->is_inited) {
		fprintf(stderr, "%s: Not initialized\n", __FUNCTION__);
		return NULL;
	}
	
	Screen_MainStart(&this->screen);
	
	if (this->selIndex < SEL_NONE_IND) {
		FbpFileInfo *sel_info = &this->fileInfoArray[this->selIndex];
		if (((sel_files) && (! sel_info->is_directory)) || 
			((sel_directories) && (sel_info->is_directory) && (WIDGET(sel_info)->id != 0))) 
		{
			const char *sel_fname = FbpFileInfo_getFilename(sel_info);
		
			//fprintf(stderr, "%s: Selected filename:  '%s'\n", __FUNCTION__, sel_fname);
			
			if (! (realpath(sel_fname, this->sel_path))) {
				fprintf(stderr, "%s: Failed to get real path of selected file: '%s' [%s]\n",
					__FUNCTION__, sel_fname, sys_getError());
			}
			else {
				sel_path = this->sel_path;
			}
		}
	}
	
	if ((this->prevDirPath[0]) && (chdir(this->prevDirPath))) {
		fprintf(stderr, "%s: Failed to change directory to previous: '%s' [%s]\n", 
			__FUNCTION__, this->prevDirPath, sys_getError());
	}
	
	fprintf(stderr, "%s: Ended with selected path: '%s'\n", __FUNCTION__, sel_path);
	return sel_path;
	
}

b8 FileBrowsePanel_setBgImage(FileBrowsePanel *this, const char *imagePath, u8 mode) {
	if (this->is_inited) delete(&this->backgroundImage);
	Image_new(&this->backgroundImage, imagePath, 0, 0);
	if (WIDGET(&this->backgroundImage)->visible) {
		Screen_setBackgroundWidget(&this->screen, WIDGET(&this->backgroundImage), mode);
		return true;
	}
	else {
		fprintf(stderr, "%s: Failed to set background image\n", __FUNCTION__);
		return false;
	}
}


FileBrowsePanel* FileBrowsePanel_new(FileBrowsePanel *this, const char (*fileTypes)[][MAX_EXT_SIZE]) {
	perr e = E_NO_ERROR;
	u16 height;
	
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
	//fprintf(stderr, "%s: this @ %p [sizeof(FileBrowsePanel) = %lu]\n", __FUNCTION__, this, sizeof(FileBrowsePanel));
	
	this->is_inited = false;
	this->fileInfoArray = NULL;
	this->fileInfoArraySize = 0;
	this->changeDirItem = NULL;
	
	this->prevClicked = SEL_NONE_IND;
	this->firstScreenIndex = 0;
	this->selIndex = SEL_NONE_IND;
	this->lastScreenIndex = 0;
	this->nameHeight = 0;
	this->prevDirPath[0] = '\0';
	this->sel_path[0] = '\0';
	
	this->sel = false;
	this->fileTypes = fileTypes;
	this->font = NULL;
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	Screen_new(&this->screen, &e, 0);
	if (e) {
		fprintf(stderr, "%s: Screen_new failed with error %s\n", __FUNCTION__, perr_getName(e));
		return this;
	}
	this->screen.drag_on = false;
	
	FileBrowsePanel_setBgImage(this, "img/green-design-background.jpg", BG_STRETCH);
		
	this->font = Static_getFont("fonts/ariblk.ttf", 20);
	
	if (! getcwd(this->prevDirPath, sizeof(this->prevDirPath))) {
		fprintf(stderr, "%s: Failed to obtain current working directory [%s]\n", __FUNCTION__, sys_getError());
		this->prevDirPath[0] = '\0';
	}
	
	FileBrowsePanel_getFolderContent(this);
	
	/// create interface
	Rectangle_new(&this->border_rect, 0xE2F3D3);
	Rectangle_new(&this->border_rect2, 0x2EAE00);
	
	height = (Screen_getHeight() << 1) / 3;
	height -= (height-UPPER_RESERV) % this->nameHeight;
	
	WIDGET(&this->border_rect)->pos.y = 100;
	WIDGET(&this->border_rect)->pos.w = 850;
	WIDGET(&this->border_rect)->pos.x = 100;
	WIDGET(&this->border_rect)->pos.h = height;
	
	WIDGET(&this->border_rect2)->pos.y = WIDGET(&this->border_rect)->pos.y - 5;
	WIDGET(&this->border_rect2)->pos.w = WIDGET(&this->border_rect)->pos.x - 5;
	WIDGET(&this->border_rect2)->pos.x = WIDGET(&this->border_rect)->pos.w + 10;
	WIDGET(&this->border_rect2)->pos.h = WIDGET(&this->border_rect)->pos.h + 10;
	
	Widget_refresh(&this->border_rect);
	Widget_refresh(&this->border_rect2);
	
	// Preview view rectangle
	this->p_x = WIDGET(&this->border_rect2)->maxx + 10;
	this->p_y = WIDGET(&this->border_rect2)->pos.y + 10;
	this->p_w = Screen_getWidth() - WIDGET(&this->border_rect2)->pos.w - WIDGET(&this->border_rect2)->pos.x - 20;
	this->p_h = WIDGET(&this->border_rect2)->pos.h - 20;
	
	Button_new(&this->butOk, "OK");
	Button_new(&this->butCancel, "Anuluj");
	Button_applyDefaultStyle(&this->butOk, 879, 874, this->font, 50, 5, true);
	Button_applyDefaultStyle(&this->butCancel, 1061, 874, this->font, 33, 5, true);
	
	WIDGET(&this->butOk)->click_handler = FileBrowsePanel_butOkClicked;
	WIDGET(&this->butCancel)->click_handler = FileBrowsePanel_butCancelClicked;
	WIDGET(&this->border_rect)->press_handler = FileBrowsePanel_wheelEvent;
	
	WIDGET(&this->butOk)->void_parameter = this;
	WIDGET(&this->butCancel)->void_parameter = this;
	WIDGET(&this->border_rect)->void_parameter = this;
	
	Image_new(&this->previewImage, NULL, 0, 0);
	
	Screen_addWidget(&this->screen, WIDGET(&this->butOk));
	Screen_addWidget(&this->screen, WIDGET(&this->butCancel));
	Screen_addWidget(&this->screen, WIDGET(&this->previewImage));
	
	this->screen.disable_auto_flip = true; // final flip is made in FileBrowsePanel_afterPaint
	this->screen.after_paint = FileBrowsePanel_afterPaint;
	this->screen.mouse_down = FileBrowsePanel_screenMouseDownUp;
	this->screen.mouse_up = FileBrowsePanel_screenMouseDownUp;
	this->screen.param = this;
	
	this->screen.key_up = FileBrowsePanel_keyUp;
	this->is_inited = true;
	
	return this;
}
