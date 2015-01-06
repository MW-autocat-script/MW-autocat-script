#!/bin/bash

#SUVs

KEYWORDS_GMC_ACADIA="(GMC|[0-9]{2,})(| )Acadia"
KEYWORDS_GMC_ENVOY="(GMC|[0-9]{2,})(| )Envoy"
KEYWORDS_GMC_YUKON_XL="Yukon(| )XL|GMC(| )Suburban"

#Trucks

KEYWORDS_GMC_SIERRA="(GMC|[0-9]{2,})(| )Sierra"
KEYWORDS_GMC_SONOMA="(GMC|[0-9]{2,})(| )Sonoma"

if [ "$1" == "" ];
then

  debug_start "GMC"

  ACADIA=$(egrep -i "$KEYWORDS_GMC_ACADIA" "$NEWPAGES")
  ENVOY=$(egrep -i "$KEYWORDS_GMC_ENVOY" "$NEWPAGES")
  SIERRA=$(egrep -i "$KEYWORDS_GMC_SIERRA" "$NEWPAGES")
  SONOMA=$(egrep -i "$KEYWORDS_GMC_SONOMA" "$NEWPAGES")
  YUKONXL=$(egrep -i "$KEYWORDS_GMC_YUKON_XL" "$NEWPAGES")

  categorize "ACADIA" "GMC Acadia"
  categorize "ENVOY" "GMC Envoy"
  categorize "SIERRA" "GMC Sierra"
  categorize "SONOMA" "GMC Sonoma"
  categorize "YUKONXL" "GMC Yukon XL"

  debug_end "GMC"

fi