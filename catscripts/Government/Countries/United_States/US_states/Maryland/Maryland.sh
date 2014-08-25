#!/bin/bash

KEYWORDS_MARYLAND="Maryland"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Maryland"

  MARYLAND=$(egrep -i "$KEYWORDS_MARYLAND" "$NEWPAGES")

  categorize "MARYLAND" "Maryland"

  debug_end "Maryland"

fi