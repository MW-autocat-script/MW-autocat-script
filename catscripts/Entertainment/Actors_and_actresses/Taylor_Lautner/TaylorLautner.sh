#!/bin/bash

KEYWORDS_ACTOR_TAYLORLAUTNER="Taylor(| )Lautner"

if [ "$1" == "" ];
then

  debug_start "Taylor Lautner"

  TAYLORLAUTNER=$(egrep -i "$KEYWORDS_ACTOR_TAYLORLAUTNER" newpages.txt)

  if [ "$TAYLORLAUTNER" != "" ];
  then
    printf "%s" "$TAYLORLAUTNER" > TaylorLautner.txt
    export CATFILE="TaylorLautner.txt"
    export CATNAME="Taylor Lautner"
    $CATEGORIZE
    rm TaylorLautner.txt
    unset TAYLORLAUTNER
  fi

  debug_end "Taylor Lautner"

fi