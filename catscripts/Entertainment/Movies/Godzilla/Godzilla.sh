#!/bin/bash

export KEYWORDS_MOVIES_GODZILLA="Godzilla"

if [ "$1" == "" ];
then

  debug_start "Godzilla"

  GODZILLA=$(egrep -i "$KEYWORDS_MOVIES_GODZILLA" newpages.txt)

  if [ "$GODZILLA" != "" ];
  then
    printf "%s" "$GODZILLA" > Godzilla.txt
    export CATFILE="Godzilla.txt"
    export CATNAME="Godzilla"
    $CATEGORIZE
    rm Godzilla.txt
    unset GODZILLA
  fi

  debug_end "Godzilla"

fi