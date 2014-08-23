#!/bin/bash 

KEYWORDS_BERYLLIUM="Beryllium"
KEYWORDS_BERYLLIUM_EXCLUDE="beryllium \b.+(ate|ide|ite)"
KEYWORDS_MAGNESIUM="Magnesium"
KEYWORDS_MAGNESIUM_EXCLUDE="Magnesium \b.+(ate|ide|ite)"
KEYWORDS_CALCIUM="Calcium"
KEYWORDS_CALCIUM_EXCLUDE="Calcium \b.+(ate|ide|ite)"
KEYWORDS_STRONTIUM="Strontium"
KEYWORDS_STRONTIUM_EXCLUDE="Strontium \b.+(ate|ide|ite)"
KEYWORDS_BARIUM="Barium"
KEYWORDS_BARIUM_EXCLUDE="Barium \b.+(ate|ide|ite)"
KEYWORDS_RADIUM="Radium"
KEYWORDS_RADIUM_EXCLUDE="Radium \b.+(ate|ide|ite)"

if [ "$1" == "" ];
then

  debug_start "Group 2 elements"

  BERYLLIUM=$(egrep -i "$KEYWORDS_BERYLLIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_BERYLLIUM_EXCLUDE")
  MAGNESIUM=$(egrep -i "$KEYWORDS_MAGNESIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_MAGNESIUM_EXCLUDE")
  CALCIUM=$(egrep -i "$KEYWORDS_CALCIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_CALCIUM_EXCLUDE")
  STRONTIUM=$(egrep -i "$KEYWORDS_STRONTIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_STRONTIUM_EXCLUDE")
  BARIUM=$(egrep -i "$KEYWORDS_BARIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_BARIUM_EXCLUDE")
  RADIUM=$(egrep -i "$KEYWORDS_RADIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_RADIUM_EXCLUDE")

  categorize "BERYLLIUM" "Beryllium"
  categorize "MAGNESIUM" "Magnesium"
  categorize "CALCIUM" "Calcium"
  categorize "STRONTIUM" "Strontium"
  categorize "BARIUM" "Barium"
  categorize "RADIUM" "Radium"

  debug_end "Group 2 elements"

fi