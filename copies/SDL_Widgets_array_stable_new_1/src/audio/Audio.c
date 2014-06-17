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
#include "Object.h"
#include "Memory.h"
#include "Audio.h"
#include "AudioTest.h"
#include "AudioSinus.h"
#include "AudioFromGraph.h"

inline static void Audio_destroy_common(Audio *this, const char *fname) {
	/* Print information if verbose destroy is enabled */
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", 
			(fname)?(fname):"Audio_destroy_common", Object_getType((Object*)this), this);
		
	/*! Delete self stuff !*/
	Audio_remove(this);
	
	/*! Delete parent object !*/
	Object_destroy((Object*)this);
}

/** virtual destructor (useful when class inheriting from Audio has nothing to destroy) **/
static void Audio_vdestroy(void *vthis) { 
	Audio_destroy_common((Audio*)vthis, "Audio_vdestroy"); 
}

/** Current destructor (called by inheriting classes) **/
void Audio_destroy(Audio *this) {
	Audio_destroy_common(this, "Audio_destroy");
}

void Audio_init_type(	Audio 			*audio, 
						audiotype 		audio_type, 
						void 			(*vdestroy) (void* vthis),
						const char*		type) {
	Object_init_type((Object*)audio, (vdestroy)?(vdestroy):Audio_vdestroy, type);
	audio->type = audio_type;
	
	audio->play				= false;
	audio->pause			= false;
	audio->initialized		= false;
	audio->sample_frequency = SAMPLE_FREQUENCY;
	audio->audio_format		= AUDIO_FORMAT;
	audio->buffer_size		= BUFFER_SIZE;
	audio->channels			= CHANNELS;
	audio->user_data		= NULL;
}

void Audio_SDL_initialize(Audio *audio, SDL_AudioSpec *desired, SDL_AudioSpec *obtained, 
								void (*callback_function)(void*, Uint8*, int)) {
    
    /* Choose samplerate and audio-format */
    desired->freq   = audio->sample_frequency;
    desired->format = audio->audio_format;
    
    /* Buffer size in samples */
    desired->samples = audio->buffer_size;
    
    /* Attach callback function and userdata parameter */
    desired->callback = callback_function;
    desired->userdata = audio->user_data;
    
    desired->channels = audio->channels;
    fprintf(stderr, "Audio_SDL_initialize:Audio>> In desired:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n", 
		desired->freq, desired->format, desired->channels, desired->silence, desired->samples, desired->size);
}

bool Audio_play(Audio *audio, bool start_paused) {
	switch (audio->type) {
		case AUDIOTEST_TYPE:
			return AudioTest_play((AudioTest*) audio, start_paused);
		case AUDIOSINUS_TYPE:
			return AudioSinus_play((AudioSinus*) audio, start_paused);
		case AUDIOFROMGRAPH_TYPE:
			return AudioFromGraph_play((AudioFromGraph*) audio, start_paused);
	}
	fprintf(stderr, "Audio_play:Audio>> Unknown type of Audio class object: %d\n", audio->type);
	return false; 
}

void Audio_SDL_pause(Audio *audio) {
	audio->pause = ! audio->pause; 
	SDL_PauseAudio(audio->pause);
}

void Audio_PA_pause(Audio *audio) { 
	audio->pause = ! audio->pause; 
	if (audio->pause) {
		if (Pa_StopStream(audio->pa_stream) != paNoError) {
			fprintf(stderr, "Audio_PA_pause:Audio > Failed to stop audio: Pa_StopStream()\n");
		}
	}
	else {
		if (Pa_StartStream(audio->pa_stream) != paNoError) {
			fprintf(stderr, "Audio_PA_pause:Audio > Failed to start audio: Pa_StartStream()\n");
		}
	}
}

inline void Audio_SDL_stop(Audio *audio) { 
	SDL_CloseAudio(); 
	audio->pause=audio->play=audio->initialized=false;
}

void Audio_PA_stop(Audio *audio) { 
	if (! audio->pause) {
		if (Pa_StopStream(audio->pa_stream) != paNoError) {
			fprintf(stderr, "Audio_PA_stop:Audio > Failed to stop audio: Pa_StopStream()\n");
			return;
		}
	}
	if (Pa_Terminate() != paNoError) {
		fprintf(stderr, "Audio_PA_stop:Audio > Failed to terminate audio: Pa_Terminate()\n");
		return;
	}
}

inline void Audio_pause(Audio *audio) { if (audio->play) { if (audio->lib == SDL_LIB) Audio_SDL_pause(audio); else Audio_PA_pause(audio); } }

inline void Audio_stop(Audio *audio) { 
	if ((audio->initialized) && (audio->play)) {
		if (audio->lib == SDL_LIB) Audio_SDL_stop(audio); 
		else {
			Audio_PA_stop(audio); 
			audio->pause=audio->play=audio->initialized=false;
		}
	} 
}

inline void Audio_remove(Audio *audio) { 
	if (audio->initialized) {
		if (audio->lib == SDL_LIB) {
			if (audio->play) SDL_CloseAudio();
		}
		else {
			Audio_PA_stop(audio);
		}
		audio->pause=audio->play=audio->initialized=false;
	}
}

char *Audio_getLibName(Audio *audio) {
	if (! audio) return NULL;
	switch (audio->lib) {
		case PA_LIB: 	return "Portaudio";
		case SDL_LIB:	return "SDL_Audio";
		default: 		return "Unknown";
	}
}

static char str_id[96];
char *Audio_toString(Audio *audio) {
	if (! audio) return "audio=NULL";
	snprintf(str_id, 96, "audio(%p), lib=%s, name=%s, type=%s", audio, Audio_getLibName(audio), audio->name, Object_getType((Object*)audio));
	return str_id;
}
