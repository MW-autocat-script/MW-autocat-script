#!/bin/bash

KEYWORDS_SOMALIA="Somali"
KEYWORDS_SOMALIA_ALL="$KEYWORDS_SOMALIA"

if [ "$1" == "" ];
then
  
  debug_start "Somalia"

  SOMALIA=$(egrep -i "$KEYWORDS_SOMALIA" newpages.txt)

  if [ "$SOMALIA" != "" ];
  then
    printf "%s" "$SOMALIA" Somalia.txt
    export CATFILE="Somalia.txt"
    export CATNAME="Somalia"
    $CATEGORIZE
    rm Somalia.txt
    unset SOMALIA
  fi

  debug_end "Somalia"

fi