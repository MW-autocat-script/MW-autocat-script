#!/bin/bash

KEYWORDS_MANATEES="Manatee"
KEYWORDS_MANATEES_ALL="$KEYWORDS_MANATEES"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Manatees"

  MANATEES=$(egrep -i "$KEYWORDS_MANATEES" "$NEWPAGES")

  categorize "MANATEES" "Manatees"

  debug_end "Manatees"

fi