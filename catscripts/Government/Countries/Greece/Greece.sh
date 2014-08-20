#!/bin/bash

. ./catscripts/Lifestyle/Sports/Olympics.sh norun

KEYWORDS_GREECE="Greece"
KEYWORDS_ANCIENTGREECE="Ancient(| )Gree(k|ce)"
KEYWORDS_ATHENS="Athens|Athenian"
KEYWORDS_ATHENS_EXCLUDE="Georgia|Texas|Ohio"
KEYWORDS_SPARTA="Sparta(|s|n)\b"
KEYWORDS_SPARTA_EXCLUDE="Halo"
KEYWORDS_SPARTA_EXCLUDE_CASESENSITVE="SPARTAN"
KEYWORDS_ANCIENTGREECE_EXCLUDE="$KEYWORDS_SPARTA|$KEYWORDS_ATHENS|$KEYWORDS_ANCIENTGREEKOLYMPICS"
KEYWORDS_GREECE_EXCLUDE="$KEYWORDS_ANCIENTGREECE|$KEYWORDS_ATHENS|$KEYWORDS_SPARTA"

if [ "$1" == "" ];
then
  
  debug_start "Greece"

  GREECE=$(egrep -i "$KEYWORDS_GREECE" "$NEWPAGES" | egrep -iv "$KEYWORDS_GREECE_EXCLUDE")
  ANCIENT=$(egrep -i "$KEYWORDS_ANCIENTGREECE" "$NEWPAGES" | egrep -iv "$KEYWORDS_ANCIENTGREECE_EXCLUDE")
  ATHENS=$(egrep -i "$KEYWORDS_ATHENS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ATHENS_EXCLUDE")
  SPARTA=$(egrep -i "$KEYWORDS_SPARTA" "$NEWPAGES" | egrep -iv "$KEYWORDS_SPARTA_EXCLUDE" | egrep -v "$KEYWORDS_SPARTA_EXCLUDE_CASESENSITVE")

  if [ "$GREECE" != "" ];
  then
    printf "%s" "$GREECE" > Greece.txt
    export CATFILE="Greece.txt"
    export CATNAME="Greece"
    $CATEGORIZE
    rm Greece.txt
    unset GREECE
  fi

  if [ "$ANCIENT" != "" ];
  then
    printf "%s" "$ANCIENT" > Ancient.txt
    export CATFILE="Ancient.txt"
    export CATNAME="Ancient Greece"
    $CATEGORIZE
    rm Ancient.txt
    unset ANCIENT
  fi

  if [ "$ATHENS" != "" ];
  then
    printf "%s" "$ATHENS" > Athens.txt
    export CATFILE="Athens.txt"
    export CATNAME="Athens"
    $CATEGORIZE
    rm Athens.txt
    unset ATHENS
  fi

  if [ "$SPARTA" != "" ];
  then
    printf "%s" "$SPARTA" > Sparta.txt
    export CATFILE="Sparta.txt"
    export CATNAME="Sparta"
    $CATEGORIZE
    rm Sparta.txt
    unset SPARTA
  fi

  debug_end "Greece"

fi
