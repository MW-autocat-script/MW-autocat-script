#!/bin/bash

export KEYWORDS_MMORPG_FRONTIER="Dead Frontier"

if [ "$1" == "" ];
then

  debug_start "Dead Frontier"

  FRONTIER=$(egrep -i "$KEYWORDS_MMORPG_FRONTIER" newpages.txt)

  if [ "$FRONTIER" != "" ];
  then
    printf "%s" "$FRONTIER" > DeadFrontier.txt
    export CATFILE="DeadFrontier.txt"
    export CATNAME="Dead Frontier"
    $CATEGORIZE
    rm DeadFrontier.txt
    unset FRONTIER
  fi

  debug_end "Dead Frontier"

fi