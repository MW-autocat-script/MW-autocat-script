#!/bin/bash

egrep -i 'Dead Frontier' newpages.txt >> DeadFrontier.txt

FRONTIER=`stat --print=%s DeadFrontier.txt`

if [ $FRONTIER -ne 0 ];
then
  export CATFILE="DeadFrontier.txt"
  export CATNAME="Dead Frontier"
  ./catscripts/Categorize.sh
fi

rm DeadFrontier.txt