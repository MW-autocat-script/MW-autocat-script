#!/bin/bash

KEYWORDS_UMBREON="Umbreon"
KEYWORDS_UNFEZANT="Unfezant"
KEYWORDS_UNOWN="Unown"
KEYWORDS_URSARING="Ursaring"
KEYWORDS_UXIE="Uxie"

if [ "$1" == "" ];
then

  debug_start "Pokemon U scripts"

  UMBREON=$(egrep -i "$KEYWORDS_UMBREON" "$NEWPAGES")
  UNFEZANT=$(egrep -i "$KEYWORDS_UNFEZANT" "$NEWPAGES")
  UNOWN=$(egrep -i "$KEYWORDS_UNOWN" "$NEWPAGES")
  URSARING=$(egrep -i "$KEYWORDS_URSARING" "$NEWPAGES")
  UXIE=$(egrep -i "$KEYWORDS_UXIE" "$NEWPAGES")

  categorize "UMBREON" "Umbreon"
  categorize "UNFEZANT" "Unfezant"
  categorize "UNOWN" "Unown"
  categorize "URSARING" "Ursaring"
  categorize "UXIE" "Uxie"

  debug_end "Pokemon U scripts"

fi