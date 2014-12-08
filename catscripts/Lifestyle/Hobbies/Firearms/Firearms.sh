#!/bin/bash

KEYWORDS_FIREARMS="\bFire(| )arm|hand(| )gun|open(-| )carry|Gold(| )Star(| )State"
KEYWORDS_AK47="AK(| |-)47"
KEYWORDS_M16="\bM16(|s)\b|(|X)M16(a|e)[1-5]|AR(|-)15"
KEYWORDS_FIREARMS_EXCLUDE="$KEYWORDS_AK47|$KEYWORDS_M16"
KEYWORDS_FIREARMS_ALL="$KEYWORDS_FIREARMS|$KEYWORDS_AK47|$KEYWORDS_M16"

if [ "$1" == "" ];
then
  
  debug_start "Firearms"

  FIREARMS=$(egrep -i "$KEYWORDS_FIREARMS" "$NEWPAGES"| egrep -iv "$KEYWORDS_FIREARMS_EXCLUDE")
  AK47=$(egrep -i "$KEYWORDS_AK47" "$NEWPAGES")
  M16=$(egrep -i "$KEYWORDS_M16" "$NEWPAGES")

  categorize "FIREARMS" "Firearms"
  categorize "AK47" "AK-47"
  categorize "M16" "M16"

  debug_end "Firearms"

fi