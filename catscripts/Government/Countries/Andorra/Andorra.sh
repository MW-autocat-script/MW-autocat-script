#!/bin/bash

KEYWORDS_ANDORRA="Andorra"
KEYWORDS_ANDORRA_ALL="$KEYWORDS_ANDORRA"

if [ "$1" == "" ];
then
  
  debug_start "Andorra"

  ANDORRA=$(egrep -i "$KEYWORDS_ANDORRA" "$NEWPAGES")

  categorize "ANDORRA" "Andorra"

  debug_end "Andorra"

fi