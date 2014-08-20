#!/bin/bash

KEYWORDS_SOUTHDAKOTA="South(| )Dakota"

if [ "$1" == "" ];
then

  debug_start "South Dakota"

  SOUTHDAKOTA=$(egrep -i "$KEYWORDS_SOUTHDAKOTA" "$NEWPAGES")

  if [ "$SOUTHDAKOTA" != "" ];
  then
    printf "%s" "$SOUTHDAKOTA" > SouthDakota.txt
    export CATFILE="SouthDakota.txt"
    export CATNAME="South Dakota"
    $CATEGORIZE
    rm SouthDakota.txt
    unset SOUTHDAKOTA
  fi

  debug_end "South Dakota"

fi