#!/bin/bash

cat newpages.txt | egrep -i 'PlayStation 2|Play Station 2|\bPS2|\bPS 2\b' | egrep -iv '\b(PS2|PS 2) (mouse|port|keyboard)|for the (PlayStation|Play Station)|for (PlayStation|PlayStation)' >> PlayStation2.txt

PS2=`stat --print=%s PlayStation2.txt`

if [ $PS2 -ne 0 ];
then
  export CATFILE="PlayStation2.txt"
  export CATNAME="PlayStation 2"
  ./catscripts/Categorize.sh
fi

rm PlayStation2.txt