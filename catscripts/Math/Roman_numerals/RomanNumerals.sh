#!/bin/bash 

KEYWORDS_ROMANNUMERALS="Roman(| )numeral"

if [ "$1" == "" ];
then

  debug_start "Roman numerals"

  NUMERALS=$(egrep -i "$KEYWORDS_ROMANNUMERALS" "$NEWPAGES")

  categorize "NUMERALS" "Roman numerals"

  debug_end "Roman numerals"

fi