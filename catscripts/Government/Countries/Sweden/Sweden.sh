#!/bin/bash

KEYWORDS_SWEDEN="Sweden"

if [ "$1" == "" ];
then
  
  debug_start "Sweden"

  SWEDEN=$(egrep -i "$KEYWORDS_SWEDEN" "$NEWPAGES")

  categorize "SWEDEN" "Sweden"

  debug_end "Sweden"

fi