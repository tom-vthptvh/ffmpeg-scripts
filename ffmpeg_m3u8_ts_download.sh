#!/bin/bash

#FILE is url to m3u8 file (local, remote)

FILE=$1

# check if FILE is local file
#if [ ! -e "${FILE}" ]; then
#	echo "No input url"
#	exit
#fi

ffmpeg -protocol_whitelist "file,http,https,tcp,tls" -i ${FILE} -c copy -bsf:a aac_adtstoasc video.mp4
