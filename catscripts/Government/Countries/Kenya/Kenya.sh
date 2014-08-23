#!/bin/bash

KEYWORDS_KENYA="Kenya"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Kenya"

  KENYA=$(egrep -i "$KEYWORDS_KENYA" "$NEWPAGES")

  categorize "KENYA" "Kenya"

  debug_end "Kenya"

fi