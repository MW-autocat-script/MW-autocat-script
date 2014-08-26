#!/bin/bash 

KEYWORDS_CHROMIUM="Chromium"
KEYWORDS_CHROMIUM_EXCLUDE="internet|browser"

KEYWORDS_MOLYBDENUM="Molybdenum"

KEYWORDS_TUNGSTEN="Tungsten"
KEYWORDS_TUNGSTEN_EXCLUDE="Mass(| )Effect"

KEYWORDS_SEABORGIUM="Seaborgium"

KEYWORDS_GROUP6_ELEMENTS="$KEYWORDS_CHROMIUM|$KEYWORDS_MOLYBDENUM|$KEYWORDS_TUNGSTEN|$KEYWORDS_SEABORGIUM"

if [ "$1" == "" ];
then

  debug_start "Group 6 elements"

  CHROMIUM=$(egrep -i "$KEYWORDS_CHROMIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHROMIUM_EXCLUDE")
  MOLYBDENUM=$(egrep -i "$KEYWORDS_MOLYBDENUM" "$NEWPAGES")
  TUNGSTEN=$(egrep -i "$KEYWORDS_TUNGSTEN" "$NEWPAGES" | egrep -iv "$KEYWORDS_TUNGSTEN_EXCLUDE")
  SEABORGIUM=$(egrep -i "$KEYWORDS_SEABORGIUM" "$NEWPAGES")

  categorize "CHROMIUM" "Chromium"
  categorize "MOLYBDENUM" "Molybdenum"
  categorize "TUNGSTEN" "Tungsten"
  categorize "SEABORGIUM" "Seaborgium"

  debug_end "Group 6 elements"

fi