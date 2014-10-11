#!/bin/bash

KEYWORDS_KAZAKHSTAN="Kazakhstan"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kazakhstan"

  KAZAKHSTAN=$(egrep -i "$KEYWORDS_KAZAKHSTAN" "$NEWPAGES")

  categorize "KAZAKHSTAN" "Kazakhstan"

  debug_end "Kazakhstan"

fi