#!/bin/bash

KEYWORDS_WYOMING="Wyoming"
KEYWORDS_WYOMING_ALL="$KEYWORDS_WYOMING"

if [ "$1" == "" ];
then
  
  debug_start "Wyoming"

  WYOMING="$(egrep -i "$KEYWORDS_WYOMING" "$NEWPAGES")"

  if [ "$WYOMING" != "" ];
  then
    printf "%s" "$WYOMING" > Wyoming.txt
    export CATFILE="Wyoming.txt"
    export CATNAME="Wyoming"
    $CATEGORIZE
    rm Wyoming.txt
    unset WYOMING
  fi

  debug_end "Wyoming"

fi