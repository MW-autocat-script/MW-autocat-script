#!/bin/bash

KEYWORDS_NORTHKOREA="North(| )Korea|Pyongyang|Kim Jong(-| )Il|Kim Il(-| )Song|Kim Jong(-| )un"
KEYWORDS_NORTHKOREA_ALL="$KEYWORDS_NORTHKOREA"

if [ "$1" == "" ];
then

  debug_start "North Korea"

  NKOREA=$(egrep -i "$KEYWORDS_NORTHKOREA" "$NEWPAGES")

  if [ "$NKOREA" != "" ];
  then
    printf "%s" "$NKOREA" > NorthKorea.txt
    export CATFILE="NorthKorea.txt"
    export CATNAME="North Korea"
    $CATEGORIZE
    rm NorthKorea.txt
    unset NKOREA
  fi

  debug_end "North Korea"

fi
