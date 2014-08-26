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

  categorize "RUSSIA" "Russia"
  categorize "MOSCOW" "Moscow"
  categorize "SOVIET" "Soviet Union"
  categorize "STALIN" "Joseph Stalin"
  categorize "LENIN" "Vladimir Lenin"

  debug_end "Russia"

fi