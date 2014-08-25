#!/bin/bash

KEYWORDS_DRSEUSS="\bSeuss|Theodore(| )(Geisel|Giesel)"

if [ "$1" == "" ];
then
  
  debug_start "Dr. Seuss"

  SEUSS=$(egrep -i "$KEYWORDS_DRSEUSS" "$NEWPAGES")

  categorize "SEUSS" "Dr. Seuss"

  debug_end "Dr. Seuss"

fi