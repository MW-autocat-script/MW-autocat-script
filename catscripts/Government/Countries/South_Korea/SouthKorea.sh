#!/bin/bash

KEYWORDS_SOUTHKOREA="South(| )Korea|Seoul"
KEYWORDS_SOUTHKOREA_SECONDARY="Korea\b"
KEYWORDS_SOUTHKOREA_SECONDARY_EXCLUDE="North(| )Korea" #Questions that ask about "Korea" are probably referring to South Korea
KEYWORDS_SOUTHKOREA_ALL="$KEYWORDS_SOUTHKOREA"

if [ "$1" == "" ];
then
  
  debug_start "South Korea"

  SKOREA=$(egrep -i "$KEYWORDS_SOUTHKOREA" "$NEWPAGES" && egrep -i "$KEYWORDS_SOUTHKOREA_SECONDARY" "$NEWPAGES" | egrep -iv "$KEYWORDS_SOUTHKOREA_SECONDARY_EXCLUDE")

  categorize "SKOREA" "South Korea"

  debug_end "South Korea"

fi