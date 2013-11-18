#!/bin/bash

KEYWORDS_ACTRESS_SANDRABULLOCK="Sandra(| )Bullock"

if [ "$1" == "" ];
then

  BULLOCK=`egrep -i "$KEYWORDS_ACTRESS_SANDRABULLOCK" newpages.txt`

  if [ "$BULLOCK" != "" ];
  then
    egrep -i "$KEYWORDS_ACTRESS_SANDRABULLOCK" newpages.txt > SandraBullock.txt
    export CATFILE="SandraBullock.txt"
    export CATNAME="Sandra Bullock"
    $CATEGORIZE
    rm SandraBullock.txt
    unset BULLOCK
  fi

fi