#!/bin/bash

export KEYWORDS_MMORPG_PIRATES="Tales(| )of(| )Pirates"

egrep -i "$KEYWORDS_MMORPG_PIRATES" newpages.txt >> TalesofPirates.txt

PIRATES=$(stat --print=%s TalesofPirates.txt)

if [ $PIRATES -ne 0 ];
then
  export CATFILE="TalesofPirates.txt"
  export CATNAME="Tales of Pirates"
  $CATEGORIZE
fi

rm TalesofPirates.txt