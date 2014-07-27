#!/bin/bash

KEYWORDS_MICEANDMEN="Mice(| )and(| )Men"

if [ "$1" == "" ];
then
  
  debug_start "Of Mice and Men"

  MICEMEN=$(egrep -i "$KEYWORDS_MICEANDMEN" newpages.txt)

  if [ "$MICEMEN" != "" ];
  then
    printf "%s" "$MICEMEN" > MiceandMen.txt
    export CATFILE="MiceandMen.txt"
    export CATNAME="Of Mice and Men"
    $CATEGORIZE
    rm MiceandMen.txt
    unset MICEMEN
  fi

  debug_end "Of Mice and Men"

fi