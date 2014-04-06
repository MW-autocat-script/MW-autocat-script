#!/bin/bash

KEYWORDS_FAIRYTAIL="Fairy(| )Tail"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Fairy Tail"

  FAIRYTAIL="$(egrep -i "$KEYWORDS_FAIRYTAIL" newpages.txt)"
  
  if [ "$FAIRYTAIL" != "" ];
  then
    printf "%s" "$FAIRYTAIL" > FairyTail.txt
    export CATFILE="FairyTail.txt"
    export CATNAME="Fairy Tail"
    $CATEGORIZE
    rm FairyTail.txt
    unset FAIRYTAIL
  fi

  debug_end "Fairy Tail"

fi