#!/bin/bash

egrep -i 'Denmark' newpages.txt | egrep -iv 'Greenland' >> Denmark.txt
egrep -i 'Greenland' newpages.txt >> Greenland.txt

DENMARK=`stat --print=%s Denmark.txt`
GREENLAND=`stat --print=%s Greenland.txt`

if [ $DENMARK -ne 0 ];
then
  export CATFILE="Denmark.txt"
  export CATNAME="Denmark"
  $CATEGORIZE
fi

if [ $GREENLAND -ne 0 ];
then
  export CATFILE="Greenland.txt"
  export CATNAME="Greenland"
  $CATEGORIZE
fi

rm Denmark.txt
rm Greenland.txt