#!/bin/bash

KEYWORDS_ACTOR_CHUCKNORRIS="Chuck(| )Norris"

if [ "$1" == "" ];
then

  debug_start "Chuck Norris"

  CHUCKNORRIS=$(egrep -i "$KEYWORDS_ACTOR_CHUCKNORRIS" newpages.txt)

  if [ "$CHUCKNORRIS" != "" ];
  then
    printf "%s" "$CHUCKNORRIS" > ChuckNorris.txt
    export CATFILE="ChuckNorris.txt"
    export CATNAME="Chuck Norris"
    $CATEGORIZE
    rm ChuckNorris.txt
    unset CHUCKNORRIS
  fi

  debug_end "Chuck Norris"

fi
