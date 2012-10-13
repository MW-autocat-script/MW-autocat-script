#!/bin/bash

cat newpages.txt | egrep -i '\[\[Who invented [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Inventions.txt
cat newpages.txt | egrep -i '\[\[Who invented the [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Inventions.txt
cat newpages.txt | egrep -i '\[\[Who is the inventor of [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Inventions.txt

INVENTIONS=`stat --print=%s Inventions.txt`

if [ $INVENTIONS -ne 0 ];
then
  export CATFILE="Inventions.txt"
  export CATNAME="Inventions"
  ./catscripts/Categorize.sh
fi

rm Inventions.txt
