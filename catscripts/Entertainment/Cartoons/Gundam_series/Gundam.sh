#!/bin/bash

KEYWORDS_GUNDAM="Gundam"

if [ "$1" == "" ];
then

  debug_start "Gundam series"

  GUNDAM=$(egrep -i "$KEYWORDS_GUNDAM" newpages.txt)

  if [ "$GUNDAM" != "" ];
  then
    printf "%s" "$GUNDAM" > Gundam.txt
    export CATFILE="Gundam.txt"
    export CATNAME="Gundam series"
    $CATEGORIZE
    rm Gundam.txt
    unset GUNDAM
  fi

  debug_end "Gundam series"

fi