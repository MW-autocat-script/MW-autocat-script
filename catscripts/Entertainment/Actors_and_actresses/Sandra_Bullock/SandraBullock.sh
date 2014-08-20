#!/bin/bash

KEYWORDS_ACTRESS_SANDRABULLOCK="Sandra(| )Bullock"

if [ "$1" == "" ];
then

  debug_start "Sandra Bullock"

  BULLOCK=$(egrep -i "$KEYWORDS_ACTRESS_SANDRABULLOCK" "$NEWPAGES")

  if [ "$BULLOCK" != "" ];
  then
    printf "%s" "$BULLOCK" > SandraBullock.txt
    export CATFILE="SandraBullock.txt"
    export CATNAME="Sandra Bullock"
    $CATEGORIZE
    rm SandraBullock.txt
    unset BULLOCK
  fi

  debug_end "Sandra Bullock"

fi