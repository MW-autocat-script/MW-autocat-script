#!/bin/bash

CURRENTDIR="./catscripts/Technology/Computers/Software/Multimedia_software"

if [ "$1" == "" ]; #Normal operation
then

  . $CURRENTDIR/Video_editing_software/Videoediting.sh #KEYWORDS_VIDEOEDITING_ALL
  . $CURRENTDIR/WindowsMediaPlayer.sh #KEYWORDS_WINDOWSMEDIAPLAYER
  . $CURRENTDIR/iTunes.sh #KEYWORDS_ITUNES

  KEYWORDS_MULTIMEDIASOFTWARE="Multimedia"
  KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE="$KEYWORDS_VIDEOEDITING_ALL|$KEYWORDS_WINDOWSMEDIAPLAYER|$KEYWORDS_ITUNES"
  KEYWORDS_MULTIMEDIASOFTWARE_OTHER="Win(| )Amp|VLC|Video(| )LAN|QuickTime|Media(| )Player(| )Classic"
  KEYWORDS_MULTIMEDIASOFTWARE_ALL="$KEYWORDS_MULTIMEDIASOFTWARE|$KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE|$KEYWORDS_MULTIMEDIASOFTWARE_OTHER"

  egrep -i "$KEYWORDS_MULTIMEDIASOFTWARE|$KEYWORDS_MULTIMEDIASOFTWARE_OTHER" newpages.txt | egrep -iv "$KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE" >> Multimedia.txt

  MULTIMEDIA=`stat --print=%s Multimedia.txt`

  if [ $MULTIMEDIA -ne 0 ];
  then
    export CATFILE="Multimedia.txt"
    export CATNAME="Multimedia software"
    $CATEGORIZE
  fi

  rm Multimedia.txt

fi

if [ "$1" == "norun" ];
then

  . $CURRENTDIR/Video_editing_software/Videoediting.sh norun #KEYWORDS_VIDEOEDITING_ALL
  . $CURRENTDIR/WindowsMediaPlayer.sh norun #KEYWORDS_WINDOWSMEDIAPLAYER
  . $CURRENTDIR/iTunes.sh norun #KEYWORDS_ITUNES

  KEYWORDS_MULTIMEDIASOFTWARE="Multimedia"
  KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE="$KEYWORDS_VIDEOEDITING_ALL|$KEYWORDS_WINDOWSMEDIAPLAYER|$KEYWORDS_ITUNES"
  KEYWORDS_MULTIMEDIASOFTWARE_OTHER="Win(| )Amp|VLC|Video(| )LAN|QuickTime|Media(| )Player(| )Classic"
  KEYWORDS_MULTIMEDIASOFTWARE_ALL="$KEYWORDS_MULTIMEDIASOFTWARE|$KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE|$KEYWORDS_MULTIMEDIASOFTWARE_OTHER"

fi