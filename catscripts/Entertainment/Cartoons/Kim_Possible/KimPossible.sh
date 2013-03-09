#!/bin/bash

egrep -i 'Kim(| )Possible' newpages.txt >> KimPossible.txt

KIMPOSSIBLE=`stat --print=%s KimPossible.txt`

if [ $KIMPOSSIBLE -ne 0 ];
then
  export CATFILE="KimPossible.txt"
  export CATNAME="Kim Possible"
  ./catscripts/Categorize.sh
fi

rm KimPossible.txt