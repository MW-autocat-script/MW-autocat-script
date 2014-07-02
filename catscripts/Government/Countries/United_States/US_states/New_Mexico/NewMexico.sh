#!/bin/bash

KEYWORDS_NEWMEXICO="New(| )Mexic(o|an)"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "New Mexico"

  NEWMEXICO=$(egrep -i "$KEYWORDS_NEWMEXICO" newpages.txt)

  if [ "$NEWMEXICO" != "" ];
  then
    printf "%s" "$NEWMEXICO" > NewMexico.txt
    export CATFILE="NewMexico.txt"
    export CATNAME="New Mexico"
    $CATEGORIZE
    rm NewMexico.txt
    unset NEWMEXICO
  fi

  debug_end "New Mexico"

fi