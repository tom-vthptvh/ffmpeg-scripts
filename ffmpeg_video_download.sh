#!/bin/bash

URL=$1
if [ ! -e "${URL}" ]; then
	echo "No input URL"
	exit
fi

ffmpeg -protocol_whitelist "file,http,https,tcp,tls" -i ${URL} -c copy -copyts video.mp4
