#!/bin/bash

export KEYWORDS_ACTOR_JADENSMITH="Jaden(| )Smith"

egrep -i "$KEYWORDS_ACTOR_JADENSMITH" newpages.txt >> JadenSmith.txt

JADENSMITH=`stat --print=%s JadenSmith.txt`

if [ $JADENSMITH -ne 0 ];
then
  export CATFILE="JadenSmith.txt"
  export CATNAME="Jaden Smith"
  $CATEGORIZE
fi

rm JadenSmith.txt