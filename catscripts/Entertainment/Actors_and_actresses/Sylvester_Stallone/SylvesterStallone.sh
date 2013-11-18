#!/bin/bash

KEYWORDS_ACTOR_SYLVESTERSTALLONE="Sylvester(| )Stallone"

if [ "$1" == "" ]; #Normal operation
then

  SYLVESTERSTALLONE=`egrep -i "$KEYWORDS_ACTOR_SYLVESTERSTALLONE" newpages.txt`

  if [ $SYLVESTERSTALLONE -ne 0 ];
  then
    egrep -i "$KEYWORDS_ACTOR_SYLVESTERSTALLONE" newpages.txt > SylvesterStallone.txt
    export CATFILE="SylvesterStallone.txt"
    export CATNAME="Sylvester Stallone"
    $CATEGORIZE
    rm SylvesterStallone.txt
    unset SYLVESTERSTALLONE
  fi

fi