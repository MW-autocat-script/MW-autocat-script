#!/bin/bash

egrep -i 'Brunei' newpages.txt >> Brunei.txt

BRUNEI=`stat --print=%s Brunei.txt`

if [ $BRUNEI -ne 0 ];
then
  export CATFILE="Brunei.txt"
  export CATNAME="Brunei"
  $CATEGORIZE
fi

rm Brunei.txt