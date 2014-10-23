#!/bin/bash

KEYWORDS_PIGS="\bPig(|s)\b"
KEYWORDS_PIGS_EXCLUDE="guinea(| )pig|piggy|bay(| )of(| )pig|spider(| |-)pig"
KEYWORDS_PIGS_CASESENSITIVE_EXCLUDE="Piglet"
KEYWORDS_PIGS_ALL="$KEYWORDS_PIGS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Pigs"

  PIGS=$(egrep -i "$KEYWORDS_PIGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_PIGS_EXCLUDE" | egrep -v "$KEYWORDS_PIGS_CASESENSITIVE_EXCLUDE")

  categorize "PIGS" "Pigs"

  debug_end "Pigs"

fi