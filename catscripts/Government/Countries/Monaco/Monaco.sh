#!/bin/bash

KEYWORDS_MONACO="Monaco"
KEYWORDS_MONACO_EXCLUDE="Monaco(| )skin|Wikia"
KEYWORDS_MONACO_ALL="$KEYWORDS_MONACO"

if [ "$1" == "" ];
then
  
  debug_start "Monaco"

  MONACO=$(egrep -i "$KEYWORDS_MONACO" "$NEWPAGES" | egrep -iv "$KEYWORDS_MONACO_EXCLUDE")

  categorize "MONACO" "Monaco"

  debug_end "Monaco"

fi