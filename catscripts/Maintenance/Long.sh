#!/bin/bash

KEYWORDS_LONG="^(.){150,}$"

if [ "$1" == "" ];
then
  
  debug_start "Long page titles"

  LONG="$(egrep -i "$KEYWORDS_LONG" "$NEWPAGES")"

  categorize "LONG" "Long page titles"

  debug_end "Long page titles"

fi