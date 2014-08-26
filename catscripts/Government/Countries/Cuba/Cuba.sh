#!/bin/bash

KEYWORDS_CUBA="\bCuba|Fidel Castro|Raul Castro|Havana"
KEYWORDS_CUBA_EXCLUDE="Cuba(| )Gooding"
KEYWORDS_CUBA_ALL="$KEYWORDS_CUBA"

if [ "$1" == "" ];
then

  debug_start "Cuba"

  CUBA=$(egrep -i "$KEYWORDS_CUBA" "$NEWPAGES" | egrep -iv "$KEYWORDS_CUBA_EXCLUDE")

  categorize "CUBA" "Cuba"

  debug_end "Cuba"

fi
