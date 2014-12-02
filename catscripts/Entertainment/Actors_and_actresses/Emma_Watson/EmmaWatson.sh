#!/bin/bash

KEYWORDS_EMMAWATSON="Emma(| )Watson"
KEYWORDS_EMMAWATSON_ALL="$KEYWORDS_EMMAWATSON"

if [ "$1" == "" ];
then
  
  debug_start "Emma Watson"

  WATSON=$(egrep -i "$KEYWORDS_EMMAWATSON" "$NEWPAGES")

  categorize "WATSON" "Watson"

  debug_end "Emma Watson"

fi