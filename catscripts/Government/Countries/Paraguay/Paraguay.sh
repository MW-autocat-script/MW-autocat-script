#!/bin/bash

KEYWORDS_PARAGUAY="Paraguay"
KEYWORDS_PARAGUAY_ALL="$KEYWORDS_PARAGUAY"

if [ "$1" == "" ];
then

  debug_start "Paraguay"

  PARAGUAY="$(egrep -i "$KEYWORDS_PARAGUAY" "$NEWPAGES")"

  if [ "$PARAGUAY" != "" ];
  then
    printf "%s" "$PARAGUAY" > Paraguay.txt
    export CATFILE="Paraguay.txt"
    export CATNAME="Paraguay"
    $CATEGORIZE
    rm Paraguay.txt
    unset PARAGUAY
  fi

  debug_end "Paraguay"

fi
