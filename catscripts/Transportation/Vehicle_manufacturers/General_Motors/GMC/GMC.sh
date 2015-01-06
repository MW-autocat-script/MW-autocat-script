#!/bin/bash

KEYWORDS_GMC_ENVOY="(GMC|[0-9]{2,})(| )Envoy"
KEYWORDS_GMC_SIERRA="(GMC|[0-9]{2,})(| )Sierra"
KEYWORDS_GMC_SONOMA="(GMC|[0-9]{2,})(| )Sonoma"
KEYWORDS_GMC_YUKON_XL="Yukon(| )XL|GMC(| )Suburban"

if [ "$1" == "" ];
then

  debug_start "GMC"

  ENVOY=$(egrep -i "$KEYWORDS_GMC_ENVOY" "$NEWPAGES")
  SIERRA=$(egrep -i "$KEYWORDS_GMC_SIERRA" "$NEWPAGES")
  SONOMA=$(egrep -i "$KEYWORDS_GMC_SONOMA" "$NEWPAGES")
  YUKONXL=$(egrep -i "$KEYWORDS_GMC_YUKON_XL" "$NEWPAGES")

  categorize "ENVOY" "GMC Envoy"
  categorize "SIERRA" "GMC Sierra"
  categorize "SONOMA" "GMC Sonoma"
  categorize "YUKONXL" "GMC Yukon XL"

  debug_end "GMC"

fi