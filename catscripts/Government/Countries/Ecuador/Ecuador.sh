#!/bin/bash

KEYWORDS_ECUADOR="Ecuador"
KEYWORDS_ECUADOR_ALL="$KEYWORDS_ECUADOR"

if [ "$1" == "" ];
then

  debug_start "Ecuador"

  ECUADOR=$(egrep -i "$KEYWORDS_ECUADOR" newpages.txt)

  if [ "$ECUADOR" != "" ];
  then
    printf "%s" "$ECUADOR" > Ecuador.txt
    export CATFILE="Ecuador.txt"
    export CATNAME="Ecuador"
    $CATEGORIZE
    rm Ecuador.txt
    unset ECUADOR
  fi

  debug_end "Ecuador"

fi