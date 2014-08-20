#!/bin/bash

KEYWORDS_TAIWAN="Taiwan|Chinese(| )Taipei|Republic(| )of(| )China"
KEYWORDS_TAIWAN_EXCLUDE="People('|)s(| )Republic(| )of(| )China"

if [ "$1" == "" ];
then

  debug_start "Taiwan"

  TAIWAN=$(egrep -i "$KEYWORDS_TAIWAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_TAIWAN_EXCLUDE")

  if [ "$TAIWAN" != "" ];
  then
    printf "%s" "$TAIWAN" > Taiwan.txt
    export CATFILE="Taiwan.txt"
    export CATNAME="Taiwan"
    $CATEGORIZE
    rm Taiwan.txt
    unset TAIWAN
  fi

  debug_end "Taiwan"

fi