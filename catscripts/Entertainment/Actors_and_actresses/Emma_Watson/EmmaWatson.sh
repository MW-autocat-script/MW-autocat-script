#!/bin/bash

readonly KEYWORDS_EMMAWATSON="Emma(| )Watson"
readonly KEYWORDS_EMMAWATSON_ALL="$KEYWORDS_EMMAWATSON"

if [ "$1" == "" ];
then
  
  debug_start "Emma Watson"

  WATSON=$(egrep -i "$KEYWORDS_EMMAWATSON" "$NEWPAGES")

  categorize "WATSON" "Emma Watson"

  debug_end "Emma Watson"

fi