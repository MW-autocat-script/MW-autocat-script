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

  RUSSIA=$(egrep -i "$KEYWORDS_RUSSIA" newpages.txt | egrep -iv "$KEYWORDS_RUSSIA_EXCLUDE")
  MOSCOW=$(egrep -i "$KEYWORDS_MOSCOW" newpages.txt | egrep -iv "$KEYWORDS_MOSCOW_EXCLUDE")
  SOVIET=$(egrep -i "$KEYWORDS_SOVIET" newpages.txt | egrep -iv "$KEYWORDS_SOVIET_EXCLUDE")
  STALIN=$(egrep -i "$KEYWORDS_STALIN" newpages.txt)
  LENIN=$(egrep -i "$KEYWORDS_LENIN" newpages.txt | egrep -iv "$KEYWORDS_LENIN_EXCLUDE")

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

  if [ "$STALIN" != "" ];
  then
    printf "$STALIN" > Stalin.txt
    export CATFILE="Stalin.txt"
    export CATNAME="Joseph Stalin"
    $CATEGORIZE
    rm Stalin.txt
    unset STALIN
  fi

  if [ "$LENIN" != "" ];
  then
    printf "$LENIN" > Lenin.txt
    export CATFILE="Lenin.txt"
    export CATNAME="Vladimir Lenin"
    $CATEGORIZE
    rm Lenin.txt
    unset LENIN
  fi

fi