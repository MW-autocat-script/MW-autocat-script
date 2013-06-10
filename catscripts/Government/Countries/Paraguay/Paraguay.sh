#!/bin/bash

egrep -i "Paraguay" newpages.txt > Paraguay.txt

PARAGUAY=`stat --print=%s Paraguay.txt`

if [ $PARAGUAY -ne 0 ];
then
  export CATFILE="Paraguay.txt"
  export CATNAME="Paraguay"
  $CATEGORIZE
fi

rm Paraguay.txt
