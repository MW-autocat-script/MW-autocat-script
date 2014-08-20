#!/bin/bash

KEYWORDS_MMORPG_FANTAGE="Fantage"

if [ "$1" == "" ];
then
  
  debug_start "Fantage"

  FANTAGE=$(egrep -i "$KEYWORDS_MMORPG_FANTAGE" "$NEWPAGES")

  if [ "$FANTAGE" != "" ];
  then
    printf "%s" "$FANTAGE" > Fantage.txt
    export CATFILE="Fantage.txt"
    export CATNAME="Fantage"
    $CATEGORIZE
    rm Fantage.txt
    unset FANTAGE
  fi

  debug_end "Fantage"

fi