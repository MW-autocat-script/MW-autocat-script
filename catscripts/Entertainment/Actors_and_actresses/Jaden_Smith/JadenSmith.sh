#!/bin/bash

KEYWORDS_ACTOR_JADENSMITH="Jaden(| )Smith"

if [ "$1" == "" ];
then

  debug_start "Jaden Smith"

  JADENSMITH=$(egrep -i "$KEYWORDS_ACTOR_JADENSMITH" newpages.txt)

  if [ "$JADENSMITH" != "" ];
  then
    printf "%s" "$JADENSMITH" > JadenSmith.txt
    export CATFILE="JadenSmith.txt"
    export CATNAME="Jaden Smith"
    $CATEGORIZE
    rm JadenSmith.txt
    unset JADENSMITH
  fi

  debug_end "Jaden Smith"

fi