#!/bin/bash

KEYWORDS_BAHAMAS="Bahamas|Bahamian"
KEYWORDS_BAHAMAS_ALL="$KEYWORDS_BAHAMAS"

if [ "$1" == "" ];
then

  debug_start "Bahamas"

  BAHAMAS=$(egrep -i "$KEYWORDS_BAHAMAS" "$NEWPAGES")

  categorize "BAHAMAS" "The Bahamas"

  debug_end "Bahamas"

fi