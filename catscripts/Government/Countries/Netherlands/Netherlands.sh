#!/bin/bash

KEYWORDS_NETHERLANDS="Netherlands"
KEYWORDS_HOLLAND="Holland"
KEYWORDS_HOLLAND_EXCLUDE="(Josiah|Lanie|Sydney|Zara|Jools)(| )Holland|Holland(| )Rosen|Kevin(| )Crossley-Holland"
KEYWORDS_ARUBA="Aruba"
KEYWORDS_NETHERLANDS_EXCLUDE="$KEYWORDS_HOLLAND|$KEYWORDS_ARUBA"
KEYWORDS_NETHERLANDS_ALL="$KEYWORDS_ARUBA|$KEYWORDS_HOLLAND|$KEYWORDS_NETHERLANDS"

if [ "$1" == "" ];
then
  
  debug_start "The Netherlands"

  NETHERLANDS=$(egrep -i "$KEYWORDS_NETHERLANDS" "$NEWPAGES" | egrep -iv "$KEYWORDS_NETHERLANDS_EXCLUDE")
  HOLLAND=$(egrep -i "$KEYWORDS_HOLLAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_HOLLAND_EXCLUDE")
  ARUBA=$(egrep -i "$KEYWORDS_ARUBA" "$NEWPAGES")

  categorize "NETHERLANDS" "The Netherlands"
  categorize "HOLLAND" "Holland"
  categorize "ARUBA" "Aruba"

  debug_end "The Netherlands"

fi