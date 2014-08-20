#!/bin/bash

KEYWORDS_ACTOR_TOMHANKS="Tom(| )Hanks"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Tom Hanks"

  TOMHANKS=$(egrep -i "$KEYWORDS_ACTOR_TOMHANKS" "$NEWPAGES")

  if [ "$TOMHANKS" != "" ];
  then
    printf "%s" "$TOMHANKS" > TomHanks.txt
    export CATFILE="TomHanks.txt"
    export CATNAME="Tom Hanks"
    $CATEGORIZE
    rm TomHanks.txt
    unset TOMHANKS
  fi

  debug_end "Tom Hanks"

fi