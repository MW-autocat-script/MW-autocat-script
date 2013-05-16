#!/bin/bash

export KEYWORDS_MMORPG_FIESTA="Fiesta(| )Online"

egrep -i "$KEYWORDS_MMORPG_FIESTA" newpages.txt >> FiestaOnline.txt

FIESTA=`stat --print=%s FiestaOnline.txt`

if [ $FIESTA -ne 0 ];
then
  export CATFILE="FiestaOnline.txt"
  export CATNAME="Fiesta Online"
  $CATEGORIZE
fi

rm FiestaOnline.txt