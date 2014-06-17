/*
 *      AudioSinus.h - this file is part of SDL_Widgets
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

#ifndef _AudioSinus_h_
	#define		_AudioSinus_h_
	#include "StdDefinitions.h"
	#include "Audio.h"
	
	extern const coClass *AudioSinus_class;
	#define AUDIO_SINUS(VTHIS) ((AudioSinus*)VTHIS)

	struct AudioSinus {
		Audio		_super;			// parent class object
		float 		*sine;			// sine table	// these parameters are used by callback function
		float 		freq;			// sine frequency
		u32			sine_size;		// sine table size
		int 		left_phase;		// left phase
		int 		right_phase;	// right phase
	};
	
	/** Default constructor */
	AudioSinus* AudioSinus_new(AudioSinus *this);
	
	/** Destructor (call this method only from derived classes destructors) */
	void AudioSinus_vdestroy(void *this);

	/** Audio_play() virtual method implementation
	 * use this method signature only in derived classes vtables
	 * to call play method use Audio_play() instead */
	b8 AudioSinus_vplay(void *vthis, b8 start_paused);

	void AudioSinus_setFrequency(AudioSinus *this, float freq);	
#endif
