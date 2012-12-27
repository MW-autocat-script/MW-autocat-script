#!/bin/bash

cat newpages.txt | egrep -i 'Greece' | egrep -iv 'ancient Greece' >> Greece.txt
cat newpages.txt | egrep -i 'ancient Greece' >> Ancient.txt

GREECE=`stat --print=%s Greece.txt`
ANCIENT=`stat --print=%s Ancient.txt`

if [ $GREECE -ne 0 ];
then
  export CATFILE="Greece.txt"
  export CATNAME="Greece"
  ./catscripts/Categorize.sh
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="Ancient.txt"
  export CATNAME="Ancient Greece"
  ./catscripts/Categorize.sh
fi

rm Greece.txt
rm Ancient.txt