#!/bin/bash

egrep -i 'India\b' newpages.txt >> India.txt

INDIA=`stat --print=%s India.txt`

if [ $INDIA -ne 0 ];
then
  export CATFILE="India.txt"
  export CATNAME="India"
  $CATEGORIZE
fi

rm India.txt