#!/bin/bash

KEYWORDS_LYRICS="lyrics|lyric\b|words(| )to(| )the(| )song"
KEYWORDS_LYRICS_ALL="$KEYWORDS_LYRICS"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Lyrics\n"
  fi

  LYRICS=$(egrep -i "$KEYWORDS_LYRICS" newpages.txt)

  if [ "$LYRICS" != "" ];
  then
    printf "$LYRICS" > Lyrics.txt
    export CATFILE="Lyrics.txt"
    export CATNAME="Lyrics"
    $CATEGORIZE
    rm Lyrics.txt
    unset LYRICS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Lyrics\n"
  fi

fi