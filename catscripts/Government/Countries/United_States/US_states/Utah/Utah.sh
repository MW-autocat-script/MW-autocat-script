#!/bin/bash

KEYWORDS_UTAH="Utah"
KEYWORDS_SALTLAKECITY="Salt(| )Lake(| )City"
KEYWORDS_UTAH_EXCLUDE="$KEYWORDS_SALTLAKECITY|Utahraptor"
KEYWORDS_UTAH_ALL="$KEYWORDS_UTAH|$KEYWORDS_SALTLAKECITY"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Utah"

  UTAH=$(egrep -i "$KEYWORDS_UTAH" "$NEWPAGES" | egrep -iv "$KEYWORDS_UTAH_EXCLUDE")
  SALTLAKECITY=$(egrep -i "$KEYWORDS_SALTLAKECITY" "$NEWPAGES")

  categorize "UTAH" "Utah"
  categorize "SALTLAKECITY" "Salt Lake City"
  
  debug_end "Utah"

fi