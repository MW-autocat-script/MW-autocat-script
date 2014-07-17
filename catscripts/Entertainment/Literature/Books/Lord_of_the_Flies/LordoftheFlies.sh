#!/bin/bash

KEYWORDS_LORDOFTHEFLIES="Lord(| )of(| )the(| )Flies"

if [ "$1" == "" ];
then
  
  debug_start "Lord of the Flies"

  FLYLORD=$(egrep -i "$KEYWORDS_LORDOFTHEFLIES" newpages.txt)

  if [ "$FLYLORD" != "" ];
  then
    printf "%s" "$FLYLORD" > FlyLord.txt
    export CATFILE="FlyLord.txt"
    export CATNAME="Lord of the Flies"
    $CATEGORIZE
    rm FlyLord.txt
    unset FLYLORD
  fi

  debug_end "Lord of the Flies"

fi