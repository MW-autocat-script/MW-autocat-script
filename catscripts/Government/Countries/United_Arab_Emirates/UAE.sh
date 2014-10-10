#!/bin/bash

KEYWORDS_UAE="\bUAE|\bU\.A\.E|United(| )Arab(| )Emirates"
KEYWORDS_DUBAI="Dubai"
KEYWORDS_UAE_EXCLUDE="$KEYWORDS_DUBAI"
KEYWORDS_UAE_ALL="$KEYWORDS_UAE|$KEYWORDS_DUBAI"

if [ "$1" == "" ];
then
  
  debug_start "United Arab Emirates"

  UAE=$(egrep -i "$KEYWORDS_UAE" "$NEWPAGES" | egrep -iv "$KEYWORDS_UAE_EXCLUDE")
  DUBAI=$(egrep -i "$KEYWORDS_DUBAI" "$NEWPAGES")

  categorize "UAE" "United Arab Emirates"
  categorize "DUBAI" "Dubai"

  debug_end "United Arab Emirates"

fi