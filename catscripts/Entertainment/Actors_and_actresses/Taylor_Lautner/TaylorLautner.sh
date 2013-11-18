#!/bin/bash

KEYWORDS_ACTOR_TAYLORLAUTNER="Taylor(| )Lautner"

if [ "$1" == "" ];
then

  TAYLORLAUTNER=`egrep -i "$KEYWORDS_ACTOR_TAYLORLAUTNER" newpages.txt`

  if [ "$TAYLORLAUTNER" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_TAYLORLAUTNER" newpages.txt > TaylorLautner.txt
    export CATFILE="TaylorLautner.txt"
    export CATNAME="Taylor Lautner"
    $CATEGORIZE
    rm TaylorLautner.txt
    unset TAYLORLAUTNER
  fi

fi