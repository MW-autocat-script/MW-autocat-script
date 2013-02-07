#!/bin/bash

egrep -i 'Belize' newpages.txt >> Belize.txt

BELIZE=`stat --print=%s Belize.txt`

if [ $BELIZE -ne 0 ];
then
  export CATFILE="Belize.txt"
  export CATNAME="Belize"
  ./catscripts/Categorize.sh
fi

rm Belize.sh