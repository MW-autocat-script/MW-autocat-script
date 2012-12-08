#!/bin/bash 

cat newpages.txt | egrep -i 'Roman numeral' >> RomanNumerals.txt

NUMERALS=`stat --print=%s RomanNumerals.txt`

if [ $NUMERALS -ne 0 ];
then
  export CATFILE="RomanNumerals.txt"
  export CATNAME="Roman numerals"
  ./catscripts/Categorize.sh
fi

rm RomanNumerals.txt