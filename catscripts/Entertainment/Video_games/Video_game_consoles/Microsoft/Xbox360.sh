#!/bin/bash

KEYWORDS_XBOX360="X(|-)box(| )360"

if [ "$1" == "" ];
then

  debug_start "Xbox 360"

  X360=$(egrep -i "$KEYWORDS_XBOX360" newpages.txt)

  if [ "$X360" != "" ];
  then
    printf "%s" "$X360" > Xbox360.txt
    export CATFILE="Xbox360.txt"
    export CATNAME="Xbox 360"
    $CATEGORIZE
    rm Xbox360.txt
    unset X360
  fi

  debug_end "Xbox 360"

fi
