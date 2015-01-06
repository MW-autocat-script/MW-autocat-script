#!/bin/bash

KEYWORDS_GMC_ENVOY="GMC(| )Envoy"
KEYWORDS_GMC_YUKON_XL="GMC(| )Yukon(| )XL|GMC(| )Suburban"

if [ "$1" == "" ];
then

  debug_start "GMC"

  ENVOY=$(egrep -i "$KEYWORDS_GMC_ENVOY" "$NEWPAGES")
  YUKONXL=$(egrep -i "$KEYWORDS_GMC_YUKON_XL" "$NEWPAGES")

  categorize "ENVOY" "GMC Envoy"
  categorize "YUKONXL" "GMC Yukon XL"

  debug_end "GMC"

fi