/*
 *      AudioTest.c - this file is part of SDL_Widgets
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
#include <math.h>
static const char *type = "AudioTest";

AudioTest* AudioTest_new(AudioTest *this) {
	if (! this) {
		fprintf(stderr, "AudioTest_new: Passed NULL this pointer.\n");
		return NULL;
	}
	// third parameter is NULL due to AudioTest uses parent Audio destructor
	Audio_init_type(&(this->audio), AUDIOTEST_TYPE, NULL, type);
	this->audio.lib = SDL_LIB;
	return this;
}

/* http://sdl.beuc.net/sdl.wiki/Audio_Examples */

/* http://www.libsdl.org/docs/html/sdlaudiospec.html
typedef struct{
  int freq;
  Uint16 format;
  Uint8 channels;
  Uint8 silence;
  Uint16 samples;
  Uint32 size;
  void (*callback)(void *userdata, Uint8 *stream, int len);
  void *userdata;
} SDL_AudioSpec;

Structure Data

	freq	Audio frequency in samples per second
	format	Audio data format
	channels	Number of channels: 1 mono, 2 stereo
	silence	Audio buffer silence value (calculated)
	samples	Audio buffer size in samples
	size	Audio buffer size in bytes (calculated)
	callback(..)	Callback function for filling the audio buffer
	userdata	Pointer the user data which is passed to the callback function
*/

// Static fields
/** @MUST_DO: move these fields into struct AudioTest and pass this struct as audio callback userdata */
static SDL_AudioSpec	desired, obtained;
static uint sampleFrequency 		= 0;
static uint audioBufferSize 		= 0;
static uint outputAudioBufferSize 	= 0;
static uint freq1	= 50, fase1 = 0;
static uint freq2  = 51, fase2 = 0;
static uint bytesPerPeriod1, bytesPerPeriod2;

/* The audio function callback takes the following parameters:
   stream:  A pointer to the audio buffer to be filled
   len:     The length (in bytes) of the audio buffer
   * This function works only on private static global variables of class AudioTest
*/
void mixAudioCallback(void *userData, Uint8 *stream, int len) {
	int i=0; for (; i < len; i++) {
		int channel1 = (int)(150.0*sin(fase1*6.28/bytesPerPeriod1));
		int channel2 = (int)(150.0*sin(fase2*6.28/bytesPerPeriod2));
		channel1 += channel2;
		if (channel1 > 127) channel1 = 127;
		else
			if (channel1 < -128) channel1 = -128;
		
		stream[i] = (Uint8)channel1;
		
		fase1++;
		fase1 %= bytesPerPeriod1;
		
		fase2++;
		fase2 %= bytesPerPeriod2;
	}
}

/* Run this after Audio_init() to start playback */
bool AudioTest_play(AudioTest *audiotest, bool start_paused) {
	Audio *audio = &(audiotest->audio);
	if (! audiotest->audio.initialized) {
		freq1 = audiotest->freq1;
		freq2 = audiotest->freq2;
		fase1 = audiotest->fase1;
		fase2 = audiotest->fase2;
		Audio_SDL_initialize(&(audiotest->audio), &desired, &obtained, mixAudioCallback); // important				// important
		fprintf(stderr, "AudioTest_play:AudioTest> Audio initialized\n");
		/* Open audio device */
		if (SDL_OpenAudio(&desired, &obtained) < 0) {
			fprintf(stderr, "AudioTest_play:AudioTest> Unable to open audio device: %s\n", SDL_GetError());
			return false;
		}
		
		audioBufferSize = obtained.samples;
		sampleFrequency = obtained.freq;
		fprintf(stderr, "AudioTest_play:AudioTest>> In obtained:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n", 
			obtained.freq, obtained.format, obtained.channels, obtained.silence, obtained.samples, obtained.size);
		
		/* if the format is 16 bit, two bytes are written for every sample */
		outputAudioBufferSize = obtained.samples;
		if ((obtained.format==AUDIO_S16) || (obtained.format==AUDIO_U16))
			outputAudioBufferSize <<= 1;
			
		bytesPerPeriod1 = sampleFrequency / audiotest->freq1;
		bytesPerPeriod2 = sampleFrequency / audiotest->freq2;
		fprintf(stderr, "AudioTest_play:AudioTest>> Buffers:\n\taudio\t%u\n\toutput\t%u\n\tsampleFrequency\t%u\n\tfreq1\t%u\n\tfase1\t%u\n\tfreq2\t%u\n\tfase2\t%u\n\tbytes per period 1\t%u\n\tbytes per period 2\t%u\n", 
			audioBufferSize, outputAudioBufferSize, sampleFrequency, audiotest->freq1, audiotest->fase1, audiotest->freq2, audiotest->fase2, bytesPerPeriod1, bytesPerPeriod2);

		SDL_PauseAudio(start_paused);
		audio->pause = start_paused;
		audio->play = audio->initialized = true;
	}
	else {
		if (audio->pause) {
			audio->pause = false;
			SDL_PauseAudio(0);
		}
	}
	return true;
}

inline void AudioTest_setFreq1(AudioTest *audiotest, uint _freq1) { if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_LockAudio(); freq1 = _freq1; bytesPerPeriod1 = sampleFrequency / _freq1; if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_UnlockAudio(); audiotest->freq1 = _freq1; }
inline void AudioTest_setFreq2(AudioTest *audiotest, uint _freq2) { if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_LockAudio(); freq2 = _freq2; bytesPerPeriod2 = sampleFrequency / _freq2; if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_UnlockAudio(); audiotest->freq2 = _freq2; }
inline void AudioTest_setFase1(AudioTest *audiotest, uint _fase1) { if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_LockAudio(); fase1 = _fase1; if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_UnlockAudio(); audiotest->fase1 = _fase1; }
inline void AudioTest_setFase2(AudioTest *audiotest, uint _fase2) { if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_LockAudio(); fase2 = _fase2; if ((audiotest->audio.play)&&(audiotest->audio.initialized)) SDL_UnlockAudio(); audiotest->fase2 = _fase2; }

