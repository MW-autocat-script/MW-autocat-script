#!/bin/bash

KEYWORDS_ADOBEFLASHPLAYER="Flash(| )player"
KEYWORDS_ADOBEFLASHPLAYER_ALL="$KEYWORDS_ADOBEFLASHPLAYER"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Adobe Flash Player\n"
  fi

  FLASHPLAYER=`egrep -i "$KEYWORDS_ADOBEFLASHPLAYER" newpages.txt`

  if [ "$FLASHPLAYER" != "" ];
  then
    printf "$FLASHPLAYER" > AdobeFlashPlayer.txt
    export CATFILE="AdobeFlashPlayer.txt"
    export CATNAME="Adobe Flash Player"
    $CATEGORIZE
    rm AdobeFlashPlayer.txt
    unset FLASHPLAYER
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Adobe Flash Player\n"
  fi

fi