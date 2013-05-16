#!/bin/bash

export KEYWORDS_ACTOR_BRUCEWILLIS="Bruce(| )Willis"

egrep -i "$KEYWORDS_ACTOR_BRUCEWILLIS" newpages.txt >> BruceWillis.txt

WILLIS=`stat --print=%s BruceWillis.txt`

if [ $WILLIS -ne 0 ];
then
  export CATFILE="BruceWillis.txt"
  export CATNAME="Bruce Willis"
  $CATEGORIZE
fi

rm BruceWillis.txt