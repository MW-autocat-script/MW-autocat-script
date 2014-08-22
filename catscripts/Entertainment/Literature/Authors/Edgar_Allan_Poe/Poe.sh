#!/bin/bash

KEYWORDS_POE="\bPoe\b"

if [ "$1" == "" ];
then
  
  debug_start "Edgar Allan Poe"

  POE=$(egrep -i "$KEYWORDS_POE" "$NEWPAGES")

  categorize "POE" "Edgar Allan Poe"

  debug_end "Edgar Allan Poe"

fi