#!/bin/bash

KEYWORDS_FIJI="Fiji"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Fiji"

  FIJI=$(egrep -i "$KEYWORDS_FIJI" "$NEWPAGES")

  if [ "$FIJI" != "" ];
  then
    printf "%s" "$FIJI" > Fiji.txt
    export CATFILE="Fiji.txt"
    export CATNAME="Fiji"
    $CATEGORIZE
    rm Fiji.txt
    unset FIJI
  fi

  debug_end "Fiji"

fi