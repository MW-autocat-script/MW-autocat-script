#!/bin/bash

KEYWORDS_CAPEVERDE="Cape(| )Verde"
KEYWORDS_CAPEVERDE_ALL="$KEYWORDS_CAPEVERDE"

if [ "$1" == "" ];
then
  
  debug_start "Cape Verde"

  CAPEVERDE=$(egrep -i "$KEYWORDS_CAPEVERDE" "$NEWPAGES")

  categorize "CAPEVERDE" "Cape Verde"

  debug_end "Cape Verde"

fi
