#!/bin/bash

KEYWORDS_NEWYORK="New(| )York"
KEYWORDS_NYC="New(| )York(| )City|\bNYC|New(| )York(|,)(| )New(| )York|Manhattan|Brooklyn|Queens(|,)(| )New(| )York|Chrysler(| )Building|Bank(| )of(| )America(| )Tower|Big(| )Apple"
KEYWORDS_ALBANY="Albany"
KEYWORDS_ALBANY_EXCLUDE="Albany(|,)(| )(GA|Georgia)"
KEYWORDS_EMPIRESTATE="Empire(| )State(| )Building"
KEYWORDS_NYC_EXCLUDE="$KEYWORDS_EMPIRESTATE"
KEYWORDS_NYC_ALL="$KEYWORDS_NYC|$KEYWORDS_NYC_EXCLUDE"
KEYWORDS_NEWYORK_EXCLUDE="$KEYWORDS_NYC_ALL|$KEYWORDS_ALBANY"

if [ "$1" == "" ];
then

  debug_start "New York"

  NEWYORK=$(egrep -i "$KEYWORDS_NEWYORK" "$NEWPAGES" | egrep -iv "$KEYWORDS_NEWYORK_EXCLUDE")
  NYC=$(egrep -i "$KEYWORDS_NYC" "$NEWPAGES" | egrep -iv "$KEYWORDS_NYC_EXCLUDE")
  ALBANY=$(egrep -i "$KEYWORDS_ALBANY" "$NEWPAGES" | egrep -iv "$KEYWORDS_ALBANY_EXCLUDE")
  EMPIRESTATE=$(egrep -i "$KEYWORDS_EMPIRESTATE" "$NEWPAGES")

  if [ "$NEWYORK" != "" ];
  then
    printf "%s" "$NEWYORK" > NewYork.txt
    export CATFILE="NewYork.txt"
    export CATNAME="New York"
    $CATEGORIZE
    rm NewYork.txt
    unset NEWYORK
  fi

  if [ "$NYC" != "" ];
  then
    printf "%s" "$NYC" > NewYorkCity.txt
    export CATFILE="NewYorkCity.txt"
    export CATNAME="New York City"
    $CATEGORIZE
    rm NewYorkCity.txt
    unset NYC
  fi

  if [ "$ALBANY" != "" ];
  then
    printf "%s" "$ALBANY" > Albany.txt
    export CATFILE="Albany.txt"
    export CATNAME="Albany, New York"
    $CATEGORIZE
    rm Albany.txt
    unset ALBANY
  fi

  if [ "$EMPIRESTATE" != "" ];
  then
    printf "%s" "$EMPIRESTATE" > EmpireState.txt
    export CATFILE="EmpireState.txt"
    export CATNAME="Empire State Building"
    $CATEGORIZE
    rm EmpireState.txt
    unset EMPIRESTATE
  fi

  debug_end "New York"

fi