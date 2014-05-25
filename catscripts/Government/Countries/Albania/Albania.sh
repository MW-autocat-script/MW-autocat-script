#!/bin/bash

KEYWORDS_ALBANIA="Albania"

if [ "$1" == "" ];
then

  debug_start "Albania"

  ALBANIA=$(egrep -i "$KEYWORDS_ALBANIA" newpages.txt)

  if [ "$ALBANIA" != "" ];
  then
    printf "%s" "$ALBANIA" > Albania.txt
    export CATFILE="Albania.txt"
    export CATNAME="Albania"
    $CATEGORIZE
    rm Albania.txt
    unset ALBANIA
  fi

  debug_end "Albania"

fi