#!/bin/bash

KEYWORDS_ALASKA="Alaska|Seward's(| )icebox|,(| )AK( |$)"
KEYWORDS_ALASKA_ALL="$KEYWORDS_ALASKA"

if [ "$1" == "" ];
then

  debug_start "Alaska"

  ALASKA=$(egrep -i "$KEYWORDS_ALASKA" "$NEWPAGES")

  categorize "ALASKA" "Alaska"

  debug_end "Alaska"

fi