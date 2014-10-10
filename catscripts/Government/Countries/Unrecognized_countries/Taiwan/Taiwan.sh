#!/bin/bash

KEYWORDS_TAIWAN="Taiwan|Chinese(| )Taipei|Republic(| )of(| )China"
KEYWORDS_TAIWAN_EXCLUDE="People('|)s(| )Republic(| )of(| )China"

if [ "$1" == "" ];
then

  debug_start "Taiwan"

  TAIWAN=$(egrep -i "$KEYWORDS_TAIWAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_TAIWAN_EXCLUDE")

  categorize "TAIWAN" "Taiwan"

  debug_end "Taiwan"

fi