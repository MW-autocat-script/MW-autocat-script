#!/bin/bash

egrep -i 'The(| )Last(| )Remnant' newpages.txt >> TheLastRemant.txt

REMNANT=`stat --print=%s TheLastRemant.txt`

if [ $REMNANT -ne 0 ];
then
  export CATFILE="TheLastRemant.txt"
  export CATNAME="The Last Remnant"
  $CATEGORIZE
fi

rm TheLastRemant.txt
