#!/bin/bash

KEYWORDS_ACTOR_TOMCRUISE="Tom(| )Cruise"

if [ "$1" == "" ];
then

  debug_start "Tom Cruise"

  TOMCRUISE=$(egrep -i "$KEYWORDS_ACTOR_TOMCRUISE" "$NEWPAGES")

  if [ "$TOMCRUISE" != "" ];
  then
    printf "%s" "$TOMCRUISE" "$NEWPAGES" > TomCruise.txt
    export CATFILE="TomCruise.txt"
    export CATNAME="Tom Cruise"
    $CATEGORIZE
    rm TomCruise.txt
    unset TOMCRUISE
  fi

  debug_end "Tom Cruise"

fi