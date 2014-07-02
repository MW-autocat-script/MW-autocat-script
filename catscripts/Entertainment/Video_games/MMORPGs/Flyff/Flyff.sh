#!/bin/bash

export KEYWORDS_MMORPG_FLYFF="Flyff"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Flyff"

  FLYFF=$(egrep -i "$KEYWORDS_MMORPG_FLYFF" newpages.txt)

  if [ "$FLYFF" != "" ];
  then
    printf "%s" "$FLYFF" > Flyff.txt
    export CATFILE="Flyff.txt"
    export CATNAME="Flyff"
    $CATEGORIZE
    rm Flyff.txt
    unset FLYFF
  fi

  debug_end "Flyff"

fi