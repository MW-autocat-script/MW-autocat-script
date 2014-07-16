#!/bin/bash

KEYWORDS_ACTOR_SYLVESTERSTALLONE="Sylvester(| )Stallone"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sylvester Stallone"

  SYLVESTERSTALLONE=$(egrep -i "$KEYWORDS_ACTOR_SYLVESTERSTALLONE" newpages.txt)

  if [ "$SYLVESTERSTALLONE" != "" ];
  then
    printf "%s" "$SYLVESTERSTALLONE" > SylvesterStallone.txt
    export CATFILE="SylvesterStallone.txt"
    export CATNAME="Sylvester Stallone"
    $CATEGORIZE
    rm SylvesterStallone.txt
    unset SYLVESTERSTALLONE
  fi

  debug_end "Sylvester Stallone"

fi