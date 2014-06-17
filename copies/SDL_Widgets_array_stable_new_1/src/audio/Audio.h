/*
 *      Audio.h - this file is part of SDL_Widgets
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

#ifndef _Audio_h_
	#define _Audio_h_
	#include "StdDefinitions.h"
	#include <SDL/SDL_audio.h>
	#include <portaudio.h>
	
	#define PI 3.14159265358979323846264338327950288
	
	/* Constans used by SDL_Audio */
	#define SAMPLE_FREQUENCY	(44100)
	#define AUDIO_FORMAT		(AUDIO_S8)
	
	/* Large audio buffers reduces risk of dropouts but increases response time.
     *
     * You should always check if you actually GOT the audiobuffer size you wanted,
     * note that not hardware supports all buffer sizes (< 2048 bytes gives problems with some
     * hardware). Older versions of SDL had a bug that caused many configuration to use a
     * buffersize of 11025 bytes, if your sdl.dll is approx. 1 Mb in stead of 220 Kb, download
     * v1.2.8 of SDL or better...)
     * http://sdl.beuc.net/sdl.wiki/Audio_Examples
     */
	#define BUFFER_SIZE		(4096)	
	#define CHANNELS		(2)
	
	enum audiotype {
		AUDIOTEST_TYPE  	 = 0,
		AUDIOSINUS_TYPE 	 = 1,
		AUDIOFROMGRAPH_TYPE  = 2
	};
	typedef enum audiotype audiotype;
	
	enum audiolib {
		SDL_LIB			= 0,
		PA_LIB			= 1
	};
	typedef enum audiolib audiolib;
	
	struct Audio {
		Object		object;				//! inherits from Object
		audiotype	type;				// type of inheriting object
		audiolib	lib;				// library used to play sounds (if more than two need to change conditions in Audio_stop, Audio_pause)
		bool	 	initialized;		// if library initialized for current object (only one object at once can be initialized)
		bool	 	play;				// if now playing
		bool	 	pause;				// if now paused
		
		usint		sample_frequency;
		ulong	 	audio_format;
		usint	 	buffer_size;
		uchar	 	channels;
		void 	 	*user_data;
		usint	 	id;
		PaStream 	*pa_stream;
		PaStreamParameters outputParameters;
		char	 	name[21];
	};

	// Destructor (run by destructors of objects inheriting from Audio
	void Audio_destroy(Audio *audio);
	
	// Type constructor
	void Audio_init_type(	Audio 			*audio, 
							audiotype 		audio_type, 
							void 			(*vdestroy) (void* vthis),
							const char*		type);
	
	// Initialize audio device (method run from Audio_play)
	void Audio_SDL_initialize(Audio *audio, SDL_AudioSpec *desired, SDL_AudioSpec *obtained, 
								void (*callback_function)(void*, Uint8*, int));

	/* Start playing audio, return true if success otherwise false */
	bool Audio_play(Audio *audio, bool start_paused);
	
	/* Toggle pause */
	inline void Audio_pause(Audio *audio);
	
	/* Stop and close device */
	inline void Audio_stop(Audio *audio);
	
	/* Clean up current instance of AudioXXX object allowing to initialize and play
	 * another instance or exit program (beware that destructor of each AudioXXX
	 * class does the same thing so do not do twice) */
	inline void Audio_remove(Audio *audio);

	char *Audio_getLibName(Audio *audio);
	char *Audio_toString(Audio *audio);
#endif
