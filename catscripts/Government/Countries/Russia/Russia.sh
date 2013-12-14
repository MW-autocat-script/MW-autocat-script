#!/bin/bash

KEYWORDS_RUSSIA="Russia"
KEYWORDS_MOSCOW="Moscow"
KEYWORDS_MOSCOW_EXCLUDE="Mafia(| )Wars"
KEYWORDS_SOVIET="Soviet|U(\.|)S(\.|)S(\.|)R(\.|)"
KEYWORDS_RUSSIA_EXCLUDE="$KEYWORDS_MOSCOW|$KEYWORDS_SOVIET|\bin(| )Russian"

if [ "$1" == "" ]; #Normal operation
then

  RUSSIA=`egrep -i "$KEYWORDS_RUSSIA" newpages.txt | egrep -iv "$KEYWORDS_RUSSIA_EXCLUDE"`
  MOSCOW=`egrep -i "$KEYWORDS_MOSCOW" newpages.txt | egrep -iv "$KEYWORDS_MOSCOW_EXCLUDE"`
  SOVIET=`egrep -i "$KEYWORDS_SOVIET" newpages.txt`

  if [ "$RUSSIA" != "" ];
  then
    printf "$RUSSIA" > Russia.txt
    export CATFILE="Russia.txt"
    export CATNAME="Russia"
    $CATEGORIZE
    rm Russia.txt
    unset RUSSIA
  fi

  if [ "$MOSCOW" != "" ];
  then
    printf "$MOSCOW" > Moscow.txt
    export CATFILE="Moscow.txt"
    export CATNAME="Moscow"
    $CATEGORIZE
    rm Moscow.txt
    unset MOSCOW
  fi

  if [ "$SOVIET" != "" ];
  then
    printf "$SOVIET" > SovietUnion.txt
    export CATFILE="SovietUnion.txt"
    export CATNAME="Soviet Union"
    $CATEGORIZE
    rm SovietUnion.txt
    unset SOVIET
  fi

fi