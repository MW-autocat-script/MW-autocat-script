#!/bin/bash

KEYWORDS_ACTRESS_MARILYNMONROE="Marilyn(| )Monroe"

if [ "$1" == "" ];
then

  MARILYNMONROE=$(egrep -i "$KEYWORDS_ACTRESS_MARILYNMONROE" newpages.txt)

  if [ "$MARILYNMONROE" != "" ];
  then
    egrep -i "$KEYWORDS_ACTRESS_MARILYNMONROE" newpages.txt >> MarilynMonroe.txt
    export CATFILE="MarilynMonroe.txt"
    export CATNAME="Marilyn Monroe"
    $CATEGORIZE
    rm MarilynMonroe.txt
    unset MARILYNMONROE
  fi
fi