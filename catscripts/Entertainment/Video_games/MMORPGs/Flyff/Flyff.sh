#!/bin/bash

egrep -i 'Flyff' newpages.txt >> Flyff.txt

FLYFF=`stat --print=%s Flyff.txt`

if [ $FLYFF -ne 0 ];
then
  export CATFILE="Flyff.txt"
  export CATNAME="Flyff"
  $CATEGORIZE
fi

rm Flyff.txt