#!/bin/bash

KEYWORDS_YELLOWFEVER="Yellow(| )fever"
KEYWORDS_YELLOWFEVER_ALL="$KEYWORDS_YELLOWFEVER"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Yellow fever"

  YELLOWFEVER=$(egrep -i "$KEYWORDS_YELLOWFEVER" "$NEWPAGES")

  categorize "YELLOWFEVER" "Yellow fever"

  debug_end "Yellow fever"

fi