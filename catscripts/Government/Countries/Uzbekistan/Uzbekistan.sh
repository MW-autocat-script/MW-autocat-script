#!/bin/bash

KEYWORDS_UZBEKISTAN="Uzbekistan"
KEYWORDS_UZBEKISTAN_ALL="$KEYWORDS_UZBEKISTAN"

if [ "$1" == "" ];
then
  
  debug_start "Uzbekistan"

  UZBEKISTAN=$(egrep -i "$KEYWORDS_UZBEKISTAN" newpages.txt)

  if [ "$UZBEKISTAN" != "" ];
  then
    printf "%s" "$UZBEKISTAN" > Uzbekistan.txt
    export CATFILE="Uzbekistan.txt"
    export CATNAME="Uzbekistan"
    $CATEGORIZE
    rm Uzbekistan.txt
    unset UZBEKISTAN
  fi

  debug_end "Uzbekistan"

fi