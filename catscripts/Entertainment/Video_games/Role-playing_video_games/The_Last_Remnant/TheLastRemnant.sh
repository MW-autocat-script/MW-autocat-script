#!/bin/bash

KEYWORDS_THELASTREMNANT="The(| )Last(| )Remnant"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "The Last Remnant"

  REMNANT=$(egrep -i "$KEYWORDS_THELASTREMNANT" "$NEWPAGES")

  if [ "$REMNANT" != "" ];
  then
    printf "%s" "$REMNANT" > TheLastRemant.txt
    export CATFILE="TheLastRemant.txt"
    export CATNAME="The Last Remnant"
    $CATEGORIZE
    rm TheLastRemant.txt
    unset REMNANT
  fi

  debug_end "The Last Remnant"

fi
