#!/bin/bash

SRC_BASE_DIR="/home/darek/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src"
INDEX_FILE="/home/darek/e/KCK/SDL_Widgets/SDL_Widgets_array_stable_new/src/build/make_index.txt"
SRC_EXT="c"
HDR_EXT="h"
EXTS="${SRC_EXT} ${HDR_EXT}"

function contains() {
	if [ -z $2 ] ; then return 1 ; fi
	for i in $1 ; do
		if [ "$i" == "$2" ] ; then
			return 0
		fi
	done
	return 1
}

function scan_folder() {
	local _pref="${2}"
	local _dir="${1}"
	#~ echo "_pref=$_pref"
	#~ echo "_dir=$_dir"
	cd "$_dir"
	
	for dir in * ; do
		#~ echo "dir: $dir"
		if [ -d "$dir" ] ; then
			#~ echo ">>$dir<<"
			local prefix="${_pref}${dir}/"
			#~ echo "prefix=$prefix"
			scan_folder $dir $prefix
			
		fi
	done
	
	for file in *; do
		if [ -f "$file" ] ; then
			local ext=${file##*.}
			contains "$EXTS" "$ext"
			if [ $? -eq 0 ] ; then
				echo "FILE: ${_pref}${_dir}/${file} | ext=$ext"
			fi
		fi
	done
	
	cd ".."
	
	return 0
}

function make_index() {
	if [ -w "$INDEX_FILE" ] ; then
		rm "$INDEX_FILE"
	fi

	scan_folder "" ""
	
	return 0
}

cd ${SRC_BASE_DIR}
make_index

