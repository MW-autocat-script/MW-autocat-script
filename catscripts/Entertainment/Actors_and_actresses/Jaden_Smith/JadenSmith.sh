#!/bin/bash

KEYWORDS_ACTOR_JADENSMITH="Jaden(| )Smith"

if [ "$1" == "" ];
then

  JADENSMITH=`egrep -i "$KEYWORDS_ACTOR_JADENSMITH" newpages.txt`

  if [ "$JADENSMITH" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_JADENSMITH" newpages.txt > JadenSmith.txt
    export CATFILE="JadenSmith.txt"
    export CATNAME="Jaden Smith"
    $CATEGORIZE
    rm JadenSmith.txt
    unset JADENSMITH
  fi
fi