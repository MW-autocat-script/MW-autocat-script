#!/bin/bash

KEYWORDS_ONEPIECE_CASESENSITIVE="One(| )Piece"
KEYWORDS_ONEPIECE="\bLuffy"
KEYWORDS_ONEPIECE_ALL="$KEYWORDS_ONEPIECE|$KEYWORDS_ONEPIECE_CASESENSITIVE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "One Piece"

  ONEPIECE=$(egrep "$KEYWORDS_ONEPIECE" "$NEWPAGES" && egrep -i "$KEYWORDS_ONEPIECE" "$NEWPAGES")
  
  categorize "ONEPIECE" "One Piece"

  debug_end "One Piece"

fi