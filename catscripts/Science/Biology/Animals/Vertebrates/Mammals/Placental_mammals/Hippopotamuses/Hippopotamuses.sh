#!/bin/bash

KEYWORDS_HIPPOS="\bHippo(|s)\b|hippopotam(i|us)|river(| )horse"
KEYWORDS_HIPPOS_ALL="$KEYWORDS_HIPPOS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Hippopotamuses"

  HIPPOS=$(egrep -i "$KEYWORDS_HIPPOS" "$NEWPAGES")

  categorize "HIPPOS" "Hippopotamuses"

  debug_end "Hippopotamuses"

fi