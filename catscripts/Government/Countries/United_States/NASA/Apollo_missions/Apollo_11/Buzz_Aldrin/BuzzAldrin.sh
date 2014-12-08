#!/bin/bash

KEYWORDS_BUZZALDRIN="(Buzz|Edwin(| )(|Eugene))(| )Aldrin"
KEYWORDS_BUZZALDRIN_ALL="$KEYWORDS_BUZZALDRIN"

if [ "$1" == "" ];
then

  debug_start "Buzz Aldrin"

  ALDRIN=$(egrep -i "$KEYWORDS_BUZZALDRIN" "$NEWPAGES")

  categorize "ALDRIN" "Buzz Aldrin"

  debug_end "Buzz Aldrin"

fi