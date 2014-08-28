#!/bin/bash

KEYWORDS_AMPHIBIANS="Amphibian|Caecilian"
KEYWORDS_FROGSANDTOADS="\bFrog(|s)\b|\btoad(|s)\b|tadpole"
KEYWORDS_SALAMANDERS="Salamander|newt(|s)\b|axolotl"
KEYWORDS_AMPHIBIANS_EXCLUDE="$KEYWORDS_FROGSANDTOADS|$KEYWORDS_SALAMANDERS"
KEYWORDS_AMPHIBIANS_ALL="$KEYWORDS_AMPHIBIANS|$KEYWORDS_FROGSANDTOADS|$KEYWORDS_SALAMANDERS"

if [ "$1" == "" ];
then
  
  debug_start "Amphibians"

  AMPHIBIANS=$(egrep -i "$KEYWORDS_AMPHIBIANS" "$NEWPAGES" | egrep -iv "$KEYWORDS_AMPHIBIANS_EXCLUDE")
  FROGSANDTOADS=$(egrep -i "$KEYWORDS_FROGSANDTOADS" "$NEWPAGES")
  SALAMANDERS=$(egrep -i "$KEYWORDS_SALAMANDERS" "$NEWPAGES")

  categorize "AMPHIBIANS" "Amphibians"
  categorize "FROGSANDTOADS" "Frogs and toads"
  categorize "SALAMANDERS" "Salamanders"

  debug_end "Amphibians"

fi