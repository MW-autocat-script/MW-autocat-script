#!/bin/bash

cat newpages.txt | egrep -i '\bChile\b|Chilean' >> Chile.txt

CHILE=`stat --print=%s Chile.txt`

if [ $CHILE -ne 0 ];
then
  export CATFILE="Chile.txt"
  export CATNAME="Chile"
  ./catscripts/Categorize.sh
fi

rm Chile.txt