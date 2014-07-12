#!/bin/bash

KEYWORDS_WINDOWSMOVIEMAKER="Windows(|(| )Live)(| )Movie(| )Maker"
KEYWORDS_ADOBEPREMIEREPRO="Adobe(| )Premiere|Premiere(| )Pro"
KEYWORDS_VIDEOEDITING="video(| )edit|edit(| )video|convert.+video|video.+convert"
KEYWORDS_VIDEOEDITING_OTHER="\biMovie|Nero(| )Vision|Corel(| )Video(| )Studio" #Apps which don't have their own category yet
KEYWORDS_VIDEOEDITING_EXCLUDE="$KEYWORDS_WINDOWSMOVIEMAKER|$KEYWORDS_ADOBEPREMIEREPRO|$KEYWORDS_VIDEOEDITING_OTHER"
KEYWORDS_VIDEOEDITING_ALL="$KEYWORDS_VIDEOEDITING|$KEYWORDS_VIDEOEDITING_EXCLUDE|$KEYWORDS_VIDEOEDITING_OTHER"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Video editing"

  WMM=$(egrep -i "$KEYWORDS_WINDOWSMOVIEMAKER" newpages.txt)
  PREMIERE=$(egrep -i "$KEYWORDS_ADOBEPREMIEREPRO" newpages.txt)
  VIDEO=$(egrep -i "$KEYWORDS_VIDEOEDITING_OTHER" newpages.txt && egrep -i "$KEYWORDS_VIDEOEDITING" newpages.txt | egrep -iv "$KEYWORDS_VIDEOEDITING_EXCLUDE")

  if [ "$VIDEO" != "" ];
  then
    printf "%s" "$VIDEO" > Videoediting.txt
    export CATFILE="Videoediting.txt"
    export CATNAME="Video editing software"
    $CATEGORIZE
    rm Videoediting.txt
    unset VIDEO
  fi

  if [ "$WMM" != "" ];
  then
    printf "%s" "$WMM" > WindowsMovieMaker.txt
    export CATFILE="WindowsMovieMaker.txt"
    export CATNAME="Windows Movie Maker"
    $CATEGORIZE
    rm WindowsMovieMaker.txt
    unset WMM
  fi

  if [ "$PREMIERE" != "" ];
  then
    printf "%s" "$PREMIERE" > AdobePremierePro.txt
    export CATFILE="AdobePremierePro.txt"
    export CATNAME="Adobe Premiere Pro"
    $CATEGORIZE
    rm AdobePremierePro.txt
    unset PREMIERE
  fi

  debug_end "Video editng"

fi

#This is here so ShellCheck doesn't complain about KEYWORDS_VIDEOEDITING_ALL, which is used elsewhere
KEYWORDS_VIDEOEDITING_ALL="$KEYWORDS_VIDEOEDITING_ALL"