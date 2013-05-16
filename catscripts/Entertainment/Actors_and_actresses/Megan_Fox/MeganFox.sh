#!/bin/bash

export  KEYWORDS_ACTRESS_MEGANFOX="Megan(| )Fox"

egrep -i "$KEYWORDS_ACTRESS_MEGANFOX" newpages.txt >> MeganFox.txt

MEGANFOX=`stat --print=%s MeganFox.txt`

if [ $MEGANFOX -ne 0 ];
then
  export CATFILE="MeganFox.txt"
  export CATNAME="Megan Fox"
  $CATEGORIZE
fi

rm MeganFox.txt
