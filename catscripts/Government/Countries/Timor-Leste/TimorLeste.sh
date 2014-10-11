#!/bin/bash

KEYWORDS_TIMORLESTE="\bTimor|East(| )Timor"
KEYWORDS_TIMORLESTE_ALL="$KEYWORDS_TIMORLESTE"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Timor-Leste"

  TIMORLESTE=$(egrep -i "$KEYWORDS_TIMORLESTE" "$NEWPAGES")

  categorize "TIMORLESTE" "Timor-Leste"

  debug_end "Timor-Leste"

fi