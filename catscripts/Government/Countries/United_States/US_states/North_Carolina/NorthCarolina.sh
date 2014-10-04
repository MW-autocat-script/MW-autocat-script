#!/bin/bash

KEYWORDS_NORTHCAROLINA="North(| )Carolina|, N(|\.)C(|\.)\b"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "North Carolina"

  NORTHCAROLINA=$(egrep -i "$KEYWORDS_NORTHCAROLINA" "$NEWPAGES")

  categorize "NORTHCAROLINA" "North Carolina"

  debug_end "North Carolina"

fi