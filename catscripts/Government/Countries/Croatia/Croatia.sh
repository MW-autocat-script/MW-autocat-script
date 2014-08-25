#!/bin/bash

KEYWORDS_CROATIA="Croatia"
KEYWORDS_CROATIA_ALL="$KEYWORDS_CROATIA"

if [ "$1" == "" ];
then
  
  debug_start "Croatia"

  CROATIA=$(egrep -i "$KEYWORDS_CROATIA" "$NEWPAGES")

  categorize "CROATIA" "Croatia"

  debug_end "Croatia"

fi