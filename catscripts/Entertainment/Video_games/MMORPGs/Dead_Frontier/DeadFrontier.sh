#!/bin/bash

export KEYWORDS_MMORPG_FRONTIER="Dead Frontier"

egrep -i "$KEYWORDS_MMORPG_FRONTIER" newpages.txt >> DeadFrontier.txt

FRONTIER=$(stat --print=%s DeadFrontier.txt)

if [ $FRONTIER -ne 0 ];
then
  export CATFILE="DeadFrontier.txt"
  export CATNAME="Dead Frontier"
  $CATEGORIZE
fi

rm DeadFrontier.txt