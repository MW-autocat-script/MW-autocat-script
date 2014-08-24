#!/bin/bash

KEYWORDS_SUDAN="Sudan|Darfur"
KEYWORDS_SUDAN_ALL="$KEYWORDS_SUDAN"

if [ "$1" == "" ];
then
  
  debug_start "Sudan"

  SUDAN=$(egrep -i "$KEYWORDS_SUDAN" "$NEWPAGES")

  categorize "SUDAN" "Sudan"

  debug_end "Sudan"

fi