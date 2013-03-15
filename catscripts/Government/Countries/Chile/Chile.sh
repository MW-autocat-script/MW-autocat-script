#!/bin/bash

egrep -i '\bChile\b|Chilean' newpages.txt >> Chile.txt

CHILE=`stat --print=%s Chile.txt`

if [ $CHILE -ne 0 ];
then
  export CATFILE="Chile.txt"
  export CATNAME="Chile"
  $CATEGORIZE
fi

rm Chile.txt