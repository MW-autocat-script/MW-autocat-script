#!/bin/bash

KEYWORDS_LYRICS="lyrics|lyric\b|words(| )to(| )the(| )song"
KEYWORDS_LYRICS_ALL="$KEYWORDS_LYRICS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Lyrics"

  LYRICS=$(egrep -i "$KEYWORDS_LYRICS" "$NEWPAGES")

  if [ "$LYRICS" != "" ];
  then
    printf "%s" "$LYRICS" > Lyrics.txt
    export CATFILE="Lyrics.txt"
    export CATNAME="Lyrics"
    $CATEGORIZE
    rm Lyrics.txt
    unset LYRICS
  fi

  debug_end "Lyrics"

fi