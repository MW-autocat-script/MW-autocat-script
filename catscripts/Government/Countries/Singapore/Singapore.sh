#!/bin/bash

egrep -i 'Singapore' newpages.txt >> Singapore.txt

SINGAPORE=`stat --print=%s Singapore.txt`

if [ $SINGAPORE -ne 0 ];
then
  export CATFILE="Singapore.txt"
  export CATNAME="Singapore"
  ./catscripts/Categorize.sh
fi

rm Singapore.txt