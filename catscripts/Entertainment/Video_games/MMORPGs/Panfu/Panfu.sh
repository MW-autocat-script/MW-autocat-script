#!/bin/bash

export KEYWORDS_MMORPG_PANFU="Panfu"

if [ "$1" == "" ];
then
  
  debug_start "Panfu"

  PANFU=$(egrep -i "$KEYWORDS_MMORPG_PANFU" newpages.txt)

  if [ "$PANFU" != "" ];
  then
    printf "%s" "$PANFU" > Panfu.txt
    export CATFILE="Panfu.txt"
    export CATNAME="Panfu"
    $CATEGORIZE
    rm Panfu.txt
    unset PANFU
  fi

  debug_end "Panfu"

fi