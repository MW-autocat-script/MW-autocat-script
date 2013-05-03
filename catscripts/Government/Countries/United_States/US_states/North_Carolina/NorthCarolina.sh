#!/bin/bash

egrep -i 'North(| )Carolina' newpages.txt >> NorthCarolina.txt

NORTHCAROLINA=`stat --print=%s NorthCarolina.txt`

if [ $NORTHCAROLINA -ne 0 ];
then
  export CATFILE="NorthCarolina.txt"
  export CATNAME="North Carolina"
  $CATEGORIZE
fi

rm NorthCarolina.txt