#/bin/sh


for i in *.mkv; do ffmpeg -i $i -vf subtitles="$i":si=0 -acodec copy ${i%.*}.mp4 && rm $i; done 
