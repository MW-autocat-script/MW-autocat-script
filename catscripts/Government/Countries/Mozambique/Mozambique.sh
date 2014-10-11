#!/bin/bash

KEYWORDS_MOZAMBIQUE="Mozambique"
KEYWORDS_MOZAMBIQUE_ALL="$KEYWORDS_MOZAMBIQUE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Mozambique"

  MOZAMBIQUE=$(egrep -i "$KEYWORDS_MOZAMBIQUE" "$NEWPAGES")

  categorize "MOZAMBIQUE" "Mozambique"

  debug_end "Mozambique"

fi