#!/bin/bash

KEYWORDS_ANTEATERS="Ant(| )eater"
KEYWORDS_ANTEATERS_ALL="$KEYWORDS_ANTEATERS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Anteaters"

  ANTEATERS=$(egrep -i "$KEYWORDS_ANTEATERS" "$NEWPAGES")

  categorize "ANTEATERS" "Anteaters"

  debug_end "Anteaters"

fi