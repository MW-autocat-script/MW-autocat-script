#!/bin/bash

export KEYWORDS_MMORPG_TALISMAN="Talisman(| )Online"

if [ "$1" == "" ];
then

  debug_start "Talisman Online"

  TALISMAN=$(egrep -i "$KEYWORDS_MMORPG_TALISMAN" "$NEWPAGES")

  if [ "$TALISMAN" != "" ];
  then
    printf "%s" "$TALISMAN" > TalismanOnline.txt
    export CATFILE="TalismanOnline.txt"
    export CATNAME="Talisman Online"
    $CATEGORIZE
    rm TalismanOnline
    unset TALISMAN
  fi

  debug_end "Talisman Online"

fi