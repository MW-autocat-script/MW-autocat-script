#!/bin/bash

KEYWORDS_TURKMENISTAN="Turkmenistan"
KEYWORDS_TURKMENISTAN_ALL="$KEYWORDS_TURKMENISTAN"

if [ "$1" == "" ];
then

  debug_start "Turkmenistan"

  TURKMENISTAN=$(egrep -i "$KEYWORDS_TURKMENISTAN" newpages.txt)

  if [ "$TURKMENISTAN" != "" ];
  then
    printf "%s" "$TURKMENISTAN" > Turkmenistan.txt
    export CATFILE="Turkmenistan.txt"
    export CATNAME="Turkmenistan"
    $CATEGORIZE
    rm Turkmenistan.txt
    unset TURKMENISTAN
  fi

  debug_end "Turkmenistan"

fi