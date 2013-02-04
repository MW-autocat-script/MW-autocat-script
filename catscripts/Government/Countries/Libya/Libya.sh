#!/bin/bash

egrep -i 'Libya|Ghadafi' newpages.txt >> Libya.txt

LIBYA=`stat --print=%s Libya.txt`

if [ $LIBYA -ne 0 ];
then
  export CATFILE="Libya.txt"
  export CATNAME="Libya"
  ./catscripts/Categorize.sh
fi

rm Libya.txt