#!/bin/bash 

KEYWORDS_MANGANESE="Manganese"
KEYWORDS_TECHNETIUM="Technetium"
KEYWORDS_RHENIUM="Rhenium"
KEYWORDS_BOHRIUM="Bohrium"
KEYWORDS_GROUP7_ELEMENTS="$KEYWORDS_MANGANESE|$KEYWORDS_TECHNETIUM|$KEYWORDS_RHENIUM|$KEYWORDS_BOHRIUM"

if [ "$1" == "" ];
then

  debug_start "Group 7 elements"

  MANGANESE=$(egrep -i "$KEYWORDS_MANGANESE" "$NEWPAGES")
  TECHNETIUM=$(egrep -i "$KEYWORDS_TECHNETIUM" "$NEWPAGES")
  RHENIUM=$(egrep -i "$KEYWORDS_RHENIUM" "$NEWPAGES")
  BOHRIUM=$(egrep -i "$KEYWORDS_BOHRIUM" "$NEWPAGES")

  categorize "MANGANESE" "Manganese"
  categorize "TECHNETIUM" "Technetium"
  categorize "RHENIUM" "Rhenium"
  categorize "BOHRIUM" "Bohrium"

  debug_end "Group 7 elements"

fi