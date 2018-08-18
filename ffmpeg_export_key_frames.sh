#!/bin/bash

# Extract only key frames and export to BSF file.
FILE=$1
if [ ! -e "${FILE}" ]; then
	echo "No input file"
	exit
fi

ffmpeg -discard nokey -i ${FILE} -c copy -copyts output.264
