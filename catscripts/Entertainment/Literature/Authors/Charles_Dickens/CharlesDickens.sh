#!/bin/bash

KEYWORDS_CHARLESDICKENS="Charles(| )Dickens"

if [ "$1" == "" ];
then
  
  debug_start "Charles Dickens"

  DICKENS=$(egrep -i "$KEYWORDS_CHARLESDICKENS" "$NEWPAGES")

  categorize "DICKENS" "Charles Dickens"

  debug_end "Charles Dickens"

fi