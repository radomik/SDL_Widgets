/*
 *      Main.c - this file is part of SDL_Widgets
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
 *
 * This file displays main menu allowing to choose next main window
 * or exit program only
 */
#include "StdDefinitions.h"
#include "Static.h"
#include "Screen.h"
#include "StackList.h"
#include "Memory.h"
#include "Widget.h"
#include "Image.h"
#include "Button.h"
#include "TextBlock.h"
#include "Label.h"
#include "LabelImage.h"
#include "ButtonImage.h"
#include "Rectangle.h"
#include "AudioMain.h"
#include "GraphicsMain.h"

/* STATIC OPTIONS SECTION */

static options op;

void MainProgram_showHelp() {
	printf("Użycie:\n");
	printf("\t[./]SDL_Widgets OPCJE\n");
	printf("OPCJE:\n");
	printf("\t-d  <directory>        Ustawia domyślny katalog danych programu.\n\
                               Standardowo jest to:\n\
                               \"%s\"\n\
                               Katalog ten powinien zawierać podkatalogi:\n\
                                  /fonts -- czcionki w formacie TTF\n\
                                  /img   -- obrazki\n", W_SDL_DIR);
	printf("\t-s  <width>x<height>   Ustawia rozmiar okna na podany.\n");
	printf("\t-m  <width>x<height>   Ustawia rozmiar w trybie pełnoekranowym.\n\
                               Powinna tu być podana aktualnie używana\n\
                               rozdzielczość ekranu.\n");
	printf("\t-f  <fullscreen>       Tryb pełnoekranowy.\n");
}

perr MainProgram_parseOptions(int argc, const char **argv) {
	u16 w = 0, h = 0, mw = 0, mh = 0;
	memset(&op, 0, sizeof(options));
	op.base_dir = W_SDL_DIR;
	int i = 1; for (; i < argc; i++) {
		if (! strcmp(argv[i], "-f"))  { 
			op.fullscreen = true;
			continue;
		}
		if (! strcmp(argv[i], "-s")) { 
			if (++i < argc) {
				w = h = 0;
				sscanf(argv[i], "%hux%hu", &w, &h);
				if ((! w) || (! h)) {
					printf("Wysokość(%hu) lub szerokość(%hu) okna [-s] jest równa zero.\n", w, h);
					i--;
				}
				continue;
			}
			else {
				printf("Podano, opcję zmiany rozmiaru okna \"-s\" bez argumentu.\n");
				break;
			}
		}
		if (! strcmp(argv[i], "-m")) { 
			if (++i < argc) {
				mw = mh = 0;
				sscanf(argv[i], "%hux%hu", &mw, &mh);
				if ((! mw) || (! mh)) {
					printf("Wysokość(%hu) lub szerokość(%hu) ekranu [-m] jest równa zero.\n", mw, mh);
					i--;
				}
				continue;
			}
			else {
				printf("Podano, opcję zmiany rozmiaru ekranu \"-m\" bez argumentu.\n");
				break;
			}
		}
		if (! strcmp(argv[i], "-d")) { 
			if (++i < argc) {
				op.base_dir = argv[i];
				continue;
			}
			else {
				printf("Podano, opcję zmiany katalogu danych aplikacji \"-d\" bez argumentu.\n");
				break;
			}
		}
		if (! strcmp(argv[i], "-h"))  {
			MainProgram_showHelp();
			return E_EXIT_REQUESTED;
		}
		printf("Nieznana opcja: \"%s\"\n", argv[i]);
	}
	if ((w) && (h)) {
		op.screen_width = w;
		op.screen_height = h;
	}
	if ((mw) && (mh)) {
		op.screen_maxwidth  = mw;
		op.screen_maxheight = mh;
	}
	if (chdir(op.base_dir)) {
		MainProgram_showHelp();
		fprintf(stderr, "\nERROR: Failed chdir to default directory \"%s\"\nExiting.\n", op.base_dir);
		return E_EXIT_REQUESTED;
	}
	return E_NO_ERROR;
}
/**/
 
/* SECTION USER INTERFACE */
/* Count of each type of widget, can't be lower than needed */
#define cBUTTONIMAGE 	(3)
#define cSTACKLIST 		(1)
#define cRECTANGLE 		(5)

static Screen 		*sc;
static Image		*background;
static ButtonImage  *buttonimage;
static u16 		c_buttonimage=0;
static u16 		c_stacklist=0;
static u16 		c_rectangle=0;

static StackList	*stacklist;
static Rectangle	*rectangle;

void button_Graphics_clicked(Widget *sender, Screen *screen) {
	if (GraphicsMain_Main()) {
		fprintf(stderr, "button_Graphics_clicked:Main > Failed to start GraphicsMain_Main()\n");
		return;
	}
	screen->need_reload = true;
}

void button_Audio_clicked(Widget *sender, Screen *screen) {
	if (AudioMain_Main()) {
		fprintf(stderr, "button_Audio_clicked:Main > Failed to start AudioMain_Main()\n");
		return;
	}
	screen->need_reload = true;
}

void main_keydown(Screen *screen, SDLKey key) {
	switch (key) {
		case SDLK_F1:
			button_Graphics_clicked(NULL, screen);
			return;
		case SDLK_F2:
			button_Audio_clicked(NULL, screen);
			return;
		default: return;
	}
}

