#!/bin/bash 

egrep -i 'Roman numeral' newpages.txt >> RomanNumerals.txt

NUMERALS=`stat --print=%s RomanNumerals.txt`

if [ $NUMERALS -ne 0 ];
then
  export CATFILE="RomanNumerals.txt"
  export CATNAME="Roman numerals"
  $CATEGORIZE
fi

rm RomanNumerals.txt