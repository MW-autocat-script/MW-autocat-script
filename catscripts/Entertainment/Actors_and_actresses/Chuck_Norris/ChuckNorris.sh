#!/bin/bash

export KEYWORDS_ACTOR_CHUCKNORRIS="Chuck(| )Norris"

egrep -i "$KEYWORDS_ACTOR_CHUCKNORRIS" newpages.txt >> ChuckNorris.txt

CHUCKNORRIS=`stat --print=%s ChuckNorris.txt`

if [ $CHUCKNORRIS -ne 0 ];
then
  export CATFILE="ChuckNorris.txt"
  export CATNAME="Chuck Norris"
  $CATEGORIZE
fi

rm ChuckNorris.txt
