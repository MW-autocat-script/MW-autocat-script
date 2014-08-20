#!/bin/bash

export KEYWORDS_MMORPG_EVE="Eve(| )Online"

if [ "$1" == "" ];
then

  debug_start "Eve Online"

  EVE=$(egrep -i "$KEYWORDS_MMORPG_EVE" "$NEWPAGES")

  if [ "$EVE" != "" ];
  then
    printf "%s" "$EVE" > EveOnline.txt
    export CATFILE="EveOnline.txt"
    export CATNAME="Eve Online"
    $CATEGORIZE
    rm EveOnline.txt
    unset EVE
  fi

  debug_end "Eve Online"

fi