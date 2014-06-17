/*
 *      AudioCallbacks.c - this file is part of SDL_Widgets
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
#include "FileBrowsePanel.h"
#include "Memory.h"
#include "Widget.h"
#include "Image.h"
#include "Button.h"
#include "TextBlock.h"
#include "Label.h"
#include "LabelImage.h"
#include "ButtonImage.h"
#include "Rectangle.h"
#include "StackList.h"
#include "StackListX.h"
#include "StackListY.h"
#include "Container.h"
#include "Grid.h"
#include "AudioCallbacks.h"
#include "Audio.h"
#include "AudioTest.h"
#include "AudioSinus.h"
#include "WaveDrawBox.h"
#include "AudioFromGraph.h"

/*! Button -- start playback of currently active Audio object
 *  Obvious parameters:
 * sender->vparam[0]  -- array containing pointers to Audio objects						as Audio**
 * sender->vparam[1]  -- index of active Audio object in above array (0xFFFF if none)	as u16*
 */
void button_play_clicked(Widget *sender, Screen *screen) {
	Audio	**audio = (Audio**) sender->vparam[0];
	u16	 *audio_current_index = (u16*) sender->vparam[1];
	if (*audio_current_index == USINF) return;
	if (! Audio_play(audio[*audio_current_index], false)) {
		if ( classof_fast(sender) == ButtonImage_class ) {
			ButtonImage *butimg = (ButtonImage*)sender;
			ButtonImage_setBorder(butimg, butimg->labelimage[BUT_NORMAL].border_width, 0xFF0000);
			Widget_refresh(sender);
			screen->need_reload = true;
		}
	}
}

/*! Button -- stop playback of currently active Audio object
 *  Obvious parameters:
 * sender->vparam[0]  -- array containing pointers to Audio objects						as Audio**
 * sender->vparam[1]  -- index of active Audio object in above array (0xFFFF if none)	as u16*
 */
void button_stop_clicked(Widget *sender, Screen *screen) {
	Audio	**audio = (Audio**) sender->vparam[0];
	u16	 *audio_current_index = (u16*) sender->vparam[1];
	if (*audio_current_index == USINF) return;
	Audio_stop(audio[*audio_current_index]);
}

/*! Button -- pause playback of currently active Audio object
 *  Obvious parameters:
 * sender->vparam[0]  -- array containing pointers to Audio objects						as Audio**
 * sender->vparam[1]  -- index of active Audio object in above array (0xFFFF if none)	as u16*
 */
void button_pause_clicked(Widget *sender, Screen *screen) {
	Audio	**audio = (Audio**) sender->vparam[0];
	u16	 *audio_current_index = (u16*) sender->vparam[1];
	if (*audio_current_index == USINF) return;
	Audio_pause(audio[*audio_current_index]);
}

/*! Button -- change frequency 1 of SDL_Audio example
 *  Obvious parameters:
 * sender->id  == 1   -- increase frequency
 * sender->id  == 0   -- decrease frequency
 * sender->cparam[0]  -- label with frequency will set to "%5d Hz" - audiotest->freq1 at text+12	as Label*
 * sender->cparam[1]  -- AudioTest object															as AudioTest*
 */
