#!/bin/bash

egrep -i 'Angola' newpages.txt >> Angola.txt

ANGOLA=`stat --print=%s Angola.txt`

if [ $ANGOLA -ne 0 ];
then
  export CATFILE="Angola.txt"
  export CATNAME="Angola"
  $CATEGORIZE
fi

rm Angola.txt