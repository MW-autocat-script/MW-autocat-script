#!/bin/bash

KEYWORDS_PORTUGAL="Portugal"

if [ "$1" == "" ];
then
  
  debug_start "Portugal"

  PORTUGAL="$(egrep -i "$KEYWORDS_PORTUGAL" "$NEWPAGES")"

  if [ "$PORTUGAL" != "" ];
  then
    printf "%s" "$PORTUGAL" > Portugal.txt
    export CATFILE="Portugal.txt"
    export CATNAME="Portugal"
    $CATEGORIZE
    rm Portugal.txt
    unset PORTUGAL
  fi

  debug_end "Portugal"

fi