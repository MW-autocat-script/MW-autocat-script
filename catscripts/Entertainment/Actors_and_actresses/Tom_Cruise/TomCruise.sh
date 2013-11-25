#!/bin/bash

KEYWORDS_ACTOR_TOMCRUISE="Tom(| )Cruise"

if [ "$1" == "" ];
then

  TOMCRUISE=`egrep -i "$KEYWORDS_ACTOR_TOMCRUISE" newpages.txt`

  if [ "$TOMCRUISE" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_TOMCRUISE" newpages.txt > TomCruise.txt
    export CATFILE="TomCruise.txt"
    export CATNAME="Tom Cruise"
    $CATEGORIZE
    rm TomCruise.txt
    unset TOMCRUISE
  fi

fi