#!/bin/bash

egrep -i 'Kirby' newpages.txt >> Kirby.txt

KIRBY=`stat --print=%s Kirby.txt`

if [ $KIRBY -ne 0 ];
then
  export CATFILE="Kirby.txt"
  export CATNAME="Kirby series"
  $CATEGORIZE
fi

rm Kirby.txt