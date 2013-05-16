#!/bin/bash

export KEYWORDS_ACTRESS_SELENAGOMEZ="Selena(| )Gomez"

egrep -i "$KEYWORDS_ACTRESS_SELENAGOMEZ" newpages.txt >> SelenaGomez.txt

SELENAGOMEZ=`stat --print=%s SelenaGomez.txt`

if [ $SELENAGOMEZ -ne 0 ];
then
  export CATFILE="SelenaGomez.txt"
  export CATNAME="Selena Gomez"
  $CATEGORIZE
fi

rm SelenaGomez.txt
