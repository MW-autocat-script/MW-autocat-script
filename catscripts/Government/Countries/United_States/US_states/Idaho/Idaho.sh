#!/bin/bash

KEYWORDS_IDAHO="idaho|\bin ID\b|, ID\b"
KEYWORDS_IDAHO_ALL="$KEYWORDS_IDAHO"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Idaho"

  IDAHO=$(egrep -i "$KEYWORDS_IDAHO" "$NEWPAGES")

  categorize "IDAHO" "Idaho"

  debug_end "Idaho"

fi