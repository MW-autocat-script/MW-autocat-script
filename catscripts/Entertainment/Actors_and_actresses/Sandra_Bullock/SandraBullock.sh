#!/bin/bash

export KEYWORDS_ACTRESS_SANDRABULLOCK="Sandra(| )Bullock"

egrep -i "$KEYWORDS_ACTRESS_SANDRABULLOCK" newpages.txt >> SandraBullock.txt

BULLOCK=`stat --print=%s SandraBullock.txt`

if [ $BULLOCK -ne 0 ];
then
  export CATFILE="SandraBullock.txt"
  export CATNAME="Sandra Bullock"
  $CATEGORIZE
fi

rm SandraBullock.txt