void Main_createInterface() {
	//~ StackList 	*sli;
	ButtonImage *butimg;
	//~ Rectangle   *rect;
	
	buttonimage = (cBUTTONIMAGE > 0)? malloc(cBUTTONIMAGE * sizeof(ButtonImage))  : NULL;
	stacklist = (cSTACKLIST > 0)? malloc(cSTACKLIST * sizeof(StackList))  : NULL;
	rectangle = (cRECTANGLE > 0)? malloc(cRECTANGLE * sizeof(Rectangle))  : NULL;
	
	background  = Image_new(new(Image_class), "img/FreeGreatPicture.com-26189-abstract-color-background.jpg", 0, 0);
	//Screen_setBackgroundColor(sc, 0x90EE90);
	fprintf(stderr, "Main_createInterface: background: %s\n", Widget_toString(WIDGET(background)));
	Screen_setBackgroundWidget(sc, WIDGET(background), BG_STRETCH);
	fprintf(stderr, "Main_createInterface: background: %s\n", Widget_toString(WIDGET(background)));
	
	// buttonimage[0]
	butimg	= &buttonimage[c_buttonimage++];
	ButtonImage_new(butimg, "img/applications-graphics-2.png");
	ButtonImage_applyDefaultStyle(butimg, 93, 20, 20, 20, true);
	WIDGET(butimg)->click_handler = button_Graphics_clicked;
	Screen_addWidget(sc, WIDGET(butimg));
	
	// buttonimage[1]
	butimg	= &buttonimage[c_buttonimage++];
	ButtonImage_new(butimg, "img/applications-multimedia-2.png");
	ButtonImage_applyDefaultStyle(butimg, 234, 19, 20, 20, true);
	WIDGET(butimg)->click_handler = button_Audio_clicked;
	Screen_addWidget(sc, WIDGET(butimg));
	
	// buttonimage[3]
	butimg	= &(buttonimage[c_buttonimage++]);
	ButtonImage_new(butimg, "img/application-exit-5.png");
	ButtonImage_applyDefaultStyle(butimg, 0, 14, 20, 20, true);
	Widget_setPosition(WIDGET(butimg), Screen_getWidth() - WIDGET(butimg)->pos.w - 50, WIDGET(butimg)->pos.y);
	WIDGET(butimg)->click_handler = Screen_buttonExitClicked;
	Screen_addWidget(sc, WIDGET(butimg));
	
	//~ sli = &stacklist[c_stacklist++];
	//~ StackList_new(sli, VERTICAL, 2);
	//~ Container_setPadding(CONTAINER(sli), 20, 30);
	//~ WIDGET(sli)->draggable = true;
	//~ Screen_addWidget(sc, WIDGET(sli));
//~ 
	//~ rect = &rectangle[c_rectangle++];
	//~ Rectangle_new(rect, 0xFF0000);
	//~ Widget_setSize(WIDGET(rect), 50, 30);
	//~ Widget_refresh(WIDGET(rect));
	//~ StackList_addWidgetLast(sli, WIDGET(rect), ALIGN_LEFT, ALIGN_CENTER, 0, 0, 0, 30);
	//~ Widget_refresh(WIDGET(sli));
}

int main(int argc, const char **argv) {
	merr ee;
	if ( (ee = Memory_init()) ) {
		fprintf(stderr, "main: Memory_init() failed with error: %s\n", Memory_getError(ee));
		return ee;
	}
	
	if (MainProgram_parseOptions(argc, argv) == E_EXIT_REQUESTED) {
		Memory_end();
		return 0;
	}
	Screen_setOptions(&op);
	
	/* Initialize SDL and Screen */
	perr e = E_NO_ERROR;
	sc = Screen_new(new(Screen_class), &e, cBUTTONIMAGE);
	if ((e) || (! sc)) {
		fprintf(stderr, "main: Screen_new returned NULL object pointer(%p) and/or failed with error %s\n", sc, perr_getName(e));
		if (sc) { free(delete(sc)); sc = NULL; }
		Memory_end();
		exit(e);
	}

	sc->drag_on = true;					// turn on dragging
	sc->key_up = main_keydown;
	
	/* Create user interface */
	Main_createInterface();
	
	/* Create user interfaces in main programs
	 * allocates memory and create objects
	 * DO NOT DISPLAY THEM */
	if (AudioMain_Initialize()) {
		fprintf(stderr, "main:Main> Could not AudioMain_Initialize(screen)\n");
		//goto program_ending;
	}
	if (GraphicsMain_Initialize()) {
		fprintf(stderr, "main:Main> Could not GraphicsMain_Initialize(screen)\n");
		//goto program_ending;
	}
	
	/** Start screen session */
	Memory_printUsage();
	Screen_MainStart(sc);
	
	
	
	/* Destroy main programs, deallocate memory, stop playing, etc */
	AudioMain_Destroy();
	GraphicsMain_Destroy();
	
	u16 i;
	/* Delete buttonimages */
	if (buttonimage) {
		for (i = 0; i < c_buttonimage; i++) delete(&buttonimage[i]);
		free(buttonimage);
		buttonimage = NULL;
	}
	if (rectangle) {
		for (i = 0; i < c_rectangle; i++) delete(&rectangle[i]);
		free(rectangle);
		rectangle = NULL;
	}
	if (stacklist) {
		for (i = 0; i < c_stacklist; i++) delete(&stacklist[i]);
		free(stacklist);
		stacklist = NULL;
	}
	
	/* Delete background dynamic widget */
	if (background) { free(delete(background)); background = NULL; }
	
	/* Delete screen object */
	if (sc) { free(delete(sc)); sc = NULL; }
	
	if ( (ee = Memory_end()) ) {// stops memory management
		fprintf(stderr, "main: Memory_end() exited with error: %s\n", Memory_getError(ee));
		return ee;
	}
	
	/* Exit Main program */
	exit(0);
}
