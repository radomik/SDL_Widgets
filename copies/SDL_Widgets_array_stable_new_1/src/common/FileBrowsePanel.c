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

#include "StdDefinitions.h"
#include "Screen.h"
#include "Static.h"
#include "Object.h"
#include "Memory.h"
#include "file_browse_common.h"
#include "TextBlock.h"
#include "Rectangle.h"
#include "Widget.h"
#include "Image.h"
#include "Button.h"

/** from file_browse_common.h
	struct fileInfo {
		TextBlock	text_block;
		bool 		sel, dir;
	};
*/
/** 
file_browse_common checks:
	If file is a directory:
		.dir = true, other flags are false;
	If file is file:
		set .dir = false
		Moreover:
			for images (use static method bool Image_isSupportedExt(char *ext))
				set .image = true
			for audio set .audio = true
				Need to implement CMplayer class based on mplayer and SDL threads
				Two modes given on construction:
					play one file from given char *path
						still working methods: play, stop, pause, 
												startSeek({SEEK_BACKWARD|SEEK_FORWARD}), stopSeek,
												destroy
					play many files from external SongList array (also many arrays)
						has same methods as above +
							addPlaylist(playlist, index);
							addPlaylistLast(playlist);
							delPlaylist(index);
							setPlayedPlaylist(index);
					of course static method: bool CMplayer_isSupportedExt(char *ext);

	
	Then in FileBrowseWindow when:
		no file is selected:
			image preview and audio preview widget are hidden
		ONLY ONE file is selected:
			if (.image) image preview is shown
			if (.audio) audio preview widget is shown
		if folder/many folders/many files becomes selected all previews becomes hidden
*/

/** @OLD global variables and datatypes
struct FBW_anon {
	char		(*fileTypes)[][MAX_EXT_SIZE];	// pointer to external array with file extensions to be shown 
												// like: char types[][MAX_EXT_SIZE] = {"bmp", "jpeg", "\0"};
	fileInfo	*tblist;						//! @DYNAMIC array of current folder content (size tblistCount)
	Image		*preview;						// preview for Image files
	
	char 		(*file_mask)[][MAX_EXT_SIZE];	// pointer to external array of file extension to be shown
	char 		(*preview_mask)[][MAX_EXT_SIZE];// pointer to external array of file extension which has preview
												// can be NULL
	bool		all_files_has_preview;			// if all files satisfying file_mask has preview 
												// if true preview_mask is not checked
												
												
												
	uint		tblistCount;					// size of tblist array
	
};
typedef struct FBW_anon FBW_anon;

#define UPPER_RESERV (50) // space reserved on top of browsing window
#define FILE_BGCOLOR_UNSEL (0xFFF4B1)
#define FILE_BGCOLOR_SEL   (0xFF8459)




static uchar nameHeight;
static uint firstScreenIndex, lastScreenIndex, selIndex, prevClicked;
static bool sel;
static Rectangle *border_rect;
static Widget *border_rectWidget, *border_rect2Widget;
static Image *preview;
static Screen sc;
static TTF_Font *font;
static usint p_x, p_y, p_w, p_h;
*/

/** @OLD private method showFiles
void showFiles() {
	Widget *widget;
	uint y = UPPER_RESERV + border_rectWidget->pos.y;
	uint x = border_rectWidget->pos.x + 5;
	uint i = firstScreenIndex;
	while ((y < border_rectWidget->maxy) && (i < tblistCount)) {
		widget = &(tblist[i].text_block.widget);
		fprintf(stderr, "Show TextBlock [%u/%u] %s\n", i, tblistCount, tblist[i].text_block.text);
		Widget_setPosition(widget, x, y);
		Widget_draw(widget, &sc, false);
		i++;
		y += nameHeight;
	}
	lastScreenIndex = --i;
}
*/

/** @OLD private buttons handlers
void button_ok_clicked(Widget *sender, Screen *screen) {
	if ((selIndex != 0) && (selIndex != 0xFFFFFFFF)) screen->has_exited = true;
}

void button_anuluj_clicked(Widget *sender, Screen *screen) {
	screen->has_exited = true;
	sel = false;
	selIndex = 0xFFFFFFFF;
}
*/

