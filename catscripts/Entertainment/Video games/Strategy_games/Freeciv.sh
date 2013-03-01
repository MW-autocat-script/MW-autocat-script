#!/bin/bash

egrep -i 'Freeciv' newpages.txt > Freeciv.txt

FREECIV=`stat --print=%s Freeciv.txt`

if [ $FREECIV -ne 0 ];
then
  export CATFILE="Freeciv.txt"
  export CATNAME="Freeciv"
  ./catscripts/Categorize.sh
fi

rm Freeciv.txt