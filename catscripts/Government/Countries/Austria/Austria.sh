#!/bin/bash

egrep -i 'Austria' newpages.txt >> Austria.txt

AUSTRIA=`stat --print=%s Austria.txt`

if [ $AUSTRIA -ne 0 ];
then
  export CATFILE="Austria.txt"
  export CATNAME="Austria"
  $CATEGORIZE
fi

rm Austria.txt