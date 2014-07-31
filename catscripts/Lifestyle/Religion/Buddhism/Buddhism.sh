#!/bin/bash

KEYWORDS_BUDDHISM="Budd(|h)(a|ist|ism)|Dalai(| )Lama|Bodhi"
KEYWORDS_BUDDHISM_EXCLUDE="Bodhi(| )Linux"
KEYWORDS_BUDDHISM_ALL="$KEYWORDS_BUDDHISM"

if [ "$1" == "" ];
then
  
  debug_start "Buddhism"

  BUDDHISM=$(egrep -i "$KEYWORDS_BUDDHISM" newpages.txt | egrep -iv "$KEYWORDS_BUDDHISM_EXCLUDE")

  if [ "$BUDDHISM" != "" ];
  then
    printf "%s" "$BUDDHISM" > Buddhism.txt
    export CATFILE="Buddhism.txt"
    export CATNAME="Buddhism"
    $CATEGORIZE
    rm Buddhism.txt
    unset BUDDHISM
  fi

  debug_end "Buddhism"

fi