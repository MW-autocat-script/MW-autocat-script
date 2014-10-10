#!/bin/bash

KEYWORDS_PANAMA="Panama"
KEYWORDS_PANAMACANAL="Panama(| )Canal"
KEYWORDS_PANAMACITY="Panama(| )City"
KEYWORDS_PANAMACITY_EXCLUDE="Panama(| )City(,|)(| )Fl"
KEYWORDS_PANAMA_EXCLUDE="$KEYWORDS_PANAMACANAL|$KEYWORDS_PANAMACITY"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Panama"

  PANAMA=$(egrep -i "$KEYWORDS_PANAMA" "$NEWPAGES" | egrep -iv "$KEYWORDS_PANAMA_EXCLUDE")
  PANAMACANAL=$(egrep -i "$KEYWORDS_PANAMACANAL" "$NEWPAGES")
  PANAMACITY=$(egrep -i "$KEYWORDS_PANAMACITY" "$NEWPAGES" | egrep -iv "$KEYWORDS_PANAMACITY_EXCLUDE")

  categorize "PANAMA" "Panama"
  categorize "PANAMACANAL" "Panama Canal"
  categorize "PANAMACITY" "Panama City, Panama"

  debug_end "Panama"

fi