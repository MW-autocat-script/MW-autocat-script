#!/bin/bash

KEYWORDS_FIREEMBLEM="Fire(| )Emblem"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Fire Emblem series"

  EMBLEM=$(egrep -i "$KEYWORDS_FIREEMBLEM" newpages.txt)

  if [ "$EMBLEM" != "" ];
  then
    printf "%s" "$EMBLEM" > FireEmblem.txt
    export CATFILE="FireEmblem.txt"
    export CATNAME="Fire Emblem series"
    $CATEGORIZE
    rm FireEmblem.txt
    unset EMBLEM
  fi

  debug_end "Fire Emblem series"

fi
  