#!/bin/bash

egrep -i 'Algeria' newpages.txt >> Algeria.txt

ALGERIA=`stat --print=%s Algeria.txt`

if [ $ALGERIA -ne 0 ];
then
  export CATFILE="Algeria.txt"
  export CATNAME="Algeria"
  ./catscripts/Categorize.sh
fi

rm Algeria.txt