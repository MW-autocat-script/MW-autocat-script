#!/bin/bash

KEYWORDS_DOLPHINS="Dolphin"
KEYWORDS_ORCAS="\bOrca|killer(| )whale"
KEYWORDS_DOLPHINS_EXCLUDE="$KEYWORDS_ORCAS|(| )Dolphin|emulator"

if [ "$1" == "" ];
then

  debug_start "Dolphins"

  DOLPHIN=$(egrep -i "$KEYWORDS_DOLPHINS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DOLPHINS_EXCLUDE")
  ORCAS=$(egrep -i "$KEYWORDS_ORCAS" "$NEWPAGES")

  categorize "DOLPHIN" "Dolphins"
  categorize "ORCAS" "Orcas"

  debug_end "Dolphins"

fi