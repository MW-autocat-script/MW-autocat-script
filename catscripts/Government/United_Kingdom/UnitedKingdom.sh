#!/bin/bash

KEYWORDS_UNITEDKINGDOM="United(| )Kingdom|\bUK\b|\bU\.K\b"
KEYWORDS_UNITEDKINGDOM_EXCLUDE="England|Scotland|Wales|Northern(| )Ireland"

if [ "$1" == "" ];
then

  debug_start "United Kingdom"

  UNITEDKINGDOM=$(egrep -i "$KEYWORDS_UNITEDKINGDOM" newpages.txt | egrep -iv "$KEYWORDS_UNITEDKINGDOM_EXCLUDE")

  if [ "$UNITEDKINGDOM" != "" ];
  then
    printf "%s" "$UNITEDKINGDOM" > UnitedKingdom.txt
    export CATFILE="UnitedKingdom.txt"
    export CATNAME="United Kingdom"
    $CATEGORIZE
    rm UnitedKingdom.txt
    unset UNITEDKINGDOM
  fi

  debug_end "United Kingdom"

fi