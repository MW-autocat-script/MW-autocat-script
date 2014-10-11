#!/bin/bash

KEYWORDS_LESOTHO="Lesotho"
KEYWORDS_LESOTHO_ALL="$KEYWORDS_LESOTHO"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Lesotho"

  LESOTHO=$(egrep -i "$KEYWORDS_LESOTHO" "$NEWPAGES")

  categorize "LESOTHO" "Lesotho"

  debug_end "Lesotho"

fi