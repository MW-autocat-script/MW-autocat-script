#!/bin/bash

KEYWORDS_BOLIVIA="Bolivia"
KEYWORDS_BOLIVIA_ALL="$KEYWORDS_BOLIVIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Bolivia"

  BOLIVIA=$(egrep -i "$KEYWORDS_BOLIVIA" "$NEWPAGES")

  if [ "$BOLIVIA" != "" ];
  then
    printf "%s" "$BOLIVIA" > Bolivia.txt
    export CATFILE="Bolivia.txt"
    export CATNAME="Bolivia"
    $CATEGORIZE
    rm Bolivia.txt
    unset BOLIVIA
  fi

  debug_end "Bolivia"

fi