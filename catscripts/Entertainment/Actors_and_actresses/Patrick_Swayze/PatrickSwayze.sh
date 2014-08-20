#!/bin/bash

KEYWORDS_ACTOR_PATRICKSWAYZE="Patrick(| )Swayze"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Patrick Swayze"

  SWAYZE=$(egrep -i "$KEYWORDS_ACTOR_PATRICKSWAYZE" "$NEWPAGES")

  if [ "$SWAYZE" != "" ];
  then
    printf "%s" "$SWAYZE" > PatrickSwayze.txt
    export CATFILE="PatrickSwayze.txt"
    export CATNAME="Patrick Swayze"
    $CATEGORIZE
    rm PatrickSwayze.txt
    unset SWAYZE
  fi

  debug_end "Patrick Swayze"

fi
