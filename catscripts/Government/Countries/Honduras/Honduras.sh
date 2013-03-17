#!/bin/bash

egrep -i 'Hondura(s|n)' newpages.txt >> Honduras.txt

HONDURAS=`stat --print=%s Honduras.txt`

if [ $HONDURAS -ne 0 ];
then
  export CATFILE="Honduras.txt"
  export CATNAME="Honduras"
  $CATEGORIZE
fi

rm Honduras.txt