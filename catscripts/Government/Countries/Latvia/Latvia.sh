#!/bin/bash

KEYWORDS_LATVIA="Latvia"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Latvia"

  LATVIA=$(egrep -i "$KEYWORDS_LATVIA" "$NEWPAGES")

  if [ "$LATVIA" != "" ];
  then
    printf "%s" "$LATVIA" > Latvia.txt
    export CATFILE="Latvia.txt"
    export CATNAME="Latvia"
    $CATEGORIZE
    rm Latvia.txt
    unset LATVIA
  fi

  debug_end "Latvia"

fi