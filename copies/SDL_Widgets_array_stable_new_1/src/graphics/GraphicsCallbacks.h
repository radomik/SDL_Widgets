/*
 *      GraphicsCallbacks.h - this file is part of SDL_Widgets
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

#ifndef		_GraphicsCallbacks_h_
	#define		_GraphicsCallbacks_h_
	#include "StdDefinitions.h"
	
	/*! Button -- header of floating menu
	 *  Obvious parameters:
	 * sender->vparam[0]  -- container containing clicked Button			as Container*
	 */
	void button_main_floating_menu_click(Widget *sender, Screen *screen);
	
	/*! Open source and destination image from file
	 *  Obvious parameters:
	 * sender->cparam[0]   -- source image															as Image*
	 * sender->cparam[1]   -- destination image														as Image*
	 * sender->cparam[2]   -- Histogram histogram[3] array											as Histogram*
	 * sender->cparam[3]   -- label binarization threshold will set to "" <- at text+7				as Label*
	 * sender->cparam[4]   -- buttonimage binarization threshold up will be disabled				as ButtonImage*
	 * sender->cparam[5]   -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
	 * sender->cparam[6]   -- binarization threshold thr_value will be set to 0xFFFFFFFF			as ullong
	 */
	void button_imgsrc_open(Widget *sender, Screen *screen);
	
	/*! Restore source image from file (using path from destination image
	 *  Obvious parameters:
	 * sender->cparam[0]   -- source image															as Image*
	 * sender->cparam[1]   -- destination image														as Image*
	 * sender->cparam[2]   -- Histogram histogram[3] array											as Histogram*
	 * sender->cparam[3]   -- label binarization threshold will set to "" <- at text+7				as Label*
	 * sender->cparam[4]   -- buttonimage binarization threshold up will be disabled				as ButtonImage*
	 * sender->cparam[5]   -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
	 * sender->cparam[6]   -- binarization threshold thr_value will be set to 0xFFFFFFFF			as ullong
	 * sender->cparam[7]   -- containter containing histograms (hide if not visible)				as Container*
	 */
	void button_src_restore(Widget *sender, Screen *screen);
	
	/*! Copy source image to destination image
	 *  Obvious parameters:
	 * sender->cparam[0]   -- source image 			as Image*
	 * sender->cparam[1]   -- destination image 	as Image*
	 */
	void button_src_to_dest(Widget *sender, Screen *screen);
	
	/*! Button brightness up/down click
	 *  Obvious parameters:
	 * sender->id == 1    -- clicked button brightness UP
	 * sender->id == 0    -- clicked button brightness DOWN
	 * sender->cparam[0]  -- source image 							as Image*
	 * sender->cparam[1]  -- destination image 						as Image*
	 * sender->cparam[2]  -- label "%hd" text+11 with short img_off	as Label*
	 * sender->cparam[3]  -- brightness: 	 short img_off			as short*
	 * sender->cparam[4]  -- contrast:	 	 float img_mul			as float*
	 * sender->cparam[5]  -- allow_overflow: bool  allow_overflow	as bool*
	 */ 
	void button_brightness_change(Widget *sender, Screen *screen);
	
	/*! Button contrast up/down click
	 *  Obvious parameters:
	 * sender->id == 1        -- clicked button contrast UP
	 * sender->id == 0        -- clicked button contrast DOWN
	 * sender->cparam[0]  -- source image 								as Image*
	 * sender->cparam[1]  -- destination image 							as Image*
	 * sender->cparam[2]  -- label "%5.2f" text+11 with float img_mul	as Label*
	 * sender->cparam[3]  -- brightness: 	 short img_off				as short*
	 * sender->cparam[4]  -- contrast:	 	 float img_mul				as float*
	 * sender->cparam[5]  -- allow_overflow: bool  allow_overflow		as bool*
	 */ 
	void button_contrast_change(Widget *sender, Screen *screen);
	
	/*! Button overflow in brightness/contrast up/down click
	 *  Obvious parameters:
	 * sender->id == 1    -- clicked button overflow UP 	[change to no overflow]
	 * sender->id == 0    -- clicked button overflow DOWN	[change to overflow]
	 * sender->cparam[0]  -- source image 															as Image*
	 * sender->cparam[1]  -- destination image 														as Image*
	 * sender->cparam[2]  -- label "%s" text+9 with (allow_overflow)?"przepełnienie":"do skrajnych"	as Label*
	 * sender->cparam[3]  -- brightness: 	 short img_off											as short*
	 * sender->cparam[4]  -- contrast:	 	 float img_mul											as float*
	 * sender->cparam[5]  -- allow_overflow: bool  allow_overflow									as bool*
	 */ 
	void button_overflow_change(Widget *sender, Screen *screen);
	
	/*! Button reset brightness/contrast/overflow
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 															as Image*
	 * sender->cparam[1]  -- destination image 														as Image*
	 * sender->cparam[2]  -- label "%hd" text+11 with short img_off									as Label*
	 * sender->cparam[3]  -- label "%5.2f" text+11 with float img_mul								as Label*
	 * sender->cparam[4]  -- label "%s" text+9 with (allow_overflow)?"przepełnienie":"do skrajnych"	as Label*
	 * sender->cparam[5]  -- brightness: 	 short img_off											as short*
	 * sender->cparam[6]  -- contrast:	 	 float img_mul											as float*
	 * sender->cparam[7]  -- allow_overflow: bool  allow_overflow									as bool*
	 */ 
	void button_brightness_reset(Widget *sender, Screen *screen);
	
	/*! Button copy destination image to source image
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 															as Image*
	 * sender->cparam[1]  -- destination image 														as Image*
	 * sender->cparam[2]  -- array histogram[3]	will be reseted										as Histogram*
	 * sender->cparam[3]  -- label binarization threshold will set to "\0" at text+7				as Label*
	 * sender->cparam[4]  -- buttonimage binarization threshold up will be disabled					as ButtonImage*
	 * sender->cparam[5]  -- buttonimage binarization threshold down will be disabled				as ButtonImage* 
	 * sender->cparam[6]  -- binarization threshold value will set to 0xFFFFFFFF					as ullong*
	 * 
	 */
	void button_dest_to_src(Widget *sender, Screen *screen);
	
	/*! Button save source image to file "img/file_src.bmp"
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 														as Image*
	 */
	void button_src_save(Widget *sender, Screen *screen);
	
	/*! Button save destination image to file "img/file_dest.bmp"
	 *  Obvious parameters:
	 * sender->cparam[0]  -- destination image 														as Image*
	 */
	void button_dest_save(Widget *sender, Screen *screen);
	
	/*! Button desaturize from source image to destination image
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 														as Image*
	 * sender->cparam[1]  -- destination image													as Image*
	 */
	void button_destaturize_std(Widget *sender, Screen *screen);
	
	/*! Button change binarization algorithm
	 *  Obvious parameters:
	 * sender->id == 1    -- clicked button algorithm UP 	[change to Otsu method]
	 * sender->id == 0    -- clicked button algorithm DOWN	[change to tom3k.info method]
	 * sender->cparam[0]  -- label binarization threshold will set to "\0" at text+7						as Label*
	 * sender->cparam[1]  -- label bin. algorithm will set to "%s" (t_algo)?"Otsu":"tom3k.info" at text+10	as Label*
	 * sender->cparam[2]  -- buttonimage binarization threshold up will be disabled							as ButtonImage*
	 * sender->cparam[3]  -- buttonimage binarization threshold down will be disabled						as ButtonImage* 
	 * sender->cparam[4]  -- boolean t_algo																	as bool*
	 * sender->cparam[5]  -- binarization threshold value will set to 0xFFFFFFFF							as ullong*
	 * 
	 */ 
	void button_bin_algo_toggle(Widget *sender, Screen *screen);
	
	/*! Button change used histogram in binarization
	 *  Obvious parameters:
	 * sender->id == 1    -- clicked button histogram UP
	 * sender->id == 0    -- clicked button histogram DOWN
	 * sender->cparam[0]  -- label used histogram will set to "%5s" <- hist_names[num_hist] at text+18	as Label*
	 * sender->cparam[1]  -- label binarization threshold will set to "\0" at text+7					as Label*
	 * sender->cparam[2]  -- buttonimage binarization threshold up will be disabled						as ButtonImage*
	 * sender->cparam[3]  -- buttonimage binarization threshold down will be disabled					as ButtonImage* 
	 * sender->cparam[4]  -- current histogram num_hist													as uchar*
	 * sender->cparam[5]  -- char** array of histogram names											as char**
	 * sender->cparam[6]  -- binarization threshold value will set to 0xFFFFFFFF						as ullong*
	 * 
	 */ 
	void button_used_hist_toggle(Widget *sender, Screen *screen);
	
	/*! Button change threshold in binarization
	 *  Obvious parameters:
	 * sender->id == 1    -- clicked button threshold UP 
	 * sender->id == 0    -- clicked button threshold DOWN
	 * sender->cparam[0]  -- label binarization threshold will set to "%Lu" <- thr_value at text+7		as Label*
	 * sender->cparam[1]  -- binarization threshold thr_value will increase/decrease					as ullong*
	 * 
	 */ 
	void button_threshold_change(Widget *sender, Screen *screen);
	
	/*! Button create histograms and show them
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 													as Image*
	 * sender->cparam[1]  -- uint **colors array (3 rows, 256 cols) [already ALLOCATED]		as uint**
	 * sender->cparam[2]  -- array histogram[3] which will be filled with data				as Histogram*
	 * sender->cparam[3]  -- container containing histograms								as Container*
	 */
	void button_create_histograms_click(Widget *sender, Screen *screen);
	
	/*! Button apply histograms equalization in destination 
	 *  Obvious parameters:
	 * sender->cparam[0]   -- destination image												as Image*
	 * sender->cparam[1]   -- uint **colors array (3 rows, 256 cols) [already ALLOCATED]	as uint**
	 * sender->cparam[2]   -- array histogram[3] which will be filled with data				as Histogram*
	 * sender->cparam[3]   -- container containing histograms								as Container*
	 */
	void button_histograms_equalize(Widget *sender, Screen *screen);
	
	/*! Button create histograms, show them and calculate threshold
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 															as Image*
	 * sender->cparam[1]  -- uint **colors array (3 rows, 256 cols) [already ALLOCATED]				as uint**
	 * sender->cparam[2]  -- array histogram[3] which will be filled with data						as Histogram*
	 * sender->cparam[3]  -- container containing histograms										as Container*
	 * sender->cparam[4]  -- buttonimage binarization threshold up will be enabled					as ButtonImage*
	 * sender->cparam[5]  -- buttonimage binarization threshold down will be enabled				as ButtonImage* 
	 * sender->cparam[6]  -- label binarization threshold will set to "%Lu" <- thr_value at text+7	as Label*
	 * sender->cparam[7]  -- binarization threshold thr_value will calculate						as ullong*
	 * sender->cparam[8]  -- currently used histogram num_hist										as uchar*
	 * sender->cparam[9]  -- boolean t_algo [current threshold algorithm]							as bool*
	 */
	void button_bin_create_histograms(Widget *sender, Screen *screen);
	
	/*! Apply calculated binary threshold
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 										as Image*
	 * sender->cparam[1]  -- destination image									as Image*
	 * sender->cparam[2]  -- binarization threshold thr_value 					as ullong*
	 */
	void button_threshold_apply(Widget *sender, Screen *screen);
	
	/*! Apply negative filter in destination
	 *  Obvious parameters:
	 * sender->cparam[0]  -- destination image 									as Image*
	 */
	void button_dest_negative(Widget *sender, Screen *screen);
	
	/*! Apply splot filter
	 *  Obvious parameters:
	 * sender->cparam[0]  -- source image 				as Image*
	 * sender->cparam[1]  -- destination image			as Image*
	 * sender->cparam[2]  -- GToolsSplotFilter object	as GToolsSplotFilter*
	 */
	void button_dest_splotfilter(Widget *sender, Screen *screen);
	
	/*! Change splot filter weight
	 *  Obvious parameters:
	 * sender->id  			-- is equal to index of changed weight [0...8]
	 * sender->vparam[0] 	-- label attached to changed weight set to "%6.2f" <- new_weight at text	as Label*
	 * sender->cparam[0] 	-- label with predefinied name, will set to "STD: " at text+9				as Label*
	 * sender->cparam[1]  	-- GToolsSplotFilter object													as GToolsSplotFilter*
	 */
	void button_change_filter_weight(Widget *sender, Screen *screen);
	
	/*! Change predefinied splot filter_index
	 *  Obvious parameters:
	 * sender->id == 1    -- filter down (ind--)
	 * sender->id == 0    -- filter up   (ind++)
	 * sender->cparam[0]  -- label with predefinied name, will set to "%s" <- filter name at text+5		as Label*
	 * sender->cparam[1]  -- GToolsSplotFilter object													as GToolsSplotFilter*
	 * sender->cparam[2]  -- first label pointer from all labels array containing weight of splot filter as Label* 
	 */ 
	void button_change_filter_predef(Widget *sender, Screen *screen);
	
	/*! Click on view menu click item
	 *  Obvious parameters:
	 * sender->vparam[0]  -- container associated with menu item to show or hide		as Container*
	 */
	void button_view_click(Widget *sender, Screen *screen);
	
	/*! Changed structuring element size:
	 *  Obvious parameters:
	 * sender->id == 0    -- increase rows count of PixelDrawBox
	 * sender->id == 1    -- decrease rows count of PixelDrawBox
	 * sender->id == 2    -- increase column count of PixelDrawBox
	 * sender->id == 3    -- decrease column count of PixelDrawBox
	 * sender->vparam[0]  -- label on which write new rows/cols count as "%3hu" at text		as Label*
	 * sender->cparam[0]  -- PixelDrawBox object											as PixelDrawBox*
	 */
	void button_change_strelem_size(Widget *sender, Screen *screen);
	
	/*! Button dilate
	 *  Obvious parameters:
	 * sender->id == 0     -- use PixelDrawBox as structuring element
	 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
	 * sender->cparam[0]   -- source image									as Image*
	 * sender->cparam[1]   -- destination image								as Image*
	 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
	 */
	void button_dilate_click(Widget *sender, Screen *screen);
	
	/*! Button erode
	 *  Obvious parameters:
	 * sender->id == 0     -- use PixelDrawBox as structuring element
	 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
	 * sender->cparam[0]   -- source image									as Image*
	 * sender->cparam[1]   -- destination image								as Image*
	 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
	 */
	void button_erode_click(Widget *sender, Screen *screen);
	
	/*! Button morph open
	 *  Obvious parameters:
	 * sender->id == 0     -- use PixelDrawBox as structuring element
	 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
	 * sender->cparam[0]   -- source image									as Image*
	 * sender->cparam[1]   -- destination image								as Image*
	 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
	 */
	void button_morph_open_click(Widget *sender, Screen *screen);
	
	/*! Button morph close
	 *  Obvious parameters:
	 * sender->id == 0     -- use PixelDrawBox as structuring element
	 * sender->id == 1     -- use geodhesic approach (3x3 str element with origin in center)
	 * sender->cparam[0]   -- source image									as Image*
	 * sender->cparam[1]   -- destination image								as Image*
	 * sender->cparam[2]   -- PixelDrawBox object (structuring element)		as PixelDrawBox*
	 */
	void button_morph_close_click(Widget *sender, Screen *screen);
	
	/*! Change reconstruction iteration limit
	 *  Obvious parameters:
	 * sender->id == 0     -- decrease limit count
	 * sender->id == 1     -- increase limit count
	 * sender->vparam[0]   -- label on which write new limit as "%5hu" at text+0			as Label*
	 * sender->vparam[1]   -- limit value (0 - unlimited)									as usint*
	 */
	void button_change_reconst_limit(Widget *sender, Screen *screen);
	
	/*! Open image file as marker for reconstruction
	 *  Obvious parameters:
	 * sender->vparam[0]   -- image in which open new image									as Image*
	 * sender->vparam[1]   -- image used as comparision										as Image*
	 */
	void button_reconstruction_marker_open(Widget *sender, Screen *screen);
	
	/*! Apply reconstruction filter 
	 *  Obvious parameters;
	 *  sender->vparam[0]   -- image[0] as imgmask				as Image*
	 *  sender->vparam[1]   -- image[2] as imgmarker			as Image*
	 *  sender->vparam[2]   -- iterations limit 				as usint*
	 */ 
	void button_apply_reconstruction_filter(Widget *sender, Screen *screen);

	/*! Resize destination image up/down a bit
	 *  Obvious parameters;
	 *  sender->id  == 1    -- grow image
	 *  sender->id  == 0    -- make smaller
	 *  sender->vparam[0]   -- image[1] as destination image			as Image*
	 */ 
	void button_dest_resize(Widget *sender, Screen *screen);
	
	/*! Button replace colors threshold change 
	 *  Obvious parameters:
	 * sender->id == 1   -- threshold up
	 * sender->id == 0   -- threshold down
	 * sender->cparam[0] -- label on which writes "%3d", rep_thr at text+7		as Label*
	 * sender->cparam[1] -- threshold value										as uchar*
	 */
	void button_rep_col_change_threshold(Widget *sender, Screen *screen);

	/*! Button replace colors condition change 
	 *  Obvious parameters:
	 * sender->id == 1   -- condition up
	 * sender->id == 0   -- condition down
	 * sender->cparam[0] -- label on which writes "%2s", cond_name[rep_cond] at text+9	as Label*
	 * sender->cparam[1] -- current condition rep_cond									as condition*
	 * sender->cparam[2] -- condition names cond_name 									as uchar**
	 */
	void button_rep_col_change_condition(Widget *sender, Screen *screen);

	/*! Button replace colors change new color 
	 *  Obvious parameters:
	 * sender->id == 1   -- channel up
	 * sender->id == 0   -- channel down
	 * sender->vparam[0] -- label on which writes "%3d", rep_channel at text+0			as Label*
	 * sender->vparam[1] -- rep_channel value for attached channel						as uchar*
	 */
	void button_rep_col_change_new_color(Widget *sender, Screen *screen);

	/*! Button replace colors apply
	 *  Obvious parameters:
	 * sender->cparam[0] -- source image 									as Image*
	 * sender->cparam[1] -- destination image								as Image*
	 * sender->cparam[2] -- condition										as condition*
	 * sender->cparam[3] -- threshold										as uchar*
	 * sender->cparam[4] -- new color uchar new_col[3]						as uchar*
	 */
	void button_rep_col_apply(Widget *sender, Screen *screen);
	
	/*! Callback run by HistStretchGraph object after graph has changed on mouse release
	 *   sender is HistStretchGraph
	 *   sender->vparam[0] -- image[0] - source image 			as Image*
	 *   sender->vparam[1] -- image[1] - destination image		as Image*
	 */
	void histogram_stretch_on_mouse_release(Widget *sender, Screen *screen);
	
	/*! Button apply histogram stretch
	 *  sender->vparam[0] -- HistStretchGraph object		as HistStretchGraph*
	 */
	void button_hist_stretch_apply(Widget *sender, Screen *screen);
	
	/*! Button change count of histogram stretching nodes
	 *  sender->id == 1   -- count up
	 *  sender->id == 0   -- cound down
	 *  sender->vparam[0] -- label on which write new count as "%3hu" at text+18		as Label*
	 *  sender->vparam[1] -- HistStretchGraph object									as HistStretchGraph*
	 */
	void button_change_hist_stretch_nodes(Widget *sender, Screen *screen);
	
	/*! Button apply generic filter (from GToolsFilters.h)
	 * sender->id          -- is a name of filter 
	 * sender->cparam[0]   -- source image 				as Image*
	 * sender->cparam[1]   -- destination image			as Image*
	 */
	void button_generic_filter_apply(Widget *sender, Screen *screen);
#endif
