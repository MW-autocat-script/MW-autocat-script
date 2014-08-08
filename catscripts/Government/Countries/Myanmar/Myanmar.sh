#!/bin/bash

KEYWORDS_MYANMAR="Myanmar|Burma"
KEYWORDS_MYANMAR_ALL="$KEYWORDS_MYANMAR"

if [ "$1" == "" ];
then
  
  debug_start "Myanmar"

  MYANMAR=$(egrep -i "$KEYWORDS_MYANMAR" newpages.txt)

  if [ "$MYANMAR" != "" ];
  then
    printf "%s" "$MYANMAR" > Myanmar.txt
    export CATFILE="Myanmar.txt"
    export CATNAME="Myanmar"
    $CATEGORIZE
    rm Myanmar.txt
    unset MYANMAR
  fi

  debug_end "Myanmar"

fi