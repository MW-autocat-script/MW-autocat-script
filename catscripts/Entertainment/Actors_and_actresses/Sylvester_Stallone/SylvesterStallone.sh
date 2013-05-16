#!/bin/bash

export KEYWORDS_ACTOR_SYLVESTERSTALLONE="Sylvester(| )Stallone"

egrep -i "$KEYWORDS_ACTOR_SYLVESTERSTALLONE" newpages.txt >> SylvesterStallone.txt

SYLVESTERSTALLONE=`stat --print=%s SylvesterStallone.txt`

if [ $SYLVESTERSTALLONE -ne 0 ];
then
  export CATFILE="SylvesterStallone.txt"
  export CATNAME="Sylvester Stallone"
  $CATEGORIZE
fi

rm SylvesterStallone.txt
