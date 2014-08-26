#!/bin/bash

KEYWORDS_CZECHREPUBLIC="Czech(| )Republic"
KEYWORDS_CZECHREPUBLIC_ALL="$KEYWORDS_CZECHREPUBLIC"

if [ "$1" == "" ];
then
  
  debug_start "Czech Republic"

  CZECHREPUBLIC=$(egrep -i "$KEYWORDS_CZECHREPUBLIC" "$NEWPAGES")

  categorize "CZECHREPUBLIC" "Czech Republic"

  debug_end "Czech Republic"

fi