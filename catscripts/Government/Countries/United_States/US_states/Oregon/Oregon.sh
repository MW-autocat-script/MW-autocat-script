#!/bin/bash

KEYWORDS_OREGON="Oregon"
KEYWORDS_OREGON_EXCLUDE="Oregon(| )Trail"
KEYWORDS_OREGON_ALL="$KEYWORDS_OREGON"

if [ "$1" == "" ];
then

  debug_start "Oregon"

  OREGON=$(egrep -i "$KEYWORDS_OREGON" "$NEWPAGES" | egrep -iv "$KEYWORDS_OREGON_EXCLUDE")

  categorize "OREGON" "Oregon"

  debug_end "Oregon"

fi