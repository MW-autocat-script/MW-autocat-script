#!/bin/bash

KEYWORDS_STEPHENKING="Stephen(| )King"

if [ "$1" == "" ];
then
  
  debug_start "Stephen King"

  STEPHENKING=$(egrep -i "$KEYWORDS_STEPHENKING" "$NEWPAGES")

  categorize "STEPHENKING" "Stephen King"

  debug_end "Stephen King"

fi