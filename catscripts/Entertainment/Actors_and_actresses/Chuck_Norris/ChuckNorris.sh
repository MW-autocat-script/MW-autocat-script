#!/bin/bash

KEYWORDS_ACTOR_CHUCKNORRIS="Chuck(| )Norris"

if [ "$1" == "" ];
then

  CHUCKNORRIS=$(egrep -i "$KEYWORDS_ACTOR_CHUCKNORRIS" newpages.txt)

  if [ "$CHUCKNORRIS" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_CHUCKNORRIS" newpages.txt > ChuckNorris.txt
    export CATFILE="ChuckNorris.txt"
    export CATNAME="Chuck Norris"
    $CATEGORIZE
    rm ChuckNorris.txt
    unset CHUCKNORRIS
  fi
fi
