#!/bin/bash

egrep -i 'Windows(| )Media(| )Player|\bWMP\b' newpages.txt >> WindowsMediaPlayer.txt

WMP=`stat --print=%s WindowsMediaPlayer.txt`

if [ $WMP -ne 0 ];
then
  export CATFILE="WindowsMediaPlayer.txt"
  export CATNAME="Windows Media Player"
  $CATEGORIZE
fi

rm WindowsMediaPlayer.txt