#!/bin/bash

KEYWORDS_TOPGEAR="Top(| )Gear|\bstig\b"

if [ "$1" == "" ];
then
  
  debug_start "Top Gear"

  TOPGEAR=$(egrep -i "$KEYWORDS_TOPGEAR" "$NEWPAGES")

  if [ "$TOPGEAR" != "" ];
  then
    printf "%s" "$TOPGEAR" > TopGear.txt
    export CATFILE="TopGear.txt"
    export CATNAME="Top Gear"
    $CATEGORIZE
    rm TopGear.txt
    unset TOPGEAR
  fi

  debug_end "Top Gear"

fi