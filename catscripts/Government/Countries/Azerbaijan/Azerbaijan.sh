#!/bin/bash

egrep -i 'Azerbaijan' newpages.txt >> Azerbaijan.txt

AZERBAIJAN=`stat --print=%s Azerbaijan.txt`

if [ $AZERBAIJAN -ne 0 ];
then
  export CATFILE="Azerbaijan.txt"
  export CATNAME="Azerbaijan"
  $CATEGORIZE
fi

rm Azerbaijan.txt