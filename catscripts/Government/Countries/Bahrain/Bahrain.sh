#!/bin/bash

egrep -i 'Bahrain' newpages.txt >> Bahrain.txt

BAHRAIN=`stat --print=%s Bahrain.txt`

if [ $BAHRAIN -ne 0 ];
then
  export CATFILE="Bahrain.txt"
  export CATNAME="Bahrain"
  $CATEGORIZE
fi

rm Bahrain.txt