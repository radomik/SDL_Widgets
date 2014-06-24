/*
 *      AudioFromGraph.c - this file is part of SDL_Widgets
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
#include "Memory.h"
#include "AudioFromGraph.h"
#include "Static.h"
#include "WaveDrawBox.h"

/** Methods overriden from interface coIObject */
static const coIObject override_coIObject = {
	.destroy = Audio_vdestroy,
	.toString = Audio_vtoString
};

/** Methods overriden from interface IAudio */
static const IAudio override_IAudio = {
	.play = AudioFromGraph_vplay
};

static const void *vtable[] = {
	&override_coIObject,
	&override_IAudio
};

static coClass type = {
	.size	= sizeof(AudioFromGraph),
	.name	= "AudioFromGraph",
	.vtable	= vtable
};
const coClass *AudioFromGraph_class = &type;

static int AudioFromGraph_paCallback	(	
							const void 						*inputBuffer, 
							void 							*outputBuffer,
							u64 							framesPerBuffer,
							const PaStreamCallbackTimeInfo	*timeInfo,
							PaStreamCallbackFlags 			statusFlags,
							void 							*vthis) 
	{
	/* Cast data passed through stream to our structure. */
	AudioFromGraph *this = AUDIO_FROM_GRAPH(vthis);
	if ((! this->samples) || (! this->points)) return paAbort;
	
	float *out = (float*)outputBuffer;
	float sample_left, sample_right;
	int left_phase = this->left_phase;
	int right_phase = this->right_phase;
	u32 i = 0;
	
	if (this->type == 0) {		// type==0 source points 
		for(; i<framesPerBuffer; i++) {
			sample_left  = this->points[left_phase++].fvalue;
			sample_right = this->points[right_phase++].fvalue;
			*out++ = sample_left;
			*out++ = sample_right;
			left_phase  %= this->points_size;
			right_phase %= this->points_size;
		}
	}
	else { 						// type==1 source samples
		for(; i<framesPerBuffer; i++) {
			sample_left  = this->samples[left_phase++];
			sample_right = this->samples[right_phase++];
			*out++ = sample_left;
			*out++ = sample_right;
			left_phase  %= this->samples_size;
			right_phase %= this->samples_size;
		}
	}
	this->left_phase  = left_phase;
	this->right_phase = right_phase;

	return paContinue;
}

b8 AudioFromGraph_vplay(void *vthis, b8 start_paused) {
	AudioFromGraph 	*this = AUDIO_FROM_GRAPH(vthis);
	PaError pe;
	
	if ((! this->samples) || (! this->samples_size) || (! this->points) || (! this->points_size) || (this->type > 1)) {
		fprintf(stderr, "AudioFromGraph_vplay: Failed on assertion ((! this->samples) || (! this->samples_size) || (! this->points) || (! this->points_size) || (this->type > 1)) == true\n");
		return false;
	}
	
	if (! AUDIO(this)->play) {
		/* Initialize PortAudio */
		if ((pe = Pa_Initialize()) != paNoError) {
			fprintf(stderr, "AudioFromGraph_vplay: Failed to initialize PortAudio, Pa_Initialize() [%s]\n", Pa_GetErrorText(pe));
			return false;
		}
		this->left_phase = this->right_phase = 0;
		AUDIO(this)->outputParameters.device = Pa_GetDefaultOutputDevice();
		AUDIO(this)->outputParameters.channelCount = AUDIO(this)->channels;
		AUDIO(this)->outputParameters.sampleFormat = AUDIO(this)->audio_format;
		AUDIO(this)->outputParameters.suggestedLatency = 
			Pa_GetDeviceInfo(AUDIO(this)->outputParameters.device)->defaultLowOutputLatency;
		AUDIO(this)->outputParameters.hostApiSpecificStreamInfo = NULL;
		
		if ( (pe = Pa_OpenStream(&(AUDIO(this)->pa_stream), NULL, &(AUDIO(this)->outputParameters),
							AUDIO(this)->sample_frequency, AUDIO(this)->buffer_size,
							paNoFlag, AudioFromGraph_paCallback, this)) != paNoError
		) {
			fprintf(stderr, "AudioFromGraph_vplay: Failed to open default stream, Pa_OpenDefaultStream() [%s]\n", Pa_GetErrorText(pe));
			return false;
		}
		
		/* Start PortAudio stream */
		if (! start_paused) {
			if ((pe = Pa_StartStream(AUDIO(this)->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioFromGraph_vplay: Failed to start stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(pe));
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
				fprintf(stderr, "AudioFromGraph_vplay: Failed to pause stream, Pa_StopStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
			else return true;
		}
		else {
			if ((pe = Pa_StartStream(AUDIO(this)->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioFromGraph_vplay: Failed to unpause stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(pe));
				return false;
			}
			else return true;
		}
	}
}

void AudioFromGraph_setType(AudioFromGraph *this, u8 type) {
	if ((type > 1) || (type == this->type)) return;
	b8 t = ((AUDIO(this)->play) && (! AUDIO(this)->pause));
	
	if (t) Audio_pause(AUDIO(this));
	
	this->type = type;
	this->left_phase = this->right_phase = 0;
	
	if (t) Audio_pause(AUDIO(this));
}

void AudioFromGraph_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	
	/*! Delete parent object !*/
	Audio_vdestroy(AUDIO(vthis));
}

AudioFromGraph* AudioFromGraph_new(AudioFromGraph *this) {
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
	
	this->samples 		= NULL;
	this->samples_size 	= 0;
	this->points  		= NULL;
	this->points_size 	= 0;
	this->type    		= 0;
	this->left_phase	= 0;
	this->right_phase	= 0;
	return this;
}
