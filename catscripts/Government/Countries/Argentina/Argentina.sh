#!/bin/bash

egrep -i 'Aregntina' newpages.txt >> Argentina.txt

ARGENTINA=`stat --print=%s Argentina.txt`

if [ $ARGENTINA -ne 0 ];
then
  export CATFILE="Aregntina.txt"
  export CATNAME="Argentina"
  $CATEGORIZE
fi

rm Argentina.txt