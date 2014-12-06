#!/bin/bash

KEYWORDS_GIRLSALOUD="Girls(| )Aloud"
KEYWORDS_GIRLSALOUD_ALL="$KEYWORDS_GIRLSALOUD"

if [ "$1" == "" ];
then

  debug_start "Girls Aloud"

  GIRLSALOUD=$(egrep -i "$KEYWORDS_GIRLSALOUD" "$NEWPAGES")

  categorize "GIRLSALOUD" "Girls Aloud"

  debug_end "Girls Aloud"

fi