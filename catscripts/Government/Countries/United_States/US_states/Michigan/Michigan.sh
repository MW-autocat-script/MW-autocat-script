#!/bin/bash

KEYWORDS_MICHIGAN="Michigan"
KEYWORDS_DETROIT="Detroit"
KEYWORDS_MICHIGAN_EXCLUDE="$KEYWORDS_DETROIT|Lake(| )Michigan"
KEYWORDS_DETROIT_EXCLUDE="Detroit(| )Lions"
KEYWORDS_MICHIGAN_ALL="$KEYWORDS_DETROIT|$KEYWORDS_MICHIGAN"

if [ "$1" == "" ];
then

  debug_start "Michigan"

  MICHIGAN=$(egrep -i "$KEYWORDS_MICHIGAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_MICHIGAN_EXCLUDE")
  DETROIT=$(egrep -i "$KEYWORDS_DETROIT" "$NEWPAGES" | egrep -iv "$KEYWORDS_DETROIT_EXCLUDE")

  categorize "MICHIGAN" "Michigan"
  categorize "DETROIT" "Detroit"

  debug_end "Michigan"

fi