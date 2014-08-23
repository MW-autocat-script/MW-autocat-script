#!/bin/bash

KEYWORDS_REDWALL="Redwall"

if [ "$1" == "" ];
then
  
  debug_start "Redwall"

  REDWALL=$(egrep -i "$KEYWORDS_REDWALL" "$NEWPAGES")

  categorize "REDWALL" "Redwall"

  debug_end "Redwall"

fi