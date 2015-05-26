#!/bin/bash

KEYWORDS_CENTRALAFRICANREPUBLIC="Central(| )African(| )Republic|Bangui"
KEYWORDS_CENTRALAFRICANREPUBLIC_ALL="$KEYWORDS_CENTRALAFRICANREPUBLIC"

if [ "$1" == "" ];
then

  debug_start "Central African Republic"

  CENTRALAFRICANREPUBLIC=$(egrep -i "$KEYWORDS_CENTRALAFRICANREPUBLIC" "$NEWPAGES")

  categorize "CENTRALAFRICANREPUBLIC" "Central African Republic"

  debug_end "Central African Republic"

fi