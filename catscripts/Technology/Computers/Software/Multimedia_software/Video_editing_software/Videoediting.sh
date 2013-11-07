#!/bin/bash

KEYWORDS_WINDOWSMOVIEMAKER="Windows(|(| )Live)(| )Movie(| )Maker"
KEYWORDS_ADOBEPREMIEREPRO="Adobe(| )Premiere|Premiere(| )Pro"
KEYWORDS_VIDEOEDITING="video edit|edit video|convert.+video|video.+convert"
KEYWORDS_VIDEOEDITING_OTHER="\biMovie|Nero(| )Vision|Corel(| )Video(| )Studio" #Apps which don't have their own category yet
KEYWORDS_VIDEOEDITING_EXCLUDE="$KEYWORDS_WINDOWSMOVIEMAKER|$KEYWORDS_ADOBEPREMIEREPRO|$KEYWORDS_VIDEOEDITING_OTHER"
KEYWORDS_VIDEOEDITING_ALL="$KEYWORDS_VIDEOEDITING|$KEYWORDS_VIDEOEDITING_EXCLUDE|$KEYWORDS_VIDEOEDITING_OTHER"


if [ "$1" == "" ]; #Normal operation
then

  egrep -i "$KEYWORDS_WINDOWSMOVIEMAKER" newpages.txt >> WindowsMovieMaker.txt
  egrep -i "$KEYWORDS_ADOBEPREMIEREPRO" newpages.txt >> AdobePremierePro.txt
  egrep -i "$KEYWORDS_VIDEOEDITING_OTHER" newpages.txt >> Videoediting.txt
  egrep -i "$KEYWORDS_VIDEOEDITING" newpages.txt | egrep -iv "$KEYWORDS_VIDEOEDITING_EXCLUDE" >> Videoediting.txt

  WMM=`stat --print=%s WindowsMovieMaker.txt`
  PREMIERE=`stat --print=%s AdobePremierePro.txt`
  VIDEO=`stat --print=%s Videoediting.txt`

  if [ $VIDEO -ne 0 ];
  then
    export CATFILE="Videoediting.txt"
    export CATNAME="Video editing software"
    $CATEGORIZE
  fi

  if [ $WMM -ne 0 ];
  then
    export CATFILE="WindowsMovieMaker.txt"
    export CATNAME="Windows Movie Maker"
    $CATEGORIZE
  fi

  if [ $PREMIERE -ne 0 ];
  then
    export CATFILE="AdobePremierePro.txt"
    export CATNAME="Adobe Premiere Pro"
    $CATEGORIZE
  fi

  rm WindowsMovieMaker.txt
  rm AdobePremierePro.txt
  rm Videoediting.txt

fi