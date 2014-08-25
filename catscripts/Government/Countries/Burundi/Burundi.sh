#!/bin/bash

KEYWORDS_BURUNDI="Burundi"
KEYWORDS_BURUNDI_ALL="$KEYWORDS_BURUNDI"

if [ "$1" == "" ];
then
  
  debug_start "Burundi"

  BURUNDI=$(egrep -i "$KEYWORDS_BURUNDI" "$NEWPAGES")

  categorize "BURUNDI" "Burundi"

  debug_end "Burundi"

fi