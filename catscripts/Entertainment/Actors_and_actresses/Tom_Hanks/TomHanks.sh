#!/bin/bash

export KEYWORDS_ACTOR_TOMHANKS="Tom(| )Hanks"

egrep -i "$KEYWORDS_ACTOR_TOMHANKS" newpages.txt >> TomHanks.txt

TOMHANKS=`stat --print=%s TomHanks.txt`

if [ $TOMHANKS -ne 0 ];
then
  export CATFILE="TomHanks.txt"
  export CATNAME="Tom Hanks"
  $CATEGORIZE
fi

rm TomHanks.txt