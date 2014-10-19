#!/bin/bash

KEYWORDS_DUGONGS="Dugong"
KEYWORDS_DUGONGS_ALL="$KEYWORDS_DUGONGS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Dugongs"

  DUGONGS=$(egrep -i "$KEYWORDS_DUGONGS" "$NEWPAGES")

  categorize "DUGONGS" "Dugongs"

  debug_end "Dugongs"

fi