#!/bin/bash

KEYWORDS_ISRAEL="Israel"
KEYWORDS_ANCIENTISRAEL="Israelite|Ancient(| )Israel"
KEYWORDS_JERUSALEM="Jeru(|-)salem"
KEYWORDS_JERUSALEM_EXCLUDE="Jerusalem(| )artichoke" #Jerusalem artichoke is a tuber from a biannual sunflower, and has nothing to do with the city or Israel
KEYWORDS_TELAVIV="Tel(| )Aviv"
KEYWORDS_ISRAEL_EXCLUDE="$KEYWORDS_ANCIENTISRAEL|$KEYWORDS_JERUSALEM|$KEYWORDS_TELAVIV"
KEYWORDS_ISRAEL_ALL="$KEYWORDS_ISRAEL|$KEYWORDS_ANCIENTISRAEL|$KEYWORDS_JERUSALEM|$KEYWORDS_TELAVIV"

if [ "$1" == "" ];
then
  
  debug_start "Israel"

  ISRAEL=$(egrep -i "$KEYWORDS_ISRAEL" newpages.txt | egrep -iv "$KEYWORDS_ISRAEL_EXCLUDE")
  ISRAELITES=$(egrep -i "$KEYWORDS_ANCIENTISRAEL" newpages.txt)
  JERUSALEM=$(egrep -i "$KEYWORDS_JERUSALEM" newpages.txt | egrep -iv "$KEYWORDS_JERUSALEM_EXCLUDE")
  TELAVIV=$(egrep -i "$KEYWORDS_TELAVIV" newpages.txt)

  if [ "$ISRAEL" != "" ];
  then
    printf "%s" "$ISRAEL" > Israel.txt
    export CATFILE="Israel.txt"
    export CATNAME="Israel"
    $CATEGORIZE
    rm Israel.txt
    unset ISRAEL
  fi

  if [ "$ISRAELITES" != "" ];
  then
    printf "%s" "$ISRAELITES" > AncientIsrael.txt
    export CATFILE="AncientIsrael.txt"
    export CATNAME="Ancient Israel"
    $CATEGORIZE
    rm AncientIsrael.txt
    unset ISRAELITES
  fi

  if [ "$JERUSALEM" != "" ];
  then
    printf "%s" "$JERUSALEM" > Jerusalem.txt
    export CATFILE="Jerusalem.txt"
    export CATNAME="Jerusalem"
    $CATEGORIZE
    rm Jerusalem.txt
    unset JERUSALEM
  fi

  if [ "$TELAVIV" != "" ];
  then
    printf "%s" "$TELAVIV" > TelAviv.txt
    export CATFILE="TelAviv.txt"
    export CATNAME="Tel Aviv"
    $CATEGORIZE
    rm TelAviv.txt
    unset TELAVIV
  fi

  debug_end "Israel"

fi