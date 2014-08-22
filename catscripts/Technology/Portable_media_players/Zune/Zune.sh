#!/bin/bash

KEYWORDS_ZUNE="\bZune"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Zune"

  ZUNE=$(egrep -i "$KEYWORDS_ZUNE" "$NEWPAGES")

  categorize "ZUNE" "Zune"

  debug_end "Zune"

fi