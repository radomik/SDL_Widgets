/*
 *      AudioSinus.c - this file is part of SDL_Widgets
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
#include "AudioSinus.h"

static const void* vtable[] = {
	AudioSinus_vdestroy,			/* use current class destructor */
	AudioSinus_vplay				/* Audio_play virtual method implementation */
};

static coClass type = {
	.size	= sizeof(AudioSinus),
	.name	= "AudioSinus",
	.vtable	= vtable
};
const coClass *AudioSinus_class = &type;

static int AudioSinus_paCallback(const void 					*inputBuffer, 
								 void 							*outputBuffer,
								 u64 							framesPerBuffer,
								 const PaStreamCallbackTimeInfo	*timeInfo,
								 PaStreamCallbackFlags 			statusFlags,
								 void 							*vthis) 
	{
	/* Cast data passed through stream to our structure. */
	AudioSinus *this = AUDIO_SINUS(vthis);
	if (! this->sine) return paAbort;
	
	float 	*out = (float*)outputBuffer;
	float 	sample;
	u32 	i = 0;
	int		left_phase = this->left_phase;
	
	for(; i<framesPerBuffer; i++) {
		sample = this->sine[left_phase++];
		*out++ = sample;
		*out++ = sample;
		left_phase %= this->sine_size;
	}
	this->left_phase = left_phase;
	return paContinue;
}

static void AudioSinus_FillArray(register AudioSinus *this) {
	register double d;
	register u32 i = 0; 
	for(; i < this->sine_size; i++) {
		d = (double)i/AUDIO(this)->sample_frequency;
		this->sine[i] = (float) sin(2.0*PI*(this->freq)*d);
	}
}

b8 AudioSinus_vplay(void *vthis, b8 start_paused) {
	AudioSinus *this = AUDIO_SINUS(vthis);
	PaError pe;
	
	if (! AUDIO(this)->play) {
		/* Initialize PortAudio */
		if ((pe = Pa_Initialize()) != paNoError) {
			fprintf(stderr, "AudioSinus_play: Failed to initialize PortAudio, Pa_Initialize() [%s]\n", Pa_GetErrorText(pe));
			return false;
		}
		this->left_phase = this->right_phase = 0;
		AUDIO(this)->outputParameters.device = Pa_GetDefaultOutputDevice();
		AUDIO(this)->outputParameters.channelCount = AUDIO(this)->channels;
		AUDIO(this)->outputParameters.sampleFormat = AUDIO(this)->audio_format;
		AUDIO(this)->outputParameters.suggestedLatency = 
			Pa_GetDeviceInfo(AUDIO(this)->outputParameters.device)->defaultLowOutputLatency;
		AUDIO(this)->outputParameters.hostApiSpecificStreamInfo = NULL;
		
		AudioSinus_FillArray(this);
		
		
		if ( (pe = Pa_OpenStream(&(AUDIO(this)->pa_stream), NULL, &(AUDIO(this)->outputParameters),
							(AUDIO(this)->sample_frequency), AUDIO(this)->buffer_size,
							paNoFlag, AudioSinus_paCallback, this)) != paNoError
		) {
			fprintf(stderr, "AudioSinus_play: Failed to open default stream, Pa_OpenDefaultStream() [%s]\n", Pa_GetErrorText(pe));
			return false;
		}
		
		/* Start PortAudio stream */
		if (! start_paused) {
			if ((pe = Pa_StartStream(AUDIO(this)->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioSinus_play: Failed to start stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
		} 
		else AUDIO(this)->pause = true;
		
		AUDIO(this)->initialized = AUDIO(this)->play = true;
		return true;
	}
	else { // now playing, toogle pause
		AUDIO(this)->pause = ! AUDIO(this)->pause; 
		if (AUDIO(this)->pause) {
			if ((pe = Pa_StopStream(AUDIO(this)->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioSinus_play: Failed to pause stream, Pa_StopStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
			else return true;
		}
		else {
			if ((pe = Pa_StartStream(AUDIO(this)->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioSinus_play:AudioSinus > Failed to unpause stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
			else return true;
		}
	}
}

void AudioSinus_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	Audio_stop( AUDIO(vthis) );
	
	if ( AUDIO_SINUS(vthis)->sine ) {
		free( AUDIO_SINUS(vthis)->sine );
		AUDIO_SINUS(vthis)->sine = NULL;
	}
	
	/*! Delete parent object !*/
	Audio_vdestroy(AUDIO(vthis));
}

AudioSinus* AudioSinus_new(AudioSinus *this) {
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	Audio_new(AUDIO(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif
	
	AUDIO(this)->lib 		    = PA_LIB;
	AUDIO(this)->buffer_size  	= 256;
	AUDIO(this)->audio_format 	= paFloat32;
	
	this->sine 			= calloc(AUDIO(this)->sample_frequency, sizeof(float));
	this->sine_size 	= AUDIO(this)->sample_frequency;
	this->freq			= 300;
	this->left_phase	= 0;
	this->right_phase	= 0;
	return this;
}

void AudioSinus_setFrequency(AudioSinus *this, float freq) {
	PaError pe;
	b8 t = ((AUDIO(this)->play) && (! AUDIO(this)->pause));
	
	if (! this->sine) {
		fprintf(stderr, "AudioSinus_setFrequency: Array of sine data is NULL.\n");
		return;
	}
	
	if (t) {
		if ((pe = Pa_StopStream(AUDIO(this)->pa_stream)) != paNoError) {
			fprintf(stderr, "AudioSinus_setFrequency: Failed to stop audio: Pa_StopStream() [%s]\n", Pa_GetErrorText(pe));
			return;
		}
	}
	
	this->freq = freq;
	AudioSinus_FillArray(this);
	
	if (t) {
		if ((pe = Pa_StartStream(AUDIO(this)->pa_stream)) != paNoError) {
			fprintf(stderr, "AudioSinus_setFrequency: Failed to start audio: Pa_StartStream() [%s]\n", Pa_GetErrorText(pe));
		}
	}
}


