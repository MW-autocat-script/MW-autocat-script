#!/bin/bash

cat newpages.txt | egrep -i '[0-9]{1,} divided by [0-9]{1,}' >> Division.txt
cat newpages.txt | egrep -i 'What is [0-9]{1,} / [0-9]{1,}' >> Division.txt
cat newpages.txt | egrep -i '[0-9]{1,} ÷ [0-9]{1,}' >> Division.txt

DIVISION=`stat --print=%s Division.txt`

if [ $DIVISION -ne 0 ];
then
  ./catscripts/Math/Division/catDivision.sh
fi

rm Division.txt