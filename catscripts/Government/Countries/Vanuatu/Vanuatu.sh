#!/bin/bash

KEYWORDS_VANUATU="Vanuatu"
KEYWORDS_VANUATU_ALL="$KEYWORDS_VANUATU"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Vanuatu"

  VANUATU=$(egrep -i "$KEYWORDS_VANUATU" "$NEWPAGES")

  categorize "VANUATU" "Vanuatu"

  debug_end "Vanuatu"

fi