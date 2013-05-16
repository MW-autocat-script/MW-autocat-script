#!/bin/bash

export KEYWORDS_ACTOR_TOMCRUISE="Tom(| )Cruise"

egrep -i "$KEYWORDS_ACTOR_TOMCRUISE" newpages.txt >> TomCruise.txt

TOMCRUISE=`stat --print=%s TomCruise.txt`

if [ $TOMCRUISE -ne 0 ];
then
  export CATFILE="TomCruise.txt"
  export CATNAME="Tom Cruise"
  $CATEGORIZE
fi

rm TomCruise.txt