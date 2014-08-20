#!/bin/bash

KEYWORDS_VIETNAM="Vietnam(|s)\b"
KEYWORDS_VIETNAMWAR="Vietnam(| )(War|Vet(eran|(\b|s)))|(North|South)(|ern)(| )Vietnam|Tet(| )Offensive"
KEYWORDS_VIETNAM_EXCLUDE="$KEYWORDS_VIETNAMWAR"
KEYWORDS_VIETNAM_ALL="$KEYWORDS_VIETNAM|$KEYWORDS_VIETNAMWAR"

if [ "$1" == "" ];
then
  
  debug_start "Vietnam"

  VIETNAM=$(egrep -i "$KEYWORDS_VIETNAM" "$NEWPAGES" | egrep -iv "$KEYWORDS_VIETNAM_EXCLUDE")
  VIETNAMWAR=$(egrep -i "$KEYWORDS_VIETNAMWAR" "$NEWPAGES")

  if [ "$VIETNAM" != "" ];
  then
    printf "%s" "$VIETNAM" > Vietnam.txt
    export CATFILE="Vietnam.txt"
    export CATNAME="Vietnam"
    $CATEGORIZE
    rm Vietnam.txt
    unset VIETNAM
  fi

  if [ "$VIETNAMWAR" != "" ];
  then
    printf "%s" "$VIETNAM" > VietnamWar.txt
    export CATFILE="VietnamWar.txt"
    export CATNAME="Vietnam War"
    $CATEGORIZE
    rm VietnamWar.txt
    unset VIETNAMWAR
  fi

  debug_end "Vietnam"

fi