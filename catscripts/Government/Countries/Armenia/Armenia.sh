#!/bin/bash

KEYWORDS_ARMENIA="Armenia"
KEYWORDS_ARMENIA_ALL="$KEYWORDS_ARMENIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Armenia"

  ARMENIA=$(egrep -i "$KEYWORDS_ARMENIA" "$NEWPAGES")

  if [ "$ARMENIA" != "" ];
  then
    printf "%s" "$ARMENIA" > Armenia.txt
    export CATFILE="Armenia.txt"
    export CATNAME="Armenia"
    $CATEGORIZE
    rm Armenia.txt
    unset ARMENIA
  fi

  debug_end "Armenia"

fi

