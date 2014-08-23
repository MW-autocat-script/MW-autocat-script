#!/bin/bash

KEYWORDS_LIBYA="Libya|Ghadafi"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Libya"

  LIBYA=$(egrep -i "$KEYWORDS_LIBYA" "$NEWPAGES")

  categorize "LIBYA" "Libya"

  debug_end "Libya"

fi