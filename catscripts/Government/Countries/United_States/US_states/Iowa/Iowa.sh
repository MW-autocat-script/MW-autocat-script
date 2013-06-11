#!/bin/bash

egrep -i '\bIowa' newpages.txt >> Iowa.txt

IOWA=`stat --print=%s Iowa.txt`

if [ $IOWA -ne 0 ];
then
  export CATFILE="Iowa.txt"
  export CATNAME="Iowa"
  $CATEGORIZE
fi

rm Iowa.txt