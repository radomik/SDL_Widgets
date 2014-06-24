/*
 *      Audio.c - this file is part of SDL_Widgets
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
#include "Memory.h"
#include "Audio.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = Audio_vdestroy,
	.toString = Audio_vtoString
};

/** Methods overriden from interface IAudio */
static const IAudio override_IAudio = {
	.play = NULL	/** pure virtual method */
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IAudio
};

static coClass type = {
	.size	= sizeof(Audio),
	.name	= "Audio",
	.vtable	= vtable
};
const coClass *Audio_class = &type;

static inline void Audio_initDefault(Audio *this) {
	this->lib				= 0;
	this->initialized	 	= false;
	this->play				= false;
	this->pause				= false;
	this->sample_frequency 	= AUDIO_SAMPLE_FREQUENCY;
	this->audio_format		= AUDIO_FORMAT;
	this->buffer_size		= AUDIO_BUFFER_SIZE;
	this->channels			= AUDIO_CHANNELS;
	this->id				= 0;
	this->pa_stream			= NULL;
	memset(&this->outputParameters, 0, sizeof(this->outputParameters));
	this->name[0]			= '\0';		
}

void Audio_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	Audio_remove(AUDIO(vthis));
	
	/*! Delete parent object !*/
	coObject_vdestroy(vthis);
}

Audio* Audio_new(Audio *this) {
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	coObject_new(CO_OBJECT(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	Audio_initDefault(this);
	
	return this;
}

void Audio_SDL_initialize(Audio *this, SDL_AudioSpec *desired, SDL_AudioSpec *obtained, 
								void (*callback_function)(void*, Uint8*, int)) {
    
    /* Choose samplerate and audio-format */
    desired->freq   = this->sample_frequency;
    desired->format = this->audio_format;
    
    /* Buffer size in samples */
    desired->samples = this->buffer_size;
    
    /* Attach callback function and userdata parameter */
    desired->callback = callback_function;
    desired->userdata = this;
    
    desired->channels = this->channels;
    fprintf(stderr, "Audio_SDL_initialize: In desired:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n", 
		desired->freq, desired->format, desired->channels, desired->silence, desired->samples, desired->size);
}

void Audio_SDL_pause(Audio *this) {
	this->pause = ! this->pause; 
	SDL_PauseAudio(this->pause);
}

void Audio_PA_pause(Audio *this) { 
	this->pause = ! this->pause; 
	if (this->pause) {
		if (Pa_StopStream(this->pa_stream) != paNoError) {
			fprintf(stderr, "Audio_PA_pause: Failed to stop audio: Pa_StopStream()\n");
		}
	}
	else {
		if (Pa_StartStream(this->pa_stream) != paNoError) {
			fprintf(stderr, "Audio_PA_pause: Failed to start audio: Pa_StartStream()\n");
		}
	}
}

inline void Audio_SDL_stop(Audio *this) { 
	SDL_CloseAudio(); 
	this->pause=this->play=this->initialized=false;
}

void Audio_PA_stop(Audio *this) { 
	if (! this->pause) {
		if (Pa_StopStream(this->pa_stream) != paNoError) {
			fprintf(stderr, "Audio_PA_stop: Failed to stop audio: Pa_StopStream()\n");
			return;
		}
	}
	if (Pa_Terminate() != paNoError) {
		fprintf(stderr, "Audio_PA_stop: Failed to terminate audio: Pa_Terminate()\n");
		return;
	}
}

inline void Audio_pause(Audio *this) { if (this->play) { if (this->lib == SDL_LIB) Audio_SDL_pause(this); else Audio_PA_pause(this); } }

inline void Audio_stop(Audio *this) { 
	if ((this->initialized) && (this->play)) {
		if (this->lib == SDL_LIB) Audio_SDL_stop(this); 
		else {
			Audio_PA_stop(this); 
			this->pause=this->play=this->initialized=false;
		}
	} 
}

inline void Audio_remove(Audio *this) { 
	if (this->initialized) {
		if (this->lib == SDL_LIB) {
			if (this->play) SDL_CloseAudio();
		}
		else {
			Audio_PA_stop(this);
		}
		this->pause=this->play=this->initialized=false;
	}
}

const char *Audio_getLibName(const Audio *this) {
	if (! this) return NULL;
	switch (this->lib) {
		case PA_LIB: 	return "Portaudio";
		case SDL_LIB:	return "SDL_Audio";
		default: 		return "Unknown";
	}
}

const char *Audio_vtoString(const void *vthis) {
	static char str_id[96];
	const Audio *this = AUDIO(this);
	snprintf(str_id, sizeof(str_id), "audio(%p), lib=%s, name=%s, type=%s", 
		this, Audio_getLibName(this), this->name, classof(this)->name);
	return str_id;
}
