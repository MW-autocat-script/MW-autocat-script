#!/bin/bash

KEYWORDS_FREECIV="Freeciv"
KEYWORDS_FREECIV_ALL="$KEYWORDS_FREECIV"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Freeciv"

  FREECIV=$(egrep -i "$KEYWORDS_FREECIV" "$NEWPAGES")

  if [ "$FREECIV" != "" ];
  then
    printf "%s" "$FREECIV" > Freeciv.txt
    export CATFILE="Freeciv.txt"
    export CATNAME="Freeciv"
    $CATEGORIZE
    rm Freeciv.txt
    unset FREECIV
  fi

  debug_end "Freeciv"

fi