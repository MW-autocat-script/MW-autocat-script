#!/bin/bash

KEYWORDS_WINDOWSMEDIAPLAYER="Windows(| )Media(| )Player|\bWMP\b"

if [ "$1" == "" ];
then

  debug_start "Windows Media Player"

  WMP=$(egrep -i "$KEYWORDS_WINDOWSMEDIAPLAYER" "$NEWPAGES")

  if [ "$WMP" != "" ];
  then
    printf "%s" "$WMP" > WindowsMediaPlayer.txt
    export CATFILE="WindowsMediaPlayer.txt"
    export CATNAME="Windows Media Player"
    $CATEGORIZE
    rm WindowsMediaPlayer.txt
    unset WMP
  fi

  debug_end "Windows Media Player"

fi