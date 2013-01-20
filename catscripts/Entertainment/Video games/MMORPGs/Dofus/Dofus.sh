#!/bin/bash

cat newpages.txt | egrep -i 'Dofus' >> Dofus.txt

DOFUS=`stat --print=%s Dofus.txt`

if [ $DOFUS -ne 0 ];
then
  export CATFILE="Dofus.txt"
  export CATNAME="Dofus"
  ./catscripts/Categorize.sh
fi

rm Dofus.txt