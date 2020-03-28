#!/bin/bash
#function: get music from netease-cloudmusic

Song=$1

cd /home/cani_ic/.cache/netease-cloud-music/CachedSongs/
rm * 2>/dev/null

while : 
do 
	mp3filenum=$(ls -l *.mp3 2>/dev/null | wc -l)
	if [ $mp3filenum -eq 1 ]; then
		mv * /home/cani_ic/Music/CloudMusic/"${Song}.mp3" 
		break
	elif [ $mp3filenum -gt 1 ]; then
		rm * 2>/dev/null
	else
		sleep 2 
	fi
done
