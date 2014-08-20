#!/bin/bash

KEYWORDS_GUATEMALA="Guat(a|e)mala"
KEYWORDS_GUATEMALA_ALL="$KEYWORDS_GUATEMALA"

if [ "$1" == "" ];
then
  
  debug_start "Guatemala"

  GUATEMALA=$(egrep -i "$KEYWORDS_GUATEMALA" "$NEWPAGES")

  if [ "$GUATEMALA" != "" ];
  then
    printf "%s" "$GUATEMALA" > Guatemala.txt
    export CATFILE="Guatemala.txt"
    export CATNAME="Guatemala"
    $CATEGORIZE
    rm Guatemala.txt
    unset GUATEMALA
  fi

  debug_end "Guatemala"

fi