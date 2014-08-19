#!/bin/bash

KEYWORDS_FLORIDA="Florida|Flordia"
KEYWORDS_ORLANDO="Orlando"
KEYWORDS_MIAMI="Miami"
KEYWORDS_TAMPA="Tampa(|s)\b"
KEYWORDS_EVERGLADES="Everglades"
KEYWORDS_FLORIDA_EXCLUDE="$KEYWORDS_ORLANDO|$KEYWORDS_MIAMI|$KEYWORDS_EVERGLADES|$KEYWORDS_TAMPA"
KEYWORDS_ORLANDO_EXCLUDE="Orlando(| )Bloom|RuneScape|Orlando(| )Smith"
KEYWORDS_MIAMI_EXCLUDE="CSI(:|| )Miami|Miami(| )Dolphins|Miami(| )Marlins|Miami(| )Heat"
KEYWORDS_FLORIDA_ALL="$KEYWORDS_FLORIDA|$KEYWORDS_ORLANDO|$KEYWORDS_MIAMI|$KEYWORDS_TAMPA|$KEYWORDS_EVERGLADES"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Florida"

  FLORIDA=$(egrep -i "$KEYWORDS_FLORIDA" newpages.txt | egrep -iv "$KEYWORDS_FLORIDA_EXCLUDE")
  ORLANDO=$(egrep -i "$KEYWORDS_ORLANDO" newpages.txt | egrep -iv "$KEYWORDS_ORLANDO_EXCLUDE")
  MIAMI=$(egrep -i "$KEYWORDS_MIAMI" newpages.txt | egrep -iv "$KEYWORDS_MIAMI_EXCLUDE")
  TAMPA=$(egrep -i "$KEYWORDS_TAMPA" newpages.txt)
  EVERGLADES=$(egrep -i "$KEYWORDS_EVERGLADES" newpages.txt)

  if [ "$FLORIDA" != "" ];
  then
    printf "%s" "$FLORIDA" > Florida.txt
    export CATFILE="Florida.txt"
    export CATNAME="Florida"
    $CATEGORIZE
    rm Florida.txt
    unset FLORIDA
  fi

  if [ "$MIAMI" != "" ];
  then
    printf "%s" "$MIAMI" > Miami.txt
    export CATFILE="Miami.txt"
    export CATNAME="Miami"
    $CATEGORIZE
    rm Miami.txt
    unset MIAMI
  fi

  if [ "$ORLANDO" != "" ];
  then
    printf "%s" "$ORLANDO" > Orlando.txt
    export CATFILE="Orlando.txt"
    export CATNAME="Orlando"
    $CATEGORIZE
    rm Orlando.txt
    unset ORLANDO
  fi

  if [ "$TAMPA" != "" ];
  then
    printf "%s" "$TAMPA" > Tampa.txt
    export CATFILE="Tampa.txt"
    export CATNAME="Tampa"
    $CATEGORIZE
    rm Tampa.txt
    unset TAMPA
  fi

  if [ "$EVERGLADES" != "" ];
  then
    printf "%s" "$EVERGLADES" > Everglades.txt
    export CATFILE="Everglades.txt"
    export CATNAME="Everglades"
    $CATEGORIZE
    rm Everglades.txt
    unset EVERGLADES
  fi

  debug_end "Florida"

fi