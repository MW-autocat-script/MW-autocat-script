#!/bin/bash

KEYWORDS_SKIING="\bSki(\b|ing|s)"

if [ "$1" == "" ];
then
  
  debug_start "Skiing"

  SKIING="$(egrep -i "$KEYWORDS_SKIING" "$NEWPAGES")"

  if [ "$SKIING" != "" ];
  then
    printf "%s" "$SKIING" > Skiing.txt
    export CATFILE="Skiing.txt"
    export CATNAME="Skiing"
    $CATEGORIZE
    rm Skiing.txt
    unset SKIING
  fi

  debug_end "Skiing"

fi