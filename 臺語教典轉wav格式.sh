#!/bin/bash
function decoding(){
  mp3_filename=`basename $1`
  wav_filename="${mp3_filename%.*}".wav
  avconv -y -i "$1" -vcodec copy -ac 1 -strict experimental 語音合成訓練範例-臺語教典/wav/"$wav_filename";
}
mkdir -p 語音合成訓練範例-臺語教典/wav
export -f decoding
echo 語音合成訓練範例-臺語教典/twblg.dict.edu.tw/holodict_new/audio/*.mp3 |\
  xargs -n 1 -P 4 bash -c 'decoding "$@"' _ 
