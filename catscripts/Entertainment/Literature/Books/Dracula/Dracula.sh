#!/bin/bash

KEYWORDS_DRACULA="Dracula"

if [ "$1" == "" ];
then
  
  debug_start "Dracula"

  DRACULA=$(egrep -i "$KEYWORDS_DRACULA" "$NEWPAGES")

  categorize "DRACULA" "Dracula"

  debug_end "Dracula"

fi