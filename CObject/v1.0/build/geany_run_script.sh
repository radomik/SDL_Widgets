#!/bin/sh

root="../"
src_files=`find "${root}" \( -name "*.c" -o -name "*.sh" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" -o -name "Makefile" -o -name "*.txt" -o -name "*.asm" \) | tr -s '\n' ' '`

geany -i -s ${src_files}

