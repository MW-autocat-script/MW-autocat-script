#!/bin/bash

export KEYWORDS_MMORPG_PANFU="Panfu"

egrep -i "$KEYWORDS_MMORPG_PANFU" newpages.txt >> Panfu.txt

PANFU=`stat --print=%s Panfu.txt`

if [ $PANFU -ne 0 ];
then
  export CATFILE="Panfu.txt"
  export CATNAME="Panfu"
  $CATEGORIZE
fi

rm Panfu.txt