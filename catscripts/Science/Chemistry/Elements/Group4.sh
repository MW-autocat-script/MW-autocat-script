#!/bin/bash 

KEYWORDS_TITANIUM="Titanium"
KEYWORDS_TITANIUM_EXCLUDE="blade|toy|katar|lego|muffler|runed titanium"
KEYWORDS_ZIRCONIUM="Zirconium"
KEYWORDS_HAFNIUM="Hafnium"
KEYWORDS_RUTHERFORDIUM="Rutherfordium"
KEYWORDS_GROUP4_ELEMENTS="$KEYWORDS_TITANIUM|$KEYWORDS_ZIRCONIUM|$KEYWORDS_HAFNIUM|$KEYWORDS_RUTHERFORDIUM"

if [ "$1" == "" ];
then

  debug_start "Group 4 elements"

  TITANIUM=$(egrep -i "$KEYWORDS_TITANIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_TITANIUM_EXCLUDE")
  ZIRCONIUM=$(egrep -i "$KEYWORDS_ZIRCONIUM" "$NEWPAGES")
  HAFNIUM=$(egrep -i "$KEYWORDS_HAFNIUM" "$NEWPAGES")
  RUTHERFORDIUM=$(egrep -i "$KEYWORDS_RUTHERFORDIUM" "$NEWPAGES")

  categorize "TITANIUM" "Titanium"
  categorize "ZIRCONIUM" "Zirconium"
  categorize "HAFNIUM" "Hafnium"
  categorize "RUTHERFORDIUM" "Rutherfordium"

  debug_end "Group 4 elements"

fi