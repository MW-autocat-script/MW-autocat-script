#!/bin/bash

KEYWORDS_TURKMENISTAN="Turkmenistan"
KEYWORDS_TURKMENISTAN_ALL="$KEYWORDS_TURKMENISTAN"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Turkmenistan"

  TURKMENISTAN=$(egrep -i "$KEYWORDS_TURKMENISTAN" "$NEWPAGES")

  categorize "TURKMENISTAN" "Turkmenistan"

  debug_end "Turkmenistan"

fi