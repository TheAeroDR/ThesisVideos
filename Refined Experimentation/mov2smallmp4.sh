#!/bin/bash
for i   
do
    echo "Processing $i"
    filename=$(basename -- "$i")
    extension="${filename##*.}"
    filename="${filename%.*}"
   
   INPUT_FILE="${filename}.mov"
   OUTPUT_FILE="${filename}.mp4"  

    ffmpeg -i "$INPUT_FILE" -vf scale=1280:1120 -r 30 -c:v libx264 -b:v 1006k -c:a aac -b:a 128k "$OUTPUT_FILE"
done
