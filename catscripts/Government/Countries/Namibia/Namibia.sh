#!/bin/bash

egrep -i 'Namibia' newpages.txt >> Namibia.txt

NAMIBIA=`stat --print=%s Namibia.txt`

if [ $NAMIBIA -ne 0 ];
then
  export CATFILE="Namibia.txt"
  export CATNAME="Namibia"
  $CATEGORIZE
fi

rm Namibia.txt