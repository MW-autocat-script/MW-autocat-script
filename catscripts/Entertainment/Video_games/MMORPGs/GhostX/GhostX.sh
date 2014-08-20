#!/bin/bash

export KEYWORDS_MMORPG_GHOSTX="Ghost(| )X"

if [ "$1" == "" ];
then
  
  debug_start "GhostX"

  GHOSTX=$(egrep -i "$KEYWORDS_MMORPG_GHOSTX" "$NEWPAGES")

  if [ "$GHOSTX" != "" ];
  then
    printf "%s" "$GHOSTX" > GhostX.txt
    export CATFILE="GhostX.txt"
    export CATNAME="GhostX"
    $CATEGORIZE
    rm GhostX.txt
    unset GHOSTX
  fi

  debug_end "GhostX"

fi