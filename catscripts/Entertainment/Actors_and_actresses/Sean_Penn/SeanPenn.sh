#!/bin/bash

export KEYWORDS_ACTOR_SEANPENN="Sean(| )Penn"

egrep -i "$KEYWORDS_ACTOR_SEANPENN" newpages.txt >> SeanPenn.txt

SEANPENN=`stat --print=%s SeanPenn.txt`

if [ $SEANPENN -ne 0 ];
then
  export CATFILE="SeanPenn.txt"
  export CATNAME="Sean Penn"
  $CATEGORIZE
fi

rm SeanPenn.txt