/** @OLD private mouse click on filename textblock
void textblock_filename_clicked(Widget *sender, Screen *screen) {
	uint i, j = sender->id;
	fprintf(stderr, "Clicked on id=%u[%s][%p], prevClicked=%u\n", sender->id, ((TextBlock*)sender)->text, ((TextBlock*)sender)->text, prevClicked);
	
	if (prevClicked == j) {	// clicked again on the same item (double click)
		if (j == 0) {		// go to parent directory
			if (! tblist[j].text_block.text) {
				fprintf(stderr, "FileBrowsePanel:textblock_filename_clicked() Go to parent directory tblist[j=%u] is directory and have tblist[j].text_block.text == NULL\n", j);
				return;
			}
			prevClicked = 0xFFFFFFFF;
			if (! chdir("..")) {// changed directory
				fprintf(stderr, "Debug list:\n");
				for (i = 0; i < tblistCount; i++) {
					fprintf(stderr, "TextBlock [%u/%u] id=%u text=%s\n", i, tblistCount, tblist[i].text_block.widget.id, tblist[i].text_block.text);
				}
				
				// Destroy all TextBlocks in tblist, deallocate tblist and create new tblist with new TextBlocks
				getCurrentFolderContent(&tblist, &tblistCount, screen->screen, font, 
										FILE_BGCOLOR_UNSEL, 0x000000, fileTypes, &nameHeight,
										textblock_filename_clicked);
				firstScreenIndex = 0;
				screen->need_reload = true;
			}
			return;
		}
		else {
			if (tblist[j].dir) {
				if (! tblist[j].text_block.text) {
					fprintf(stderr, "FileBrowsePanel:textblock_filename_clicked() Change directory tblist[j=%u] is directory and have tblist[j].text_block.text == NULL\n", j);
					return;
				}
				
				prevClicked = 0xFFFFFFFF;
				if (! chdir(tblist[j].text_block.text)) {// changed directory
					fprintf(stderr, "Changed directory, debug list:\n");
					for (i = 0; i < tblistCount; i++) {
						fprintf(stderr, "TextBlock [%u/%u] id=%u text=%s[%p]\n", i, tblistCount, tblist[i].text_block.widget.id, tblist[i].text_block.text, tblist[i].text_block.text);
					}
					
					// Destroy all TextBlocks in tblist, deallocate tblist and create new tblist with new TextBlocks
					getCurrentFolderContent(&tblist, &tblistCount, screen->screen, font, 
											FILE_BGCOLOR_UNSEL, 0x000000, fileTypes, &nameHeight,
											textblock_filename_clicked);
					firstScreenIndex = 0;
					screen->need_reload = true;
				}
				return;
			}
			else {
				fprintf(stderr, "FileBrowsePanel:textblock_filename_clicked() Failed to change directory\n");
				//sel = true;
				//screen->has_exited = true;
				return;
			}
		}
	}
	else {
		prevClicked = j; // first click on item
		fprintf(stderr, "Set prevClicked=%u j=%u\n", prevClicked, j);
	}
	// select folder/file
	if (! tblist[j].dir) { 		// only file can be selected
		if (selIndex != 0xFFFFFFFF) {
			tblist[selIndex].sel = false;
			TextBlock_setBackgroundColor(&(tblist[selIndex].text_block), FILE_BGCOLOR_UNSEL);
			TextBlock_refresh(&(tblist[selIndex].text_block));
			//Widget_draw(&(tblist[selIndex].text_block.widget), screen, false);
		}
		selIndex = j;
		tblist[j].sel = true;
		TextBlock_setBackgroundColor(&(tblist[selIndex].text_block), FILE_BGCOLOR_SEL);
		TextBlock_refresh(&(tblist[selIndex].text_block));
		//Widget_draw(&(tblist[selIndex].text_block.widget), screen, true);
		//fprintf(stderr, "%s, %hu, %hu\n", tblist[selIndex].text_block.text, border_rectWidget->pos.x+5, border_rectWidget->pos.y+5);
		delete(preview);
		Image_new(preview, tblist[selIndex].text_block.text, p_x, p_y);
		//fprintf(stderr, "VISIBLE=%d\n", preview->widget.visible);
		//Widget_draw(&(preview->widget), screen, true);
		double scale;
		if (preview->widget.pos.w > preview->widget.pos.h) {
			if (preview->widget.pos.w > p_w) {
				scale = ((double)(p_w))/((double)(preview->widget.pos.w));
				Image_scale(preview, scale, scale, 1);
			}
			else {
				if (preview->widget.pos.h > p_h) {
					scale = ((double)(p_h))/((double)(preview->widget.pos.h));
					Image_scale(preview, scale, scale, 1);
				}
			}
		}
		else {
			if (preview->widget.pos.h > p_h) {
				scale = ((double)(p_h))/((double)(preview->widget.pos.h));
				Image_scale(preview, scale, scale, 1);
			}
			else {
				if (preview->widget.pos.w > p_w) {
					scale = ((double)(p_w))/((double)(preview->widget.pos.w));
					Image_scale(preview, scale, scale, 1);
				}
			}
		}
		Image_setPosition(preview, preview->widget.pos.x+((p_w-preview->widget.pos.w)>>1),
									preview->widget.pos.y+((p_h-preview->widget.pos.h)>>1));
			
		screen->need_reload = true;
	}
}
*/

