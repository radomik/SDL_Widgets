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
	#include "IAudio.h"
	
	#define PI 3.14159265358979323846264338327950288
	
	/* Constans used by SDL_Audio */
	#define AUDIO_SAMPLE_FREQUENCY	(44100)
	#define AUDIO_FORMAT			(AUDIO_S8)
	
	/* Large audio buffers reduces risk of dropouts but increases response time.
     *
     * You should always check if you actually GOT the audiobuffer size you wanted,
     * note that not hardware supports all buffer sizes (< 2048 bytes gives problems with some
     * hardware). Older versions of SDL had a bug that caused many configuration to use a
     * buffersize of 11025 bytes, if your sdl.dll is approx. 1 Mb in stead of 220 Kb, download
     * v1.2.8 of SDL or better...)
     * http://sdl.beuc.net/sdl.wiki/Audio_Examples
     */
	#define AUDIO_BUFFER_SIZE	(4096)	
	#define AUDIO_CHANNELS		(2)
	
	enum audiolib {
		SDL_LIB			= 0,
		PA_LIB			= 1
	};
	typedef enum audiolib audiolib;
	
	
	extern const coClass *Audio_class;
	#define AUDIO(VTHIS) ((Audio*)VTHIS)
	
	struct Audio {
		coObject 	_super;
		
		audiolib	lib;				// library used to play sounds (if more than two need to change conditions in Audio_stop, Audio_pause)
		b8	 	initialized;		// if library initialized for current object (only one object at once can be initialized)
		b8	 	play;				// if now playing
		b8	 	pause;				// if now paused
		
		u16		sample_frequency;
		u64	 	audio_format;
		u16	 	buffer_size;
		u8	 	channels;
		u16	 	id;
		PaStream 	*pa_stream;
		PaStreamParameters outputParameters;
		char	 	name[21];
	};

	/** Default constructor */
	Audio* Audio_new(Audio *this);

	/** Destructor (call this method only from derived classes destructors) */
	void Audio_vdestroy(void *this);

	/** Call current implementation virtual method Audio_play()  */
	#define Audio_play(VTHIS, START_PAUSED)	 		( IAudio_play(VTHIS, START_PAUSED) )

	/** Initialize audio device (method run from Audio_play) */
	void Audio_SDL_initialize(Audio *this, SDL_AudioSpec *desired, SDL_AudioSpec *obtained, 
								void (*callback_function)(void*, Uint8*, int));

	/** Toggle pause */
	inline void Audio_pause(Audio *this);
	
	/** Stop and close device */
	inline void Audio_stop(Audio *this);
	
	/** Clean up current instance of AudioXXX object allowing to initialize and play
	 * another instance or exit program (beware that destructor of each AudioXXX
	 * class does the same thing so do not do twice) */
	inline void Audio_remove(Audio *this);

	const char *Audio_getLibName(const Audio *this);
	const char *Audio_vtoString(const void *vthis);
#endif
