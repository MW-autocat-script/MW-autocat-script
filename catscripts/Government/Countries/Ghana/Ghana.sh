#!/bin/bash

egrep -i '\bGhana' newpages.txt >> Ghana.txt

GHANA=`stat --print=%s Ghana.txt`

if [ $GHANA -ne 0 ];
then
  export CATFILE="Ghana.txt"
  export CATNAME="Ghana"
  ./catscripts/Categorize.sh
fi

rm Ghana.txt