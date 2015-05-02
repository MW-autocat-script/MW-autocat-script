#!/bin/bash

KEYWORDS_WEBDESIGN="Web(| )design|HTML"
KEYWORDS_WEBDESIGN_ALL="$KEYWORDS_WEBDESIGN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Web design"

  WEBDESIGN=$(egrep -i "$KEYWORDS_WEBDESIGN" "$NEWPAGES")

  categorize "WEBDESIGN" "Web design"

  debug_end "Web design"

fi