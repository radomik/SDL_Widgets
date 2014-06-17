/*
 *      AudioMain.c - this file is part of SDL_Widgets
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
#include "Static.h"
#include "Screen.h"
#include "Memory.h"
#include "FileBrowsePanel.h"
#include "Widget.h"
#include "Image.h"
#include "Button.h"
#include "TextBlock.h"
#include "Label.h"
#include "LabelImage.h"
#include "ButtonImage.h"
#include "Rectangle.h"
#include "StackList.h"
#include "Container.h"
#include "Grid.h"
#include "AudioMain.h"
#include "AudioCallbacks.h"
#include "Audio.h"
#include "AudioTest.h"
#include "AudioSinus.h"
#include "AudioFromGraph.h"
#include "WaveDrawBox.h"


/* SECTION AUDIO */
#define 	cAUDIO 		3
static Audio 			**audio;
static AudioTest		*audiotest;
static AudioSinus		*audiosinus;
static AudioFromGraph	*afg;
static u16 			c_audio = 0;
static u16			audio_current_index = 1;

int AudioMain_createAudio() {
	audio = (Audio**) malloc(cAUDIO*sizeof(Audio*));
	
	// AudioTest [dynamic object] //id=0
	audiotest = AudioTest_new(new(AudioTest_class));
	AudioTest_setFreq1(audiotest, 60);
	AudioTest_setFreq2(audiotest, 100);
	AudioTest_setFase1(audiotest, 20);
	AudioTest_setFase2(audiotest, 10);
	audio[c_audio] = AUDIO(audiotest);
	audio[c_audio]->id = c_audio;
	strncpy(audio[c_audio]->name, "Test SDL_Audio", 20);
	c_audio++;
	
	// AudioSinus [dynamic object] //id=1
	audiosinus = AudioSinus_new(new(AudioSinus_class));
	AudioSinus_setFrequency(audiosinus, 440.0);
	audio[c_audio] = AUDIO(audiosinus);
	audio[c_audio]->id = c_audio;
	strncpy(audio[c_audio]->name, "Sine Wave (PA)", 20);
	c_audio++;
	
	// AudioFromGraph [dynamic object] //id=2
	afg = AudioFromGraph_new(new(AudioFromGraph_class));
	audio[c_audio] = AUDIO(afg);
	audio[c_audio]->id = c_audio;
	strncpy(audio[c_audio]->name, "AudioFromGraph (PA)", 20);
	c_audio++;
	
	return 0;
}


/* SECTION USER INTERFACE */
/* Count of each type of widget, can't be lower than needed */
#define cIMAGE			(10)			// Image count
#define cBUTTON 		(8)
#define cTEXTBLOCK 		(1)
#define cLABEL 			(9)
#define cLABELIMAGE 	(3)
#define cBUTTONIMAGE 	(20)
#define cRECTANGLE 		(10)
#define cWAVEDRAWBOX	(1)
#define cSTACKLIST		(20)
#define	cGRID			(1)

static Screen		*sc;
static Image		*background;
static Image 		*image;
static TextBlock 	*text_block;
static Button 		*button;
static Label 		*label;
static LabelImage 	*labelimage;
static ButtonImage  *buttonimage;
static Rectangle    *rectangle;
static WaveDrawBox	*wdb;
static StackList	*stacklist;
static Grid			*grid;
static TTF_Font		*font2;

static u16 c_image=0, c_button=0, c_textblock=0, c_label=0, c_labelimage=0, c_wdb=0,
			 c_buttonimage = 0, c_rectangle=0, c_stacklist=0, c_grid=0;

static b8 		is_inited = false;

void screen_toogled_drag_on(Screen *screen) {
	sprintf(label[0].text_block.text+15, "%s", (screen->drag_on) ? " WŁĄCZONE" : "WYŁĄCZONE");
	Widget_refresh(WIDGET(&label[0]));
	screen->need_reload = true;
}

#define	AUDIO_CALLBACKS_COUNT	7
static void (*click_handler[AUDIO_CALLBACKS_COUNT])(Widget*, Screen*) = {
	button_freq1_change,
	button_fase1_change,
	button_freq2_change,
	button_fase2_change,
	button_source_change,
	button_sinefreq_change,
	button_audio_from_graph_type_change
};