char *FileBrowsePanel_Main(SDL_Surface *screen) {
	fprintf(stderr, "FileBrowsePanel_Main: Currently unsupported.\n");
	return NULL;
	/** @OLD main function stuff
	// Create font
	font = Static_getFont("fonts/ariblk.ttf", 20);
	
	// Create a fileInfo type array containing content of current folder
	prevClicked = 0xFFFFFFFF;
	firstScreenIndex = 0;
	selIndex = 0xFFFFFFFF;
	
	// initialize screen context
	Screen_init(&sc, screen, 0);
	Screen_setBackground(&sc, "img/green-design-background.jpg");
	Image_scale(sc.background, 1.484375, 1.041666667, 1);
	sc.drag_on = false;
	
	tblist = NULL;
	
	getCurrentFolderContent(&tblist, &tblistCount, sc.screen, font, 
							FILE_BGCOLOR_UNSEL, 0x000000, fileTypes, &nameHeight,
							textblock_filename_clicked);
	//~ uint i=0; for (; i < tblistCount; i++) 
		//~ fprintf(stderr, "widget[%u/%u] id=%u\t%s\n", i, tblistCount, 
			//~ tblist[i].text_block.widget.id, tblist[i].text_block.text);
	uint i;
	nameHeight += 5;
	
	char current_dir[PATH_MAX_SIZE];
	getcwd(current_dir, PATH_MAX_SIZE);
	
	// Update actual folder path
	//~ TextBlock *tb_currentFolder = malloc(sizeof(TextBlock));
	//~ tb_currentFolder->text = (char*) malloc(PATH_MAX_SIZE*sizeof(char));
	//~ getcwd(tb_currentFolder->text, PATH_MAX_SIZE-1);
	//~ TextBlock_setFont(tb_currentFolder, font);
	//~ TextBlock_setBackgroundColor(tb_currentFolder, 0xD9FFAD);
	//~ TextBlock_setForegroundColor(tb_currentFolder, 0x000000);
	//~ TextBlock_refresh(tb_currentFolder);
	//~ Widget *tb_currentFolder_widget = &(tb_currentFolder->widget);
	//~ tb_currentFolder_widget->id = 4;
	//~ tb_currentFolder_widget->draggable = true;
	//~ tb_currentFolder_widget->mevent = true;
	
	border_rect = malloc(sizeof(Rectangle));
	Rectangle *border_rect2 = malloc(sizeof(Rectangle));
	Rectangle_new(border_rect, sc.screen, 0xE2F3D3);
	Rectangle_new(border_rect2, sc.screen, 0x2EAE00);
	border_rectWidget = &(border_rect->widget);
	border_rect2Widget = &(border_rect2->widget);
	
	usint height = (W_SCREEN_HEIGHT<<1)/3;
	height -= (height-UPPER_RESERV)%nameHeight;
	border_rectWidget->pos.y = 100;
	border_rectWidget->pos.w = 850;
	border_rectWidget->pos.x = 100;
	border_rectWidget->pos.h = height;
	border_rect2Widget->pos.y = border_rectWidget->pos.y - 5;
	border_rect2Widget->pos.x = border_rectWidget->pos.x - 5;
	border_rect2Widget->pos.w = border_rectWidget->pos.w + 10;
	border_rect2Widget->pos.h = border_rectWidget->pos.h + 10;
	Rectangle_refresh(border_rect);
	Rectangle_refresh(border_rect2);
	
	// Preview view rectangle
	p_x = border_rect2Widget->maxx + 10;
	p_y = border_rect2Widget->pos.y + 10;
	p_w = W_SCREEN_WIDTH - border_rect2Widget->pos.w - border_rect2Widget->pos.x - 20;
	p_h = border_rect2Widget->pos.h - 20;
	
	Button *butOk = malloc(sizeof(Button));
	Button *butAnuluj = malloc(sizeof(Button));
	
	Button_new(butOk, sc.screen, "OK", true);
	Widget *butOk_widget = &(butOk->widget);
	butOk_widget->click_handler = button_ok_clicked;
	Button_applyDefaultStyle(butOk, 879, 874, font, 50, 5);
	Button_setFixedWidth(butOk, true);
	
	Button_new(butAnuluj, sc.screen, "Anuluj", true);
	Widget *butAnuluj_widget = &(butAnuluj->widget);
	butAnuluj_widget->click_handler = button_anuluj_clicked;
	Button_applyDefaultStyle(butAnuluj, 1061, 874, font, 33, 5);
	Button_setFixedWidth(butAnuluj, true);
	
	bool got_event=false;
	sel = false;
	char *ret_path = NULL;

	preview = malloc(sizeof(Image));
	Image_new(preview, NULL, 0, 0); // invisible preview image
	
	//~ border_rectWidget->pos.y  = 100;
	//~ border_rectWidget->pos.w  = W_SCREEN_WIDTH-200;
	//~ border_rect2Widget->pos.y = border_rectWidget->pos.y - 5;
	//~ border_rect2Widget->pos.w = border_rectWidget->pos.w + 10;
	//~ border_rectWidget->pos.x  = (W_SCREEN_WIDTH-border_rectWidget->pos.w)>>1;
	//~ border_rect2Widget->pos.x = border_rectWidget->pos.x - 5;
	
	while (! sc.has_exited) {
		if (sc.need_reload) {
			sc.need_reload = false;
			SDL_BlitSurface(sc.background->widget.surf, NULL, sc.screen, NULL);
			if (preview->widget.visible) {
				Widget_draw(&(preview->widget), &sc, false);
			}
			usint height = (W_SCREEN_HEIGHT<<1)/3;
			height -= (height-UPPER_RESERV)%nameHeight;
			border_rectWidget->pos.h = height;
			border_rect2Widget->pos.h = border_rectWidget->pos.h + 10;
			Rectangle_refresh(border_rect);
			Rectangle_refresh(border_rect2);
			
			
			Widget_draw(border_rect2Widget, &sc, false);
			Widget_draw(border_rectWidget, &sc, false);
			Widget_draw(butOk_widget, &sc, false);
			
			showFiles();
			Widget_draw(butOk_widget, &sc, false);
			Widget_draw(butAnuluj_widget, &sc, true);
		}
		

		while (SDL_WaitEvent(sc.pevent)) {
			got_event = true;
			switch (sc.event.type) {
				case SDL_KEYDOWN:	// only for testing purpouses
					if (sc.event.key.keysym.sym == SDLK_ESCAPE)
						sc.has_exited = true;
					else {
						if (sc.event.key.keysym.sym == SDLK_F2) {
							fprintf(stderr, "Debug list:\n");
							for (i = 0; i < tblistCount; i++) {
								fprintf(stderr, "TextBlock [%u/%u] id=%u text=%s\n", i, tblistCount, tblist[i].text_block.widget.id, tblist[i].text_block.text);
							}
						}
					}
					break;
				case SDL_QUIT:
						sc.has_exited = true;
					break;
				case SDL_MOUSEBUTTONDOWN:
					if (sc.event.button.button == 4) {	 // wheel up
						if (firstScreenIndex > 0) {
							firstScreenIndex--;
							sc.need_reload = true;
						}
						break;
					}
					else {
						if (sc.event.button.button == 5) { // wheel down
							if (lastScreenIndex < tblistCount-1) {
								firstScreenIndex++;
								sc.need_reload = true;
							}
							break;
						}
					}
				default:
					Widget_mevent(butOk_widget, &sc);// if (sc.event_handled) break;
					Widget_mevent(butAnuluj_widget, &sc); //if (sc.event_handled) break;
					
					if (sc.event.type != SDL_MOUSEMOTION) {
						for (i = firstScreenIndex; i <= lastScreenIndex; i++) {
							Widget_mevent(&(tblist[i].text_block.widget), &sc);
							//if (sc.event_handled) break;
						}
					}
					break;
			}
			if (got_event) break;
		}
		
		
	}
	to_end:
	
	if ((sel) || (selIndex != 0xFFFFFFFF)) {
		ret_path = realpath(tblist[selIndex].text_block.text, ret_path);
		if (! ret_path) {
			fprintf(stderr, "FileBrowsePanel_Main:FileBrowsePanel > Failed to realpath on selected path %s\n", tblist[selIndex].text_block.text);
		}
	}
	
	// Remember to copy text of selected file
	for (i = 0; i < tblistCount; i++) {
		fprintf(stderr, "Delete TextBlock %u, %s\n", i, tblist[i].text_block.text);
		delete(&(tblist[i].text_block));
	}
	
	free(tblist);
	
	delete(&sc);
	
	delete(butOk);
	delete(butAnuluj);
	delete(border_rect);
	delete(border_rect2);
	
	
	free(butOk);
	free(butAnuluj);
	free(border_rect);
	free(border_rect2);
	free(preview);
	if (chdir(current_dir)) {	// go back to previous directory
		fprintf(stderr, "FileBrowsePanel_Main:FileBrowsePanel > Failed to go back to previous directory %s\n", current_dir);
	}
	
	fprintf(stderr, "FileBrowsePanel: Exiting\n");
	return ret_path;
	**/
}
