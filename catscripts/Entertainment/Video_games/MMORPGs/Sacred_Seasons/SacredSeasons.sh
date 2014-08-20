#!/bin/bash

export KEYWORD_MMORPG_SACRED="Sacred(| )Season"

if [ "$1" == "" ];
then

  debug_start "Sacred Seasons"

  SACRED=$(egrep -i "$KEYWORD_MMORPG_SACRED" "$NEWPAGES")

  if [ "$SACRED" != "" ];
  then
    printf "%s" "$SACRED" > SacredSeasons.txt
    export CATFILE="SacredSeasons.txt"
    export CATNAME="Sacred Seasons"
    $CATEGORIZE
    rm SacredSeasons.txt
    unset SACRED
  fi

  debug_end "Sacred Seasons"

fi