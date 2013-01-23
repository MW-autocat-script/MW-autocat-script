#!/bin/bash

egrep -i 'Sweden' newpages.txt > Sweden.txt

SWEDEN=`stat --print=%s Sweden.txt`

if [ $SWEDEN -ne 0 ];
then
  export CATFILE="Sweden.txt"
  export CATNAME="Sweden"
  ./catscripts.Categorize.sh
fi

rm Sweden.txt