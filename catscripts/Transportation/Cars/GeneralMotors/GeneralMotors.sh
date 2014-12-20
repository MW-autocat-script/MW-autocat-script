#!/bin/bash

#Cadillac (all for now)

KEYWORDS_CADILLAC="Cadillac"

if [ "$1" == "" ];
then
  
  debug_start "General Motors (old)"

  CADILLAC=$(egrep -i "$KEYWORDS_CADILLAC" "$NEWPAGES")

  categorize "CADILLAC" "Cadillac"

  debug_end "General Motors"

fi