#!/bin/bash

egrep -i '\bant(|s)\b' newpages.txt >> Ants.txt

ANTS=`stat --print=%s Ants.txt`

if [ $ANTS -ne 0 ];
then
  export CATFILE="Ants.txt"
  export CATNAME="Ants"
  $CATEGORIZE
fi

rm Ants.txt