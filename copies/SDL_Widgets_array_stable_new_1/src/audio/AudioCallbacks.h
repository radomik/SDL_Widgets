/*
 *      AudioCallbacks.h - this file is part of SDL_Widgets
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
 
#ifndef		_AudioCallbacks_h
	#define	_AudioCallbacks_h
	#include "StdDefinitions.h"
	
	/*! Button -- start playback of currently active Audio object
	 *  Obvious parameters:
	 * sender->vparam[0]  -- array containing pointers to Audio objects						as Audio**
	 * sender->vparam[1]  -- index of active Audio object in above array (0xFFFF if none)	as usint*
	 */
	void button_play_clicked(Widget *sender, Screen *screen);

	/*! Button -- stop playback of currently active Audio object
	 *  Obvious parameters:
	 * sender->vparam[0]  -- array containing pointers to Audio objects						as Audio**
	 * sender->vparam[1]  -- index of active Audio object in above array (0xFFFF if none)	as usint*
	 */
	void button_stop_clicked(Widget *sender, Screen *screen);

	/*! Button -- pause playback of currently active Audio object
	 *  Obvious parameters:
	 * sender->vparam[0]  -- array containing pointers to Audio objects						as Audio**
	 * sender->vparam[1]  -- index of active Audio object in above array (0xFFFF if none)	as usint*
	 */
	void button_pause_clicked(Widget *sender, Screen *screen);

	/*! Button -- change frequency 1 of SDL_Audio example
	 *  Obvious parameters:
	 * sender->id  == 1   -- increase frequency
	 * sender->id  == 0   -- decrease frequency
	 * sender->cparam[0]  -- label with frequency will set to "%5d Hz" - audiotest->freq1 at text+12	as Label*
	 * sender->cparam[1]  -- AudioTest object															as AudioTest*
	 */
	void button_freq1_change(Widget *sender, Screen *screen);

	/*! Button -- change fase 1 of SDL_Audio example
	 *  Obvious parameters:
	 * sender->id  == 1   -- increase fase
	 * sender->id  == 0   -- decrease fase
	 * sender->cparam[0]  -- label with fase will set to "%5d Hz" - audiotest->fase1 at text+7		as Label*
	 * sender->cparam[1]  -- AudioTest object														as AudioTest*
	 */
	void button_fase1_change(Widget *sender, Screen *screen);

	/*! Button -- change frequency 2 of SDL_Audio example
	 *  Obvious parameters:
	 * sender->id  == 1   -- increase frequency
	 * sender->id  == 0   -- decrease frequency
	 * sender->cparam[0]  -- label with frequency will set to "%5d Hz" - audiotest->freq2 at text+12	as Label*
	 * sender->cparam[1]  -- AudioTest object															as AudioTest*
	 */
	void button_freq2_change(Widget *sender, Screen *screen);

	/*! Button -- change fase 2 of SDL_Audio example
	 *  Obvious parameters:
	 * sender->id  == 1   -- increase fase
	 * sender->id  == 0   -- decrease fase
	 * sender->cparam[0]  -- label with fase will set to "%5d Hz" - audiotest->fase2 at text+7		as Label*
	 * sender->cparam[1]  -- AudioTest object														as AudioTest*
	 */
	void button_fase2_change(Widget *sender, Screen *screen);

	/*! Button -- change source
	 *  Obvious parameters:
	 * sender->id  == 1   -- source up
	 * sender->id  == 0   -- source down
	 * sender->cparam[0]  -- label with source will set to "%20s" - audio[audio_current_index]->name at text+22	as Label*
	 * sender->cparam[1]  -- array containing pointers to Audio objects											as Audio**
	 * sender->cparam[2]  -- index of active Audio object in above array (0xFFFF if none)						as usint*
	 * sender->cparam[3]  -- count of Audio objects in array													as usint*
	 */
	void button_source_change(Widget *sender, Screen *screen);

	/*! Button -- change frequency of AudioSinus object
	 *  Obvious parameters:
	 * sender->id  == 1   -- frequency up
	 * sender->id  == 0   -- frequency down
	 * sender->cparam[0]  -- label with frequency will set to "%8.2f" - audiosinus->freq at text+19		as Label*
	 * sender->cparam[1]  -- AudioSinus audio object													as AudioSinus*
	 */
	void button_sinefreq_change(Widget *sender, Screen *screen);

	/*! Release image after dragging (sets AudioSinus frequency)
	 *  Obvious parameters:
	 * sender->vparam[0]  -- label with frequency will set to "%8.2f" - audiosinus->freq at text+19		as Label*
	 * sender->vparam[1]  -- AudioSinus audio object													as AudioSinus*
	 */
	void image_mrelease(Widget *sender, Screen *screen);
	
	/*! Change type of AudioFromGraph interpretation:
	 * sender->id == 1 (up)   -- change to interpolation
	 * sender->id == 0 (down) -- change to multiplication
	 * sender->cparam[0]      -- label on which writes "Interpolacja" | "Multipleksacja" at text	as Label*
	 * sender->cparam[1]	  -- AudioFromGraph object												as AudioFromGraph*
	 */
	void button_audio_from_graph_type_change(Widget *sender, Screen *screen);

	/*! Button - clear WaveDrawBox graph editor
	 * sender->vparam[0]	-- WaveDrawBox object		as WaveDrawBox*
	 */
	void button_audio_from_graph_clear(Widget *sender, Screen *screen);
#endif
