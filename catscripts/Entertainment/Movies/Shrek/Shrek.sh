#!/bin/bash

KEYWORDS_SHREK="\bShrek"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Shrek"

  SHREK="$(egrep -i "$KEYWORDS_SHREK" newpages.txt)"

  if [ "$SHREK" != "" ];
  then
    printf "%s" "$SHREK" > Shrek.txt
    export CATFILE="Shrek.txt"
    export CATNAME="Shrek"
    $CATEGORIZE
    rm Shrek.txt
    unset SHREK
  fi

  debug_end "Shrek"

fi