#!/bin/bash

KEYWORDS_URUGUAY="Uruguay|Montevideo"
KEYWORDS_URUGUAY_ALL="$KEYWORDS_URUGUAY"

if [ "$1" == "" ];
then
  
  debug_start "Uruguay"

  URUGUAY=$(egrep -i "$KEYWORDS_URUGUAY" "$NEWPAGES")

  categorize "URUGUAY" "Uruguay"

  debug_end "Uruguya"

fi