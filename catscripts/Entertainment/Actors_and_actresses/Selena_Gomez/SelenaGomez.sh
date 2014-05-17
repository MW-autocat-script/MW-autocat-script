#!/bin/bash

KEYWORDS_ACTRESS_SELENAGOMEZ="Selena(| )Gomez"

if [ "$1" == "" ]; #Normal operation
then

  SELENAGOMEZ=$(egrep -i "$KEYWORDS_ACTRESS_SELENAGOMEZ" newpages.txt)

  if [ "$SELENAGOMEZ" != "" ];
  then
    egrep -i "$KEYWORDS_ACTRESS_SELENAGOMEZ" newpages.txt > SelenaGomez.txt
    export CATFILE="SelenaGomez.txt"
    export CATNAME="Selena Gomez"
    $CATEGORIZE
    rm SelenaGomez.txt
    unset SELENAGOMEZ
  fi

fi
