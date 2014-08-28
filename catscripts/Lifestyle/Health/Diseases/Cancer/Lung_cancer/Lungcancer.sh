#!/bin/bash

KEYWORDS_LUNGCANCER="Lung(| )cancer"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Lung cancer"

  LUNGCANCER=$(egrep -i "$KEYWORDS_LUNGCANCER" "$NEWPAGES")

  categorize "LUNGCANCER" "Lung cancer"

  debug_end "Lung cancer"

fi