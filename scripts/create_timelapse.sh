#!/bin/bash

# Create a directory with current timestamp
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
mkdir -p "~/timelapse/$timestamp"

# Run FFmpeg with the input images and save the output video inside the timestamped directory
ffmpeg -framerate 25 -loglevel error -i "./%d.jpg" -vcodec mpeg2video -pix_fmt yuv420p -r 25 -y -b 10000k -f vob "~/timelapse/$timestamp/output.mpg"
