/*
 *      simple.c - this file is part of SDL_Widgets
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
 */
#include "srcCommon/StdDefinitions.h"
#include "srcCommon/Types.h"
#include "srcCommon/Memory.h"
#include "srcCommon/Object.h"
#include "srcCommon/ObjectMemory.h"
#include "srcCommon/Screen.h"
#include "srcCommon/Static.h"
#include "srcCommon/String.h"
#include "srcCommon/Font.h"
#include "srcCommon/perr.h"
#include "srcCommon/MeventCallback.h"
#include "srcWidgets/Image.h"
#include "srcWidgets/Rectangle.h"
#include "srcWidgets/ScrollView.h"
#include "srcWidgets/TextBlock.h"
#include "srcWidgets/Widget.h"
#include "srcWidgets/srcContainer/StackList.h"
#include "srcWidgets/srcContainer/Border.h"

void MainProgram_showHelp() {
	printf("Użycie:\n\
\t[./]SDL_Widgets OPCJE\n\
OPCJE:\n\
\t-d  <directory>        Ustawia domyślny katalog danych programu.\n\
                               Standardowo jest to:\n\
                               \"%s\"\n\
                               Katalog ten powinien zawierać podkatalogi:\n\
                                  /fonts -- czcionki w formacie TTF\n\
                                  /img   -- obrazki\n\
\t-s  <width>x<height>   Ustawia rozmiar okna na podany.\n\
\t-m  <width>x<height>   Ustawia rozmiar w trybie pełnoekranowym.\n\
                               Powinna tu być podana aktualnie używana\n\
                               rozdzielczość ekranu.\n\
\t-f  <fullscreen>       Tryb pełnoekranowy.\n\
\t-vb                    Podanie tej opcji powoduje wypisywanie szczegółowych\n\
                               informacji przy tworzeniu/usuwaniu obiektów.\n\
                               może to być użyteczne przy wykrywaniu wycieków pamięci.\n", W_SDL_DIR);
}

