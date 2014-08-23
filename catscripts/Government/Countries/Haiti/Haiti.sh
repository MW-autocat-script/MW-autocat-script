#!/bin/bash

KEYWORDS_HAITI="Haiti"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Haiti"

  HAITI=$(egrep -i "$KEYWORDS_HAITI" "$NEWPAGES")

  categorize "HAITI" "Haiti"

  debug_end "Haiti"

fi