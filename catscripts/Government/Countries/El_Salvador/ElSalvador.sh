#!/bin/bash

KEYWORDS_ELSALVADOR="El(| )Salvador"
KEYWORDS_ELSALVADOR_ALL="$KEYWORDS_ELSALVADOR"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "El Salvador"

  ELSALVADOR=$(egrep -i "$KEYWORDS_ELSALVADOR" "$NEWPAGES")

  categorize "ELSALVADOR" "El Salvador"

  debug_end "El Salvador"

fi