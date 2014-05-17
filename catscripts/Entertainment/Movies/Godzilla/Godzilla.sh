#!/bin/bash

export KEYWORDS_MOVIES_GODZILLA="Godzilla"

egrep -i "$KEYWORDS_MOVIES_GODZILLA" newpages.txt >> Godzilla.txt

GODZILLA=$(stat --print=%s Godzilla.txt)

if [ $GODZILLA -ne 0 ];
then
  export CATFILE="Godzilla.txt"
  export CATNAME="Godzilla"
  $CATEGORIZE
fi

rm Godzilla.txt