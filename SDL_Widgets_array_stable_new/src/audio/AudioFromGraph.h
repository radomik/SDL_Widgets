/*
 *      AudioFromGraph.h - this file is part of SDL_Widgets
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

#ifndef _AudioFromGraph_h_
	#define		_AudioFromGraph_h_
	
	#include "StdDefinitions.h"
	#include "Audio.h"
	
	extern const coClass *AudioFromGraph_class;
	#define AUDIO_FROM_GRAPH(VTHIS) ((AudioFromGraph*)VTHIS)

	struct AudioFromGraph {
		Audio		_super;			// parent Audio class object
		
		/*! First source (with interpolation) !*/
		float 		*samples;		// source array of samples (pointer to WaveDrawBox.samples
		u16		samples_size;
		
		/*! Second source (with multiplication) !*/
		wdb_point	*points;
		u16		points_size;
		
		/*! Source  0 - points, 1 - samples !*/
		u8		type;
		
		int 		left_phase;		// left phase
		int 		right_phase;	// right phase
	};
	
	/** Default constructor */
	AudioFromGraph* AudioFromGraph_new(AudioFromGraph *this);
	
	/** Destructor (call this method only from derived classes destructors) */
	void AudioFromGraph_vdestroy(void *vthis);
	
	/** Audio_play() virtual method implementation
	 * use this method signature only in derived classes vtables
	 * to call play method use Audio_play() instead */
	b8 AudioFromGraph_vplay(void *vthis, b8 start_paused);
	
	// 0 - points (no interpolation), 1 - samples (linear interpolation)
	void AudioFromGraph_setType(AudioFromGraph *this, u8 type);
#endif

