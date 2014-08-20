#!/bin/bash

KEYWORDS_UKRAINE="Ukraine"
KEYWORDS_UKRAINE_ALL="$KEYWORDS_UKRAINE"

if [ "$1" == "" ];
then
  
  debug_start "Ukraine"

  UKRAINE=$(egrep -i "$KEYWORDS_UKRAINE" "$NEWPAGES")

  if [ "$UKRAINE" != "" ];
  then
    printf "%s" "$UKRAINE" > Ukraine.txt
    export CATFILE="Ukraine.txt"
    export CATNAME="Ukraine"
    $CATEGORIZE
    rm Ukraine.txt
    unset UKRAINE
  fi

  debug_end "Ukraine"

fi