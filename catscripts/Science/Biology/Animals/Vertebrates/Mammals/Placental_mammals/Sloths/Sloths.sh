#!/bin/bash

KEYWORDS_SLOTHS="Sloth"
KEYWORDS_SLOTHS_EXCLUDE="Sloth(| )bear"
KEYWORDS_SLOTHS_ALL="$KEYWORDS_SLOTHS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sloths"

  SLOTHS=$(egrep -i "$KEYWORDS_SLOTHS" "$NEWPAGES")

  categorize "SLOTHS" "Sloths"

  debug_end "Sloths"

fi