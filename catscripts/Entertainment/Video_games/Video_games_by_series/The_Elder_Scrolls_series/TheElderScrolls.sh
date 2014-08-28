#!/bin/bash

KEYWORDS_THEELDERSCROLLS="The(| )Elder(| )Scrolls"
KEYWORDS_SKYRIM="Skyrim|Elder Scrolls (Five|5|V)\b"
KEYWORDS_OBLIVION="The Elder Scrolls.+Oblivion|\b(i|o)n Oblivion|Elder Scrolls (Four|IV|4)\b"
KEYWORDS_THEELDERSCROLLS_EXCLUDE="$KEYWORDS_OBLIVION|$KEYWORDS_SKYRIM"

if [ "$1" == "" ];
then

  debug_start "The Elder Scrolls series"

  SCROLLS=$(egrep -i "$KEYWORDS_THEELDERSCROLLS" "$NEWPAGES" | egrep -iv "$KEYWORDS_THEELDERSCROLLS_EXCLUDE")
  SKYRIM=$(egrep -i "$KEYWORDS_SKYRIM" "$NEWPAGES")
  OBLIVION=$(egrep -i "$KEYWORDS_OBLIVION" "$NEWPAGES")

  categorize "SCROLLS" "The Elder Scrolls series"
  categorize "SKYRIM" "The Elder Scrolls V: Skyrim"
  categorize "OBLIVION" "The Elder Scrolls IV: Oblivion"

  debug_end "The Elder Scrolls series"

fi