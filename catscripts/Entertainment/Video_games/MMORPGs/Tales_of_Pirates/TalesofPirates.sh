#!/bin/bash

export KEYWORDS_MMORPG_PIRATES="Tales(| )of(| )Pirates"

if [ "$1" == "" ];
then

  debug_start "Tales of Pirates"

  PIRATES=$(egrep -i "$KEYWORDS_MMORPG_PIRATES" "$NEWPAGES")

  if [ "$PIRATES" != "" ];
  then
    printf "%s" "$PIRATES" > TalesofPirates.txt
    export CATFILE="TalesofPirates.txt"
    export CATNAME="Tales of Pirates"
    $CATEGORIZE
    rm TalesofPirates.txt
    unset PIRATES
  fi

  debug_end "Tales of Pirates"

fi