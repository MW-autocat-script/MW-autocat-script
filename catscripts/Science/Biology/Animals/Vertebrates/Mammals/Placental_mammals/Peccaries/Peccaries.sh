#!/bin/bash

KEYWORDS_PECCARIES="Peccar(y|ies)"
KEYWORDS_PECCARIES_ALL="$KEYWORDS_PECCARIES"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Peccaries"

  PECCARIES=$(egrep -i "$KEYWORDS_PECCARIES" "$NEWPAGES")

  categorize "PECCARIES" "Peccaries"

  debug_end "Peccaries"

fi