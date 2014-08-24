#!/bin/bash

KEYWORDS_PORTUGAL="Portugal"

if [ "$1" == "" ];
then
  
  debug_start "Portugal"

  PORTUGAL=$(egrep -i "$KEYWORDS_PORTUGAL" "$NEWPAGES")

  categorize "PORTUGAL" "Portugal"

  debug_end "Portugal"

fi