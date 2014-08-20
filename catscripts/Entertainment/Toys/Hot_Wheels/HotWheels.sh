#!/bin/bash

KEYWORDS_HOTWHEELS="Hot(| )Wheels"
KEYWORDS_HOTWHEELS_ALL="$KEYWORDS_HOTWHEELS"

if [ "$1" == "" ];
then
  
  debug_start "Hot Wheels"

  HOTWHEELS=$(egrep -i "$KEYWORDS_HOTWHEELS" "$NEWPAGES")

  if [ "$HOTWHEELS" != "" ];
  then
    printf "%s" "$HOTWHEELS" > HotWheels.txt
    export CATFILE="HotWheels.txt"
    export CATNAME="Hot Wheels"
    $CATEGORIZE
    rm HotWheels.txt
    unset HOTWHEELS
  fi

  debug_end "Hot Wheels"

fi