#!/bin/bash

KEYWORDS_ACTOR_BRUCEWILLIS="Bruce(| )Willis"

if [ "$1" == "" ]; #Normal operation
then

  WILLIS=$(egrep -i "$KEYWORDS_ACTOR_BRUCEWILLIS" newpages.txt)

  if [ "$WILLIS" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_BRUCEWILLIS" newpages.txt > BruceWillis.txt
    export CATFILE="BruceWillis.txt"
    export CATNAME="Bruce Willis"
    $CATEGORIZE
    rm BruceWillis.txt
    unset WILLIS
  fi
fi