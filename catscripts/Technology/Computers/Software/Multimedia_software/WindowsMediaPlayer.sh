#!/bin/bash

KEYWORDS_WINDOWSMEDIAPLAYER="Windows(| )Media(| )Player|\bWMP\b"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_WINDOWSMEDIAPLAYER" newpages.txt >> WindowsMediaPlayer.txt

  WMP=`stat --print=%s WindowsMediaPlayer.txt`

  if [ $WMP -ne 0 ];
  then
    export CATFILE="WindowsMediaPlayer.txt"
    export CATNAME="Windows Media Player"
    $CATEGORIZE
  fi

  rm WindowsMediaPlayer.txt

fi