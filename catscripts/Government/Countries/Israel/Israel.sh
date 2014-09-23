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

  ISRAEL=$(egrep -i "$KEYWORDS_ISRAEL" "$NEWPAGES" | egrep -iv "$KEYWORDS_ISRAEL_EXCLUDE")
  ISRAELITES=$(egrep -i "$KEYWORDS_ANCIENTISRAEL" "$NEWPAGES")
  JERUSALEM=$(egrep -i "$KEYWORDS_JERUSALEM" "$NEWPAGES" | egrep -iv "$KEYWORDS_JERUSALEM_EXCLUDE")
  TELAVIV=$(egrep -i "$KEYWORDS_TELAVIV" "$NEWPAGES")

  categorize "ISRAEL" "Israel"
  categorize "ISRAELITES" "Ancient Israel"
  categorize "JERUSALEM" "Jerusalem"
  categorize "TELAVIV" "Tel Aviv"

  debug_end "Israel"

fi