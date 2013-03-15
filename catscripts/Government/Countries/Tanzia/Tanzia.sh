#!/bin/bash

egrep -i 'Tanzia' newpages.txt >> Tanzia.txt

TANZIA=`stat --print=%s Tanzia.txt`

if [ $TANZIA -ne 0 ];
then
  export CATFILE="Tanzia.txt"
  export CATNAME="Tanzia"
  $CATEGORIZE
fi

rm Tanzia.txt
