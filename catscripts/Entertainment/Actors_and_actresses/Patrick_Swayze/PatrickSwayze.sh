#!/bin/bash

export KEYWORDS_ACTOR_PATRICKSWAYZE="Patrick(| )Swayze"

egrep -i "$KEYWORDS_ACTOR_PATRICKSWAYZE" newpages.txt >> PatrickSwayze.txt

SWAYZE=`stat --print=%s PatrickSwayze.txt`

if [ $SWAYZE -ne 0 ];
then
  export CATFILE="PatrickSwayze.txt"
  export CATNAME="Patrick Swayze"
  $CATEGORIZE
fi

rm PatrickSwayze.txt
