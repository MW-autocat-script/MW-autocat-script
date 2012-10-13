#!/bin/bash

cat newpages.txt | egrep -i '[0-9]{1,} times [0-9]{1,}' >> Multiplication.txt
cat newpages.txt | egrep -i 'What is [0-9]{1,} x [0-9]{1,}' >> Multiplication.txt
cat newpages.txt | egrep -i '[0-9]{1,} \* [0-9]{1,}' >> Multiplication.txt

MULTIPLICATION=`stat --print=%s Multiplication.txt`

if [ $MULTIPLICATION -ne 0 ];
then
  export CATFILE="Multiplication.txt"
  export CATNAME="Multiplication"
  ./catscripts/Categorize.sh
fi

rm Multiplication.txt