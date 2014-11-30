#!/bin/bash

KEYWORDS_GREENDAY="Green(| )Day"
KEYWORDS_GREENDAY_ALL="$KEYWORDS_GREENDAY"

if [ "$1" == "" ];
then

  debug_start "Green Day"

  GREENDAY=$(egrep -i "$KEYWORDS_GREENDAY" "$NEWPAGES")

  categorize "GREENDAY" "Green Day"

  debug_end "Green Day"

fi