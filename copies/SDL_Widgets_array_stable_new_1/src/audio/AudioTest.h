/*
 *      AudioTest.h - this file is part of SDL_Widgets
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

#ifndef _AudioTest_h_
	#define _AudioTest_h_
	#include "StdDefinitions.h"
	#include "Audio.h"

	struct AudioTest {
		Audio	audio;
		uint	freq1;
		uint	freq2;
		uint 	fase1;
		uint	fase2;
	};
	
	// default constructor
	AudioTest* AudioTest_new(AudioTest *this);
	
	bool AudioTest_play(AudioTest *audiotest, bool start_paused);
	
	inline void AudioTest_setFreq1(AudioTest *audiotest, uint _freq1);
	inline void AudioTest_setFreq2(AudioTest *audiotest, uint _freq2);
	inline void AudioTest_setFase1(AudioTest *audiotest, uint _fase1);
	inline void AudioTest_setFase2(AudioTest *audiotest, uint _fase2);

#endif










