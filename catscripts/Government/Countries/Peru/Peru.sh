#!/bin/bash

KEYWORDS_PERU="Peru"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Peru"

  PERU=$(egrep -i "$KEYWORDS_PERU" "$NEWPAGES")

  categorize "PERU" "Peru"

  debug_end "Peru"

fi