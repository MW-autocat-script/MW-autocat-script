#!/bin/bash

KEYWORDS_MONTENEGRO="Montenegro"
KEYWORDS_MONTENEGRO_ALL="$KEYWORDS_MONTENEGRO"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Montenegro"

  MONTENEGRO=$(egrep -i "$KEYWORDS_MONTENEGRO" "$NEWPAGES")

  categorize "MONTENEGRO" "Montenegro"

  debug_end "Montenegro"

fi