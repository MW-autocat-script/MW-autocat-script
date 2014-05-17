#!/bin/bash

KEYWORDS_ACTOR_TOMHANKS="Tom(| )Hanks"

if [ "$1" == "" ]; #Normal operation
then

  TOMHANKS=$(egrep -i "$KEYWORDS_ACTOR_TOMHANKS" newpages.txt)

  if [ "$TOMHANKS" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_TOMHANKS" newpages.txt > TomHanks.txt
    export CATFILE="TomHanks.txt"
    export CATNAME="Tom Hanks"
    $CATEGORIZE
    rm TomHanks.txt
    unset TOMHANKS
  fi

fi