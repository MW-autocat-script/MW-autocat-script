#!/bin/bash

cat newpages.txt | egrep -i 'Zune' > Zune.txt

ZUNE=`stat --print=%s Zune.txt`

if [ $ZUNE -ne 0 ];
then
  export CATFILE="Zune.txt"
  export CATNAME="Zune"
  ./catscripts/Categorize.sh
fi

rm Zune.txt