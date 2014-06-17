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

	struct AudioFromGraph {
		Audio		audio;			// parent Audio class object
		
		/*! First source (with interpolation) !*/
		float 		*samples;		// source array of samples (pointer to WaveDrawBox.samples
		usint		samples_size;
		
		/*! Second source (with multiplication) !*/
		wdb_point	*points;
		usint		points_size;
		
		/*! Source  0 - points, 1 - samples !*/
		uchar		type;
		
		int 		left_phase;		// left phase
		int 		right_phase;	// right phase
	};
	
	// default constructor
	AudioFromGraph* AudioFromGraph_new(AudioFromGraph *this);
	
	// 0 - points (no interpolation), 1 - samples (linear interpolation)
	void AudioFromGraph_setType(AudioFromGraph *afg, uchar type);
	
	bool AudioFromGraph_play(AudioFromGraph *afg, bool start_paused);
#endif

