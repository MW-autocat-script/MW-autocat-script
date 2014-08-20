#!/bin/bash

KEYWORDS_XBOX="X(|-)box"
KEYWORDS_XBOX_EXCLUDE="X(|-)box(| )(1\b|360|One|Live)"

if [ "$1" == "" ];
then

  debug_start "Xbox"

  XBOX="$(egrep -i "$KEYWORDS_XBOX" "$NEWPAGES" | egrep -iv "$KEYWORDS_XBOX_EXCLUDE")"

  if [ "$XBOX" != "" ];
  then
    printf "%s" "$XBOX" > Xbox.txt
    export CATFILE="Xbox.txt"
    export CATNAME="Xbox"
    $CATEGORIZE
    rm Xbox.txt
    unset XBOX
  fi

  debug_end "Xbox"

fi