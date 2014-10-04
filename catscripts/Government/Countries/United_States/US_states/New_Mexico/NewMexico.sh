#!/bin/bash

KEYWORDS_NEWMEXICO="New(| )Mexic(o|an)"
KEYWORDS_NEWMEXICO_ALL="$KEYWORDS_NEWMEXICO"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "New Mexico"

  NEWMEXICO=$(egrep -i "$KEYWORDS_NEWMEXICO" "$NEWPAGES")

  categorize "NEWMEXICO" "New Mexico"

  debug_end "New Mexico"

fi