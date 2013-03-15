#!/bin/bash

egrep -i 'Smallpox' newpages.txt >> Smallpox.txt

SMALLPOX=`stat --print=%s Smallpox.txt`

if [ $SMALLPOX -ne 0 ];
then
  export CATFILE="Smallpox.txt"
  export CATNAME="Smallpox"
  $CATEGORIZE
fi

rm Smallpox.txt