#!/bin/bash

KEYWORDS_BREASTCANCER="Breast(| )cancer"

if [ "$1" == "" ];
then

  debug_start "Breast cancer"

  BREASTCANCER=$(egrep -i "$KEYWORDS_BREASTCANCER" "$NEWPAGES")

  categorize "BREASTCANCER" "Breast cancer"

  debug_end "Breast cancer"

fi