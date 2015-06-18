#!/bin/bash

KEYWORDS_LEBANON="Lebanon|Beirut"
KEYWORDS_LEBANON_EXCLUDE="New Jersey|\bNJ\b|bologna|baloney"
KEYWORDS_LEBANON_ALL="$KEYWORDS_LEBANON"

if [ "$1" == "" ];
then

  debug_start "Lebanon"

  LEBANON=$(egrep -i "$KEYWORDS_LEBANON" "$NEWPAGES" | egrep -iv "$KEYWORDS_LEBANON_EXCLUDE")

  categorize "LEBANON" "Lebanon"

  debug_end "Lebanon"

fi