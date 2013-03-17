#!/bin/bash

egrep -i 'Laos' newpages.txt >> Laos.txt

LAOS=`stat --print=%s Laos.txt`

if [ $LAOS -ne 0 ];
then
  export CATFILE="Laos.txt"
  export CATNAME="Laos"
  $CATEGORIZE
fi

rm Laos.txt