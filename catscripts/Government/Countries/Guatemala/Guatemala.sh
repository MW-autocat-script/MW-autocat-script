#!/bin/bash

egrep -i 'Guatemala|Guatamala' newpages.txt >> Guatemala.txt

GUATEMALA=`stat --print=%s Guatemala.txt`

if [ $GUATEMALA -ne 0 ];
then
  export CATFILE="Guatemala.txt"
  export CATNAME="Guatemala"
  $CATEGORIZE
fi

rm Guatemala.txt