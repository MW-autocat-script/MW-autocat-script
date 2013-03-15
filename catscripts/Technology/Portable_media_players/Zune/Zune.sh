#!/bin/bash

egrep -i '\bZune' newpages.txt > Zune.txt

ZUNE=`stat --print=%s Zune.txt`

if [ $ZUNE -ne 0 ];
then
  export CATFILE="Zune.txt"
  export CATNAME="Zune"
  $CATEGORIZE
fi

rm Zune.txt