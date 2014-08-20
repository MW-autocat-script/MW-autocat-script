#!/bin/bash

KEYWORDS_MMORPG_ROHAN="\bRohan|Katar(| )of(| )Destiny"

if [ "$1" == "" ];
then

  debug_start "Rohan: Blood Feud"

  ROHAN=$(egrep -i "$KEYWORDS_MMORPG_ROHAN" "$NEWPAGES")

  if [ "$ROHAN" != "" ];
  then
    printf "%s" "$ROHAN" > Rohan.txt
    export CATFILE="Rohan.txt"
    export CATNAME="Rohan: Blood Feud"
    $CATEGORIZE
    rm Rohan.txt
    unset ROHAN
  fi

  debug_end "Rohan: Blood Feud"

fi