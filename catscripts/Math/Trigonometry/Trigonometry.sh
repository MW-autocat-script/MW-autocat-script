#!/bin/bash

KEYWORDS_TRIGONOMETRY="trigonometry|\b((co|)sin|(|a)tan|(|a)cos|asin)(| )[0-9]|bessel"
KEYWORDS_TRIGONOMETRY_ALL="$KEYWORDS_TRIGONOMETRY"

if [ "$1" == "" ];
then
  
  debug_start "Trigonometry"

  TRIGONOMETRY=$(egrep -i "$KEYWORDS_TRIGONOMETRY" "$NEWPAGES")

  categorize "TRIGONOMETRY" "Trigonometry"

  debug_end "Trigonometry"

fi