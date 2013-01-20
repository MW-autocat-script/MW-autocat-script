#!/bin/bash

cat newpages.txt | egrep -i 'Anarchy(| )Online' >> AnarchyOnline.txt

ANARCHY=`stat --print=%s AnarchyOnline.txt`

if [ $ANARCHY -ne 0 ];
then
  export CATFILE="AnarchyOnline.txt"
  export CATNAME="Anarchy Online"
  ./catscripts/Categorize.sh
fi

rm AnarchyOnline.txt