perr MainProgram_parseOptions(options *op, int argc, const char **argv) {
	usint w = 0, h = 0, mw = 0, mh = 0;
	memset(op, 0, sizeof(options));
	op->base_dir = W_SDL_DIR;
	int i = 1; for (; i < argc; i++) {
		if (! strcmp(argv[i], "-f"))  { 
			op->fullscreen = true;
			continue;
		}
		if (! strcmp(argv[i], "-s")) { 
			if (++i < argc) {
				w = h = 0;
				sscanf(argv[i], "%hux%hu", &w, &h);
				if ((! w) || (! h)) {
					printf("Wysokość(%hu) lub szerokość(%hu) okna [-s] jest równa zero.\n", w, h);
					//i--;
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
					//i--;
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
				op->base_dir = argv[i];
				continue;
			}
			else {
				printf("Podano, opcję zmiany katalogu danych aplikacji \"-d\" bez argumentu.\n");
				break;
			}
		}
		if (! strcmp(argv[i], "-vb"))  {
			op->verbose_construct_destroy = true;
			continue;
		}
		if (! strcmp(argv[i], "-h"))  {
			MainProgram_showHelp();
			return E_EXIT_REQUESTED;
		}
		printf("Nieznana opcja: \"%s\"\n", argv[i]);
	}
	
	op->screen_width = w;
	op->screen_height = h;
	
	if ((mw) && (mh)) {
		op->screen_maxwidth  = mw;
		op->screen_maxheight = mh;
	}
	if (chdir(op->base_dir)) {
		MainProgram_showHelp();
		fprintf(stderr, "\nERROR: Failed chdir to default directory \"%s\"\nExiting.\n", op->base_dir);
		return E_EXIT_REQUESTED;
	}
	return E_NO_ERROR;
}

void change_child(Widget *sender, Screen *screen) {
	Image 		**image = Widget_fgetVparam(sender, 0);
	ScrollView 	*sview  = Widget_fgetVparam(sender, 1);
	if (! image) return;
	if (! sview) return;
	
	if (! sview->child) {
		ScrollView_addChild(sview, (Widget*)image[0], 0, 0);
		//sview = ScrollView_copy(sview);
		//Screen_addWidget(screen, (Widget*)sview, 1300, 100);
	}
	else {
		if (sview->child == (Widget*)image[0])
			ScrollView_addChild(sview, (Widget*)image[1], 50, 100);
		else
			ScrollView_addChild(sview, NULL, 10, 30);
	}
	Rectangle_setColor((Rectangle*)sender, rand()%UINF);
}

void change_bgcolor(Widget *sender, Screen *screen) {
	ScrollView *sview = Widget_fgetVparam(sender, 0);
	ScrollView_setBgColor(sview, rand()%UINF);
}

void change_border_color(Widget *sender, Screen *screen) {
	ScrollView *sview = Widget_fgetVparam(sender, 0);
	ScrollView_setBorder(sview, rand()%UINF, sview->border_width);
}

void change_border_width(Widget *sender, Screen *screen) {
	ScrollView *sview = Widget_fgetVparam(sender, 0);
	if (sender->id == UP)
		ScrollView_setBorder(sview, sview->border_color, sview->border_width+1);
	else
		ScrollView_setBorder(sview, sview->border_color, (sview->border_width)?(sview->border_width-1):0);
}

void change_width(Widget *sender, Screen *screen) {
	ScrollView *sview = Widget_fgetVparam(sender, 0);
	if (sender->id == UP)
		ScrollView_setSize(sview, sview->child_max_w+5, sview->child_max_h);
	else
		ScrollView_setSize(sview, (sview->child_max_w>=5)?(sview->child_max_w-5):0, sview->child_max_h);
}

void change_height(Widget *sender, Screen *screen) {
	ScrollView *sview = Widget_fgetVparam(sender, 0);
	if (sender->id == UP)
		ScrollView_setSize(sview, sview->child_max_w ,sview->child_max_h+5);
	else
		ScrollView_setSize(sview, sview->child_max_w, (sview->child_max_h>=5)?(sview->child_max_h-5):0);
}

void change_self_pos(Widget *sender, Screen *screen) {
	Widget *sview_wt = Widget_fgetVparam(sender, 0);
	int n;
	switch (sender->id) {
		case UP:
			n = sview_wt->relmin.y - 10;
			if (n < 0) n = 0;
			Widget_setPosition(sview_wt, sview_wt->relmin.x, n);
			break;
		case LEFT:
			n = sview_wt->relmin.x - 10;
			if (n < 0) n = 0;
			Widget_setPosition(sview_wt, n, sview_wt->relmin.y);
			break;
		case DOWN:
			n = sview_wt->relmin.y + 10;
			if (n + sview_wt->h > Screen_getBaseSurface()->h) n = Screen_getBaseSurface()->h - sview_wt->h;
			Widget_setPosition(sview_wt, sview_wt->relmin.x, n);
			break;
		case RIGHT:
			n = sview_wt->relmin.x + 10;
			if (n + sview_wt->w > Screen_getBaseSurface()->w) n = Screen_getBaseSurface()->w - sview_wt->w;
			Widget_setPosition(sview_wt, n, sview_wt->relmin.y);
			break;
	}
}

void change_child_pos(Widget *sender, Screen *screen) {
	ScrollView *sview = Widget_fgetVparam(sender, 0);
	ScrollView_scroll(sview, sender->id, 4);
}

void print_properties(Widget *sender, Screen *screen) {
	ScrollView *sview  = Widget_fgetVparam(sender, 0);
	ScrollView_printProperties(sview);
}

void widget_pressed(Widget *sender, Screen *screen) {
	_error("widget_pressed", sender, "sender->mouse_state=0x%X, 0x%X\n", sender->mouse_state, SDL_BUTTON(sender->mouse_state));
	switch (sender->mouse_state) {
		case MOUSE_LMASK:
			Widget_scale(sender, 1.2, 1.2);
			break;
		case MOUSE_RMASK:
			Widget_scale(sender, 0.8, 0.8);
			break;
		case MOUSE_WHELLUPMASK:
		case MOUSE_WHELLDOWNMASK:
			screen->mevent_handled = false;
			break;
	}
}

void mevent_test(Widget *sender, Screen *screen) {
	if ((typeo(sender) == StackList_t) || (typeo(sender) == Rectangle_t)) {
		uint bgcolor = (typeo(sender) == StackList_t) ? ((StackList*)sender)->bg_color : ((Rectangle*)sender)->bg_color;
		fprintf(stderr, "mevent_test:\n\
\tthis_wt:   (x,y)=(%4hu,%4hu), (mx,my)=(%4hu,%4hu), (w,h)=(%4hu,%4hu) is %s @ %p of bg_color %07X\n\
\tparent_wt: (x,y)=(%4hu,%4hu), (mx,my)=(%4hu,%4hu), (w,h)=(%4hu,%4hu) is %s @ %p\n",
			sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y, sender->w, sender->h,
			typename(sender), sender, bgcolor, 
			sender->parent->relmin.x, sender->parent->relmin.y, sender->parent->relmax.x, sender->parent->relmax.y, 
			sender->parent->w, sender->parent->h,
			typename(sender->parent), sender->parent);
	}
	else {
			fprintf(stderr, "mevent_test:\n\
\tthis_wt:   (x,y)=(%4hu,%4hu), (mx,my)=(%4hu,%4hu), (w,h)=(%4hu,%4hu) is %s @ %p\n\
\tparent_wt: (x,y)=(%4hu,%4hu), (mx,my)=(%4hu,%4hu), (w,h)=(%4hu,%4hu) is %s @ %p\n",
			sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y, sender->w, sender->h,
			typename(sender), sender, 
			sender->parent->relmin.x, sender->parent->relmin.y, sender->parent->relmax.x, sender->parent->relmax.y, 
			sender->parent->w, sender->parent->h,
			typename(sender->parent), sender->parent);
	}
	switch (screen->event.button.button) {
		case SDL_BUTTON_LEFT:
			Widget_scale(sender, 1.1, 1.1);
			break;
		case SDL_BUTTON_RIGHT:
			Widget_scale(sender, 0.9, 0.9);
			break;
	}
}

typedef struct some {
	StackList *sli1;
	StackList *sli2;
	Rectangle *rect1;
	Rectangle *rect2;
	Rectangle *rect3;
	Rectangle *rect4;
	Image     *img1;
	Image     *img2;
	Image     *img3;
	uchar      step;
} some;

void test_stacklist(Widget *sender, Screen *screen) {
	some *var = (some*) Widget_fgetVparam(sender, 0); if (! var) return;
	fprintf(stderr, "Step %d\n", var->step);
	switch (var->step) {
		case 0:
			{
				var->sli1 = StackList_new(VERTICAL, 2, true);
				Widget_addMeventHandler((Widget*)var->sli1, MOUSE_CLICK, mevent_test, 1);
				StackList_setPadding(var->sli1, 10, 20, 30, 40);
				Screen_addWidget(screen, (Widget*)var->sli1, 1000, 300);
				break;
			}
		case 1:
			{
				var->rect1 = Rectangle_new(0xFFFF0000, 5);
				Widget_addMeventHandler((Widget*)var->rect1, MOUSE_CLICK, mevent_test, 1);
				Widget_setSize((Widget*)var->rect1, 50, 40);
				StackList_addWidgetLast(var->sli1, (Widget*)var->rect1, ALIGN_LEFT, ALIGN_TOP, 0, 20, 0, 10);
				break;
			}
		case 2:
			{
				var->sli2 = StackList_new(VERTICAL, 2, true);
				StackList_setBgColor(var->sli2, 0x989898);
				Widget_addMeventHandler((Widget*)var->sli2, MOUSE_CLICK, mevent_test, 1);
				var->rect2 = Rectangle_new(0xFF00FF00, 5);
				Widget_addMeventHandler((Widget*)var->rect2, MOUSE_CLICK, mevent_test, 1);
				Widget_setSize((Widget*)var->rect2, 30, 30);
				StackList_addWidgetLast(var->sli2, (Widget*)var->rect2, ALIGN_LEFT, ALIGN_TOP, 0, 0, 0, 50);
				
				var->rect3 = Rectangle_new(0xFFFF72EC, 5);
				Widget_addMeventHandler((Widget*)var->rect3, MOUSE_CLICK, mevent_test, 1);
				Widget_setSize((Widget*)var->rect3, 60, 50);
				StackList_addWidgetLast(var->sli2, (Widget*)var->rect3, ALIGN_LEFT, ALIGN_TOP, 0, 20, 0, 0);
				
				StackList_addWidgetLast(var->sli1, (Widget*)var->sli2, ALIGN_LEFT, ALIGN_TOP, 0, 0, 0, 0);
				//var->step = 2;
				break;
			}
		case 3:
			var->img1 = Image_new("img/applications-graphics-2.png");
			
			StackList_addWidgetLast(var->sli1, (Widget*)var->img1, ALIGN_RIGHT, ALIGN_TOP, 23, 12, 5, 4);
			break;
		case 4:
			var->rect4 = Rectangle_new(0xFFFF72EC, 5);
			Widget_setSize((Widget*)var->rect4, 60, 50);
			StackList_addWidgetLast(var->sli1, (Widget*)var->rect4, ALIGN_RIGHT, ALIGN_TOP, 23, 12, 5, 4);
			break;
		case 5:
			var->img2 = Image_new("img/face-smile.png");
			StackList_addWidgetLast(var->sli2, (Widget*)var->img2, ALIGN_RIGHT, ALIGN_TOP, 23, 12, 5, 4);
			break;
		case 6:
			var->img3 = Image_new("img/applications-multimedia-2.png");
			StackList_addWidgetFirst(var->sli1, (Widget*)var->img3, ALIGN_RIGHT, ALIGN_TOP, 23, 12, 5, 4);
			break;
		
	}
	var->step++;
}

void memory_summary(Widget *sender, Screen *screen) {
	if (sender->id == 0)
		Memory_printUsage();
	else
		ObjectMemory_printUsage();
}

void textblock_pressed(Widget *sender, Screen *screen) {
	static uchar step;
	fprintf(stderr, "sender: %s @ %p\n", typename(sender), sender);
	if (typeo(sender) != TextBlock_t) return;
	Font *font = Widget_fgetVparam(sender, 0); if (! font) return;
	switch (step) {
		case 0: {
			TextBlock_setFont((TextBlock*)sender, font);
			break;
		}
		case 1: {
			String *str = String_newText("BY STRING");
			TextBlock *tb = TextBlock_newString(str);
			TextBlock_setFont(tb, font);
			TextBlock_setFgColor(tb, 0x0000FF);
			Screen_addWidget(screen, (Widget*)tb, 950, 400);
			delete(str);
			break;
		}
		case 2: {
			TextBlock *copytb = TextBlock_copy((TextBlock*)sender);
			Screen_addWidget(screen, (Widget*)copytb, 1100, 400);
			break;
		}
		case 3: {
			TextBlock_setBgColor((TextBlock*)sender, 0x00FF00);
			break;
		}
		case 4: {
			Widget_setPosition(sender, sender->relmin.x, sender->relmin.y+60);
			TextBlock_printf((TextBlock*)sender, 3, ": metoda TextBlock_printf() dla obiektu typu %s @ %p o rozmiarze %lu.",
				typename(sender), sender, typesize(sender));
			break;
		}
		case 5: {
			Font *font = Font_newName("_Arial", 25, FONT_BOLD);
			TextBlock_setFont((TextBlock*)sender, font); /// set ((TextBlock*)sender)->font to COPY of @var font
			TextBlock_printf((TextBlock*)sender, 0, "Zmiana czcionki na %s o wysokości %d", 
				TTF_FontFaceFamilyName(Font_getTTF(font)), TTF_FontHeight(Font_getTTF(font)));
			delete(font); /// delete font copy is still in TextBlock
			break;
		}
		case 6: {
			TextBlock_setFont((TextBlock*)sender, font);
			TextBlock_printf((TextBlock*)sender, TextBlock_getStringLen((TextBlock*)sender), 
				" ... i powrót do poprzedniej czcionki.");
			break;
		}
	}
	
	step++;
}

void inner_wt_clicked(Widget *sender, Screen *screen) {
	StackList *sli = Widget_fgetVparam(sender, 0);
	if (sli) {
		TextBlock *tb = TextBlock_new();
		TextBlock_printf(tb, 0, "Kliknąłeś %s @ %p id=%u", typename(sender), sender, sender->id);
		TextBlock_setFgColor(tb, 0x0000FF);
		TextBlock_setFontStyle(tb, FONT_BOLD);
		StackList_addWidgetLast(sli, (Widget*)tb, ALIGN_CENTER, ALIGN_CENTER, 2, 2, 2, 2);
	}
}

void scrollview_test(Widget *sender, Screen *screen) {
	static uchar step;
	_error("scrollview_test", sender, "step=%d\n", step);
	
	switch (step) {
		case 0: {
			ScrollView *sv = ScrollView_new(500, 550);
			_error("scrollview_test", sender, "sv=%p\n", sv);
			Widget_addParameter(sender, sv, 3);	// at ind=0
			Screen_addWidget(screen, (Widget*)sv, 1300, 10);
			break;
		}
		case 1: {
			ScrollView *sv  = Widget_fgetVparam(sender, 0);
			StackList  *sli = StackList_new(VERTICAL, 10, true);
			Widget_fsetInternal(sli, true);
			StackList_setBgColor(sli, 0xD0D0D0);
			StackList_setPadding(sli, 5, 5, 5, 5);
			if (sv) ScrollView_addChild(sv, (Widget*)sli, 0, 0);
			//Screen_addWidget(screen, (Widget*)sli, 1300, 10);
			Widget_addParameter(sender, sli, 0);	// at ind=1
			break;
		}
		case 2: 
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:
		{
			StackList *sli = Widget_fgetVparam(sender, 1);
			if (sli) {
				TextBlock *tb = TextBlock_new();
				((Widget*)tb)->id = rand() % 100001;
				Widget_addParameter((Widget*)tb, sli, 1);
				Widget_addMeventHandler((Widget*)tb, MOUSE_CLICK, inner_wt_clicked, 1);
				TextBlock_printf(tb, 0, "TextBlock %u", ((Widget*)tb)->id);
				StackList_addWidgetLast(sli, (Widget*)tb, ALIGN_CENTER, ALIGN_CENTER, 2, 2, 2, 2);
			}
			break;
		}
		
		case 14: {
			
			break;
		}
	}
	
	step++;
}

void std_press(Widget *sender, Screen *screen) {
	_error2("std_press  ", "Pressed on  %s @ %p (minx,miny)=(%hu,%hu), (maxx,maxy)=(%hu,%hu), (w,h)=(%hu,%hu)\n",
		typename(sender), sender, sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y,
		sender->w, sender->h);
}

void std_click(Widget *sender, Screen *screen) {
	_error2("std_click  ", "Clicked on  %s @ %p (minx,miny)=(%hu,%hu), (maxx,maxy)=(%hu,%hu), (w,h)=(%hu,%hu)\n",
		typename(sender), sender, sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y,
		sender->w, sender->h);
}

void std_release(Widget *sender, Screen *screen) {
	_error2("std_release", "Released on %s @ %p (minx,miny)=(%hu,%hu), (maxx,maxy)=(%hu,%hu), (w,h)=(%hu,%hu)\n",
		typename(sender), sender, sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y,
		sender->w, sender->h);
}

void std_enter(Widget *sender, Screen *screen) {
	_error2("std_enter  ", "Entered     %s @ %p (minx,miny)=(%hu,%hu), (maxx,maxy)=(%hu,%hu), (w,h)=(%hu,%hu)\n",
		typename(sender), sender, sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y,
		sender->w, sender->h);
}

void std_exit(Widget *sender, Screen *screen) {
	_error2("std_exit   ", "Exited      %s @ %p (minx,miny)=(%hu,%hu), (maxx,maxy)=(%hu,%hu), (w,h)=(%hu,%hu)\n",
		typename(sender), sender, sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y,
		sender->w, sender->h);
}

void std_drag(Widget *sender, Screen *screen) {
	_error2("std_drag   ", "Dragged     %s @ %p (minx,miny)=(%hu,%hu), (maxx,maxy)=(%hu,%hu), (w,h)=(%hu,%hu)\n",
		typename(sender), sender, sender->relmin.x, sender->relmin.y, sender->relmax.x, sender->relmax.y,
		sender->w, sender->h);
		
		
	Widget_setPosition(sender, screen->mevent.x, screen->mevent.y);
}

void test_border(Widget *sender, Screen *screen) {
	static uchar step;
	switch(step) {
		case 0: {
			Border *bord = Border_new();
			if (bord) {
				Border_setBorder(bord, 0x00FF00, 5);
				Border_setPadding(bord, 10, 30, 50, 70);
				Border_setBgColor(bord, 0xFFB9F7);
				Screen_addWidget(screen, (Widget*)bord, 1200, 450);
				Widget_addParameter(sender, bord, 3);
				Widget_addMeventHandler((Widget*)bord, MOUSE_PRESS, std_press, 1);
				Widget_addMeventHandler((Widget*)bord, MOUSE_CLICK, std_click, 1);
				Widget_addMeventHandler((Widget*)bord, MOUSE_RELEASE, std_release, 1);
				Widget_addMeventHandler((Widget*)bord, MOUSE_ENTER, std_enter, 1);
				Widget_addMeventHandler((Widget*)bord, MOUSE_EXIT, std_exit, 1);
				Widget_addMeventHandler((Widget*)bord, MOUSE_DRAG, std_drag, 1);
			}
			break;
		}
		case 1: {
			Image *img = Image_new("/home/darek/Obrazy/Zdjecia/DSC01048.JPG");
			Border *bord = Widget_fgetVparam(sender, 0);
			if (img) {
				Widget_addMeventHandler((Widget*)img, MOUSE_PRESS, std_press, 1);
				Widget_addMeventHandler((Widget*)img, MOUSE_CLICK, std_click, 2);
				Widget_addMeventHandler((Widget*)img, MOUSE_CLICK, mevent_test, 2);
				Widget_addMeventHandler((Widget*)img, MOUSE_RELEASE, std_release, 1);
				Widget_scaleSize((Widget*)img, 400, 100, SCALE_SIZE_TO_WIDTH);
				if (bord) {
					Widget_fsetInternal(img, true);
					Border_addChild(bord, (Widget*)img);
					Widget_addParameter(sender, img, 3);
				}
				else
					delete(img);
			}
			break;
		}
		case 2: {
			Border *bord = Widget_fgetVparam(sender, 0);
			Image *img = Widget_fgetVparam(sender, 1);
			if (img) delete(img);
			img = Image_new("/home/darek/Obrazy/Zdjecia/DSC01048.JPG");
			if (img) {
				Widget_scaleSize((Widget*)img, 400, 100, SCALE_SIZE_TO_HEIGHT);
				Widget_addMeventHandler((Widget*)img, MOUSE_PRESS, std_press, 1);
				Widget_addMeventHandler((Widget*)img, MOUSE_CLICK, std_click, 2);
				Widget_addMeventHandler((Widget*)img, MOUSE_CLICK, mevent_test, 2);
				Widget_addMeventHandler((Widget*)img, MOUSE_RELEASE, std_release, 1);
				if (bord) {
					Widget_fsetInternal(img, true);
					Border_addChild(bord, (Widget*)img);
					Widget_addParameter(sender, img, 3);
				}
				else
					delete(img);
			}
			break;
		}
		case 3: {
			Border *bord = Widget_fgetVparam(sender, 0);
			Image *img = Widget_fgetVparam(sender, 2);
			if (img) delete(img);
			img = Image_new("/home/darek/Obrazy/Zdjecia/DSC01048.JPG");
			if (img) {
				Widget_scaleSize((Widget*)img, 400, 100, SCALE_SIZE_TO_NONE);
				Widget_addMeventHandler((Widget*)img, MOUSE_PRESS, std_press, 1);
				Widget_addMeventHandler((Widget*)img, MOUSE_CLICK, std_click, 2);
				Widget_addMeventHandler((Widget*)img, MOUSE_CLICK, mevent_test, 2);
				Widget_addMeventHandler((Widget*)img, MOUSE_RELEASE, std_release, 1);
				if (bord) {
					Widget_fsetInternal(img, true);
					Border_addChild(bord, (Widget*)img);
					Widget_addParameter(sender, img, 3);
				}
				else
					delete(img);
			}
			break;
		}
	}
	
	step++;
}
/**/

#define C_RECT	24
#define C_IMG	10
#define RECT_RAD	4
int main(int argc, const char **argv) {
	printf("main\n");
	merr		ee;
	options		op;
	some		var = {0};
	Rectangle	*rect[C_RECT] = {NULL};
	Screen 		*screen;
	Rectangle	*rt;
	Image		*img, *image[C_IMG] = {NULL};
	ScrollView	*sview;
	StackList	*sli1, *sli2;
	String		*str;
	perr 		e;
	usint 		i, x;
	
	if (ee = Memory_init()) {
		fprintf(stderr, "main: Memory_init() failed with error: %s\n", Memory_getError(ee));
		return ee;
	}
	printf("after memory init\n");
	if (MainProgram_parseOptions(&op, argc, argv) == E_EXIT_REQUESTED) return 0;
	if (e = ObjectMemory_init(&op)) {
		fprintf(stderr, "main: Object_start() failed with error %s\n", perr_getName(e));
		return 1;
	}
	printf("after parse options\n");
	Screen_setOptions(&op);
	printf("after set screen options\n");
	//~ String *str = String_newText("ABC");
	//~ fprintf(stderr, "### [0] .len[%2lu], .siz[%2lu], .buf[%s]\n", str->len, str->size, str->buffer);
	//~ 
	//~ String_printf(str, 3, ": metoda TextBlock_printf() dla obiektu typu %s @ %p o rozmiarze %lu.", "TextBlock", (void*)0x22104f0, 136);
	//~ 
	//~ fprintf(stderr, "\n### [1] .len[%2lu], .siz[%2lu], .buf[%s]\n", str->len, str->size, str->buffer);
	//~ 
	//~ String_printf(str, 0, "Zmiana czcionki na %s o wysokości %d", "Arial", 29);
	//~ 
	//~ fprintf(stderr, "\n### [2] .len[%2lu], .siz[%2lu], .buf[%s]\n", str->len, str->size, str->buffer);
	//~ 
	//~ String_printf(str, 5, "... i powrót do poprzedniej czcionki.");
	//~ 
	//~ fprintf(stderr, "\n### [3] .len[%2lu], .siz[%2lu], .buf[%s]\n", str->len, str->size, str->buffer);
	//~ printf("[START] str2[%p] = \"%s\"\n", str2,  String_getText(str2));
	//~ String_printf(str, 0, "XYZ_%d", 23);
	//~ printf("[END  ] str = \"%s\"\n", String_getText(str));
	//~ printf("[END  ] str2 = \"%s\"\n", String_getText(str2));
	//~ delete(str);
	//~ delete(str2);
	
	screen = Screen_new(50, true);
	screen->drag_on = true;
	printf("after screen create\n");
	img = Image_new("img/FreeGreatPicture.com-26189-abstract-color-background.jpg");
	Widget_addMeventHandler((Widget*)img, MOUSE_CLICK, std_click, 1);
	Widget_fsetInternal(img, true);
	Screen_setBackgroundWidget(screen, (Widget*)img, BG_STRETCH);
	
	printf("before scan\n");
	FontCache_testscan();
	printf("after scan\n");
	sview = ScrollView_new(450, 225);
	Screen_addWidget(screen, (Widget*)sview, 140, 10);
	
	image[0] = Image_new("img/Image_processing_pre_otsus_algorithm.jpg");
	image[1] = Image_new("img/address-book-new.png");
	image[2] = Image_new("img/Image_processing_pre_otsus_algorithm.jpg");
	//~ ((Widget*)image[2])->id = 0xFF;
	Widget_fsetDraggable(image[2], true);
	
	Widget_addMeventHandler((Widget*)image[0], MOUSE_CLICK, widget_pressed, 2);
	//~ Widget_addMeventHandler((Widget*)image[0], MOUSE_CLICK, std_click, 2);
	//~ Widget_addMeventHandler((Widget*)image[0], MOUSE_PRESS, std_press, 1);
	//~ Widget_addMeventHandler((Widget*)image[0], MOUSE_RELEASE, std_release, 1);
	
	
	Widget_addMeventHandler((Widget*)image[2], MOUSE_CLICK, widget_pressed, 1);
	Screen_addWidget(screen, (Widget*)image[2], 300, 350);
	
	i = 0;
	rt = rect[i++];
	rt = Rectangle_new(0x1137D74F, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_child, 1);
	Widget_addParameter(((Widget*)rt), image, 2);
	Widget_addParameter(((Widget*)rt), sview, 2);
	Widget_setSize((Widget*)rt, 100, 100);
	Screen_addWidget(screen, (Widget*)rt, 30, 80);
	
	x = 30;
	rt = rect[i++];
	rt = Rectangle_new(0xFF40C3FC, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_bgcolor, 1);
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 50);
	Screen_addWidget(screen, (Widget*)rt, 30, 250);
	
	rt = rect[i++];
	rt = Rectangle_new(0x11FF53ED, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_border_color, 1);
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 50);
	Screen_addWidget(screen, (Widget*)rt, x+=55, 250);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFFF294A, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_border_width, 1);
	((Widget*)rt)->id 	 = UP;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=55, 250);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF42B2FF, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_border_width, 1);
	((Widget*)rt)->id 	 = DOWN;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 20);
	Screen_addWidget(screen, (Widget*)rt, x, 280);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFFF294A, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_width, 1);
	((Widget*)rt)->id 	 = UP;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=55, 250);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF42B2FF, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_width, 1);
	((Widget*)rt)->id 	 = DOWN;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 20);
	Screen_addWidget(screen, (Widget*)rt, x, 280);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFFF294A, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_height, 1);
	((Widget*)rt)->id 	 = UP;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=55, 250);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF42B2FF, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_height, 1);
	((Widget*)rt)->id 	 = DOWN;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 20);
	Screen_addWidget(screen, (Widget*)rt, x, 280);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF64DC57, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_self_pos, 1);
	((Widget*)rt)->id 	 = LEFT;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=65, 265);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF64DC57, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_self_pos, 1);
	((Widget*)rt)->id 	 = UP;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=25, 245);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF64DC57, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_self_pos, 1);
	((Widget*)rt)->id 	 = DOWN;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x, 285);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF64DC57, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_self_pos, 1);
	((Widget*)rt)->id 	 = RIGHT;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=25, 265);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFC354AB, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_child_pos, 1);
	((Widget*)rt)->id 	 = LEFT;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=45, 265);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFC354AB, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_child_pos, 1);
	((Widget*)rt)->id 	 = UP;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=25, 245);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFC354AB, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_child_pos, 1);
	((Widget*)rt)->id 	 = DOWN;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x, 285);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFC354AB, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, change_child_pos, 1);
	((Widget*)rt)->id 	 = RIGHT;
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 20, 20);
	Screen_addWidget(screen, (Widget*)rt, x+=25, 265);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF23AE00, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, print_properties, 1);
	Widget_addParameter(((Widget*)rt), sview, 1);
	Widget_setSize((Widget*)rt, 50, 50);
	Screen_addWidget(screen, (Widget*)rt, 30, 350);
	
	/*01*/sli1 = StackList_new(VERTICAL, 2, true);
	//Widget_addMeventHandler((Widget*)sli1, MOUSE_CLICK, mevent_test, 1);
	Widget_fsetDraggable(sli1, true);
	/*--*/StackList_setPadding(sli1, 10, 10, 20, 20);
	
	/*--*/rt = rect[i++];
	/*02*/rt = Rectangle_new(0xFFFF0000, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, mevent_test, 1);
	/*03*/Widget_setSize((Widget*)rt, 50, 40);
	/*04*/StackList_addWidgetLast(sli1, (Widget*)rt, ALIGN_LEFT, ALIGN_TOP, 0, 20, 0, 10);
	
	/*07*/sli2 = StackList_new(VERTICAL, 2, true);
	/*--*/StackList_setBgColor(sli2, 0x989898);
	//Widget_addMeventHandler((Widget*)sli2, MOUSE_CLICK, mevent_test, 1);
	/*--*/rt = rect[i++];
	/*08*/rt = Rectangle_new(0xFF00FF00, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, mevent_test, 1);
	/*09*/Widget_setSize((Widget*)rt, 30, 30);
	/*10*/StackList_addWidgetLast(sli2, (Widget*)rt, ALIGN_LEFT, ALIGN_TOP, 0, 0, 0, 50);
	
	/*--*/rt = rect[i++];
	/*13*/rt = Rectangle_new(0xFFFF72EC, RECT_RAD);
	//Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, mevent_test, 1);
	/*14*/Widget_setSize((Widget*)rt, 60, 50);
	/*15*/StackList_addWidgetLast(sli2, (Widget*)rt, ALIGN_LEFT, ALIGN_TOP, 0, 20, 0, 0);
	
	/*16*/StackList_addWidgetLast(sli1, (Widget*)sli2, ALIGN_LEFT, ALIGN_TOP, 0, 0, 0, 0);
	
	/*17*/Screen_addWidget(screen, (Widget*)sli1, 700, 300);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFFFCD32, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, test_stacklist, 1);
	Widget_addParameter(((Widget*)rt), &var, 1);
	Widget_setSize((Widget*)rt, 50, 50);
	Screen_addWidget(screen, (Widget*)rt, 15, 400);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFFFFCD00, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, memory_summary, 1);
	((Widget*)rt)->id = 0;
	Widget_setSize((Widget*)rt, 80, 30);
	Screen_addWidget(screen, (Widget*)rt, 100, 400);
	
	rt = rect[i++];
	rt = Rectangle_new(0xFF23FF32, RECT_RAD);
	Widget_addMeventHandler((Widget*)rt, MOUSE_CLICK, memory_summary, 1);
	((Widget*)rt)->id = 1;
	Widget_setSize((Widget*)rt, 80, 30);
	Screen_addWidget(screen, (Widget*)rt, 100, 450);
	
	Font *font = Font_newName("Times New Roman", 25, FONT_BOLD);
	TextBlock *tb = TextBlock_newText("ABC");
	
	_error2("main", "Created text_block=%p, with click handler=%p\n", tb, textblock_pressed);
	Widget_addMeventHandler((Widget*)tb, MOUSE_CLICK, textblock_pressed, 2);
	//Widget_addMeventHandler((Widget*)tb, MOUSE_CLICK, mevent_test, 2);
	Widget_addParameter((Widget*)tb, font, 1);
	Screen_addWidget(screen, (Widget*)tb, 850, 400);
	
	str = String_newText("Kliknij tutaj...");
	tb = TextBlock_newString(str);
	Widget_addMeventHandler((Widget*)tb, MOUSE_CLICK, scrollview_test, 1);
	Screen_addWidget(screen, (Widget*)tb, 850, 300);
	
	tb = TextBlock_newText("Test Border...");
	Widget_addMeventHandler((Widget*)tb, MOUSE_CLICK, test_border, 1);
	Screen_addWidget(screen, (Widget*)tb, 900, 450);
	
	Font *font_arialblack = Font_newName("Arial Black", 20, FONT_NORMAL);
	if (font_arialblack) {
		tb = TextBlock_newText("Arial Black");
		TextBlock_setFont(tb, font_arialblack);
		Screen_addWidget(screen, (Widget*)tb, 500, 500);
		Widget_fsetDraggable(tb, true);
		delete(font_arialblack);
	}
	
	delete(str);
	
	Memory_printUsage();
	
	Screen_MainStart(screen);
	
	ObjectMemory_printUsage(); // before any destroy
	
	for (i = 0; i < C_IMG; i++) {
		if ((image[i]) && (! Widget_fisInternal(image[i]))) 
			delete(image[i]);
	}
	
	delete(font);
	delete(screen);			// deletes screen object and deinitializes SDL library (last screen deleted)
	
	ObjectMemory_end();		// stops object memory management
	
	if (ee = Memory_end()) {// stops memory management
		fprintf(stderr, "main: Memory_end() exited with error: %s\n", Memory_getError(ee));
		return ee;
	}
	
	return 0;
}

