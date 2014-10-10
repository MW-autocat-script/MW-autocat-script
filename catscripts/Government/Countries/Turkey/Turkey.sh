#!/bin/bash

KEYWORDS_TURKEY="(Republic|Country|government)(| )of(| )Turkey|\bin(| )Turkey$"
KEYWORDS_ISTANBUL="Istanbul"
KEYWORDS_TURKEY_EXCLUDE="$KEYWORDS_ISTANBUL"
KEYWORDS_TURKEY_ALL="$KEYWORDS_TURKEY|$KEYWORDS_ISTANBUL"

if [ "$1" == "" ];
then
  
  debug_start "Turkey"

  TURKEY=$(egrep -i "$KEYWORDS_TURKEY" "$NEWPAGES" | egrep -iv "$KEYWORDS_TURKEY_EXCLUDE")
  ISTANBUL=$(egrep -i "$KEYWORDS_ISTANBUL" "$NEWPAGES")

  categorize "TURKEY" "Turkey (country)"
  categorize "ISTANBUL" "Istanbul"

  debug_end "Turkey"

fi