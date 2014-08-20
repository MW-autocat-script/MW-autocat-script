#!/bin/bash

KEYWORDS_JOHNSTEINBECK="Steinbeck"

if [ "$1" == "" ];
then
  
  debug_start "John Steinbeck"

  . ./catscripts/Entertainment/Literature/Books/Of_Mice_and_Men/OfMiceAndMen.sh norun #KEYWORDS_MICEANDMEN

  KEYWORDS_JOHNSTEINBECK_EXCLUDE="$KEYWORDS_MICEANDMEN"

  STEINBECK=$(egrep -i "$KEYWORDS_JOHNSTEINBECK" "$NEWPAGES" | egrep -iv "$KEYWORDS_JOHNSTEINBECK_EXCLUDE")

  if [ "$STEINBECK" != "" ];
  then
    printf "%s" "$STEINBECK" > JohnSteinbeck.txt
    export CATFILE="JohnSteinbeck.txt"
    export CATNAME="John Steinbeck"
    $CATEGORIZE
    rm JohnSteinbeck.txt
    unset STEINBECK
  fi

  debug_end "John Steinbeck"

fi