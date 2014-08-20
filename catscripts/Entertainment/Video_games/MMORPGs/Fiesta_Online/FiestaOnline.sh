#!/bin/bash

export KEYWORDS_MMORPG_FIESTA="Fiesta(| )Online"

if [ "$1" == "" ];
then

  debug_start "Fiesta Online"

  FIESTA=$(egrep -i "$KEYWORDS_MMORPG_FIESTA" "$NEWPAGES")

  if [ "$FIESTA" != "" ];
  then
    printf "%s" "$FIESTA" > FiestaOnline.txt
    export CATFILE="FiestaOnline.txt"
    export CATNAME="Fiesta Online"
    $CATEGORIZE
    rm FiestaOnline.txt
    unset FIESTA
  fi

  debug_end "Fiesta Online"

fi