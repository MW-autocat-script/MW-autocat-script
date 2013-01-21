#!/bin/bash

cat newpages.txt | egrep -i '\bKaros\b' >> KarosOnline.txt

KAROS=`stat --print=%s KarosOnline.txt`

if [ $KAROS -ne 0 ];
then
  export CATFILE="KarosOnline.txt"
  export CATNAME="Karos Online"
  ./catscripts/Categorize.sh
fi

rm KarosOnline.txt