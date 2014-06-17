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
#include "Static.h"
#include "Memory.h"
#include "AudioTest.h"

static const void* vtable[] = {
	Audio_vdestroy,			/* use super class destructor */
	AudioTest_vplay			/* Audio_play virtual method implementation */
};

static coClass type = {
	.size	= sizeof(AudioTest),
	.name	= "AudioTest",
	.vtable	= vtable
};
const coClass *AudioTest_class = &type;

/* The audio function callback takes the following parameters:
   stream:  A pointer to the audio buffer to be filled
   len:     The length (in bytes) of the audio buffer
   * This function works only on private static global variables of class AudioTest
*/
static void AudioTest_mixAudioCallback(void *vthis, Uint8 *stream, int len) {
	register const u32 bytesPerPeriod1 = AUDIO_TEST(vthis)->bytesPerPeriod1;
	register const u32 bytesPerPeriod2 = AUDIO_TEST(vthis)->bytesPerPeriod2;
	register u32 		fase1 			= AUDIO_TEST(vthis)->fase1;
	register u32 		fase2 			= AUDIO_TEST(vthis)->fase2;
	register int 		i = 0, channel1, channel2;
	for (; i < len; i++) {
		channel1 = (int)(150.0*sin(fase1*2.0*PI/bytesPerPeriod1));
		channel2 = (int)(150.0*sin(fase2*2.0*PI/bytesPerPeriod2));
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
	AUDIO_TEST(vthis)->fase1 = fase1;
	AUDIO_TEST(vthis)->fase2 = fase2;
}

/* Run this after Audio_init() to start playback */
b8 AudioTest_vplay(void *vthis, b8 start_paused) {
	AudioTest *this = AUDIO_TEST(vthis);
	SDL_AudioSpec desired, obtained;
	u32 audioBufferSize 		= 0;
	u32 outputAudioBufferSize 	= 0;
	
	if (! AUDIO(this)->initialized) {
		Audio_SDL_initialize(AUDIO(this), &desired, &obtained, AudioTest_mixAudioCallback);
		
		/* Open audio device */
		if (SDL_OpenAudio(&desired, &obtained) < 0) {
			fprintf(stderr, "AudioTest_play:AudioTest> Unable to open audio device: %s\n", SDL_GetError());
			return false;
		}
		
		audioBufferSize = obtained.samples;
		this->sampleFrequency = obtained.freq;
		fprintf(stderr, "AudioTest_play: In obtained:\n\tfrequency\t%d\n\tformat\t%hu\n\tchannels\t%d\n\tsilence\t%d\n\tsamples\t%hu\n\tsize\t%u\n", 
			obtained.freq, obtained.format, obtained.channels, obtained.silence, obtained.samples, obtained.size);
		
		/* if the format is 16 bit, two bytes are written for every sample */
		outputAudioBufferSize = obtained.samples;
		if ((obtained.format==AUDIO_S16) || (obtained.format==AUDIO_U16))
			outputAudioBufferSize <<= 1;
			
		this->bytesPerPeriod1 = this->sampleFrequency / this->freq1;
		this->bytesPerPeriod2 = this->sampleFrequency / this->freq2;
		fprintf(stderr, "AudioTest_play: Buffers:\n\taudio\t%u\n\toutput\t%u\n\tsampleFrequency\t%u\n\tfreq1\t%u\n\tfase1\t%u\n\tfreq2\t%u\n\tfase2\t%u\n\tbytes per period 1\t%u\n\tbytes per period 2\t%u\n", 
			audioBufferSize, outputAudioBufferSize, this->sampleFrequency, this->freq1, this->fase1, this->freq2, this->fase2, this->bytesPerPeriod1, this->bytesPerPeriod2);

		SDL_PauseAudio(start_paused);
		AUDIO(this)->pause = start_paused;
		AUDIO(this)->play = AUDIO(this)->initialized = true;
	}
	else {
		if (AUDIO(this)->pause) {
			AUDIO(this)->pause = false;
			SDL_PauseAudio(0);
		}
	}
	return true;
}

void AudioTest_vdestroy(void *vthis) {
#ifdef VERBOSE_CREATE
	Static_printObj(vthis);
#endif
	/*! Delete self stuff !*/
	
	/*! Delete parent object !*/
	Audio_vdestroy(AUDIO(vthis));
}

AudioTest* AudioTest_new(AudioTest *this) {
	if (! this) {
		Static_nullThis();
		return NULL;
	}
	Audio_new(AUDIO(this));
	class_init(this, &type);
	
#ifdef VERBOSE_CREATE
	Static_printObj(this);
#endif

	AUDIO(this)->lib 			= SDL_LIB;
	
	this->sampleFrequency 		= 0;
	this->freq1					= 70;
	this->freq2  				= 71;
	this->fase1 				= 0;
	this->fase2 				= 0;
	this->bytesPerPeriod1		= 0;
	this->bytesPerPeriod2		= 0;
	
	return this;
}

void AudioTest_setFreq1(AudioTest *this, u32 value) { 
	const b8 t = ((AUDIO(this)->play) && (AUDIO(this)->initialized));
	if (t) SDL_LockAudio();
	this->freq1 = value; 
	this->bytesPerPeriod1 = this->sampleFrequency / value; 
	if (t) SDL_UnlockAudio();
}
void AudioTest_setFreq2(AudioTest *this, u32 value) { 
	const b8 t = ((AUDIO(this)->play) && (AUDIO(this)->initialized));
	if (t) SDL_LockAudio();
	this->freq2 = value; 
	this->bytesPerPeriod2 = this->sampleFrequency / value; 
	if (t) SDL_UnlockAudio();
}
void AudioTest_setFase1(AudioTest *this, u32 value) { 
	const b8 t = ((AUDIO(this)->play) && (AUDIO(this)->initialized));
	if (t) SDL_LockAudio();
	this->fase1 = value; 
	if (t) SDL_UnlockAudio();
}
void AudioTest_setFase2(AudioTest *this, u32 value) {
	const b8 t = ((AUDIO(this)->play) && (AUDIO(this)->initialized));
	if (t) SDL_LockAudio();
	this->fase2 = value; 
	if (t) SDL_UnlockAudio();
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

