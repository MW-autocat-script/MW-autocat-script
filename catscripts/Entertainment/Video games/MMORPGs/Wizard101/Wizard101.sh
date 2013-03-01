#!/bin/bash

egrep -i 'Wizard(|s)(|)101' newpages.txt >> Wizard101.txt

WIZARD101=`stat --print=%s Wizard101.txt`

if [ $WIZARD101 -ne 0 ];
then
  export CATFILE="Wizard101.txt"
  export CATNAME="Wizard101"
  ./catscripts/Categorize.sh
fi

rm Wizard101.txt