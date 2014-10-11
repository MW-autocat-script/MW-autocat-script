#!/bin/bash

KEYWORDS_MOROCCO="Morocco|Moroccan"
KEYWORDS_MOROCCO_ALL="$KEYWORDS_MOROCCO"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Morocco"

  MOROCCO=$(egrep -i "$KEYWORDS_MOROCCO" "$NEWPAGES")

  categorize "MOROCCO" "Morocco"

  debug_end "Morocco"

fi

