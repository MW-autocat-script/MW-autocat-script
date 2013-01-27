#!/bin/bash

egrep -i 'Smallpox' newpages.txt >> Smallpox.txt

SMALLPOX=`stat --print=%s Smallpox.txt`

if [ $SMALLPOX -ne 0 ];
then
  export CATFILE="Smallpox.txt"
  export CATNAME="Smallpox"
  ./catscripts/Categorize.sh
fi

rm Smallpox.txt