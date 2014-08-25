#!/bin/bash

KEYWORDS_PAKISTAN="Pakistan"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pakistan"

  PAKISTAN=$(egrep -i "$KEYWORDS_PAKISTAN" "$NEWPAGES")

  categorize "PAKISTAN" "Pakistan"

  debug_end "Pakistan"

fi