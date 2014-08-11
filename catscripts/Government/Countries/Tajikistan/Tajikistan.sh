#!/bin/bash

KEYWORDS_TAJIKISTAN="Tajikistan"
KEYWORDS_TAJIKISTAN_ALL="$KEYWORDS_TAJIKISTAN"

if [ "$1" == "" ];
then
  
  debug_start "Tajikistan"

  TAJIKISTAN=$(egrep -i "$KEYWORDS_TAJIKISTAN" newpages.txt)

  if [ "$TAJIKISTAN" != "" ];
  then
    printf "%s" "$TAJIKISTAN" > Tajikistan.txt
    export CATFILE="Tajikistan.txt"
    export CATNAME="Tajikistan"
    $CATEGORIZE
    rm Tajikistan.txt
    unset TAJIKISTAN
  fi

  debug_end "Tajikistan"

fi