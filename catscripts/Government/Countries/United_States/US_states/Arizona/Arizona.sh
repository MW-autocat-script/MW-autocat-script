#!/bin/bash

egrep -i 'Arizona' newpages.txt >> Arizona.txt

ARIZONA=`stat --print=%s Arizona.txt`

if [ $ARIZONA -ne 0 ];
then
  export CATFILE="Arizona.txt"
  export CATNAME="Arizona"
  ./catscripts/Categorize.sh
fi

rm Arizona.txt