#!/bin/bash

MULTIMEDIADIR="./catscripts/Technology/Computers/Software/Multimedia_software"

if [ "$1" == "" ]; #Normal operation
then

  . $MULTIMEDIADIR/Video_editing_software/Videoediting.sh #KEYWORDS_VIDEOEDITING_ALL
  . $MULTIMEDIADIR/WindowsMediaPlayer.sh #KEYWORDS_WINDOWSMEDIAPLAYER
  . $MULTIMEDIADIR/iTunes.sh #KEYWORDS_ITUNES
  . $MULTIMEDIADIR/AdobeFlashPlayer.sh #KEYWORDS_ADOBEFLASHPLAYER_ALL

  KEYWORDS_MULTIMEDIASOFTWARE="Multimedia"
  KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE="$KEYWORDS_VIDEOEDITING_ALL|$KEYWORDS_WINDOWSMEDIAPLAYER|$KEYWORDS_ITUNES|$KEYWORDS_ADOBEFLASHPLAYER_ALL"
  KEYWORDS_MULTIMEDIASOFTWARE_OTHER="Win(| )Amp|VLC|Video(| )LAN|QuickTime|Media(| )Player(| )Classic"
  KEYWORDS_MULTIMEDIASOFTWARE_ALL="$KEYWORDS_MULTIMEDIASOFTWARE|$KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE|$KEYWORDS_MULTIMEDIASOFTWARE_OTHER"

  MULTIMEDIA=$( egrep -i "$KEYWORDS_MULTIMEDIASOFTWARE|$KEYWORDS_MULTIMEDIASOFTWARE_OTHER" newpages.txt | egrep -iv "$KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE")

  if [ "$MULTIMEDIA" != "" ];
  then
    printf "$MULTIMEDIA" > Multimedia.txt
    export CATFILE="Multimedia.txt"
    export CATNAME="Multimedia software"
    $CATEGORIZE
    rm Multimedia.txt
    unset MULTIMEDIA
  fi

fi

if [ "$1" == "norun" ];
then

  . $MULTIMEDIADIR/Video_editing_software/Videoediting.sh norun #KEYWORDS_VIDEOEDITING_ALL
  . $MULTIMEDIADIR/WindowsMediaPlayer.sh norun #KEYWORDS_WINDOWSMEDIAPLAYER
  . $MULTIMEDIADIR/iTunes.sh norun #KEYWORDS_ITUNES
  . $MULTIMEDIADIR/AdobeFlashPlayer.sh norun #KEYWORDS_ADOBEFLASHPLAYER_ALL

  KEYWORDS_MULTIMEDIASOFTWARE="Multimedia"
  KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE="$KEYWORDS_VIDEOEDITING_ALL|$KEYWORDS_WINDOWSMEDIAPLAYER|$KEYWORDS_ITUNES|$KEYWORDS_ADOBEFLASHPLAYER_ALL"
  KEYWORDS_MULTIMEDIASOFTWARE_OTHER="Win(| )Amp|VLC|Video(| )LAN|QuickTime|Media(| )Player(| )Classic"
  KEYWORDS_MULTIMEDIASOFTWARE_ALL="$KEYWORDS_MULTIMEDIASOFTWARE|$KEYWORDS_MULTIMEDIASOFTWARE_EXCLUDE|$KEYWORDS_MULTIMEDIASOFTWARE_OTHER"

fi