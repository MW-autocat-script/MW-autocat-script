#!/bin/bash

KEYWORDS_ACTOR_SEANPENN="Sean(| )Penn"

if [ "$1" == "" ];
then

  SEANPENN=`egrep -i "$KEYWORDS_ACTOR_SEANPENN" newpages.txt`

  if [ $SEANPENN -ne 0 ];
  then
    egrep -i "$KEYWORDS_ACTOR_SEANPENN" newpages.txt > SeanPenn.txt
    export CATFILE="SeanPenn.txt"
    export CATNAME="Sean Penn"
    $CATEGORIZE
    rm SeanPenn.txt
    unset SEANPENN
  fi

fi
