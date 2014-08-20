#!/bin/bash

KEYWORDS_ALASKA="Alaska|Seward's(| )icebox|,(| )AK( |$)"
KEYWORDS_ALASKA_ALL="$KEYWORDS_ALASKA"

if [ "$1" == "" ];
then

  debug_start "Alaska"

  ALASKA=$(egrep -i "$KEYWORDS_ALASKA" "$NEWPAGES")

  if [ "$ALASKA" != "" ];
  then
    printf "%s" "$ALASKA" > Alaska.txt
    export CATFILE="Alaska.txt"
    export CATNAME="Alaska"
    $CATEGORIZE
    rm Alaska.txt
    unset ALASKA
  fi

  debug_end "Alaska"

fi