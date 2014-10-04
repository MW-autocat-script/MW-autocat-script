#!/bin/bash

KEYWORDS_FREECIV="Freeciv"
KEYWORDS_FREECIV_ALL="$KEYWORDS_FREECIV"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Freeciv"

  FREECIV=$(egrep -i "$KEYWORDS_FREECIV" "$NEWPAGES")

  categorize "FREECIV" "Freeciv"

  debug_end "Freeciv"

fi