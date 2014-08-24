#!/bin/bash

KEYWORDS_TELEVISIONSERIES_ICARLY="iCarly"

if [ "$1" == "" ];
then 

  debug_start "iCarly"

  ICARLY=$(egrep -i "$KEYWORDS_TELEVISIONSERIES_ICARLY" "$NEWPAGES")

  categorize "ICARLY" "iCarly"

  debug_end "iCarly"

fi