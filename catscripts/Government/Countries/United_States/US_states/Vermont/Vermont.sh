#!/bin/bash

KEYWORDS_VERMONT="Vermont|Montpelier"
KEYWORDS_VERMONT_ALL="$KEYWORDS_VERMONT"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Vermont"

  VERMONT=$(egrep -i "$KEYWORDS_VERMONT" "$NEWPAGES")

  if [ "$VERMONT" != "" ];
  then
    printf "%s" "$VERMONT" > Vermont.txt
    export CATFILE="Vermont.txt"
    export CATNAME="Vermont"
    $CATEGORIZE
    rm Vermont.txt
    unset VERMONT
  fi

  debug_end "Vermont"

fi