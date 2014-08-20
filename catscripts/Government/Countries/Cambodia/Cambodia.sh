#!/bin/bash

KEYWORDS_CAMBODIA="Cambodia\b|Khmer(| )Rouge|Phnom(| )Penh"
KEYWORDS_CAMBODIA_ALL="$KEYWORDS_CAMBODIA"

if [ "$1" == "" ];
then
  
  debug_start "Cambodia"

  CAMBODIA=$(egrep -i "$KEYWORDS_CAMBODIA" "$NEWPAGES")

  if [ "$CAMBODIA" != "" ];
  then
    printf "%s" "$CAMBODIA" > Cambodia.txt
    export CATFILE="Cambodia.txt"
    export CATNAME="Cambodia"
    $CATEGORIZE
    rm Cambodia.txt
    unset CAMBODIA
  fi

  debug_end "Cambodia"

fi