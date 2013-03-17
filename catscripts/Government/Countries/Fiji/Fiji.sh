#!/bin/bash

egrep -i 'Fiji' newpages.txt >> Fiji.txt

FIJI=`stat --print=%s Fiji.txt`

if [ $FIJI -ne 0 ];
then
  export CATFILE="Fiji.txt"
  export CATNAME="Fiji"
  $CATEGORIZE
fi

rm Fiji.txt