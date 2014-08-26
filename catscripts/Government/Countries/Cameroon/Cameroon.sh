#!/bin/bash

KEYWORDS_CAMEROON="Cameroon"
KEYWORDS_CAMEROON_ALL="$KEYWORDS_CAMEROON"

if [ "$1" == "" ];
then

  debug_start "Cameroon"

  CAMEROON=$(egrep -i "$KEYWORDS_CAMEROON" "$NEWPAGES")

  categorize "CAMEROON" "Cameroon"

  debug_end "Cameroon"

fi