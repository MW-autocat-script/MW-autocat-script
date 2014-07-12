#!/bin/bash

KEYWORDS_ACTOR_BRUCEWILLIS="Bruce(| )Willis"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Bruce Willis"

  WILLIS=$(egrep -i "$KEYWORDS_ACTOR_BRUCEWILLIS" newpages.txt)

  if [ "$WILLIS" != "" ];
  then
    printf "%s" "$WILLIS" > BruceWillis.txt
    export CATFILE="BruceWillis.txt"
    export CATNAME="Bruce Willis"
    $CATEGORIZE
    rm BruceWillis.txt
    unset WILLIS
  fi

  debug_end "Bruce Willis"

fi