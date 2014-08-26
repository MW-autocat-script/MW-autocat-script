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

  FLORIDA=$(egrep -i "$KEYWORDS_FLORIDA" "$NEWPAGES" | egrep -iv "$KEYWORDS_FLORIDA_EXCLUDE")
  ORLANDO=$(egrep -i "$KEYWORDS_ORLANDO" "$NEWPAGES" | egrep -iv "$KEYWORDS_ORLANDO_EXCLUDE")
  MIAMI=$(egrep -i "$KEYWORDS_MIAMI" "$NEWPAGES" | egrep -iv "$KEYWORDS_MIAMI_EXCLUDE")
  TAMPA=$(egrep -i "$KEYWORDS_TAMPA" "$NEWPAGES")
  EVERGLADES=$(egrep -i "$KEYWORDS_EVERGLADES" "$NEWPAGES")

  categorize "FLORIDA" "Florida"
  categorize "MIAMI" "Miami"
  categorize "ORLANDO" "Orlando"
  categorize "TAMPA" "Tampa"
  categorize "EVERGLADES" "Everglades"

  debug_end "Florida"

fi