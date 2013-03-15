#!/bin/bash

egrep -i 'Canberra' newpages.txt >> Canberra.txt

CANBERRA=`stat --print=%s Canberra.txt`

if [ $CANBERRA -ne 0 ];
then
  export CATFILE="Canberra.txt"
  export CATNAME="Canberra"
  $CATEGORIZE
fi

rm Canberra.txt