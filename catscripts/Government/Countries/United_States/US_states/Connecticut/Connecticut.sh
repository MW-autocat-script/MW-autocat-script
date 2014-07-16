#!/bin/bash

KEYWORDS_CONNECTICUT="Connecticut|Hartford|, CT\b"

if [ "$1" == "" ];
then

  debug_start "Connecticut"

  CONNECTICUT=$(egrep -i "$KEYWORDS_CONNECTICUT" newpages.txt)

  if [ "$CONNECTICUT" != "" ];
  then
    printf "%s" "$CONNECTICUT" > Connecticut.txt
    export CATFILE="Connecticut.txt"
    export CATNAME="Connecticut"
    $CATEGORIZE
    rm Connecticut.txt
    unset CONNECTICUT
  fi

  debug_end "Connecticut"

fi