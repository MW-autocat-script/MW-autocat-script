#!/bin/bash

KEYWORDS_ZIMBABWE="Zimbabwe"
KEYWORDS_ZIMBABWE_ALL="$KEYWORDS_ZIMBABWE"

if [ "$1" == "" ];
then
  
  debug_start "Zimbabwe"

  ZIMBABWE=$(egrep -i "$KEYWORDS_ZIMBABWE" "$NEWPAGES")

  if [ "$ZIMBABWE" != "" ];
  then
    printf "%s" "$ZIMBABWE" > Zimbabwe.txt
    export CATFILE="Zimbabwe.txt"
    export CATNAME="Zimbabwe"
    $CATEGORIZE
    rm Zimbabwe.txt
    unset ZIMBABWE
  fi

  debug_end "Zimbabwe"

fi