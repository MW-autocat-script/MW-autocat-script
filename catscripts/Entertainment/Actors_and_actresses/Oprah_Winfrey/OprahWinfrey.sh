#!/bin/bash

KEYWORDS_OPRAHWINFREY="\bOprah"
KEYWORDS_OPRAHWINFREY_ALL="$KEYWORDS_OPRAHWINFREY"

if [ "$1" == "" ];
then
  
  debug_start "Oprah Winfrey"

  OPRAH=$(egrep -i "$KEYWORDS_OPRAHWINFREY" "$NEWPAGES")

  categorize "OPRAH" "Oprah Winfrey"

  debug_end "Oprah Winfrey"

fi