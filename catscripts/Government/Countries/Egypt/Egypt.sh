#!/bin/bash

egrep -i 'Egypt(|s|ian)' newpages.txt | egrep -iv 'ancient Egypt|Nile Rile|River Nile|Nile delta|Aswan Dam' >> Egypt.txt
egrep -i 'ancient Egypt' newpages.txt >> AncientEgypt.txt
egrep -i 'Nile River|River Nile|Nile delta|Aswan dam' newpages.txt >> NileRiver.txt

EGYPT=`stat --print=%s Egypt.txt`
ANCIENT=`stat --print=%s AncientEgypt.txt`
NILE=`stat --print=%s NileRiver.txt`

if [ $EGYPT -ne 0 ];
then
  export CATFILE="Egypt.txt"
  export CATNAME="Egypt"
  $CATEGORIZE
fi

if [ $ANCIENT -ne 0 ];
then
  export CATFILE="AncientEgypt.txt"
  export CATNAME="Ancient Egypt"
  $CATEGORIZE
fi

if [ $NILE -ne 0 ];
then
  export CATFILE="NileRiver.txt"
  export CATNAME="Nile River"
  $CATEGORIZE
fi

rm Egypt.txt
rm AncientEgypt.txt
rm NileRiver.txt