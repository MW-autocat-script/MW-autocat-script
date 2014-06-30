#!/bin/bash

KEYWORDS_UNITEDNATIONS="United(| )Nations|\bU(|\.)N(|\.)\b"

if [ "$1" == "" ];
then

  debug_start "United Nations"

  UNITED=$(egrep -i "$KEYWORDS_UNITEDNATIONS" newpages.txt)

  if [ "$UNITED" != "" ];
  then
    printf "%s" "$UNITED" > UnitedNations.txt
    export CATFILE="UnitedNations.txt"
    export CATNAME="United Nations"
    $CATEGORIZE
    rm UnitedNations.txt
  fi

  debug_end "United Nations"

fi