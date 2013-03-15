#!/bin/bash

egrep -i 'polio' newpages.txt >> Polio.txt

POLIO=`stat --print=%s Polio.txt`

if [ $POLIO -ne 0 ];
then
  export CATFILE="Polio.txt"
  export CATNAME="Polio"
  $CATEGORIZE
fi

rm Polio.txt