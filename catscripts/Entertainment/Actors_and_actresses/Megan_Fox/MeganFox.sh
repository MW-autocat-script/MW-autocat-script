#!/bin/bash

KEYWORDS_ACTRESS_MEGANFOX="Megan(| )Fox"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Megan Fox"

  MEGANFOX=$(egrep -i "$KEYWORDS_ACTRESS_MEGANFOX" "$NEWPAGES")

  if [ "$MEGANFOX" != "" ];
  then
    printf "%s" "$MEGANFOX" > MeganFox.txt
    export CATFILE="MeganFox.txt"
    export CATNAME="Megan Fox"
    $CATEGORIZE
    rm MeganFox.txt
    unset MEGANFOX
  fi

  debug_end "Megan Fox"

fi
