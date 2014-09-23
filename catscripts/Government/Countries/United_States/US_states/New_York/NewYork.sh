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

  categorize "NEWYORK" "New York"
  categorize "NYC" "New York City"
  categorize "ALBANY" "Albany, New York"
  categorize "EMPIRESTATE" "Empire State Building"

  debug_end "New York"

fi