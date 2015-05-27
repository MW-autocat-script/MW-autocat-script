#!/bin/bash

KEYWORDS_CONGO="Congo|Brazzaville "
KEYWORDS_CONGO_EXCLUDE="Democratic(| )Republic.+Congo"
KEYWORDS_CONGO_ALL="$KEYWORDS_CONGO"

if [ "$1" == "" ];
then
  
  debug_start "Republic of the Congo"

  CONGO=$(egrep -i "$KEYWORDS_CONGO" "$NEWPAGES" | egrep -iv "$KEYWORDS_CONGO_EXCLUDE")

  categorize "CONGO" "Republic of the Congo"

  debug_end "Republic of the Congo"

fi