#!/bin/bash

KEYWORDS_COMOROS="Comoros"
KEYWORDS_COMOROS_ALL="$KEYWORDS_COMOROS"

if [ "$1" == "" ];
then

  debug_start "Comoros"

  COMOROS=$(egrep -i "$KEYWORDS_COMOROS" "$NEWPAGES")

  categorize "COMOROS" "Comoros"

  debug_end "Comoros"

fi