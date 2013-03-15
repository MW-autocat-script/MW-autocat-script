#!/bin/bash

egrep -i 'Greece' newpages.txt | egrep -iv 'ancient Greece' >> Greece.txt
egrep -i 'ancient Greece' newpages.txt >> Ancient.txt

GREECE=`stat --print=%s Greece.txt`
ANCIENT=`stat --print=%s Ancient.txt`

if [ $GREECE -ne 0 ];
then
  export CATFILE="Greece.txt"
  export CATNAME="Greece"
  $CATEGORIZE
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="Ancient.txt"
  export CATNAME="Ancient Greece"
  $CATEGORIZE
fi

rm Greece.txt
rm Ancient.txt