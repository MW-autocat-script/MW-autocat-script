#!/bin/bash

KEYWORDS_ACTOR_SEANPENN="Sean(| )Penn"

if [ "$1" == "" ];
then

  debug_start "Sean Penn"

  SEANPENN=$(egrep -i "$KEYWORDS_ACTOR_SEANPENN" newpages.txt)

  if [ "$SEANPENN" != "" ];
  then
    printf "%s" "$SEANPENN" > SeanPenn.txt
    export CATFILE="SeanPenn.txt"
    export CATNAME="Sean Penn"
    $CATEGORIZE
    rm SeanPenn.txt
    unset SEANPENN
  fi

  debug_end "Sean Penn"

fi
