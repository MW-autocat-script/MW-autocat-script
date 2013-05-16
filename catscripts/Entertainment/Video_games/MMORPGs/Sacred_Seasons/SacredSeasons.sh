#!/bin/bash

export KEYWORD_MMORPG_SACRED="Sacred(| )Season"

egrep -i "$KEYWORD_MMORPG_SACRED" newpages.txt >> SacredSeasons.txt

SACRED=`stat --print=%s SacredSeasons.txt`

if [ $SACRED -ne 0 ];
then
  export CATFILE="SacredSeasons.txt"
  export CATNAME="Sacred Seasons"
  $CATEGORIZE
fi

rm SacredSeasons.txt