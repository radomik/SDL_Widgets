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
#include "Object.h"
#include "Memory.h"
#include "Audio.h"
#include "AudioSinus.h"
static const char *type = "AudioSinus";

static int paCallback	(	const void 						*inputBuffer, 
							void 							*outputBuffer,
							ulong 							framesPerBuffer,
							const PaStreamCallbackTimeInfo	*timeInfo,
							PaStreamCallbackFlags 			statusFlags,
							void 							*userData) 
	{
	/* Cast data passed through stream to our structure. */
	AudioSinus *audiosinus = (AudioSinus*)userData;
	if (! audiosinus->sine) return paAbort;
	
	float *out = (float*)outputBuffer;
	float sample;
	uint i = 0;
	
	for(; i<framesPerBuffer; i++) {
		sample = audiosinus->sine[audiosinus->left_phase++];
		*out++ = sample;
		*out++ = sample;
		audiosinus->left_phase %= audiosinus->sine_size;
	}
	return paContinue;
}

void AudioSinus_FillArray(AudioSinus *audiosinus) {
	double d;
	uint i = 0; for(; i < audiosinus->sine_size; i++) {
		d = (double)i/audiosinus->audio.sample_frequency;
		audiosinus->sine[i] = (float) sin(2*PI*(audiosinus->freq)*d);
	}
}

//static paTestData data;
bool AudioSinus_play(AudioSinus *audiosinus, bool start_paused) {
	Audio *audio = &(audiosinus->audio);
	PaError pe;
	if (!audio->play) {
		/* Initialize PortAudio */
		if ((pe = Pa_Initialize()) != paNoError) {
			fprintf(stderr, "AudioSinus_play: Failed to initialize PortAudio, Pa_Initialize() [%s]\n", Pa_GetErrorText(pe));
			return false;
		}
		audiosinus->left_phase = audiosinus->right_phase = 0;
		audio->outputParameters.device = Pa_GetDefaultOutputDevice();
		audio->outputParameters.channelCount = audio->channels;
		audio->outputParameters.sampleFormat = audio->audio_format;
		audio->outputParameters.suggestedLatency = 
			Pa_GetDeviceInfo(audio->outputParameters.device)->defaultLowOutputLatency;
		audio->outputParameters.hostApiSpecificStreamInfo = NULL;
		
		AudioSinus_FillArray(audiosinus);
		
		
		if ( (pe = Pa_OpenStream(&(audio->pa_stream), NULL, &(audio->outputParameters),
							(audio->sample_frequency), audio->buffer_size,
							paNoFlag, paCallback, audiosinus))
			!= paNoError
		) {
			fprintf(stderr, "AudioSinus_play: Failed to open default stream, Pa_OpenDefaultStream() [%s]\n", Pa_GetErrorText(pe));
			return false;
		}
		
		/* Start PortAudio stream */
		if (! start_paused) {
			if ((pe = Pa_StartStream(audio->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioSinus_play: Failed to start stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
		} 
		else audio->pause = true;
		
		audio->initialized = audio->play = true;
		return true;
	}
	else { // now playing, toogle pause
		audio->pause = ! audio->pause; 
		if (audio->pause) {
			if ((pe = Pa_StopStream(audio->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioSinus_play: Failed to pause stream, Pa_StopStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
			else return true;
		}
		else {
			if ((pe = Pa_StartStream(audio->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioSinus_play:AudioSinus > Failed to unpause stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
			else return true;
		}
	}
}

void AudioSinus_vdestroy(void *vthis) {
	AudioSinus *this = (AudioSinus*) vthis;
	
	if (VERBOSE_DESTROY) 
		fprintf(stderr, "%30s: Deleting %s@%p\n", "AudioSinus_vdestroy", Object_getType((Object*)this), this);
	
	Audio_stop((Audio*)this);
	
	if (this->sine) {
		free(this->sine);
		this->sine = NULL;
	}
	
	Audio_destroy((Audio*)this);
	
}

AudioSinus* AudioSinus_new(AudioSinus *this) {
	if (! this) {
		fprintf(stderr, "AudioSinus_new: Passed NULL this pointer.\n");
		return NULL;
	}
	Audio *audio = &(this->audio);
	Audio_init_type(audio, AUDIOSINUS_TYPE, AudioSinus_vdestroy, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "AudioSinus_new", Object_getType((Object*)this), this);
	
	audio->lib 		    = PA_LIB;
	audio->buffer_size  = 256;
	audio->audio_format = paFloat32;
	
	this->sine = (float*) calloc(audio->sample_frequency, sizeof(float));
	this->sine_size = audio->sample_frequency;
	return this;
}

void AudioSinus_setFrequency(AudioSinus *audiosinus, float freq) {
	if (! audiosinus->sine) {
		fprintf(stderr, "AudioSinus::AudioSinus_setFrequency() > Array of sine data is NULL.\n");
		return;
	}
	Audio *audio = &(audiosinus->audio);
	PaError perr;
	
	bool t = ((audio->play) && (!audio->pause));
	if (t) {
		if ((perr = Pa_StopStream(audio->pa_stream)) != paNoError) {
			fprintf(stderr, "AudioSinus_setFrequency:AudioSinus > Failed to stop audio: Pa_StopStream() [%s]\n", Pa_GetErrorText(perr));
			return;
		}
	}
	
	AudioSinus_FillArray(audiosinus);
	
	if (t) {
		if ((perr = Pa_StartStream(audio->pa_stream)) != paNoError) {
			fprintf(stderr, "AudioSinus_setFrequency:AudioSinus > Failed to start audio: Pa_StartStream() [%s]\n", Pa_GetErrorText(perr));
		}
	}
	audiosinus->freq = freq;
}


