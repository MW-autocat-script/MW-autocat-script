#!/bin/bash

egrep -i 'Luxembourg' newpages.txt >> Luxembourg.txt

LUXEMBOURG=`stat --print=%s Luxembourg.txt`

if [ $LUXEMBOURG -ne 0 ];
then
  export CATFILE="Luxembourg.txt"
  export CATNAME="Luxembourg"
  $CATEGORIZE
fi

rm Luxembourg.txt