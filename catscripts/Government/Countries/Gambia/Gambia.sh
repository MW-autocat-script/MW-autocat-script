#!/bin/bash

KEYWORDS_GAMBIA="Gambia"
KEYWORDS_GAMBIA_ALL="$KEYWORDS_GAMBIA"

if [ "$1" == "" ];
then

  debug_start "Gambia"

  GAMBIA=$(egrep -i "$KEYWORDS_GAMBIA" newpages.txt)

  if [ "$GAMBIA" != "" ];
  then
    printf "%s" "$GAMBIA" > Gambia.txt
    export CATFILE="Gambia.txt"
    export CATNAME="Gambia"
    $CATEGORIZE
    rm Gambia.txt
    unset GAMBIA
  fi

  debug_end "Gambia"

fi