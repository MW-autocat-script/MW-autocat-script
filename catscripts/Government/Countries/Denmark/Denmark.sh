#!/bin/bash

egrep -i 'Denmark' newpages.txt >> Denmark.txt

DENMARK=`stat --print=%s Denmark.txt`

if [ $DENMARK -ne 0 ];
then
  export CATFILE="Denmark.txt"
  export CATNAME="Denmark"
  $CATEGORIZE
fi

rm Denmark.txt