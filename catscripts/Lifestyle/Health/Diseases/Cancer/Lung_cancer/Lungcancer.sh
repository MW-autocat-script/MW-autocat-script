#!/bin/bash

egrep -i 'Lung(| )cancer' newpages.txt > Lungcancer.txt

LUNGCANCER=`stat --print=%s Lungcancer.txt`

if [ $LUNGCANCER -ne 0 ];
then
  export CATFILE="Lungcancer.txt"
  export CATNAME="Lung cancer"
  $CATEGORIZE
fi

rm Lungcancer.txt