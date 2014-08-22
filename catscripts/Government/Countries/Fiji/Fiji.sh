#!/bin/bash

KEYWORDS_FIJI="Fiji"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Fiji"

  FIJI=$(egrep -i "$KEYWORDS_FIJI" "$NEWPAGES")

  categorize "FIJI" "Fiji"

  debug_end "Fiji"

fi