#!/bin/bash

KEYWORDS_ANGOLA="Angola"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Angola"

  ANGOLA=$(egrep -i "$KEYWORDS_ANGOLA" "$NEWPAGES")

  categorize "ANGOLA" "Angola"

  debug_end "Angola"

fi