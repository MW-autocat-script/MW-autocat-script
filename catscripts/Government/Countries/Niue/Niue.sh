#!/bin/bash

KEYWORDS_NIUE="\bNiue"
KEYWORDS_NIUE_ALL="$KEYWORDS_NIUE"

if [ "$1" == "" ];
then
  
  debug_start "Niue"

  NIUE=$(egrep -i "$KEYWORDS_NIUE" "$NEWPAGES")

  categorize "NIUE" "Niue"

  debug_end "Niue"

fi