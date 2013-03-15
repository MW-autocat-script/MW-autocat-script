#!/bin/bash

egrep -i 'Dofus' newpages.txt >> Dofus.txt

DOFUS=`stat --print=%s Dofus.txt`

if [ $DOFUS -ne 0 ];
then
  export CATFILE="Dofus.txt"
  export CATNAME="Dofus"
  $CATEGORIZE
fi

rm Dofus.txt