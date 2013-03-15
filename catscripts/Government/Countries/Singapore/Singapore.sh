#!/bin/bash

egrep -i 'Singapore' newpages.txt >> Singapore.txt

SINGAPORE=`stat --print=%s Singapore.txt`

if [ $SINGAPORE -ne 0 ];
then
  export CATFILE="Singapore.txt"
  export CATNAME="Singapore"
  $CATEGORIZE
fi

rm Singapore.txt