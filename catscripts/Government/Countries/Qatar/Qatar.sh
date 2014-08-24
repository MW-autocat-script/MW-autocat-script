#!/bin/bash

KEYWORDS_QATAR="Qatar"
KEYWORDS_QATAR_ALL="$KEYWORDS_QATAR"

if [ "$1" == "" ];
then
  
  debug_start "Qatar"

  QATAR=$(egrep -i "$KEYWORDS_QATAR" "$NEWPAGES")

  categorize "QATAR" "Qatar"

  debug_end "Qatar"

fi