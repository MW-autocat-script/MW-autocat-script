#!/bin/bash

KEYWORDS_FAIRYTAIL="Fairy(| )Tail"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Fairy Tail"

  FAIRYTAIL=$(egrep -i "$KEYWORDS_FAIRYTAIL" "$NEWPAGES")
  
  categorize "FAIRYTAIL" "Fairy Tail"

  debug_end "Fairy Tail"

fi