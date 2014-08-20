#!/bin/bash

KEYWORDS_DESPERATEHOUSEWIVES="Desperate(| )House(| |-)Wives"

if [ "$1" == "" ];
then
  
  debug_start "Desperate Housewives"

  HOUSEWIVES=$(egrep -i "$KEYWORDS_DESPERATEHOUSEWIVES" "$NEWPAGES")

  if [ "$HOUSEWIVES" != "" ];
  then
    printf "%s" "$HOUSEWIVES" > DesperateHousewives.txt
    export CATFILE="DesperateHousewives.txt"
    export CATNAME="Desperate Housewives"
    $CATEGORIZE
    rm DesperateHousewives.txt
    unset HOUSEWIVES
  fi

  debug_end "Desperate Housewives"

fi