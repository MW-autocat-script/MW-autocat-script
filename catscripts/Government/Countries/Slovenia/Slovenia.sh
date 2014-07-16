#!/bin/bash

KEYWORDS_SLOVENIA="Slovenia"
KEYWORDS_SLOVENIA_ALL="$KEYWORDS_SLOVENIA"

if [ "$1" == "" ];
then
  
  debug_start "Slovenia"

  SLOVENIA=$(egrep -i "$KEYWORDS_SLOVENIA" newpages.txt)

  if [ "$SLOVENIA" != "" ];
  then
    printf "%s" "$SLOVENIA" > Slovenia.txt
    export CATFILE="Slovenia.txt"
    export CATNAME="Slovenia"
    $CATEGORIZE
    rm Slovenia.txt
    unset SLOVENIA
  fi

  debug_end "Slovenia"

fi