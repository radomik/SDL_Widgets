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
#include "Object.h"
#include "Memory.h"
#include "Audio.h"
#include "AudioFromGraph.h"
#include "WaveDrawBox.h"

static const char *type = "AudioFromGraph";

static int paCallback	(	const void 						*inputBuffer, 
							void 							*outputBuffer,
							ulong 							framesPerBuffer,
							const PaStreamCallbackTimeInfo	*timeInfo,
							PaStreamCallbackFlags 			statusFlags,
							void 							*userData) 
	{
	/* Cast data passed through stream to our structure. */
	AudioFromGraph *afg = (AudioFromGraph*)userData;
	if ((! afg->samples) || (! afg->points)) return paAbort;
	
	float *out = (float*)outputBuffer;
	float sample_left, sample_right;
	uint i = 0;
	
	for(; i<framesPerBuffer; i++) {
		if (afg->type == 0) {		// type==0 source points 
			sample_left  = afg->points[afg->left_phase++].fvalue;
			sample_right = afg->points[afg->right_phase++].fvalue;
			*out++ = sample_left;
			*out++ = sample_right;
			afg->left_phase  %= afg->points_size;
			afg->right_phase %= afg->points_size;
		}
		else {						// type==1 source samples
			sample_left  = afg->samples[afg->left_phase++];
			sample_right = afg->samples[afg->right_phase++];
			*out++ = sample_left;
			*out++ = sample_right;
			afg->left_phase  %= afg->samples_size;
			afg->right_phase %= afg->samples_size;
		}		
	}
	return paContinue;
}

bool AudioFromGraph_play(AudioFromGraph *afg, bool start_paused) {
	Audio *audio = &(afg->audio);
	PaError perr;
	if ((! afg->samples) || (! afg->samples_size) || (! afg->points) || (! afg->points_size) || (afg->type > 1)) {
		fprintf(stderr, "AudioFromGraph_play > Failed on assertion ((! afg->samples) || (! afg->samples_size) || (! afg->points) || (! afg->points_size) || (afg->type > 1)) == true\n");
		return false;
	}
	
	if (!audio->play) {
		/* Initialize PortAudio */
		if ((perr = Pa_Initialize()) != paNoError) {
			fprintf(stderr, "AudioFromGraph_play > Failed to initialize PortAudio, Pa_Initialize() [%s]\n", Pa_GetErrorText(perr));
			return false;
		}
		afg->left_phase = afg->right_phase = 0;
		audio->outputParameters.device = Pa_GetDefaultOutputDevice();
		audio->outputParameters.channelCount = audio->channels;
		audio->outputParameters.sampleFormat = audio->audio_format;
		audio->outputParameters.suggestedLatency = 
			Pa_GetDeviceInfo(audio->outputParameters.device)->defaultLowOutputLatency;
		audio->outputParameters.hostApiSpecificStreamInfo = NULL;
		
		if ( (perr = Pa_OpenStream(&(audio->pa_stream), NULL, &(audio->outputParameters),
							(audio->sample_frequency), audio->buffer_size,
							paNoFlag, paCallback, afg))
			!= paNoError
		) {
			fprintf(stderr, "AudioFromGraph_play > Failed to open default stream, Pa_OpenDefaultStream() [%s]\n", Pa_GetErrorText(perr));
			return false;
		}
		
		/* Start PortAudio stream */
		if (! start_paused) {
			if ((perr = Pa_StartStream(audio->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioFromGraph_play > Failed to start stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(perr));
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
			if ((perr = Pa_StopStream(audio->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioFromGraph_play > Failed to pause stream, Pa_StopStream() [%s]\n", Pa_GetErrorText(perr));
				return false;
			}
			else return true;
		}
		else {
			if ((perr = Pa_StartStream(audio->pa_stream)) != paNoError) {
				fprintf(stderr, "AudioFromGraph_play > Failed to unpause stream, Pa_StartStream() [%s]\n", Pa_GetErrorText(perr));
				return false;
			}
			else return true;
		}
	}
}

void AudioFromGraph_setType(AudioFromGraph *afg, uchar type) {
	if ((type > 1) || (type == afg->type)) return;
	Audio *audio = &(afg->audio);
	bool t = ((audio->play) && (! audio->pause));
	
	if (t) Audio_pause(audio);
	
	afg->type = type;
	afg->left_phase = afg->right_phase = 0;
	
	if (t) Audio_pause(audio);
}

AudioFromGraph* AudioFromGraph_new(AudioFromGraph *this) {
	if (! this) {
		fprintf(stderr, "AudioFromGraph_new: Passed NULL this pointer.\n");
		return NULL;
	}
	Audio *audio = &(this->audio);
	// third parameter is NULL due to AudioTest uses parent Audio destructor
	Audio_init_type(audio, AUDIOFROMGRAPH_TYPE, NULL, type);
	
	if (VERBOSE_CREATE)
		fprintf(stderr, "%30s: Creating %s@%p\n", "AudioFromGraph_new", Object_getType((Object*)this), this);
	
	audio->lib 		    = PA_LIB;
	audio->buffer_size  = 256;
	audio->audio_format = paFloat32;
	
	this->samples = NULL;
	this->samples_size = 0;
	this->points  = NULL;
	this->points_size = 0;
	this->type    = 0;
	return this;
}
