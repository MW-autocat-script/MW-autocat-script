#!/bin/bash

KEYWORDS_BULGARIA="Bulgaria"

if [ "$1" == "" ];
then

  debug_start "Bulgaria"

  BULGARIA=$(egrep -i "$KEYWORDS_BULGARIA" newpages.txt)

  if [ "$BULGARIA" != "" ];
  then
    printf "%s" "$BULGARIA" > Bulgaria.txt
    export CATFILE="Bulgaria.txt"
    export CATNAME="Bulgaria"
    $CATEGORIZE
    rm Bulgaria.txt
    unset BULGARIA
  fi

  debug_end "Bulgaria"

fi