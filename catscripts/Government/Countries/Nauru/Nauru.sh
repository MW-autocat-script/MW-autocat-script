#!/bin/bash

KEYWORDS_NAURU="Nauru"
KEYWORDS_NAURU_ALL="$KEYWORDS_NAURU"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Nauru"

  NAURU=$(egrep -i "$KEYWORDS_NAURU" "$NEWPAGES")

  categorize "NAURU" "Nauru"

  debug_end "Nauru"

fi