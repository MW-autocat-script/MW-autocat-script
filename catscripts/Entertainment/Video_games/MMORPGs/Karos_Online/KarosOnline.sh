#!/bin/bash

egrep -i '\bKaros\b' newpages.txt >> KarosOnline.txt

KAROS=`stat --print=%s KarosOnline.txt`

if [ $KAROS -ne 0 ];
then
  export CATFILE="KarosOnline.txt"
  export CATNAME="Karos Online"
  $CATEGORIZE
fi

rm KarosOnline.txt