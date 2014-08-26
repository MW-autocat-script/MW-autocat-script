#!/bin/bash

KEYWORDS_BOSNIAANDHERZEGOVINA="Bosnia|Herzegovina"
KEYWORDS_BOSNIAANDHERZEGOVINA_ALL="$KEYWORDS_BOSNIAANDHERZEGOVINA"

if [ "$1" == "" ];
then

  debug_start "Bosnia and Herzegovina"

  BOSNIA=$(egrep -i "$KEYWORDS_BOSNIAANDHERZEGOVINA" "$NEWPAGES")

  categorize "BOSNIA" "Bosnia and Herzegovina"

  debug_end "Bosnia and Herzegovina"

fi