int AudioMain_createInterface() {
	image 			= (cIMAGE > 0) 		? malloc(cIMAGE * sizeof(Image)) 				: NULL;
	text_block 		= (cTEXTBLOCK > 0)	? malloc(cTEXTBLOCK * sizeof(TextBlock))		: NULL;
	button 			= (cBUTTON > 0) 	? malloc(cBUTTON * sizeof(Button)) 				: NULL;
	label 			= (cLABEL > 0) 		? malloc(cLABEL * sizeof(Label)) 				: NULL;
	labelimage 		= (cLABELIMAGE > 0) ? malloc(cLABELIMAGE * sizeof(LabelImage))		: NULL;
	buttonimage		= (cBUTTONIMAGE > 0)? malloc(cBUTTONIMAGE * sizeof(ButtonImage))	: NULL;
	rectangle		= (cRECTANGLE > 0)  ? malloc(cRECTANGLE * sizeof(Rectangle))		: NULL;
	wdb   			= (cWAVEDRAWBOX > 0)? malloc(cWAVEDRAWBOX * sizeof(WaveDrawBox))	: NULL;
	stacklist		= (cSTACKLIST > 0)	? malloc(cSTACKLIST * sizeof(StackList))		: NULL;
	grid			= (cGRID > 0)		? malloc(cGRID * sizeof(Grid))					: NULL;
	
	font2 = Static_getFont("fonts/ariblk.ttf", 20);
	if (! font2) {
		fprintf(stderr, "AudioMain_createInterface: failed to load font \"fonts/ariblk.ttf\"\n");
		return 1;
	}
	Screen_setBackgroundColor(sc, 0x90EE90);
	
	background = Image_new(new(Image_class), "img/25600-colorful-high-resolution-background.jpg", 0, 0);
	if (background)
		Screen_setBackgroundWidget(sc, (Widget*)background, BG_STRETCH);
		
	StackList			*slix, *sliy, *sliy2;
	ButtonImage			*butimg;
	Label				*lab, *lab_sine_freq;
	Button				*but;
	Image				*img;
	WaveDrawBox			*wdb2;
	u32				cparam_off = 0;
	u16 label_off, k, f;
	
	{/*!! Screen widgets section (ZERO SECTION) these wigets aren't placed in containers !!*/
		// Create buttonimage[0] (app exit) and add it to screen
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_new(butimg, "img/application-exit-5.png");
		ButtonImage_applyDefaultStyle(butimg, 1750, 14, 20, 20, true);
		WIDGET(butimg)->click_handler = Screen_buttonExitClicked;
		Screen_addWidget(sc, WIDGET(butimg));
		fprintf(stderr, "%hux%hu\n", Screen_getWidth(), Screen_getHeight());
		
		// Create label[0] (drag on/off indicator) and add it to screen
		lab = &(label[c_label++]);
		Label_new(lab, "Przeciąganie:              ");
		sprintf(lab->text_block.text+15, "%s", (sc->drag_on) ? " WŁĄCZONE" : "WYŁĄCZONE");
		Label_applyDefaultStyle(lab, 1, 950, font2, 10, 5, true);
		Screen_addWidget(sc, WIDGET(lab));
	}
	
	
	{/*!! Play/pause/stop buttons section !! (FIRST SECTION) */
		//! create StackList(slix) and add it to screen
		slix = &(stacklist[c_stacklist++]);
		StackList_new( slix, HORIZONTAL, 2 );
		Container_setPadding( CONTAINER(slix), 15, 15 );
		Widget_setPosition( WIDGET(slix), 20, 20 );
		WIDGET(slix)->draggable = true;
		Screen_addWidget( sc, WIDGET(slix) );
		
		//! Create buttonimage[1...3] and add them to stacklistX(slix, sli)
			// buttonimage(play)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_new(butimg, "img/media-playback-start-3.png");
		ButtonImage_applyDefaultStyle(butimg, 167, 7, 5, 5, true);
		WIDGET(butimg)->click_handler = button_play_clicked;
		Widget_addVParam(WIDGET(butimg), audio, 2);
		Widget_addVParam(WIDGET(butimg), &audio_current_index, 2);
		StackList_addWidgetLast(slix, WIDGET(butimg), ALIGN_CENTER, ALIGN_CENTER, 6, 6, 6, 3);
		
			// buttonimage(pause)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_new(butimg, "img/media-playback-pause-3.png");
		ButtonImage_applyDefaultStyle(butimg, 240, 7, 5, 5, true);
		WIDGET(butimg)->click_handler = button_pause_clicked;
		Widget_addVParam(WIDGET(butimg), audio, 2);
		Widget_addVParam(WIDGET(butimg), &audio_current_index, 2);
		StackList_addWidgetLast(slix, WIDGET(butimg), ALIGN_CENTER, ALIGN_CENTER, 6, 3, 6, 3);
		
			// buttonimage(stop)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_new(butimg, "img/media-playback-stop-3.png");
		ButtonImage_applyDefaultStyle(butimg, 313, 7, 5, 5, true);
		WIDGET(butimg)->click_handler = button_stop_clicked;
		Widget_addVParam(WIDGET(butimg), audio, 2);
		Widget_addVParam(WIDGET(butimg), &audio_current_index, 2);
		StackList_addWidgetLast(slix, WIDGET(butimg), ALIGN_CENTER, ALIGN_CENTER, 6, 3, 6, 6);
		
		//! Refresh stacklist(slix)
		Widget_refresh(WIDGET(slix));
	
	}/*!! END Play/pause/stop buttons section !!*/
	
	
	{/*!! Labels section !! 				 (SECOND SECTION) */
		label_off  = c_label;
		
		// label[label_off]
		lab = &(label[c_label++]);
		Label_new(lab, "Frequency1:          ");
		sprintf(lab->text_block.text+12, "%5d Hz", audiotest->freq1);
		Label_applyDefaultStyle(lab, 1, 950, font2, 40, 9, true);
		cparam_off = 0;
		Screen_addCParam(sc, button_freq1_change, lab, 	0, &cparam_off);
		Screen_addCParam(sc, button_freq1_change, audiotest, 1, &cparam_off);
		
		// label[label_off+1]
		lab = &(label[c_label++]);
		Label_new(lab, "Fase1:          ");
		sprintf(lab->text_block.text+7, "%5d", audiotest->fase1);
		Label_applyDefaultStyle(lab, 1, 950, font2, 87, 9, true);
		cparam_off = 0;
		Screen_addCParam(sc, button_fase1_change, lab,		0, &cparam_off);
		Screen_addCParam(sc, button_fase1_change, audiotest, 1, &cparam_off);
		
		// label[label_off+2]
		lab = &(label[c_label++]);
		Label_new(lab, "Frequency2:          ");
		sprintf(lab->text_block.text+12, "%5d Hz", audiotest->freq2);
		Label_applyDefaultStyle(lab, 1, 950, font2, 40, 10, true);
		cparam_off = 0;
		Screen_addCParam(sc, button_freq2_change, lab,		0, &cparam_off);
		Screen_addCParam(sc, button_freq2_change, audiotest, 1, &cparam_off);
		
		// label[label_off+3]
		lab = &(label[c_label++]);
		Label_new(lab, "Fase2:          ");
		sprintf(lab->text_block.text+7, "%5d", audiotest->fase2);
		Label_applyDefaultStyle(lab, 1, 950, font2, 40, 10, true);
		cparam_off = 0;
		Screen_addCParam(sc, button_fase2_change, lab, 	0, &cparam_off);
		Screen_addCParam(sc, button_fase2_change, audiotest, 1, &cparam_off);
		
		// label[label_off+4]
		lab = &(label[c_label++]);
		Label_new(lab, "Źródło dźwięku:                      ");
		sprintf(lab->text_block.text+22, "%20s", audio[audio_current_index]->name);
		Label_applyDefaultStyle(lab, 1, 950, font2, 40, 5, true);
		cparam_off = 0;
		Screen_addCParam(sc, button_source_change, lab,					0, &cparam_off);
		Screen_addCParam(sc, button_source_change, audio,					1, &cparam_off);
		Screen_addCParam(sc, button_source_change, &audio_current_index,		2, &cparam_off);
		Screen_addCParam(sc, button_source_change, &c_audio,					3, &cparam_off);
		
		// label[label_off+5] (lab_sine_freq)
		lab_sine_freq = &(label[c_label++]);
		Label_new(lab_sine_freq, "Częstotliwość:          ");
		sprintf(lab_sine_freq->text_block.text+19, "%8.2f", audiosinus->freq);
		Label_applyDefaultStyle(lab_sine_freq, 1, 950, font2, 10, 6, true);
		cparam_off = 0;
		Screen_addCParam(sc, button_sinefreq_change, lab_sine_freq,		0, &cparam_off);
		Screen_addCParam(sc, button_sinefreq_change, audiosinus, 		1, &cparam_off);
		
		// create stacklist(sliy2) and add it to screen
		sliy2 = &(stacklist[c_stacklist++]);
		StackList_new(sliy2, VERTICAL, 6);
		Widget_setPosition(WIDGET(sliy2), 486, 2);
		WIDGET(sliy2)->draggable	= true;
		Screen_addWidget(sc, WIDGET(sliy2));
		
		for (k = label_off, f = 0; k < label_off+6; k++, f++) {	// create each Row of StackList
			// create StackList(sliy) (contains arrow buttons placed along Y axis)
			sliy = &(stacklist[c_stacklist++]);
			StackList_new(sliy, VERTICAL, 2);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
			WIDGET(butimg)->click_handler = click_handler[f];
			WIDGET(butimg)->id = 1;
			StackList_addWidgetLast(sliy, WIDGET(butimg), ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy)
			butimg = &(buttonimage[c_buttonimage++]);
			ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
			WIDGET(butimg)->click_handler = click_handler[f];
			WIDGET(butimg)->id = 0;
			StackList_addWidgetLast(sliy, WIDGET(butimg), ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			
			// Refresh StackList(sliy) with buttons filled
			Widget_refresh(WIDGET(sliy));
			
			// create stacklist(slix) (full row)
			slix = &(stacklist[c_stacklist++]);
			StackList_new(slix, HORIZONTAL, 2);
			
			// add stacklist(sliy) and label[k] to stacklist(slix)
			StackList_addWidgetLast(slix, WIDGET(sliy), ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 10);
			StackList_addWidgetLast(slix, WIDGET(&label[k]), ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
			Widget_refresh(WIDGET(slix));
			
			// add stacklist(slix) to stacklist(sliy2) (full row)
			StackList_addWidgetLast(sliy2, WIDGET(slix), ALIGN_LEFT, ALIGN_CENTER, 4, 0, 2, 4);
		}
		
		// refresh StackList(sliy2)
		Widget_refresh(WIDGET(sliy2));
	
	}/*!! END Labels section !!*/
	
	/** Flowable image used to adjust frequency of AudioSinus */
	img = &(image[c_image++]);
	Image_new(img, "img/applications-multimedia-2.png", 300, 300);
	WIDGET(img)->release_handler = image_mrelease;
	WIDGET(img)->draggable = true;
	Widget_addVParam(WIDGET(img), lab_sine_freq, 2);
	Widget_addVParam(WIDGET(img), audiosinus, 2);
	Screen_addWidget(sc, WIDGET(img));
	
	{/*!! WaveDrawBox section !!*/
		// Create StackList(sliy) and add it to screen
		sliy = &(stacklist[c_stacklist++]);
		StackList_new(sliy, VERTICAL, 2);
		Widget_setPosition(WIDGET(sliy), 600, 400);
		WIDGET(sliy)->draggable = true;
		Screen_addWidget(sc, WIDGET(sliy));
		
		// Create WaveDrawBox(wdb2) and add it to StackList(sliy)
		wdb2 = &(wdb[c_wdb++]);
		WaveDrawBox_new(wdb2, afg, 300);
		wdb2->padx			= 15;
		wdb2->pady			= 10;
		wdb2->my			= 5;
		wdb2->bunch 		= 50;
		wdb2->sample_freq	= 44100;
		Widget_setPosition(WIDGET(wdb2), 10, 500);
		Widget_refresh(WIDGET(wdb2));
		StackList_addWidgetLast(sliy, WIDGET(wdb2), ALIGN_CENTER, ALIGN_CENTER, 5, 5, 5, 5);
		
		// Create StackList(slix)
		slix = &(stacklist[c_stacklist++]);
		StackList_new(slix, HORIZONTAL, 2);
		
		// Create StackList(sliy2)
		sliy2 = &(stacklist[c_stacklist++]);
		StackList_new(sliy2, VERTICAL, 2);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_up (arrow up) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowUpButton(), false);
		WIDGET(butimg)->click_handler = button_audio_from_graph_type_change;
		WIDGET(butimg)->id = 1;
		StackList_addWidgetLast(sliy2, WIDGET(butimg), ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// create buttonimage[c_buttonimage] as copy of bt_arrow_dn (arrow down) and add to stacklist(sliy2)
		butimg = &(buttonimage[c_buttonimage++]);
		ButtonImage_copy(butimg, Static_getArrowDnButton(), false);
		WIDGET(butimg)->click_handler = button_audio_from_graph_type_change;
		WIDGET(butimg)->id = 0;
		StackList_addWidgetLast(sliy2, WIDGET(butimg), ALIGN_CENTER, ALIGN_CENTER, 0, 0, 0, 0);
		
		// Refresh StackList(sliy2) with buttons filled
		Widget_refresh(WIDGET(sliy2));
		
		// Add StackList(sliy2) to StackList(slix)
		StackList_addWidgetLast(slix, WIDGET(sliy2), ALIGN_RIGHT, ALIGN_CENTER, 0, 20, 0, 2);
		
		// Label for spinner: Interpolacja/Multipleksacja and add it to StackList(slix)
		lab = &(label[c_label++]);
		Label_new(lab, "Multipleksacja");
		Label_applyDefaultStyle(lab, 1, 950, font2, 15, 6, true);
		StackList_addWidgetLast(slix, WIDGET(lab), ALIGN_LEFT, ALIGN_CENTER, 0, 0, 0, 20);
		cparam_off = 0;
		Screen_addCParam(sc, button_audio_from_graph_type_change, lab,		0, &cparam_off);
		Screen_addCParam(sc, button_audio_from_graph_type_change, afg,		1, &cparam_off);
		
		// Button "Wyczyść" and add it to StackList(slix)
		but = &(button[c_button++]);
		Button_new(but, "Wyczyść");
		Button_applyDefaultStyle(but, 130, 850, font2, 3, 3, true);
		WIDGET(but)->click_handler  = button_audio_from_graph_clear;
		Widget_addVParam(WIDGET(but), wdb2, 1);
		StackList_addWidgetLast(slix, WIDGET(but), ALIGN_CENTER, ALIGN_CENTER, 0, 20, 0, 20);
		
		// Refresh StackList(slix) add it to StackList(sliy) and refresh StackList(sliy)
		Widget_refresh(WIDGET(slix));
		StackList_addWidgetLast(sliy, WIDGET(slix), ALIGN_CENTER, ALIGN_CENTER, 5, 5, 5, 5);
		Widget_refresh(WIDGET(sliy));
	}/*!! END WaveDrawBox section !!*/
	
	fprintf(stderr, "AudioMain - count of widgets:\n\tImages %hu/%d\n\tButtons %hu/%d\n\tTextBlocks %hu/%d\n\tLabels %hu/%d\n\tLabelImages %hu/%d\n\tButtonImages %hu/%d\n\tRectangles %hu/%d\n\tStackList %hu/%d\n\tGrids %hu/%d\n",
					c_image, cIMAGE, c_button, cBUTTON, c_textblock, cTEXTBLOCK, c_label, cLABEL, c_labelimage, cLABELIMAGE, c_buttonimage, cBUTTONIMAGE, c_rectangle, cRECTANGLE, c_stacklist, cSTACKLIST, c_grid, cGRID);
	

	return 0; // remember

}

int AudioMain_Main() {
	if (! is_inited) {
		fprintf(stderr, "AudioMain_Main:AudioMain SubProgram NOT initialized\n");
		return 1;
	}
	
	Screen_MainStart(sc);
	
	return 0; // important
}

inline static void AudioMain_deleteAudio() {
	if (audiotest)		{ free(delete(audiotest)); audiotest=NULL;}
	if (audiosinus)		{ free(delete(audiosinus)); audiosinus=NULL;}
	if (afg) 			{ free(delete(afg)); afg = NULL; }
	if (audio)			{ free(audio); audio=NULL; }
}

void AudioMain_Destroy() {
	if (! is_inited) return;
	u16 i;
	
	if (sc) { free(delete(sc)); sc = NULL; }
	if (background) { free(delete(background)); background = NULL; }
	
	if (font2) { TTF_CloseFont(font2); font2 = NULL; }
	if (image)			{ for (i = 0; i < c_image; i++) 			delete(&image[i]); 			free(image);		image = NULL;		c_image = 0; }
	if (text_block)		{ for (i = 0; i < c_textblock; i++) 		delete(&text_block[i]);		free(text_block);	text_block = NULL;	c_textblock = 0; }
	if (button)			{ for (i = 0; i < c_button; i++)			delete(&button[i]); 		free(button);		button = NULL;		c_button = 0; }
	if (label)		 	{ for (i = 0; i < c_label; i++)				delete(&label[i]);			free(label);		label = NULL;		c_label = 0; }
	if (labelimage)		{ for (i = 0; i < c_labelimage; i++) 		delete(&labelimage[i]);		free(labelimage);	labelimage = NULL;	c_labelimage = 0; }
	if (buttonimage)	{ for (i = 0; i < c_buttonimage; i++) 		delete(&buttonimage[i]);	free(buttonimage);	buttonimage = NULL;	c_buttonimage = 0; }
	if (rectangle)		{ for (i = 0; i < c_rectangle; i++) 		delete(&rectangle[i]); 		free(rectangle);	rectangle = NULL;	c_rectangle = 0; }
	if (wdb)			{ for (i = 0; i < c_wdb; i++) 				delete(&wdb[i]);			free(wdb);			wdb = NULL;			c_wdb = 0; }
	if (stacklist)		{ for (i = 0; i < c_stacklist; i++) 		delete(&stacklist[i]);		free(stacklist);	stacklist = NULL;	c_stacklist = 0; }
	if (grid)			{ for (i = 0; i < c_grid; i++) 				delete(&grid[i]);			free(grid);			grid = NULL;		c_grid = 0; }
	
	AudioMain_deleteAudio();

	is_inited = false;
}


int AudioMain_Initialize() {
	if (is_inited) return 0;	// already initialized
	perr e = E_NO_ERROR;
	sc = Screen_new(new(Screen_class), &e, 0);
	if (e) {
		fprintf(stderr, "AudioMain_Initialize: Screen_new failed with error %s\n", perr_getName(e));
		free(delete(sc));
		return 1;
	}
	Screen_CallbackCreate(sc, click_handler, AUDIO_CALLBACKS_COUNT);
	sc->toogle_drag_on = screen_toogled_drag_on;	// add handler to drag on toogle events

	/* Create audio objects (before GUI) */
	if (AudioMain_createAudio()) {
		fprintf(stderr, "AudioMain_createAudio:AudioMain failed\n");
		free(delete(sc));
		return 1;
	}
	
	/* Create user interface */
	if (AudioMain_createInterface()) {
		fprintf(stderr, "AudioMain_createInterface:AudioMain failed\n");
		AudioMain_deleteAudio();
		free(delete(sc));
		return 1;
	}
	
	//fprintf(stderr, "AudioMain_Initialize > sc.c_widget=%u\n", sc.c_widget);
	// Perform static global variables initialization
	
	// common
	is_inited = true;
	return 0;
}
