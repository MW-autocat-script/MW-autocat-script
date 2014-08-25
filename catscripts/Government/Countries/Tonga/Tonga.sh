#!/bin/bash

KEYWORDS_TONGA="\bTonga(|s)\b|Tongan"
KEYWORDS_TONGA_ALL="$KEYWORDS_TONGA"

if [ "$1" == "" ];
then
  
  debug_start "Tonga" 

  TONGA=$(egrep -i "$KEYWORDS_TONGA" "$NEWPAGES")

  categorize "TONGA" "Tonga"

  debug_end "Tonga"

fi