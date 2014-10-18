#!/bin/bash

KEYWORDS_TROPICOFCANCER="Tropic(| )of(| )Cancer"
KEYWORDS_TROPICOFCANCER_ALL="$KEYWORDS_TROPICOFCANCER"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Tropic of Cancer"

  TROPICOFCANCER=$(egrep -i "$KEYWORDS_TROPICOFCANCER" "$NEWPAGES")

  categorize "TROPICOFCANCER" "Tropic of Cancer"

  debug_end "Tropic of Cancer"

fi