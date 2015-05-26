#!/bin/bash

KEYWORDS_GUYANA="Guyana"
KEYWORDS_GUYANA_ALL="$KEYWORDS_GUYANA"

if [ "$1" == "" ];
then
  
  debug_start "Guyana"

  GUYANA=$(egrep -i "$KEYWORDS_GUYANA" "$NEWPAGES")

  categorize "GUYANA" "Guyana"

  debug_end "Guyana"

fi