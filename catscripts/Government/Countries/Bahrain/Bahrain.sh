#!/bin/bash

KEYWORDS_BAHRAIN="Bahrain"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Bahrain"

  BAHRAIN=$(egrep -i "$KEYWORDS_BAHRAIN" "$NEWPAGES")

  categorize "BAHRAIN" "Bahrain"

  debug_end "Bahrain"

fi