void button_freq1_change(Widget *sender, Screen *screen) {
	Label		*label 		= LABEL( sender->cparam[0] );
	AudioTest	*audiotest 	= AUDIO_TEST( sender->cparam[1] );
	if (sender->id) {
		if (audiotest->freq1 < 20000) AudioTest_setFreq1(audiotest, audiotest->freq1+10);
		else return;
	}
	else {
		if (audiotest->freq1 > 10) AudioTest_setFreq1(audiotest, audiotest->freq1-10);
		else return;
	}
	sprintf(label->text_block.text+12, "%5d Hz", audiotest->freq1);
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button -- change fase 1 of SDL_Audio example
 *  Obvious parameters:
 * sender->id  == 1   -- increase fase
 * sender->id  == 0   -- decrease fase
 * sender->cparam[0]  -- label with fase will set to "%5d Hz" - audiotest->fase1 at text+7		as Label*
 * sender->cparam[1]  -- AudioTest object														as AudioTest*
 */
void button_fase1_change(Widget *sender, Screen *screen) {
	Label		*label 		= LABEL( sender->cparam[0] );
	AudioTest	*audiotest 	= AUDIO_TEST( sender->cparam[1] );
	if (sender->id) {
		if (audiotest->fase1 < 1000) AudioTest_setFase1(audiotest, audiotest->fase1+5);
		else return;
	}
	else {
		if (audiotest->fase1 > 0) AudioTest_setFase1(audiotest, audiotest->fase1-5);
		else return;
	}
	sprintf(label->text_block.text+7, "%5d", audiotest->fase1);
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button -- change frequency 2 of SDL_Audio example
 *  Obvious parameters:
 * sender->id  == 1   -- increase frequency
 * sender->id  == 0   -- decrease frequency
 * sender->cparam[0]  -- label with frequency will set to "%5d Hz" - audiotest->freq2 at text+12	as Label*
 * sender->cparam[1]  -- AudioTest object															as AudioTest*
 */
void button_freq2_change(Widget *sender, Screen *screen) {
	Label		*label 		= LABEL( sender->cparam[0] );
	AudioTest	*audiotest 	= AUDIO_TEST( sender->cparam[1] );
	if (sender->id) {
		if (audiotest->freq2 < 20000) AudioTest_setFreq2(audiotest, audiotest->freq2+10);
		else return;
	}
	else {
		if (audiotest->freq2 > 10) AudioTest_setFreq2(audiotest, audiotest->freq2-10);
		else return;
	}
	sprintf(label->text_block.text+12, "%5d Hz", audiotest->freq2);
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button -- change fase 2 of SDL_Audio example
 *  Obvious parameters:
 * sender->id  == 1   -- increase fase
 * sender->id  == 0   -- decrease fase
 * sender->cparam[0]  -- label with fase will set to "%5d Hz" - audiotest->fase2 at text+7		as Label*
 * sender->cparam[1]  -- AudioTest object														as AudioTest*
 */
void button_fase2_change(Widget *sender, Screen *screen) {
	Label		*label 		= LABEL( sender->cparam[0] );
	AudioTest	*audiotest 	= AUDIO_TEST( sender->cparam[1] );
	if (sender->id) {
		if (audiotest->fase2 < 1000) AudioTest_setFase2(audiotest, audiotest->fase2+5);
		else return;
	}
	else {
		if (audiotest->fase2 > 0) AudioTest_setFase2(audiotest, audiotest->fase2-5);
		else return;
	}
	sprintf(label->text_block.text+7, "%5d", audiotest->fase2);
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button -- change source
 *  Obvious parameters:
 * sender->id  == 1   -- source up
 * sender->id  == 0   -- source down
 * sender->cparam[0]  -- label with source will set to "%20s" - audio[audio_current_index]->name at text+22	as Label*
 * sender->cparam[1]  -- array containing pointers to Audio objects											as Audio**
 * sender->cparam[2]  -- index of active Audio object in above array (0xFFFF if none)						as u16*
 * sender->cparam[3]  -- count of Audio objects in array													as u16*
 */
void button_source_change(Widget *sender, Screen *screen) {
	Label	*label 					= LABEL( sender->cparam[0] );
	Audio	**audio 				= (Audio**)sender->cparam[1];
	u16		*audio_current_index 	= (u16*)sender->cparam[2];
	u16		*cnt_audio 				= (u16*)sender->cparam[3];
	if (*audio_current_index >= *cnt_audio) {
		fprintf(stderr, "button_source_change() > Index %hu exceeds audio[%hu] array\n", *audio_current_index, *cnt_audio);
		return;
	}
	Audio	*audio_current = audio[*audio_current_index];
	b8 _play  = audio_current->play;
	b8 _pause = audio_current->pause;
	if (sender->id) {
		if (*audio_current_index != 0) {
			Audio_remove(audio_current);
			(*audio_current_index)--;
		}
		else return;
	}
	else {
		if (*audio_current_index != *cnt_audio-1) {
			Audio_remove(audio_current);
			(*audio_current_index)++;
		}
		else return;
	}
	if (_play) Audio_play(audio_current, _pause);
	sprintf(label->text_block.text+22, "%20s", audio_current->name);
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button -- change frequency of AudioSinus object
 *  Obvious parameters:
 * sender->id  == 1   -- frequency up
 * sender->id  == 0   -- frequency down
 * sender->cparam[0]  -- label with frequency will set to "%8.2f" - audiosinus->freq at text+19		as Label*
 * sender->cparam[1]  -- AudioSinus audio object													as AudioSinus*
 */
void button_sinefreq_change(Widget *sender, Screen *screen) {
	Label *label 			= (Label*) sender->cparam[0];
	AudioSinus *audiosinus 	= (AudioSinus*) sender->cparam[1];
	if (sender->id) {
		if (audiosinus->freq < 20000.0f) AudioSinus_setFrequency(audiosinus, audiosinus->freq + 20.00f);
		else return;
	}
	else {
		if (audiosinus->freq >= 20.0f) AudioSinus_setFrequency(audiosinus, audiosinus->freq - 20.00f);
		else return;
	}
	sprintf((label->text_block.text+19), "%8.2f", audiosinus->freq);
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Release image after dragging (sets AudioSinus frequency)
 *  Obvious parameters:
 * sender->vparam[0]  -- label with frequency will set to "%8.2f" - audiosinus->freq at text+19		as Label*
 * sender->vparam[1]  -- AudioSinus audio object													as AudioSinus*
 */
void image_mrelease(Widget *sender, Screen *screen) {
	Label  		*label   	= LABEL( sender->vparam[0] );
	AudioSinus 	*audiosinus = AUDIO_SINUS( sender->vparam[1] );
	float  freq = (float)sender->pos.y*20.0f + (float)sender->pos.x;
	if (freq > 20000.0f) freq = 20000.0f;
	
	AudioSinus_setFrequency(audiosinus, freq);
	sprintf(label->text_block.text+19, "%8.2f", audiosinus->freq);
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Change type of AudioFromGraph interpretation:
 * sender->id == 1 (up)   -- change to interpolation
 * sender->id == 0 (down) -- change to multiplication
 * sender->cparam[0]      -- label on which writes "Interpolacja" | "Multipleksacja" at text	as Label*
 * sender->cparam[1]	  -- AudioFromGraph object												as AudioFromGraph*
 */
void button_audio_from_graph_type_change(Widget *sender, Screen *screen) {
	Label *label 		= LABEL( sender->cparam[0] );
	AudioFromGraph *afg = AUDIO_FROM_GRAPH( sender->cparam[1] );
	
	if (sender->id) {
		if (! afg->type) AudioFromGraph_setType(afg, 1);
		else return;
	}
	else {
		if (afg->type) AudioFromGraph_setType(afg, 0);
		else return;
	}
	sprintf(label->text_block.text, "%s", (afg->type)?"Interpolacja":"Multipleksacja");
	Widget_refresh(WIDGET(label));
	screen->need_reload = true;
}

/*! Button - clear WaveDrawBox graph editor
 * sender->vparam[0]	-- WaveDrawBox object		as WaveDrawBox*
 */
void button_audio_from_graph_clear(Widget *sender, Screen *screen) {
	WaveDrawBox *wdb = WAVE_DRAW_BOX( sender->vparam[0] );
	WaveDrawBox_clearData(wdb);
	screen->need_reload = true;
}
