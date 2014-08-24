#!/bin/bash

KEYWORDS_BRUNEI="Brunei"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Brunei"

  BRUNEI=$(egrep -i "$KEYWORDS_BRUNEI" "$NEWPAGES")

  categorize "BRUNEI" "Brunei"

  debug_end "Brunei"

fi