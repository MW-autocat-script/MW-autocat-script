#!/bin/bash

KEYWORDS_SAMOA="Samoa\b"
KEYWORDS_SAMOA_EXCLUDE="American(| )Samoa"
KEYWORDS_SAMOA_ALL="$KEYWORDS_SAMOA"

if [ "$1" == "" ];
then
  
  debug_start "Samoa"

  SAMOA=$(egrep -i "$KEYWORDS_SAMOA" "$NEWPAGES" | egrep -iv "$KEYWORDS_SAMOA_EXCLUDE")

  categorize "SAMOA" "Samoa"

  debug_end "Samoa"

fi