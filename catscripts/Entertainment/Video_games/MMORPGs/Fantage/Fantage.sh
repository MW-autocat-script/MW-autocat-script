#!/bin/bash

KEYWORDS_MMORPG_FANTAGE="Fantage"

egrep -i "$KEYWORDS_MMORPG_FANTAGE" newpages.txt >> Fantage.txt

FANTAGE=$(stat --print=%s Fantage.txt)

if [ $FANTAGE -ne 0 ];
then
  export CATFILE="Fantage.txt"
  export CATNAME="Fantage"
  $CATEGORIZE
fi

rm Fantage.txt