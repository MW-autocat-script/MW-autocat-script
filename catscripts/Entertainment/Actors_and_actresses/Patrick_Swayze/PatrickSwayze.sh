#!/bin/bash

KEYWORDS_ACTOR_PATRICKSWAYZE="Patrick(| )Swayze"

if [ "$1" == "" ]; #Normal operation
then

  SWAYZE=$(egrep -i "$KEYWORDS_ACTOR_PATRICKSWAYZE" newpages.txt)

  if [ "$SWAYZE" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_PATRICKSWAYZE" newpages.txt > PatrickSwayze.txt
    export CATFILE="PatrickSwayze.txt"
    export CATNAME="Patrick Swayze"
    $CATEGORIZE
    rm PatrickSwayze.txt
    unset SWAYZE
  fi

fi
