#!/bin/bash

KEYWORDS_GABON="\bGabon"
KEYWORDS_GABON_ALL="$KEYWORDS_GABON"

if [ "$1" == "" ];
then
  
  debug_start "Gabon"

  GABON=$(egrep -i "$KEYWORDS_GABON" "$NEWPAGES")

  categorize "GABON" "Gabon"

  debug_end "Gabon"

fi