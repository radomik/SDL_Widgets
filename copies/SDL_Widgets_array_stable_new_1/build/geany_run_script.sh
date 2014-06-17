#!/bin/sh

root="../src/"
src_files=`find "${root}" \( -name "*.c" -o -name "*.sh" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" -o -name "Makefile" -o -name "*.txt" \) | tr -s '\n' ' '`
extra_files="geany_run_script.sh Makefile ../test/*.asm ../test/*.c ../test/*.txt ../asm/*.asm"

src_files="${src_files} ${extra_files}"

geany -i -s ${src_files}

