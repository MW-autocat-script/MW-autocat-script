#!/bin/bash

egrep -i 'asthma' newpages.txt > Asthma.txt

ASTHMA=`stat --print=%s Asthma.txt`

if [ $ASTHMA -ne 0 ];
then
  export CATFILE="Asthma.txt"
  export CATNAME="Asthma"
  ./catscripts/Categorize.sh
fi

rm Asthma.txt