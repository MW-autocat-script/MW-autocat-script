#!/bin/bash

egrep -i 'Benin' newpages.txt >> Benin.txt

BENIN=`stat --print=%s Benin.txt`

if [ $BENIN -ne 0 ];
then
  export CATFILE="Benin.txt`
  export CATNAME="Benin"
  $CATEGORIZE
fi

rm Benin.txt