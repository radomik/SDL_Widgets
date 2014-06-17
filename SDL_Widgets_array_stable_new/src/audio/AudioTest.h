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
	
	extern const coClass *AudioTest_class;
	#define AUDIO_TEST(VTHIS) ((AudioTest*)VTHIS)

	struct AudioTest {
		Audio	_super;
		u32		freq1, freq2;
		u32 	fase1, fase2;
		
		u32 	bytesPerPeriod1, bytesPerPeriod2;
		
		u32 	sampleFrequency;
	};
	
	/** Default constructor */
	AudioTest* AudioTest_new(AudioTest *this);
	
	/** Destructor (call this method only from derived classes destructors) */
	void AudioTest_vdestroy(void *vthis);

	/** Audio_play() virtual method implementation
	 * use this method signature only in derived classes vtables
	 * to call play method use Audio_play() instead */
	b8 AudioTest_vplay(void *vthis, b8 start_paused);
	
	void AudioTest_setFreq1(AudioTest *this, u32 value);
	void AudioTest_setFreq2(AudioTest *this, u32 value);
	void AudioTest_setFase1(AudioTest *this, u32 value);
	void AudioTest_setFase2(AudioTest *this, u32 value);

#endif










