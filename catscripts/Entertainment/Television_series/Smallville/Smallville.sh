#!/bin/bash

KEYWORDS_SMALLVILLE="Small(| )ville"

if [ "$1" == "" ];
then
  
  debug_start "Smallville"

  SMALLVILLE=$(egrep -i "$KEYWORDS_SMALLVILLE" "$NEWPAGES")

  categorize "SMALLVILLE" "Smallville"

  debug_end "Smallville"

fi
    