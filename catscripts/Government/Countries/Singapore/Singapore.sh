#!/bin/bash

KEYWORDS_SINGAPORE="Singapore"

if [ "$1" == "" ];
then
  
  debug_start "Singapore"

  SINGAPORE=$(egrep -i "$KEYWORDS_SINGAPORE" "$NEWPAGES")

  categorize "SINGAPORE" "Singapore"

  debug_end "Singapore"

fi