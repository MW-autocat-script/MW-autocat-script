#!/bin/bash

KEYWORDS_SANMARINO="San(| )Marino"
KEYWORDS_SANMARINO_ALL="$KEYWORDS_SANMARINO"

if [ "$1" == "" ];
then
  
  debug_start "San Marino"

  SANMARINO=$(egrep -i "$KEYWORDS_SANMARINO" newpages.txt)

  if [ "$SANMARINO" != "" ];
  then
    printf "%s" "$SANMARINO" > SanMarino.txt
    export CATFILE="SanMarino.txt"
    export CATNAME="San Marino"
    $CATEGORIZE
    rm SanMarino.txt
    unset SANMARINO
  fi

  debug_end "San Marino"

fi