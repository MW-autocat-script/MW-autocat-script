#!/bin/bash

KEYWORDS_MONTANA="Montana"
KEYWORDS_MONTANA_EXCLUDE="(French|Hanna(|h)|Tony)(| )Montana"
KEYWORDS_MONTANA_ALL="$KEYWORDS_MONTANA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Montana"

  MONTANA=$(egrep -i "$KEYWORDS_MONTANA" "$NEWPAGES" | egrep -iv "$KEYWORDS_MONTANA_EXCLUDE")

  categorize "MONTANA" "Montana"

  debug_end "Montana"

fi