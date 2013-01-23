#!/bin/bash

egrep -i 'C\+\+|C Plus Plus' newpages.txt > CPlusPlus.txt

CPLUSPLUS=`stat --print=%s CPlusPlus.txt`

if [ $CPLUSPLUS -ne 0 ];
then
  export CATFILE="CPlusPlus.txt"
  export CATNAME="C++ programming"
  ./catscripts/Categorize.sh
fi

rm CPlusPlus.txt