#!/bin/bash

KEYWORDS_WINDOWSMEDIAPLAYER="Windows(| )Media(| )Player|\bWMP\b"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Windows Media Player\n"
  fi

  WMP=`egrep -i "$KEYWORDS_WINDOWSMEDIAPLAYER" newpages.txt`

  if [ "$WMP" != "" ];
  then
    printf "$WMP" > WindowsMediaPlayer.txt
    export CATFILE="WindowsMediaPlayer.txt"
    export CATNAME="Windows Media Player"
    $CATEGORIZE
    rm WindowsMediaPlayer.txt
    unset WMP
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Windows Media Player\n"
  fi

fi