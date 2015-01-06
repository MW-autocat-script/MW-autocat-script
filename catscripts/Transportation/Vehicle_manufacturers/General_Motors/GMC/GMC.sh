#!/bin/bash

KEYWORDS_GMC_YUKON_XL="GMC(| )Yukon(| )XL|GMC(| )Suburban"

if [ "$1" == "" ];
then

  debug_start "GMC"

  YUKONXL=$(egrep -i "$KEYWORDS_GMC_YUKON_XL" "$NEWPAGES")

  categorize "YUKONXL" "GMC Yukon XL"

  debug_end "GMC"

fi