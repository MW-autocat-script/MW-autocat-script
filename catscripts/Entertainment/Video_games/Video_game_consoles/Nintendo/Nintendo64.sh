#!/bin/bash

KEYWORDS_N64="Nintendo(| )64|\bN64"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Nintendo 64"

  N64=$(egrep -i "$KEYWORDS_N64" "$NEWPAGES")

  categorize "N64" "Nintendo 64"

  debug_end "Nintendo 64"

fi