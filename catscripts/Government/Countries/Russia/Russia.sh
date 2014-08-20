#!/bin/bash

KEYWORDS_RUSSIA="\bRussia"
KEYWORDS_MOSCOW="Moscow"
KEYWORDS_MOSCOW_EXCLUDE="Mafia(| )Wars"
KEYWORDS_SOVIET="Soviet|U(\.|)S(\.|)S(\.|)R(\.|)"
KEYWORDS_LENIN="Lenin"
KEYWORDS_LENIN_EXCLUDE="Leningrad"
KEYWORDS_STALIN="Stalin"
KEYWORDS_RUSSIA_EXCLUDE="$KEYWORDS_MOSCOW|$KEYWORDS_SOVIET|\bin(| )Russian|Stravinsky|Russian(| )word"
KEYWORDS_SOVIET_EXCLUDE="$KEYWORDS_STALIN"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Russia"

  RUSSIA=$(egrep -i "$KEYWORDS_RUSSIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_RUSSIA_EXCLUDE")
  MOSCOW=$(egrep -i "$KEYWORDS_MOSCOW" "$NEWPAGES" | egrep -iv "$KEYWORDS_MOSCOW_EXCLUDE")
  SOVIET=$(egrep -i "$KEYWORDS_SOVIET" "$NEWPAGES" | egrep -iv "$KEYWORDS_SOVIET_EXCLUDE")
  STALIN=$(egrep -i "$KEYWORDS_STALIN" "$NEWPAGES")
  LENIN=$(egrep -i "$KEYWORDS_LENIN" "$NEWPAGES" | egrep -iv "$KEYWORDS_LENIN_EXCLUDE")

  if [ "$RUSSIA" != "" ];
  then
    printf "%s" "$RUSSIA" > Russia.txt
    export CATFILE="Russia.txt"
    export CATNAME="Russia"
    $CATEGORIZE
    rm Russia.txt
    unset RUSSIA
  fi

  if [ "$MOSCOW" != "" ];
  then
    printf "%s" "$MOSCOW" > Moscow.txt
    export CATFILE="Moscow.txt"
    export CATNAME="Moscow"
    $CATEGORIZE
    rm Moscow.txt
    unset MOSCOW
  fi

  if [ "$SOVIET" != "" ];
  then
    printf "%s" "$SOVIET" > SovietUnion.txt
    export CATFILE="SovietUnion.txt"
    export CATNAME="Soviet Union"
    $CATEGORIZE
    rm SovietUnion.txt
    unset SOVIET
  fi

  if [ "$STALIN" != "" ];
  then
    printf "%s" "$STALIN" > Stalin.txt
    export CATFILE="Stalin.txt"
    export CATNAME="Joseph Stalin"
    $CATEGORIZE
    rm Stalin.txt
    unset STALIN
  fi

  if [ "$LENIN" != "" ];
  then
    printf "%s" "$LENIN" > Lenin.txt
    export CATFILE="Lenin.txt"
    export CATNAME="Vladimir Lenin"
    $CATEGORIZE
    rm Lenin.txt
    unset LENIN
  fi

  debug_end "Russia"

fi