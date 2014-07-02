#!/bin/bash 

KEYWORDS_ROMANNUMERALS="Roman(| )numeral"

if [ "$1" == "" ];
then

  debug_start "Roman numerals"

  NUMERALS=$(egrep -i "$KEYWORDS_ROMANNUMERALS" newpages.txt)

  if [ "$NUMERALS" != "" ];
  then
    printf "%s" "$NUMERALS" > RomanNumerals.txt
    export CATFILE="RomanNumerals.txt"
    export CATNAME="Roman numerals"
    $CATEGORIZE
    rm RomanNumerals.txt
    unset NUMERALS
  fi

  debug_end "Roman numerals"

fi