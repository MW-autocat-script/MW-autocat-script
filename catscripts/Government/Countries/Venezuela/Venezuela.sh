#!/bin/bash

KEYWORDS_VENEZUELA="Venezuela"

if [ "$1" == "" ];
then

  debug_start "Venezuela"

  VENEZUELA=$(egrep -i "$KEYWORDS_VENEZUELA" newpages.txt)

  if [ "$VENEZUELA" != "" ];
  then
    printf "%s" "$VENEZUELA" > Venezuela.txt
    export CATFILE="Venezuela.txt"
    export CATNAME="Venezuela"
    $CATEGORIZE
    rm Venezuela.txt
    unset VENEZUELA
  fi

  debug_end "Venezuela"

fi