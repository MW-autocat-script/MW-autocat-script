#!/bin/bash

KEYWORDS_ACTRESS_MEGANFOX="Megan(| )Fox"

if [ "$1" == "" ]; #Normal operation
then

  MEGANFOX=`egrep -i "$KEYWORDS_ACTRESS_MEGANFOX" newpages.txt`

  if [ "$MEGANFOX" != "" ];
  then
    egrep -i "$KEYWORDS_ACTRESS_MEGANFOX" newpages.txt > MeganFox.txt
    export CATFILE="MeganFox.txt"
    export CATNAME="Megan Fox"
    $CATEGORIZE
    rm MeganFox.txt
    unset MEGANFOX
  fi

fi
