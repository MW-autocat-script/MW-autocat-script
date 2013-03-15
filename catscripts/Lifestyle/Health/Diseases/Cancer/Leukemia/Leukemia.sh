#!/bin/bash

egrep -i 'Leukemia' newpages.txt > Leukemia.txt

LEUKEMIA=`stat --print=%s Leukemia.txt`

if [ $LEUKEMIA -ne 0 ];
then
  export CATFILE="Leukemia.txt"
  export CATNAME="Leukemia"
  $CATEGORIZE
fi

rm Leukemia.txt