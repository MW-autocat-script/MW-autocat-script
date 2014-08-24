#!/bin/bash

KEYWORDS_INSECTS="Insect"
KEYWORDS_ANTS="\bAnt(|s)\b"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Insects"

  ANTS=$(egrep -i "$KEYWORDS_ANTS" "$NEWPAGES")

  categorize "ANTS" "Ants"

  debug_end "Ants"

fi