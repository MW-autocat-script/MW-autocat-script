#!/bin/bash

egrep -i 'Wicca' newpages.txt >> Wicca.txt

WICCA=`stat --print=%s Wicca.txt`

if [ $WICCA -ne 0 ];
then
  export CATFILE="Wicca.txt"
  export CATNAME="Wicca"
  $CATEGORIZE
fi

rm Wicca.txt