#!/bin/bash

KEYWORDS_DOLPHINS="Dolphin"
KEYWORDS_DOLPHINS_EXCLUDE="Miami(| )Dolphin|emulator"

if [ "$1" == "" ];
then

  debug_start "Dolphins"

  DOLPHIN=$(egrep -i "$KEYWORDS_DOLPHINS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DOLPHINS_EXCLUDE")

  categorize "DOLPHIN" "Dolphins"

  debug_end "Dolphins"

fi