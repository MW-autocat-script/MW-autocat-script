#!/bin/bash

KEYWORDS_SOUTHAFRICA="South(| )Africa|apartheid"
KEYWORDS_NELSONMANDELA="Mandela"

if [ "$1" == "" ];
then

  debug_start "South Africa"

  SOUTHAFRICA=$(egrep -i "$KEYWORDS_SOUTHAFRICA" "$NEWPAGES" | egrep -iv "$KEYWORDS_NELSONMANDELA")
  MANDELA=$(egrep -i "$KEYWORDS_NELSONMANDELA" "$NEWPAGES")

  categorize "SOUTHAFRICA" "South Africa"
  categorize "MANDELA" "Nelson Mandela"

  debug_end "South Africa"

fi