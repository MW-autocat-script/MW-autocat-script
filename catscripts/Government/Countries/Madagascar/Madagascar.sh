#!/bin/bash

KEYWORDS_MADAGASCAR="Madagascar"
KEYWORDS_MADAGASCAR_ALL="$KEYWORDS_MADAGASCAR"

if [ "$1" == "" ];
then

  debug_start "Madagascar"

  MADAGASCAR=$(egrep -i "$KEYWORDS_MADAGASCAR" newpages.txt)

  if [ "$MADAGASCAR" != "" ];
  then
    printf "%s" "$MADAGASCAR" > Madagascar.txt
    export CATFILE="Madagascar.txt"
    export CATNAME="Madagascar"
    $CATEGORIZE
    rm Madagascar.txt
    unset MADAGASCAR
  fi

  debug_end "Madagascar"

fi