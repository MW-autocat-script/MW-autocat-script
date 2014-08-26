#!/bin/bash

KEYWORDS_BOTSWANA="Botswana"
KEYWORDS_BOTSWANA_ALL="$KEYWORDS_BOTSWANA"

if [ "$1" == "" ];
then
  
  debug_start "Botswana"

  BOTSWANA=$(egrep -i "$KEYWORDS_BOTSWANA" "$NEWPAGES")

  categorize "BOTSWANA" "Botswana"

  debug_end "Botswana"

fi