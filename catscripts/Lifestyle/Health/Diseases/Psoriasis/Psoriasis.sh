#!/bin/bash

KEYWORDS_PSORIASIS="psoriasis"
KEYWORDS_PSORIASIS_ALL="$KEYWORDS_PSORIASIS"

if [ "$1" == "" ];
then
  
  debug_start "Psoriasis"

  PSORIASIS=$(egrep -i "$KEYWORDS_PSORIASIS" "$NEWPAGES")

  categorize "PSORIASIS" "Psoriasis"

  debug_end "Psoriasis"

fi