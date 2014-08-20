#!/bin/bash

KEYWORDS_KANSAS="\bKansas"

if [ "$1" == "" ];
then

  debug_start "Kansas"

  KANSAS=$(egrep -i "$KEYWORDS_KANSAS" "$NEWPAGES")

  if [ "$KANSAS" != "" ];
  then
    printf "%s" "$KANSAS" > Kansas.txt
    export CATFILE="Kansas.txt"
    export CATNAME="Kansas"
    $CATEGORIZE
    rm Kansas.txt
    unset KANSAS
  fi

  debug_end "Kansas"

fi