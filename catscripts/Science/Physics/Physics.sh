#!/bin/bash

egrep -i 'physics' newpages.txt >> Physics.txt

PHYSICS=`stat --print=%s Physics.txt`

if [ $PHYSICS -ne 0 ];
then
  export CATFILE="Physics.txt"
  export CATNAME="Physics"
  $CATEGORIZE
fi

rm Physics.txt