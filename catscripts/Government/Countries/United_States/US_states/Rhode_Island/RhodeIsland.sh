#!/bin/bash

KEYWORDS_RHODEISLAND="Rhode(| )Island"

if [ "$1" == "" ];
then
  
  debug_start "Rhode Island"

  RHODEISLAND=$(egrep -i "$KEYWORDS_RHODEISLAND" "$NEWPAGES")

  if [ "$RHODEISLAND" != "" ];
  then
    printf "%s" "$RHODEISLAND" > RhodeIsland.txt
    export CATFILE="RhodeIsland.txt"
    export CATNAME="Rhode Island"
    $CATEGORIZE
    rm RhodeIsland.txt
    unset RHODEISLAND
  fi

  debug_end "Rhode Island"

fi