#!/bin/bash

KEYWORDS_DESPERATEHOUSEWIVES="Desperate(| )House(| |-)Wives"

if [ "$1" == "" ];
then
  
  debug_start "Desperate Housewives"

  HOUSEWIVES=$(egrep -i "$KEYWORDS_DESPERATEHOUSEWIVES" "$NEWPAGES")

  categorize "HOUSEWIVES" "Desperate Housewives"

  debug_end "Desperate Housewives"

fi