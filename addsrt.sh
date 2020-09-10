#! /bin/zsh
input=$(find ./ -name "*.mp4")
srt=$(find ./ -name "*.srt")
echo $input
echo $srt
ffmpeg -i $input -vf subtitles=$srt -y -strict -2 $1
