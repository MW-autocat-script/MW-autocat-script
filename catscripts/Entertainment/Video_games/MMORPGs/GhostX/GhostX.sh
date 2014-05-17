#!/bin/bash

export KEYWORDS_MMORPG_GHOSTX="Ghost(| )X"

egrep -i "$KEYWORDS_MMORPG_GHOSTX" newpages.txt >> GhostX.txt

GHOSTX=$(stat --print=%s GhostX.txt)

if [ $GHOSTX -ne 0 ];
then
  export CATFILE="GhostX.txt"
  export CATNAME="GhostX"
  $CATEGORIZE
fi

rm GhostX.txt