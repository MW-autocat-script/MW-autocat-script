#!/bin/bash

export KEYWORDS_ACTOR_TAYLORLAUTNER="Taylor(| )Lautner"

egrep -i "$KEYWORDS_ACTOR_TAYLORLAUTNER" newpages.txt >> TaylorLautner.txt

TAYLORLAUTNER=`stat --print=%s TaylorLautner.txt`

if [ $TAYLORLAUTNER -ne 0 ];
then
  export CATFILE="TaylorLautner.txt"
  export CATNAME="Taylor Lautner"
  $CATEGORIZE
fi

rm TaylorLautner.txt