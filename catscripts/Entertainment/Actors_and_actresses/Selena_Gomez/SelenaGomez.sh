#!/bin/bash

KEYWORDS_ACTRESS_SELENAGOMEZ="Selena(| )Gomez"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Selena Gomez"

  SELENAGOMEZ=$(egrep -i "$KEYWORDS_ACTRESS_SELENAGOMEZ" "$NEWPAGES")

  if [ "$SELENAGOMEZ" != "" ];
  then
    printf "%s" "$SELENAGOMEZ" > SelenaGomez.txt
    export CATFILE="SelenaGomez.txt"
    export CATNAME="Selena Gomez"
    $CATEGORIZE
    rm SelenaGomez.txt
    unset SELENAGOMEZ
  fi

  debug_end "Selena Gomez"

fi
